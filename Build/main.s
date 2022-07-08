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
	mov	r2, #67108864
	mov	r1, #5888
	push	{r4, lr}
	ldr	r3, .L4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+12
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L4+16
	ldr	r3, .L4+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	initStart
	.word	startLevel
	.word	loadLevel
	.word	trackB_length
	.word	trackB_data
	.word	playSoundA
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
	push	{r4, lr}
	mov	r4, #0
	ldr	r2, .L8
	ldr	r3, .L8+4
	str	r4, [r2]
	ldrh	r1, [r3, #48]
	ldr	r2, .L8+8
	ldr	r0, .L8+12
	ldr	r3, .L8+16
	strh	r1, [r2]	@ movhi
	strh	r4, [r0]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	ldr	r1, .L8+24
	ldr	r2, .L8+28
	ldr	r3, .L8+32
	str	r4, [r1]
	str	r4, [r2]
	str	r4, [r3]
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	seed
	.word	67109120
	.word	buttons
	.word	oldButtons
	.word	setupInterrupts
	.word	setupSounds
	.word	selectedPalColor
	.word	selectedPalCol
	.word	selectedPalRow
	.size	initialize, .-initialize
	.global	__aeabi_uidivmod
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L16
	mov	lr, pc
	bx	r6
	mov	r5, #0
	mov	r2, #67108864
	mov	r1, #5888
	strh	r5, [r2]	@ movhi
	ldr	r4, .L16+4
	strh	r1, [r2]	@ movhi
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L16+8
	ldr	r1, .L16+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L16+16
	ldr	r1, .L16+20
	mov	r3, #16
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+32
	mov	r1, r5
	ldr	r0, [r3]
	ldr	r3, .L16+36
	mov	lr, pc
	bx	r3
	mov	r4, #200
	ldr	r7, .L16+40
	ldr	r5, .L16+44
	ldr	fp, .L16+48
	ldr	r10, .L16+52
	b	.L12
.L11:
	subs	r4, r4, #1
	beq	.L15
.L12:
	mov	lr, pc
	bx	r6
	ldr	r8, [r7, #12]
	cmp	r8, #0
	bne	.L11
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L16+56
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L16+60
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L16+64
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L12
.L15:
	ldr	r3, .L16+32
	mov	r1, r4
	ldr	r0, [r3]
	ldr	r3, .L16+36
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L16+68
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	DMANow
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	hideSprites
	.word	shadowOAM
	.word	currentLevel
	.word	loadLevel
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
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
	ldr	r3, .L20
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
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
	ldr	r5, .L28
	mov	lr, pc
	bx	r5
	ldr	r3, .L28+4
	mov	lr, pc
	bx	r3
	mov	r4, #0
	mov	r2, #67108864
	mov	r3, #83886080
	mvn	r1, #32768
	ldr	r0, .L28+8
	ldr	r6, .L28+12
	strh	r4, [r2]	@ movhi
	strh	r4, [r3]	@ movhi
	strh	r0, [r2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	ldr	r3, .L28+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	mov	r1, #16
	mov	r0, #124
	ldr	r2, [r3, #104]
	ldr	r7, .L28+20
	mov	r3, #1
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	cmp	r3, r4
	ldrne	r3, .L28+24
	strne	r4, [r3]
	mov	lr, pc
	bx	r5
	ldr	r3, .L28+28
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L28+32
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
	.word	waitForVBlank
	.word	stopSound
	.word	1044
	.word	currentTarget
	.word	drawDialogueUI
	.word	typeDialogue
	.word	selectedChoice
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
	ldr	r3, .L74
	ldrh	r3, [r3]
	tst	r3, #64
	push	{r4, lr}
	beq	.L31
	ldr	r0, .L74+4
	ldrh	r2, [r0]
	tst	r2, #64
	bne	.L31
.L32:
	ldr	r4, .L74+8
	ldr	r2, [r4]
	ldr	r1, [r2, #1684]
	add	ip, r2, r1, lsl #5
	ldr	ip, [ip, #84]
	cmp	ip, #0
	and	r3, r3, #1
	lsl	ip, r1, #5
	beq	.L34
	ldr	r2, .L74+12
	ldr	r1, [r2]
	cmp	r1, #0
	moveq	r1, #1
	movne	r1, #0
	cmp	r3, #0
	str	r1, [r2]
	bne	.L71
.L40:
	ldr	r3, .L74+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+20
	mov	lr, pc
	bx	r3
	b	.L41
.L31:
	tst	r3, #128
	beq	.L33
	ldr	r0, .L74+4
	ldrh	r2, [r0]
	tst	r2, #128
	beq	.L32
.L33:
	ldr	r4, .L74+8
	ldr	r2, [r4]
	ldr	r1, [r2, #1684]
	tst	r3, #1
	add	r3, r2, r1, lsl #5
	ldr	r3, [r3, #84]
	lsl	ip, r1, #5
	bne	.L72
.L37:
	cmp	r3, #0
	bne	.L40
.L41:
	ldr	r3, .L74+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r0, .L74+4
	ldrh	r0, [r0]
	tst	r0, #1
	bne	.L37
	cmp	r3, #0
	bne	.L44
.L38:
	add	ip, r2, ip
	ldr	r3, [ip, #96]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r2, #1688]
	str	r3, [r2, #1684]
	bl	goToGame
	ldr	r3, [r4]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L37
.L34:
	cmp	r3, #0
	beq	.L41
	ldrh	r3, [r0]
	tst	r3, #1
	beq	.L38
	b	.L41
.L71:
	ldrh	r3, [r0]
	tst	r3, #1
	bne	.L40
.L44:
	ldr	r3, .L74+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L37
.L73:
	add	r1, r1, #1
	str	r1, [r2, #1684]
	bl	goToDialogue
	ldr	r3, [r4]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r3, [r3, #84]
	b	.L37
.L75:
	.align	2
.L74:
	.word	oldButtons
	.word	buttons
	.word	currentTarget
	.word	selectedChoice
	.word	drawChoices
	.word	drawSelector
	.word	waitForVBlank
	.word	flipPage
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
	mov	r3, #67108864
	mov	r2, #256
	mov	r1, #0
	push	{r4, lr}
	ldr	r0, .L78
	strh	r1, [r3]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, .L78+4
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L78+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L79:
	.align	2
.L78:
	.word	pauseLevel
	.word	loadLevel
	.word	state
	.size	goToPause, .-goToPause
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
	mov	r2, #0
	mov	r3, #67108864
	push	{r4, lr}
	ldr	r1, .L87
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L87+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+8
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L87+12
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
	ldr	r3, .L87+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L80:
	pop	{r4, lr}
	bx	lr
.L86:
	pop	{r4, lr}
	b	goToGame
.L88:
	.align	2
.L87:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
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
	mov	r2, #67108864
	ldr	r1, .L91
	push	{r4, lr}
	mov	r3, #256
	strh	r1, [r2]	@ movhi
	ldr	r4, .L91+4
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L91+8
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L91+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L92:
	.align	2
.L91:
	.word	1044
	.word	DMANow
	.word	winImagePal
	.word	state
	.size	goToWin, .-goToWin
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
	ldr	r0, .L100
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L93
	ldr	r3, .L100+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L99
.L93:
	pop	{r4, lr}
	bx	lr
.L99:
	pop	{r4, lr}
	b	goToStart
.L101:
	.align	2
.L100:
	.word	winImageBitmap
	.word	drawFullscreenImage4
	.word	waitForVBlank
	.word	flipPage
	.word	oldButtons
	.word	buttons
	.size	win, .-win
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
	mov	r2, #67108864
	mov	r1, #256
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r1, [r2]	@ movhi
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L108+4
	ldr	r3, .L108+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L108+12
	mov	lr, pc
	bx	r3
	mov	r4, #100
	ldr	r7, .L108+16
	ldr	r6, .L108+20
	ldr	r5, .L108+24
	ldr	fp, .L108+28
	ldr	r10, .L108+32
	b	.L104
.L103:
	subs	r4, r4, #1
	beq	.L107
.L104:
	mov	lr, pc
	bx	r7
	ldr	r8, [r6, #12]
	cmp	r8, #0
	bne	.L103
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L108+36
	add	r9, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L108+40
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L108+44
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r8, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L104
.L107:
	mov	r1, r4
	ldr	r3, .L108+8
	ldr	r0, .L108+4
	mov	lr, pc
	bx	r3
	mov	r2, #5
	ldr	r3, .L108+48
	str	r2, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L109:
	.align	2
.L108:
	.word	initInstructions
	.word	instructionsLevel
	.word	loadLevel
	.word	stopSound
	.word	waitForVBlank
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
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
	ldr	r1, .L135
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1]
	ldr	r2, .L135+4
	add	r3, r3, #1
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L135+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
	ldr	r2, .L135+12
	ldrh	r2, [r2]
	ands	r5, r2, #8
	beq	.L130
.L111:
	tst	r3, #512
	beq	.L114
	ldr	r2, .L135+12
	ldrh	r2, [r2]
	tst	r2, #512
	beq	.L131
.L114:
	tst	r3, #4
	beq	.L110
	ldr	r3, .L135+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L132
.L110:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L132:
	ldr	r3, .L135
	ldr	r0, [r3]
	ldr	r3, .L135+16
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	goToInstructions
.L130:
	ldr	r3, .L135
	ldr	r0, [r3]
	ldr	r3, .L135+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+20
	mov	r4, #1000
	str	r5, [r3]
	ldr	r6, .L135+24
	ldr	r5, .L135+28
	ldr	r7, .L135+32
	ldr	fp, .L135+36
	ldr	r10, .L135+40
	b	.L113
.L112:
	subs	r4, r4, #1
	beq	.L133
.L113:
	mov	lr, pc
	bx	r6
	ldr	r8, [r5, #12]
	cmp	r8, #0
	bne	.L112
	mov	lr, pc
	bx	r7
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L135+44
	add	r9, r3, r1
	mov	lr, pc
	bx	r7
	mov	r1, r0
	ldr	r3, .L135+48
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L135+52
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r7
	mov	r8, r0
	mov	lr, pc
	bx	r7
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L113
.L133:
	ldr	r3, .L135+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+60
	mov	r1, #1
	ldr	r0, [r3]
	ldr	r3, .L135+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L135+76
	ldr	r3, .L135+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+84
	mov	r0, #100
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+8
	ldrh	r3, [r3]
	b	.L111
.L131:
	ldr	r3, .L135
	ldr	r0, [r3]
	ldr	r3, .L135+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L135+20
	mov	r4, #1000
	ldr	r6, .L135+24
	str	r2, [r3]
	ldr	r5, .L135+28
	ldr	r7, .L135+32
	ldr	fp, .L135+36
	ldr	r10, .L135+40
	b	.L116
.L115:
	subs	r4, r4, #1
	beq	.L134
.L116:
	mov	lr, pc
	bx	r6
	ldr	r8, [r5, #12]
	cmp	r8, #0
	bne	.L115
	mov	lr, pc
	bx	r7
	ldr	r1, [fp]
	mov	lr, pc
	bx	r10
	ldr	r3, .L135+44
	add	r9, r3, r1
	mov	lr, pc
	bx	r7
	mov	r1, r0
	ldr	r3, .L135+48
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r8
	mov	r1, #500
	ldr	ip, .L135+52
	mov	r0, r9
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r7
	mov	r8, r0
	mov	lr, pc
	bx	r7
	rsbs	r3, r8, #0
	and	r3, r3, #15
	and	r8, r8, #15
	rsbpl	r8, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r8, r8, #1
	lsl	r0, r0, #1
	add	r8, r8, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r8]
	ldrh	r2, [r0]
	subs	r4, r4, #1
	strh	r2, [r8]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L116
.L134:
	ldr	r3, .L135+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+60
	mov	r1, #1
	ldr	r0, [r3]
	ldr	r3, .L135+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+72
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L135+76
	ldr	r3, .L135+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+84
	mov	r0, #100
	mov	lr, pc
	bx	r3
	ldr	r3, .L135+8
	ldrh	r3, [r3]
	b	.L114
.L136:
	.align	2
.L135:
	.word	seed
	.word	animateStart
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	cheat
	.word	waitForVBlank
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	initGame
	.word	currentLevel
	.word	loadLevel
	.word	stopSound
	.word	trackA_length
	.word	trackA_data
	.word	playSoundA
	.word	glitchDMA
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
	push	{r4, r7, fp, lr}
	ldr	r6, .L153
	ldr	r7, .L153+4
	ldr	r3, .L153+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L153+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L153+16
	ldr	r10, .L153+20
	ldr	r9, .L153+24
	ldr	r8, .L153+28
	ldr	r4, .L153+32
.L139:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L148
.L141:
	.word	.L146
	.word	.L145
	.word	.L144
	.word	.L143
	.word	.L142
	.word	.L140
.L140:
	tst	r0, #4
	beq	.L148
	tst	r3, #4
	beq	.L152
.L148:
	mov	r0, r3
	b	.L139
.L142:
	ldr	r3, .L153+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L143:
	ldr	r3, .L153+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L144:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L146:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L145:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L152:
	ldr	r3, .L153+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L139
.L154:
	.align	2
.L153:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	updateGame
	.word	drawGame
	.word	dialogue
	.word	67109120
	.word	win
	.word	pause
	.word	goToStart
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
	ldr	r3, .L160
	ldrh	r3, [r3]
	tst	r3, #4
	bxeq	lr
	ldr	r3, .L160+4
	ldrh	r3, [r3]
	tst	r3, #4
	bxne	lr
	b	goToStart
.L161:
	.align	2
.L160:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.comm	swapIndex2,4,4
	.comm	swapIndex1,4,4
	.comm	selectedPalCol,4,4
	.comm	selectedPalRow,4,4
	.comm	selectedPalColor,4,4
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
	.comm	soundB,32,4
	.comm	soundA,32,4
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
