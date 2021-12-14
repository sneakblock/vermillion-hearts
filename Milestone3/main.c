// Milestone 4 update
// For milestone 4, I added a dialogue system, multiple NPCs, animated sprites, an entirely new level, and
// sound, along with animated menus, and backgrounds for all states. Multiple realtime glitches play throughout
// the game to set the mood, and I have refocused my goals to focus on dialogue instead of glitch puzzle 
// mechanics, so that dialogue flags allow the player to progress to the ending. Notice the glitched palettes,
// sound work, and dialogue characters!

#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"

//Game.h stuff
#include "game.h"

//Spritesheet
#include "spritesheet.h"

//Text stuff
#include "text.h"

#include "talkingheadtest.h"

#include "dialogue.h"

#include "sound.h"
#include "trackA.h"
#include "trackB.h"

#include "levels.h"

#include "seerscreen.h"

// Prototypes
void initialize();

int seed;

// States
enum
{
    START,
    GAME,
    SPEAKING,
    /*SEERSTATE,*/
    PAUSE,
    WIN,
    INSTRUCTIONS,
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Shadow OAM
OBJ_ATTR shadowOAM[128];

//Dialogue stuff
int dialogueTypeCol = 124;
int dialogueTypeRow = 12;

char* source;
char* clone;
int index;

int selectedPalColor;
int selectedPalRow;
int selectedPalCol;
int swapIndex1;
int swapIndex2;

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
        case SPEAKING:
            dialogue();
            break;
        // case SEERSTATE:
        //     seerFunc();
        //     break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case INSTRUCTIONS:
            instructions();
            break;
        }
    }
}

// Sets up GBA
void initialize()
{
    seed = 0;

    buttons = BUTTONS;
    oldButtons = 0;

    setupInterrupts();
    setupSounds();

    selectedPalColor = 0;
    selectedPalCol = 0;
    selectedPalRow = 0;
    
    goToStart();
}

// Sets up the start state
void goToStart() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    initStart();
    loadLevel(&startLevel, 0);

    playSoundA(trackB_data, trackB_length, 1);
    
    state = START;

}

// Runs every frame of the start state
void start() {

    seed++;

    animateStart();

    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);

        for (int i = 0; i < 1000; i++) {

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

        initGame();
        loadLevel(currentLevel, 1);
        stopSound();
        playSoundA(trackA_data, trackA_length, 1);
        glitchDMA(100);
        // goToGame();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        srand(seed);
        goToInstructions();
    }

}

// Sets up the game state
void goToGame() {

    waitForVBlank();

    //Turn it off!!!
    REG_DISPCTL = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    DMANow(3, SPRITESHEETTiles, &CHARBLOCK[4], SPRITESHEETTilesLen / 2);
    DMANow(3, SPRITESHEETPal, SPRITEPALETTE, SPRITESHEETPalLen / 2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    loadLevel(currentLevel, 0);

    for (int i = 0; i < 200; i++) {

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

    // if (rand() % 10 > 1) {
    //     loadLevel(currentLevel, 0);
    // }

    loadLevel(currentLevel, 0);
    
    state = GAME;

}

// Runs every frame of the game state
void game() {

    updateGame();
    drawGame();

}

void goToDialogue() {

    waitForVBlank();
    
    //Turns off display controller
    REG_DISPCTL = 0;

    // DMANow(3, currentTarget->talkingHeadPalette, PALETTE, currentTarget->talkingHeadPalLen / 2);

    // Goes to Mode4
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    PALETTE[0] = BLACK;
    PALETTE[1] = WHITE;
    
    drawDialogueUI();
    typeDialogue(TEXTBOX_COL, TEXTBOX_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].string, 1);

    if (currentTarget->dialogues[currentTarget->dialoguesIndex].promptsChoice) {
        selectedChoice = CHOICE_A;
    }

    waitForVBlank();
    flipPage();

    state = SPEAKING;
    
}

void dialogue() {

    if ((BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_DOWN)) && (currentTarget->dialogues[currentTarget->dialoguesIndex].promptsChoice)) {
        if (selectedChoice == CHOICE_A) {
            selectedChoice = CHOICE_B;
        } else {
            selectedChoice = CHOICE_A;
        }
    }

    if (BUTTON_PRESSED(BUTTON_A)) {
        if (currentTarget->dialogues[currentTarget->dialoguesIndex].promptsChoice) {
        selectChoice();
        }
        else if (!currentTarget->dialogues[currentTarget->dialoguesIndex].promptsChoice && !currentTarget->dialogues[currentTarget->dialoguesIndex].endsConversation) {
            currentTarget->dialoguesIndex++;
            // drawDialogueUI();
            // typeDialogue(TEXTBOX_COL, TEXTBOX_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].string, 1);
            goToDialogue();
        }
        else if (currentTarget->dialogues[currentTarget->dialoguesIndex].endsConversation) {
            currentTarget->dialoguesIndex = 0;
            goToGame();
        }
        
    }

    if (currentTarget->dialogues[currentTarget->dialoguesIndex].promptsChoice) {
        drawChoices();
        drawSelector();
    }
    
    waitForVBlank();
    flipPage();

}

