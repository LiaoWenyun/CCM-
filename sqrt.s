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
	.file	"sqrt.c"
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.global	__aeabi_f2uiz
	.text
	.align	2
	.global	fix_sqrt
	.type	fix_sqrt, %function
fix_sqrt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]	@ float
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-32]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L4:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-36]
	mov	r0, r2, asl r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl r2
	add	r1, r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r3, r1, asl r3
	add	r2, r0, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #1
	mov	r3, r2, lsr r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-36]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bhi	.L3
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bcc	.L4
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	fix_sqrt, .-fix_sqrt
	.align	2
	.global	fix_sqrt_3
	.type	fix_sqrt_3, %function
fix_sqrt_3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]	@ float
	str	r1, [fp, #-36]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-32]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L7
.L9:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-36]
	mov	r0, r2, asl r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl r2
	add	r1, r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r3, r1, asl r3
	add	r2, r0, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #1
	mov	r3, r2, lsr r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-12]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-36]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-36]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bhi	.L8
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
.L8:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L7:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bcc	.L9
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	fix_sqrt_3, .-fix_sqrt_3
	.align	2
	.global	fix_binary_log
	.type	fix_binary_log, %function
fix_binary_log:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L12
.L13:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_2_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L12:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L13
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L14
.L16:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, r2, asl #2]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L15
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L15:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L14:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L16
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	fix_binary_log, .-fix_binary_log
	.align	2
	.global	fix_ln_log
	.type	fix_ln_log, %function
fix_ln_log:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L19
.L20:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_e_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L19:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L20
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L21
.L23:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, r2, asl #2]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L22
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L22:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L21:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L23
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	fix_ln_log, .-fix_ln_log
	.align	2
	.global	fix_decimal_log
	.type	fix_decimal_log, %function
fix_decimal_log:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L26
.L27:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_10_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L26:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L27
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L28
.L30:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, r2, asl #2]
	rsb	r3, r3, r1
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L29
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L29:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L28:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L30
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	fix_decimal_log, .-fix_decimal_log
	.align	2
	.global	base_2_exp
	.type	base_2_exp, %function
base_2_exp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L33
.L34:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_2_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L33:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L34
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L35
.L37:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	blt	.L36
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L36:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L35:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L37
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	base_2_exp, .-base_2_exp
	.align	2
	.global	base_e_exp
	.type	base_e_exp, %function
base_e_exp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L40
.L41:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_e_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L40:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L41
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L42
.L44:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	blt	.L43
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L43:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L42:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L44
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	base_e_exp, .-base_e_exp
	.align	2
	.global	base_10_exp
	.type	base_10_exp, %function
base_10_exp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	str	r0, [fp, #-48]	@ float
	str	r1, [fp, #-52]
	mov	r3, sp
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-48]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-52]
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-72]
	ldr	ip, [fp, #-72]
	orr	ip, r3, ip
	str	ip, [fp, #-72]
	mov	r3, r1, asl #5
	str	r3, [fp, #-76]
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-76]
	str	r2, [fp, #-72]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #76
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r1, r0
	mov	r2, #0
	mvn	r3, #0
	mov	r4, #15
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r1, lsr #27
	mov	r4, r2, asl #5
	str	r4, [fp, #-64]
	ldr	ip, [fp, #-64]
	orr	ip, r3, ip
	str	ip, [fp, #-64]
	mov	r3, r1, asl #5
	str	r3, [fp, #-68]
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	str	r1, [fp, #-68]
	str	r2, [fp, #-64]
	mvn	r3, #0
	mov	r4, #15
	sub	r2, fp, #68
	ldmia	r2, {r1-r2}
	and	r1, r1, r3
	and	r2, r2, r4
	mov	r3, r0, asl #2
	add	r3, r3, #7
	add	r3, r3, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	sub	sp, sp, r3
	str	sp, [fp, #-60]
	ldr	r2, [fp, #-60]
	add	r3, r2, #7
	mov	r3, r3, lsr #3
	mov	r3, r3, asl #3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L47
.L48:
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	mov	r3, #1
	mov	r3, r3, asl r2
	add	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r4, [fp, #-32]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-52]
	bl	log_10_fix
	mov	r2, r0
	ldr	r3, [fp, #-40]
	str	r2, [r3, r4, asl #2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L47:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L48
	ldr	r2, [fp, #-52]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L49
.L51:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, r2, asl #2]
	ldr	r3, [fp, #-36]
	rsb	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	mov	r1, r3, asl r2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	rsb	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl r2
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	mov	r3, r2, lsr r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	blt	.L50
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L50:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L49:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bcc	.L51
	ldr	r3, [fp, #-28]
	ldr	sp, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	base_10_exp, .-base_10_exp
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
