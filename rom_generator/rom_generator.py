import dict
import re
import tempfile
import subprocess

class code_block:
    name = "something"
    opcode = "this"
    code = "something else"
    asmCommand = "armasm --target=arm-arm-none-eabi -mcpu=cortex-a9 -mfpu=vfpv3-d16-fp16 -mfloat-abi=hard -marm --list "
    def __init__(self, data):
        t = list(filter(None, data.split('\n')))
        self.name = t[0]
        self.opcode = dict.jvm_commands[t[0]]
        self.code = '\n'.join(t[1:])

    def print(self):
        print(self.name + '( ' + self.opcode + ' )')
        print(self.code)
        print('converted to##############333############')
        print(self.binary())

    def binary(self):
        x = tempfile.NamedTemporaryFile('w')
        x.write("code")
        print(x.name + "name")
        sp = subprocess.run(
            (self.asmCommand + x.name + '.l ' + x.name).split(),
            shell=True)
        return "DEADEAD"

class rom_generator:
    input_file_name = 'input.s'
    blocks = list()

    # read all of the data
    def fread(self):
        # https://stackoverflow.com/questions/7409780/reading-entire-file-in-python
        with open(self.input_file_name, 'r') as content_file:
            content = content_file.read()
        content = list(filter(None, content.split('#')))
        return content
    #convert the data into code blocks
    def split(self, input):
        for i in input:
            self.blocks.append(code_block(i));
            self.blocks[-1].print()
            print('-----------------------next--------------------')


r = rom_generator()
a = r.fread()
print(a)
r.split(a)

