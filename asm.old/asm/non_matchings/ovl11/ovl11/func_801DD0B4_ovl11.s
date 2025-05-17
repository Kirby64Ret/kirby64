glabel func_801DD0B4_ovl11
/* 1E7974 801DD0B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7978 801DD0B8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E797C 801DD0BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7980 801DD0C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E7984 801DD0C4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E7988 801DD0C8 8C4E0000 */  lw    $t6, ($v0)
/* 1E798C 801DD0CC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E7990 801DD0D0 24080004 */  li    $t0, 4
/* 1E7994 801DD0D4 000E7880 */  sll   $t7, $t6, 2
/* 1E7998 801DD0D8 002F0821 */  addu  $at, $at, $t7
/* 1E799C 801DD0DC AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1E79A0 801DD0E0 8C580000 */  lw    $t8, ($v0)
/* 1E79A4 801DD0E4 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1E79A8 801DD0E8 240401DC */  li    $a0, 476
/* 1E79AC 801DD0EC 0018C880 */  sll   $t9, $t8, 2
/* 1E79B0 801DD0F0 00390821 */  addu  $at, $at, $t9
/* 1E79B4 801DD0F4 AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
/* 1E79B8 801DD0F8 8C490000 */  lw    $t1, ($v0)
/* 1E79BC 801DD0FC 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1E79C0 801DD100 00095080 */  sll   $t2, $t1, 2
/* 1E79C4 801DD104 002A0821 */  addu  $at, $at, $t2
/* 1E79C8 801DD108 0C029D9E */  jal   play_sound
/* 1E79CC 801DD10C AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1E79D0 801DD110 3C040001 */  lui   $a0, (0x000103F4 >> 16) # lui $a0, 1
/* 1E79D4 801DD114 0C02A806 */  jal   func_800AA018
/* 1E79D8 801DD118 348403F4 */   ori   $a0, (0x000103F4 & 0xFFFF) # ori $a0, $a0, 0x3f4
/* 1E79DC 801DD11C 3C040001 */  lui   $a0, (0x000103F3 >> 16) # lui $a0, 1
/* 1E79E0 801DD120 348403F3 */  ori   $a0, (0x000103F3 & 0xFFFF) # ori $a0, $a0, 0x3f3
/* 1E79E4 801DD124 0C02AA19 */  jal   func_800AA864
/* 1E79E8 801DD128 24050001 */   li    $a1, 1
/* 1E79EC 801DD12C 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1E79F0 801DD130 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1E79F4 801DD134 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1E79F8 801DD138 240B0001 */  li    $t3, 1
/* 1E79FC 801DD13C 8D8D0000 */  lw    $t5, ($t4)
/* 1E7A00 801DD140 000D7080 */  sll   $t6, $t5, 2
/* 1E7A04 801DD144 002E0821 */  addu  $at, $at, $t6
/* 1E7A08 801DD148 0C02BE85 */  jal   func_800AFA14
/* 1E7A0C 801DD14C AC2B9E20 */ sw $t3, %lo(D_800E9E20)($at)
/* 1E7A10 801DD150 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E7A14 801DD154 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7A18 801DD158 03E00008 */  jr    $ra
/* 1E7A1C 801DD15C 00000000 */   nop   
.type func_801DD0B4_ovl11, @function
.size func_801DD0B4_ovl11, . - func_801DD0B4_ovl11
