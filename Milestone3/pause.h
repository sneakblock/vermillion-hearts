
//{{BLOCK(pause)

//======================================================================
//
//	pause, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 338 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 10816 + 2048 = 12896
//
//	Time-stamp: 2021-12-05, 03:04:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_H
#define GRIT_PAUSE_H

#define pauseTilesLen 10816
extern const unsigned short pauseTiles[5408];

#define pauseMapLen 2048
extern const unsigned short pauseMap[1024];

#define pausePalLen 32
extern const unsigned short pausePal[16];

#endif // GRIT_PAUSE_H

//}}BLOCK(pause)
