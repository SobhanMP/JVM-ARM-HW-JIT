import jvm_com_dict
import re
import tempfile
import subprocess
import math

from bitstring import Bits

class code_block:
    name = "something"
    opcode = "this"
    code = "something else"
    armAsmBinary = "armasm.exe"

    header = '  area mcode, code\n'

    def __init__(self, data):
        t = list(filter(None, data.split('\n')))
        if t[0] not in jvm_com_dict.jvm_commands:
            raise ValueError(t[0] + "not in jvm commands list")
        self.name = t[0]
        self.opcode = jvm_com_dict.jvm_commands[t[0]]
        self.code = '\t' + '\n\t'.join(t[1:])
        self.bin = self.binary()

    def print(self):
        print(self.name + '( ' + self.opcode + ' )')
        print(self.code)
        print('converted to##############333############')
        print(self.bin)

    def binary(self):
        x = open('c', 'w')
        x.write(self.header + self.code + '\n\tend')
        x.close()
        command = " ".join([self.armAsmBinary, '--cpu=Cortex-A9',
                   ' --fpu=VFPv3_D16_FP16', '--arm',
                    '-o o', '--list l',
                   'c'])

        print(command)
        sp = subprocess.call(command, shell=True)

        with open('l', 'r') as o:
            c = o.read()
        subprocess.run('rm l', shell=True)
        subprocess.run('rm o', shell=True)
        subprocess.run('rm c', shell=True)
        x.close()
        return re.findall('[ ]*\d+ [A-F0-9]+ ([A-F0-9]+)', c)

class rom_generator:
    input_file_name = '../instructions/src/instructions.s'
    blocks = list()
    block_dict = dict()
    commands = dict()
    data = list()
    existing = dict()
    command_adr = list()
    next_adr_rom = list()

    # read all of the data
    def fread(self):
        # https://stackoverflow.com/questions/7409780/reading-entire-file-in-python
        with open(self.input_file_name, 'r') as content_file:
            content = content_file.read()
        content = list(filter(None, content.split(';#')))
        return content

    # convert the data into code blocks
    def split(self, input):
        for i in input:
            try:
                ncb = code_block(i)
                self.blocks.append(ncb)
                self.block_dict[int(ncb.opcode, base=16)] = ncb
                #self.blocks[-1].print()
                #print('-----------------------next--------------------')

            except ValueError:

                print('''wasn't vlid''')
                print(i)


    def populate_dict(self):
        # FIXME add zeros for now
        self.commands[0] = 0
        counter = 1
        for i in self.blocks:
            t = i.bin
            for j in t:
                if j not in self.commands:
                    self.commands[j] = counter
                    counter += 1
        print('-----------------------dict------------------')
        print(self.commands)

    def create_rom_data(self):
        self.data = [(0, 0)] * 256
        endspace = 256
        next_line = 0
        for i in self.blocks:
            b = i.bin
            next_line = int(i.opcode, 16)
            while b:
                oldnext = next_line
                if ' '.join(b[1:]) in self.existing:
                    next_line = self.existing[' '.join(b[1:])]
                else:
                    if len(b) == 1:
                        next_line = 0
                    else:
                        next_line = endspace
                        self.data.append((0, 0))
                        endspace += 1
                    self.existing[' '.join(b[1:])] = next_line


                self.data[oldnext] = (b[0], next_line)
                b = b[1:]
        c = 0
        gooddata= list()
        for i in self.data:

            self.next_adr_rom.append((i[1], c))
            self.command_adr.append((self.commands[i[0]], c))
            if i != (0,0):
                gooddata.append((c, i))
            c += 1
        print('-------------romvalue-------------')
        print(gooddata)


    def generate_verilog_code(self):

        cl = math.ceil(math.log2(len(self.commands)))
        s = generate_rom(name='com_rom', output_len=32, data=list(self.commands.items()), input_len=cl,
                         data_type='32\'h')

        with open('com_rom.v', 'w') as o:
            o.write(s)

        il = math.ceil(math.log2(len(self.data)))
        s = generate_rom(name='inst_adr_rom', output_len=cl, data=self.command_adr, input_len=il, data_type='\'d')
        with open('inst_adr_rom.v', 'w') as o:
            o.write(s)

        s = generate_rom(name='next_adr_rom', output_len=il, data=self.next_adr_rom, input_len=il, data_type='\'d')
        with open('next_adr_rom.v', 'w') as o:
            o.write(s)


#data is a list of tuples
def generate_rom(name, output_len, data, input_len, data_type):

    s = '`define ' + name + '_input_size ' + str(input_len) + \
        '\n`define ' + name + '_output_size ' + str(output_len) + \
        '\nmodule ' + name + '(input [' + \
        str(input_len - 1) + ':0] data_in, output reg [' + str(output_len - 1) + ''':0] data_out);
        begin
            always@*
            begin
                case(data_in)\n\n'''
    for i, v in data:
        if type(v) == str:
            print("fuck")
        s += '\t\t\t\t\t' + str(input_len) + '\'b' + Bits(length=input_len, uint=v).bin + ': data_out <= ' + \
             str(output_len) + data_type + str(i) + \
             ';\n'

    s += '''
                    default: data_out = -1;

                endcase
            end
        end
    endmodule'''
    return s


if __name__ == '__main__':
    r = rom_generator()
    a = r.fread()
    print(a)
    r.split(a)
    r.populate_dict()
    r.create_rom_data()
    r.generate_verilog_code()
