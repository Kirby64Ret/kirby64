import yaml, sys



from yaml import load, dump
try:
    from yaml import CLoader as Loader, CDumper as Dumper
except ImportError:
    from yaml import Loader, Dumper

fs = ""
with open("kirby64.yaml") as y:
    fs = y.read()

data = load(fs, Loader=Loader)

fmt = """    {
      "name": "%s",
      "target_path": %s,
      "base_path": %s
    },"""

namedb = {}

folderdb = {
    'data': 'asm/data/%s.data.o',
    'rodata': 'asm/data/%s.rodata.o',
    'asm': 'asm/%s.o',
    'hasm': 'asm/%s.o',
    'c': 'src/%s.o',
    'bss': 'asm/data/%s.bss.o',
    '.bss': "bss %s",
    '.rodata': "rodata %s",
    'lib': "%s.a",
    'textbin': "asm/data/%s.o"
}

for s in data['segments']:
    if 'name' in s:
        if s['type'] != 'bin':
            if 'subsegments' in s:
                for ss in s['subsegments']:
                    if 'type' in ss:
                        if ss['name'] not in namedb:
                            namedb[ss['name']] = ""
                            print(fmt % (
                                ss['name'],
                                f"\"expected/{folderdb[ss['type']] % ss['name']}\"",
                                f"\"build/{folderdb[ss['type']] % ss['name']}\"" if ss['type'] == 'c' else "null"
                                )
                            )
                    elif len(ss) >= 3:
                        if ss[2] not in namedb:
                            namedb[ss[2]] = ""
                            print(fmt % (
                                ss[2],
                                f"\"expected/{folderdb[ss[1]] % ss[2]}\"",
                                f"\"build/{folderdb[ss[1]] % ss[2]}\"" if ss[1] == 'c' else "null"
                                )
                            )
    elif len(s) >= 3 and s[1] != 'bin':
        print(s[2])


