#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "game.h"
#include "standardpalette.h"
#include "level1foreground.h"
#include "level1midground.h"
#include "level1background.h"
#include "level1collisionmap.h"
#include "spritesheet.h"
#include "talkingheadtest.h"
#include "talkingheadtest2.h"
#include "levels.h"
#include "npcs.h"

int gateUnlocked;

NPC* currentTarget;
LEVEL* currentLevel;
LEVEL level0;
LEVEL level1;
PLAYER player;

//NPC stuff Milestone 3
// NPC npcs[MAX_NPCS_PER_LEVEL];

int hOff;
int vOff;

// unsigned char* level1collisionmap = level1collisionmapBitmap;

void initGame() {

    initLevels();
    currentLevel = &level0;
    initPlayer();

    gateUnlocked = 0;

}

void updateGame() {

    updatePlayer();
    updateNPCS();
    if (currentLevel->animFunc) {
        currentLevel->animFunc();
    }
    checkForConvoBools();

    if (player.worldRow < 5) {
        goToWin();
    }

}

void checkForConvoBools() {

    for (int i = 0; i < currentLevel->numNPCS; i++) {

        if (currentLevel->npcs[i]->convoBoolSatisfied) {

            if (currentLevel->npcs[i]->convoFunc) {
                currentLevel->npcs[i]->convoFunc();
                currentLevel->npcs[i]->convoBoolSatisfied = 0;
            }

        }

    }

}

void drawGame() {

    drawPlayer();
    drawNPCS();

    //Maybe don't do this during a glitch?
    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;

    REG_BG1HOFF = hOff / 2;
    REG_BG1VOFF = vOff / 2;

    REG_BG2HOFF = hOff / 3;
    REG_BG2VOFF = vOff / 3;


}



void initLevels() {

    initPause();
    initLevel0();
    initLevel1();

}

void initPlayer() {

    player.rdel = 1;
    player.cdel = 1;
    player.width = 8;
    player.height = 16;

    player.hide = 0;

    player.aniCounter = 0;
    player.framesToWait = 20;
    player.aniState = DOWN;
    player.numStates = 1;
    player.prevAniState = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.gameSpriteTileIDx = 0;
    player.gameSpriteTileIDy = 0;

    player.sprites[0] = initCloud();
    player.currentSprite = player.sprites[0];

}

void loadLevel(LEVEL* level, int resetsPlayerPos) {

    REG_BG0CNT = level->levelSize | BG_4BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);
    DMANow(3, level->foregroundTiles, &CHARBLOCK[0], (level->foregroundTilesLen) / 2);
    DMANow(3, level->foregroundMap, &SCREENBLOCK[30], (level->foregroundMapLen) / 2);
    DMANow(3, level->foregroundPal, PALETTE, level->foregroundPalLen / 2);
    

    if (level->midgroundTiles) {
        REG_BG1CNT = level->levelSize | BG_4BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28);
        DMANow(3, level->midgroundTiles, &CHARBLOCK[1], level->midgroundTilesLen / 2);
        DMANow(3, level->midgroundMap, &SCREENBLOCK[28], level->midgroundMapLen / 2);
        DMANow(3, level->midgroundPal, &PALETTE[level->foregroundPalLen / 2], level->midgroundPalLen / 2);
    }

    if (level->backgroundTiles) {
        REG_BG2CNT = level->levelSize | BG_4BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26);
        DMANow(3, level->backgroundTiles, &CHARBLOCK[2], level->backgroundTilesLen / 2);
        DMANow(3, level->backgroundMap, &SCREENBLOCK[26], level->backgroundMapLen / 2);
        DMANow(3, level->backgroundPal, &PALETTE[(level->foregroundPalLen / 2) + (level->midgroundPalLen / 2)], level->backgroundPalLen / 2);
    }
    

    // if ((level->foregroundPalLen / 2) + (level->midgroundPalLen / 2) +  (level->backgroundPalLen / 2) <= 14) {
    //     for (int i = (level->foregroundPalLen / 2) + (level->midgroundPalLen / 2) +  (level->backgroundPalLen / 2); i < 15; i++) {
    //         PALETTE[i] = BLACK;
    //     }
    //     PALETTE[14] = WHITE;
    //     PALETTE[15] = BLACK;
    // }
    

    if (resetsPlayerPos) {
        player.worldCol = level->playerWorldSpawnCol;
        player.worldRow = level->playerWorldSpawnRow;
        hOff = level->initHOff;
        vOff = level->initVOff;
    }

}

void loadNPC(NPC* npc) {

    npc->active = 1;

}



