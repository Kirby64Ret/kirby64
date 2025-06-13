glabel func_801E5468_ovl10
/* 1D61D8 801E5468 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D61DC 801E546C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D61E0 801E5470 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D61E4 801E5474 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D61E8 801E5478 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D61EC 801E547C 8C430000 */  lw    $v1, ($v0)
/* 1D61F0 801E5480 3C0E800E */ lui $t6, %hi(D_800E6310)
/* 1D61F4 801E5484 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 1D61F8 801E5488 00031880 */  sll   $v1, $v1, 2
/* 1D61FC 801E548C 01C37021 */  addu  $t6, $t6, $v1
/* 1D6200 801E5490 8DCE6310 */ lw $t6, %lo(D_800E6310)($t6)
/* 1D6204 801E5494 51C00022 */  beql  $t6, $zero, .L801E5520_ovl10
/* 1D6208 801E5498 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D620C 801E549C 44802000 */  mtc1  $zero, $f4
/* 1D6210 801E54A0 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 1D6214 801E54A4 00C37821 */  addu  $t7, $a2, $v1
/* 1D6218 801E54A8 E5E40000 */  swc1  $f4, ($t7)
/* 1D621C 801E54AC 8C430000 */  lw    $v1, ($v0)
/* 1D6220 801E54B0 3C01800E */ lui $at, %hi(D_800E64D0)
/* 1D6224 801E54B4 24090006 */  li    $t1, 6
/* 1D6228 801E54B8 00031880 */  sll   $v1, $v1, 2
/* 1D622C 801E54BC 00C3C021 */  addu  $t8, $a2, $v1
/* 1D6230 801E54C0 C7060000 */  lwc1  $f6, ($t8)
/* 1D6234 801E54C4 00230821 */  addu  $at, $at, $v1
/* 1D6238 801E54C8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D623C 801E54CC E42664D0 */ swc1 $f6, %lo(D_800E64D0)($at)
/* 1D6240 801E54D0 8C590000 */  lw    $t9, ($v0)
/* 1D6244 801E54D4 3C01801F */  lui   $at, %hi(D_801F4B2C_ovl10) # $at, 0x801f
/* 1D6248 801E54D8 C4284B2C */  lwc1  $f8, %lo(D_801F4B2C_ovl10)($at)
/* 1D624C 801E54DC 3C01800E */ lui $at, %hi(D_800E6850)
/* 1D6250 801E54E0 00194080 */  sll   $t0, $t9, 2
/* 1D6254 801E54E4 00280821 */  addu  $at, $at, $t0
/* 1D6258 801E54E8 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
/* 1D625C 801E54EC 8C4A0000 */  lw    $t2, ($v0)
/* 1D6260 801E54F0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D6264 801E54F4 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D6268 801E54F8 000A5880 */  sll   $t3, $t2, 2
/* 1D626C 801E54FC 002B0821 */  addu  $at, $at, $t3
/* 1D6270 801E5500 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
/* 1D6274 801E5504 8C4C0000 */  lw    $t4, ($v0)
/* 1D6278 801E5508 24A53BE4 */  addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
/* 1D627C 801E550C 000C6880 */  sll   $t5, $t4, 2
/* 1D6280 801E5510 008D2021 */  addu  $a0, $a0, $t5
/* 1D6284 801E5514 0C02C7B2 */  jal   assign_new_process_entry
/* 1D6288 801E5518 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1D628C 801E551C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E5520_ovl10:
/* 1D6290 801E5520 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D6294 801E5524 03E00008 */  jr    $ra
/* 1D6298 801E5528 00000000 */   nop   
.type func_801E5468_ovl10, @function
.size func_801E5468_ovl10, . - func_801E5468_ovl10
