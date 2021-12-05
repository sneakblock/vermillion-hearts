# 1 "dialogue.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "dialogue.c"
# 1 "game.h" 1

enum {CLOUD, SEER, ECLECTIC, MAIDEN};

enum {UP, DOWN, LEFT, RIGHT};
# 30 "game.h"
typedef struct {

    int promptsChoice;

    int choiceAIndex;
    int choiceBIndex;

    int endsConversation;
    int satisfiesBool;

    char* string;


    char* choiceA;
    char* choiceB;
} DIALOGUE;

typedef struct {
    int worldCol;
    int worldRow;
} PATROLPOINT;


typedef struct
{


    int active;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int hide;



    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;


    int gameSpriteTileIDx;
    int gameSpriteTileIDy;




    int canTalk;

    const unsigned short* talkingHeadBitmap;
    const unsigned short* talkingHeadPalette;
    int talkingHeadPalLen;

    DIALOGUE dialogues[10];

    int dialoguesIndex;
    int postConvoIndex;
    int convoBoolSatisfied;

    char* name;



    int intendedDirection;


    int patrols;

    int patrolInterval;

    int patrolIntervalCounter;

    PATROLPOINT patrolPoints[3];

    int patrolPointIndex;
} NPC;

typedef struct
{
    int currentEidolon;


    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int hide;



    int aniCounter;
    int framesToWait;
    int aniState;
    int numStates;
    int prevAniState;
    int curFrame;
    int numFrames;


    int gameSpriteTileIDx;
    int gameSpriteTileIDy;

} PLAYER;





typedef struct {

    int levelSize;

    int worldPixelWidth;
    int worldPixelHeight;

    int playerWorldSpawnCol;
    int playerWorldSpawnRow;
    int initHOff;
    int initVOff;

    int foregroundTilesLen;
    int foregroundMapLen;
    const unsigned short* foregroundTiles;
    const unsigned short* foregroundMap;

    int midgroundTilesLen;
    int midgroundMapLen;
    const unsigned short* midgroundTiles;
    const unsigned short* midgroundMap;

    int backgroundTilesLen;
    int backgroundMapLen;
    const unsigned short* backgroundTiles;
    const unsigned short* backgroundMap;

    const unsigned short* defaultPalette;

    int numNPCS;
    NPC npcs[5];

} LEVEL;



extern NPC* currentTarget;
extern LEVEL* currentLevel;

extern LEVEL level1;



void initGame();

void initNPCS();
void initLevels();
void initPlayer();

void loadLevel(LEVEL* level);
void loadNPC(NPC* npc);

void updateGame();
void updatePlayer();
void updateNPCS();

void updateBackgrounds();

void animatePlayer();
void animateNPCS();

void drawGame();
void drawPlayer();
void drawNPCS();






void glitchVisuals(int duration);


void swapPalette();
void swapSpritePalette();


void consumeSprite();


void changeSprite();


void rotateCollisionMap();
# 2 "dialogue.c" 2
# 1 "text.h" 1

void drawChar3(int col, int row, char ch, unsigned short color);
void drawString3(int col, int row, char *str, unsigned short color);


void drawChar4(int col, int row, char ch, unsigned char colorIndex);
void drawString4(int col, int row, char *str, unsigned char colorIndex);
# 3 "dialogue.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 159 "myLib.h"
void hideSprites();
# 185 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 195 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 236 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 4 "dialogue.c" 2
# 1 "dialogue.h" 1
# 25 "dialogue.h"
enum{CHOICE_A, CHOICE_B};

extern int selectedChoice;

void drawDialogueUI();
void typeDialogue(int textboxCol, int textboxRow, char* string, unsigned char colorIndex);
void drawChoices();
void drawSelector();
void selectChoice();
# 5 "dialogue.c" 2
# 1 "selector.h" 1
# 20 "selector.h"
extern const unsigned short selectorBitmap[16];
# 6 "dialogue.c" 2

int selectedChoice;

void drawDialogueUI() {

    videoBuffer = ((unsigned short *)0x600A000);
    fillScreen4(255);




    if (currentTarget->talkingHeadBitmap) {
        drawImage4(4, 4, 116, 92, currentTarget->talkingHeadBitmap);
    }
    if (currentTarget->name) {
        drawString4(124, 4, currentTarget->name, 254);
    }

    videoBuffer = ((unsigned short *)0x6000000);
    fillScreen4(255);




    if (currentTarget->talkingHeadBitmap) {
        drawImage4(4, 4, 116, 92, currentTarget->talkingHeadBitmap);
    }
    if (currentTarget->name) {
        drawString4(124, 4, currentTarget->name, 254);
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

        if ((col + ((lengthChecker + 1)) * 6) < 124 + 100) {
            col += 6;
        } else {
            col = 124;
            row += 10;
        }

        videoBuffer = ((unsigned short *)0x600A000);
        drawChar4(col, row, *string, colorIndex);

        videoBuffer = ((unsigned short *)0x6000000);
        drawChar4(col, row, *string, colorIndex);


        string++;

        waitForVBlank();
        flipPage();

    }

}

void drawChoices() {

    drawString4(12, 112, currentTarget->dialogues[currentTarget->dialoguesIndex].choiceA, 254);
    drawString4(12, 136, currentTarget->dialogues[currentTarget->dialoguesIndex].choiceB, 254);

}

void drawSelector() {

    switch (selectedChoice) {
        case CHOICE_A:
        drawImage4(4, 112, 4, 8, selectorBitmap);
        drawRect4(4, 136, 4, 8, 255);
        break;

        case CHOICE_B:
        drawImage4(4, 136, 4, 8, selectorBitmap);
        drawRect4(4, 112, 4, 8, 255);
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

    typeDialogue(124, 16, currentTarget->dialogues[currentTarget->dialoguesIndex].string, 254);

}
