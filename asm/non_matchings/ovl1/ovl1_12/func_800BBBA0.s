# .late_rodata
# glabel jtbl_800D6980
#     .word L800BBBEC
#     .word L800BBC5C_ovl1
#     .word L800BBC5C_ovl1
#     .word L800BBBF8
#     .word L800BBBF8
#     .word L800BBC1C
#     .word L800BBC40

# .text
glabel func_800BBBA0
/* 063DF0 800BBBA0 3C03800D */  lui   $v1, %hi(D_800D6F3C) # $v1, 0x800d
/* 063DF4 800BBBA4 24636F3C */  addiu $v1, %lo(D_800D6F3C) # addiu $v1, $v1, 0x6f3c
/* 063DF8 800BBBA8 8C620000 */  lw    $v0, ($v1)
/* 063DFC 800BBBAC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 063E00 800BBBB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 063E04 800BBBB4 04400003 */  bltz  $v0, .L800BBBC4_ovl1
/* 063E08 800BBBB8 28410007 */   slti  $at, $v0, 7
/* 063E0C 800BBBBC 54200004 */  bnezl $at, .L800BBBD0_ovl1
/* 063E10 800BBBC0 2C410007 */   sltiu $at, $v0, 7
.L800BBBC4_ovl1:
/* 063E14 800BBBC4 AC600000 */  sw    $zero, ($v1)
/* 063E18 800BBBC8 00001025 */  move  $v0, $zero
/* 063E1C 800BBBCC 2C410007 */  sltiu $at, $v0, 7
.L800BBBD0_ovl1:
/* 063E20 800BBBD0 10200022 */  beqz  $at, .L800BBC5C_ovl1
/* 063E24 800BBBD4 00027080 */   sll   $t6, $v0, 2
/* 063E28 800BBBD8 3C01800D */ lui $at, %hi(jtbl_800D6980)
/* 063E2C 800BBBDC 002E0821 */  addu  $at, $at, $t6
/* 063E30 800BBBE0 8C2E6980 */ lw $t6, %lo(jtbl_800D6980)($at)
/* 063E34 800BBBE4 01C00008 */  jr    $t6
/* 063E38 800BBBE8 00000000 */   nop   
.L800BBBEC:
/* 063E3C 800BBBEC 3C01800F */  lui   $at, %hi(D_800ED4EC) # $at, 0x800f
/* 063E40 800BBBF0 1000001A */  b     .L800BBC5C_ovl1
/* 063E44 800BBBF4 AC20D4EC */   sw    $zero, %lo(D_800ED4EC)($at)
.L800BBBF8:
/* 063E48 800BBBF8 3C0F8023 */  lui   $t7, %hi(D_8022B7C0) # $t7, 0x8023
/* 063E4C 800BBBFC 25EFB7C0 */  addiu $t7, %lo(D_8022B7C0) # addiu $t7, $t7, -0x4840
/* 063E50 800BBC00 3C01800F */  lui   $at, %hi(D_800ED4E0) # $at, 0x800f
/* 063E54 800BBC04 0C02EF1B */  jal   func_800BBC6C_ovl1
/* 063E58 800BBC08 AC2FD4E0 */   sw    $t7, %lo(D_800ED4E0)($at)
/* 063E5C 800BBC0C 0C02ED10 */  jal   func_800BB440_ovl1
/* 063E60 800BBC10 00000000 */   nop   
/* 063E64 800BBC14 10000012 */  b     .L800BBC60_ovl1
/* 063E68 800BBC18 8FBF0014 */   lw    $ra, 0x14($sp)
.L800BBC1C:
/* 063E6C 800BBC1C 3C188023 */  lui   $t8, %hi(D_8022AED8) # $t8, 0x8023
/* 063E70 800BBC20 2718AED8 */  addiu $t8, %lo(D_8022AED8) # addiu $t8, $t8, -0x5128
/* 063E74 800BBC24 3C01800F */  lui   $at, %hi(D_800ED4E0) # $at, 0x800f
/* 063E78 800BBC28 0C02EF1B */  jal   func_800BBC6C_ovl1
/* 063E7C 800BBC2C AC38D4E0 */   sw    $t8, %lo(D_800ED4E0)($at)
/* 063E80 800BBC30 0C02ED10 */  jal   func_800BB440_ovl1
/* 063E84 800BBC34 00000000 */   nop   
/* 063E88 800BBC38 10000009 */  b     .L800BBC60_ovl1
/* 063E8C 800BBC3C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800BBC40:
/* 063E90 800BBC40 3C198023 */  lui   $t9, %hi(D_8022B428) # $t9, 0x8023
/* 063E94 800BBC44 2739B428 */  addiu $t9, %lo(D_8022B428) # addiu $t9, $t9, -0x4bd8
/* 063E98 800BBC48 3C01800F */  lui   $at, %hi(D_800ED4E0) # $at, 0x800f
/* 063E9C 800BBC4C 0C02EF1B */  jal   func_800BBC6C_ovl1
/* 063EA0 800BBC50 AC39D4E0 */   sw    $t9, %lo(D_800ED4E0)($at)
/* 063EA4 800BBC54 0C02ED10 */  jal   func_800BB440_ovl1
/* 063EA8 800BBC58 00000000 */   nop   
.L800BBC5C_ovl1:
/* 063EAC 800BBC5C 8FBF0014 */  lw    $ra, 0x14($sp)
.L800BBC60_ovl1:
/* 063EB0 800BBC60 27BD0018 */  addiu $sp, $sp, 0x18
/* 063EB4 800BBC64 03E00008 */  jr    $ra
/* 063EB8 800BBC68 00000000 */   nop   
