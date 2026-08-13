nonmatching func_800A5D88, 0x20C

glabel func_800A5D88
    /* 4DFD8 800A5D88 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 4DFDC 800A5D8C AFBF002C */  sw         $ra, 0x2C($sp)
    /* 4DFE0 800A5D90 AFB10028 */  sw         $s1, 0x28($sp)
    /* 4DFE4 800A5D94 AFB00024 */  sw         $s0, 0x24($sp)
    /* 4DFE8 800A5D98 F7B60018 */  sdc1       $f22, 0x18($sp)
    /* 4DFEC 800A5D9C F7B40010 */  sdc1       $f20, 0x10($sp)
    /* 4DFF0 800A5DA0 AFA40050 */  sw         $a0, 0x50($sp)
    /* 4DFF4 800A5DA4 00A08025 */  or         $s0, $a1, $zero
    /* 4DFF8 800A5DA8 0C0296D9 */  jal        func_800A5B64
    /* 4DFFC 800A5DAC C48C0030 */   lwc1      $f12, 0x30($a0)
    /* 4E000 800A5DB0 8FB10050 */  lw         $s1, 0x50($sp)
    /* 4E004 800A5DB4 46000506 */  mov.s      $f20, $f0
    /* 4E008 800A5DB8 26310030 */  addiu      $s1, $s1, 0x30
    /* 4E00C 800A5DBC 0C0296F7 */  jal        func_800A5BDC
    /* 4E010 800A5DC0 C62C0000 */   lwc1      $f12, 0x0($s1)
    /* 4E014 800A5DC4 46000586 */  mov.s      $f22, $f0
    /* 4E018 800A5DC8 0C0296D9 */  jal        func_800A5B64
    /* 4E01C 800A5DCC C62C0004 */   lwc1      $f12, 0x4($s1)
    /* 4E020 800A5DD0 E7A0003C */  swc1       $f0, 0x3C($sp)
    /* 4E024 800A5DD4 0C0296F7 */  jal        func_800A5BDC
    /* 4E028 800A5DD8 C62C0004 */   lwc1      $f12, 0x4($s1)
    /* 4E02C 800A5DDC C62C0008 */  lwc1       $f12, 0x8($s1)
    /* 4E030 800A5DE0 0C0296D9 */  jal        func_800A5B64
    /* 4E034 800A5DE4 E7A00030 */   swc1      $f0, 0x30($sp)
    /* 4E038 800A5DE8 C62C0008 */  lwc1       $f12, 0x8($s1)
    /* 4E03C 800A5DEC 0C0296F7 */  jal        func_800A5BDC
    /* 4E040 800A5DF0 E7A00038 */   swc1      $f0, 0x38($sp)
    /* 4E044 800A5DF4 C7AE0030 */  lwc1       $f14, 0x30($sp)
    /* 4E048 800A5DF8 C7A20038 */  lwc1       $f2, 0x38($sp)
    /* 4E04C 800A5DFC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 4E050 800A5E00 46007102 */  mul.s      $f4, $f14, $f0
    /* 4E054 800A5E04 44819000 */  mtc1       $at, $f18
    /* 4E058 800A5E08 46027182 */  mul.s      $f6, $f14, $f2
    /* 4E05C 800A5E0C E6040000 */  swc1       $f4, 0x0($s0)
    /* 4E060 800A5E10 E6060004 */  swc1       $f6, 0x4($s0)
    /* 4E064 800A5E14 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* 4E068 800A5E18 46004287 */  neg.s      $f10, $f8
    /* 4E06C 800A5E1C E60A0008 */  swc1       $f10, 0x8($s0)
    /* 4E070 800A5E20 C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* 4E074 800A5E24 4604A302 */  mul.s      $f12, $f20, $f4
    /* 4E078 800A5E28 00000000 */  nop
    /* 4E07C 800A5E2C 46006182 */  mul.s      $f6, $f12, $f0
    /* 4E080 800A5E30 00000000 */  nop
    /* 4E084 800A5E34 4602B202 */  mul.s      $f8, $f22, $f2
    /* 4E088 800A5E38 46083281 */  sub.s      $f10, $f6, $f8
    /* 4E08C 800A5E3C 46026102 */  mul.s      $f4, $f12, $f2
    /* 4E090 800A5E40 00000000 */  nop
    /* 4E094 800A5E44 4600B182 */  mul.s      $f6, $f22, $f0
    /* 4E098 800A5E48 E60A000C */  swc1       $f10, 0xC($s0)
    /* 4E09C 800A5E4C 460EA282 */  mul.s      $f10, $f20, $f14
    /* 4E0A0 800A5E50 46062200 */  add.s      $f8, $f4, $f6
    /* 4E0A4 800A5E54 E60A0014 */  swc1       $f10, 0x14($s0)
    /* 4E0A8 800A5E58 E6080010 */  swc1       $f8, 0x10($s0)
    /* 4E0AC 800A5E5C C7A4003C */  lwc1       $f4, 0x3C($sp)
    /* 4E0B0 800A5E60 8FA30050 */  lw         $v1, 0x50($sp)
    /* 4E0B4 800A5E64 4604B302 */  mul.s      $f12, $f22, $f4
    /* 4E0B8 800A5E68 24620040 */  addiu      $v0, $v1, 0x40
    /* 4E0BC 800A5E6C 46006182 */  mul.s      $f6, $f12, $f0
    /* 4E0C0 800A5E70 00000000 */  nop
    /* 4E0C4 800A5E74 4602A202 */  mul.s      $f8, $f20, $f2
    /* 4E0C8 800A5E78 46083280 */  add.s      $f10, $f6, $f8
    /* 4E0CC 800A5E7C 46026102 */  mul.s      $f4, $f12, $f2
    /* 4E0D0 800A5E80 00000000 */  nop
    /* 4E0D4 800A5E84 4600A182 */  mul.s      $f6, $f20, $f0
    /* 4E0D8 800A5E88 E60A0018 */  swc1       $f10, 0x18($s0)
    /* 4E0DC 800A5E8C 460EB282 */  mul.s      $f10, $f22, $f14
    /* 4E0E0 800A5E90 46062201 */  sub.s      $f8, $f4, $f6
    /* 4E0E4 800A5E94 E60A0020 */  swc1       $f10, 0x20($s0)
    /* 4E0E8 800A5E98 E608001C */  swc1       $f8, 0x1C($s0)
    /* 4E0EC 800A5E9C C4500000 */  lwc1       $f16, 0x0($v0)
    /* 4E0F0 800A5EA0 46109032 */  c.eq.s     $f18, $f16
    /* 4E0F4 800A5EA4 00000000 */  nop
    /* 4E0F8 800A5EA8 4501000C */  bc1t       .L800A5EDC
    /* 4E0FC 800A5EAC 00000000 */   nop
    /* 4E100 800A5EB0 C6040000 */  lwc1       $f4, 0x0($s0)
    /* 4E104 800A5EB4 C6080004 */  lwc1       $f8, 0x4($s0)
    /* 4E108 800A5EB8 46102182 */  mul.s      $f6, $f4, $f16
    /* 4E10C 800A5EBC E6060000 */  swc1       $f6, 0x0($s0)
    /* 4E110 800A5EC0 C44A0000 */  lwc1       $f10, 0x0($v0)
    /* 4E114 800A5EC4 C6060008 */  lwc1       $f6, 0x8($s0)
    /* 4E118 800A5EC8 460A4102 */  mul.s      $f4, $f8, $f10
    /* 4E11C 800A5ECC E6040004 */  swc1       $f4, 0x4($s0)
    /* 4E120 800A5ED0 C4480000 */  lwc1       $f8, 0x0($v0)
    /* 4E124 800A5ED4 46083282 */  mul.s      $f10, $f6, $f8
    /* 4E128 800A5ED8 E60A0008 */  swc1       $f10, 0x8($s0)
  .L800A5EDC:
    /* 4E12C 800A5EDC C4400004 */  lwc1       $f0, 0x4($v0)
    /* 4E130 800A5EE0 46009032 */  c.eq.s     $f18, $f0
    /* 4E134 800A5EE4 00000000 */  nop
    /* 4E138 800A5EE8 4503000D */  bc1tl      .L800A5F20
    /* 4E13C 800A5EEC C4400008 */   lwc1      $f0, 0x8($v0)
    /* 4E140 800A5EF0 C604000C */  lwc1       $f4, 0xC($s0)
    /* 4E144 800A5EF4 C6080010 */  lwc1       $f8, 0x10($s0)
    /* 4E148 800A5EF8 46002182 */  mul.s      $f6, $f4, $f0
    /* 4E14C 800A5EFC E606000C */  swc1       $f6, 0xC($s0)
    /* 4E150 800A5F00 C44A0004 */  lwc1       $f10, 0x4($v0)
    /* 4E154 800A5F04 C6060014 */  lwc1       $f6, 0x14($s0)
    /* 4E158 800A5F08 460A4102 */  mul.s      $f4, $f8, $f10
    /* 4E15C 800A5F0C E6040010 */  swc1       $f4, 0x10($s0)
    /* 4E160 800A5F10 C4480004 */  lwc1       $f8, 0x4($v0)
    /* 4E164 800A5F14 46083282 */  mul.s      $f10, $f6, $f8
    /* 4E168 800A5F18 E60A0014 */  swc1       $f10, 0x14($s0)
    /* 4E16C 800A5F1C C4400008 */  lwc1       $f0, 0x8($v0)
  .L800A5F20:
    /* 4E170 800A5F20 46009032 */  c.eq.s     $f18, $f0
    /* 4E174 800A5F24 00000000 */  nop
    /* 4E178 800A5F28 4503000D */  bc1tl      .L800A5F60
    /* 4E17C 800A5F2C 2462001C */   addiu     $v0, $v1, 0x1C
    /* 4E180 800A5F30 C6040018 */  lwc1       $f4, 0x18($s0)
    /* 4E184 800A5F34 C608001C */  lwc1       $f8, 0x1C($s0)
    /* 4E188 800A5F38 46002182 */  mul.s      $f6, $f4, $f0
    /* 4E18C 800A5F3C E6060018 */  swc1       $f6, 0x18($s0)
    /* 4E190 800A5F40 C44A0008 */  lwc1       $f10, 0x8($v0)
    /* 4E194 800A5F44 C6060020 */  lwc1       $f6, 0x20($s0)
    /* 4E198 800A5F48 460A4102 */  mul.s      $f4, $f8, $f10
    /* 4E19C 800A5F4C E604001C */  swc1       $f4, 0x1C($s0)
    /* 4E1A0 800A5F50 C4480008 */  lwc1       $f8, 0x8($v0)
    /* 4E1A4 800A5F54 46083282 */  mul.s      $f10, $f6, $f8
    /* 4E1A8 800A5F58 E60A0020 */  swc1       $f10, 0x20($s0)
    /* 4E1AC 800A5F5C 2462001C */  addiu      $v0, $v1, 0x1C
  .L800A5F60:
    /* 4E1B0 800A5F60 C4440000 */  lwc1       $f4, 0x0($v0)
    /* 4E1B4 800A5F64 E6040024 */  swc1       $f4, 0x24($s0)
    /* 4E1B8 800A5F68 C4460004 */  lwc1       $f6, 0x4($v0)
    /* 4E1BC 800A5F6C E6060028 */  swc1       $f6, 0x28($s0)
    /* 4E1C0 800A5F70 C4480008 */  lwc1       $f8, 0x8($v0)
    /* 4E1C4 800A5F74 E608002C */  swc1       $f8, 0x2C($s0)
    /* 4E1C8 800A5F78 8FBF002C */  lw         $ra, 0x2C($sp)
    /* 4E1CC 800A5F7C 8FB10028 */  lw         $s1, 0x28($sp)
    /* 4E1D0 800A5F80 8FB00024 */  lw         $s0, 0x24($sp)
    /* 4E1D4 800A5F84 D7B60018 */  ldc1       $f22, 0x18($sp)
    /* 4E1D8 800A5F88 D7B40010 */  ldc1       $f20, 0x10($sp)
    /* 4E1DC 800A5F8C 03E00008 */  jr         $ra
    /* 4E1E0 800A5F90 27BD0050 */   addiu     $sp, $sp, 0x50
endlabel func_800A5D88
.size func_800A5D88, . - func_800A5D88
