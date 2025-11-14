glabel func_800AB790
/* 0539E0 800AB790 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0539E4 800AB794 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0539E8 800AB798 AFA60020 */  sw    $a2, 0x20($sp)
/* 0539EC 800AB79C AFA70024 */  sw    $a3, 0x24($sp)
/* 0539F0 800AB7A0 8C8F0000 */  lw    $t7, ($a0)
/* 0539F4 800AB7A4 3C0EE800 */  lui   $t6, 0xe800
/* 0539F8 800AB7A8 3C09800E */  lui   $t1, %hi(sSetTileCommand) # $t1, 0x800e
/* 0539FC 800AB7AC ADEE0000 */  sw    $t6, ($t7)
/* 053A00 800AB7B0 8C980000 */  lw    $t8, ($a0)
/* 053A04 800AB7B4 3C0C0700 */  lui   $t4, 0x700
/* 053A08 800AB7B8 00063400 */  sll   $a2, $a2, 0x10
/* 053A0C 800AB7BC 27190008 */  addiu $t9, $t8, 8
/* 053A10 800AB7C0 AC990000 */  sw    $t9, ($a0)
/* 053A14 800AB7C4 8D29D6F8 */  lw    $t1, %lo(sSetTileCommand)($t1)
/* 053A18 800AB7C8 87A80026 */  lh    $t0, 0x26($sp)
/* 053A1C 800AB7CC 00063403 */  sra   $a2, $a2, 0x10
/* 053A20 800AB7D0 01095025 */  or    $t2, $t0, $t1
/* 053A24 800AB7D4 AF2A0000 */  sw    $t2, ($t9)
/* 053A28 800AB7D8 8C8D0000 */  lw    $t5, ($a0)
/* 053A2C 800AB7DC ADAC0004 */  sw    $t4, 4($t5)
/* 053A30 800AB7E0 8C8E0000 */  lw    $t6, ($a0)
/* 053A34 800AB7E4 25CF0008 */  addiu $t7, $t6, 8
/* 053A38 800AB7E8 AC8F0000 */  sw    $t7, ($a0)
/* 053A3C 800AB7EC 0C02ADB6 */  jal   func_800AB6D8
/* 053A40 800AB7F0 87A7002A */   lh    $a3, 0x2a($sp)
/* 053A44 800AB7F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 053A48 800AB7F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 053A4C 800AB7FC 03E00008 */  jr    $ra
/* 053A50 800AB800 00000000 */   nop   
.type func_800AB790, @function
.size func_800AB790, . - func_800AB790
