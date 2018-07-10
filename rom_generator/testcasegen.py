from jvm_com_dict import jvm_commands
from rom_generator import generate_rom
from rom_generator import rom_generator
from bitstring import Bits
from jvm_com_dict import opcode_with
import math
with open('../debug/tcase.j', 'r') as o:
    c = o.read()

x = list()
z = dict()
ans = list()
t = 0

r = rom_generator()
a = r.fread()
print(a)
r.split(a)
r.populate_dict()
r.create_rom_data()

wide = False
for i in c.split('\n'):
    for j in i.split(' '):
        if j != '' :

            try:
                c = int(jvm_commands[j], base=16)
                if j in opcode_with:
                    if wide:
                        wide = False
                        ans.extend(["E3400001", "E52D0004"])
                    else:
                        ans.extend(["E3400000", "E52D0004"])
                x.append(c)
                if c not in r.block_dict:
                    print("wtf")
                somvar = r.block_dict[c]
                ans.extend(somvar.bin)
                if j == "wide":
                    wide = True
            except KeyError:
                if not j == "wide" and not j == "nop":
                    x.append(int(j))
                    ans.extend(["E34000" + Bits(uint=int(j), length=8).hex, "E52D0004"])
                else:
                    x.append(jvm_commands[i])
            t += 1


o = open('expected', 'w')
for i in ans:
    o.write(i+'\n')
o.close()

print(ans)