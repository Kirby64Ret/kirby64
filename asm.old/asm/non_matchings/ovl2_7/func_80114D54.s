glabel func_80114D54
/* 09D7C4 80114D54 000470C0 */  sll   $t6, $a0, 3
/* 09D7C8 80114D58 01C47023 */  subu  $t6, $t6, $a0
/* 09D7CC 80114D5C 000E7080 */  sll   $t6, $t6, 2
/* 09D7D0 80114D60 3C038012 */ lui $v1, %hi(D_80124E2E)
/* 09D7D4 80114D64 006E1821 */  addu  $v1, $v1, $t6
/* 09D7D8 80114D68 94634E2E */ lhu $v1, %lo(D_80124E2E)($v1)
/* 09D7DC 80114D6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 09D7E0 80114D70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09D7E4 80114D74 1060000D */  beqz  $v1, .L80114DAC_ovl2
/* 09D7E8 80114D78 00001025 */   move  $v0, $zero
/* 09D7EC 80114D7C 2404001E */  li    $a0, 30
/* 09D7F0 80114D80 2405001E */  li    $a1, 30
/* 09D7F4 80114D84 2406003C */  li    $a2, 60
/* 09D7F8 80114D88 0C02BB02 */  jal   request_track_general
/* 09D7FC 80114D8C AFA3001C */   sw    $v1, 0x1c($sp)
/* 09D800 80114D90 00027880 */  sll   $t7, $v0, 2
/* 09D804 80114D94 3C18800E */ lui $t8, %hi(D_800DE350)
/* 09D808 80114D98 030FC021 */  addu  $t8, $t8, $t7
/* 09D80C 80114D9C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 09D810 80114DA0 8F18E350 */ lw $t8, %lo(D_800DE350)($t8)
/* 09D814 80114DA4 10000001 */  b     .L80114DAC_ovl2
/* 09D818 80114DA8 AF03004C */   sw    $v1, 0x4c($t8)
.L80114DAC_ovl2:
/* 09D81C 80114DAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09D820 80114DB0 27BD0020 */  addiu $sp, $sp, 0x20
/* 09D824 80114DB4 03E00008 */  jr    $ra
/* 09D828 80114DB8 00000000 */   nop   
.type func_80114D54, @function
.size func_80114D54, . - func_80114D54
