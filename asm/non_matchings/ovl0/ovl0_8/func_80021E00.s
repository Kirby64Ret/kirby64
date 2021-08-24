glabel crash_screen_draw_glyph
/* 022A00 80021E00 24010005 */  li    $at, 5
/* 022A04 80021E04 00C1001A */  div   $zero, $a2, $at
/* 022A08 80021E08 00007812 */  mflo  $t7
/* 022A0C 80021E0C 240B0007 */  li    $t3, 7
/* 022A10 80021E10 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 022A14 80021E14 01EB0019 */  multu $t7, $t3
/* 022A18 80021E18 3C0D8004 */  lui   $t5, %hi(gCrashScreenFont) # $t5, 0x8004
/* 022A1C 80021E1C 25ADF70C */  addiu $t5, %lo(gCrashScreenFont) # addiu $t5, $t5, -0x8f4
/* 022A20 80021E20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 022A24 80021E24 AFA40030 */  sw    $a0, 0x30($sp)
/* 022A28 80021E28 AFA50034 */  sw    $a1, 0x34($sp)
/* 022A2C 80021E2C AFA60038 */  sw    $a2, 0x38($sp)
/* 022A30 80021E30 0000C012 */  mflo  $t8
/* 022A34 80021E34 0018C880 */  sll   $t9, $t8, 2
/* 022A38 80021E38 032D3821 */  addu  $a3, $t9, $t5
/* 022A3C 80021E3C 0C00E46C */  jal   osViGetCurrentFramebuffer
/* 022A40 80021E40 AFA7001C */   sw    $a3, 0x1c($sp)
/* 022A44 80021E44 3C0C8005 */  lui   $t4, %hi(gCurrScreenWidth) # $t4, 0x8005
/* 022A48 80021E48 258CA508 */  addiu $t4, %lo(gCurrScreenWidth) # addiu $t4, $t4, -0x5af8
/* 022A4C 80021E4C 8D8E0000 */  lw    $t6, ($t4)
/* 022A50 80021E50 8FAF0034 */  lw    $t7, 0x34($sp)
/* 022A54 80021E54 24010005 */  li    $at, 5
/* 022A58 80021E58 8FA7001C */  lw    $a3, 0x1c($sp)
/* 022A5C 80021E5C 01CF0019 */  multu $t6, $t7
/* 022A60 80021E60 8FAE0030 */  lw    $t6, 0x30($sp)
/* 022A64 80021E64 240B0007 */  li    $t3, 7
/* 022A68 80021E68 00004025 */  move  $t0, $zero
/* 022A6C 80021E6C 000E7840 */  sll   $t7, $t6, 1
/* 022A70 80021E70 24060001 */  li    $a2, 1
/* 022A74 80021E74 3405FFFF */  li    $a1, 65535
/* 022A78 80021E78 0000C012 */  mflo  $t8
/* 022A7C 80021E7C 0018C840 */  sll   $t9, $t8, 1
/* 022A80 80021E80 8FB80038 */  lw    $t8, 0x38($sp)
/* 022A84 80021E84 00596821 */  addu  $t5, $v0, $t9
/* 022A88 80021E88 01AF1821 */  addu  $v1, $t5, $t7
/* 022A8C 80021E8C 0301001A */  div   $zero, $t8, $at
/* 022A90 80021E90 0000C810 */  mfhi  $t9
/* 022A94 80021E94 00197080 */  sll   $t6, $t9, 2
/* 022A98 80021E98 01D97023 */  subu  $t6, $t6, $t9
/* 022A9C 80021E9C 000E7040 */  sll   $t6, $t6, 1
/* 022AA0 80021EA0 3C0D8000 */  lui   $t5, 0x8000
/* 022AA4 80021EA4 01CD4806 */  srlv  $t1, $t5, $t6
/* 022AA8 80021EA8 00095042 */  srl   $t2, $t1, 1
.L80021EAC_ovl0:
/* 022AAC 80021EAC 8CE40000 */  lw    $a0, ($a3)
/* 022AB0 80021EB0 24E70004 */  addiu $a3, $a3, 4
/* 022AB4 80021EB4 01401025 */  move  $v0, $t2
/* 022AB8 80021EB8 01247824 */  and   $t7, $t1, $a0
/* 022ABC 80021EBC 11E00003 */  beqz  $t7, .L80021ECC_ovl0
/* 022AC0 80021EC0 0144C024 */   and   $t8, $t2, $a0
/* 022AC4 80021EC4 10000002 */  b     .L80021ED0_ovl0
/* 022AC8 80021EC8 A4650000 */   sh    $a1, ($v1)
.L80021ECC_ovl0:
/* 022ACC 80021ECC A4660000 */  sh    $a2, ($v1)
.L80021ED0_ovl0:
/* 022AD0 80021ED0 13000003 */  beqz  $t8, .L80021EE0_ovl0
/* 022AD4 80021ED4 24630002 */   addiu $v1, $v1, 2
/* 022AD8 80021ED8 10000002 */  b     .L80021EE4_ovl0
/* 022ADC 80021EDC A4650000 */   sh    $a1, ($v1)
.L80021EE0_ovl0:
/* 022AE0 80021EE0 A4660000 */  sh    $a2, ($v1)
.L80021EE4_ovl0:
/* 022AE4 80021EE4 00021042 */  srl   $v0, $v0, 1
/* 022AE8 80021EE8 0044C824 */  and   $t9, $v0, $a0
/* 022AEC 80021EEC 13200003 */  beqz  $t9, .L80021EFC_ovl0
/* 022AF0 80021EF0 24630002 */   addiu $v1, $v1, 2
/* 022AF4 80021EF4 10000002 */  b     .L80021F00_ovl0
/* 022AF8 80021EF8 A4650000 */   sh    $a1, ($v1)
.L80021EFC_ovl0:
/* 022AFC 80021EFC A4660000 */  sh    $a2, ($v1)
.L80021F00_ovl0:
/* 022B00 80021F00 00021042 */  srl   $v0, $v0, 1
/* 022B04 80021F04 00446824 */  and   $t5, $v0, $a0
/* 022B08 80021F08 11A00003 */  beqz  $t5, .L80021F18_ovl0
/* 022B0C 80021F0C 24630002 */   addiu $v1, $v1, 2
/* 022B10 80021F10 10000002 */  b     .L80021F1C_ovl0
/* 022B14 80021F14 A4650000 */   sh    $a1, ($v1)
.L80021F18_ovl0:
/* 022B18 80021F18 A4660000 */  sh    $a2, ($v1)
.L80021F1C_ovl0:
/* 022B1C 80021F1C 00021042 */  srl   $v0, $v0, 1
/* 022B20 80021F20 00447024 */  and   $t6, $v0, $a0
/* 022B24 80021F24 11C00003 */  beqz  $t6, .L80021F34_ovl0
/* 022B28 80021F28 24630002 */   addiu $v1, $v1, 2
/* 022B2C 80021F2C 10000002 */  b     .L80021F38_ovl0
/* 022B30 80021F30 A4650000 */   sh    $a1, ($v1)
.L80021F34_ovl0:
/* 022B34 80021F34 A4660000 */  sh    $a2, ($v1)
.L80021F38_ovl0:
/* 022B38 80021F38 00021042 */  srl   $v0, $v0, 1
/* 022B3C 80021F3C 00447824 */  and   $t7, $v0, $a0
/* 022B40 80021F40 11E00003 */  beqz  $t7, .L80021F50_ovl0
/* 022B44 80021F44 24630002 */   addiu $v1, $v1, 2
/* 022B48 80021F48 10000002 */  b     .L80021F54_ovl0
/* 022B4C 80021F4C A4650000 */   sh    $a1, ($v1)
.L80021F50_ovl0:
/* 022B50 80021F50 A4660000 */  sh    $a2, ($v1)
.L80021F54_ovl0:
/* 022B54 80021F54 8D980000 */  lw    $t8, ($t4)
/* 022B58 80021F58 24630002 */  addiu $v1, $v1, 2
/* 022B5C 80021F5C 25080001 */  addiu $t0, $t0, 1
/* 022B60 80021F60 0018C840 */  sll   $t9, $t8, 1
/* 022B64 80021F64 00791821 */  addu  $v1, $v1, $t9
/* 022B68 80021F68 150BFFD0 */  bne   $t0, $t3, .L80021EAC_ovl0
/* 022B6C 80021F6C 2463FFF4 */   addiu $v1, $v1, -0xc
/* 022B70 80021F70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 022B74 80021F74 27BD0030 */  addiu $sp, $sp, 0x30
/* 022B78 80021F78 03E00008 */  jr    $ra
/* 022B7C 80021F7C 00000000 */   nop   
