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


NPC* currentTarget;
LEVEL* currentLevel;
LEVEL level1;
PLAYER player;

//NPC stuff Milestone 3
NPC npcs[MAX_NPCS_PER_LEVEL];

int hOff;
int vOff;


unsigned char* level1collisionmap = level1collisionmapBitmap;

void initGame() {

    initLevels();
    currentLevel = &level1;
    initPlayer();
    initNPCS();

}

void updateGame() {

    updatePlayer();
    updateNPCS();

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
    

    // REG_BG2HOFF = hOff / 8;
    // REG_BG2VOFF = vOff / 8;

}



void initLevels() {

    initPause();
    initLevel1();

}

void initPlayer() {

    player.currentEidolon = CLOUD;
    player.rdel = 1;
    player.cdel = 1;
    player.width = 8;
    player.height = 16;

    player.hide = 0;

    player.aniCounter = 0;
    player.framesToWait = 20;
    player.aniState = 0;
    player.numStates = 1;
    player.prevAniState = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.gameSpriteTileIDx = 0;
    player.gameSpriteTileIDy = 0;

}

void initNPCS() {

    for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
        npcs[i].active = 1;
        npcs[i].hide = 0;
        npcs[i].rdel = 1;
        npcs[i].cdel = 1;
        npcs[i].width = 8;
        npcs[i].height = 16;
        npcs[i].aniState = DOWN;
        npcs[i].curFrame = 0;
        npcs[i].numFrames = 2;
        npcs[i].gameSpriteTileIDx = 1;
        npcs[i].gameSpriteTileIDy = 0;

        npcs[i].talkingHeadBitmap = talkingheadtestBitmap;
        npcs[i].talkingHeadPalette = talkingheadtestPal;
        npcs[i].talkingHeadPalLen = talkingheadtestPalLen;
        npcs[i].name = "Plant Merchant:";

        DIALOGUE greeting;
        greeting.string = "I like plants. Wow I sure do. I love plants so much that I can't even handle it haha. Plants really are my favorite!";
        greeting.choiceA = "I hate plants.";
        greeting.choiceB = "I love plants, too.";
        greeting.choiceAIndex = 1;
        greeting.choiceBIndex = 2;
        greeting.promptsChoice = 1;
        greeting.endsConversation = 0;
        greeting.satisfiesBool = 0;

        DIALOGUE hatePlants;
        hatePlants.string = "How could you say that? Plants bring us life, light, and joy. :(";
        hatePlants.endsConversation = 1;
        hatePlants.promptsChoice = 0;
        hatePlants.satisfiesBool = 0;

        DIALOGUE lovePlants;
        lovePlants.string = "I'm so happy to hear that! I'm glad that they bring you joy the same way they do for me!";
        lovePlants.endsConversation = 1;
        lovePlants.promptsChoice = 0;
        lovePlants.satisfiesBool = 0;

        npcs[i].dialogues[0] = greeting;
        npcs[i].dialogues[1] = hatePlants;
        npcs[i].dialogues[2] = lovePlants;
        npcs[i].dialoguesIndex = 0;
        npcs[i].postConvoIndex = 0;
        
    }

    npcs[0].worldCol = 303;
    npcs[0].worldRow = 241;
    npcs[0].intendedDirection = UP;

    npcs[1].worldCol = 208;
    npcs[1].worldRow = 178;
    npcs[1].intendedDirection = LEFT;

    npcs[2].worldCol = 177;
    npcs[2].worldRow = 240;
    npcs[2].intendedDirection = RIGHT;

    npcs[3].worldCol = 172;
    npcs[3].worldRow = 135;
    npcs[3].intendedDirection = DOWN;
    
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

    if (resetsPlayerPos) {
        player.worldCol = level->playerWorldSpawnCol;
        player.worldRow = level->playerWorldSpawnRow;
        hOff = level->initHOff;
        vOff = level->initVOff;
    }

    // for (int i = 0; i < MAX_NPCS_PER_LEVEL; i++) {
    //     if (&level->npcs[i] != NULL) {
    //         loadNPC(&level->npcs[i]);
    //     }
    // }

    // currentLevel = level;

}

void loadNPC(NPC* npc) {

    npc->active = 1;

}



