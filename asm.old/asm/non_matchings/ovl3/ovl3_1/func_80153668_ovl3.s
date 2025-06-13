glabel func_80153668_ovl3
/* 0B40A8 80153668 3C088013 */ lui $t0, %hi(gKirbyState)
/* 0B40AC 8015366C 2508E7C0 */ addiu $t0, %lo(gKirbyState)
/* 0B40B0 80153670 8D0E0140 */  lw    $t6, 0x140($t0)
/* 0B40B4 80153674 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0B40B8 80153678 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B40BC 8015367C 15C0005E */  bnez  $t6, .L801537F8_ovl3
/* 0B40C0 80153680 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 0B40C4 80153684 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 0B40C8 80153688 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0B40CC 8015368C 27A40020 */  addiu $a0, $sp, 0x20
/* 0B40D0 80153690 8C4F0000 */  lw    $t7, ($v0)
/* 0B40D4 80153694 000FC080 */  sll   $t8, $t7, 2
/* 0B40D8 80153698 00380821 */  addu  $at, $at, $t8
/* 0B40DC 8015369C C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0B40E0 801536A0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0B40E4 801536A4 E7A40020 */  swc1  $f4, 0x20($sp)
/* 0B40E8 801536A8 8C590000 */  lw    $t9, ($v0)
/* 0B40EC 801536AC 00194880 */  sll   $t1, $t9, 2
/* 0B40F0 801536B0 00290821 */  addu  $at, $at, $t1
/* 0B40F4 801536B4 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0B40F8 801536B8 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0B40FC 801536BC E7A60024 */  swc1  $f6, 0x24($sp)
/* 0B4100 801536C0 8C4A0000 */  lw    $t2, ($v0)
/* 0B4104 801536C4 000A5880 */  sll   $t3, $t2, 2
/* 0B4108 801536C8 002B0821 */  addu  $at, $at, $t3
/* 0B410C 801536CC C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 0B4110 801536D0 0C0437E7 */  jal   func_8010DF9C
/* 0B4114 801536D4 E7A80028 */   swc1  $f8, 0x28($sp)
/* 0B4118 801536D8 3C088013 */ lui $t0, %hi(gKirbyState)
/* 0B411C 801536DC 3044FFFF */  andi  $a0, $v0, 0xffff
/* 0B4120 801536E0 2508E7C0 */ addiu $t0, %lo(gKirbyState)
/* 0B4124 801536E4 1080001A */  beqz  $a0, .L80153750_ovl3
/* 0B4128 801536E8 3045FFFF */   andi  $a1, $v0, 0xffff
/* 0B412C 801536EC 18800042 */  blez  $a0, .L801537F8_ovl3
/* 0B4130 801536F0 00001825 */   move  $v1, $zero
/* 0B4134 801536F4 00A03825 */  move  $a3, $a1
/* 0B4138 801536F8 3C060002 */  lui   $a2, (0x00020001 >> 16) # lui $a2, 2
/* 0B413C 801536FC 3C048013 */ lui $a0, %hi(D_8012BCA0)
/* 0B4140 80153700 2484BCA0 */ addiu $a0, %lo(D_8012BCA0)
/* 0B4144 80153704 34C60001 */  ori   $a2, (0x00020001 & 0xFFFF) # ori $a2, $a2, 1
/* 0B4148 80153708 24050002 */  li    $a1, 2
/* 0B414C 8015370C 00036080 */  sll   $t4, $v1, 2
.L80153710_ovl3:
/* 0B4150 80153710 008C6821 */  addu  $t5, $a0, $t4
/* 0B4154 80153714 8DA20040 */  lw    $v0, 0x40($t5)
/* 0B4158 80153718 24630001 */  addiu $v1, $v1, 1
/* 0B415C 8015371C 3063FFFF */  andi  $v1, $v1, 0xffff
/* 0B4160 80153720 904E0004 */  lbu   $t6, 4($v0)
/* 0B4164 80153724 0067082A */  slt   $at, $v1, $a3
/* 0B4168 80153728 15C00005 */  bnez  $t6, .L80153740_ovl3
/* 0B416C 8015372C 00000000 */   nop   
/* 0B4170 80153730 904F0005 */  lbu   $t7, 5($v0)
/* 0B4174 80153734 14AF0002 */  bne   $a1, $t7, .L80153740_ovl3
/* 0B4178 80153738 00000000 */   nop   
/* 0B417C 8015373C AD060140 */  sw    $a2, 0x140($t0)
.L80153740_ovl3:
/* 0B4180 80153740 5420FFF3 */  bnezl $at, .L80153710_ovl3
/* 0B4184 80153744 00036080 */   sll   $t4, $v1, 2
/* 0B4188 80153748 1000002C */  b     .L801537FC_ovl3
/* 0B418C 8015374C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80153750_ovl3:
/* 0B4190 80153750 3C188005 */ lui $t8, %hi(D_8004A7C4)
/* 0B4194 80153754 8F18A7C4 */ lw $t8, %lo(D_8004A7C4)($t8)
/* 0B4198 80153758 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 0B419C 8015375C 27A40020 */  addiu $a0, $sp, 0x20
/* 0B41A0 80153760 8F190000 */  lw    $t9, ($t8)
/* 0B41A4 80153764 00194880 */  sll   $t1, $t9, 2
/* 0B41A8 80153768 00290821 */  addu  $at, $at, $t1
/* 0B41AC 8015376C C42A2790 */ lwc1 $f10, %lo(gEntitiesNextPosYArray)($at)
/* 0B41B0 80153770 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0B41B4 80153774 44818000 */  mtc1  $at, $f16
/* 0B41B8 80153778 00000000 */  nop   
/* 0B41BC 8015377C 46105480 */  add.s $f18, $f10, $f16
/* 0B41C0 80153780 0C0437E7 */  jal   func_8010DF9C
/* 0B41C4 80153784 E7B20024 */   swc1  $f18, 0x24($sp)
/* 0B41C8 80153788 3C088013 */ lui $t0, %hi(gKirbyState)
/* 0B41CC 8015378C 3044FFFF */  andi  $a0, $v0, 0xffff
/* 0B41D0 80153790 2508E7C0 */ addiu $t0, %lo(gKirbyState)
/* 0B41D4 80153794 10800018 */  beqz  $a0, .L801537F8_ovl3
/* 0B41D8 80153798 3045FFFF */   andi  $a1, $v0, 0xffff
/* 0B41DC 8015379C 18800016 */  blez  $a0, .L801537F8_ovl3
/* 0B41E0 801537A0 00001825 */   move  $v1, $zero
/* 0B41E4 801537A4 00A03825 */  move  $a3, $a1
/* 0B41E8 801537A8 3C060002 */  lui   $a2, (0x00020001 >> 16) # lui $a2, 2
/* 0B41EC 801537AC 3C048013 */ lui $a0, %hi(D_8012BCA0)
/* 0B41F0 801537B0 2484BCA0 */ addiu $a0, %lo(D_8012BCA0)
/* 0B41F4 801537B4 34C60001 */  ori   $a2, (0x00020001 & 0xFFFF) # ori $a2, $a2, 1
/* 0B41F8 801537B8 24050002 */  li    $a1, 2
/* 0B41FC 801537BC 00035080 */  sll   $t2, $v1, 2
.L801537C0_ovl3:
/* 0B4200 801537C0 008A5821 */  addu  $t3, $a0, $t2
/* 0B4204 801537C4 8D620040 */  lw    $v0, 0x40($t3)
/* 0B4208 801537C8 24630001 */  addiu $v1, $v1, 1
/* 0B420C 801537CC 3063FFFF */  andi  $v1, $v1, 0xffff
/* 0B4210 801537D0 904C0004 */  lbu   $t4, 4($v0)
/* 0B4214 801537D4 0067082A */  slt   $at, $v1, $a3
/* 0B4218 801537D8 15800005 */  bnez  $t4, .L801537F0_ovl3
/* 0B421C 801537DC 00000000 */   nop   
/* 0B4220 801537E0 904D0005 */  lbu   $t5, 5($v0)
/* 0B4224 801537E4 14AD0002 */  bne   $a1, $t5, .L801537F0_ovl3
/* 0B4228 801537E8 00000000 */   nop   
/* 0B422C 801537EC AD060140 */  sw    $a2, 0x140($t0)
.L801537F0_ovl3:
/* 0B4230 801537F0 5420FFF3 */  bnezl $at, .L801537C0_ovl3
/* 0B4234 801537F4 00035080 */   sll   $t2, $v1, 2
.L801537F8_ovl3:
/* 0B4238 801537F8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801537FC_ovl3:
/* 0B423C 801537FC 27BD0030 */  addiu $sp, $sp, 0x30
/* 0B4240 80153800 03E00008 */  jr    $ra
/* 0B4244 80153804 00000000 */   nop   
.type func_80153668_ovl3, @function
.size func_80153668_ovl3, . - func_80153668_ovl3
