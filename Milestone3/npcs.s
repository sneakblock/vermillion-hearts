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
	.file	"npcs.c"
	.text
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
	.global	initPlantMerchant
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlantMerchant, %function
initPlantMerchant:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #1
	push	{r4, r5, lr}
	mov	lr, #512
	mov	r2, #0
	mov	r5, #8
	mov	r4, #16
	mov	r0, #2
	mov	ip, #241
	ldr	r3, .L4
	str	r1, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #44]
	str	r1, [r3, #60]
	str	r1, [r3, #84]
	str	r1, [r3, #88]
	str	r1, [r3, #128]
	str	r1, [r3, #160]
	ldr	r1, .L4+4
	str	lr, [r3, #80]
	str	r1, [r3, #72]
	ldr	lr, .L4+8
	ldr	r1, .L4+12
	str	lr, [r3, #76]
	str	r1, [r3, #416]
	ldr	lr, .L4+16
	ldr	r1, .L4+20
	str	lr, [r3, #104]
	str	r1, [r3, #108]
	ldr	lr, .L4+24
	ldr	r1, .L4+28
	str	lr, [r3, #112]
	str	r1, [r3, #136]
	ldr	lr, .L4+32
	ldr	r1, .L4+36
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	str	lr, [r3, #168]
	str	r2, [r3, #36]
	str	r2, [r3, #52]
	str	r2, [r3, #64]
	str	r2, [r3, #96]
	str	r2, [r3, #100]
	str	r2, [r3, #116]
	str	r2, [r3, #132]
	str	r2, [r3, #148]
	str	r2, [r3, #164]
	str	r2, [r3, #404]
	str	r0, [r3, #56]
	str	r0, [r3, #92]
	str	r2, [r3, #408]
	str	r2, [r3, #420]
	str	r1, [r3, #16]
	str	ip, [r3, #12]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	plantMerchant
	.word	talkingheadtestBitmap
	.word	talkingheadtestPal
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	303
	.size	initPlantMerchant, .-initPlantMerchant
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
	@ link register save eliminated.
	b	initPlantMerchant
	.size	initNPCS, .-initNPCS
	.comm	plantMerchant,468,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
