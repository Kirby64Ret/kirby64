glabel func_800FBF18
/* 084988 800FBF18 3C0E8013 */  lui   $t6, %hi(D_80129114) # $t6, 0x8013
/* 08498C 800FBF1C 8DCE9114 */  lw    $t6, %lo(D_80129114)($t6)
/* 084990 800FBF20 0004C100 */  sll   $t8, $a0, 4
/* 084994 800FBF24 3C038013 */  lui   $v1, %hi(D_80129210) # $v1, 0x8013
/* 084998 800FBF28 8DCF0004 */  lw    $t7, 4($t6)
/* 08499C 800FBF2C 24639210 */  addiu $v1, %lo(D_80129210) # addiu $v1, $v1, -0x6df0
/* 0849A0 800FBF30 01F8C821 */  addu  $t9, $t7, $t8
/* 0849A4 800FBF34 8F220000 */  lw    $v0, ($t9)
/* 0849A8 800FBF38 90480020 */  lbu   $t0, 0x20($v0)
/* 0849AC 800FBF3C 24420020 */  addiu $v0, $v0, 0x20
/* 0849B0 800FBF40 A4680000 */  sh    $t0, ($v1)
/* 0849B4 800FBF44 90490001 */  lbu   $t1, 1($v0)
/* 0849B8 800FBF48 A4690002 */  sh    $t1, 2($v1)
/* 0849BC 800FBF4C C4440020 */  lwc1  $f4, 0x20($v0)
/* 0849C0 800FBF50 E4640004 */  swc1  $f4, 4($v1)
/* 0849C4 800FBF54 C4460028 */  lwc1  $f6, 0x28($v0)
/* 0849C8 800FBF58 E4660008 */  swc1  $f6, 8($v1)
/* 0849CC 800FBF5C C4480030 */  lwc1  $f8, 0x30($v0)
/* 0849D0 800FBF60 E468000C */  swc1  $f8, 0xc($v1)
/* 0849D4 800FBF64 C44A0038 */  lwc1  $f10, 0x38($v0)
/* 0849D8 800FBF68 E46A0010 */  swc1  $f10, 0x10($v1)
/* 0849DC 800FBF6C C4500040 */  lwc1  $f16, 0x40($v0)
/* 0849E0 800FBF70 E4700014 */  swc1  $f16, 0x14($v1)
/* 0849E4 800FBF74 904A0002 */  lbu   $t2, 2($v0)
/* 0849E8 800FBF78 A06A0018 */  sb    $t2, 0x18($v1)
/* 0849EC 800FBF7C 904B0003 */  lbu   $t3, 3($v0)
/* 0849F0 800FBF80 A06B0019 */  sb    $t3, 0x19($v1)
/* 0849F4 800FBF84 904C0004 */  lbu   $t4, 4($v0)
/* 0849F8 800FBF88 A06C001A */  sb    $t4, 0x1a($v1)
/* 0849FC 800FBF8C 904D0006 */  lbu   $t5, 6($v0)
/* 084A00 800FBF90 A06D001C */  sb    $t5, 0x1c($v1)
/* 084A04 800FBF94 904E0007 */  lbu   $t6, 7($v0)
/* 084A08 800FBF98 A06E001D */  sb    $t6, 0x1d($v1)
/* 084A0C 800FBF9C 904F0008 */  lbu   $t7, 8($v0)
/* 084A10 800FBFA0 A06F001E */  sb    $t7, 0x1e($v1)
/* 084A14 800FBFA4 90580009 */  lbu   $t8, 9($v0)
/* 084A18 800FBFA8 A078001F */  sb    $t8, 0x1f($v1)
/* 084A1C 800FBFAC C4520048 */  lwc1  $f18, 0x48($v0)
/* 084A20 800FBFB0 E4720020 */  swc1  $f18, 0x20($v1)
/* 084A24 800FBFB4 C444004C */  lwc1  $f4, 0x4c($v0)
/* 084A28 800FBFB8 E4640024 */  swc1  $f4, 0x24($v1)
/* 084A2C 800FBFBC C4460050 */  lwc1  $f6, 0x50($v0)
/* 084A30 800FBFC0 E4660028 */  swc1  $f6, 0x28($v1)
/* 084A34 800FBFC4 C4480054 */  lwc1  $f8, 0x54($v0)
/* 084A38 800FBFC8 E468002C */  swc1  $f8, 0x2c($v1)
/* 084A3C 800FBFCC C44A0058 */  lwc1  $f10, 0x58($v0)
/* 084A40 800FBFD0 E46A0030 */  swc1  $f10, 0x30($v1)
/* 084A44 800FBFD4 C450005C */  lwc1  $f16, 0x5c($v0)
/* 084A48 800FBFD8 E4700034 */  swc1  $f16, 0x34($v1)
/* 084A4C 800FBFDC C4520060 */  lwc1  $f18, 0x60($v0)
/* 084A50 800FBFE0 E4720038 */  swc1  $f18, 0x38($v1)
/* 084A54 800FBFE4 C4440064 */  lwc1  $f4, 0x64($v0)
/* 084A58 800FBFE8 E464003C */  swc1  $f4, 0x3c($v1)
/* 084A5C 800FBFEC C4460068 */  lwc1  $f6, 0x68($v0)
/* 084A60 800FBFF0 E4660040 */  swc1  $f6, 0x40($v1)
/* 084A64 800FBFF4 C448006C */  lwc1  $f8, 0x6c($v0)
/* 084A68 800FBFF8 E4680044 */  swc1  $f8, 0x44($v1)
/* 084A6C 800FBFFC C44A000C */  lwc1  $f10, 0xc($v0)
/* 084A70 800FC000 E46A0048 */  swc1  $f10, 0x48($v1)
/* 084A74 800FC004 C4500010 */  lwc1  $f16, 0x10($v0)
/* 084A78 800FC008 E470004C */  swc1  $f16, 0x4c($v1)
/* 084A7C 800FC00C C4520014 */  lwc1  $f18, 0x14($v0)
/* 084A80 800FC010 E4720050 */  swc1  $f18, 0x50($v1)
/* 084A84 800FC014 C4440018 */  lwc1  $f4, 0x18($v0)
/* 084A88 800FC018 E4640054 */  swc1  $f4, 0x54($v1)
/* 084A8C 800FC01C C446001C */  lwc1  $f6, 0x1c($v0)
/* 084A90 800FC020 E4660058 */  swc1  $f6, 0x58($v1)
/* 084A94 800FC024 8459000A */  lh    $t9, 0xa($v0)
/* 084A98 800FC028 44994000 */  mtc1  $t9, $f8
/* 084A9C 800FC02C 00000000 */  nop   
/* 084AA0 800FC030 468042A0 */  cvt.s.w $f10, $f8
/* 084AA4 800FC034 03E00008 */  jr    $ra
/* 084AA8 800FC038 E46A005C */   swc1  $f10, 0x5c($v1)
