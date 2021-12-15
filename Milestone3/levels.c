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

#include "startforeground.h"
#include "startmidground.h"
#include "startbackground.h"

#include "level0background.h"
#include "level0midground.h"
#include "level0foreground.h"
#include "level0collisionmap.h"
#include "level0foreground2.h"
#include "level0collisionmap2.h"

#include "level2foreground.h"
#include "level2midground.h"
#include "level2collisionmap.h"

#include "instructionsforeground.h"

#include "pause.h"

#include "sound.h"
#include "trackA.h"
#include "trackB.h"

#include "npcs.h"

LEVEL startLevel;
LEVEL instructionsLevel;
LEVEL pauseLevel;

LEVEL level0;
int level0AniTimer;

LEVEL level1;

LEVEL level2;
int level2AniTimer;

LEVEL level3;

int vOffBG0;
int vOffBG1;
int vOffBG2;

int textAniTimer;
int sunAniTimer;
#define START_ANI_FRAMES_TO_WAIT 20
#define SUN_ANI_FRAMES_TO_WAIT 10
int movingUp;

void glitchPalette(int duration) {
    for (int i = 0; i < duration; i++) {

        waitForVBlank();

        if (!soundB.isPlaying) {
        playSoundB(&trackB_data[rand() % trackB_length], 500, 0, rand() % SOUND_FREQ);
        // Interesting glitch pulverizes all colors.
        // PALETTE[rand() % 16] = PALETTE[rand() % 16];

        int a = rand() % 16;
        int b = rand() % 16;

        unsigned short temp = PALETTE[a];

        PALETTE[a] = PALETTE[b];

        PALETTE[b] = temp;

        }

    }

    if (rand() % 10 > 1) {
        loadLevel(currentLevel, 0);
    }
}

void glitchDMA(int duration) {
    for (int i = 0; i < duration; i++) {

        waitForVBlank();

        DMANow(3, rand(), &CHARBLOCK[rand() % 5], rand);

        playSoundA(&trackA_data[rand() % trackA_length], 1, 0);

    }

    goToGame();
}

void crushPalette() {
    
    waitForVBlank();

    PALETTE[rand() % 32] = PALETTE[rand() % 32];

    if (!soundB.isPlaying) {

        playSoundB(&trackB_data[rand() % trackB_length], 500, 0, rand() % SOUND_FREQ);
    
    }
    
}

void initStart() {

    // ============= SIZE ===============
    startLevel.levelSize = BG_SIZE_SMALL;
    startLevel.BPP = BG_4BPP;

    // =========== FOREGROUND ============

    startLevel.foregroundTiles = startforegroundTiles;
    startLevel.foregroundMap = startforegroundMap;
    startLevel.foregroundTilesLen = startforegroundTilesLen;
    startLevel.foregroundMapLen = startforegroundMapLen;

    startLevel.foregroundPal = startforegroundPal;
    startLevel.foregroundPalLen = startforegroundPalLen;

    // =========== MIDGROUND ============
    
    startLevel.midgroundTiles = startmidgroundTiles;
    startLevel.midgroundMap = startmidgroundMap;
    startLevel.midgroundTilesLen = startmidgroundTilesLen;
    startLevel.midgroundMapLen = startmidgroundMapLen;

    startLevel.midgroundPal = startmidgroundPal;
    startLevel.midgroundPalLen = startmidgroundPalLen;

    // =========== BACKGROUND ============
    
    startLevel.backgroundTiles = startbackgroundTiles;
    startLevel.backgroundMap = startbackgroundMap;
    startLevel.backgroundTilesLen = startbackgroundTilesLen;
    startLevel.backgroundMapLen = startbackgroundMapLen;
    
    startLevel.backgroundPal = startbackgroundPal;
    startLevel.backgroundPalLen = startbackgroundPalLen;

    // ========== MISC =========

    movingUp = 1;

}

