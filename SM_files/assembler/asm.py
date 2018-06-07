# copyright @sobhan mohammadpour
import copy
import math
import json
import re
import sys
import itertools
from operator import itemgetter
from typing import Dict, Any

refrence_table = {}
code_table = {}

ifile = "infile"
ofile = "outfile"


def fread():
    # https://stackoverflow.com/questions/7409780/reading-entire-file-in-python
    with open('test.s', 'r') as content_file:
        content = content_file.read()
    content = list(filter(None, content.split('\n')))
    return content


# meta data is the dictionary of signal groups and contains a set of valid signals
# my dict is the thing to pars
# shortcuts is the list of shortcuts
# valid_signals = "
output_format = list()
output_len = 0

next_addr = list()
labels = dict()

rom_size = 0;
adr_length = 0

multi = set()
multi_base = dict()
multi_width = dict()
multi_len = dict()

my_dict = dict()
shortcuts = dict()
valid_sc = set()
meta_signals = dict()
control_list = list()


def main():
    pars_option()
    lines = fread()
    generate_control_list(lines)

    print(control_list)
    print(next_addr)
    print(labels)
    print("output_format")
    print(output_format)

    my_str = generate_my_str()
    print("mystr")
    print(my_str)
    verilog_code = generate_verilog(my_str)
    print("verilog code")
    print(verilog_code)
    with open('rom.v', 'w') as fout:
        fout.write(verilog_code)

    goodstr: str = ""
    for i in my_dict:
        spl = i.split(sep='_')

        goodstr += ("\\newcommand{\\" + "".join(spl) + (
            "}{\m[" + spl[0].upper() + "]{" + spl[1].upper() + "}}"
            if len(spl) > 1 else "}[1]{\m[" + spl[0].upper() + "]{#1}}") + ' \n')
    with open('sytax.json', 'r') as conf_file:
        conf = json.load(conf_file)
    if "fast_add" in conf:
        fast_add = conf["fast_add"]
        for k in fast_add:
            for i in k["cname"]:
                goodstr += "\\newcommand{\\" + i + "}{\m{" + i.upper() + "}}\n"
    for i in conf['components']:
        cname = i['cname']
        goodstr += "\\newcommand{\\" + cname + "}{\m{" + cname.upper() + "}}\n"
    #print("goodstr\n", goodstr)


# pars the fast adds
def fast_add_pars(conf):
    global meta_signals, my_dict

    if "fast_add" in conf:
        fast_add = conf["fast_add"]
        for k in fast_add:
            cname = k["cname"]
            for i in cname:
                if i not in meta_signals:
                    meta_signals[i] = list()
                signals = k["signals"]
                for j in signals:
                    my_dict[i + "_" + j] = 0
                    meta_signals[i].append(j)
    print("fast added signals")
    print(my_dict)
    print("meta1", meta_signals)

    return


def comp_pars(conf):
    global meta_signals, my_dict, shortcuts, valid_sc
    global multi, multi_base, multi_len, multi_width

    if "components" in conf:
        comp = conf["components"]

        for i in comp:
            signal_name = i["cname"]
            if signal_name not in meta_signals:
                meta_signals[signal_name] = list()

            if "signals" in i:
                signals = i["signals"]
                for j in signals:
                    my_dict[signal_name + "_" + j] = 0
                    meta_signals[signal_name].append(j)
            else:
                signal_base = int(i["n_signal_base"])
                signal_width = int(i["n_signal_width"])
                signal_len = int(math.ceil(math.log2(signal_base)) * signal_width)
                multi.add(signal_name)

                my_dict[signal_name] = 0

                multi_len[signal_name] = signal_len
                multi_base[signal_name] = signal_base
                multi_width[signal_name] = signal_width

            if "shortcuts" in i:
                shortcuts[signal_name] = i["shortcuts"]
            if "default" in i:
                my_dict[signal_name] = i["default"]

    print(my_dict)
    print("meta", meta_signals)
    print("shortcuts", shortcuts)
    return


def osyntax_pars(conf):
    global output_format, rom_size, adr_length, output_len

    output_syntax = list(conf["output_syntax"])
    print(output_syntax)
    output_format = list()
    for i in output_syntax:

        if i in meta_signals and i not in multi:  # all of the signals for a register
            m = meta_signals[i]
            for j in m:
                output_format.append(i + "_" + j)
        else:
            output_format.append(i)

    output_len = len(output_format)
    print("output123", output_len, output_format)
    for i in multi:
        if i in output_format:
            output_len += multi_len[i] - 1

    rom_size = conf["rom_size"]
    print("rome_size: ", rom_size)
    adr_length = math.ceil(math.log2(rom_size))
    output_len += adr_length
    return