// Sets up the pause state
void goToPause() {

    //REALLY nice glitching for a quick moment here, a frame or two.

    // REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    // PALETTE[0] = WHITE;
    // PALETTE[1] = BLACK;

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    loadLevel(&pauseLevel, 0);

    state = PAUSE;

}

// Runs every frame of the pause state
void pause() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToGame();

    }

}

// Sets up the win state
void goToWin() {

    //Cool glitch here, too.

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    PALETTE[0] = WHITE;
    PALETTE[1] = BLUE;


    state = WIN;

}

// Runs every frame of the win state
void win() {

    fillScreen4(1);

    char* string = "YOU REACH AETHER.";
    char* string1 = "PRESS START TO REPLAY.";

    drawString4(20, 60, string, 0);
    drawString4(20, 70, string1, 0);

    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}

void goToInstructions() {

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    initInstructions();
    loadLevel(&instructionsLevel, 0);

    stopSound();

    for (int i = 0; i < 100; i++) {
        waitForVBlank();

        //MAKE THIS A FUNCTION!
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

    loadLevel(&instructionsLevel, 0);
    
    state = INSTRUCTIONS;

}

void instructions() {

    if (BUTTON_PRESSED(BUTTON_SELECT)) {

        goToStart();

    }

}

// void goToSeer() {

//     waitForVBlank();

//     //Turn it off!!!
//     REG_DISPCTL = 0;

//     loadLevel(currentLevel, 0);

//     REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
//     REG_BG0CNT = BG_SIZE_SMALL | BG_4BPP |  BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);

//     DMANow(3, seerscreenTiles, &CHARBLOCK[0], seerscreenTilesLen / 2);
//     DMANow(3, seerscreenMap, &SCREENBLOCK[30], seerscreenMapLen / 2);

//     swapIndex1 = -1;
//     swapIndex2 = -1;

//     // if (!PALETTE[14]) {
//     //     PALETTE[14] = BLACK;
//     // }

//     // if (!PALETTE[15]) {
//     //     PALETTE[15] = WHITE;
//     // }

//     stopSound();

//     state = SEERSTATE;

// }

// void seerFunc() {

//     hideSprites();
//     DMANow(3, shadowOAM, OAM, 128 * 4);

//     REG_BG0HOFF = 0;
//     REG_BG0VOFF = 0;

//     if (BUTTON_PRESSED(BUTTON_LEFT)) {
//         if (selectedPalColor == 0 || selectedPalColor == 4 || selectedPalColor == 8 || selectedPalColor == 12) {
//             selectedPalColor += 3;
//         } else {
//             selectedPalColor--;
//         }
//         if (selectedPalCol == 0) {
//             selectedPalCol = 3;
//         } else {
//             selectedPalCol--;
//         }
//     }

//     if (BUTTON_PRESSED(BUTTON_RIGHT)) {
//         if (selectedPalColor == 3 || selectedPalColor == 7 || selectedPalColor == 11 || selectedPalColor == 15) {
//             selectedPalColor -= 3;
//         } else {
//             selectedPalColor++;
//         }
//         if (selectedPalCol == 3) {
//             selectedPalCol = 0;
//         } else {
//             selectedPalCol++;
//         }
//     }

//     if (BUTTON_PRESSED(BUTTON_UP)) {
//         if (selectedPalColor <= 3) {
//             selectedPalColor += 12;
//         } else {
//             selectedPalColor -= 4;
//         }
//         if (selectedPalRow == 0) {
//             selectedPalRow = 3;
//         } else {
//             selectedPalRow--;
//         }
//     }

//     if (BUTTON_PRESSED(BUTTON_DOWN)) {
//         if (selectedPalColor >= 12) {
//             selectedPalColor -= 12;
//         } else {
//             selectedPalColor += 4;
//         }
//         if (selectedPalRow == 3) {
//             selectedPalRow = 0;
//         } else {
//             selectedPalRow++;
//         }
//     }

//     if (BUTTON_PRESSED(BUTTON_A)) {
//         if (swapIndex1 == -1) {
//             swapIndex1 = selectedPalColor;
//         } else if (swapIndex2 == -1) {
//             swapIndex2 = selectedPalColor;
//         }
//         if (swapIndex1 != -1 && swapIndex2 != -1) {

//             unsigned short temp = PALETTE[swapIndex1];

//             // unsigned short temp = PALETTE[swapIndex1];
//             // PALETTE[swapIndex1] = PALETTE[swapIndex2];
//             // PALETTE[swapIndex2] = temp;

//             swapIndex1 = -1;
//             swapIndex2 = -1;
//         }
//     }

//     shadowOAM[0].attr0 = ATTR0_4BPP | ATTR0_SQUARE | ((selectedPalRow * 22) + 65);
//     shadowOAM[0].attr1 = ATTR1_TINY | (((selectedPalCol * 23) + 84) - 4);
//     shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 0);

//     DMANow(3, shadowOAM, OAM, 512);

//     if (BUTTON_PRESSED(BUTTON_R)) {
//         goToGame();
//     }

// }