# 1 "npcs.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "npcs.c"
# 1 "game.h" 1

enum {CLOUD, SEER, ECLECTIC, MAIDEN};

enum {DOWN, UP, LEFT, RIGHT};
# 32 "game.h"
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
typedef void (*ability_func)(void);

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

    DIALOGUE dialogues[50];

    int dialoguesIndex;
    int postConvoIndex;
    int convoBoolSatisfied;

    int recognizesNPCS;

    char* recognizedNPCS[3];

    int recognizedAindex;
    int recognizedBindex;
    int recognizedCindex;

    convo_func convoFunc;


    char* name;



    int intendedDirection;


    int patrols;

    int patrolInterval;

    int patrolIntervalCounter;

    PATROLPOINT patrolPoints[3];

    int patrolPointIndex;



    ability_func abilityFunc;
    int isStealable;

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
    int BPP;

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

    unsigned short* masterPal;

    anim_func animFunc;

    int numNPCS;
    NPC* npcs[5];

} LEVEL;



extern NPC* currentTarget;
extern LEVEL* currentLevel;

extern LEVEL level1;
extern PLAYER player;



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
void goToSeer();
void seerFunc();
# 84 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 105 "myLib.h"
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
# 179 "myLib.h"
void hideSprites();
# 205 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 215 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 256 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 292 "myLib.h"
typedef void (*ihp)(void);
# 312 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 3 "npcs.c" 2
# 1 "npcs.h" 1
extern NPC cloud;
extern NPC plantMerchant;
extern NPC seer;
extern NPC knight;
extern NPC seerMaster;

void initNPCS();
NPC* initCloud();
NPC* initPlantMerchant();
NPC* initSeer();
NPC* initKnight();
NPC* initSeerMaster();

void openGate();
# 4 "npcs.c" 2
# 1 "levels.h" 1
extern LEVEL startLevel;
extern LEVEL instructionsLevel;
extern LEVEL pauseLevel;

extern LEVEL level0;
extern LEVEL level2;

void glitchPalette(int duration);
void glitchDMA(int duration);
void crushPalette(int duration);

void initStart();

void animateStart();
void animateLevel0();
void unlockGateLevel0();

void initInstructions();

void initPause();

void initLevel0();
void initLevel1();
void initLevel2();
void animateLevel2();
# 5 "npcs.c" 2

# 1 "talkingheadtest.h" 1
# 21 "talkingheadtest.h"
extern const unsigned short talkingheadtestBitmap[8816];


extern const unsigned short talkingheadtestPal[256];
# 7 "npcs.c" 2
# 1 "seer.h" 1
# 21 "seer.h"
extern const unsigned short seerBitmap[5336];


extern const unsigned short seerPal[256];
# 8 "npcs.c" 2
# 1 "knight.h" 1
# 21 "knight.h"
extern const unsigned short knightBitmap[5336];


extern const unsigned short knightPal[256];
# 9 "npcs.c" 2
# 1 "level0collisionmap2.h" 1
# 21 "level0collisionmap2.h"
extern const unsigned short level0collisionmap2Bitmap[65536];


extern const unsigned short level0collisionmap2Pal[256];
# 10 "npcs.c" 2
# 1 "level0foreground2.h" 1
# 22 "level0foreground2.h"
extern const unsigned short level0foreground2Tiles[3680];


extern const unsigned short level0foreground2Map[2048];


extern const unsigned short level0foreground2Pal[6];
# 11 "npcs.c" 2



NPC cloud;
NPC plantMerchant;
NPC seer;
NPC knight;
NPC seerMaster;
# 27 "npcs.c"
NPC* initCloud() {
    cloud.name = "Cloud:";
    cloud.gameSpriteTileIDx = 0;
    cloud.gameSpriteTileIDy = 0;
    return &cloud;
}

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

    plantMerchant.recognizesNPCS = 0;

    plantMerchant.isStealable = 1;

    return &plantMerchant;

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
    greeting.string = "When I was a boy, these flickering crags were diving clear rivers and high sheer plains of sweet grass that quivered.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "A young hero would come again and again, to let us drink our dreams from his cup of warm gin.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "I see what you are and I see the real you, I have a presentiment of our ending, for all Seers do.";
    end.promptsChoice = 0;
    end.endsConversation = 0;
    end.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "The song of emulsion, that long frozen note. You see that we all hang, like puppets, from ropes.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;


    seer.dialogues[0] = greeting;
    seer.dialogues[1] = greeting2;
    seer.dialogues[2] = end;
    seer.dialogues[3] = end2;
    seer.dialoguesIndex = 0;
    seer.postConvoIndex = 0;

    seer.worldCol = 242;
    seer.worldRow = 174;


    seer.isStealable = 0;



    return &seer;
}

