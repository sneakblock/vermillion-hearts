#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"

//Inclusions of Usenti images, for TESTS only right now.
#include "startimage.h"
#include "testgameimage.h"

//Game.h stuff
#include "game.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToDialogue();
void dialogue();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum
{
    START,
    GAME,
    DIALOUGE,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

int main()
{
    initialize();

    while (1)
    {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case DIALOUGE:
            dialogue();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    buttons = BUTTONS;
    oldButtons = 0;

    goToStart();
}

// Sets up the start state
void goToStart() {

    DMANow(3, startimagePal, PALETTE, startimagePalLen / 2);
    DMANow(3, startimageTiles, &CHARBLOCK[0], startimageTilesLen / 2);
	DMANow(3, startimageMap, &SCREENBLOCK[28], startimageMapLen / 2);

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    state = START;

}

// Runs every frame of the start state
void start() {

    if (BUTTON_PRESSED(BUTTON_START)) {

        //glitchVisuals();
        goToGame();

    }

}

// Sets up the game state
void goToGame() {

    DMANow(3, testgameimagePal, PALETTE, testgameimagePalLen / 2);
    DMANow(3, testgameimageTiles, &CHARBLOCK[0], testgameimageTilesLen / 2);
	DMANow(3, testgameimageMap, &SCREENBLOCK[28], testgameimageMapLen / 2);

    waitForVBlank();

    state = GAME;

}

// Runs every frame of the game state
void game() {}

void goToDialogue() {

}

void dialogue() {

}

// Sets up the pause state
void goToPause() {}

// Runs every frame of the pause state
void pause() {}

// Sets up the win state
void goToWin() {}

// Runs every frame of the win state
void win() {}

// Sets up the lose state
void goToLose() {}

// Runs every frame of the lose state
void lose() {}