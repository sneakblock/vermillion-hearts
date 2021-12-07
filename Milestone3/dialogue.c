#include "game.h"
#include "text.h"
#include "myLib.h"
#include "dialogue.h"
#include "selector.h"
#include "sound.h"
#include "talksounds.h"
#include <stdio.h>
#include <stdlib.h>

int selectedChoice;

void drawDialogueUI() {
    //Fill both screens with white.
    videoBuffer = ((unsigned short *)0x600A000);
    fillScreen4(0);

    // THESE are intended dimensions.
    // Use some kind of rand to set these dimensions slightly wrongly in order to 
    // Create artifacts on sides and edges.
    if (currentTarget->talkingHeadBitmap) {
        drawImage4(4, 4, 116, 92, currentTarget->talkingHeadBitmap);
    }
    if (currentTarget->name) {
        drawString4(124, 4, currentTarget->name, 1);
    }

    videoBuffer = ((unsigned short *)0x6000000);
    fillScreen4(0);

    // THESE are intended dimensions.
    // Use some kind of rand to set these dimensions slightly wrongly in order to 
    // Create artifacts on sides and edges.
    if (currentTarget->talkingHeadBitmap) {
        drawImage4(4, 4, 116, 92, currentTarget->talkingHeadBitmap);
    }
    if (currentTarget->name) {
        drawString4(124, 4, currentTarget->name, 1);
    }
}

void typeDialogue(int textboxCol, int textboxRow, char* string, unsigned char colorIndex) {

    int col = textboxCol;
    int row = textboxRow;


    while (*string != '\0') {

        int lengthChecker = 0;

        while ((*(string + lengthChecker) != ' ') && (*(string + lengthChecker) != '\0')) {
            lengthChecker++;
        }

        if ((col + ((lengthChecker + 1)) * 6) < TEXTBOX_COL + TEXTBOX_WIDTH) {
            col += 6;
        } else {
            col = TEXTBOX_COL;
            row += 10;
        }

        if (rand() % 100 == 1) {
            videoBuffer = ((unsigned short *)0x600A000);
            drawChar4(col, row, *string + rand(), colorIndex);
        
            videoBuffer = ((unsigned short *)0x6000000);
            drawChar4(col, row, *string + rand(), colorIndex);
        } else {
            videoBuffer = ((unsigned short *)0x600A000);
            drawChar4(col, row, *string, colorIndex);
        
            videoBuffer = ((unsigned short *)0x6000000);
            drawChar4(col, row, *string, colorIndex);
        }

        

        if (!soundB.isPlaying) {
            playSoundB(&talksounds_data[rand() % talksounds_length], 250, 0, rand() % SOUND_FREQ);
        }

        // prev = *string;
        string++;

        waitForVBlank();
        flipPage();

    }

}

void drawChoices() {

    drawString4(CHOICE_A_COL, CHOICE_A_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].choiceA, 1);
    drawString4(CHOICE_B_COL, CHOICE_B_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].choiceB, 1);

}

void drawSelector() {

    switch (selectedChoice) {
        case CHOICE_A:
        // drawImage4(SELECTOR_A_COL, SELECTOR_A_ROW, 4, 8, selectorBitmap);
        // drawRect4(SELECTOR_B_COL, SELECTOR_B_ROW, 4, 8, 0);
        drawRect4(SELECTOR_A_COL, SELECTOR_A_ROW, 4, 8, 1);
        drawRect4(SELECTOR_B_COL, SELECTOR_B_ROW, 4, 8, 0);
        break;

        case CHOICE_B:
        // drawImage4(SELECTOR_B_COL, SELECTOR_B_ROW, 4, 8, selectorBitmap);
        // drawRect4(SELECTOR_A_COL, SELECTOR_A_ROW, 4, 8, 0);
        drawRect4(SELECTOR_B_COL, SELECTOR_B_ROW, 4, 8, 1);
        drawRect4(SELECTOR_A_COL, SELECTOR_A_ROW, 4, 8, 0);
        break;
    }

}

void selectChoice() {

    drawDialogueUI();
    
    switch (selectedChoice) {
        case CHOICE_A:
        currentTarget->dialoguesIndex = currentTarget->dialogues[currentTarget->dialoguesIndex].choiceAIndex;
        break;

        case CHOICE_B:
        currentTarget->dialoguesIndex = currentTarget->dialogues[currentTarget->dialoguesIndex].choiceBIndex;
        break;
    }

    if (currentTarget->dialogues[currentTarget->dialoguesIndex].satisfiesBool) {
        currentTarget->convoBoolSatisfied = 1;
    }

    typeDialogue(TEXTBOX_COL, TEXTBOX_ROW, currentTarget->dialogues[currentTarget->dialoguesIndex].string, 1);

}



// VERY GOOD GLITCH.
// void typeDialogue(char* string, unsigned char colorIndex) {

//     int col = TEXTBOX_COL;
//     int row = TEXTBOX_ROW;

//     while (*string != '/0') {
        
//         if (col + 6 <= TEXTBOX_COL + TEXTBOX_WIDTH) {
//             drawChar4(col, row, *string, colorIndex);
//             col += 6;
//         } else {
//             col = TEXTBOX_COL;
//             row += 8;
//         }

//         string++;

//         waitForVBlank();
//         flipPage();

//     }

// }