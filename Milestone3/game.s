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
	ldr	ip, [r1, #72]
	str	lr, [sp, #-4]!
	ldr	lr, [r1, #60]
	asr	r2, r2, #3
	mla	r2, lr, r2, ip
	ldr	ip, [r1, #48]
	ldr	lr, [r1, #68]
	asr	r0, r0, #3
	mla	r0, ip, r0, lr
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
	ldr	lr, [sp], #4
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
	.global	initLevels
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevels, %function
initLevels:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #512
	mov	lr, #256
	mov	ip, #38656
	mov	r0, #10368
	mov	r2, #4096
	mov	r7, #16384
	mov	r5, #177
	mov	r4, #64
	mov	r1, #4
	ldr	r3, .L8
	stmib	r3, {r6, lr}
	add	lr, lr, #194
	str	lr, [r3, #12]
	sub	lr, lr, #188
	str	lr, [r3, #20]
	str	ip, [r3, #28]
	ldr	lr, .L8+4
	ldr	ip, .L8+8
	str	lr, [r3, #36]
	str	ip, [r3, #40]
	ldr	lr, .L8+12
	ldr	ip, .L8+16
	str	r0, [r3, #44]
	add	r0, r0, #24064
	str	lr, [r3, #52]
	str	ip, [r3, #56]
	ldr	lr, .L8+20
	ldr	ip, .L8+24
	str	r0, [r3, #60]
	ldr	r0, .L8+28
	str	r7, [r3]
	str	r5, [r3, #16]
	str	r4, [r3, #24]
	str	lr, [r3, #68]
	str	ip, [r3, #72]
	str	r0, [r3, #76]
	str	r1, [r3, #80]
	str	r2, [r3, #32]
	str	r2, [r3, #48]
	str	r2, [r3, #64]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	level1
	.word	level1foregroundTiles
	.word	level1foregroundMap
	.word	level1midgroundTiles
	.word	level1midgroundMap
	.word	level1backgroundTiles
	.word	level1backgroundMap
	.word	level1foregroundPal
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
	push	{r4, lr}
	mov	r2, #0
	mov	r1, #1
	mov	r4, #8
	mov	lr, #16
	mov	ip, #20
	mov	r0, #2
	ldr	r3, .L12
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	ip, [r3, #44]
	str	r0, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #52]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	player
	.size	initPlayer, .-initPlayer
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Plant Merchant:\000"
	.align	2
.LC1:
	.ascii	"I like plants. Wow I sure do. I love plants so much"
	.ascii	" that I can't even handle it haha. Plants really ar"
	.ascii	"e my favorite!\000"
	.align	2
.LC2:
	.ascii	"I hate plants.\000"
	.align	2
.LC3:
	.ascii	"I love plants, too.\000"
	.align	2
.LC4:
	.ascii	"How could you say that? Plants bring us life, light"
	.ascii	", and joy. :(\000"
	.align	2
.LC5:
	.ascii	"I'm so happy to hear that! I'm glad that they bring"
	.ascii	" you joy the same way they do for me!\000"
	.text
	.align	2
	.global	initNPCS
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNPCS, %function
initNPCS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L18
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #1
	mov	r3, r0
	mov	r1, #0
	mov	fp, #8
	mov	r10, #16
	mov	ip, #2
	mov	r9, #512
	ldr	r8, .L18+4
	ldr	r7, .L18+8
	ldr	r6, .L18+12
	ldr	r5, .L18+16
	ldr	r4, .L18+20
.L15:
	ldr	lr, .L18+24
	str	lr, [r3, #104]
	ldr	lr, .L18+28
	str	lr, [r3, #108]
	ldr	lr, .L18+32
	str	lr, [r3, #128]
	ldr	lr, .L18+36
	str	r2, [r3]
	str	r1, [r3, #36]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	fp, [r3, #28]
	str	r10, [r3, #32]
	str	r2, [r3, #44]
	str	r1, [r3, #52]
	str	ip, [r3, #56]
	str	r2, [r3, #60]
	str	r1, [r3, #64]
	str	r8, [r3, #72]
	str	r7, [r3, #76]
	str	r9, [r3, #80]
	str	r6, [r3, #372]
	str	r2, [r3, #84]
	str	r2, [r3, #88]
	str	ip, [r3, #92]
	str	r1, [r3, #96]
	str	r5, [r3, #100]
	str	r1, [r3, #112]
	str	r2, [r3, #124]
	str	r1, [r3, #140]
	str	r2, [r3, #152]
	str	r4, [r3, #156]
	str	r1, [r3, #364]
	str	r1, [r3, #368]
	add	r3, r3, #420
	cmp	r3, lr
	bne	.L15
	mov	r3, #177
	mov	r9, #241
	mov	r8, #208
	mov	r7, #178
	mov	r6, #240
	mov	r5, #3
	mov	r4, #172
	mov	lr, #135
	str	r3, [r0, #856]
	add	r3, r3, #126
	str	r9, [r0, #12]
	str	r8, [r0, #436]
	str	r7, [r0, #432]
	str	r6, [r0, #852]
	str	r5, [r0, #1216]
	str	r4, [r0, #1276]
	str	lr, [r0, #1272]
	str	r1, [r0, #376]
	str	ip, [r0, #796]
	str	r2, [r0, #1636]
	str	r3, [r0, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	npcs
	.word	talkingheadtestBitmap
	.word	talkingheadtestPal
	.word	.LC0
	.word	.LC1
	.word	.LC5
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	npcs+1680
	.size	initNPCS, .-initNPCS
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
	bl	initLevels
	mov	r4, #8
	mov	lr, #16
	mov	r2, #0
	mov	r1, #1
	mov	ip, #20
	mov	r0, #2
	ldr	r3, .L22
	str	r4, [r3, #28]
	str	lr, [r3, #32]
	pop	{r4, lr}
	str	r2, [r3]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	ip, [r3, #44]
	str	r0, [r3, #64]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #52]
	b	initNPCS
.L23:
	.align	2
.L22:
	.word	player
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
	push	{r4, r5, r6, lr}
	mov	ip, #67108864
	mov	r4, r0
	ldrsh	r3, [r0]
	orr	r0, r3, #7296
	orr	r2, r3, #6784
	orr	r0, r0, #4
	orr	r3, r3, #7808
	orr	r2, r2, #8
	lsl	r0, r0, #16
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r0, r0, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r3, [ip, #8]	@ movhi
	ldr	r1, [r4, #76]
	ldr	r5, .L26
	strh	r0, [ip, #10]	@ movhi
	mov	r3, #256
	strh	r2, [ip, #12]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #28]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #36]
	mov	r2, #100663296
	mov	r0, #3
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #32]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r4, #40]
	mov	r0, #3
	ldr	r2, .L26+4
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L26+8
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #20]
	ldr	lr, .L26+12
	ldr	ip, [r4, #24]
	str	r4, [r3]
	ldr	r0, .L26+16
	ldr	r3, .L26+20
	str	r5, [lr]
	str	ip, [r0]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L27:
	.align	2
.L26:
	.word	DMANow
	.word	100724736
	.word	currentLevel
	.word	hOff
	.word	vOff
	.word	player
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
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L93
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r4, .L93+4
	sub	sp, sp, #20
	beq	.L30
	ldr	r7, .L93+8
.L31:
	ldr	r3, .L93
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L34
	ldr	r2, [r7]
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #32]
	ldr	r0, [r2, #8]
	add	r3, r1, r3
	cmp	r3, r0
	blt	.L88
.L34:
	ldr	r3, .L93
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L37
	ldr	r1, [r4, #16]
	cmp	r1, #0
	ble	.L37
	ldr	r2, [r7]
	ldr	r3, [r4, #12]
	ldr	r0, [r2, #4]
	mul	ip, r0, r3
	ldr	r2, .L93+12
	ldr	lr, [r4, #24]
	ldr	r2, [r2]
	sub	r1, r1, lr
	add	r2, r2, r1
	ldrb	ip, [r2, ip]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L37
	ldr	ip, [r4, #32]
	add	r3, r3, ip
	sub	r3, r3, #1
	mul	r3, r0, r3
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r2, .L93+16
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #16]
	ble	.L37
	sub	r1, r1, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
.L37:
	ldr	r3, .L93
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L40
	ldr	r1, [r7]
	ldr	r0, [r4, #16]
	ldr	r3, [r4, #28]
	ldr	ip, [r1, #4]
	add	r3, r0, r3
	cmp	r3, ip
	blt	.L89
.L40:
	ldr	r9, .L93+20
	ldrh	r3, [r9]
	tst	r3, #8
	beq	.L42
	ldr	r3, .L93+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L90
.L42:
	ldr	r3, [r7]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	ble	.L48
	mov	r6, #0
	ldr	r5, .L93+28
	ldr	r8, .L93+32
	ldr	r10, .L93+24
	ldr	fp, .L93+36
.L47:
	add	r2, r5, #12
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #32]
	ldr	r1, [r5, #28]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #12]
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	add	r6, r6, #1
	beq	.L46
	ldrh	r3, [r9]
	tst	r3, #1
	beq	.L46
	ldrh	r3, [r10]
	tst	r3, #1
	beq	.L91
.L46:
	ldr	r3, [r7]
	ldr	r3, [r3, #80]
	cmp	r3, r6
	add	r5, r5, #420
	bgt	.L47
.L48:
	ldr	r5, [r4, #40]
	ldr	r6, .L93+40
	mov	r0, r5
	ldr	r1, [r4, #44]
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	bne	.L92
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r5, #1
	str	r1, [r4, #60]
	str	r5, [r4, #40]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L30:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	ldr	r7, .L93+8
	ble	.L31
	ldr	r1, .L93+12
	ldr	r3, [r7]
	ldr	r0, [r4, #20]
	ldr	r1, [r1]
	ldr	r3, [r3, #4]
	sub	r2, r2, r0
	mla	r3, r2, r3, r1
	ldr	r1, [r4, #16]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r1
	beq	.L31
	ldr	r1, [r4, #28]
	add	r3, r3, r1
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r1, .L93+44
	ldr	r3, [r1]
	cmp	r3, #0
	str	r2, [r4, #12]
	ble	.L31
	sub	r2, r2, r3
	cmp	r2, #80
	suble	r3, r3, #1
	strle	r3, [r1]
	b	.L31
.L92:
	add	r5, r5, #1
	str	r5, [r4, #40]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L88:
	ldr	r5, .L93+12
	ldr	ip, [r4, #20]
	ldr	lr, [r2, #4]
	sub	r3, r3, #1
	ldr	r2, [r5]
	add	r3, r3, ip
	mla	r3, lr, r3, r2
	ldr	r2, [r4, #16]
	ldrb	lr, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	add	r3, r3, r2
	beq	.L34
	ldr	r2, [r4, #28]
	add	r3, r3, r2
	ldrb	r3, [r3, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L34
	ldr	r5, .L93+44
	ldr	lr, [r5]
	sub	r2, r0, #160
	add	r3, r1, ip
	cmp	r2, lr
	str	r3, [r4, #12]
	ble	.L34
	sub	r3, r3, lr
	cmp	r3, #80
	addgt	lr, lr, #1
	strgt	lr, [r5]
	b	.L34
.L89:
	ldr	r2, [r4, #12]
	mul	r5, r2, ip
	ldr	r1, .L93+12
	ldr	lr, [r4, #24]
	ldr	r1, [r1]
	sub	r3, r3, #1
	add	r3, r3, lr
	add	r3, r1, r3
	ldrb	r1, [r3, r5]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L40
	ldr	r1, [r4, #32]
	add	r2, r2, r1
	sub	r2, r2, #1
	mul	r2, ip, r2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	ldr	r5, .L93+16
	ldr	r1, [r5]
	sub	r3, ip, #240
	add	r2, r0, lr
	cmp	r3, r1
	str	r2, [r4, #16]
	ble	.L40
	sub	r2, r2, r1
	cmp	r2, #120
	addgt	r1, r1, #1
	strgt	r1, [r5]
	b	.L40
.L91:
	ldr	r3, .L93+48
	str	r5, [fp]
	mov	lr, pc
	bx	r3
	b	.L46
.L90:
	ldr	r3, .L93+52
	mov	lr, pc
	bx	r3
	b	.L42
.L94:
	.align	2
.L93:
	.word	67109120
	.word	player
	.word	currentLevel
	.word	.LANCHOR0
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	npcs
	.word	collision
	.word	currentTarget
	.word	__aeabi_idivmod
	.word	vOff
	.word	goToDialogue
	.word	goToPause
	.size	updatePlayer, .-updatePlayer
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
	ldr	r4, .L99
	ldr	r5, [r4, #40]
	ldr	r1, [r4, #44]
	mov	r0, r5
	ldr	r6, .L99+4
	mov	lr, pc
	bx	r6
	cmp	r1, #0
	addne	r5, r5, #1
	bne	.L97
	add	r0, r4, #60
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	mov	r5, #1
	str	r1, [r4, #60]
.L97:
	str	r5, [r4, #40]
	pop	{r4, r5, r6, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	player
	.word	__aeabi_idivmod
	.size	animatePlayer, .-animatePlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L107
	ldr	r7, .L107+4
	ldr	r5, .L107+8
	add	r6, r4, #1680
.L104:
	ldr	r2, [r4, #40]
	smull	r3, r1, r7, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r1, [r4, #376]
	cmp	r2, r3, lsl #2
	str	r1, [r4, #44]
	addne	r2, r2, #1
	bne	.L103
	add	r0, r4, #52
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r5
	mov	r2, #1
	str	r1, [r4, #52]
.L103:
	str	r2, [r4, #40]
	add	r4, r4, #420
	cmp	r4, r6
	bne	.L104
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L108:
	.align	2
.L107:
	.word	npcs
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
	pop	{r4, lr}
	b	animateNPCS
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
	ldr	r3, .L116
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L113
	ldr	r2, .L116+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L113:
	b	drawPlayer.part.0
.L117:
	.align	2
.L116:
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
	ldr	r2, .L124
	ldr	r1, .L124+4
	ldr	r3, .L124+8
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	ip, .L124+12
	ldrh	r4, [r2]
	ldrh	r5, [r1]
	ldr	r2, .L124+16
	ldr	lr, .L124+20
	add	r0, r3, #1680
.L121:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	beq	.L119
	ldrh	r1, [r2, #8]
	orr	r1, r1, #512
	strh	r1, [r2, #8]	@ movhi
.L120:
	add	r3, r3, #420
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L121
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L119:
	add	r1, r3, #28
	ldm	r1, {r1, r6}
	add	r8, r6, #7
	cmp	r6, #0
	movlt	r6, r8
	add	r7, r1, #7
	cmp	r1, #0
	movlt	r1, r7
	ldr	r9, [r3, #52]
	ldr	r7, [r3, #64]
	asr	r6, r6, #3
	mla	r6, r9, r6, r7
	ldr	r8, [r3, #44]
	ldr	r7, [r3, #60]
	asr	r1, r1, #3
	mla	r8, r1, r8, r7
	add	r1, r3, #12
	ldm	r1, {r1, r7}
	sub	r1, r1, r5
	and	r1, r1, #255
	sub	r7, r7, r4
	add	r6, r8, r6, lsl #5
	orr	r1, r1, lr
	and	r7, r7, ip
	strh	r6, [r2, #12]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	strh	r7, [r2, #10]	@ movhi
	b	.L120
.L125:
	.align	2
.L124:
	.word	hOff
	.word	vOff
	.word	npcs
	.word	511
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
	ldr	r3, .L130
	ldr	r3, [r3, #36]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L127
	ldr	r2, .L130+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L128:
	bl	drawNPCS
	ldr	r3, .L130+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L130+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L130+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L130+16
	ldrh	r1, [r2]
	ldr	r2, .L130+20
	ldrh	r2, [r2]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L127:
	bl	drawPlayer.part.0
	b	.L128
.L131:
	.align	2
.L130:
	.word	player
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	glitchVisuals
	.syntax unified
	.arm
	.fpu softvfp
	.type	glitchVisuals, %function
glitchVisuals:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r8, r0, #0
	ble	.L139
	mov	r7, #0
	ldr	r4, .L140
	ldr	r6, .L140+4
	ldr	r5, .L140+8
	ldr	fp, .L140+12
	ldr	r10, .L140+16
	ldr	r9, .L140+20
.L134:
	mov	ip, #0
	ldr	r2, [r6]
	ldr	r3, [r2, #44]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #52]
	mov	r0, #3
	mov	r2, r10
	asr	r3, r3, #1
	str	ip, [r4, #24]
	str	ip, [r4, #20]
	str	ip, [r4, #444]
	str	ip, [r4, #440]
	str	ip, [r4, #864]
	str	ip, [r4, #860]
	str	ip, [r4, #1284]
	str	ip, [r4, #1280]
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #48]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #56]
	mov	r0, #3
	mov	r2, r9
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #60]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #68]
	mov	r0, #3
	ldr	r2, .L140+24
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #64]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #72]
	mov	r0, #3
	ldr	r2, .L140+28
	asr	r3, r3, #1
	add	r7, r7, #1
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	fp
	cmp	r8, r7
	bne	.L134
.L133:
	mov	r0, #1
	ldr	r2, [r6]
	str	r0, [r4, #24]
	ldr	r1, [r2, #76]
	str	r0, [r4, #20]
	str	r0, [r4, #444]
	str	r0, [r4, #440]
	str	r0, [r4, #864]
	str	r0, [r4, #860]
	str	r0, [r4, #1284]
	str	r0, [r4, #1280]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #28]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #36]
	mov	r0, #3
	mov	r2, #100663296
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	ldr	r2, [r6]
	ldr	r3, [r2, #32]
	add	r3, r3, r3, lsr #31
	ldr	r1, [r2, #40]
	mov	r0, #3
	ldr	r2, .L140+32
	asr	r3, r3, #1
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L140+36
	ldr	r1, .L140+40
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r2, .L140+44
	ldr	r1, .L140+48
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r3, .L140+52
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L140+56
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L139:
	ldr	r4, .L140
	ldr	r6, .L140+4
	ldr	r5, .L140+8
	b	.L133
.L141:
	.align	2
.L140:
	.word	npcs
	.word	currentLevel
	.word	DMANow
	.word	waitForVBlank
	.word	100679680
	.word	100718592
	.word	100696064
	.word	100712448
	.word	100724736
	.word	100728832
	.word	SPRITESHEETTiles
	.word	83886592
	.word	SPRITESHEETPal
	.word	hideSprites
	.word	shadowOAM
	.size	glitchVisuals, .-glitchVisuals
	.global	level1collisionmap
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	npcs,2100,4
	.comm	player,76,4
	.comm	level1,2184,4
	.comm	currentLevel,4,4
	.comm	currentTarget,4,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	level1collisionmap, %object
	.size	level1collisionmap, 4
level1collisionmap:
	.word	level1collisionmapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
