
//{{BLOCK(testgameimage)

//======================================================================
//
//	testgameimage, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 101 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6464 + 2048 = 9024
//
//	Time-stamp: 2021-11-19, 16:50:14
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TESTGAMEIMAGE_H
#define GRIT_TESTGAMEIMAGE_H

#define testgameimageTilesLen 6464
extern const unsigned short testgameimageTiles[3232];

#define testgameimageMapLen 2048
extern const unsigned short testgameimageMap[1024];

#define testgameimagePalLen 512
extern const unsigned short testgameimagePal[256];

#endif // GRIT_TESTGAMEIMAGE_H

//}}BLOCK(testgameimage)