def clist_gen():
    global control_list, my_dict
    for i in range(rom_size):
        control_list.append(my_dict.copy())
        next_addr.append(i + 1)


def pars_option():
    with open('sytax.json', 'r') as conf_file:
        conf = json.load(conf_file)

    fast_add_pars(conf)

    comp_pars(conf)

    osyntax_pars(conf)

    clist_gen()

    print("my dict", my_dict)

def generate_control_list(lines):
    command_no = -1
    for command in lines:
        command_no = command_no + 1
        a = re.findall(r"[\w|\w:]+", command)
        a = list(filter(None, a))

        found_goto = False
        for i in a:
            if found_goto:
                next_addr[command_no] = i
                found_goto = False
                print("going to", i)
            else:
                print(i + " is a ", end="")
                if i[-1] == ":":
                    if i[0] == '0':
                        print("changing baseline")
                        try:
                            command_no = int(i[:-1], 0)
                        except ValueError:
                            command_no = int(i[:-1], 10)
                    else:
                        print("label")
                        labels[i[0:-1]] = command_no;
                elif i == "goto":
                    found_goto = True
                    print("goto to ", end="")
                else:
                    if i not in my_dict:
                        signal_split = i.split('_')
                        signal_name = signal_split[0]
                        if signal_split[0] in multi:
                            signal_value = signal_split[1]
                            if signal_value in shortcuts[signal_name]:
                                control_list[command_no][signal_name] = signal_value
                                print("shortcut for ", shortcuts[signal_name][signal_value])
                            else:
                                control_list[command_no][signal_name] = \
                                    int(signal_value, multi_base[signal_name])
                                print("simple command")
                        else:
                            raise NameError(i + " is not in defined signals")
                    else:
                        control_list[command_no][i] = 1
                        print(" valid signal")
        if found_goto:
            raise NameError("missing go to argument")


def create_line(output_format, control_list):
    my_str = ""
    prev_i = output_format[0]
    for i in output_format:
        elem = control_list[i]
        if not prev_i.split('_')[0] == i.split('_')[0] or elem in shortcuts:
            my_str += "_"
        prev_i = i

        if i in multi:
            if elem in shortcuts[i]:
                my_str += str(bin(int(str(shortcuts[i][elem]), multi_base[i])))[2:].zfill(multi_len[i])[::-1]
                print("used shortcut", str(bin(int(str(shortcuts[i][elem]), multi_base[i])))[2:].zfill(multi_len[i]))
            else:
                my_str += str(bin(int(elem)))[2:].zfill(multi_len[i])[::-1]
        else:
            my_str += str(elem)

    return my_str


def generate_my_str_line(next_addr, control_list):
    my_str = ""

    if not str(next_addr).isdigit():
        my_str = my_str + str(bin(labels[next_addr])[2:].zfill(adr_length))[-adr_length:]
    else:
        my_str = my_str + str(bin(int(next_addr))[2:].zfill(adr_length))[-adr_length:]

    my_str += '___' + create_line(output_format, control_list)[::-1]



    print("my str", my_str)
    return my_str


def generate_my_str():
    the_str = list()
    for i in range(0, rom_size):
        the_str.append(generate_my_str_line(next_addr[i], control_list[i]))
    return the_str


def generate_regs(my_str):
    output = ""

    for i in range(0, rom_size):
        output += 'array[' + str(i) + \
                  '] = ' + str(output_len) + "'b" + my_str[i] + ';\n\t\t'

    for i in range(rom_size, 2 ** math.ceil(math.log2(rom_size))):
        output += 'array[' + str(i) + \
                  '] = ' + str(output_len) + "'b" + generate_my_str_line(0, my_dict.copy()) + ';\n\t\t'
    return output


def generate_verilog(mystr):
    lrom_size = str(math.ceil(math.log2(rom_size)) - 1)
    srom_size = str(rom_size - 1)
    olen = str(output_len - 1)
    verilog_code = '''module rom(address,data);
    input [''' + lrom_size + ''':0] address; 
    output [''' + olen + ''':0] data;
    reg [''' + olen + ''':0] array[''' + srom_size + ''':0];	//needs to be changed
    always @*
    begin 
\t\t''' + generate_regs(mystr) + \
                   '''
    end
    assign data=array[address];
endmodule
    '''
    return verilog_code


if __name__ == "__main__":
    main()
