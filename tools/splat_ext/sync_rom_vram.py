from itertools import zip_longest
from pathlib import Path
from typing import Dict, List, Optional, Tuple, TYPE_CHECKING, Union

from splat.util import log, options
from splat.util.color import unpack_color

from splat.segtypes.segment import Segment
from splat.segtypes.linker_entry import LinkerEntry

class LinkerEntrySyncRamRom(LinkerEntry):
    def __init__(self, segment: Segment):
        super().__init__(segment, [], Path(), "linker_offset", "linker_offset", False)
        self.object_path = None

    def emit_entry(self, linker_writer: LinkerWriter):
        linker_writer._write_symbol(".", "__romPos")

class N64SegSync_rom_vram(Segment):
    require_unique_name = False
    def __init__(self, rom_start, rom_end, type, name, vram_start, args, yaml, bss_size=0):
        self.logname = "vram_eq_rom_ext"
        super().__init__(rom_start, rom_end, type, name, vram_start, args=args, yaml=yaml)

    def get_linker_entries(self):
        return [ LinkerEntrySyncRamRom(self) ]