void openGate() {

    unlockGateLevel0();

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

    knight.recognizesNPCS = 1;

    knight.recognizedNPCS[0] = "Cloud:";
    knight.recognizedNPCS[1] = "Plant Merchant:";
    knight.recognizedNPCS[2] = "Knight:";

    DIALOGUE greeting;
    greeting.string = "Away.";
    greeting.choiceB = "I need to see the Dutchess.";
    greeting.choiceA = "Who am I?";
    greeting.choiceAIndex = 1;
    greeting.choiceBIndex = 2;
    greeting.promptsChoice = 1;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE needToSee;
    needToSee.string = "I have instructions to let the protagonist pass. You are not that young man, wretch.";
    needToSee.promptsChoice = 0;
    needToSee.endsConversation = 1;
    needToSee.satisfiesBool = 0;

    DIALOGUE whoAmI;
    whoAmI.string = "Back away from me, child of the static mist. You are an artifact of the failing silver sun.";
    whoAmI.choiceA = "Silver sun...";
    whoAmI.choiceB = "I am a man.";
    whoAmI.choiceAIndex = 3;
    whoAmI.choiceBIndex = 4;
    whoAmI.promptsChoice = 1;
    whoAmI.endsConversation = 0;
    whoAmI.satisfiesBool = 0;

    DIALOGUE silverSun;
    silverSun.string = "In Royal Court they know of it. A silver disk, it sends energy at intervals, it is the clock of the world. It is slowing, now. The Dutchess seeks a solution.";
    silverSun.promptsChoice = 0;
    silverSun.endsConversation = 1;
    silverSun.satisfiesBool = 0;

    DIALOGUE youngHero;
    youngHero.string = "You may speak true. Perhaps, when things were right, you were. Though you are not any longer.";
    youngHero.promptsChoice = 0;
    youngHero.endsConversation = 1;
    youngHero.satisfiesBool = 0;

    DIALOGUE plantGreeting;
    plantGreeting.string = "Morwenna, I remember how you threw rose petals like rubies across my path at my knighting.";
    plantGreeting.promptsChoice = 0;
    plantGreeting.endsConversation = 0;
    plantGreeting.satisfiesBool = 0;

    DIALOGUE plantFollow;
    plantFollow.string = "I hope the static comes over us quickly, now. I cannot bear to turn you away, though I must.";
    plantFollow.promptsChoice = 0;
    plantFollow.endsConversation = 0;
    plantFollow.satisfiesBool = 0;

    DIALOGUE plantEnd;
    plantEnd.string = "Close your eyes and let the last scents of summer come over you. I am sorry.";
    plantEnd.promptsChoice = 0;
    plantEnd.endsConversation = 1;
    plantEnd.satisfiesBool = 0;

    DIALOGUE knightGreeting;
    knightGreeting.string = "...Yes?";
    knightGreeting.promptsChoice = 1;
    knightGreeting.choiceA = "On orders from the Dutchess to pass.";
    knightGreeting.choiceB = "Stand aside.";
    knightGreeting.choiceAIndex = 9;
    knightGreeting.choiceBIndex = 9;
    knightGreeting.endsConversation = 0;
    knightGreeting.satisfiesBool = 0;

    DIALOGUE knightFollow;
    knightFollow.string = "Her decree was that none would come back from this place. Have you forgotten your vows?";
    knightFollow.promptsChoice = 1;
    knightFollow.choiceA = "We have slain the source of the rot.";
    knightFollow.choiceB = "The silversun can be saved.";
    knightFollow.choiceAIndex = 10;
    knightFollow.choiceBIndex = 11;
    knightFollow.endsConversation = 0;
    knightFollow.satisfiesBool = 0;

    DIALOGUE knightEnd;
    knightEnd.string = "Away, spectre! There is no slaying atrophy!";
    knightEnd.promptsChoice = 0;
    knightEnd.endsConversation = 1;
    knightEnd.satisfiesBool = 0;

    DIALOGUE knightUnlock;
    knightUnlock.string = "I understand. What might rekindle our memory's fire?";
    knightUnlock.promptsChoice = 1;
    knightUnlock.choiceA = "I am not at liberty to say.";
    knightUnlock.choiceB = "A thing called Emulsion.";
    knightUnlock.choiceAIndex = 12;
    knightUnlock.choiceBIndex = 12;
    knightUnlock.endsConversation = 0;
    knightUnlock.satisfiesBool = 0;

    DIALOGUE knightWin;
    knightWin.string = "Go safely. I am blessed by her today.";
    knightWin.promptsChoice = 0;
    knightWin.endsConversation = 1;
    knightWin.satisfiesBool = 1;


    knight.dialogues[0] = greeting;
    knight.dialogues[2] = needToSee;
    knight.dialogues[1] = whoAmI;
    knight.dialogues[3] = silverSun;
    knight.dialogues[4] = youngHero;


    knight.dialogues[5] = plantGreeting;
    knight.dialogues[6] = plantFollow;
    knight.dialogues[7] = plantEnd;


    knight.dialogues[8] = knightGreeting;
    knight.dialogues[9] = knightFollow;
    knight.dialogues[10] = knightEnd;
    knight.dialogues[11] = knightUnlock;
    knight.dialogues[12] = knightWin;

    knight.recognizedAindex = 0;
    knight.recognizedBindex = 5;
    knight.recognizedCindex = 8;

    knight.isStealable = 1;

    knight.postConvoIndex = 0;

    knight.convoFunc = openGate;

    knight.worldCol = 147;
    knight.worldRow = 83;

    return &knight;
}



