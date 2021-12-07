// ++++++++++++++++++++++++++ ENUMS +++++++++++++++++++++++++++++++++++
enum {CLOUD, SEER, ECLECTIC, MAIDEN};

enum {UP, DOWN, LEFT, RIGHT};



// &*&*&*&&*&*&*&*&&*&&*&*&*&*&*&*&*&* GLITCHING *&&&^^^^&^&^&&^**&*&*&*&*&*&*&*&*&*&*%%&
#define NUM_PALETTES 3



// =================== CHARACTER INFORMATION ===================

// The size, in tiles, of the talking heads in game that appear for dialogues.
#define TALKINGHEAD_TILE_SIZE 4

//How many dialogues can each character have? They can have less, but this value is the max.
#define NUM_DIALOGUES 10

//How many patrol points does each NPC have?
#define NUM_PATROL_POINTS 3

#define NUM_STEALABLE_SPRITES 10

// A struct to hold dialogues. Each dialogue contains a string of what the dialogue actually says, 
// a bool that keeps track of it can be responded to, and an index that keeps track of where each choice 
// will take the player.

typedef struct {
    // 0 if the dialogue does not prompt a choice, 1 if it does.
    int promptsChoice;
    // the indices of where each choice will take the player in the dialogue tree
    int choiceAIndex;
    int choiceBIndex;
    // 1 if this dialogue ends the conversation, 0 if it does not.
    int endsConversation;
    int satisfiesBool;
    // The actual sentence.
    char* string;

    // The responses, as strings.
    char* choiceA;
    char* choiceB;
} DIALOGUE;

typedef struct {
    int worldCol;
    int worldRow;
} PATROLPOINT;

// Generic struct for an NPC
typedef struct
{
    // --------------- Standard attributes -----------------

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

    // ---------- Game Sprite Information -------------------

    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    // e.g shadowOAM[x].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(gameSpriteTileIDx + char.aniState * gameSpriteTileSize, gameSpriteTileIDy + char.curFrame * gameSpriteTileSize);
    // aka, the local origin of that character's sub spritesheet
    int gameSpriteTileIDx;
    int gameSpriteTileIDy;

    // ----------- Conversation System --------------

    // 0 if false, 1 if true
    int canTalk;
    //Talking head image information
    const unsigned short* talkingHeadBitmap;
    const unsigned short* talkingHeadPalette;
    int talkingHeadPalLen;
    // The array of all the character's dialogues.
    DIALOGUE dialogues[NUM_DIALOGUES];
    //The current index of the dialogues array.
    int dialoguesIndex;
    int postConvoIndex;
    int convoBoolSatisfied;
    //npc's name
    char* name;

    // -------------- Movement and Patrolling -----------------

    int intendedDirection;

    // 0 if the NPC does not patrol, 1 if it does
    int patrols;
    // the interval, in VBLANKS, that the NPC waits between patrols.
    int patrolInterval;
    // the counter that keeps track of the patrol interval.
    int patrolIntervalCounter;
    // the array of patrolpoints the NPC holds.
    PATROLPOINT patrolPoints[NUM_PATROL_POINTS];
    // the int that keeps track of what current patrolpoint the NPC is targeting.
    int patrolPointIndex;

    // ================= ABILITIES ==================

    int abilityType;

} NPC;

typedef struct
{
    int currentEidolon;

    // --------------- Standard attributes -----------------
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int hide;

    // ---------- Game Sprite Information -------------------

    int aniCounter;
    int framesToWait;
    int aniState;
    int numStates;
    int prevAniState;
    int curFrame;
    int numFrames;
    // e.g shadowOAM[x].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(gameSpriteTileIDx + char.aniState * gameSpriteTileSize, gameSpriteTileIDy + char.curFrame * gameSpriteTileSize);
    // aka, the local origin of that character's sub spritesheet
    int gameSpriteTileIDx;
    int gameSpriteTileIDy;

    // ============ SPRITESTEALING =============

    NPC* currentSprite;
    NPC* sprites[NUM_STEALABLE_SPRITES];
    int activeSpriteIndex;


} PLAYER;

// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ LEVEL MANAGEMENT ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#define MAX_NPCS_PER_LEVEL 5

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
    NPC npcs[MAX_NPCS_PER_LEVEL];

} LEVEL;

// @@@@@@@@@@@@@@@@@@@@@@@@@ EXTERN VARIABLES @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

extern NPC* currentTarget;
extern LEVEL* currentLevel;

extern LEVEL level1;

// +++++++++++++++++++++ METHOD HEADERS OR STUBS OR WHATEVER :) ++++++++++++++++++++++++++

void initGame();

void initNPCS();
void initLevels();
void initPlayer();

void loadLevel(LEVEL* level, int resetsPlayerPos);
void loadNPC(NPC* npc);

void updateGame();
void updatePlayer();
void updateNPCS();
//I might use this for scrolling backgrounds or something, I'm not sure yet.
void updateBackgrounds();

void animatePlayer();
void animateNPCS();

void drawGame();
void drawPlayer();
void drawNPCS();

//Some function that glitches the screen, possibly through charblock and charblock overlapping, or through 
//some scrambling of the tilemap indices.
//Could also swap 0 index of sprite palette to allow for revealing that pink color.
//Should have some element of randomness.
//If duration is 0, the duration is INFINITE.
void glitchVisuals(int duration);

//Swaps the palette to the next palette, and so on.
void swapPalette();
void swapSpritePalette();

//Consumes the target sprite.
void consumeSprite();

//Swaps sprites through the array of currently consumed sprites.
void changeSprite();

//Rotates collision map
void rotateCollisionMap();