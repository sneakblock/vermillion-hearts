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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PRESS START TO BEGIN.\000"
	.align	2
.LC1:
	.ascii	"PRESS SELECT FOR INSTRUCTIONS.\000"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r4, #0
	mov	r3, #83886080
	mvn	r0, #32768
	ldr	r1, .L4
	strh	r0, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	r0, #1
	strh	r4, [r3, #2]	@ movhi
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L4+8
	mov	r3, r4
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L4+12
	mov	lr, pc
	bx	r5
	mov	r3, r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L4+16
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1044
	.word	fillScreen4
	.word	drawString4
	.word	.LC0
	.word	.LC1
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToStart, .-goToStart
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
	@ link register save eliminated.
	mov	r3, #0
	ldr	r1, .L7
	ldr	r2, .L7+4
	str	r3, [r1]
	ldr	r0, .L7+8
	ldrh	r1, [r2, #48]
	ldr	r2, .L7+12
	strh	r3, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	seed
	.word	67109120
	.word	oldButtons
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	instructions.part.0,win.part.0
	.set	lose.part.0,win.part.0
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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r6, #67108864
	ldr	r5, .L23
	ldr	r2, [r5]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r2, #76]
	strh	r4, [r6]	@ movhi
	mov	r2, #83886080
	ldr	r7, .L23+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r7
	mvn	r2, #32768
	ldr	r1, .L23+8
	ldr	r3, .L23+12
	strh	r1, [r6]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, .L23+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r2, [r3, #364]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #2
	mov	r1, #16
	mov	r0, #124
	ldr	r2, [r3, #100]
	ldr	r5, .L23+20
	mov	r3, #254
	mov	lr, pc
	bx	r5
	ldr	r2, .L23+24
	ldr	r3, .L23+28
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L23+32
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L23+36
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	currentTarget
	.word	DMANow
	.word	1044
	.word	83886336
	.word	drawDialogueUI
	.word	typeDialogue
	.word	selectedChoice
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
	ldr	r3, .L57
	ldrh	r2, [r3]
	tst	r2, #64
	push	{r4, r5, r6, r7, r8, lr}
	beq	.L26
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L26
.L27:
	ldr	r3, .L57+8
	ldr	r1, [r3]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	str	r1, [r3]
.L28:
	ldr	r4, .L57+12
	ldr	r0, [r4]
	ldr	r1, [r0, #364]
	rsb	r3, r1, r1, lsl #3
	tst	r2, #1
	add	r3, r0, r3, lsl #2
	ldr	r2, [r3, #84]
	beq	.L53
	ldr	ip, .L57+4
	ldrh	ip, [ip]
	tst	ip, #1
	beq	.L50
.L53:
	ldr	r5, .L57+16
.L30:
	cmp	r2, #0
	bne	.L54
.L33:
	mov	lr, pc
	bx	r5
	ldr	r3, .L57+20
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L26:
	tst	r2, #128
	beq	.L28
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L28
	b	.L27
.L50:
	cmp	r2, #0
	bne	.L55
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r0, #368]
	ldr	r5, .L57+16
	str	r3, [r0, #364]
	mov	lr, pc
	bx	r5
	mov	r7, #67108864
	mov	r2, #4352
	ldr	r6, .L57+24
	mov	r3, #16384
	mov	r0, #3
	strh	r2, [r7]	@ movhi
	ldr	r1, .L57+28
	ldr	r2, .L57+32
	mov	lr, pc
	bx	r6
	mov	r0, #3
	ldr	r2, .L57+36
	ldr	r1, .L57+40
	mov	r3, #256
	mov	lr, pc
	bx	r6
	ldr	r8, .L57+44
	ldr	r3, .L57+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L57+52
	mov	lr, pc
	bx	r6
	ldr	r1, [r8]
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
	strh	r0, [r7, #8]	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r0, #3
	mov	r3, #256
	strh	r2, [r7, #12]	@ movhi
	mov	r2, #83886080
	mov	lr, pc
	bx	r6
	ldr	r2, [r8]
	ldr	r3, [r2, #28]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #36]
	mov	r0, #3
	mov	r2, #100663296
	asr	r3, r3, #1
	mov	lr, pc
	bx	r6
	ldr	r2, [r8]
	ldr	r3, [r2, #32]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #40]
	mov	r0, #3
	ldr	r2, .L57+56
	asr	r3, r3, #1
	mov	lr, pc
	bx	r6
	mov	r0, #1
	ldr	r3, [r4]
	ldr	r2, [r3, #364]
	ldr	r1, .L57+60
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #84]
	str	r0, [r1]
	b	.L30
.L54:
	ldr	r3, .L57+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+68
	mov	lr, pc
	bx	r3
	b	.L33
.L55:
	ldr	r3, .L57+72
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #364]
	rsb	r2, r2, r2, lsl #3
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #84]
	ldr	r5, .L57+16
	b	.L30
.L56:
	add	r1, r1, #1
	str	r1, [r0, #364]
	rsb	r3, r1, r1, lsl #3
	add	r3, r0, r3, lsl #2
	ldr	r2, [r3, #84]
	b	.L53
.L58:
	.align	2
.L57:
	.word	oldButtons
	.word	buttons
	.word	selectedChoice
	.word	currentTarget
	.word	waitForVBlank
	.word	flipPage
	.word	DMANow
	.word	SPRITESHEETTiles
	.word	100728832
	.word	83886592
	.word	SPRITESHEETPal
	.word	currentLevel
	.word	hideSprites
	.word	shadowOAM
	.word	100724736
	.word	state
	.word	drawChoices
	.word	drawSelector
	.word	selectChoice
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
	ldr	lr, .L61
	ldr	r2, .L61+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L62:
	.align	2
.L61:
	.word	1044
	.word	state
	.size	goToPause, .-goToPause
	.section	.rodata.str1.4
	.align	2
.LC2:
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	ldr	r5, .L70+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L70+8
	ldr	r4, .L70+12
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L70+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #4352
	ldr	r4, .L70+28
	strh	r2, [r5]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L70+32
	ldr	r1, .L70+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L70+40
	ldr	r1, .L70+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r6, .L70+48
	ldr	r3, .L70+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L70+56
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
	ldr	r2, .L70+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L70+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	fillScreen4
	.word	drawString4
	.word	.LC2
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
	ldr	lr, .L74
	ldr	r2, .L74+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L75:
	.align	2
.L74:
	.word	1044
	.word	state
	.size	goToWin, .-goToWin
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"YOU REACH AETHER.\000"
	.align	2
.LC4:
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
	ldr	r3, .L79
	mov	lr, pc
	bx	r3
	ldr	r4, .L79+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L79+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L79+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L79+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L79+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	win.part.0
.L76:
	pop	{r4, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	fillScreen4
	.word	drawString4
	.word	.LC3
	.word	.LC4
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
	ldr	r0, .L83
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L83+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L84:
	.align	2
.L83:
	.word	1044
	.word	fillScreen4
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToLose, .-goToLose
	.section	.rodata.str1.4
	.align	2
.LC5:
	.ascii	"YOU PERISH.\000"
	.align	2
.LC6:
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
	ldr	r2, .L88
	ldr	r4, .L88+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L88+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L88+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L88+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L85:
	pop	{r4, lr}
	bx	lr
.L89:
	.align	2
.L88:
	.word	.LC5
	.word	drawString4
	.word	.LC6
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.size	lose, .-lose
	.section	.rodata.str1.4
	.align	2
.LC7:
	.ascii	"DIRECTIONAL BUTTONS TO MOVE.\000"
	.align	2
.LC8:
	.ascii	"A TO GLITCH TIME.\000"
	.align	2
.LC9:
	.ascii	"START TO PAUSE.\000"
	.align	2
.LC10:
	.ascii	"AVOID ENTITIES. REACH END.\000"
	.align	2
.LC11:
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
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	ldr	r4, .L92+4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L92+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #90
	mov	r0, #20
	ldr	r2, .L92+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L92+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #110
	mov	r0, #20
	ldr	r2, .L92+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L92+24
	mov	r1, #120
	mov	r0, #20
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L92+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L92+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L92+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L93:
	.align	2
.L92:
	.word	fillScreen4
	.word	drawString4
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	waitForVBlank
	.word	flipPage
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	push	{r4, lr}
	ldr	r2, .L106
	ldr	r4, .L106+4
	ldr	r0, [r2]
	ldrh	r3, [r4]
	add	r0, r0, #1
	tst	r3, #8
	str	r0, [r2]
	beq	.L95
	ldr	r2, .L106+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L104
.L95:
	tst	r3, #4
	beq	.L94
	ldr	r3, .L106+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L105
.L94:
	pop	{r4, lr}
	bx	lr
.L105:
	pop	{r4, lr}
	b	goToInstructions
.L104:
	ldr	r3, .L106+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L95
.L107:
	.align	2
.L106:
	.word	seed
	.word	oldButtons
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
	mov	r3, #0
	push	{r4, r7, fp, lr}
	ldr	r4, .L123
	ldr	r2, .L123+4
	ldrh	r0, [r4, #48]
	ldr	r7, .L123+8
	ldr	r5, .L123+12
	ldr	r6, .L123+16
	str	r3, [r2]
	ldr	r2, .L123+20
	strh	r0, [r7]	@ movhi
	strh	r3, [r5]	@ movhi
	ldr	fp, .L123+24
	mov	lr, pc
	bx	r2
	ldr	r10, .L123+28
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	r9, .L123+32
	ldr	r8, .L123+36
.L110:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L120
.L112:
	.word	.L118
	.word	.L117
	.word	.L116
	.word	.L115
	.word	.L114
	.word	.L113
	.word	.L111
.L111:
	ldr	r3, .L123+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L113:
	tst	r0, #8
	beq	.L120
	ldr	r3, .L123+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L114:
	ldr	r3, .L123+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L115:
	ldr	r3, .L123+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L116:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L117:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L118:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L110
.L120:
	mov	r0, r3
	b	.L110
.L124:
	.align	2
.L123:
	.word	67109120
	.word	seed
	.word	buttons
	.word	oldButtons
	.word	state
	.word	goToStart
	.word	start
	.word	updateGame
	.word	drawGame
	.word	dialogue
	.word	lose
	.word	instructions.part.0
	.word	win
	.word	pause
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
	ldr	r3, .L127
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L128:
	.align	2
.L127:
	.word	oldButtons
	.size	instructions, .-instructions
	.comm	index,4,4
	.comm	clone,4,4
	.comm	source,4,4
	.global	dialogueTypeRow
	.global	dialogueTypeCol
	.comm	shadowOAM,1024,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	seed,4,4
	.data
	.align	2
	.type	dialogueTypeRow, %object
	.size	dialogueTypeRow, 4
dialogueTypeRow:
	.word	12
	.type	dialogueTypeCol, %object
	.size	dialogueTypeCol, 4
dialogueTypeCol:
	.word	124
	.ident	"GCC: (devkitARM release 53) 9.1.0"
