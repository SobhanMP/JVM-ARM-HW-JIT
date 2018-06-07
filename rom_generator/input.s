#iadd
LDMFA sp!, {r0, r1}
add r0, r1
STMFA sp!, {r0}

#isub
LDMFA sp!, {r0, r1}
sub r0, r1
STMFA sp!, {r0}