glabel func_801E8C68_ovl10
/* 1D99D8 801E8C68 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D99DC 801E8C6C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D99E0 801E8C70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D99E4 801E8C74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D99E8 801E8C78 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D99EC 801E8C7C 8DC20000 */  lw    $v0, ($t6)
/* 1D99F0 801E8C80 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D99F4 801E8C84 3C03800F */  lui   $v1, %hi(D_800EA520) # $v1, 0x800f
/* 1D99F8 801E8C88 00021080 */  sll   $v0, $v0, 2
/* 1D99FC 801E8C8C 01E27821 */  addu  $t7, $t7, $v0
/* 1D9A00 801E8C90 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D9A04 801E8C94 2463A520 */  addiu $v1, %lo(D_800EA520) # addiu $v1, $v1, -0x5ae0
/* 1D9A08 801E8C98 0062C021 */  addu  $t8, $v1, $v0
/* 1D9A0C 801E8C9C 51E0001E */  beql  $t7, $zero, .L801E8D18_ovl10
/* 1D9A10 801E8CA0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D9A14 801E8CA4 8F190000 */  lw    $t9, ($t8)
/* 1D9A18 801E8CA8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D9A1C 801E8CAC 00194080 */  sll   $t0, $t9, 2
/* 1D9A20 801E8CB0 00684821 */  addu  $t1, $v1, $t0
/* 1D9A24 801E8CB4 8D2A0000 */  lw    $t2, ($t1)
/* 1D9A28 801E8CB8 51400017 */  beql  $t2, $zero, .L801E8D18_ovl10
/* 1D9A2C 801E8CBC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D9A30 801E8CC0 0C02BB30 */  jal   func_800AECC0
/* 1D9A34 801E8CC4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D9A38 801E8CC8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1D9A3C 801E8CCC 0C02BB48 */  jal   func_800AED20
/* 1D9A40 801E8CD0 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1D9A44 801E8CD4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D9A48 801E8CD8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D9A4C 801E8CDC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D9A50 801E8CE0 240B0001 */  li    $t3, 1
/* 1D9A54 801E8CE4 8C4C0000 */  lw    $t4, ($v0)
/* 1D9A58 801E8CE8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D9A5C 801E8CEC 3C05801F */  lui   $a1, %hi(D_801E8988) # $a1, 0x801f
/* 1D9A60 801E8CF0 000C6880 */  sll   $t5, $t4, 2
/* 1D9A64 801E8CF4 002D0821 */  addu  $at, $at, $t5
/* 1D9A68 801E8CF8 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1D9A6C 801E8CFC 8C4E0000 */  lw    $t6, ($v0)
/* 1D9A70 801E8D00 24A58988 */  addiu $a1, %lo(D_801E8988) # addiu $a1, $a1, -0x7678
/* 1D9A74 801E8D04 000E7880 */  sll   $t7, $t6, 2
/* 1D9A78 801E8D08 008F2021 */  addu  $a0, $a0, $t7
/* 1D9A7C 801E8D0C 0C02C7B2 */  jal   assign_new_process_entry
/* 1D9A80 801E8D10 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D9A84 801E8D14 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E8D18_ovl10:
/* 1D9A88 801E8D18 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9A8C 801E8D1C 03E00008 */  jr    $ra
/* 1D9A90 801E8D20 00000000 */   nop   
.type func_801E8C68_ovl10, @function
.size func_801E8C68_ovl10, . - func_801E8C68_ovl10
