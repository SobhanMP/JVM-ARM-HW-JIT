	area start, code
	export StartHere
StartHere
	MRC p15, 0, r0, c1, c1, 2

	ORR r0, r0, #2_11<<10 ; enable fpu

	MCR p15, 0, r0, c1, c1, 2

	LDR r0, =(0xF << 20)

	MCR p15, 0, r0, c1, c0, 2

	MOV r3, #0x40000000

	VMSR FPEXC, r3

	import __main
	b __main

	area mycode, code
	export myasm
myasm


	;#fconst_0
	vsub.f32 s0, s0, s0
	add sp, #4
	vpush.f32 {s0}

	;#fconst_1
	vmov.f32 s0, #1
	add sp, #4
	vpush.f32 {s0}

	;#fconst_2
	vmov.f32 s0, #2
	add sp, #4
	vpush.f32 {s0}

	;#dconst_0
	vsub.f64 d0, d0, d0
	add sp, #8
	vpush.f64 {d0}

	;#dconst_1
	vmov.f64 d0, #1
	add sp, #8
	vpush.f64 {d0}

	;#fdiv check who to devide by who
	vpop.f32 {s0, s1}
	vdiv.f32 s0,s1
	vpush {s0}

	;#fmul
	vpop.f32 {s0, s1}
	vmul.f32 s0,s1
	vstr.f32 s0, [sp]

	;#fadd
	vpop.f32 {s0, s1}
	vadd.f32 s0,s1
	vstr.f32 s0, [sp]


	;#fload_0
	vldr.f32 s0, [fp]
	add sp, #4
	vstr.f32 s0, [sp]


	;#fload_1
	vldr.f32 s0, [fp, #4]
	add sp, #4
	vstr.f32 s0, [sp]

	;#float_2
	vldr.f32 s0, [fp, #8]
	add sp, #4
	vstr.f32 s0, [sp]

	;#float_3
	vldr.f32 s0, [fp, #12]
	add sp, #4
	vstr.f32 s0, [sp]

	;#fneg
	vldr.f32 s1, [sp]
	vneg.f32 s0, s1
	vstr.f32 s0, [sp]


	;#frem
	add sp, #4
	vldm.f32 sp!, {s0, s1}
	vdiv.f32 s2,s0,s1
	vcvt.s32.f32 s4,s2
	vcvt.f32.s32 s2,s4
	vmul.f32 s3,s2,s1
	vsub.f32 s4,s0,s3

	vstr.f32 s4, [sp]

	;#f2d
	vldr.f32 s0, [sp]
	vcvt.f64.f32 d1, s0
	vstr.f64 d1, [sp]
	add sp, #4

	;#f2i
	vldr.f32 s0, [sp]
	vcvt.s32.f32 s1, s0
	vstr.f32 s1, [sp]

	;#d2f
	vldr.f64 d0, [sp]
	vcvt.f32.f64 s0, d0
	vstr.f32 s0, [sp]

	;#dadd
	vldr.f64 d0, [sp]
	sub sp, #8
	vldr.f64 d1, [sp]
	vadd.f64 d2,d1,d0
	vstr.f64 d2, [sp]

	;#dsub
	vldr.f64 d0, [sp]
	sub sp, #8
	vldr.f64 d1, [sp]
	vsub.f64 d2,d1,d0
	vstr.f64 d2, [sp]




	;faload
;	dmda sp!, {r0, r1}
;	mov r1, r1, ASL#2
;	vldr.f32 s0, [r0, r1]
;	vstmib.f32 sp!, {s0}

	bx lr

	end
