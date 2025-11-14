glabel func_80177270_ovl3
/* 0D7CB0 80177270 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0D7CB4 80177274 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0D7CB8 80177278 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D7CBC 8017727C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D7CC0 80177280 AFA40018 */  sw    $a0, 0x18($sp)
/* 0D7CC4 80177284 8DC20000 */  lw    $v0, ($t6)
/* 0D7CC8 80177288 3C0F800F */ lui $t7, %hi(D_800EB4E0)
/* 0D7CCC 8017728C 3C018019 */  lui   $at, %hi(D_801974EC) # $at, 0x8019
/* 0D7CD0 80177290 00021080 */  sll   $v0, $v0, 2
/* 0D7CD4 80177294 01E27821 */  addu  $t7, $t7, $v0
/* 0D7CD8 80177298 8DEFB4E0 */ lw $t7, %lo(D_800EB4E0)($t7)
/* 0D7CDC 8017729C 00002025 */  move  $a0, $zero
/* 0D7CE0 801772A0 51E00007 */  beql  $t7, $zero, .L801772C0_ovl3
/* 0D7CE4 801772A4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D7CE8 801772A8 C42474EC */  lwc1  $f4, %lo(D_801974EC)($at)
/* 0D7CEC 801772AC 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 0D7CF0 801772B0 00220821 */  addu  $at, $at, $v0
/* 0D7CF4 801772B4 0C048BEC */  jal   func_80122FB0
/* 0D7CF8 801772B8 E4244710 */ swc1 $f4, %lo(gEntitiesScaleYArray)($at)
/* 0D7CFC 801772BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801772C0_ovl3:
/* 0D7D00 801772C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D7D04 801772C4 03E00008 */  jr    $ra
/* 0D7D08 801772C8 00000000 */   nop   
.type func_80177270_ovl3, @function
.size func_80177270_ovl3, . - func_80177270_ovl3