void updatePlayer() {

    if(BUTTON_HELD(BUTTON_UP)) {
        if (player.worldRow > 0 && level1collisionmap[OFFSET(player.worldCol, player.worldRow - player.rdel, currentLevel->worldPixelWidth)] && 
            level1collisionmap[OFFSET(player.worldCol + player.width - 1, player.worldRow - player.rdel, currentLevel->worldPixelWidth)]) {
                
                player.worldRow = player.worldRow - player.rdel;

            if (vOff > 0 && (player.worldRow - vOff) <= SCREENHEIGHT / 2) {
                // Update background offset variable if the above is true
                vOff--;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_DOWN)) {
        if (player.worldRow + player.height < currentLevel->worldPixelHeight && level1collisionmap[OFFSET(player.worldCol, player.worldRow + player.height - 1 + player.rdel, currentLevel->worldPixelWidth)] && 
            level1collisionmap[OFFSET(player.worldCol + player.width - 1, player.worldRow + player.height - 1 + player.rdel, currentLevel->worldPixelWidth)]) {
                player.worldRow = player.worldRow + player.rdel;

            // Update player's world position if the above is true



            if (vOff < currentLevel->worldPixelHeight - SCREENHEIGHT && (player.worldRow - vOff) > SCREENHEIGHT / 2) {
                // Update background offset variable if the above is true
                vOff++;
                
            }
        }
    }
    if(BUTTON_HELD(BUTTON_LEFT)) {
        if (player.worldCol > 0 && level1collisionmap[OFFSET(player.worldCol - player.cdel, player.worldRow, currentLevel->worldPixelWidth)] && 
            level1collisionmap[OFFSET(player.worldCol - player.cdel, player.worldRow + player.height - 1, currentLevel->worldPixelWidth)]) {
                player.worldCol = player.worldCol - player.cdel;

            // Update player's world position if the above is true

            if (hOff > 0 && (player.worldCol - hOff) <= SCREENWIDTH / 2) {
                hOff--;
                
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        if (player.worldCol + player.width < currentLevel->worldPixelWidth && level1collisionmap[OFFSET(player.worldCol + player.width - 1 + player.cdel, player.worldRow, currentLevel->worldPixelWidth)] && 
            level1collisionmap[OFFSET(player.worldCol + player.width - 1 + player.cdel, player.worldRow + player.height - 1, currentLevel->worldPixelWidth)]) {

            player.worldCol = player.worldCol + player.cdel;

            if (hOff < currentLevel->worldPixelWidth - SCREENWIDTH && (player.worldCol - hOff) > SCREENWIDTH / 2) {

                // Update background offset variable if the above is true
                hOff++;
                

            }
        }
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    // for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
    //     if (collision(player.worldCol, player.worldRow, player.width, player.height, npcs[i].worldCol, npcs[i].worldRow, npcs[i].width, npcs[i].height)) {
    //         goToLose();
    //     }
    // }

    // if (player.worldCol == 0) {
    //     goToWin();
    // }

    // if (BUTTON_PRESSED(BUTTON_A)) {
    //     glitchVisuals (40);
    // }

    for (int i = 0; i < currentLevel->numNPCS; i++) {
        //Temp solution
        if (collision(player.worldCol, player.worldRow, player.width, player.height, npcs[i].worldCol, npcs[i].worldRow, npcs[i].width, npcs[i].height) && BUTTON_PRESSED(BUTTON_A)) {
            currentTarget = &npcs[i];
            goToDialogue();
        }
    }

    animatePlayer();

}

void updateNPCS() {

    // for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {

    //     switch (npcs[i].intendedDirection) {
    //         case UP:
    //             if (npcs[i].worldRow > 0 && level1collisionmap[OFFSET(npcs[i].worldCol, npcs[i].worldRow - npcs[i].rdel, currentLevel->worldPixelWidth)] && 
    //             level1collisionmap[OFFSET(npcs[i].worldCol + npcs[i].width - 1, npcs[i].worldRow - npcs[i].rdel, currentLevel->worldPixelWidth)]) {
    //                 npcs[i].worldRow -= npcs[i].rdel;
    //             } else {
    //                 npcs[i].intendedDirection = rand() % (3 + 1 - 0) + 0;
    //             }
    //             break;
    //         case DOWN:
    //             if (npcs[i].worldRow < currentLevel->worldPixelHeight - npcs[i].height && level1collisionmap[OFFSET(npcs[i].worldCol, npcs[i].worldRow + npcs[i].height - 1 + npcs[i].rdel, currentLevel->worldPixelWidth)] && 
    //             level1collisionmap[OFFSET(npcs[i].worldCol + npcs[i].width - 1, npcs[i].worldRow + npcs[i].height - 1 + npcs[i].rdel, currentLevel->worldPixelWidth)]) {
    //                 npcs[i].worldRow += npcs[i].rdel;
    //             } else {
    //                 npcs[i].intendedDirection = rand() % (3 + 1 - 0) + 0;
    //             }
    //             break;
    //         case LEFT:
    //             if (npcs[i].worldCol > 0 && level1collisionmap[OFFSET(npcs[i].worldCol - npcs[i].cdel, npcs[i].worldRow, currentLevel->worldPixelWidth)] && 
    //             level1collisionmap[OFFSET(npcs[i].worldCol - npcs[i].cdel, npcs[i].worldRow + npcs[i].height - 1, currentLevel->worldPixelWidth)]) {
    //             npcs[i].worldCol -= npcs[i].cdel;
    //             } else {
    //                 npcs[i].intendedDirection = rand() % (3 + 1 - 0) + 0;
    //             }
    //             break;
    //         case RIGHT:
    //             if (npcs[i].worldCol < currentLevel->worldPixelWidth - npcs[i].width && level1collisionmap[OFFSET(npcs[i].worldCol + npcs[i].width - 1 + npcs[i].cdel, npcs[i].worldRow, currentLevel->worldPixelWidth)] && 
    //             level1collisionmap[OFFSET(npcs[i].worldCol + npcs[i].width - 1 + npcs[i].cdel, npcs[i].worldRow + npcs[i].height - 1, currentLevel->worldPixelWidth)]) {
    //             npcs[i].worldCol += npcs[i].cdel;
    //             } else {
    //                 npcs[i].intendedDirection = rand() % (3 + 1 - 0) + 0;
    //             }
    //             break;
    //     }
    // }

    animateNPCS();

}

void animatePlayer() {

        // Set previous state to current state
        // player.prevAniState = player.aniState;
        // player.aniState = IDLE;

        if(player.aniCounter % player.framesToWait == 0) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
            player.aniCounter = 0;
        }

        // Control movement and change animation state
        // if(BUTTON_HELD(BUTTON_UP))
        //     player.aniState = UP;
        // if(BUTTON_HELD(BUTTON_DOWN))
        //     player.aniState = DOWN;
        // if(BUTTON_HELD(BUTTON_LEFT))
        //     player.aniState = LEFT;
        // if(BUTTON_HELD(BUTTON_RIGHT))
        //     player.aniState = RIGHT;

        // If the player aniState is idle, frame is player standing
        // if (player.aniState == IDLE) {
        //     player.curFrame = 0;
        //     player.aniCounter = 0;
        //     player.aniState = player.prevAniState;
        // } else {
            player.aniCounter++;
        // }

}

void animateNPCS() {

        for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
            npcs[i].aniState = npcs[i].intendedDirection;
            if (npcs[i].aniCounter % 20 == 0) {
            npcs[i].curFrame = (npcs[i].curFrame + 1) % npcs[i].numFrames;
            npcs[i].aniCounter = 0;
            }
            npcs[i].aniCounter++;
        }

}

void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_TALL | ATTR0_4BPP;
        shadowOAM[0].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.gameSpriteTileIDx) + (player.aniState * (player.width / 8)), (player.gameSpriteTileIDy) + (player.curFrame * (player.height / 8)));
        // shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
}

