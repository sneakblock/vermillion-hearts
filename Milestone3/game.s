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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L4
	ldr	r3, .L4+4
	ldr	r2, [r3]
	ldr	r3, [r1, #12]
	sub	r3, r3, r2
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	add	r0, r1, #28
	ldm	r0, {r0, r2}
	add	ip, r2, #7
	cmp	r2, #0
	movlt	r2, ip
	add	ip, r0, #7
	cmp	r0, #0
	movlt	r0, ip
	mvn	r3, r3, lsr #17
	ldr	ip, [r1, #80]
	push	{r4, r5, lr}
	ldr	r5, [r1, #60]
	ldr	r4, [ip, #64]
	ldr	lr, [ip, #60]
	ldr	ip, [r1, #48]
	asr	r2, r2, #3
	asr	r0, r0, #3
	mla	r0, ip, r0, lr
	mla	r2, r5, r2, r4
	ldr	ip, .L4+8
	ldr	r1, [r1, #16]
	ldr	ip, [ip]
	sub	r1, r1, ip
	lsl	r1, r1, #23
	ldr	ip, .L4+12
	add	r2, r0, r2, lsl #5
	lsr	r1, r1, #23
	strh	r2, [ip, #4]	@ movhi
	strh	r3, [ip]	@ movhi
	strh	r1, [ip, #2]	@ movhi
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.global	checkForConvoBools
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkForConvoBools, %function
checkForConvoBools:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r7, .L18
	ldr	r3, [r7]
	ldr	r2, [r3, #112]
	cmp	r2, #0
	ble	.L6
	mov	r5, #0
	mov	r6, r5
	b	.L7
.L8:
	ldr	r3, [r3, #1724]
	cmp	r3, #0
	beq	.L10
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	add	r2, r3, r4
	ldr	r2, [r2, #4]
	str	r6, [r2, #1692]
	ldr	r2, [r3, #112]
	add	r5, r5, #1
	cmp	r2, r5
	ble	.L6
.L7:
	add	r2, r5, #28
	add	r3, r3, r2, lsl #2
	ldr	r3, [r3, #4]
	ldr	r1, [r3, #1692]
	cmp	r1, #0
	lsl	r4, r2, #2
	bne	.L8
.L10:
	ldr	r3, [r7]
	ldr	r2, [r3, #112]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L7
.L6:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	currentLevel
	.size	checkForConvoBools, .-checkForConvoBools
	.align	2
	.global	initLevels
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevels, %function
initLevels:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L22+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	initPause
	.word	initLevel0
	.word	initLevel1
	.size	initLevels, .-initLevels
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #1
	mov	r3, #0
	push	{r4, lr}
	mov	ip, #16
	mov	lr, #8
	mov	r0, #20
	mov	r1, #3
	ldr	r4, .L26
	str	r2, [r4, #20]
	str	r2, [r4, #24]
	str	r2, [r4, #52]
	ldr	r2, .L26+4
	str	lr, [r4, #28]
	str	ip, [r4, #32]
	str	r0, [r4, #44]
	str	r1, [r4, #64]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	mov	lr, pc
	bx	r2
	str	r0, [r4, #84]
	str	r0, [r4, #80]
	pop	{r4, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	player
	.word	initCloud
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L30+12
	ldr	r2, .L30+16
	str	r2, [r3]
	bl	initPlayer
	mov	r2, #0
	ldr	r3, .L30+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L31:
	.align	2
.L30:
	.word	initPause
	.word	initLevel0
	.word	initLevel1
	.word	currentLevel
	.word	level0
	.word	gateUnlocked
	.size	initGame, .-initGame
	.align	2
	.global	loadLevel
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadLevel, %function
loadLevel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #67108864
	mov	r4, r0
	ldrh	r2, [r0]
	ldr	r3, [r0, #32]
	orr	r2, r2, #7680
	add	r3, r3, r3, lsr #31
	ldr	r5, .L46
	strh	r2, [r7, #8]	@ movhi
	asr	r3, r3, #1
	mov	r2, #100663296
	mov	r6, r1
	ldr	r1, [r0, #40]
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #44]
	ldr	r2, .L46+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #84]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #80]
	mov	r2, #83886080
	mov	r0, #3
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r1, [r4, #56]
	cmp	r1, #0
	beq	.L33
	ldrh	r2, [r4]
	ldr	r3, [r4, #48]
	orr	r2, r2, #7168
	orr	r2, r2, #4
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	strh	r2, [r7, #10]	@ movhi
	asr	r3, r3, #1
	ldr	r2, .L46+8
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #52]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r2, .L46+12
	ldr	r1, [r4, #60]
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #84]
	ldr	r3, [r4, #92]
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #88]
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L33:
	ldr	r1, [r4, #72]
	cmp	r1, #0
	beq	.L34
	mov	r0, #67108864
	ldrh	r2, [r4]
	ldr	r3, [r4, #64]
	orr	r2, r2, #6656
	orr	r2, r2, #8
	add	r3, r3, r3, lsr #31
	strh	r2, [r0, #12]	@ movhi
	asr	r3, r3, #1
	mov	r0, #3
	ldr	r2, .L46+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #68]
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r2, .L46+20
	ldr	r1, [r4, #76]
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #92]
	ldr	r1, [r4, #84]
	add	r3, r3, r3, lsr #31
	asr	r2, r3, #1
	add	r1, r1, r1, lsr #31
	ldr	r3, [r4, #100]
	add	r2, r2, r1, asr #1
	lsl	r2, r2, #1
	add	r3, r3, r3, lsr #31
	mov	r0, #3
	ldr	r1, [r4, #96]
	add	r2, r2, #83886080
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
.L34:
	cmp	r6, #0
	beq	.L32
	add	r2, r4, #16
	ldm	r2, {r2, lr}
	ldr	r3, .L46+24
	ldr	r0, .L46+28
	ldr	ip, [r4, #24]
	ldr	r1, [r4, #28]
	str	r2, [r3, #16]
	ldr	r2, .L46+32
	str	lr, [r3, #12]
	str	ip, [r0]
	str	r1, [r2]
.L32:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	DMANow
	.word	100724736
	.word	100679680
	.word	100720640
	.word	100696064
	.word	100716544
	.word	player
	.word	hOff
	.word	vOff
	.size	loadLevel, .-loadLevel
	.align	2
	.global	loadNPC
	.syntax unified
	.arm
	.fpu softvfp
	.type	loadNPC, %function
loadNPC:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	str	r3, [r0]
	bx	lr
	.size	loadNPC, .-loadNPC
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L56
	add	r0, r4, #40
	ldr	r6, .L56+4
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	subs	r5, r1, #0
	bne	.L50
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r5, [r4, #40]
	str	r1, [r4, #60]
.L50:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	ldrne	r3, [r4, #40]
	addne	r3, r3, #1
	strne	r3, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	player
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L145
	ldrh	r2, [r2, #48]
	ldr	r4, .L145+4
	tst	r2, #64
	str	r3, [r4, #76]
	sub	sp, sp, #20
	beq	.L59
	ldr	r7, .L145+8
.L60:
	ldr	r3, .L145
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L63
	ldr	r2, [r7]
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #32]
	ldr	r0, [r2, #12]
	add	r3, r1, r3
	cmp	r3, r0
	blt	.L138
.L63:
	ldr	r3, .L145
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L66
	ldr	r1, [r4, #16]
	cmp	r1, #0
	ble	.L66
	ldr	r2, [r7]
	ldr	r3, [r4, #12]
	ldr	r0, [r2, #8]
	mul	ip, r0, r3
	ldr	lr, [r4, #24]
	ldr	r2, [r2, #4]
	sub	r1, r1, lr
	add	r2, r2, r1
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L66
	ldr	ip, [r4, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L66
	mov	r0, #1
	ldr	r2, .L145+12
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #16]
	str	r0, [r4, #76]
	ble	.L66
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L66:
	ldr	r3, .L145
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L69
	ldr	ip, [r7]
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #28]
	ldr	r1, [ip, #8]
	add	r3, r0, r3
	cmp	r3, r1
	blt	.L139
.L69:
	ldr	r9, .L145+16
	ldrh	r2, [r9]
	tst	r2, #8
	beq	.L74
	ldr	r3, .L145+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L140
.L74:
	ldr	r3, [r7]
	ldr	r1, [r3, #112]
	cmp	r1, #0
	ble	.L73
.L72:
	mov	r5, #0
	mov	r10, r5
	ldr	r8, .L145+24
	ldr	fp, .L145+20
.L89:
	add	r6, r5, #28
	add	r3, r3, r6, lsl #2
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #32]
	str	r2, [sp, #12]
	ldr	r2, [r3, #28]
	str	r2, [sp, #8]
	ldr	r2, [r3, #12]
	str	r2, [sp, #4]
	ldr	r2, [r3, #16]
	ldr	r1, [r4, #12]
	str	r2, [sp]
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #28]
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	lsl	r1, r6, #2
	beq	.L136
	ldrh	r2, [r9]
	tst	r2, #512
	ldr	r3, [r7]
	beq	.L77
	ldrh	r10, [fp]
	ands	r10, r10, #512
	beq	.L141
.L77:
	tst	r2, #1
	beq	.L96
	ldrh	r2, [fp]
	tst	r2, #1
	bne	.L96
	add	r6, r3, r6, lsl #2
	ldr	r3, [r6, #4]
	ldr	r2, [r3, #1696]
	cmp	r2, #0
	ldr	r2, .L145+28
	str	r3, [r2]
	bne	.L142
.L88:
	ldr	r3, .L145+32
	mov	lr, pc
	bx	r3
	mov	r10, #1
.L136:
	ldr	r3, [r7]
.L76:
	ldr	r2, [r3, #112]
	add	r5, r5, #1
	cmp	r2, r5
	bgt	.L89
	cmp	r10, #0
	beq	.L137
.L91:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L141:
	add	r1, r3, r1
	ldr	r0, [r1, #4]
	ldr	r1, .L145+36
.L80:
	ldr	r2, [r1], #4
	cmp	r2, r0
	beq	.L96
	cmp	r2, #0
	beq	.L143
	add	r10, r10, #1
	cmp	r10, #10
	bne	.L80
.L96:
	mov	r10, #1
	b	.L76
.L59:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	ldr	r7, .L145+8
	ble	.L60
	ldr	r1, [r7]
	ldr	ip, [r4, #20]
	ldmib	r1, {r0, r3}
	sub	r2, r2, ip
	mla	r3, r2, r3, r0
	ldr	r1, [r4, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L60
	ldr	r1, [r4, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L60
	mov	r0, #1
	ldr	r1, .L145+40
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r4, #12]
	str	r0, [r4, #76]
	ble	.L60
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
	b	.L60
.L138:
	ldr	ip, [r4, #20]
	ldr	lr, [r2, #4]
	sub	r3, r3, #1
	ldr	r2, [r2, #8]
	add	r3, r3, ip
	mla	r3, r2, r3, lr
	ldr	r2, [r4, #16]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r2
	beq	.L63
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
	mov	r5, #1
	ldr	lr, .L145+40
	add	r3, r1, ip
	ldr	r1, [lr]
	sub	r2, r0, #160
	cmp	r2, r1
	str	r3, [r4, #12]
	str	r5, [r4, #76]
	ble	.L63
	sub	r3, r3, r1
	cmp	r3, #80
	addgt	r1, r1, r5
	strgt	r1, [lr]
	b	.L63
.L139:
	ldr	r2, [r4, #12]
	mul	r5, r2, r1
	ldr	lr, [r4, #24]
	ldr	ip, [ip, #4]
	sub	r3, r3, #1
	add	r3, r3, lr
	add	r3, ip, r3
	ldrb	ip, [r3, r5]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L69
	ldr	ip, [r4, #32]
	add	r2, r2, ip
	sub	r2, r2, #1
	mul	r2, r1, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L69
	mov	r5, #1
	ldr	ip, .L145+12
	ldr	r2, [ip]
	sub	r3, r1, #240
	add	r0, r0, lr
	cmp	r3, r2
	str	r0, [r4, #16]
	str	r5, [r4, #76]
	ble	.L69
	sub	r0, r0, r2
	cmp	r0, #120
	addgt	r2, r2, r5
	strgt	r2, [ip]
	b	.L69
.L140:
	ldr	r3, .L145+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	ldr	r2, [r3, #112]
	cmp	r2, #0
	bgt	.L72
.L137:
	ldrh	r2, [r9]
.L73:
	tst	r2, #512
	beq	.L91
	ldr	r3, .L145+20
	ldrh	r3, [r3]
	tst	r3, #512
	bne	.L91
	ldr	r3, .L145+48
	mov	r0, #10
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #124]
	add	r1, r4, r3, lsl #2
	ldr	r1, [r1, #88]
	cmp	r3, #9
	movgt	r2, #0
	movle	r2, #1
	cmp	r1, #0
	moveq	r2, #0
	cmp	r2, #0
	addne	r3, r3, #1
	moveq	r3, #0
	add	r2, r4, r3, lsl #2
	ldr	r2, [r2, #84]
	str	r3, [r4, #124]
	str	r2, [r4, #80]
	b	.L91
.L142:
	ldr	r2, [r4, #80]
	ldr	r1, [r3, #1700]
	ldr	r2, [r2, #1728]
	cmp	r2, r1
	beq	.L82
.L85:
	ldr	r1, [r3, #1704]
	cmp	r2, r1
	beq	.L144
	ldr	r1, [r3, #1708]
	cmp	r2, r1
	bne	.L88
.L86:
	ldr	r2, [r3, #1720]
	str	r2, [r3, #1684]
	b	.L88
.L143:
	ldr	r3, [r0, #1780]
	cmp	r3, #0
	beq	.L79
	mov	r0, #500
	ldr	r3, .L145+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L145+48
	mov	r0, #10
	mov	lr, pc
	bx	r3
	ldr	r3, [r7]
	add	r6, r3, r6, lsl #2
	ldr	r2, [r6, #4]
	add	r1, r4, r10, lsl #2
	str	r10, [r4, #124]
	str	r2, [r4, #80]
	mov	r10, #1
	str	r2, [r1, #84]
	b	.L76
.L79:
	ldr	r3, .L145+48
	mov	r0, #50
	mov	lr, pc
	bx	r3
	mov	r10, #1
	ldr	r3, [r7]
	b	.L76
.L82:
	ldr	r1, [r3, #1712]
	str	r1, [r3, #1684]
	b	.L85
.L144:
	ldr	r0, [r3, #1708]
	ldr	r1, [r3, #1716]
	cmp	r0, r2
	str	r1, [r3, #1684]
	bne	.L88
	b	.L86
.L146:
	.align	2
.L145:
	.word	67109120
	.word	player
	.word	currentLevel
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	collision
	.word	currentTarget
	.word	goToDialogue
	.word	player+84
	.word	vOff
	.word	goToPause
	.word	glitchDMA
	.word	glitchPalette
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	animateNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateNPCS, %function
animateNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L155
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [r3]
	ldr	r8, [r6, #112]
	cmp	r8, #0
	ble	.L147
	mov	r5, #0
	ldr	r9, .L155+4
	ldr	r7, .L155+8
	add	r6, r6, #116
.L151:
	ldr	r4, [r6], #4
	ldr	r2, [r4, #40]
	smull	r3, r1, r9, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	addne	r2, r2, #1
	bne	.L150
	add	r0, r4, #52
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r7
	mov	r2, #1
	str	r1, [r4, #52]
.L150:
	add	r5, r5, #1
	cmp	r5, r8
	str	r2, [r4, #40]
	bne	.L151
.L147:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	currentLevel
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateNPCS, .-animateNPCS
	.align	2
	.global	updateNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateNPCS, %function
updateNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	animateNPCS
	.size	updateNPCS, .-updateNPCS
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	bl	animateNPCS
	ldr	r3, .L166
	ldr	r3, [r3]
	ldr	r3, [r3, #108]
	cmp	r3, #0
	movne	lr, pc
	bxne	r3
.L159:
	bl	checkForConvoBools
	ldr	r3, .L166+4
	ldr	r3, [r3, #12]
	cmp	r3, #4
	ble	.L165
	pop	{r4, lr}
	bx	lr
.L165:
	ldr	r3, .L166+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	currentLevel
	.word	player
	.word	goToWin
	.size	updateGame, .-updateGame
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L172
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L169
	ldr	r2, .L172+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L169:
	b	drawPlayer.part.0
.L173:
	.align	2
.L172:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawNPCS, %function
drawNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L183
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	lr, [r3]
	ldr	r4, [lr, #112]
	cmp	r4, #0
	ble	.L174
	ldr	r2, .L183+4
	ldr	r3, .L183+8
	ldrh	r7, [r2]
	mov	ip, #0
	ldrh	r6, [r3]
	ldr	r2, .L183+12
	ldr	r5, .L183+16
	add	lr, lr, #116
	b	.L178
.L182:
	ldrh	r3, [r2, #8]
	cmp	ip, r4
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	add	r2, r2, #8
	beq	.L174
.L178:
	ldr	r3, [lr], #4
	ldr	r1, [r3, #36]
	cmp	r1, #0
	add	ip, ip, #1
	bne	.L182
	add	r0, r3, #28
	ldm	r0, {r0, r8}
	add	r9, r8, #7
	cmp	r8, #0
	movlt	r8, r9
	add	r1, r0, #7
	cmp	r0, #0
	movlt	r0, r1
	ldr	r9, [r3, #64]
	ldr	r1, [r3, #52]
	asr	r8, r8, #3
	ldr	r10, [r3, #44]
	mla	r9, r1, r8, r9
	ldr	r1, [r3, #60]
	asr	r0, r0, #3
	mla	r0, r10, r0, r1
	add	r1, r3, #12
	ldm	r1, {r1, r8}
	sub	r3, r1, r7
	orr	r3, r3, r5
	add	r1, r0, r9, lsl #5
	cmp	ip, r4
	sub	r0, r8, r6
	strh	r1, [r2, #12]	@ movhi
	strh	r3, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	add	r2, r2, #8
	bne	.L178
.L174:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L184:
	.align	2
.L183:
	.word	currentLevel
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.word	-32768
	.size	drawNPCS, .-drawNPCS
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L189
	ldr	r3, [r3, #36]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L186
	ldr	r2, .L189+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L187:
	bl	drawNPCS
	ldr	r3, .L189+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L189+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L189+4
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L189+16
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	ldr	r1, .L189+20
	strh	r2, [ip, #16]	@ movhi
	ldr	r2, .L189+24
	ldr	r1, [r1]
	smull	lr, r0, r2, r3
	smull	lr, r2, r1, r2
	sub	r0, r0, r3, asr #31
	add	lr, r1, r1, lsr #31
	add	r3, r3, r3, lsr #31
	sub	r2, r2, r1, asr #31
	asr	r3, r3, #1
	asr	lr, lr, #1
	lsl	r1, r1, #16
	lsl	r3, r3, #16
	lsl	lr, lr, #16
	lsl	r0, r0, #16
	lsl	r2, r2, #16
	lsr	lr, lr, #16
	lsr	r1, r1, #16
	lsr	r3, r3, #16
	lsr	r0, r0, #16
	lsr	r2, r2, #16
	strh	r1, [ip, #18]	@ movhi
	strh	r3, [ip, #20]	@ movhi
	strh	lr, [ip, #22]	@ movhi
	strh	r0, [ip, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [ip, #26]	@ movhi
	bx	lr
.L186:
	bl	drawPlayer.part.0
	b	.L187
.L190:
	.align	2
.L189:
	.word	player
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawGame, .-drawGame
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	player,128,4
	.comm	level1,136,4
	.comm	level0,136,4
	.comm	currentLevel,4,4
	.comm	currentTarget,4,4
	.comm	gateUnlocked,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
