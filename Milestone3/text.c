#include "myLib.h"
#include <stdlib.h>
#include <stdio.h>
#include "text.h"

void drawString(int x, int y, char* string) {
    while (*string != '\0') {
        drawChar(x, y, *string);

        x += 8;

        string++;
    }
}

//currently does not support punctuation of any kind
void drawChar(int x, int y, char ch) {
    shadowOAM[0].attr0 = y | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[0].attr1 = x | ATTR1_TINY;
    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 0);
}

void hideText() {
    for (int i = ('a' - 65); i < 'z' + 1; i++) {
        shadowOAM[i].attr0 |= ATTR0_HIDE;
    }
}