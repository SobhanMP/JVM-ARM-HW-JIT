`ifndef _me_const_h
`define _me_const_h

    `define FETCH_INSTRUCTION  0
    `define CHECK_WIDE_and_READ_COUNTER  1
    `define FETCH_PARAMS  2
    `define ITERATE  3
    //state machine state number logarithm
    `define SMNL  2
    `define WIDE_OPCODE  8'b1100_0100
    `define MAX_PARAM_NUM_LOG  5
    `define Q_FETCH  0
    `define Q_ITER  1
    //for decoder rom
    `define adr_rom_adr_size  9
    `define com_rom_adr_size  7
    `define RAM_SIZE 256
    `define ADDRESS_WIDTH 8
`endif
