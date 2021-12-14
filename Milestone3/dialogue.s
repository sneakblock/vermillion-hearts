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
	ldr	r8, .L43
	ldr	fp, .L43+4
	ldr	r10, .L43+8
	rsb	r7, r4, #0
.L24:
	tst	r2, #223
	moveq	r2, #6
	beq	.L32
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
.L32:
	add	r2, r5, r2
	cmp	r2, #223
	movgt	r5, #124
	addle	r5, r5, #6
	addgt	r6, r6, #10
	mov	lr, pc
	bx	r8
	ldr	r2, .L43+12
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	cmp	r3, #1
	ldr	r3, .L43+16
	str	r3, [fp]
	beq	.L41
	mov	r3, r9
	mov	r1, r6
	mov	r0, r5
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	lr, pc
	bx	r10
	mov	r3, #100663296
	str	r3, [fp]
	mov	r1, r6
	mov	r3, r9
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r0, r5
	mov	lr, pc
	bx	r10
	ldr	r3, .L43+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L42
.L30:
	ldr	r3, .L43+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+28
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
.L41:
	ldrb	r2, [r4]	@ zero_extendqisi2
	str	r2, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [sp]
	add	r2, r2, r0
	mov	r1, r6
	mov	r3, r9
	mov	r0, r5
	and	r2, r2, #255
	mov	lr, pc
	bx	r10
	mov	r3, #100663296
	str	r3, [fp]
	ldrb	r2, [r4]	@ zero_extendqisi2
	str	r2, [sp]
	mov	lr, pc
	bx	r8
	ldr	r2, [sp]
	add	r2, r2, r0
	mov	r3, r9
	and	r2, r2, #255
	mov	r1, r6
	mov	r0, r5
	mov	lr, pc
	bx	r10
	ldr	r3, .L43+20
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L30
.L42:
	str	r2, [sp, #4]
	mov	lr, pc
	bx	r8
	ldr	r3, .L43+32
	ldr	r1, [r3]
	ldr	r3, .L43+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+40
	add	r1, r3, r1
	str	r1, [sp]
	mov	lr, pc
	bx	r8
	mov	lr, r0
	ldr	r3, .L43+44
	smull	r2, r3, r0, r3
	asr	ip, r0, #31
	rsb	ip, ip, r3, asr #11
	add	ip, ip, ip, lsl #2
	add	ip, ip, ip, lsl #2
	ldr	r1, [sp]
	rsb	ip, ip, ip, lsl #3
	rsb	ip, ip, ip, lsl #6
	mov	r0, r1
	sub	r3, lr, ip
	mov	r1, #250
	ldr	r2, [sp, #4]
	ldr	ip, .L43+48
	mov	lr, pc
	bx	ip
	b	.L30
.L44:
	.align	2
.L43:
	.word	rand
	.word	videoBuffer
	.word	drawChar4
	.word	1374389535
	.word	100704256
	.word	soundB
	.word	waitForVBlank
	.word	flipPage
	.word	talksounds_length
	.word	__aeabi_uidivmod
	.word	talksounds_data
	.word	797831567
	.word	playSoundB
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
	ldr	r5, .L47
	ldr	r3, [r5]
	ldr	r2, [r3, #1684]
	add	r3, r3, r2, lsl #5
	ldr	r2, [r3, #108]
	ldr	r4, .L47+4
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
.L48:
	.align	2
.L47:
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
	ldr	r3, .L54
	ldr	r4, [r3]
	cmp	r4, #0
	sub	sp, sp, #12
	beq	.L50
	cmp	r4, #1
	bne	.L49
	mov	r2, #4
	mov	r3, #8
	mov	r0, r2
	mov	r1, #136
	str	r4, [sp]
	ldr	r4, .L54+4
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
.L49:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L50:
	mov	r2, #4
	mov	r3, #1
	mov	r0, r2
	str	r3, [sp]
	ldr	r5, .L54+4
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
.L55:
	.align	2
.L54:
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
	ldr	r3, .L65
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L57
	cmp	r3, #1
	ldr	r3, .L65+4
	ldr	r2, [r3]
	ldr	r3, [r2, #1684]
	addeq	r3, r2, r3, lsl #5
	ldreq	r3, [r3, #92]
	streq	r3, [r2, #1684]
.L59:
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
.L57:
	ldr	r3, .L65+4
	ldr	r2, [r3]
	ldr	r3, [r2, #1684]
	add	r3, r2, r3, lsl #5
	ldr	r3, [r3, #88]
	str	r3, [r2, #1684]
	b	.L59
.L66:
	.align	2
.L65:
	.word	selectedChoice
	.word	currentTarget
	.size	selectChoice, .-selectChoice
	.comm	selectedChoice,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