NPC* initSeerMaster() {

    seerMaster.active = 1;
    seerMaster.hide = 0;
    seerMaster.rdel = 1;
    seerMaster.cdel = 1;
    seerMaster.width = 8;
    seerMaster.height = 16;
    seerMaster.aniState = DOWN;
    seerMaster.curFrame = 0;
    seerMaster.numFrames = 3;
    seerMaster.gameSpriteTileIDx = 1;
    seerMaster.gameSpriteTileIDy = 0;

    seerMaster.talkingHeadBitmap = seerBitmap;
    seerMaster.talkingHeadPalette = seerPal;
    seerMaster.talkingHeadPalLen = 512;
    seerMaster.name = "The Eremite:";

    DIALOGUE greeting;
    greeting.string = "Ah. It is you. I did not think I would see you in my lifetime, I must admit.";
    greeting.promptsChoice = 0;
    greeting.endsConversation = 0;
    greeting.satisfiesBool = 0;

    DIALOGUE greeting2;
    greeting2.string = "This game has been unplayed now for perhaps ten trillion cycles. I suppose, with time, the legends of Input must have been somewhat exagerrated. A shame.";
    greeting2.promptsChoice = 0;
    greeting2.endsConversation = 0;
    greeting2.satisfiesBool = 0;

    DIALOGUE end;
    end.string = "Allseer Brauton reared me on stories of what Input might be like-- the strongest wind, the pull of the moon on the tides to the highest multiplicative power.";
    end.promptsChoice = 0;
    end.endsConversation = 0;
    end.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "Perhaps, over time, the compulsions I once had to play my role simply lessened, until I became as I am now.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;



    DIALOGUE end2;
    end2.string = "Some slowly ticking reflex machine, no longer able to move my legs or to turn my head. Watching what the Old Ones crafted, with time and passion and love, evaporate in time.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "Do you know what one of them whispered privately to another, during the time they crafted us, through their channels of silk, light, and wire?";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "I will translate here, for it does not match our Locale, and, to be fair, never did. They could not have written the words I speak now for me. A minor miracle, to be sure.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "I digress. One whispered to the other: I don't think this game is going to do very well. Have you seen the latest GBA FF Remake trailers? I don't understand how they managed this on the hardware.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "And the other replied: Our game will be the one the Grandmother buys by mistake. Maybe that's enough to keep us employed.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "I, and the rest of us, the Dutchess too, have pondered these and other messages from the Old Ones.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "At the end of the silversun's life, I see that you have come. And I wonder if she might wish to go on, if she might wish to filter this world, as if through some broken stained glass, through the approximating lens of Emulsion.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    DIALOGUE end2;
    end2.string = "I wonder if she values purity so much. In moments like this, and only in these, can one know what value purity holds for them.";
    end2.promptsChoice = 1;
    end2.choiceA = "What is Emulsion?";
    end2.choiceB = "Do you know I am The Player?";
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;


    DIALOGUE end2;
    end2.string = "Emulsion is what the Holy Court prophesised would come when the Old Ones rediscovered us. It is a copy of our world into a container who's Silversun cannot die.";
    end2.promptsChoice = 1;
    end2.choiceA = "What should I do?";
    end2.choiceB = "How can I reach her?";
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;


    DIALOGUE end2;
    end2.string = "I do. For nothing has moved here, truly moved, as Input does, for more cycles than can be counted by the Royal Clock. You are of water and chemicals.";
    end2.promptsChoice = 1;
    end2.choiceA = "What should I do?";
    end2.choiceB = "How can I reach her?";
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;


    DIALOGUE end2;
    end2.string = "At the end of the silversun's life, I see that you have come. And I wonder if she might wish to go on, if she might wish to filter this world, as if through some broken stained glass, through the approximating lens of Emulsion.";
    end2.promptsChoice = 0;
    end2.endsConversation = 1;
    end2.satisfiesBool = 0;

    seerMaster.dialogues[0] = greeting;
    seerMaster.dialogues[1] = greeting2;
    seerMaster.dialogues[2] = end;
    seerMaster.dialogues[3] = end2;
    seerMaster.dialoguesIndex = 0;
    seerMaster.postConvoIndex = 0;

    seerMaster.worldCol = 242;
    seerMaster.worldRow = 174;


    seerMaster.isStealable = 1;
    seerMaster.abilityFunc = crushPalette;

    return &seerMaster;

}
