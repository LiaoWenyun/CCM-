	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"LOG.c"
	.text
	.align	2
	.global	log_2_fix
	.type	log_2_fix, %function
log_2_fix:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-40]
	mov	r4, #0
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L5:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	mul	r2, r3, r2
	ldr	r1, [fp, #-24]
	ldr	r3, [fp, #-28]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-28]
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r2, r2, r4
	mov	r4, r2
	ldr	r0, [fp, #-44]
	sub	ip, r0, #32
	mov	r5, r4, lsr ip
	rsb	r2, r0, #32
	mov	r1, r4, asl r2
	mov	r2, r3, lsr r0
	orr	r2, r2, r1
	str	r2, [fp, #-28]
	ldr	r2, [fp, #-28]
	cmp	ip, #0
	movge	r2, r5
	str	r2, [fp, #-28]
	mov	r3, r4, lsr r0
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-44]
	mov	r3, #2
	mov	r3, r3, asl r2
	mov	r1, r3
	mov	r2, #0
	str	r1, [fp, #-52]
	str	r2, [fp, #-48]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-48]
	cmp	r3, r2
	bcc	.L3
	ldr	r3, [fp, #-24]
	ldr	r5, [fp, #-48]
	cmp	r3, r5
	bne	.L7
	ldr	r3, [fp, #-28]
	ldr	r6, [fp, #-52]
	cmp	r3, r6
	bcc	.L3
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-52]
	cmp	r3, r1
.L7:
	sub	r4, fp, #28
	ldmia	r4, {r3-r4}
	movs	r4, r4, lsr #1
	mov	r3, r3, rrx
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-32]
.L3:
	ldr	r3, [fp, #-36]
	mov	r3, r3, asr #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bcc	.L5
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, r6, fp}
	bx	lr
	.size	log_2_fix, .-log_2_fix
	.align	2
	.global	log_e_fix
	.type	log_e_fix, %function
log_e_fix:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #20
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	bl	log_2_fix
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mvn	r3, #-1543503869
	sub	r3, r3, #54788096
	sub	r3, r3, #193536
	mul	r0, r3, r2
	mov	r3, #0
	mul	r3, r1, r3
	add	r0, r0, r3
	mvn	r3, #-1543503869
	sub	r3, r3, #54788096
	sub	r3, r3, #193536
	umull	r5, r6, r1, r3
	mov	r3, r5
	mov	r4, r6
	add	r0, r0, r4
	mov	r4, r0
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl #1
	ldr	r2, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r3, r2, lsr #31
	orr	r3, r1, r3
	mov	r4, r0, lsr #31
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
	.size	log_e_fix, .-log_e_fix
	.align	2
	.global	log_10_fix
	.type	log_10_fix, %function
log_10_fix:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #20
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	bl	log_2_fix
	mov	r3, r0
	mov	r4, #0
	ldr	r2, .L12
	mul	r1, r2, r4
	mov	r2, #0
	mul	r2, r3, r2
	add	r1, r1, r2
	ldr	r2, .L12
	umull	r5, r6, r3, r2
	mov	r3, r5
	mov	r4, r6
	add	r1, r1, r4
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl #1
	ldr	r2, [fp, #-28]
	ldr	r0, [fp, #-24]
	mov	r3, r2, lsr #31
	orr	r3, r1, r3
	mov	r4, r0, lsr #31
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	646456993
	.size	log_10_fix, .-log_10_fix
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
