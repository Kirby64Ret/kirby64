nonmatching func_800A1F30, 0xF4

glabel func_800A1F30
    /* 4A180 800A1F30 3C05800D */  lui        $a1, %hi(D_800D6A0C)
    /* 4A184 800A1F34 24A56A0C */  addiu      $a1, $a1, %lo(D_800D6A0C)
    /* 4A188 800A1F38 8CA20000 */  lw         $v0, 0x0($a1)
    /* 4A18C 800A1F3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 4A190 800A1F40 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 4A194 800A1F44 10400033 */  beqz       $v0, .L800A2014
    /* 4A198 800A1F48 00001825 */   or        $v1, $zero, $zero
  .L800A1F4C:
    /* 4A19C 800A1F4C 5444002E */  bnel       $v0, $a0, .L800A2008
    /* 4A1A0 800A1F50 00401825 */   or        $v1, $v0, $zero
    /* 4A1A4 800A1F54 908E0009 */  lbu        $t6, 0x9($a0)
    /* 4A1A8 800A1F58 24010002 */  addiu      $at, $zero, 0x2
    /* 4A1AC 800A1F5C 15C10009 */  bne        $t6, $at, .L800A1F84
    /* 4A1B0 800A1F60 00000000 */   nop
    /* 4A1B4 800A1F64 948F0054 */  lhu        $t7, 0x54($a0)
    /* 4A1B8 800A1F68 24180001 */  addiu      $t8, $zero, 0x1
    /* 4A1BC 800A1F6C 11E00005 */  beqz       $t7, .L800A1F84
    /* 4A1C0 800A1F70 00000000 */   nop
    /* 4A1C4 800A1F74 44802000 */  mtc1       $zero, $f4
    /* 4A1C8 800A1F78 A498000E */  sh         $t8, 0xE($a0)
    /* 4A1CC 800A1F7C 10000025 */  b          .L800A2014
    /* 4A1D0 800A1F80 E4840040 */   swc1      $f4, 0x40($a0)
  .L800A1F84:
    /* 4A1D4 800A1F84 54600005 */  bnel       $v1, $zero, .L800A1F9C
    /* 4A1D8 800A1F88 8C480000 */   lw        $t0, 0x0($v0)
    /* 4A1DC 800A1F8C 8C590000 */  lw         $t9, 0x0($v0)
    /* 4A1E0 800A1F90 10000003 */  b          .L800A1FA0
    /* 4A1E4 800A1F94 ACB90000 */   sw        $t9, 0x0($a1)
    /* 4A1E8 800A1F98 8C480000 */  lw         $t0, 0x0($v0)
  .L800A1F9C:
    /* 4A1EC 800A1F9C AC680000 */  sw         $t0, 0x0($v1)
  .L800A1FA0:
    /* 4A1F0 800A1FA0 8C85004C */  lw         $a1, 0x4C($a0)
    /* 4A1F4 800A1FA4 10A0000C */  beqz       $a1, .L800A1FD8
    /* 4A1F8 800A1FA8 00000000 */   nop
    /* 4A1FC 800A1FAC 94A9002A */  lhu        $t1, 0x2A($a1)
    /* 4A200 800A1FB0 252AFFFF */  addiu      $t2, $t1, -0x1
    /* 4A204 800A1FB4 A4AA002A */  sh         $t2, 0x2A($a1)
    /* 4A208 800A1FB8 8C85004C */  lw         $a1, 0x4C($a0)
    /* 4A20C 800A1FBC 94AB002A */  lhu        $t3, 0x2A($a1)
    /* 4A210 800A1FC0 00A02025 */  or         $a0, $a1, $zero
    /* 4A214 800A1FC4 15600004 */  bnez       $t3, .L800A1FD8
    /* 4A218 800A1FC8 00000000 */   nop
    /* 4A21C 800A1FCC 0C026DA7 */  jal        func_8009B69C
    /* 4A220 800A1FD0 AFA20018 */   sw        $v0, 0x18($sp)
    /* 4A224 800A1FD4 8FA20018 */  lw         $v0, 0x18($sp)
  .L800A1FD8:
    /* 4A228 800A1FD8 3C03800D */  lui        $v1, %hi(D_800D6A08)
    /* 4A22C 800A1FDC 24636A08 */  addiu      $v1, $v1, %lo(D_800D6A08)
    /* 4A230 800A1FE0 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 4A234 800A1FE4 3C04800D */  lui        $a0, %hi(D_800D6AE2)
    /* 4A238 800A1FE8 24846AE2 */  addiu      $a0, $a0, %lo(D_800D6AE2)
    /* 4A23C 800A1FEC AC4C0000 */  sw         $t4, 0x0($v0)
    /* 4A240 800A1FF0 948D0000 */  lhu        $t5, 0x0($a0)
    /* 4A244 800A1FF4 AC620000 */  sw         $v0, 0x0($v1)
    /* 4A248 800A1FF8 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 4A24C 800A1FFC 10000005 */  b          .L800A2014
    /* 4A250 800A2000 A48E0000 */   sh        $t6, 0x0($a0)
    /* 4A254 800A2004 00401825 */  or         $v1, $v0, $zero
  .L800A2008:
    /* 4A258 800A2008 8C420000 */  lw         $v0, 0x0($v0)
    /* 4A25C 800A200C 1440FFCF */  bnez       $v0, .L800A1F4C
    /* 4A260 800A2010 00000000 */   nop
  .L800A2014:
    /* 4A264 800A2014 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 4A268 800A2018 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 4A26C 800A201C 03E00008 */  jr         $ra
    /* 4A270 800A2020 00000000 */   nop
endlabel func_800A1F30
.size func_800A1F30, . - func_800A1F30
