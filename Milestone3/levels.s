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
	mov	r8, #0
	ldr	r6, .L8+4
	mov	r1, r0
	mov	r3, #272
	ldr	r2, .L8+8
	mov	r4, r0
	ldr	r7, .L8+12
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r1, .L8+16
	ldr	r2, .L8+20
	ldr	r3, [r6]
	mla	r2, r3, r2, r1
	ldr	r1, .L8+24
	cmp	r1, r2, ror #2
	strh	r8, [r5]	@ movhi
	bcs	.L7
	add	r3, r3, #1
	str	r3, [r6]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L7:
	mov	r1, r4
	mov	r2, #100663296
	mov	r0, #3
	mov	r3, #3840
	mov	lr, pc
	bx	r7
	ldrh	r3, [r5, #16]
	add	r3, r3, r4
	strh	r3, [r5, #16]	@ movhi
	ldr	r3, .L8+28
	str	r8, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+32
	ldr	r9, [r3]
	mov	r0, r4
	mov	r1, r9
	ldr	r3, .L8+36
	mov	lr, pc
	bx	r3
	mov	r4, #10
	ldr	r5, .L8+40
	ldr	r8, .L8+44
	ldr	r10, .L8+48
	add	r5, r5, r1
.L3:
	mov	r2, #0
	mov	r1, #1
	mov	r0, r5
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r10
	subs	r4, r4, #1
	bne	.L3
	mov	r1, r9
	mov	r0, r5
	mov	r2, #1
	mov	lr, pc
	bx	r8
	mov	r3, #3840
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L8+52
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
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
	.global	glitchPalette
	.syntax unified
	.arm
	.fpu softvfp
	.type	glitchPalette, %function
glitchPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r6, r0, #0
	ldrle	r5, .L19
	ble	.L11
	mov	r4, #0
	ldr	r8, .L19+4
	ldr	r7, .L19+8
	ldr	r5, .L19
	ldr	fp, .L19+12
	b	.L13
.L12:
	cmp	r6, r4
	beq	.L11
.L13:
	mov	lr, pc
	bx	r8
	ldr	r9, [r7, #12]
	cmp	r9, #0
	add	r4, r4, #1
	bne	.L12
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	ldr	r3, .L19+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L19+20
	add	r10, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L19+24
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r9
	mov	r1, #500
	ldr	ip, .L19+28
	mov	r0, r10
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r5
	mov	r9, r0
	mov	lr, pc
	bx	r5
	rsbs	r3, r9, #0
	and	r3, r3, #15
	and	r9, r9, #15
	rsbpl	r9, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	and	r0, r0, #15
	rsbpl	r0, r3, #0
	lsl	r9, r9, #1
	lsl	r0, r0, #1
	add	r9, r9, #83886080
	add	r0, r0, #83886080
	ldrh	r3, [r9]
	ldrh	r2, [r0]
	cmp	r6, r4
	strh	r2, [r9]	@ movhi
	strh	r3, [r0]	@ movhi
	bne	.L13
.L11:
	mov	lr, pc
	bx	r5
	ldr	r3, .L19+32
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	cmp	r0, #1
	ble	.L10
	ldr	r3, .L19+36
	mov	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L19+40
	mov	lr, pc
	bx	r3
.L10:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	rand
	.word	waitForVBlank
	.word	soundB
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	1717986919
	.word	currentLevel
	.word	loadLevel
	.size	glitchPalette, .-glitchPalette
	.align	2
	.global	glitchDMA
	.syntax unified
	.arm
	.fpu softvfp
	.type	glitchDMA, %function
glitchDMA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r6, r0, #0
	ble	.L24
	mov	r5, #0
	ldr	r3, .L28
	ldr	r4, .L28+4
	ldr	fp, [r3]
	ldr	r10, .L28+8
	ldr	r9, .L28+12
	ldr	r8, .L28+16
.L23:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r4
	mov	r7, r0
	mov	lr, pc
	bx	r4
	ldr	r3, .L28+20
	smull	r2, r3, r0, r3
	asr	r2, r0, #31
	rsb	r2, r2, r3, asr #1
	add	r2, r2, r2, lsl #2
	sub	r2, r0, r2
	lsl	r2, r2, #14
	mov	r3, r4
	add	r2, r2, #100663296
	mov	r1, r7
	mov	r0, #3
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r4
	mov	r1, fp
	mov	lr, pc
	bx	r8
	ldr	r3, .L28+24
	mov	r2, #0
	add	r0, r3, r1
	add	r5, r5, #1
	mov	r1, #1
	ldr	r3, .L28+28
	mov	lr, pc
	bx	r3
	cmp	r6, r5
	bne	.L23
.L24:
	ldr	r3, .L28+32
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	trackA_length
	.word	rand
	.word	waitForVBlank
	.word	DMANow
	.word	__aeabi_uidivmod
	.word	1717986919
	.word	trackA_data
	.word	playSoundA
	.word	goToGame
	.size	glitchDMA, .-glitchDMA
	.align	2
	.global	crushPalette
	.syntax unified
	.arm
	.fpu softvfp
	.type	crushPalette, %function
crushPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r5, r0, #0
	ble	.L31
	mov	r4, #0
	ldr	r8, .L36
	ldr	r7, .L36+4
	ldr	r6, .L36+8
	ldr	fp, .L36+12
	b	.L33
.L32:
	cmp	r5, r4
	beq	.L31
.L33:
	mov	lr, pc
	bx	r8
	ldr	r9, [r7, #12]
	cmp	r9, #0
	add	r4, r4, #1
	bne	.L32
	mov	lr, pc
	bx	r6
	ldr	r1, [fp]
	ldr	r3, .L36+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+20
	add	r10, r3, r1
	mov	lr, pc
	bx	r6
	mov	r1, r0
	ldr	r3, .L36+24
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	sub	r3, r1, ip
	mov	r2, r9
	mov	r1, #500
	ldr	ip, .L36+28
	mov	r0, r10
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r6
	mov	r9, r0
	mov	lr, pc
	bx	r6
	rsbs	r3, r9, #0
	and	r3, r3, #15
	and	r9, r9, #15
	rsbpl	r9, r3, #0
	rsbs	r3, r0, #0
	and	r3, r3, #15
	lsl	r9, r9, #1
	and	r0, r0, #15
	add	r9, r9, #83886080
	rsbpl	r0, r3, #0
	lsl	r0, r0, #1
	ldrh	r3, [r9]
	add	r0, r0, #83886080
	cmp	r5, r4
	strh	r3, [r0]	@ movhi
	bne	.L33
.L31:
	ldr	r3, .L36+32
	mov	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L36+36
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	waitForVBlank
	.word	soundB
	.word	rand
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
	.word	currentLevel
	.word	loadLevel
	.size	crushPalette, .-crushPalette
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
	ldr	r3, .L40
	str	lr, [r3]
	ldr	lr, .L40+4
	str	lr, [r3, #40]
	ldr	lr, .L40+8
	str	r1, [r3, #64]
	str	lr, [r3, #44]
	ldr	r1, .L40+12
	ldr	lr, .L40+16
	str	r1, [r3, #80]
	str	lr, [r3, #32]
	ldr	r1, .L40+20
	ldr	lr, .L40+24
	str	r1, [r3, #60]
	str	lr, [r3, #56]
	ldr	r1, .L40+28
	ldr	lr, .L40+32
	str	r1, [r3, #88]
	str	lr, [r3, #48]
	ldr	r1, .L40+36
	ldr	lr, .L40+40
	str	r1, [r3, #76]
	str	lr, [r3, #72]
	ldr	r1, .L40+44
	ldr	lr, .L40+48
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
.L41:
	.align	2
.L40:
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
	ldr	r3, .L51
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	ip, .L51+4
	ldr	r3, .L51+8
	ldr	r2, [ip]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	beq	.L43
	ldr	r1, .L51+12
	ldr	r3, .L51+16
	add	r0, r2, #1
	ldr	r3, [r3]
	ldr	r2, [r1]
.L44:
	ldr	lr, .L51+20
	cmp	r2, #10
	ldr	r2, [lr]
	bne	.L49
	cmp	r2, #49
	movle	r4, #0
	addle	r2, r2, #1
	strle	r2, [lr]
	strle	r4, [r1]
.L49:
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
.L43:
	ldr	r2, .L51+24
	ldr	r1, .L51+16
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r3, [r1]
	addne	r3, r3, #1
	subeq	r3, r3, #1
	cmp	r3, #14
	str	r3, [r1]
	movle	r1, #1
	strle	r1, [r2]
	ble	.L48
	cmp	r3, #24
	movgt	r1, #0
	strgt	r1, [r2]
.L48:
	mov	r0, #1
	ldr	r1, .L51+12
	ldr	r2, [r1]
	add	r2, r2, r0
	str	r2, [r1]
	b	.L44
.L52:
	.align	2
.L51:
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
	ldr	r3, .L55
	ldr	ip, .L55+4
	str	ip, [r3, #40]
	ldr	ip, .L55+8
	str	lr, [r3, #36]
	str	ip, [r3, #44]
	ldr	lr, .L55+12
	ldr	ip, .L55+16
	str	lr, [r3, #32]
	str	r2, [r3]
	str	ip, [r3, #80]
	str	r0, [r3, #84]
	ldr	lr, [sp], #4
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r3, .L59
	ldr	ip, .L59+4
	str	ip, [r3, #40]
	ldr	ip, .L59+8
	str	ip, [r3, #44]
	ldr	ip, .L59+12
	str	r4, [r3, #32]
	str	lr, [r3, #36]
	str	r2, [r3]
	str	ip, [r3, #80]
	str	r0, [r3, #84]
	pop	{r4, lr}
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L63
	str	r0, [r3, #12]
	add	r0, r0, #194
	str	r0, [r3, #16]
	sub	r0, r0, #188
	str	r0, [r3, #24]
	ldr	r0, .L63+4
	str	r0, [r3, #4]
	ldr	r0, .L63+8
	str	lr, [r3, #84]
	str	r0, [r3, #40]
	ldr	lr, .L63+12
	ldr	r0, .L63+16
	str	lr, [r3, #44]
	str	r0, [r3, #48]
	ldr	lr, .L63+20
	ldr	r0, .L63+24
	str	lr, [r3, #56]
	str	r0, [r3, #60]
	ldr	lr, .L63+28
	ldr	r0, .L63+32
	str	lr, [r3, #64]
	str	r0, [r3, #72]
	ldr	lr, .L63+36
	ldr	r0, .L63+40
	str	lr, [r3, #76]
	str	r0, [r3, #80]
	ldr	lr, .L63+44
	ldr	r0, .L63+48
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
	str	r1, [r3, #112]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r4, .L67
	str	r3, [r4, #24]
	ldr	r3, .L67+4
	str	r1, [r4]
	ldr	r1, .L67+8
	str	r3, [r4, #28]
	ldr	r3, .L67+12
	str	lr, [r4, #20]
	str	ip, [r4, #8]
	str	r1, [r4, #4]
	str	r2, [r4, #112]
	str	r5, [r4, #16]
	str	r0, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+16
	str	r0, [r4, #116]
	mov	lr, pc
	bx	r3
	ldr	r3, .L67+20
	str	r0, [r4, #120]
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
	ldr	r2, .L67+24
	str	r2, [r4, #40]
	ldr	r2, .L67+28
	str	r2, [r4, #44]
	ldr	r2, .L67+32
	str	r2, [r4, #80]
	ldr	r2, .L67+36
	str	r2, [r4, #56]
	ldr	r2, .L67+40
	str	r0, [r4, #124]
	str	r2, [r4, #60]
	ldr	r0, .L67+44
	ldr	r2, .L67+48
	str	r0, [r4, #88]
	str	r2, [r4, #72]
	ldr	r0, .L67+52
	ldr	r2, .L67+56
	str	r0, [r4, #76]
	str	r2, [r4, #96]
	ldr	r0, .L67+60
	ldr	r2, .L67+64
	str	r8, [r4, #32]
	str	r7, [r4, #84]
	str	r6, [r4, #48]
	str	r5, [r4, #92]
	str	lr, [r4, #64]
	str	ip, [r4, #100]
	str	r0, [r4, #108]
	str	r3, [r4, #36]
	str	r3, [r4, #52]
	str	r3, [r4, #68]
	str	r1, [r2]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L68:
	.align	2
.L67:
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
	.align	2
	.global	initLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel2, %function
initLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #10
	push	{r4, r5, r6, lr}
	mov	lr, #64
	mov	r6, #118
	mov	r5, #460
	mov	r4, #0
	mov	r2, #256
	mov	ip, #2048
	mov	r1, #4
	ldr	r3, .L71
	str	r0, [r3, #24]
	ldr	r0, .L71+4
	str	r0, [r3, #28]
	ldr	r0, .L71+8
	str	lr, [r3, #32]
	str	r0, [r3, #40]
	ldr	lr, .L71+12
	ldr	r0, .L71+16
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3]
	str	lr, [r3, #44]
	str	ip, [r3, #36]
	str	r0, [r3, #80]
	str	r1, [r3, #84]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L72:
	.align	2
.L71:
	.word	level2
	.word	347
	.word	level2foregroundTiles
	.word	level2foregroundMap
	.word	level2foregroundPal
	.size	initLevel2, .-initLevel2
	.align	2
	.global	unlockGateLevel0
	.syntax unified
	.arm
	.fpu softvfp
	.type	unlockGateLevel0, %function
unlockGateLevel0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #7360
	mov	ip, #4096
	push	{r4, lr}
	ldr	r3, .L75
	ldr	r2, .L75+4
	ldr	lr, .L75+8
	ldr	r0, .L75+12
	str	r1, [r3, #32]
	ldr	r1, .L75+16
	str	r2, [r3, #40]
	ldr	r2, .L75+20
	str	lr, [r3, #44]
	str	ip, [r3, #36]
	str	r0, [r3, #4]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L76:
	.align	2
.L75:
	.word	level0
	.word	level0foreground2Tiles
	.word	level0foreground2Map
	.word	level0collisionmap2Bitmap
	.word	currentLevel
	.word	goToGame
	.size	unlockGateLevel0, .-unlockGateLevel0
	.comm	movingUp,4,4
	.comm	sunAniTimer,4,4
	.comm	textAniTimer,4,4
	.comm	vOffBG2,4,4
	.comm	vOffBG1,4,4
	.comm	vOffBG0,4,4
	.comm	level0AniTimer,4,4
	.comm	level2,136,4
	.comm	level0,136,4
	.comm	pauseLevel,136,4
	.comm	instructionsLevel,136,4
	.comm	startLevel,136,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
