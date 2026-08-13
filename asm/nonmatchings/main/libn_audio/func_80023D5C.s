nonmatching func_80023D5C, 0xD4

glabel func_80023D5C
    /* 2495C 80023D5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 24960 80023D60 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 24964 80023D64 AFA40020 */  sw         $a0, 0x20($sp)
    /* 24968 80023D68 0C00B590 */  jal        osSetIntMask
    /* 2496C 80023D6C 24040001 */   addiu     $a0, $zero, 0x1
    /* 24970 80023D70 3C048009 */  lui        $a0, %hi(D_800978E0)
    /* 24974 80023D74 248478E0 */  addiu      $a0, $a0, %lo(D_800978E0)
    /* 24978 80023D78 8C830034 */  lw         $v1, 0x34($a0)
    /* 2497C 80023D7C 8FA70020 */  lw         $a3, 0x20($sp)
    /* 24980 80023D80 00402825 */  or         $a1, $v0, $zero
    /* 24984 80023D84 10600022 */  beqz       $v1, .L80023E10
    /* 24988 80023D88 24060040 */   addiu     $a2, $zero, 0x40
    /* 2498C 80023D8C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 24990 80023D90 8C8F003C */  lw         $t7, 0x3C($a0)
    /* 24994 80023D94 24180001 */  addiu      $t8, $zero, 0x1
    /* 24998 80023D98 AC8E0034 */  sw         $t6, 0x34($a0)
    /* 2499C 80023D9C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 249A0 80023DA0 AC83003C */  sw         $v1, 0x3C($a0)
    /* 249A4 80023DA4 24190003 */  addiu      $t9, $zero, 0x3
    /* 249A8 80023DA8 2408007F */  addiu      $t0, $zero, 0x7F
    /* 249AC 80023DAC A4780028 */  sh         $t8, 0x28($v1)
    /* 249B0 80023DB0 AC670020 */  sw         $a3, 0x20($v1)
    /* 249B4 80023DB4 AC670024 */  sw         $a3, 0x24($v1)
    /* 249B8 80023DB8 A079002A */  sb         $t9, 0x2A($v1)
    /* 249BC 80023DBC A0680032 */  sb         $t0, 0x32($v1)
    /* 249C0 80023DC0 A0660034 */  sb         $a2, 0x34($v1)
    /* 249C4 80023DC4 A0600036 */  sb         $zero, 0x36($v1)
    /* 249C8 80023DC8 A460002C */  sh         $zero, 0x2C($v1)
    /* 249CC 80023DCC 9089004C */  lbu        $t1, 0x4C($a0)
    /* 249D0 80023DD0 240A00FF */  addiu      $t2, $zero, 0xFF
    /* 249D4 80023DD4 AC600044 */  sw         $zero, 0x44($v1)
    /* 249D8 80023DD8 A4600030 */  sh         $zero, 0x30($v1)
    /* 249DC 80023DDC A06A0038 */  sb         $t2, 0x38($v1)
    /* 249E0 80023DE0 A066003A */  sb         $a2, 0x3A($v1)
    /* 249E4 80023DE4 A060003C */  sb         $zero, 0x3C($v1)
    /* 249E8 80023DE8 A069002B */  sb         $t1, 0x2B($v1)
    /* 249EC 80023DEC 948B0048 */  lhu        $t3, 0x48($a0)
    /* 249F0 80023DF0 256C0001 */  addiu      $t4, $t3, 0x1
    /* 249F4 80023DF4 3182FFFF */  andi       $v0, $t4, 0xFFFF
    /* 249F8 80023DF8 14400004 */  bnez       $v0, .L80023E0C
    /* 249FC 80023DFC A48C0048 */   sh        $t4, 0x48($a0)
    /* 24A00 80023E00 244D0001 */  addiu      $t5, $v0, 0x1
    /* 24A04 80023E04 A48D0048 */  sh         $t5, 0x48($a0)
    /* 24A08 80023E08 31A2FFFF */  andi       $v0, $t5, 0xFFFF
  .L80023E0C:
    /* 24A0C 80023E0C A4620048 */  sh         $v0, 0x48($v1)
  .L80023E10:
    /* 24A10 80023E10 00A02025 */  or         $a0, $a1, $zero
    /* 24A14 80023E14 0C00B590 */  jal        osSetIntMask
    /* 24A18 80023E18 AFA3001C */   sw        $v1, 0x1C($sp)
    /* 24A1C 80023E1C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 24A20 80023E20 8FA2001C */  lw         $v0, 0x1C($sp)
    /* 24A24 80023E24 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 24A28 80023E28 03E00008 */  jr         $ra
    /* 24A2C 80023E2C 00000000 */   nop
endlabel func_80023D5C
.size func_80023D5C, . - func_80023D5C
