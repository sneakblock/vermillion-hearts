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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, #0
	mov	r6, #67108864
	ldr	r5, .L23
	ldr	r2, [r5]
	ldr	r3, [r2, #80]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #76]
	mov	r0, #3
	mov	r2, #83886080
	strh	r4, [r6]	@ movhi
	ldr	r7, .L23+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r7
	mvn	r2, #32768
	mov	r1, #2
	ldr	r3, .L23+8
	ldr	r0, .L23+12
	strh	r0, [r6]	@ movhi
	strh	r4, [r3, #254]	@ movhi
	strh	r2, [r3, #252]	@ movhi
	ldr	r3, [r5]
	ldr	r2, [r3, #284]
	add	r2, r2, r2, lsl r1
	add	r3, r3, r2, lsl r1
	ldr	r0, [r3, #100]
	ldr	ip, .L23+16
	ldr	r2, .L23+20
	ldr	r3, .L23+24
	str	r4, [ip]
	str	r0, [r2]
	str	r1, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	currentTarget
	.word	DMANow
	.word	83886336
	.word	1044
	.word	index
	.word	source
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
	push	{r4, r5, lr}
	ldr	r4, .L36
	ldr	r3, .L36+4
	mov	r0, #254
	sub	sp, sp, #12
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L26
	mov	r1, #4
	mov	r3, #152
	str	r2, [sp]
	mov	r0, r1
	mov	r2, #116
	ldr	r5, .L36+8
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
.L26:
	ldr	r2, [r3, #288]
	cmp	r2, #0
	beq	.L35
	mov	r3, #255
	mov	r1, #4
	mov	r0, #124
	ldr	r5, .L36+12
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
.L27:
	ldr	r2, [r3, #284]
	add	r2, r2, r2, lsl #2
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #100]
	mov	r1, #16
	mov	r0, #124
	mov	r3, #255
	mov	lr, pc
	bx	r5
	ldr	r3, .L36+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+20
	mov	lr, pc
	bx	r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L35:
	ldr	r5, .L36+12
	b	.L27
.L37:
	.align	2
.L36:
	.word	currentTarget
	.word	fillScreen4
	.word	drawImage4
	.word	drawString4
	.word	waitForVBlank
	.word	flipPage
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
	ldr	lr, .L40
	ldr	r2, .L40+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L49
	mov	lr, pc
	bx	r3
	ldr	r5, .L49+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L49+8
	ldr	r4, .L49+12
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L49+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L49+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L42
	ldr	r3, .L49+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L48
.L42:
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #4352
	ldr	r4, .L49+28
	strh	r2, [r5]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L49+32
	ldr	r1, .L49+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L49+40
	ldr	r1, .L49+44
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r6, .L49+48
	ldr	r3, .L49+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L49+56
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
	ldr	r2, .L49+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L49+64
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	lr, .L53
	ldr	r2, .L53+4
	strh	lr, [ip]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [r2]
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	ldr	r4, .L58+4
	mov	r3, #0
	mov	r1, #60
	mov	r0, #20
	ldr	r2, .L58+8
	mov	lr, pc
	bx	r4
	mov	r1, #70
	mov	r0, #20
	ldr	r2, .L58+12
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L58+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L58+24
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	win.part.0
.L55:
	pop	{r4, lr}
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r0, .L62
	push	{r4, lr}
	strh	ip, [r3]	@ movhi
	strh	r0, [r1]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	mov	r0, #1
	ldr	r3, .L62+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L62+12
	mov	lr, pc
	bx	r3
	mov	r2, #6
	ldr	r3, .L62+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r2, .L67
	ldr	r4, .L67+4
	mov	lr, pc
	bx	r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L67+8
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+20
	ldrh	r3, [r3]
	tst	r3, #8
	popne	{r4, lr}
	bne	lose.part.0
.L64:
	pop	{r4, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	ldr	r4, .L71+4
	mov	r3, #0
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L71+8
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #90
	mov	r0, #20
	ldr	r2, .L71+12
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L71+16
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r1, #110
	mov	r0, #20
	ldr	r2, .L71+20
	mov	lr, pc
	bx	r4
	ldr	r2, .L71+24
	mov	r1, #120
	mov	r0, #20
	mov	r3, #0
	mov	lr, pc
	bx	r4
	ldr	r3, .L71+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L71+32
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L71+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L72:
	.align	2
.L71:
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
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r6, .L85+4
	mov	r3, r4
	mov	r1, #80
	mov	r0, #20
	ldr	r2, .L85+8
	ldr	r5, .L85+12
	mov	lr, pc
	bx	r6
	mov	r3, r4
	mov	r1, #100
	mov	r0, #20
	ldr	r2, .L85+16
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	ldr	r2, .L85+20
	add	r3, r3, #1
	ldr	r4, .L85+24
	str	r3, [r5]
	mov	lr, pc
	bx	r2
	ldr	r3, .L85+28
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L74
	ldr	r2, .L85+32
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L83
.L74:
	tst	r3, #4
	beq	.L73
	ldr	r3, .L85+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L84
.L73:
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L83:
	ldr	r3, .L85+36
	ldr	r0, [r5]
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L74
.L86:
	.align	2
.L85:
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
	ldr	r4, .L102
	ldr	r7, .L102+4
	ldrh	ip, [r4, #48]
	ldr	r0, .L102+8
	ldr	r1, .L102+12
	strh	ip, [r7]	@ movhi
	str	r2, [r1]
	ldr	r6, .L102+16
	strh	r0, [r3]	@ movhi
	ldr	r5, .L102+20
	ldrh	r0, [r7]
	str	r2, [r6]
	ldr	fp, .L102+24
	ldr	r10, .L102+28
	ldr	r9, .L102+32
	ldr	r8, .L102+36
.L89:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L99
.L91:
	.word	.L97
	.word	.L96
	.word	.L95
	.word	.L94
	.word	.L93
	.word	.L92
	.word	.L90
.L90:
	ldr	r3, .L102+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L92:
	tst	r0, #8
	beq	.L99
	ldr	r3, .L102+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L93:
	ldr	r3, .L102+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L94:
	ldr	r3, .L102+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L95:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L96:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L97:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L89
.L99:
	mov	r0, r3
	b	.L89
.L103:
	.align	2
.L102:
	.word	67109120
	.word	buttons
	.word	1044
	.word	seed
	.word	state
	.word	oldButtons
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
	ldr	r3, .L106
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	instructions.part.0
.L107:
	.align	2
.L106:
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
