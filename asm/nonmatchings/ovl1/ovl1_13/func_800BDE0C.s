nonmatching func_800BDE0C, 0x120

glabel func_800BDE0C
    /* 6605C 800BDE0C 3C0E800F */  lui        $t6, %hi(D_800F4D14)
    /* 66060 800BDE10 8DCE4D14 */  lw         $t6, %lo(D_800F4D14)($t6)
    /* 66064 800BDE14 3C07800F */  lui        $a3, %hi(D_800ED510)
    /* 66068 800BDE18 24E7D510 */  addiu      $a3, $a3, %lo(D_800ED510)
    /* 6606C 800BDE1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 66070 800BDE20 3C01800D */  lui        $at, %hi(D_800D6F58)
    /* 66074 800BDE24 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 66078 800BDE28 AFA40018 */  sw         $a0, 0x18($sp)
    /* 6607C 800BDE2C 11C00031 */  beqz       $t6, .L800BDEF4
    /* 66080 800BDE30 AC276F58 */   sw        $a3, %lo(D_800D6F58)($at)
    /* 66084 800BDE34 3C0F800F */  lui        $t7, %hi(D_800F6198)
    /* 66088 800BDE38 8DEF6198 */  lw         $t7, %lo(D_800F6198)($t7)
    /* 6608C 800BDE3C 3C01800D */  lui        $at, %hi(D_800D6F50)
    /* 66090 800BDE40 3C18800D */  lui        $t8, %hi(saveHUDTheme)
    /* 66094 800BDE44 11E0001F */  beqz       $t7, .L800BDEC4
    /* 66098 800BDE48 3C04800D */   lui       $a0, %hi(D_800D52FC)
    /* 6609C 800BDE4C 3C040005 */  lui        $a0, (0x50002 >> 16)
    /* 660A0 800BDE50 34840002 */  ori        $a0, $a0, (0x50002 & 0xFFFF)
    /* 660A4 800BDE54 24050010 */  addiu      $a1, $zero, 0x10
    /* 660A8 800BDE58 0C02A24D */  jal        func_800A8934
    /* 660AC 800BDE5C 00003025 */   or        $a2, $zero, $zero
    /* 660B0 800BDE60 3C04800F */  lui        $a0, %hi(D_800EDA60)
    /* 660B4 800BDE64 3C07800F */  lui        $a3, %hi(D_800EDA10)
    /* 660B8 800BDE68 3C06800F */  lui        $a2, %hi(D_800EDA24)
    /* 660BC 800BDE6C 3C08800F */  lui        $t0, %hi(D_800F4324)
    /* 660C0 800BDE70 9484DA60 */  lhu        $a0, %lo(D_800EDA60)($a0)
    /* 660C4 800BDE74 25084324 */  addiu      $t0, $t0, %lo(D_800F4324)
    /* 660C8 800BDE78 24C6DA24 */  addiu      $a2, $a2, %lo(D_800EDA24)
    /* 660CC 800BDE7C 24E7DA10 */  addiu      $a3, $a3, %lo(D_800EDA10)
    /* 660D0 800BDE80 240500D8 */  addiu      $a1, $zero, 0xD8
  .L800BDE84:
    /* 660D4 800BDE84 A4C40000 */  sh         $a0, 0x0($a2)
    /* 660D8 800BDE88 A4C40002 */  sh         $a0, 0x2($a2)
    /* 660DC 800BDE8C 2403000C */  addiu      $v1, $zero, 0xC
    /* 660E0 800BDE90 24E20018 */  addiu      $v0, $a3, 0x18
  .L800BDE94:
    /* 660E4 800BDE94 24630004 */  addiu      $v1, $v1, 0x4
    /* 660E8 800BDE98 A4440002 */  sh         $a0, 0x2($v0)
    /* 660EC 800BDE9C A4440004 */  sh         $a0, 0x4($v0)
    /* 660F0 800BDEA0 A4440006 */  sh         $a0, 0x6($v0)
    /* 660F4 800BDEA4 24420008 */  addiu      $v0, $v0, 0x8
    /* 660F8 800BDEA8 1465FFFA */  bne        $v1, $a1, .L800BDE94
    /* 660FC 800BDEAC A444FFF8 */   sh        $a0, -0x8($v0)
    /* 66100 800BDEB0 24C60280 */  addiu      $a2, $a2, 0x280
    /* 66104 800BDEB4 14C8FFF3 */  bne        $a2, $t0, .L800BDE84
    /* 66108 800BDEB8 24E70280 */   addiu     $a3, $a3, 0x280
    /* 6610C 800BDEBC 1000000B */  b          .L800BDEEC
    /* 66110 800BDEC0 00000000 */   nop
  .L800BDEC4:
    /* 66114 800BDEC4 8F186BB0 */  lw         $t8, %lo(saveHUDTheme)($t8)
    /* 66118 800BDEC8 AC206F50 */  sw         $zero, %lo(D_800D6F50)($at)
    /* 6611C 800BDECC 24050010 */  addiu      $a1, $zero, 0x10
    /* 66120 800BDED0 0018C880 */  sll        $t9, $t8, 2
    /* 66124 800BDED4 00992021 */  addu       $a0, $a0, $t9
    /* 66128 800BDED8 8C8452FC */  lw         $a0, %lo(D_800D52FC)($a0)
    /* 6612C 800BDEDC 0C02A24D */  jal        func_800A8934
    /* 66130 800BDEE0 00003025 */   or        $a2, $zero, $zero
    /* 66134 800BDEE4 0C02F6C6 */  jal        func_800BDB18
    /* 66138 800BDEE8 00000000 */   nop
  .L800BDEEC:
    /* 6613C 800BDEEC 3C01800F */  lui        $at, %hi(D_800F4D14)
    /* 66140 800BDEF0 AC204D14 */  sw         $zero, %lo(D_800F4D14)($at)
  .L800BDEF4:
    /* 66144 800BDEF4 3C09800F */  lui        $t1, %hi(D_800F6198)
    /* 66148 800BDEF8 8D296198 */  lw         $t1, %lo(D_800F6198)($t1)
    /* 6614C 800BDEFC 11200005 */  beqz       $t1, .L800BDF14
    /* 66150 800BDF00 00000000 */   nop
    /* 66154 800BDF04 0C02F75A */  jal        func_800BDD68
    /* 66158 800BDF08 00000000 */   nop
    /* 6615C 800BDF0C 10000004 */  b          .L800BDF20
    /* 66160 800BDF10 8FBF0014 */   lw        $ra, 0x14($sp)
  .L800BDF14:
    /* 66164 800BDF14 0C02F742 */  jal        func_800BDD08
    /* 66168 800BDF18 00000000 */   nop
    /* 6616C 800BDF1C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L800BDF20:
    /* 66170 800BDF20 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 66174 800BDF24 03E00008 */  jr         $ra
    /* 66178 800BDF28 00000000 */   nop
endlabel func_800BDE0C
.size func_800BDE0C, . - func_800BDE0C
