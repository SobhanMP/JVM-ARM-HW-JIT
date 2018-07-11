from jvm_com_dict import jvm_commands
import pickle
from bitstring import Bits
from jvm_com_dict import opcode_with
from rom_generator import code_block

with open('../debug/tcase.j', 'r') as o:
    c = o.read()
x = list()
z = dict()
ans = list()
t = 0
serial_file = open('data', 'rb')
block_dict = dict()
block_dict = pickle.load(serial_file)


serial_file.close()
wide = False
p = None
pc = None
coms = list()

for i in c.split('\n'):
    for j in i.split(' '):
        if j != '' :

            if j == '255':
                break

            elif j in jvm_commands:
                coms.append((j, []))
            else:
                coms[-1][1].append(int(j))


for c, a in coms:
    for i in a:
        ans.extend(["E34000" + Bits(uint=int(i), length=8).hex, "E52D0004"])

    if c in opcode_with:
            if wide:
                wide = False
                ans.extend(["E3400001", "E52D0004"])  # FOR THE PREVIOUS COMMAND
            else:
                ans.extend(["E3400000", "E52D0004"])

    elif len(a):
        print("command argument mismatch")

    op = int(jvm_commands[c], base=16)

    x.append(op)
    x.extend(a)

    if op not in block_dict and not (c == 'wide' or c == 'nop'):
        print("wtf")

    if not c == "wide" and not c == "nop":
        ans.extend(block_dict[op].bin)
    elif c == "wide":
        wide = True

x.append(255)

with open('expected', 'w') as o:
    for i in ans:
        o.write(i.lower()+'\n')

with open('input', 'w') as o:
    for i in x:
        o.write(Bits(uint=i, length=8).hex+'\n')
print(ans)
