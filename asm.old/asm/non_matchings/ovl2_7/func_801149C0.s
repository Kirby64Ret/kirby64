glabel func_801149C0
/* 09D430 801149C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09D434 801149C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09D438 801149C8 AFA40018 */  sw    $a0, 0x18($sp)
/* 09D43C 801149CC 0C002DAF */  jal   finish_current_thread
/* 09D440 801149D0 24040001 */   li    $a0, 1
/* 09D444 801149D4 8FA40018 */  lw    $a0, 0x18($sp)
/* 09D448 801149D8 3C18800E */ lui $t8, %hi(D_800E77A0)
/* 09D44C 801149DC 3C018012 */ lui $at, %hi(D_801249C0)
/* 09D450 801149E0 8C8E0000 */  lw    $t6, ($a0)
/* 09D454 801149E4 000E7840 */  sll   $t7, $t6, 1
/* 09D458 801149E8 030FC021 */  addu  $t8, $t8, $t7
/* 09D45C 801149EC 971877A0 */ lhu $t8, %lo(D_800E77A0)($t8)
/* 09D460 801149F0 0018C880 */  sll   $t9, $t8, 2
/* 09D464 801149F4 00390821 */  addu  $at, $at, $t9
/* 09D468 801149F8 8C3949C0 */ lw $t9, %lo(D_801249C0)($at)
/* 09D46C 801149FC 0320F809 */  jalr  $t9
/* 09D470 80114A00 00000000 */  nop   
/* 09D474 80114A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09D478 80114A08 27BD0018 */  addiu $sp, $sp, 0x18
/* 09D47C 80114A0C 03E00008 */  jr    $ra
/* 09D480 80114A10 00000000 */   nop   
.type func_801149C0, @function
.size func_801149C0, . - func_801149C0