void animateStart() {

    waitForVBlank();

    if (textAniTimer % START_ANI_FRAMES_TO_WAIT == 0) {

        if(movingUp) {
            vOffBG0++;
        } else {
            vOffBG0--;
        }
        if(vOffBG0 < 15) {
            movingUp = 1;
        }
        if(vOffBG0 >= 25) {
            movingUp = 0;
        }

        sunAniTimer++;
        textAniTimer = 0;
    }

    if (sunAniTimer == SUN_ANI_FRAMES_TO_WAIT && vOffBG2 < 50) {
        vOffBG2++;
        sunAniTimer = 0;
    }

    textAniTimer++;

    REG_BG0VOFF = vOffBG0;
    REG_BG0HOFF = 5;
    REG_BG1VOFF = 10;
    REG_BG2VOFF = vOffBG2;

}

void initInstructions() {

    instructionsLevel.levelSize = BG_SIZE_SMALL;
    instructionsLevel.BPP = BG_4BPP;

    // =========== FOREGROUND ============

    instructionsLevel.foregroundTiles = instructionsforegroundTiles;
    instructionsLevel.foregroundMap = instructionsforegroundMap;
    instructionsLevel.foregroundTilesLen = instructionsforegroundTilesLen;
    instructionsLevel.foregroundMapLen = instructionsforegroundMapLen;

    instructionsLevel.foregroundPal = instructionsforegroundPal;
    instructionsLevel.foregroundPalLen = instructionsforegroundPalLen;

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

}

void initPause() {

    pauseLevel.levelSize = BG_SIZE_SMALL;
    pauseLevel.BPP = BG_4BPP;

    // =========== FOREGROUND ============

    pauseLevel.foregroundTiles = pauseTiles;
    pauseLevel.foregroundMap = pauseMap;
    pauseLevel.foregroundTilesLen = pauseTilesLen;
    pauseLevel.foregroundMapLen = pauseMapLen;

    pauseLevel.foregroundPal = pausePal;
    pauseLevel.foregroundPalLen = pausePalLen;

    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;

}


void initLevel1() {
    //assign level1 information
    level1.levelSize = BG_SIZE_WIDE;
    level1.BPP = BG_4BPP;
    level1.worldPixelWidth = 512;
    level1.worldPixelHeight = 256;
    level1.playerWorldSpawnCol = 450;
    level1.playerWorldSpawnRow = 177;
    level1.initHOff = 262;
    level1.initVOff = 64;

    level1.collisionMap = (unsigned char*) level1collisionmapBitmap;

    level1.foregroundTilesLen = level1foregroundTilesLen;
    level1.foregroundMapLen = level1foregroundMapLen;
    level1.foregroundTiles = level1foregroundTiles;
    level1.foregroundMap = level1foregroundMap;

    level1.midgroundTilesLen = level1midgroundTilesLen;
    level1.midgroundMapLen = level1midgroundMapLen;
    level1.midgroundTiles = level1midgroundTiles;
    level1.midgroundMap = level1midgroundMap;

    level1.backgroundTilesLen = level1backgroundTilesLen;
    level1.backgroundMapLen = level1backgroundMapLen;
    level1.backgroundTiles = level1backgroundTiles;
    level1.backgroundMap = level1backgroundMap;

    level1.foregroundPal = level1foregroundPal;
    level1.foregroundPalLen = level1foregroundPalLen;
    level1.midgroundPal = level1midgroundPal;
    level1.midgroundPalLen = level1midgroundPalLen;
    level1.backgroundPal = level1backgroundPal;
    level1.backgroundPalLen = level1backgroundPalLen;

    // level1.foregroundTilesLen = level1foregroundTilesLen;
    // level1.foregroundMapLen = level1foregroundMapLen;
    // level1.foregroundTiles = level1foregroundTiles;
    // level1.foregroundMap = level1foregroundMap;

    // level1.midgroundTilesLen = level1midgroundTilesLen;
    // level1.midgroundMapLen = level1midgroundMapLen;
    // level1.midgroundTiles = level1midgroundTiles;
    // level1.midgroundMap = level1midgroundMap;

    // level1.backgroundTilesLen = level1backgroundTilesLen;
    // level1.backgroundMapLen = level1backgroundMapLen;
    // level1.backgroundTiles = level1backgroundTiles;
    // level1.backgroundMap = level1backgroundMap;

    // level1.defaultPalette = level1foregroundPal;
    
    level1.numNPCS = 1;
    level1.npcs[0] = initSeerMaster();

    // level1.npcs[0] = initSeer();
    // level1.npcs[1] = initPlantMerchant();
    // level1.npcs[2] = initKnight();
}

