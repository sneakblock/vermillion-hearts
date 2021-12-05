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

#include "instructionsforeground.h"

#include "pause.h"

LEVEL startLevel;
LEVEL instructionsLevel;
LEVEL pauseLevel;

int vOffBG0;
int vOffBG1;
int vOffBG2;

int textAniTimer;
int sunAniTimer;
#define START_ANI_FRAMES_TO_WAIT 20
#define SUN_ANI_FRAMES_TO_WAIT 10
int movingUp;


void initStart() {

    // ============= SIZE ===============
    startLevel.levelSize = BG_SIZE_SMALL;

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
    level1.worldPixelWidth = 512;
    level1.worldPixelHeight = 256;
    level1.playerWorldSpawnCol = 450;
    level1.playerWorldSpawnRow = 177;
    level1.initHOff = 262;
    level1.initVOff = 64;

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
    
    level1.numNPCS = 4;
}