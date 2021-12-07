# 1 "npcs.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "npcs.c"
# 1 "game.h" 1

enum {CLOUD, SEER, ECLECTIC, MAIDEN};

enum {DOWN, UP, LEFT, RIGHT};
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


typedef void (*convo_func)(void);

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

    convo_func convoFunc;


    char* name;



    int intendedDirection;


    int patrols;

    int patrolInterval;

    int patrolIntervalCounter;

    PATROLPOINT patrolPoints[3];

    int patrolPointIndex;



    int abilityType;

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
    int isMoving;



    NPC* currentSprite;
    NPC* sprites[10];
    int activeSpriteIndex;


} PLAYER;





typedef void (*anim_func)(void);

typedef struct {

    int levelSize;
    unsigned char* collisionMap;

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

    const unsigned short* foregroundPal;
    int foregroundPalLen;
    const unsigned short* midgroundPal;
    int midgroundPalLen;
    const unsigned short* backgroundPal;
    int backgroundPalLen;

    anim_func animFunc;

    int numNPCS;
    NPC* npcs[5];

} LEVEL;



extern NPC* currentTarget;
extern LEVEL* currentLevel;

extern LEVEL level1;



void initGame();

void initNPCS();
void initLevels();
void initPlayer();

void loadLevel(LEVEL* level, int resetsPlayerPos);
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

void checkForConvoBools();






void glitchVisuals(int duration);


void swapPalette();
void swapSpritePalette();


void consumeSprite();


void changeSprite();


void rotateCollisionMap();
# 2 "npcs.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern int seed;





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
# 82 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 103 "myLib.h"
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
# 177 "myLib.h"
void hideSprites();
# 203 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 213 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 254 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 290 "myLib.h"
typedef void (*ihp)(void);
# 310 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "npcs.c" 2
# 1 "npcs.h" 1
extern NPC plantMerchant;
extern NPC seer;
extern NPC knight;

void initNPCS();
NPC* initPlantMerchant();
NPC* initSeer();
NPC* initKnight();

void openGate();
# 4 "npcs.c" 2

# 1 "talkingheadtest.h" 1
# 21 "talkingheadtest.h"
extern const unsigned short talkingheadtestBitmap[8816];


extern const unsigned short talkingheadtestPal[256];
# 6 "npcs.c" 2
# 1 "seer.h" 1
# 21 "seer.h"
extern const unsigned short seerBitmap[5336];


extern const unsigned short seerPal[256];
# 7 "npcs.c" 2
# 1 "knight.h" 1
# 21 "knight.h"
extern const unsigned short knightBitmap[5336];


extern const unsigned short knightPal[256];
# 8 "npcs.c" 2
# 1 "level0collisionmap2.h" 1
# 21 "level0collisionmap2.h"
extern const unsigned short level0collisionmap2Bitmap[65536];


extern const unsigned short level0collisionmap2Pal[256];
# 9 "npcs.c" 2



NPC plantMerchant;
NPC seer;
NPC knight;
# 23 "npcs.c"
NPC* initPlantMerchant() {

    plantMerchant.active = 1;
    plantMerchant.hide = 0;
    plantMerchant.rdel = 1;
    plantMerchant.cdel = 1;
    plantMerchant.width = 8;
    plantMerchant.height = 16;
    plantMerchant.aniState = DOWN;
    plantMerchant.curFrame = 0;
    plantMerchant.numFrames = 3;
    plantMerchant.gameSpriteTileIDx = 2;
    plantMerchant.gameSpriteTileIDy = 0;

    plantMerchant.talkingHeadBitmap = talkingheadtestBitmap;
    plantMerchant.talkingHeadPalette = talkingheadtestPal;
    plantMerchant.talkingHeadPalLen = 512;
    plantMerchant.name = "Plant Merchant:";

    DIALOGUE greeting;
    greeting.string = "I like plants. Wow I sure do. I love plants so much that I can't even handle it haha. Plants really are my favorite!";
    greeting.choiceA = "I hate plants.";
    greeting.choiceB = "I love plants, too.";
    greeting.choiceAIndex = 1;
    greeting.choiceBIndex = 2;
    greeting.promptsChoice = 1;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE hatePlants;
    hatePlants.string = "How could you say that? Plants bring us life, light, and joy. :(";
    hatePlants.endsConversation = 1;
    hatePlants.promptsChoice = 0;
    hatePlants.satisfiesBool = 0;

    DIALOGUE lovePlants;
    lovePlants.string = "I'm so happy to hear that! I'm glad that they bring you joy the same way they do for me!";
    lovePlants.endsConversation = 1;
    lovePlants.promptsChoice = 0;
    lovePlants.satisfiesBool = 0;

    plantMerchant.dialogues[0] = greeting;
    plantMerchant.dialogues[1] = hatePlants;
    plantMerchant.dialogues[2] = lovePlants;
    plantMerchant.dialoguesIndex = 0;
    plantMerchant.postConvoIndex = 0;

    plantMerchant.worldCol = 73;
    plantMerchant.worldRow = 168;
    plantMerchant.intendedDirection = UP;

    return &plantMerchant;

}

