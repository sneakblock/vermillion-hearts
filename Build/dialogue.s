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
	.file	"dialogue.c"
	.text
	.align	2
	.global	drawDialogueUI
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDialogueUI, %function
drawDialogueUI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L20
	ldr	r6, .L20+4
	ldr	r4, .L20+8
	mov	r0, #0
	ldr	r5, .L20+12
	sub	sp, sp, #12
	str	r3, [r6]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L2
	mov	r1, #4
	mov	r3, #92
	str	r2, [sp]
	mov	r0, r1
	mov	r2, #116
	ldr	r7, .L20+16
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
.L2:
	ldr	r2, [r3, #1728]
	cmp	r2, #0
	beq	.L3
	mov	r3, #1
	mov	r1, #4
	mov	r0, #124
	ldr	r7, .L20+20
	mov	lr, pc
	bx	r7
.L3:
	mov	r3, #100663296
	mov	r0, #0
	str	r3, [r6]
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	ldr	r2, [r3, #72]
	cmp	r2, #0
	beq	.L4
	mov	r1, #4
	mov	r3, #92
	str	r2, [sp]
	mov	r0, r1
	mov	r2, #116
	ldr	r5, .L20+16
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
.L4:
	ldr	r2, [r3, #1728]
	cmp	r2, #0
	beq	.L1
	mov	r3, #1
	mov	r1, #4
	mov	r0, #124
	ldr	r4, .L20+20
	mov	lr, pc
	bx	r4
.L1:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	100704256
	.word	videoBuffer
	.word	currentTarget
	.word	fillScreen4
	.word	drawImage4
	.word	drawString4
	.size	drawDialogueUI, .-drawDialogueUI
	.global	__aeabi_uidivmod
	.align	2
	.global	typeDialogue
	.syntax unified
	.arm
	.fpu softvfp
	.type	typeDialogue, %function
typeDialogue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	sub	sp, sp, #12
	beq	.L22
	mov	r5, r0
	mov	r6, r1
	mov	r9, r3
	ldr	r8, .L45
	ldr	fp, .L45+4
	rsb	r7, r4, #0
.L24:
	tst	r2, #223
	moveq	r2, #6
	beq	.L33
	mov	r3, r4
	add	r0, r7, #1
.L25:
	add	r2, r0, r3
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2
	tst	r1, #223
	bne	.L25
	add	r2, r2, #1
	add	r2, r2, r2, lsl #1
	lsl	r2, r2, #1
.L33:
	add	r2, r5, r2
	cmp	r2, #223
	movgt	r5, #124
	addle	r5, r5, #6
	addgt	r6, r6, #10
	mov	lr, pc
	bx	r8
	ldr	r2, .L45+8
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #1
	ldr	r3, .L45+12
	beq	.L42
	ldr	r10, .L45+16
	str	r3, [r10]
	mov	r1, r6
	mov	r3, r9
	mov	r0, r5
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	ip, .L45+20
	mov	lr, pc
	bx	ip
	mov	r3, #100663296
	str	r3, [r10]
	mov	r1, r6
	mov	r3, r9
	mov	r0, r5
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	ip, .L45+20
	mov	lr, pc
	bx	ip
.L29:
	ldr	r3, [fp]
	ldr	r2, .L45+24
	cmp	r3, r2
	ldr	r3, .L45+28
	ldr	r10, [r3, #12]
	beq	.L43
	cmp	r10, #0
	beq	.L44
.L31:
	ldr	r3, .L45+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+36
	mov	lr, pc
	bx	r3
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #0
	sub	r7, r7, #1
	bne	.L24
.L22:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	ldr	r2, .L45+16
	str	r3, [r2]
	ldrb	r10, [r4]	@ zero_extendqisi2
	mov	lr, pc
	bx	r8
	add	r2, r10, r0
	mov	r1, r6
	mov	r3, r9
	mov	r0, r5
	ldr	ip, .L45+20
	and	r2, r2, #255
	mov	lr, pc
	bx	ip
	mov	r3, #100663296
	ldr	r2, .L45+16
	str	r3, [r2]
	ldrb	r10, [r4]	@ zero_extendqisi2
	mov	lr, pc
	bx	r8
	add	r2, r10, r0
	mov	r3, r9
	mov	r1, r6
	mov	r0, r5
	ldr	ip, .L45+20
	and	r2, r2, #255
	mov	lr, pc
	bx	ip
	b	.L29
.L43:
	cmp	r10, #0
	bne	.L31
	mov	lr, pc
	bx	r8
	ldr	r3, .L45+40
	ldr	r1, [r3]
	ldr	r3, .L45+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+48
	add	r1, r3, r1
	str	r1, [sp, #4]
	mov	lr, pc
	bx	r8
	str	r0, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [sp]
	ldr	lr, .L45+52
	ldr	ip, .L45+56
	smull	r3, lr, r0, lr
	smull	r3, ip, r2, ip
	asr	r3, r0, #31
	rsb	r3, r3, lr, asr #11
	add	ip, ip, r2
	asr	lr, r2, #31
	rsb	ip, lr, ip, asr #9
	rsb	r3, r3, r3, lsl #3
	rsb	lr, ip, ip, lsl #4
	rsb	r3, r3, r3, lsl #3
	rsb	lr, lr, lr, lsl #4
	rsb	r3, r3, r3, lsl #3
	ldr	r1, [sp, #4]
	sub	r3, r0, r3, lsl #5
	add	ip, ip, lr, lsl #2
	sub	ip, r2, ip
	add	r3, r3, #11008
	mov	r0, r1
	mov	r2, r10
	add	r3, r3, #17
	ldr	r10, .L45+60
	add	r1, ip, #1000
	mov	lr, pc
	bx	r10
	b	.L31
.L44:
	mov	lr, pc
	bx	r8
	ldr	r3, .L45+64
	ldr	r1, [r3]
	ldr	r3, .L45+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+68
	add	r1, r3, r1
	str	r1, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, .L45+72
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #10
	rsb	r2, r3, r3, lsl #4
	add	r2, r2, r2, lsl #6
	ldr	r1, [sp]
	add	r3, r3, r2, lsl #1
	sub	r3, r0, r3
	mov	r2, r10
	mov	r0, r1
	ldr	r10, .L45+60
	mov	r1, #250
	add	r3, r3, #2000
	mov	lr, pc
	bx	r10
	b	.L31
.L46:
	.align	2
.L45:
	.word	rand
	.word	currentTarget
	.word	1374389535
	.word	100704256
	.word	videoBuffer
	.word	drawChar4
	.word	dutchess
	.word	soundB
	.word	waitForVBlank
	.word	flipPage
	.word	trackB_length
	.word	__aeabi_uidivmod
	.word	trackB_data
	.word	801393315
	.word	-1854319953
	.word	playSoundB
	.word	talksounds_length
	.word	talksounds_data
	.word	-2040714855
	.size	typeDialogue, .-typeDialogue
	.align	2
	.global	drawChoices
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawChoices, %function
drawChoices:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L49
	ldr	r3, [r5]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #108]
	ldr	r4, .L49+4
	mov	r3, #1
	mov	r1, #112
	mov	r0, #12
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #112]
	mov	r1, #136
	mov	r3, #1
	mov	r0, #12
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L50:
	.align	2
.L49:
	.word	currentTarget
	.word	drawString4
	.size	drawChoices, .-drawChoices
	.align	2
	.global	drawSelector
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSelector, %function
drawSelector:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, .L56
	ldr	r4, [r3]
	cmp	r4, #0
	sub	sp, sp, #12
	beq	.L52
	cmp	r4, #1
	bne	.L51
	mov	r2, #4
	mov	r3, #8
	mov	r0, r2
	mov	r1, #136
	str	r4, [sp]
	ldr	r4, .L56+4
	mov	lr, pc
	bx	r4
	mov	r3, #0
	mov	r2, #4
	str	r3, [sp]
	mov	r0, r2
	mov	r3, #8
	mov	r1, #112
	mov	lr, pc
	bx	r4
.L51:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L52:
	mov	r2, #4
	mov	r3, #1
	mov	r0, r2
	str	r3, [sp]
	ldr	r5, .L56+4
	mov	r3, #8
	mov	r1, #112
	mov	lr, pc
	bx	r5
	mov	r2, #4
	mov	r3, #8
	mov	r0, r2
	mov	r1, #136
	str	r4, [sp]
	mov	lr, pc
	bx	r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	selectedChoice
	.word	drawRect4
	.size	drawSelector, .-drawSelector
	.align	2
	.global	selectChoice
	.syntax unified
	.arm
	.fpu softvfp
	.type	selectChoice, %function
selectChoice:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawDialogueUI
	ldr	r3, .L67
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L59
	cmp	r3, #1
	ldr	r3, .L67+4
	ldr	r2, [r3]
	ldr	r3, [r2, #1684]
	addeq	r3, r2, r3, lsl #5
	ldreq	r3, [r3, #92]
	streq	r3, [r2, #1684]
.L61:
	add	r3, r2, r3, lsl #5
	ldr	r1, [r3, #100]
	cmp	r1, #0
	movne	r1, #1
	strne	r1, [r2, #1692]
	mov	r0, #124
	ldr	r2, [r3, #104]
	mov	r1, #16
	mov	r3, #1
	pop	{r4, lr}
	b	typeDialogue
.L59:
	ldr	r3, .L67+4
	ldr	r2, [r3]
	ldr	r3, [r2, #1684]
	add	r3, r2, r3, lsl #5
	ldr	r3, [r3, #88]
	str	r3, [r2, #1684]
	b	.L61
.L68:
	.align	2
.L67:
	.word	selectedChoice
	.word	currentTarget
	.size	selectChoice, .-selectChoice
	.comm	selectedChoice,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