void initLevel0() {

    // ========= PLAYER ==========
    level0.playerWorldSpawnCol = 118;
    level0.playerWorldSpawnRow = 460;
    level0.initHOff = 10;
    level0.initVOff = 347;
    

    // ============= SIZE ===============
    level0.levelSize = BG_SIZE_TALL;
    level0.BPP = BG_4BPP;
    level0.worldPixelWidth = 256;
    level0.worldPixelHeight = 512;
    level0.collisionMap = (unsigned char*) level0collisionmapBitmap;

    // ============== NPCS =================
    level0.numNPCS = 3;
    level0.npcs[0] = initSeer();
    level0.npcs[1] = initPlantMerchant();
    level0.npcs[2] = initKnight();


    // =========== FOREGROUND ============

    level0.foregroundTiles = level0foregroundTiles;
    level0.foregroundMap = level0foregroundMap;
    level0.foregroundTilesLen = level0foregroundTilesLen;
    level0.foregroundMapLen = level0foregroundMapLen;

    level0.foregroundPal = level0foregroundPal;
    level0.foregroundPalLen = level0foregroundPalLen;

    // =========== MIDGROUND ============
    
    level0.midgroundTiles = level0midgroundTiles;
    level0.midgroundMap = level0midgroundMap;
    level0.midgroundTilesLen = level0midgroundTilesLen;
    level0.midgroundMapLen = level0midgroundMapLen;

    level0.midgroundPal = level0midgroundPal;
    level0.midgroundPalLen = level0midgroundPalLen;

    // =========== BACKGROUND ============
    
    level0.backgroundTiles = level0backgroundTiles;
    level0.backgroundMap = level0backgroundMap;
    level0.backgroundTilesLen = level0backgroundTilesLen;
    level0.backgroundMapLen = level0backgroundMapLen;
    
    level0.backgroundPal = level0backgroundPal;
    level0.backgroundPalLen = level0backgroundPalLen;

    // =================== ANIM =====================

    level0.animFunc = animateLevel0;
    level0AniTimer = 0;
}

void initLevel2() {

    // ========= PLAYER ==========
    level2.playerWorldSpawnCol = 143;
    level2.playerWorldSpawnRow = 239;
    level2.initHOff = 16;
    level2.initVOff = 96;

    level2.useSecondarySpawn = 0;
    level2.secondaryPlayerWorldSpawnCol = 5;
    level2.secondaryPlayerWorldSpawnRow = 146;
    level2.secondaryInitHOff = 0;
    level2.secondaryInitVOff = 97;
    

    // ============= SIZE ===============
    level2.levelSize = BG_SIZE_SMALL;
    level2.BPP = BG_8BPP;
    level2.worldPixelWidth = 256;
    level2.worldPixelHeight = 256;
    level2.collisionMap = (unsigned char*) level2collisionmapBitmap;

    // // ============== NPCS =================
    level2.numNPCS = 1;
    level2.npcs[0] = initFinalDoor();


    // =========== FOREGROUND ============

    level2.foregroundTiles = level2foregroundTiles;
    level2.foregroundMap = level2foregroundMap;
    level2.foregroundTilesLen = level2foregroundTilesLen;
    level2.foregroundMapLen = level2foregroundMapLen;

    level2.foregroundPal = level2foregroundPal;
    level2.foregroundPalLen = level2foregroundPalLen;

    // // =========== MIDGROUND ============
    
    // level2.midgroundTiles = level2midgroundTiles;
    // level2.midgroundMap = level2midgroundMap;
    // level2.midgroundTilesLen = level2midgroundTilesLen;
    // level2.midgroundMapLen = level2midgroundMapLen;

    // level0.midgroundPal = level0midgroundPal;
    // level0.midgroundPalLen = level0midgroundPalLen;

    // // =========== BACKGROUND ============
    
    level2.backgroundTiles = level2midgroundTiles;
    level2.backgroundMap = level2midgroundMap;
    level2.backgroundTilesLen = level2midgroundTilesLen;
    level2.backgroundMapLen = level2midgroundMapLen;
    
    // level2.backgroundPal = level0backgroundPal;
    // level2.backgroundPalLen = level0backgroundPalLen;

    // // =================== ANIM =====================

    level2.animFunc = animateLevel2;
    level2AniTimer = 0;

}

