from itertools import zip_longest
from pathlib import Path
from typing import Dict, List, Optional, Tuple, TYPE_CHECKING, Union

from splat.util import log, options
from splat.util.color import unpack_color

from splat.segtypes.segment import Segment


class N64SegSkip(Segment):
    require_unique_name = False
    def __init__(self, rom_start, rom_end, type, name, vram_start, args, yaml):
        self.logname = "skip_ext"
        # log.error(yaml)
        super().__init__(rom_start, rom_end, type, name, vram_start, args=args, yaml=yaml)
        self.skip = self.yaml[2]

    def get_linker_entries(self):
        from splat.segtypes.linker_entry import LinkerEntry

        return [
            LinkerEntry(
                self,
                [],
                f". += {self.skip}",
                "",
                "linker",
            )
        ]