void drawNPCS() {
    for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
        if (npcs[i].hide) {
        shadowOAM[i + 1].attr0 |= ATTR0_HIDE;
        } else {
        shadowOAM[i + 1].attr0 = (ROWMASK & (npcs[i].worldRow - vOff)) | ATTR0_TALL | ATTR0_4BPP;
        shadowOAM[i + 1].attr1 = (COLMASK & (npcs[i].worldCol - hOff)) | ATTR1_TINY;
        shadowOAM[i + 1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((npcs[i].gameSpriteTileIDx) + (npcs[i].aniState * (npcs[i].width / 8)), (npcs[i].gameSpriteTileIDy) + (npcs[i].curFrame * (npcs[i].height / 8)));
        // shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
    }
    }
}

// void glitchVisuals(int duration) {

//     int counter = 0;

//     while (counter < duration) {
//         for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
//             npcs[i].cdel = 0;
//             npcs[i].rdel = 0;
//         }

//         DMANow(3, currentLevel->midgroundTiles, &CHARBLOCK[1], currentLevel->midgroundTilesLen / 2);
//         DMANow(3, currentLevel->midgroundMap, &SCREENBLOCK[27], currentLevel->midgroundMapLen / 2);

//         DMANow(3, currentLevel->backgroundTiles, &CHARBLOCK[2], currentLevel->backgroundTilesLen / 2);
//         DMANow(3, currentLevel->backgroundMap, &SCREENBLOCK[24], currentLevel->backgroundMapLen / 2);
//         waitForVBlank();
//         counter++;
        
//     }

//     for (int i = 0; i < MAX_NPCS_PER_LEVEL - 1; i++) {
//             npcs[i].cdel = 1;
//             npcs[i].rdel = 1;
//         }

//     DMANow(3, currentLevel->defaultPalette, PALETTE, 256);
//     DMANow(3, currentLevel->foregroundTiles, &CHARBLOCK[0], (currentLevel->foregroundTilesLen) / 2);
//     DMANow(3, currentLevel->foregroundMap, &SCREENBLOCK[30], (currentLevel->foregroundMapLen) / 2);

//     DMANow(3, SPRITESHEETTiles, &CHARBLOCK[4], SPRITESHEETTilesLen / 2);
//     DMANow(3, SPRITESHEETPal, SPRITEPALETTE, SPRITESHEETPalLen / 2);
//     hideSprites();
//     DMANow(3, shadowOAM, OAM, 512);

// }



