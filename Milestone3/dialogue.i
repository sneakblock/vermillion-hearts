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

    char* string;
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
