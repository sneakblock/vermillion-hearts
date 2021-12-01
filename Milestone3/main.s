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
	.file	"main.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L4
	ldrh	r3, [r3]
	ands	r3, r3, #8
	moveq	r1, #67108864
	ldreq	r0, .L4+4
	ldreq	r2, .L4+8
	strheq	r0, [r1]	@ movhi
	streq	r3, [r2]
	bx	lr
.L5:
	.align	2
.L4:
	.word	buttons
	.word	1044
	.word	state
	.size	win.part.0, .-win.part.0
	.set	instructions.part.0,win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r1, #67108864
	ldr	r2, .L8
	str	lr, [sp, #-4]!
	ldr	r0, .L8+4
	str	r3, [r2]
	ldr	r2, .L8+8
	ldrh	lr, [r0, #48]
	ldr	ip, .L8+12
	strh	r3, [r2]	@ movhi
	ldr	r0, .L8+16
	ldr	r2, .L8+20
	strh	lr, [ip]	@ movhi
	strh	r0, [r1]	@ movhi
	ldr	lr, [sp], #4
	str	r3, [r2]
	bx	lr
.L9:
	.align	2
.L8:
	.word	seed
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	1044
	.word	state
	.size	initialize, .-initialize
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r2, #0
	ldr	r0, .L11
	ldr	r3, .L11+4
	strh	r0, [r1]	@ movhi
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	1044
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #4352
	ldr	r4, .L15+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L15+8
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L15+16
	ldr	r1, .L15+20
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+24
	mov	lr, pc
	bx	r3
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L15+28
	mov	r3, #512
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+36
	ldr	r0, .L15+40
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L15+44
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	hideSprites
	.word	shadowOAM
	.word	initGame
	.word	loadLevel
	.word	level1
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L19
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	updateGame
	.word	drawGame
	.size	game, .-game
	.align	2
	.global	goToDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToDialogue, %function
goToDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, #0
	mov	r6, #67108864
	ldr	r5, .L27
	ldr	r2, [r5]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #76]
	mov	r0, #3
	mov	r2, #83886080
	sub	sp, sp, #12
	asr	r3, r3, #1
	strh	r4, [r6]	@ movhi
	ldr	r7, .L27+4
	mov	lr, pc
	bx	r7
	mov	r2, #83886080
	ldr	r3, .L27+8
	strh	r4, [r2]	@ movhi
	mov	r0, r4
	strh	r3, [r6]	@ movhi
	ldr	r3, .L27+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r2, [r3, #72]
	cmp	r2, r4
	beq	.L22
	mov	r3, #50
	mov	r1, #4
	str	r2, [sp]
	mov	r0, r1
	mov	r2, r3
	ldr	r4, .L27+16
	mov	lr, pc
	bx	r4
.L22:
	ldr	r3, .L27+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+24
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L27+28
	str	r2, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	currentTarget
	.word	DMANow
	.word	1044
	.word	fillScreen4
	.word	drawImage4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToDialogue, .-goToDialogue
	.align	2
	.global	dialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	dialogue, %function
dialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	dialogue, .-dialogue
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #83886080
	mvn	r2, #32768
	mov	ip, #67108864
	mov	r0, #0
	mov	r1, #3
	str	lr, [sp, #-4]!
	strh	r2, [r3]	@ movhi
	ldr	lr, .L32
	ldr	r2, .L32+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L33:
	.align	2
.L32:
	.word	1044
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PAUSED.\000"
	.text
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #1
	ldr	r3, .L41
	mov	lr, pc
	bx	r3
	ldr	r5, .L41+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L41+8
	ldr	r4, .L41+12
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L41+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L34
	ldr	r3, .L41+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
.L34:
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #4352
	ldr	r4, .L41+28
	strh	r2, [r5]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L41+32
	ldr	r1, .L41+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L41+40
	ldr	r1, .L41+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r6, .L41+48
	ldr	r3, .L41+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L41+56
	mov	lr, pc
	bx	r4
	ldr	r1, [r6]
	ldrsh	r2, [r1]
	orr	r3, r2, #7296
	orr	r0, r2, #7808
	orr	r2, r2, #6784
	orr	r3, r3, #4
	orr	r2, r2, #8
	lsl	r0, r0, #16
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	ldr	r1, [r1, #76]
	strh	r0, [r5, #8]	@ movhi
	strh	r3, [r5, #10]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #12]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	ldr	r2, [r6]
	ldr	r3, [r2, #28]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #36]
	mov	r0, #3
	mov	r2, #100663296
	asr	r3, r3, #1
	mov	lr, pc
	bx	r4
	ldr	r2, [r6]
	ldr	r3, [r2, #32]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #40]
	asr	r3, r3, #1
	ldr	r2, .L41+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L41+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L42:
	.align	2
.L41:
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.word	DMANow
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	currentLevel
	.word	hideSprites
	.word	shadowOAM
	.word	100724736
	.word	state
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #83886080
	mvn	r2, #32768
	mov	ip, #67108864
	mov	r0, #31744
	mov	r1, #4
	str	lr, [sp, #-4]!
	strh	r2, [r3]	@ movhi
	ldr	lr, .L45
	ldr	r2, .L45+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L46:
	.align	2
.L45:
	.word	1044
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC1:
	.ascii	"YOU REACH AETHER.\000"
	.align	2
.LC2:
	.ascii	"PRESS START TO REPLAY.\000"
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #1
	ldr	r3, .L50
	mov	lr, pc
	bx	r3
	ldr	r4, .L50+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L50+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L50+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L50+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L50+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	win.part.0
.L47:
	pop	{r4, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	fillScreen4
	.word	drawString4
	.word	.LC1
	.word	.LC2
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r1, #67108864
	mov	ip, #31
	mov	r3, #83886080
	ldr	r0, .L54
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L54+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L54+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L54+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
	.word	1044
	.word	fillScreen4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"YOU PERISH.\000"
	.align	2
.LC4:
	.ascii	"PRESS START TO BEGIN ANEW.\000"
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L59
	ldr	r4, .L59+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L59+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L56:
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	.LC3
	.word	drawString4
	.word	.LC4
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"DIRECTIONAL BUTTONS TO MOVE.\000"
	.align	2
.LC6:
	.ascii	"A TO GLITCH TIME.\000"
	.align	2
.LC7:
	.ascii	"START TO PAUSE.\000"
	.align	2
.LC8:
	.ascii	"AVOID ENTITIES. REACH END.\000"
	.align	2
.LC9:
	.ascii	"PRESS START TO RETURN TO START.\000"
	.text
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #1
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	ldr	r4, .L63+4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L63+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #90
	mov	r0, #20
	ldr	r2, .L63+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L63+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #110
	mov	r0, #20
	ldr	r2, .L63+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L63+24
	mov	r1, #120
	mov	r0, #20
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L63+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L63+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L63+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	fillScreen4
	.word	drawString4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToInstructions, .-goToInstructions
	.section	.rodata.str1.4
	.align	2
.LC10:
	.ascii	"PRESS START TO BEGIN.\000"
	.align	2
.LC11:
	.ascii	"PRESS SELECT FOR INSTRUCTIONS.\000"
	.text
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, #83886080
	mov	r4, #0
	mvn	r2, #32768
	strh	r4, [r3, #2]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	r0, #1
	ldr	r3, .L77
	mov	lr, pc
	bx	r3
	ldr	r6, .L77+4
	mov	r3, r4
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L77+8
	ldr	r5, .L77+12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L77+16
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	ldr	r2, .L77+20
	add	r3, r3, #1
	ldr	r4, .L77+24
	str	r3, [r5]
	mov	lr, pc
	bx	r2
	ldr	r3, .L77+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L66
	ldr	r2, .L77+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L75
.L66:
	tst	r3, #4
	beq	.L65
	ldr	r3, .L77+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L76
.L65:
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L75:
	ldr	r3, .L77+36
	ldr	r0, [r5]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L66
.L78:
	.align	2
.L77:
	.word	fillScreen4
	.word	drawString4
	.word	.LC10
	.word	seed
	.word	.LC11
	.word	waitForVBlank
	.word	oldButtons
	.word	flipPage
	.word	buttons
	.word	srand
	.size	start, .-start
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	mov	r3, #67108864
	push	{r4, r7, fp, lr}
	ldr	r4, .L93
	ldr	r7, .L93+4
	ldrh	ip, [r4, #48]
	ldr	r0, .L93+8
	ldr	r1, .L93+12
	strh	ip, [r7]	@ movhi
	str	r2, [r1]
	ldr	r6, .L93+16
	strh	r0, [r3]	@ movhi
	ldr	r5, .L93+20
	ldrh	r0, [r7]
	str	r2, [r6]
	ldr	fp, .L93+24
	ldr	r10, .L93+28
	ldr	r9, .L93+32
	ldr	r8, .L93+36
.L81:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L90
.L83:
	.word	.L88
	.word	.L87
	.word	.L90
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L82
.L82:
	ldr	r3, .L93+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L84:
	tst	r0, #8
	beq	.L90
	ldr	r3, .L93+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L85:
	ldr	r3, .L93+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L86:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L87:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L88:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L81
.L90:
	mov	r0, r3
	b	.L81
.L94:
	.align	2
.L93:
	.word	67109120
	.word	buttons
	.word	1044
	.word	seed
	.word	state
	.word	oldButtons
	.word	start
	.word	updateGame
	.word	drawGame
	.word	pause
	.word	lose
	.word	instructions.part.0
	.word	win
	.size	main, .-main
	.text
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L97
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L98:
	.align	2
.L97:
	.word	oldButtons
	.size	instructions, .-instructions
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	seed,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
