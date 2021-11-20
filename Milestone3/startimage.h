
//{{BLOCK(startimage)

//======================================================================
//
//	startimage, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 51 tiles (t|f reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3264 + 2048 = 5824
//
//	Time-stamp: 2021-11-19, 16:28:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARTIMAGE_H
#define GRIT_STARTIMAGE_H

#define startimageTilesLen 3264
extern const unsigned short startimageTiles[1632];

#define startimageMapLen 2048
extern const unsigned short startimageMap[1024];

#define startimagePalLen 512
extern const unsigned short startimagePal[256];

#endif // GRIT_STARTIMAGE_H

//}}BLOCK(startimage)