void unlockGateLevel0() {

    level0.foregroundTiles = level0foreground2Tiles;
    level0.foregroundTilesLen = level0foreground2TilesLen;

    level0.foregroundMap = level0foreground2Map;
    level0.foregroundMapLen = level0foreground2MapLen;

    level0.collisionMap = level0collisionmap2Bitmap;

    currentLevel = &level0;

    goToGame();

}

void animateLevel2() {

    // PALETTE[8] += rand();
    // PALETTE[9] = 0;

    // REG_BG2CNT = BG_SIZE_TALL | BG_4BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26);

    // START REAL

    if (player.currentSprite != &seerMaster) {

        int randInt = rand();

        DMANow(3, randInt, &CHARBLOCK[2], level2midgroundTilesLen / 2);

        PALETTE[0] = 0;

    }

    // if (level2AniTimer % 500 == 0) {

    //     DMANow(3, randInt, &CHARBLOCK[0], level2foregroundTilesLen / 2);
    //     PALETTE[8] += randInt;
    //     level2AniTimer = 0;

    //     stopSound();

    //     int delay = 0;
    //     while (delay < 10) {
    //         playSoundA(&trackA_data[randInt % trackA_length], 1, 0);
    //         waitForVBlank();
    //         delay++;
    //     }

    //     playSoundA(&trackA_data[randInt % trackA_length], trackA_length, 1);
    

    //     DMANow(3, level2foregroundTiles, &CHARBLOCK[0], level2foregroundTilesLen / 2);

    // }

    // level0AniTimer++;

    // DMANow(3, rand(), &PALETTE[(level0foregroundPalLen / 2) + (level0midgroundPalLen / 2)], level0backgroundPalLen / 2);

}

void animateLevel0() {

    // PALETTE[8] += rand();
    // PALETTE[9] = 0;

    // REG_BG2CNT = BG_SIZE_TALL | BG_4BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26);

    int randInt = rand();

    DMANow(3, randInt, &CHARBLOCK[2], level0backgroundTilesLen / 2);

    PALETTE[0] = 0;

    if (level0AniTimer % 500 == 0) {

        DMANow(3, randInt, &CHARBLOCK[0], level0foregroundTilesLen / 2);
        PALETTE[8] += randInt;
        level0AniTimer = 0;

        stopSound();

        int delay = 0;
        while (delay < 10) {
            playSoundA(&trackA_data[randInt % trackA_length], 1, 0);
            waitForVBlank();
            delay++;
        }

        playSoundA(&trackA_data[randInt % trackA_length], trackA_length, 1);
    

        DMANow(3, level0foregroundTiles, &CHARBLOCK[0], level0foregroundTilesLen / 2);

    }

    level0AniTimer++;

    // DMANow(3, rand(), &PALETTE[(level0foregroundPalLen / 2) + (level0midgroundPalLen / 2)], level0backgroundPalLen / 2);

}

void initLevel3() {

    

}