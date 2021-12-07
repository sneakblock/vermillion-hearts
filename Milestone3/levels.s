	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"levels.c"
	.text
	.global	__aeabi_uidivmod
	.align	2
	.global	animateLevel0
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateLevel0, %function
animateLevel0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L8
	mov	lr, pc
	bx	r3
	mov	r5, #83886080
	mov	r6, #0
	ldr	r8, .L8+4
	mov	r1, r0
	mov	r3, #272
	ldr	r2, .L8+8
	mov	r4, r0
	ldr	r9, .L8+12
	mov	r0, #3
	mov	lr, pc
	bx	r9
	ldr	r1, .L8+16
	ldr	r2, .L8+20
	ldr	r3, [r8]
	mla	r2, r3, r2, r1
	ldr	r1, .L8+24
	cmp	r1, r2, ror #2
	strh	r6, [r5]	@ movhi
	bcs	.L7
	add	r3, r3, #1
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	mov	r1, r4
	mov	r2, #100663296
	mov	r0, #3
	mov	r3, #3840
	mov	lr, pc
	bx	r9
	ldrh	r3, [r5, #16]
	add	r3, r3, r4
	strh	r3, [r5, #16]	@ movhi
	ldr	r3, .L8+28
	str	r6, [r8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+32
	ldr	r10, [r3]
	mov	r0, r4
	mov	r1, r10
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	mov	r4, #50
	ldr	r5, .L8+40
	ldr	r6, .L8+44
	ldr	r7, .L8+48
	add	r5, r5, r1
.L3:
	mov	r2, #0
	mov	r1, #1
	mov	r0, r5
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r7
	subs	r4, r4, #1
	bne	.L3
	mov	r1, r10
	mov	r0, r5
	mov	r2, #1
	mov	lr, pc
	bx	r6
	mov	r3, #3840
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+52
	mov	lr, pc
	bx	r9
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	rand
	.word	level0AniTimer
	.word	100696064
	.word	DMANow
	.word	17179868
	.word	652835029
	.word	8589934
	.word	stopSound
	.word	trackA_length
	.word	__aeabi_uidivmod
	.word	trackA_data
	.word	playSoundA
	.word	waitForVBlank
	.word	level0foregroundTiles
	.size	animateLevel0, .-animateLevel0
	.align	2
	.global	initStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStart, %function
initStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #0
	mov	r1, #1888
	mov	r2, #2048
	mov	r5, #10
	mov	r4, #16
	mov	ip, #4
	mov	r0, #1
	ldr	r3, .L12
	str	lr, [r3]
	ldr	lr, .L12+4
	str	lr, [r3, #40]
	ldr	lr, .L12+8
	str	r1, [r3, #64]
	str	lr, [r3, #44]
	ldr	r1, .L12+12
	ldr	lr, .L12+16
	str	r1, [r3, #80]
	str	lr, [r3, #32]
	ldr	r1, .L12+20
	ldr	lr, .L12+24
	str	r1, [r3, #60]
	str	lr, [r3, #56]
	ldr	r1, .L12+28
	ldr	lr, .L12+32
	str	r1, [r3, #88]
	str	lr, [r3, #48]
	ldr	r1, .L12+36
	ldr	lr, .L12+40
	str	r1, [r3, #76]
	str	lr, [r3, #72]
	ldr	r1, .L12+44
	ldr	lr, .L12+48
	str	r5, [r3, #84]
	str	r4, [r3, #92]
	str	lr, [r3, #96]
	str	ip, [r3, #100]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	str	r0, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	startLevel
	.word	startforegroundTiles
	.word	startforegroundMap
	.word	startforegroundPal
	.word	5728
	.word	startmidgroundMap
	.word	startmidgroundTiles
	.word	startmidgroundPal
	.word	7968
	.word	startbackgroundMap
	.word	startbackgroundTiles
	.word	movingUp
	.word	startbackgroundPal
	.size	initStart, .-initStart
	.align	2
	.global	animateStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateStart, %function
animateStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	ip, .L23+4
	ldr	r3, .L23+8
	ldr	r2, [ip]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	beq	.L15
	ldr	r1, .L23+12
	ldr	r3, .L23+16
	add	r0, r2, #1
	ldr	r3, [r3]
	ldr	r2, [r1]
.L16:
	ldr	lr, .L23+20
	cmp	r2, #10
	ldr	r2, [lr]
	bne	.L21
	cmp	r2, #49
	movle	r4, #0
	addle	r2, r2, #1
	strle	r2, [lr]
	strle	r4, [r1]
.L21:
	mov	r1, #67108864
	mov	r4, #5
	mov	lr, #10
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	str	r0, [ip]
	strh	r3, [r1, #18]	@ movhi
	strh	r4, [r1, #16]	@ movhi
	strh	lr, [r1, #22]	@ movhi
	strh	r2, [r1, #26]	@ movhi
	pop	{r4, lr}
	bx	lr
.L15:
	ldr	r2, .L23+24
	ldr	r1, .L23+16
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r3, [r1]
	addne	r3, r3, #1
	subeq	r3, r3, #1
	cmp	r3, #14
	str	r3, [r1]
	movle	r1, #1
	strle	r1, [r2]
	ble	.L20
	cmp	r3, #24
	movgt	r1, #0
	strgt	r1, [r2]
.L20:
	mov	r0, #1
	ldr	r1, .L23+12
	ldr	r2, [r1]
	add	r2, r2, r0
	str	r2, [r1]
	b	.L16
.L24:
	.align	2
.L23:
	.word	waitForVBlank
	.word	textAniTimer
	.word	1717986919
	.word	sunAniTimer
	.word	vOffBG0
	.word	vOffBG2
	.word	movingUp
	.size	animateStart, .-animateStart
	.align	2
	.global	initInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	initInstructions, %function
initInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #2048
	mov	r2, #0
	mov	r1, #67108864
	mov	r0, #32
	ldr	r3, .L27
	ldr	ip, .L27+4
	str	ip, [r3, #40]
	ldr	ip, .L27+8
	str	lr, [r3, #36]
	str	ip, [r3, #44]
	ldr	lr, .L27+12
	ldr	ip, .L27+16
	str	lr, [r3, #32]
	str	r2, [r3]
	str	ip, [r3, #80]
	str	r0, [r3, #84]
	ldr	lr, [sp], #4
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L28:
	.align	2
.L27:
	.word	instructionsLevel
	.word	instructionsforegroundTiles
	.word	instructionsforegroundMap
	.word	19936
	.word	instructionsforegroundPal
	.size	initInstructions, .-initInstructions
	.align	2
	.global	initPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPause, %function
initPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #10816
	mov	lr, #2048
	mov	r1, #67108864
	mov	r0, #32
	ldr	r3, .L31
	ldr	ip, .L31+4
	str	ip, [r3, #40]
	ldr	ip, .L31+8
	str	ip, [r3, #44]
	ldr	ip, .L31+12
	str	r4, [r3, #32]
	str	lr, [r3, #36]
	str	r2, [r3]
	str	ip, [r3, #80]
	str	r0, [r3, #84]
	pop	{r4, lr}
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L32:
	.align	2
.L31:
	.word	pauseLevel
	.word	pauseTiles
	.word	pauseMap
	.word	pausePal
	.size	initPause, .-initPause
	.align	2
	.global	initLevel1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel1, %function
initLevel1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #256
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #18
	mov	r2, #4096
	mov	r8, #16384
	mov	r7, #512
	mov	r6, #177
	mov	r5, #64
	mov	r4, #6336
	mov	r1, #4
	mov	ip, #2
	ldr	r3, .L35
	str	r0, [r3, #12]
	add	r0, r0, #194
	str	r0, [r3, #16]
	sub	r0, r0, #188
	str	r0, [r3, #24]
	ldr	r0, .L35+4
	str	r0, [r3, #4]
	ldr	r0, .L35+8
	str	lr, [r3, #84]
	str	r0, [r3, #40]
	ldr	lr, .L35+12
	ldr	r0, .L35+16
	str	lr, [r3, #44]
	str	r0, [r3, #48]
	ldr	lr, .L35+20
	ldr	r0, .L35+24
	str	lr, [r3, #56]
	str	r0, [r3, #60]
	ldr	lr, .L35+28
	ldr	r0, .L35+32
	str	lr, [r3, #64]
	str	r0, [r3, #72]
	ldr	lr, .L35+36
	ldr	r0, .L35+40
	str	lr, [r3, #76]
	str	r0, [r3, #80]
	ldr	lr, .L35+44
	ldr	r0, .L35+48
	str	r8, [r3]
	str	r7, [r3, #8]
	str	r6, [r3, #20]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	lr, [r3, #88]
	str	ip, [r3, #92]
	str	r0, [r3, #96]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #68]
	str	r1, [r3, #100]
	str	r1, [r3, #108]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	level1
	.word	level1collisionmapBitmap
	.word	level1foregroundTiles
	.word	level1foregroundMap
	.word	5280
	.word	level1midgroundTiles
	.word	level1midgroundMap
	.word	17216
	.word	level1backgroundTiles
	.word	level1backgroundMap
	.word	level1foregroundPal
	.word	level1midgroundPal
	.word	level1backgroundPal
	.size	initLevel1, .-initLevel1
	.align	2
	.global	initLevel0
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel0, %function
initLevel0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #10
	mov	r1, #32768
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #256
	mov	lr, #460
	mov	r2, #3
	mov	r5, #118
	mov	r0, #512
	ldr	r4, .L39
	str	r3, [r4, #24]
	ldr	r3, .L39+4
	str	r1, [r4]
	ldr	r1, .L39+8
	str	r3, [r4, #28]
	ldr	r3, .L39+12
	str	lr, [r4, #20]
	str	ip, [r4, #8]
	str	r1, [r4, #4]
	str	r2, [r4, #108]
	str	r5, [r4, #16]
	str	r0, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+16
	str	r0, [r4, #112]
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+20
	str	r0, [r4, #116]
	mov	lr, pc
	bx	r3
	mov	r8, #7680
	mov	r3, #4096
	mov	r7, #12
	mov	r6, #9792
	mov	r5, #6
	mov	lr, #544
	mov	ip, #2
	mov	r1, #0
	ldr	r2, .L39+24
	str	r2, [r4, #40]
	ldr	r2, .L39+28
	str	r2, [r4, #44]
	ldr	r2, .L39+32
	str	r2, [r4, #80]
	ldr	r2, .L39+36
	str	r2, [r4, #56]
	ldr	r2, .L39+40
	str	r0, [r4, #120]
	str	r2, [r4, #60]
	ldr	r0, .L39+44
	ldr	r2, .L39+48
	str	r0, [r4, #88]
	str	r2, [r4, #72]
	ldr	r0, .L39+52
	ldr	r2, .L39+56
	str	r0, [r4, #76]
	str	r2, [r4, #96]
	ldr	r0, .L39+60
	ldr	r2, .L39+64
	str	r8, [r4, #32]
	str	r7, [r4, #84]
	str	r6, [r4, #48]
	str	r5, [r4, #92]
	str	lr, [r4, #64]
	str	ip, [r4, #100]
	str	r0, [r4, #104]
	str	r3, [r4, #36]
	str	r3, [r4, #52]
	str	r3, [r4, #68]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L40:
	.align	2
.L39:
	.word	level0
	.word	347
	.word	level0collisionmapBitmap
	.word	initSeer
	.word	initPlantMerchant
	.word	initKnight
	.word	level0foregroundTiles
	.word	level0foregroundMap
	.word	level0foregroundPal
	.word	level0midgroundTiles
	.word	level0midgroundMap
	.word	level0midgroundPal
	.word	level0backgroundTiles
	.word	level0backgroundMap
	.word	level0backgroundPal
	.word	animateLevel0
	.word	level0AniTimer
	.size	initLevel0, .-initLevel0
	.comm	movingUp,4,4
	.comm	sunAniTimer,4,4
	.comm	textAniTimer,4,4
	.comm	vOffBG2,4,4
	.comm	vOffBG1,4,4
	.comm	vOffBG0,4,4
	.comm	level0AniTimer,4,4
	.comm	level0,132,4
	.comm	pauseLevel,132,4
	.comm	instructionsLevel,132,4
	.comm	startLevel,132,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
