// Milestone 3 Update
// 
// For this milestone, I focused on getting basic game mechanics working. I wanted to get complex movement right,
// as well as having romaing enemies. While most glitch mechanics aren't yet implemented, I spent a while figuring
// out interesting ways to glitch the screen with Mode 4 switches and screenblock overwriting, both of which will
// be more prevalant in the final game. Art and mood are important to my game, and so I also spent some time on them.
// This will be the first level of the game, and later areas will allow for more abilites and glitch mechanics.
// To play, use the directional inputs and avoid enemies. Start goes to pause.
// Take note of the red flickering upon death and the "channel tune" effect on the Mode 4 swap, leveraging page flipping.
// Check out the glitch time freeze, still a work in progress, with A during the game.

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

#include "levels.h"

// Prototypes
void initialize();



int seed;

// States
enum
{
    START,
    GAME,
    SPEAKING,
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

//Dialogue stuff
int dialogueTypeCol = 124;
int dialogueTypeRow = 12;

char* source;
char* clone;
int index;

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
    seed = 0;

    buttons = BUTTONS;
    oldButtons = 0;

    setupInterrupts();
    setupSounds();
    
    goToStart();
}

// Sets up the start state
void goToStart() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    initStart();
    loadLevel(&startLevel, 0);
    
    state = START;

}

// Runs every frame of the start state
void start() {

    seed++;

    animateStart();

    if (BUTTON_PRESSED(BUTTON_START)) {
        //glitchVisuals();
        srand(seed);
        initGame();
        loadLevel(&level1, 1);
        playSoundA(trackA_data, trackA_length, 1);
        goToGame();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        //glitchVisuals();
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

    loadLevel(&level1, 0);

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

    DMANow(3, currentTarget->talkingHeadPalette, PALETTE, currentTarget->talkingHeadPalLen / 2);

    // Goes to Mode4
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    PALETTE[255] = BLACK;
    PALETTE[254] = WHITE;
    
    drawDialogueUI();
    typeDialogue(TEXTBOX_COL, TEXTBOX_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].string, 254);

    selectedChoice = CHOICE_A;

    waitForVBlank();
    flipPage();

    state = SPEAKING;
    
}

void dialogue() {

    if (BUTTON_PRESSED(BUTTON_UP) || BUTTON_PRESSED(BUTTON_DOWN)) {
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
        }
        else if (currentTarget->dialogues[currentTarget->dialoguesIndex].endsConversation) {
            currentTarget->dialoguesIndex = currentTarget->postConvoIndex;
            goToGame();
            // waitForVBlank();

            // REG_DISPCTL = MODE0 | BG0_ENABLE /*| BG1_ENABLE | BG2_ENABLE*/ | SPRITE_ENABLE;

            // DMANow(3, SPRITESHEETTiles, &CHARBLOCK[4], SPRITESHEETTilesLen / 2);
            // DMANow(3, SPRITESHEETPal, SPRITEPALETTE, SPRITESHEETPalLen / 2);
            // hideSprites();
            // DMANow(3, shadowOAM, OAM, 512);
            // REG_BG0CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);
            // REG_BG1CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28);
            // REG_BG2CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26);

            // DMANow(3, currentLevel->defaultPalette, PALETTE, 256);
            // DMANow(3, currentLevel->foregroundTiles, &CHARBLOCK[0], (currentLevel->foregroundTilesLen) / 2);
            // DMANow(3, currentLevel->foregroundMap, &SCREENBLOCK[30], (currentLevel->foregroundMapLen) / 2);

            // state = GAME;
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

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    PALETTE[0] = WHITE;
    PALETTE[1] = BLACK;


    state = PAUSE;

}

// Runs every frame of the pause state
void pause() {

    fillScreen4(1);

    char* string = "PAUSED.";

    drawString4(20, 60, string, 0);

    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToGame();

        // waitForVBlank();

        // REG_DISPCTL = MODE0 | BG0_ENABLE /*| BG1_ENABLE | BG2_ENABLE*/ | SPRITE_ENABLE;

        // DMANow(3, SPRITESHEETTiles, &CHARBLOCK[4], SPRITESHEETTilesLen / 2);
        // DMANow(3, SPRITESHEETPal, SPRITEPALETTE, SPRITESHEETPalLen / 2);
        // hideSprites();
        // DMANow(3, shadowOAM, OAM, 512);
        // REG_BG0CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(0) | BG_SCREENBLOCK(30);
        // REG_BG1CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(1) | BG_SCREENBLOCK(28);
        // REG_BG2CNT = currentLevel->levelSize | BG_8BPP | BG_CHARBLOCK(2) | BG_SCREENBLOCK(26);

        // DMANow(3, currentLevel->defaultPalette, PALETTE, 256);
        // DMANow(3, currentLevel->foregroundTiles, &CHARBLOCK[0], (currentLevel->foregroundTilesLen) / 2);
        // DMANow(3, currentLevel->foregroundMap, &SCREENBLOCK[30], (currentLevel->foregroundMapLen) / 2);

        // state = GAME;
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

// Sets up the lose state
void goToLose() {

    //NICE GLITCHING HERE!

    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

    //load start screen palette
    //draw the background image

    PALETTE[0] = RED;
    PALETTE[1] = BLACK;

    fillScreen4(1);

    waitForVBlank();
    flipPage();
    
    state = LOSE;

}

// Runs every frame of the lose state
void lose() {

    //NICE GLITCHING HERE!

    char* string = "YOU PERISH.";
    char* string1 = "PRESS START TO BEGIN ANEW.";

    drawString4(20, 80, string, 0);
    drawString4(20, 100, string1, 0);

    waitForVBlank();
    flipPage();

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}

void goToInstructions() {

    fillScreen4(1);

    char* string = "DIRECTIONAL BUTTONS TO MOVE.";
    char* string4 = "A TO GLITCH TIME.";
    char* string3 = "START TO PAUSE.";
    char* string1 = "AVOID ENTITIES. REACH END.";
    char* string2 = "PRESS START TO RETURN TO START.";

    drawString4(20, 80, string, 0);
    drawString4(20, 90, string4, 0);
    drawString4(20, 100, string3, 0);
    drawString4(20, 110, string1, 0);
    drawString4(20, 120, string2, 0);

    waitForVBlank();
    flipPage();
    
    state = INSTRUCTIONS;

}

void instructions() {

    if (BUTTON_PRESSED(BUTTON_START)) {

        goToStart();

    }

}