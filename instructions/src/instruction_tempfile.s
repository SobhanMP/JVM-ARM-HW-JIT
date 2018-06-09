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
myasm1

	;#fconst_0
	;vsub.f32 s0, s0, s0
	;vpush.f32 {s0}

	;#fconst_1
	;vmov.f32 s0, #1
	;vpush.f32 {s0}

	;#fconst_2
	;vmov.f32 s0, #2
	;vpush.f32 {s0}

	;#dconst_0
	;vsub.f64 d0, d0, d0
	;vpush.f64 {d0}

	;#dconst_1
	;vmov.f64 d0, #1
	;vpush.f64 {d0}

	;#fdiv check who to devide by who
	;vpop.f32 {s0, s1}
	;vdiv.f32 s0,s1
	;vpush {s0}

	;#fmul
	;vpop.f32 {s0, s1}
	;vmul.f32 s0,s1
	;vpush.f32 {s0}

	;#fadd
	;vpop.f32 {s0, s1}
	;vadd.f32 s0,s1
	;vpush.f32 {s0}
	;vpop.f32 {s1}

	;#fload
	;pop {r0}
	;mov r0, r0, LSL#2
	;add r0, fp
	;vldr.f32 s0, [r0]
	;vpush.f32 {s0}

	;#fload_0
	;vldr.f32 s0, [fp]
	;vpush.f32 {s0}

	;#fload_1
	;vldr.f32 s0, [fp, #4]
	;vpush.f32 {s0}

	;#fload_2
	;vldr.f32 s0, [fp, #8]
	;vpush.f32 {s0}

	;#fload_3
	;vldr.f32 s0, [fp, #12]
	;vpush.f32 {s0}

	;#fcmpg
  	;vpop.f32 {s0, s1}
  	;vcmp.f32 s0,s1
  	;VMRS APSR_nzcv, FPSCR
	;subeq r0,r0,r0
	;pusheq {r0}
	;movgt r0,#1
	;pushgt {r0}
	;movlt r0,#-1
	;pushlt {r0}

	;#fcmpl
  	;vpop.f32 {s0, s1}
  	;vcmp.f32 s0,s1
  	;VMRS APSR_nzcv, FPSCR
	;subeq r0,r0,r0
	;pusheq {r0}
	;movgt r0,#1
	;pushgt {r0}
	;movlt r0,#-1
	;pushlt {r0}

	;#dcmpg
  	;vpop.f64 {d0, d1}
  	;vcmp.f64 d0,d1
  	;VMRS APSR_nzcv, FPSCR
	;subeq r0,r0,r0
	;pusheq {r0}
	;movgt r0,#1
	;pushgt {r0}
	;movlt r0,#-1
	;pushlt {r0}

	;#dcmpl
  	;vpop.f64 {d0, d1}
  	;vcmp.f64 d0,d1
  	;VMRS APSR_nzcv, FPSCR
	;subeq r0,r0,r0
	;pusheq {r0}
	;movgt r0,#1
	;pushgt {r0}
	;movlt r0,#-1
	;pushlt {r0}

	;#d2i
	vpop.f64 {d0}
	vcvt.s32.f64 s0, d0
	vpush.f32 {s0}


	;#d2l
	vpop.f64 {d0}
	vcvt.s32.f64 s0, d0
	mov r0, #0
	vmov r1, s0
	vmov d0, r1, r0
	vpush.f64 {d0}



	;#fneg
	vpop {s0}
	vneg.f32 s0, s0
	vpush {s0}


	;#frem
	vpop {s0, s1}
	vdiv.f32 s2,s0,s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s2,s1
	vsub.f32 s0,s2

	vpush.f32 {s0}


	;#f2d
	vpop.f32 {s0}
	vcvt.f64.f32 d0, s0
	vpush.f64 {d0}

	;#f2i
	vpop.f32 {s0}
	vcvt.s32.f32 s1, s0
	vpush.f32 {s1}

	;#f2l
	vpop.f32 {s0}
	vcvt.s32.f32 s0, s0
	mov r0, #0
	vmov r1, s0
	vmov d0, r1, r0
	vpush.f64 {d0}
	;#d2f
	vpop.f64 {d0}
	vcvt.f32.f64 s0, d0
	vpush.f32 {s0}

;	;#t
;	vmov.f64 d0, #11
;	vmov.f64 d1, #12
;	vpush.f64 {d0, d1}
;	;#dadd
;	vpop.f64 {d0,d1}
;	vadd.f64 d0,d1
;	vpush.f64 {d0}
;	;#t
;	vpop.f64 {d1}
;
;	vmov.f64 d0, #11
;	vmov.f64 d1, #12
;	vpush.f64 {d0, d1}
;
;	;#dsub
;	vpop.f64 {d0,d1}
;	vsub.f64 d0,d1
;	vpush.f64 {d0}
;	;#t
;	vpop.f64 {d1}

;	;#testcase
;	mov r0, #0x80000000
;	mov r1, #1
;	mov r2, #4
;	add r2, r0
;	vmov.f32 s0, #10
;	vstr.f32 s0, [r2]
;	mov r1, #1
;	push {r0, r1}
;;	;#faload
;	pop {r0, r1}
;	mov r1, r1, LSL#2
;	add r0, r1
;	vldr.f32 s0, [r0]
;	vpush.f32 {s0}
;	;#test
;	vpop.f32 {s1}

;
;	mov r0, #0x80000000
;	mov r1, #1
;	push {r0, r1}
;	vmov.f32 s0, #12
;	vpush.f32 {s0}
;
;	;fastore
;	vpop.f32 {s0}
;	pop {r0, r1}
;	mov r1, r1, LSL#2
;	add r0, r1
;	vstr.f32 s0, [r0]
;;#t
;	mov r0, #0x80000000
;	mov r2, #4
;	add r2, r0
;	vldr.f32 s1, [r2]
;
;	;#testcase
;	mov r0, #0x80000000
;	mov r1, #1
;	mov r2, #8
;	add r2, r0
;	vmov.f64 d0, #10
;	vstr.f64 d0, [r2]
;	mov r1, #1
;	push {r0, r1}
;
;	;daload
;	pop {r0, r1}
;	mov r1, r1, LSL#3
;	add r0, r1
;
;	vldr.f64 d0, [r0]
;	vpush.f64 {d0}
;	;#test
;	vpop.f64 {d1}

;
;	mov r0, #0x80000000
;	mov r1, #1
;	push {r0, r1}
;	vmov.f64 d0, #12
;	vpush.f64 {d0}
;
;	;dastore
;	vpop.f64 {d0}
;	pop {r0, r1}
;	mov r1, r1, LSL#3
;	add r0, r1
;
;	vstr.f64 d0, [r0]
;	;#t
;	mov r0, #0x80000000
;	mov r2, #8
;	add r2, r0
;	vldr.f64 d1, [r2]


	bx lr

	end
