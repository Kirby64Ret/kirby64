glabel func_8010B11C
/* 093B8C 8010B11C 3C078013 */  lui   $a3, %hi(D_8012BD00) # $a3, 0x8013
/* 093B90 8010B120 24E7BD00 */  addiu $a3, %lo(D_8012BD00) # addiu $a3, $a3, -0x4300
/* 093B94 8010B124 90EF0000 */  lbu   $t7, ($a3)
/* 093B98 8010B128 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 093B9C 8010B12C AFBF0014 */  sw    $ra, 0x14($sp)
/* 093BA0 8010B130 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 093BA4 8010B134 35F80080 */  ori   $t8, $t7, 0x80
/* 093BA8 8010B138 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 093BAC 8010B13C A0F80000 */  sb    $t8, ($a3)
/* 093BB0 8010B140 0C042BBC */  jal   func_8010AEF0
/* 093BB4 8010B144 24060008 */   li    $a2, 8
/* 093BB8 8010B148 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 093BBC 8010B14C 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 093BC0 8010B150 3C078013 */  lui   $a3, %hi(D_8012BD00) # $a3, 0x8013
/* 093BC4 8010B154 8CA30000 */  lw    $v1, ($a1)
/* 093BC8 8010B158 24E7BD00 */  addiu $a3, %lo(D_8012BD00) # addiu $a3, $a3, -0x4300
/* 093BCC 8010B15C 90F90000 */  lbu   $t9, ($a3)
/* 093BD0 8010B160 00031CC2 */  srl   $v1, $v1, 0x13
/* 093BD4 8010B164 30690007 */  andi  $t1, $v1, 7
/* 093BD8 8010B168 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 093BDC 8010B16C 00402025 */  move  $a0, $v0
/* 093BE0 8010B170 1120000E */  beqz  $t1, .L8010B1AC_ovl2
/* 093BE4 8010B174 A0E80000 */   sb    $t0, ($a3)
/* 093BE8 8010B178 8CAA0020 */  lw    $t2, 0x20($a1)
/* 093BEC 8010B17C 954B0008 */  lhu   $t3, 8($t2)
/* 093BF0 8010B180 316C0004 */  andi  $t4, $t3, 4
/* 093BF4 8010B184 5180000A */  beql  $t4, $zero, .L8010B1B0_ovl2
/* 093BF8 8010B188 30690038 */   andi  $t1, $v1, 0x38
/* 093BFC 8010B18C 94B80000 */  lhu   $t8, ($a1)
/* 093C00 8010B190 306DFFF8 */  andi  $t5, $v1, 0xfff8
/* 093C04 8010B194 000D78C0 */  sll   $t7, $t5, 3
/* 093C08 8010B198 33190007 */  andi  $t9, $t8, 7
/* 093C0C 8010B19C 01F94025 */  or    $t0, $t7, $t9
/* 093C10 8010B1A0 A4A80000 */  sh    $t0, ($a1)
/* 093C14 8010B1A4 8CA30000 */  lw    $v1, ($a1)
/* 093C18 8010B1A8 00031CC2 */  srl   $v1, $v1, 0x13
.L8010B1AC_ovl2:
/* 093C1C 8010B1AC 30690038 */  andi  $t1, $v1, 0x38
.L8010B1B0_ovl2:
/* 093C20 8010B1B0 5120000F */  beql  $t1, $zero, .L8010B1F0_ovl2
/* 093C24 8010B1B4 306901C0 */   andi  $t1, $v1, 0x1c0
/* 093C28 8010B1B8 8CAA002C */  lw    $t2, 0x2c($a1)
/* 093C2C 8010B1BC 954B0008 */  lhu   $t3, 8($t2)
/* 093C30 8010B1C0 316C0004 */  andi  $t4, $t3, 4
/* 093C34 8010B1C4 5180000A */  beql  $t4, $zero, .L8010B1F0_ovl2
/* 093C38 8010B1C8 306901C0 */   andi  $t1, $v1, 0x1c0
/* 093C3C 8010B1CC 94AF0000 */  lhu   $t7, ($a1)
/* 093C40 8010B1D0 306DFFC7 */  andi  $t5, $v1, 0xffc7
/* 093C44 8010B1D4 000DC0C0 */  sll   $t8, $t5, 3
/* 093C48 8010B1D8 31F90007 */  andi  $t9, $t7, 7
/* 093C4C 8010B1DC 03194025 */  or    $t0, $t8, $t9
/* 093C50 8010B1E0 A4A80000 */  sh    $t0, ($a1)
/* 093C54 8010B1E4 8CA30000 */  lw    $v1, ($a1)
/* 093C58 8010B1E8 00031CC2 */  srl   $v1, $v1, 0x13
/* 093C5C 8010B1EC 306901C0 */  andi  $t1, $v1, 0x1c0
.L8010B1F0_ovl2:
/* 093C60 8010B1F0 5120000D */  beql  $t1, $zero, .L8010B228_ovl2
/* 093C64 8010B1F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 093C68 8010B1F8 8CAA0014 */  lw    $t2, 0x14($a1)
/* 093C6C 8010B1FC 954B0008 */  lhu   $t3, 8($t2)
/* 093C70 8010B200 316C0004 */  andi  $t4, $t3, 4
/* 093C74 8010B204 51800008 */  beql  $t4, $zero, .L8010B228_ovl2
/* 093C78 8010B208 8FBF0014 */   lw    $ra, 0x14($sp)
/* 093C7C 8010B20C 94B80000 */  lhu   $t8, ($a1)
/* 093C80 8010B210 306DFE3F */  andi  $t5, $v1, 0xfe3f
/* 093C84 8010B214 000D78C0 */  sll   $t7, $t5, 3
/* 093C88 8010B218 33190007 */  andi  $t9, $t8, 7
/* 093C8C 8010B21C 01F94025 */  or    $t0, $t7, $t9
/* 093C90 8010B220 A4A80000 */  sh    $t0, ($a1)
/* 093C94 8010B224 8FBF0014 */  lw    $ra, 0x14($sp)
.L8010B228_ovl2:
/* 093C98 8010B228 27BD0018 */  addiu $sp, $sp, 0x18
/* 093C9C 8010B22C 00801025 */  move  $v0, $a0
/* 093CA0 8010B230 03E00008 */  jr    $ra
/* 093CA4 8010B234 00000000 */   nop   
.type func_8010B11C, @function
.size func_8010B11C, . - func_8010B11C