void updatePlayer() {

    int playerCollidingWithNPC = 0;
    player.isMoving = 0;

    if(BUTTON_HELD(BUTTON_UP)) {
        if (player.worldRow > 0 && currentLevel->collisionMap[OFFSET(player.worldCol, player.worldRow - player.rdel, currentLevel->worldPixelWidth)] && 
            currentLevel->collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, currentLevel->worldPixelWidth)]) {
                
                player.worldRow = player.worldRow - player.rdel;
                player.isMoving = 1;

            if (vOff > 0 && (player.worldRow - vOff) <= SCREENHEIGHT / 2) {
                // Update background offset variable if the above is true
                vOff--;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (player.worldRow + player.height < currentLevel->worldPixelHeight && currentLevel->collisionMap[OFFSET(player.worldCol, player.worldRow + player.height - 1 + player.rdel, currentLevel->worldPixelWidth)] && 
            currentLevel->collisionMap[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height - 1 + player.rdel, currentLevel->worldPixelWidth)]) {
                player.worldRow = player.worldRow + player.rdel;
                player.isMoving = 1;

            // Update player's world position if the above is true



            if (vOff < currentLevel->worldPixelHeight - SCREENHEIGHT && (player.worldRow - vOff) > SCREENHEIGHT / 2) {
                // Update background offset variable if the above is true
                vOff++;
                
            }
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (player.worldCol > 0 && currentLevel->collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow, currentLevel->worldPixelWidth)] && 
            currentLevel->collisionMap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1, currentLevel->worldPixelWidth)]) {
                player.worldCol = player.worldCol - player.cdel;
                player.isMoving = 1;

            // Update player's world position if the above is true

            if (hOff > 0 && (player.worldCol - hOff) <= SCREENWIDTH / 2) {
                hOff--;
                
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < currentLevel->worldPixelWidth && currentLevel->collisionMap[OFFSET(player.worldCol + player.width - 1 + player.cdel, player.worldRow, currentLevel->worldPixelWidth)] && 
            currentLevel->collisionMap[OFFSET(player.worldCol + player.width - 1 + player.cdel, player.worldRow + player.height - 1, currentLevel->worldPixelWidth)]) {

            player.worldCol = player.worldCol + player.cdel;
            player.isMoving = 1;

            if (hOff < currentLevel->worldPixelWidth - SCREENWIDTH && (player.worldCol - hOff) > SCREENWIDTH / 2) {

                // Update background offset variable if the above is true
                hOff++;
                

            }
        }
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    // if (BUTTON_PRESSED(BUTTON_R)) {
    //     if (player.currentSprite->abilityFunc) {
    //         player.currentSprite->abilityFunc();
    //         return;
    //     }
    // }

    for (int i = 0; i < currentLevel->numNPCS; i++) {
        //Temp solution
        if (collision(player.worldCol, player.worldRow, player.width, player.height, currentLevel->npcs[i]->worldCol, currentLevel->npcs[i]->worldRow, currentLevel->npcs[i]->width, currentLevel->npcs[i]->height)) {
            playerCollidingWithNPC = 1;
            if (BUTTON_PRESSED(BUTTON_L)) {
                for (int j = 0; j < NUM_STEALABLE_SPRITES; j++) {
                    if (player.sprites[j] == currentLevel->npcs[i]) {
                        break;
                    } else if (!player.sprites[j]) {
                        if (currentLevel->npcs[i]->isStealable) {
                            glitchPalette(500);
                            glitchDMA(10);
                            player.sprites[j] = currentLevel->npcs[i];
                            player.activeSpriteIndex = j;
                            player.currentSprite = player.sprites[j];
                            break;
                        } else {
                            glitchDMA(50);
                            break;
                        }
                    }
                }
            } else if (BUTTON_PRESSED(BUTTON_A) /*&& !BUTTON_HELD(BUTTON_B) && !BUTTON_HELD(BUTTON_L)*/) {
                currentTarget = currentLevel->npcs[i];
                goToDialogue();
            }
        } 
    }

    if (!playerCollidingWithNPC && BUTTON_PRESSED(BUTTON_L)) {

        glitchDMA(10);

        if (player.sprites[player.activeSpriteIndex + 1] && player.activeSpriteIndex + 1 <= NUM_STEALABLE_SPRITES) {
            player.activeSpriteIndex++;
        } else {
            player.activeSpriteIndex = 0;
        }
        player.currentSprite = player.sprites[player.activeSpriteIndex];
    }

    animatePlayer();

}

void updateNPCS() {

    animateNPCS();

}

void animatePlayer() {


        if(player.aniCounter % player.framesToWait == 0) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
            player.aniCounter = 0;
        }

        if (player.isMoving) {
            player.aniCounter++;
        }


}

void animateNPCS() {

        for (int i = 0; i < currentLevel->numNPCS; i++) {
            // currentLevel->npcs[i]->aniState = currentLevel->npcs[i]->intendedDirection;
            if (currentLevel->npcs[i]->aniCounter % 20 == 0) {
            currentLevel->npcs[i]->curFrame = (currentLevel->npcs[i]->curFrame + 1) % currentLevel->npcs[i]->numFrames;
            currentLevel->npcs[i]->aniCounter = 0;
            }
            currentLevel->npcs[i]->aniCounter++;
        }

}

void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_TALL | ATTR0_4BPP;
        shadowOAM[0].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.currentSprite->gameSpriteTileIDx) + (player.aniState * (player.width / 8)), (player.currentSprite->gameSpriteTileIDy) + (player.curFrame * (player.height / 8)));
        // shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
}

void drawNPCS() {
    for (int i = 0; i < currentLevel->numNPCS; i++) {
        if (currentLevel->npcs[i]->hide) {
        shadowOAM[i + 1].attr0 |= ATTR0_HIDE;
        } else {
        shadowOAM[i + 1].attr0 = (currentLevel->npcs[i]->worldRow - vOff) | ATTR0_TALL | ATTR0_4BPP;
        shadowOAM[i + 1].attr1 = (currentLevel->npcs[i]->worldCol - hOff) | ATTR1_TINY;
        shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((currentLevel->npcs[i]->gameSpriteTileIDx) + (currentLevel->npcs[i]->aniState * (currentLevel->npcs[i]->width / 8)), (currentLevel->npcs[i]->gameSpriteTileIDy) + (currentLevel->npcs[i]->curFrame * (currentLevel->npcs[i]->height / 8)));
        // shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
    }
}



