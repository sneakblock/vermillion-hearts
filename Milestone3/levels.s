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
	.global	animateLevel2
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateLevel2, %function
animateLevel2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L16
	ldr	r3, .L16+4
	ldr	r2, [r2, #80]
	cmp	r2, r3
	bxeq	lr
	push	{r4, lr}
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+12
	mov	r1, r0
	mov	r3, #1920
	ldr	r2, .L16+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #83886080
	mov	r2, #0
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	player
	.word	seerMaster
	.word	rand
	.word	DMANow
	.word	100696064
	.size	animateLevel2, .-animateLevel2
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
	ldrle	r5, .L27
	ble	.L19
	mov	r4, #0
	ldr	r8, .L27+4
	ldr	r7, .L27+8
	ldr	r5, .L27
	ldr	fp, .L27+12
	b	.L21
.L20:
	cmp	r6, r4
	beq	.L19
.L21:
	mov	lr, pc
	bx	r8
	ldr	r9, [r7, #12]
	cmp	r9, #0
	add	r4, r4, #1
	bne	.L20
	mov	lr, pc
	bx	r5
	ldr	r1, [fp]
	ldr	r3, .L27+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+20
	add	r10, r3, r1
	mov	lr, pc
	bx	r5
	mov	r1, r0
	ldr	r3, .L27+24
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
	ldr	ip, .L27+28
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
	bne	.L21
.L19:
	mov	lr, pc
	bx	r5
	ldr	r3, .L27+32
	smull	r1, r2, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	cmp	r0, #1
	ble	.L18
	ldr	r3, .L27+36
	mov	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L27+40
	mov	lr, pc
	bx	r3
.L18:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L28:
	.align	2
.L27:
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
	ble	.L32
	mov	r5, #0
	ldr	r3, .L36
	ldr	r4, .L36+4
	ldr	fp, [r3]
	ldr	r10, .L36+8
	ldr	r9, .L36+12
	ldr	r8, .L36+16
.L31:
	mov	lr, pc
	bx	r10
	mov	lr, pc
	bx	r4
	mov	r7, r0
	mov	lr, pc
	bx	r4
	ldr	r3, .L36+20
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
	ldr	r3, .L36+24
	mov	r2, #0
	add	r0, r3, r1
	add	r5, r5, #1
	mov	r1, #1
	ldr	r3, .L36+28
	mov	lr, pc
	bx	r3
	cmp	r6, r5
	bne	.L31
.L32:
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	push	{r4, r5, r6, lr}
	ldr	r3, .L50
	ldr	r4, .L50+4
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r4
	mov	r3, #83886080
	rsbs	r2, r0, #0
	and	r2, r2, #31
	and	r0, r0, #31
	rsbpl	r0, r2, #0
	lsl	r0, r0, #1
	add	r0, r0, r3
	ldrh	r1, [r0]
	ldr	r0, .L50+8
	b	.L44
.L39:
	add	r3, r3, #2
	cmp	r3, r0
	beq	.L41
.L44:
	ldrh	r2, [r3]
	cmp	r2, r1
	beq	.L39
	mov	r2, #83886080
	strh	r1, [r3]	@ movhi
	ldr	r0, .L50+8
	b	.L42
.L40:
	add	r2, r2, #2
	cmp	r2, r0
	beq	.L41
.L42:
	ldrh	r3, [r2]
	cmp	r3, r1
	beq	.L40
	strh	r1, [r2]	@ movhi
.L41:
	ldr	r3, .L50+12
	ldr	r5, [r3, #12]
	cmp	r5, #0
	beq	.L49
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	mov	lr, pc
	bx	r4
	ldr	r2, .L50+16
	ldr	r3, .L50+20
	ldr	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r6, .L50+24
	add	r6, r6, r1
	mov	lr, pc
	bx	r4
	mov	r3, r0
	ldr	ip, .L50+28
	smull	r1, r2, ip, r0
	asr	ip, r0, #31
	rsb	ip, ip, r2, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	mov	r0, r6
	mov	r2, r5
	ldr	r4, .L50+32
	mov	r1, #1000
	sub	r3, r3, ip
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	waitForVBlank
	.word	rand
	.word	83886144
	.word	soundB
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	797831567
	.word	playSoundB
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
	mov	r1, #0
	push	{r4, r5, lr}
	mov	lr, #16
	mov	r2, #2048
	mov	r5, #10
	mov	r4, #1888
	mov	ip, #4
	mov	r0, #1
	ldr	r3, .L54
	str	r1, [r3]
	str	r1, [r3, #8]
	ldr	r1, .L54+4
	str	r1, [r3, #64]
	ldr	r1, .L54+8
	str	lr, [r3, #116]
	str	r1, [r3, #68]
	ldr	lr, .L54+12
	ldr	r1, .L54+16
	str	lr, [r3, #56]
	str	r1, [r3, #104]
	ldr	lr, .L54+20
	ldr	r1, .L54+24
	str	lr, [r3, #80]
	str	r1, [r3, #84]
	ldr	lr, .L54+28
	ldr	r1, .L54+32
	str	lr, [r3, #72]
	str	r1, [r3, #112]
	ldr	lr, .L54+36
	ldr	r1, .L54+40
	str	lr, [r3, #96]
	str	r1, [r3, #100]
	ldr	lr, .L54+44
	ldr	r1, .L54+48
	str	r5, [r3, #108]
	str	r4, [r3, #88]
	str	lr, [r3, #120]
	str	ip, [r3, #124]
	str	r2, [r3, #60]
	str	r2, [r3, #76]
	str	r2, [r3, #92]
	str	r0, [r1]
	pop	{r4, r5, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	startLevel
	.word	startforegroundTiles
	.word	startforegroundMap
	.word	5728
	.word	startforegroundPal
	.word	startmidgroundTiles
	.word	startmidgroundMap
	.word	7968
	.word	startmidgroundPal
	.word	startbackgroundTiles
	.word	startbackgroundMap
	.word	startbackgroundPal
	.word	movingUp
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
	ldr	r3, .L65
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	ip, .L65+4
	ldr	r3, .L65+8
	ldr	r2, [ip]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r2, r3, lsl #2
	beq	.L57
	ldr	r1, .L65+12
	ldr	r3, .L65+16
	add	r0, r2, #1
	ldr	r3, [r3]
	ldr	r2, [r1]
.L58:
	ldr	lr, .L65+20
	cmp	r2, #10
	ldr	r2, [lr]
	bne	.L63
	cmp	r2, #49
	movle	r4, #0
	addle	r2, r2, #1
	strle	r2, [lr]
	strle	r4, [r1]
.L63:
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
.L57:
	ldr	r2, .L65+24
	ldr	r1, .L65+16
	ldr	r3, [r2]
	cmp	r3, #0
	ldr	r3, [r1]
	addne	r3, r3, #1
	subeq	r3, r3, #1
	cmp	r3, #14
	str	r3, [r1]
	movle	r1, #1
	strle	r1, [r2]
	ble	.L62
	cmp	r3, #24
	movgt	r1, #0
	strgt	r1, [r2]
.L62:
	mov	r0, #1
	ldr	r1, .L65+12
	ldr	r2, [r1]
	add	r2, r2, r0
	str	r2, [r1]
	b	.L58
.L66:
	.align	2
.L65:
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
	mov	r0, #512
	ldr	r3, .L69
	ldr	ip, .L69+4
	str	ip, [r3, #64]
	ldr	ip, .L69+8
	str	lr, [r3, #60]
	str	ip, [r3, #68]
	ldr	lr, .L69+12
	ldr	ip, .L69+16
	str	lr, [r3, #56]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	ip, [r3, #104]
	str	r0, [r3, #108]
	ldr	lr, [sp], #4
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L70:
	.align	2
.L69:
	.word	instructionsLevel
	.word	instructionsforegroundTiles
	.word	instructionsforegroundMap
	.word	19072
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
	mov	r4, #5888
	mov	lr, #2048
	mov	r1, #67108864
	mov	r0, #512
	ldr	r3, .L73
	ldr	ip, .L73+4
	str	ip, [r3, #64]
	ldr	ip, .L73+8
	str	ip, [r3, #68]
	ldr	ip, .L73+12
	str	r4, [r3, #56]
	str	lr, [r3, #60]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	ip, [r3, #104]
	str	r0, [r3, #108]
	pop	{r4, lr}
	strh	r2, [r1, #18]	@ movhi
	strh	r2, [r1, #16]	@ movhi
	bx	lr
.L74:
	.align	2
.L73:
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
	mov	r2, #256
	mov	ip, #2
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #4096
	mov	lr, #18
	mov	r10, #16384
	mov	r9, #0
	mov	r8, #512
	mov	r7, #177
	mov	r6, #64
	mov	r5, #6336
	mov	r0, #4
	mov	r1, #1
	ldr	r4, .L77
	str	r2, [r4, #16]
	add	r2, r2, #194
	str	r2, [r4, #20]
	sub	r2, r2, #188
	str	r2, [r4, #28]
	ldr	r2, .L77+4
	str	r2, [r4, #4]
	ldr	r2, .L77+8
	str	r2, [r4, #64]
	ldr	r2, .L77+12
	str	ip, [r4, #116]
	ldr	ip, .L77+16
	str	r2, [r4, #68]
	ldr	r2, .L77+20
	str	ip, [r4, #72]
	ldr	ip, .L77+24
	str	r2, [r4, #80]
	ldr	r2, .L77+28
	str	ip, [r4, #84]
	ldr	ip, .L77+32
	str	r2, [r4, #88]
	ldr	r2, .L77+36
	str	ip, [r4, #96]
	ldr	ip, .L77+40
	str	r2, [r4, #100]
	ldr	r2, .L77+44
	str	ip, [r4, #104]
	ldr	ip, .L77+48
	str	r2, [r4, #112]
	ldr	r2, .L77+52
	str	r10, [r4]
	str	r9, [r4, #8]
	str	r8, [r4, #12]
	str	r7, [r4, #24]
	str	r6, [r4, #32]
	str	r5, [r4, #56]
	str	lr, [r4, #108]
	str	ip, [r4, #120]
	str	r0, [r4, #124]
	str	r1, [r4, #136]
	str	r3, [r4, #60]
	str	r3, [r4, #76]
	str	r3, [r4, #92]
	mov	lr, pc
	bx	r2
	str	r0, [r4, #140]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L78:
	.align	2
.L77:
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
	.word	initSeerMaster
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
	mov	r1, #10
	mov	r3, #256
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #32768
	mov	lr, #460
	mov	r2, #3
	mov	r5, #0
	mov	r6, #118
	mov	r0, #512
	ldr	r4, .L81
	str	r1, [r4, #28]
	ldr	r1, .L81+4
	str	r1, [r4, #32]
	ldr	r1, .L81+8
	str	r3, [r4, #12]
	ldr	r3, .L81+12
	str	lr, [r4, #24]
	str	ip, [r4]
	str	r1, [r4, #4]
	str	r2, [r4, #136]
	str	r6, [r4, #20]
	str	r0, [r4, #16]
	str	r5, [r4, #8]
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+16
	str	r0, [r4, #140]
	mov	lr, pc
	bx	r3
	ldr	r3, .L81+20
	str	r0, [r4, #144]
	mov	lr, pc
	bx	r3
	mov	r1, #544
	mov	r3, #4096
	mov	r8, #7680
	mov	r7, #12
	mov	r6, #9792
	mov	lr, #6
	mov	ip, #2
	ldr	r2, .L81+24
	str	r2, [r4, #64]
	ldr	r2, .L81+28
	str	r2, [r4, #68]
	ldr	r2, .L81+32
	str	r2, [r4, #104]
	ldr	r2, .L81+36
	str	r2, [r4, #80]
	ldr	r2, .L81+40
	str	r1, [r4, #88]
	str	r2, [r4, #84]
	ldr	r1, .L81+44
	ldr	r2, .L81+48
	str	r1, [r4, #112]
	str	r2, [r4, #96]
	ldr	r1, .L81+52
	ldr	r2, .L81+56
	str	r1, [r4, #100]
	str	r2, [r4, #120]
	ldr	r1, .L81+60
	ldr	r2, .L81+64
	str	r0, [r4, #148]
	str	r8, [r4, #56]
	str	r7, [r4, #108]
	str	r6, [r4, #72]
	str	lr, [r4, #116]
	str	ip, [r4, #124]
	str	r1, [r4, #132]
	str	r5, [r2]
	str	r3, [r4, #60]
	str	r3, [r4, #76]
	str	r3, [r4, #92]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	mov	r0, #97
	mov	r2, #128
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #256
	mov	r5, #0
	mov	lr, #5
	mov	ip, #146
	mov	r1, #1
	mov	r9, #143
	mov	r8, #239
	mov	r7, #16
	mov	r6, #96
	ldr	r4, .L85
	str	r0, [r4, #52]
	ldr	r0, .L85+4
	str	r2, [r4, #8]
	ldr	r2, .L85+8
	str	ip, [r4, #44]
	str	r1, [r4, #136]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r9, [r4, #20]
	str	r8, [r4, #24]
	str	r7, [r4, #28]
	str	r6, [r4, #32]
	str	lr, [r4, #40]
	str	r0, [r4, #4]
	str	r5, [r4, #36]
	str	r5, [r4, #48]
	str	r5, [r4]
	mov	lr, pc
	bx	r2
	mov	r2, #64
	mov	r3, #2048
	mov	ip, #3840
	ldr	r1, .L85+12
	str	r2, [r4, #108]
	ldr	r2, .L85+16
	str	r1, [r4, #64]
	str	r2, [r4, #68]
	ldr	r1, .L85+20
	ldr	r2, .L85+24
	str	r1, [r4, #56]
	str	r2, [r4, #104]
	ldr	r1, .L85+28
	ldr	r2, .L85+32
	str	r1, [r4, #96]
	str	r2, [r4, #100]
	ldr	r1, .L85+36
	ldr	r2, .L85+40
	str	r0, [r4, #140]
	str	ip, [r4, #88]
	str	r1, [r4, #132]
	str	r5, [r2]
	str	r3, [r4, #60]
	str	r3, [r4, #92]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	level2
	.word	level2collisionmapBitmap
	.word	initFinalDoor
	.word	level2foregroundTiles
	.word	level2foregroundMap
	.word	49728
	.word	level2foregroundPal
	.word	level2midgroundTiles
	.word	level2midgroundMap
	.word	animateLevel2
	.word	level2AniTimer
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
	ldr	r3, .L89
	ldr	r2, .L89+4
	ldr	lr, .L89+8
	ldr	r0, .L89+12
	str	r1, [r3, #56]
	ldr	r1, .L89+16
	str	r2, [r3, #64]
	ldr	r2, .L89+20
	str	lr, [r3, #68]
	str	ip, [r3, #60]
	str	r0, [r3, #4]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	pop	{r4, lr}
	bx	lr
.L90:
	.align	2
.L89:
	.word	level0
	.word	level0foreground2Tiles
	.word	level0foreground2Map
	.word	level0collisionmap2Bitmap
	.word	currentLevel
	.word	goToGame
	.size	unlockGateLevel0, .-unlockGateLevel0
	.align	2
	.global	initLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel3, %function
initLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #16
	mov	r1, #96
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r3, #256
	mov	lr, #233
	mov	r5, #121
	mov	r0, #1
	ldr	r4, .L93
	str	ip, [r4, #28]
	ldr	ip, .L93+4
	str	r1, [r4, #32]
	ldr	r1, .L93+8
	str	ip, [r4, #4]
	str	r2, [r4]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r5, [r4, #20]
	str	lr, [r4, #24]
	str	r0, [r4, #136]
	mov	lr, pc
	bx	r1
	mov	r1, #2048
	mov	r3, #32
	ldr	r2, .L93+12
	str	r0, [r4, #140]
	str	r2, [r4, #64]
	ldr	ip, .L93+16
	ldr	r0, .L93+20
	ldr	r2, .L93+24
	str	ip, [r4, #68]
	str	r0, [r4, #56]
	str	r1, [r4, #60]
	str	r2, [r4, #104]
	str	r3, [r4, #108]
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	.align	2
.L93:
	.word	level3
	.word	level3collisionmapBitmap
	.word	initDutchess
	.word	level3foregroundTiles
	.word	level3foregroundMap
	.word	28896
	.word	level3foregroundPal
	.size	initLevel3, .-initLevel3
	.comm	movingUp,4,4
	.comm	sunAniTimer,4,4
	.comm	textAniTimer,4,4
	.comm	vOffBG2,4,4
	.comm	vOffBG1,4,4
	.comm	vOffBG0,4,4
	.comm	level3,160,4
	.comm	level2AniTimer,4,4
	.comm	level2,160,4
	.comm	level1,160,4
	.comm	level0AniTimer,4,4
	.comm	level0,160,4
	.comm	pauseLevel,160,4
	.comm	instructionsLevel,160,4
	.comm	startLevel,160,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
