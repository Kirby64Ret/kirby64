glabel func_801E8234_ovl10
/* 1D8FA4 801E8234 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D8FA8 801E8238 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D8FAC 801E823C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D8FB0 801E8240 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8FB4 801E8244 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D8FB8 801E8248 8C4E0000 */  lw    $t6, ($v0)
/* 1D8FBC 801E824C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D8FC0 801E8250 3C040001 */  lui   $a0, (0x000103A1 >> 16) # lui $a0, 1
/* 1D8FC4 801E8254 000E7880 */  sll   $t7, $t6, 2
/* 1D8FC8 801E8258 002F0821 */  addu  $at, $at, $t7
/* 1D8FCC 801E825C AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D8FD0 801E8260 8C580000 */  lw    $t8, ($v0)
/* 1D8FD4 801E8264 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D8FD8 801E8268 348403A1 */  ori   $a0, (0x000103A1 & 0xFFFF) # ori $a0, $a0, 0x3a1
/* 1D8FDC 801E826C 0018C880 */  sll   $t9, $t8, 2
/* 1D8FE0 801E8270 00390821 */  addu  $at, $at, $t9
/* 1D8FE4 801E8274 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D8FE8 801E8278 8C480000 */  lw    $t0, ($v0)
/* 1D8FEC 801E827C 3C01800F */ lui $at, %hi(D_800EA360)
/* 1D8FF0 801E8280 00084880 */  sll   $t1, $t0, 2
/* 1D8FF4 801E8284 00290821 */  addu  $at, $at, $t1
/* 1D8FF8 801E8288 AC20A360 */ sw $zero, %lo(D_800EA360)($at)
/* 1D8FFC 801E828C 8C4A0000 */  lw    $t2, ($v0)
/* 1D9000 801E8290 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D9004 801E8294 000A5880 */  sll   $t3, $t2, 2
/* 1D9008 801E8298 002B0821 */  addu  $at, $at, $t3
/* 1D900C 801E829C 0C02A7A9 */  jal   func_800A9EA4
/* 1D9010 801E82A0 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 1D9014 801E82A4 3C040001 */  lui   $a0, (0x000103A0 >> 16) # lui $a0, 1
/* 1D9018 801E82A8 348403A0 */  ori   $a0, (0x000103A0 & 0xFFFF) # ori $a0, $a0, 0x3a0
/* 1D901C 801E82AC 0C02AA19 */  jal   func_800AA864
/* 1D9020 801E82B0 24050001 */   li    $a1, 1
/* 1D9024 801E82B4 44806000 */  mtc1  $zero, $f12
/* 1D9028 801E82B8 0C02BB30 */  jal   func_800AECC0
/* 1D902C 801E82BC 00000000 */   nop   
/* 1D9030 801E82C0 44806000 */  mtc1  $zero, $f12
/* 1D9034 801E82C4 0C02BB48 */  jal   func_800AED20
/* 1D9038 801E82C8 00000000 */   nop   
/* 1D903C 801E82CC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1D9040 801E82D0 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1D9044 801E82D4 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D9048 801E82D8 240C0001 */  li    $t4, 1
/* 1D904C 801E82DC 8DAE0000 */  lw    $t6, ($t5)
/* 1D9050 801E82E0 000E7880 */  sll   $t7, $t6, 2
/* 1D9054 801E82E4 002F0821 */  addu  $at, $at, $t7
/* 1D9058 801E82E8 0C02BE85 */  jal   func_800AFA14
/* 1D905C 801E82EC AC2C9E20 */ sw $t4, %lo(D_800E9E20)($at)
/* 1D9060 801E82F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D9064 801E82F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D9068 801E82F8 03E00008 */  jr    $ra
/* 1D906C 801E82FC 00000000 */   nop   
.type func_801E8234_ovl10, @function
.size func_801E8234_ovl10, . - func_801E8234_ovl10