void openGate() {

    currentLevel->collisionMap = level0collisionmap2Bitmap;

}

NPC* initSeer() {

    seer.active = 1;
    seer.hide = 0;
    seer.rdel = 1;
    seer.cdel = 1;
    seer.width = 8;
    seer.height = 16;
    seer.aniState = DOWN;
    seer.curFrame = 0;
    seer.numFrames = 3;
    seer.gameSpriteTileIDx = 1;
    seer.gameSpriteTileIDy = 0;

    seer.talkingHeadBitmap = seerBitmap;
    seer.talkingHeadPalette = seerPal;
    seer.talkingHeadPalLen = 512;
    seer.name = "Seer:";

    DIALOGUE greeting;
    greeting.string = "When I was a boy, these flickering crags were diving clear rivers and high green blades of sweet smelling grass.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "A young hero would come again and again to us, to let us drink our dreams from the cup his long tales. He would always move on.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE question;
    question.string = "Are you that hero, now?";
    question.choiceA = "I am.";
    question.choiceB = "I am not and never was.";
    question.choiceAIndex = 3;
    question.choiceBIndex = 4;
    question.promptsChoice = 1;
    question.endsConversation = 0;
    question.satisfiesBool = 0;

    DIALOGUE hero;
    hero.string = "I see that now, as I see all the colours of this world. I shall obliterate the gate for you.";
    hero.promptsChoice = 0;
    hero.endsConversation = 1;
    hero.satisfiesBool = 1;

    DIALOGUE end;
    end.string = "I see.";
    end.promptsChoice = 0;
    end.endsConversation = 1;
    end.satisfiesBool = 0;


    seer.dialogues[0] = greeting;
    seer.dialogues[1] = greeting2;
    seer.dialogues[2] = question;
    seer.dialogues[3] = hero;
    seer.dialogues[4] = end;
    seer.dialoguesIndex = 0;
    seer.postConvoIndex = 0;

    seer.worldCol = 242;
    seer.worldRow = 174;

    seer.convoFunc = openGate;

    return &seer;
}



NPC* initKnight() {

    knight.active = 1;
    knight.hide = 0;
    knight.rdel = 1;
    knight.cdel = 1;
    knight.width = 8;
    knight.height = 16;
    knight.aniState = DOWN;
    knight.curFrame = 0;
    knight.numFrames = 3;
    knight.gameSpriteTileIDx = 3;
    knight.gameSpriteTileIDy = 0;

    knight.talkingHeadBitmap = knightBitmap;
    knight.talkingHeadPalette = knightPal;
    knight.talkingHeadPalLen = 512;
    knight.name = "Knight:";

    DIALOGUE greeting;
    greeting.string = "I am sorry. You, like the rest, must stay here and let the decay take you. I, sworn to protect the dutchess, have orders not to let this scourge reach her.";
    greeting.choiceB = "I feel as if I need to see her.";
    greeting.choiceA = "Who am I?";
    greeting.choiceAIndex = 1;
    greeting.choiceBIndex = 2;
    greeting.promptsChoice = 1;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE needToSee;
    needToSee.string = "I have some memory of letting a young man pass... some quest. Or, love. I cannot remember. You are not that young man, wretch.";
    needToSee.promptsChoice = 0;
    needToSee.endsConversation = 1;
    needToSee.satisfiesBool = 0;

    DIALOGUE whoAmI;
    whoAmI.string = "Back away from me, child of the static mist. You, like the rest, are an artifact of the failing silver sun.";
    whoAmI.choiceA = "Silver sun...";
    whoAmI.choiceB = "I am that young hero.";
    whoAmI.choiceAIndex = 3;
    whoAmI.choiceBIndex = 4;
    whoAmI.promptsChoice = 1;
    whoAmI.endsConversation = 0;
    whoAmI.satisfiesBool = 0;

    DIALOGUE silverSun;
    silverSun.string = "In Royal Court they know of it. A silver disk, it sends energy at intervals, it is the clock of the world. It is slowing, now. The dutchess seeks a solution, though you and the rest here are doomed.";
    silverSun.promptsChoice = 0;
    silverSun.endsConversation = 1;
    silverSun.satisfiesBool = 0;

    DIALOGUE youngHero;
    youngHero.string = "You may speak true. Perhaps, when things were right, you were. Though you are not any longer. I cannot let you, or the rest, through. It is our only hope.";
    youngHero.promptsChoice = 0;
    youngHero.endsConversation = 1;
    youngHero.satisfiesBool = 0;


    knight.dialogues[0] = greeting;
    knight.dialogues[2] = needToSee;
    knight.dialogues[1] = whoAmI;
    knight.dialogues[3] = silverSun;
    knight.dialogues[4] = youngHero;

    knight.dialoguesIndex = 0;
    knight.postConvoIndex = 0;

    knight.worldCol = 147;
    knight.worldRow = 83;

    return &knight;
}
