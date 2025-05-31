glabel func_8009B69C
/* 0438EC 8009B69C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0438F0 8009B6A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0438F4 8009B6A4 8C8200B4 */  lw    $v0, 0xb4($a0)
/* 0438F8 8009B6A8 10400004 */  beqz  $v0, .L8009B6BC_ovl1
/* 0438FC 8009B6AC 00000000 */   nop   
/* 043900 8009B6B0 0040F809 */  jalr  $v0
/* 043904 8009B6B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 043908 8009B6B8 8FA40018 */  lw    $a0, 0x18($sp)
.L8009B6BC_ovl1:
/* 04390C 8009B6BC 3C02800D */  lui   $v0, %hi(D_800D6AEC) # $v0, 0x800d
/* 043910 8009B6C0 24426AEC */  addiu $v0, %lo(D_800D6AEC) # addiu $v0, $v0, 0x6aec
/* 043914 8009B6C4 8C4E0000 */  lw    $t6, ($v0)
/* 043918 8009B6C8 3C03800D */  lui   $v1, %hi(D_800D6AE4) # $v1, 0x800d
/* 04391C 8009B6CC 24636AE4 */  addiu $v1, %lo(D_800D6AE4) # addiu $v1, $v1, 0x6ae4
/* 043920 8009B6D0 AC8E0000 */  sw    $t6, ($a0)
/* 043924 8009B6D4 946F0000 */  lhu   $t7, ($v1)
/* 043928 8009B6D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04392C 8009B6DC AC440000 */  sw    $a0, ($v0)
/* 043930 8009B6E0 25F8FFFF */  addiu $t8, $t7, -1
/* 043934 8009B6E4 A4780000 */  sh    $t8, ($v1)
/* 043938 8009B6E8 03E00008 */  jr    $ra
/* 04393C 8009B6EC 27BD0018 */   addiu $sp, $sp, 0x18
.type func_8009B69C, @function
.size func_8009B69C, . - func_8009B69C
