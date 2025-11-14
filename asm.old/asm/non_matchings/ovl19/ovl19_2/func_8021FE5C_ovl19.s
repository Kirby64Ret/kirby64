glabel func_8021FE5C_ovl19
/* 24056C 8021FE5C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 240570 8021FE60 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 240574 8021FE64 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 240578 8021FE68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24057C 8021FE6C AFA40038 */  sw    $a0, 0x38($sp)
/* 240580 8021FE70 8C430000 */  lw    $v1, ($v0)
/* 240584 8021FE74 3C0E800F */ lui $t6, %hi(D_800E98E0)
/* 240588 8021FE78 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 24058C 8021FE7C 00031880 */  sll   $v1, $v1, 2
/* 240590 8021FE80 01C37021 */  addu  $t6, $t6, $v1
/* 240594 8021FE84 8DCE98E0 */ lw $t6, %lo(D_800E98E0)($t6)
/* 240598 8021FE88 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 24059C 8021FE8C 55C0003D */  bnezl $t6, .L8021FF84_ovl19
/* 2405A0 8021FE90 8FBF0014 */   lw    $ra, 0x14($sp)
/* 2405A4 8021FE94 8CCF016C */  lw    $t7, 0x16c($a2)
/* 2405A8 8021FE98 3C04800E */  lui   $a0, %hi(gEntitiesNextPosYArray) # $a0, 0x800e
/* 2405AC 8021FE9C 24842790 */  addiu $a0, %lo(gEntitiesNextPosYArray) # addiu $a0, $a0, 0x2790
/* 2405B0 8021FEA0 11E00037 */  beqz  $t7, .L8021FF80_ovl19
/* 2405B4 8021FEA4 0083C021 */   addu  $t8, $a0, $v1
/* 2405B8 8021FEA8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 2405BC 8021FEAC 44814000 */  mtc1  $at, $f8
/* 2405C0 8021FEB0 C7060000 */  lwc1  $f6, ($t8)
/* 2405C4 8021FEB4 C4840000 */  lwc1  $f4, ($a0)
/* 2405C8 8021FEB8 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 2405CC 8021FEBC 46083281 */  sub.s $f10, $f6, $f8
/* 2405D0 8021FEC0 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 2405D4 8021FEC4 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 2405D8 8021FEC8 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 2405DC 8021FECC 4604503E */  c.le.s $f10, $f4
/* 2405E0 8021FED0 00000000 */  nop   
/* 2405E4 8021FED4 4502002B */  bc1fl .L8021FF84_ovl19
/* 2405E8 8021FED8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 2405EC 8021FEDC 44800000 */  mtc1  $zero, $f0
/* 2405F0 8021FEE0 C4700000 */  lwc1  $f16, ($v1)
/* 2405F4 8021FEE4 C4F20000 */  lwc1  $f18, ($a3)
/* 2405F8 8021FEE8 E7A00030 */  swc1  $f0, 0x30($sp)
/* 2405FC 8021FEEC E7B0002C */  swc1  $f16, 0x2c($sp)
/* 240600 8021FEF0 E7B20034 */  swc1  $f18, 0x34($sp)
/* 240604 8021FEF4 8C590000 */  lw    $t9, ($v0)
/* 240608 8021FEF8 27A4002C */  addiu $a0, $sp, 0x2c
/* 24060C 8021FEFC 27A50020 */  addiu $a1, $sp, 0x20
/* 240610 8021FF00 00194080 */  sll   $t0, $t9, 2
/* 240614 8021FF04 00684821 */  addu  $t1, $v1, $t0
/* 240618 8021FF08 C5260000 */  lwc1  $f6, ($t1)
/* 24061C 8021FF0C E7A00024 */  swc1  $f0, 0x24($sp)
/* 240620 8021FF10 E7A60020 */  swc1  $f6, 0x20($sp)
/* 240624 8021FF14 8C4A0000 */  lw    $t2, ($v0)
/* 240628 8021FF18 000A5880 */  sll   $t3, $t2, 2
/* 24062C 8021FF1C 00EB6021 */  addu  $t4, $a3, $t3
/* 240630 8021FF20 C5880000 */  lwc1  $f8, ($t4)
/* 240634 8021FF24 0C029157 */  jal   vec3_dist_square
/* 240638 8021FF28 E7A80028 */   swc1  $f8, 0x28($sp)
/* 24063C 8021FF2C 3C0145C8 */  li    $at, 0x45C80000 # 6400.000000
/* 240640 8021FF30 44812000 */  mtc1  $at, $f4
/* 240644 8021FF34 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 240648 8021FF38 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 24064C 8021FF3C 4604003C */  c.lt.s $f0, $f4
/* 240650 8021FF40 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 240654 8021FF44 4502000F */  bc1fl .L8021FF84_ovl19
/* 240658 8021FF48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 24065C 8021FF4C 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 240660 8021FF50 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 240664 8021FF54 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 240668 8021FF58 8DAE0000 */  lw    $t6, ($t5)
/* 24066C 8021FF5C 24030001 */  li    $v1, 1
/* 240670 8021FF60 A0C30017 */  sb    $v1, 0x17($a2)
/* 240674 8021FF64 000E7880 */  sll   $t7, $t6, 2
/* 240678 8021FF68 01F81021 */  addu  $v0, $t7, $t8
/* 24067C 8021FF6C 8C590000 */  lw    $t9, ($v0)
/* 240680 8021FF70 A0C0000C */  sb    $zero, 0xc($a2)
/* 240684 8021FF74 A4C30068 */  sh    $v1, 0x68($a2)
/* 240688 8021FF78 27280001 */  addiu $t0, $t9, 1
/* 24068C 8021FF7C AC480000 */  sw    $t0, ($v0)
.L8021FF80_ovl19:
/* 240690 8021FF80 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021FF84_ovl19:
/* 240694 8021FF84 27BD0038 */  addiu $sp, $sp, 0x38
/* 240698 8021FF88 03E00008 */  jr    $ra
/* 24069C 8021FF8C 00000000 */   nop   
.type func_8021FE5C_ovl19, @function
.size func_8021FE5C_ovl19, . - func_8021FE5C_ovl19
