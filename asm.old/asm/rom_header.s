
.byte  0x80, 0x37, 0x12, 0x40 # PI BSD Domain 1 register
.word  0x0000000F # clock rate setting
.word  (EntryPoint + 0x100000) # entry point
.word  0x00001449 # libultra version I
.word  0x46039FB4 # checksum1
.word  0x0337822C # checksum2
.word  0x00000000 # unknown
.word  0x00000000 # unknown
.ascii "Kirby64             " # ROM name: 20 bytes
.word  0x00000000 # unknown
.word  0x0000004E # idk
.ascii "K4"       # cartridge ID
.ascii "E"        # country
.byte  0x00       # version
