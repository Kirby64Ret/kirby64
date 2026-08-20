from itertools import zip_longest
from pathlib import Path
from typing import Dict, List, Optional, Tuple, TYPE_CHECKING, Union

from splat.util import log, options
from splat.util.color import unpack_color

from splat.segtypes.common.bin import CommonSegBin
from splat.segtypes.linker_entry import LinkerEntry, LinkerWriter

class N64RomRelativeLinkerEntry(LinkerEntry):
    def emit_entry(self, linker_writer: "LinkerWriter"):
        linker_writer._writeln(". = __romPos;")
        self.emit_symbol_for_data(linker_writer)
        self.emit_path(linker_writer)


class N64SegRom_relative(CommonSegBin):
    require_unique_name = False
    def __init__(self, rom_start, rom_end, type, name, vram_start, args, yaml, bss_size=0):
        self.extract = False
        self.logname = "rom_relative_ext"
        super().__init__(rom_start, rom_end, type, name, vram_start, args=args, yaml=yaml)
        self.vram_start = self.rom_start
        self.vram_symbol = "__romPos"

    def get_linker_entries(self):
        path = self.out_path()

        return [
            N64RomRelativeLinkerEntry(
                self,
                [path],
                path,
                self.get_linker_section_order(),
                    self.get_linker_section_linksection(),
                    self.is_noload(),
            )
        ]
