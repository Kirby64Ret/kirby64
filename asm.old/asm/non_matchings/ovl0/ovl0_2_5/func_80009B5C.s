glabel func_80009B5C
/* 00A75C 80009B5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00A760 80009B60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00A764 80009B64 AFB20020 */  sw    $s2, 0x20($sp)
/* 00A768 80009B68 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00A76C 80009B6C AFB00018 */  sw    $s0, 0x18($sp)
/* 00A770 80009B70 AFA40028 */  sw    $a0, 0x28($sp)
/* 00A774 80009B74 8C920080 */  lw    $s2, 0x80($a0)
/* 00A778 80009B78 5240000F */  beql  $s2, $zero, .L80009BB8_ovl0
/* 00A77C 80009B7C 8FAF0028 */   lw    $t7, 0x28($sp)
.L80009B80_ovl0:
/* 00A780 80009B80 8E500090 */  lw    $s0, 0x90($s2)
/* 00A784 80009B84 52000007 */  beql  $s0, $zero, .L80009BA4_ovl0
/* 00A788 80009B88 8E500000 */   lw    $s0, ($s2)
.L80009B8C_ovl0:
/* 00A78C 80009B8C 8E110000 */  lw    $s1, ($s0)
/* 00A790 80009B90 0C002218 */  jal   HS64_AObjPush
/* 00A794 80009B94 02002025 */   move  $a0, $s0
/* 00A798 80009B98 1620FFFC */  bnez  $s1, .L80009B8C_ovl0
/* 00A79C 80009B9C 02208025 */   move  $s0, $s1
/* 00A7A0 80009BA0 8E500000 */  lw    $s0, ($s2)
.L80009BA4_ovl0:
/* 00A7A4 80009BA4 0C002239 */  jal   HS64_MObjPush
/* 00A7A8 80009BA8 02402025 */   move  $a0, $s2
/* 00A7AC 80009BAC 1600FFF4 */  bnez  $s0, .L80009B80_ovl0
/* 00A7B0 80009BB0 02009025 */   move  $s2, $s0
/* 00A7B4 80009BB4 8FAF0028 */  lw    $t7, 0x28($sp)
.L80009BB8_ovl0:
/* 00A7B8 80009BB8 ADE00080 */  sw    $zero, 0x80($t7)
/* 00A7BC 80009BBC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00A7C0 80009BC0 8FB20020 */  lw    $s2, 0x20($sp)
/* 00A7C4 80009BC4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00A7C8 80009BC8 8FB00018 */  lw    $s0, 0x18($sp)
/* 00A7CC 80009BCC 03E00008 */  jr    $ra
/* 00A7D0 80009BD0 27BD0028 */   addiu $sp, $sp, 0x28
.type func_80009B5C, @function
.size func_80009B5C, . - func_80009B5C
