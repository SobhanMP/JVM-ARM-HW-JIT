################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../src/instruction_tempfile.s 

C_SRCS += \
../src/Instructions.c 

S_DEPS += \
./src/instruction_tempfile.d 

C_DEPS += \
./src/Instructions.d 

OBJS += \
./src/Instructions.o \
./src/instruction_tempfile.o 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM C Compiler 5'
	armcc --cpu=Cortex-A7.no_neon --apcs=/hardfp --fpmode=std --arm -O0 -g --md --depend_format=unix_escaped --no_depend_system_headers --depend_dir="src" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/instruction_tempfile.o: ../src/instruction_tempfile.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Assembler 5'
	armasm --cpu=Cortex-A7.no_neon --apcs=/hardfp --fpmode=std --arm -g --md --depend_format=unix_escaped --depend="src/instruction_tempfile.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


