<<<<<<< HEAD
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

	;#dup
  	pop {r0}
  	push {r0}
  	push {r0}

	;#dup2
    pop {r0, r1}
    push {r0, r1}
    push {r0,r1}

    ;#dup_x1
    pop {r0,r1}
    push {r0}
    push {r0,r1}

    ;#dup_x2
    pop {r0,r1,r2}
    push {r0}
    push {r0,r1,r2}

    ;#pop
    pop {r0}

    ;#pop_2
    pop {r0, r1}

    ;#swap
   	pop {r0, r1}
   	mov r2, r0
   	push {r1, r2}

	;#dup2_x1
    pop {r0,r1,r2}
    push {r0,r1}
    push{r0,r1,r2}

	;#dup2_x2
    pop  {r0,r1,r2,r3}
    push  {r0,r1}
    push  {r0,r1,r2,r3}

	;#fconst_0
	vsub.f32 s0, s0, s0
	vpush.f32 {s0}

	;#fconst_1
	vmov.f32 s0, #1
	vpush.f32 {s0}

	;#fconst_2
	vmov.f32 s0, #2
	vpush.f32 {s0}

	;#dconst_0
	vsub.f64 d0, d0, d0
	vpush.f64 {d0}

	;#dconst_1
	vmov.f64 d0, #1
	vpush.f64 {d0}

	;#fdiv
	vpop.f32 {s0, s1}
	vdiv.f32 s0,s1
	vpush {s0}

	;#fmul
	vpop.f32 {s0, s1}
	vmul.f32 s0,s1
	vpush.f32 {s0}

	;#fadd
	vpop.f32 {s0, s1}
	vadd.f32 s0,s1
	vpush.f32 {s0}
	vpop.f32 {s1}

	;#fload
	pop {r0}
	mov r0, r0, LSL#2
	add r0, fp
	vldr.f32 s0, [r0]
	vpush.f32 {s0}

	;#fload_0
	vldr.f32 s0, [fp]
	vpush.f32 {s0}

	;#fload_1
	vldr.f32 s0, [fp, #4]
	vpush.f32 {s0}

	;#fload_2
	vldr.f32 s0, [fp, #8]
	vpush.f32 {s0}

	;#fload_3
	vldr.f32 s0, [fp, #12]
	vpush.f32 {s0}

	;#fcmpg
  	vpop.f32 {s0, s1}
  	vcmp.f32 s0,s1
  	VMRS APSR_nzcv, FPSCR
	subeq r0,r0,r0
	pusheq {r0}
	movgt r0,#1
	pushgt {r0}
	movlt r0,#-1
	pushlt {r0}

	;#fcmpl
  	vpop.f32 {s0, s1}
  	vcmp.f32 s0,s1
  	VMRS APSR_nzcv, FPSCR
	subeq r0,r0,r0
	pusheq {r0}
	movgt r0,#1
	pushgt {r0}
	movlt r0,#-1
	pushlt {r0}

	;#dcmpg
  	vpop.f64 {d0, d1}
  	vcmp.f64 d0,d1
  	VMRS APSR_nzcv, FPSCR
	subeq r0,r0,r0
	pusheq {r0}
	movgt r0,#1
	pushgt {r0}
	movlt r0,#-1
	pushlt {r0}

	;#dcmpl
  	vpop.f64 {d0, d1}
  	vcmp.f64 d0,d1
  	VMRS APSR_nzcv, FPSCR
	subeq r0,r0,r0
	pusheq {r0}
	movgt r0,#1
	pushgt {r0}
	movlt r0,#-1
	pushlt {r0}

	;#d2i
	vpop.f64 {d0}
	vcvt.s32.f64 s0, d0
	vpush.f32 {s0}

	;#d2l
	vpop.f64 {d0}
	vmov r0, r1, d0
	push {fp, lr}
	import __aeabi_d2lz
	bl __aeabi_d2lz
	pop {fp, lr}
	push {r2, r3}

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
	pop {r0}
	push {fp, lr}
	import __aeabi_f2lz
	bl __aeabi_f2lz
	pop {fp, lr}
	push {r0, r1}

	;#d2f
	vpop.f64 {d1}
	vcvt.f32.f64 s0, d1
	vpush.f32 {s0}

	;#dadd
	vpop.f64 {d0,d1}
	vadd.f64 d0,d1
	vpush.f64 {d0}

	;#dsub
	vpop.f64 {d0,d1}
	vsub.f64 d0,d1
	vpush.f64 {d0}

	;#faload
	pop {r0, r1}
	mov r1, r1, LSL#2
	add r0, r1
	vldr.f32 s0, [r0]
	vpush.f32 {s0}

	;#fastore
	vpop.f32 {s0}
	pop {r0, r1}
	mov r1, r1, LSL#2
	add r0, r1
	vstr.f32 s0, [r0]

	;#daload
	pop {r0, r1}
	mov r1, r1, LSL#3
	add r0, r1
	vldr.f64 d0, [r0]
	vpush.f64 {d0}

	;#dastore
	vpop.f64 {d0}
	pop {r0, r1}
	mov r1, r1, LSL#3
	add r0, r1
	vstr.f64 d0, [r0]

	bx lr

	end
