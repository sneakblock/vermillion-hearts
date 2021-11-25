#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"

//Inclusions of Usenti images, for TESTS only right now.
#include "testgameimage.h"

//Game.h stuff
#include "game.h"

//Spritesheet
#include "spritesheet.h"

//Text stuff
#include "text.h"

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
void goToInstructions();
void instructions();

// States
enum
{
    START,
    GAME,
    DIALOUGE,
    PAUSE,
    WIN,
    INSTRUCTIONS,
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
        case INSTRUCTIONS:
            instructions();
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
    // REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    // REG_BG0CNT = BG_SIZE_SMALL | BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);

    //hideSprites();
    //waitForVBlank();
    //DMANow(3, shadowOAM, OAM, 512);

    buttons = BUTTONS;
    oldButtons = 0;
    
    goToStart();
}

// Sets up the start state
void goToStart() {

    
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    //load start screen palette
    //draw the background image

    PALETTE[0] = WHITE;
    PALETTE[1] = BLACK;

    fillScreen4(1);
    

    char* string = "Death to Persia";
    drawString4(50, 50, string, 0);

    waitForVBlank();
    flipPage();
    

    state = START;

}

// Runs every frame of the start state
void start() {

    
    

    waitForVBlank();

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

void goToInstructions() {

}

void instructions() {

}