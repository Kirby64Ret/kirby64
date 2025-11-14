glabel func_800B9D60
/* 061FB0 800B9D60 00047080 */  sll   $t6, $a0, 2
/* 061FB4 800B9D64 01C47023 */  subu  $t6, $t6, $a0
/* 061FB8 800B9D68 000E7080 */  sll   $t6, $t6, 2
/* 061FBC 800B9D6C 01C47023 */  subu  $t6, $t6, $a0
/* 061FC0 800B9D70 000E70C0 */  sll   $t6, $t6, 3
/* 061FC4 800B9D74 3C18800F */  lui   $t8, %hi(gSaveBuffer1) # $t8, 0x800f
/* 061FC8 800B9D78 2718C9F8 */  addiu $t8, %lo(gSaveBuffer1) # addiu $t8, $t8, -0x3608
/* 061FCC 800B9D7C 01C57821 */  addu  $t7, $t6, $a1
/* 061FD0 800B9D80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 061FD4 800B9D84 01F81021 */  addu  $v0, $t7, $t8
/* 061FD8 800B9D88 24080001 */  li    $t0, 1
/* 061FDC 800B9D8C 3C01800D */  lui   $at, 0x800d
/* 061FE0 800B9D90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 061FE4 800B9D94 00250821 */  addu  $at, $at, $a1
/* 061FE8 800B9D98 A0480044 */  sb    $t0, 0x44($v0)
/* 061FEC 800B9D9C A0286BC0 */  sb    $t0, 0x6bc0($at)
/* 061FF0 800B9DA0 0C02E4B6 */  jal   verify_save
/* 061FF4 800B9DA4 AFA40018 */   sw    $a0, 0x18($sp)
/* 061FF8 800B9DA8 0C02E3F2 */  jal   calc_file_checksum
/* 061FFC 800B9DAC 8FA40018 */   lw    $a0, 0x18($sp)
/* 062000 800B9DB0 0C02E247 */  jal   func_800B891C
/* 062004 800B9DB4 8FA40018 */   lw    $a0, 0x18($sp)
/* 062008 800B9DB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06200C 800B9DBC 27BD0018 */  addiu $sp, $sp, 0x18
/* 062010 800B9DC0 03E00008 */  jr    $ra
/* 062014 800B9DC4 00000000 */   nop   
.type func_800B9D60, @function
.size func_800B9D60, . - func_800B9D60
