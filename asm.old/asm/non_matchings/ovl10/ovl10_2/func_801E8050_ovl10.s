glabel func_801E8050_ovl10
/* 1D8DC0 801E8050 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1D8DC4 801E8054 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1D8DC8 801E8058 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1D8DCC 801E805C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8DD0 801E8060 AFA40020 */  sw    $a0, 0x20($sp)
/* 1D8DD4 801E8064 8DC30000 */  lw    $v1, ($t6)
/* 1D8DD8 801E8068 3C0F800E */ lui $t7, %hi(D_800E1B50)
/* 1D8DDC 801E806C 3C18801F */  lui   $t8, %hi(D_801E8184) # $t8, 0x801f
/* 1D8DE0 801E8070 00031880 */  sll   $v1, $v1, 2
/* 1D8DE4 801E8074 01E37821 */  addu  $t7, $t7, $v1
/* 1D8DE8 801E8078 8DEF1B50 */ lw $t7, %lo(D_800E1B50)($t7)
/* 1D8DEC 801E807C 3C01800E */ lui $at, %hi(D_800DF150)
/* 1D8DF0 801E8080 00230821 */  addu  $at, $at, $v1
/* 1D8DF4 801E8084 27188184 */  addiu $t8, %lo(D_801E8184) # addiu $t8, $t8, -0x7e7c
/* 1D8DF8 801E8088 3C04801F */  lui   $a0, %hi(D_801F3540_ovl10) # $a0, 0x801f
/* 1D8DFC 801E808C AC38F150 */ sw $t8, %lo(D_800DF150)($at)
/* 1D8E00 801E8090 24843540 */  addiu $a0, %lo(D_801F3540_ovl10) # addiu $a0, $a0, 0x3540
/* 1D8E04 801E8094 0C066220 */  jal   func_80198880_ovl10
/* 1D8E08 801E8098 AFAF001C */   sw    $t7, 0x1c($sp)
/* 1D8E0C 801E809C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D8E10 801E80A0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D8E14 801E80A4 3C19800E */ lui $t9, %hi(D_800D9E20)
/* 1D8E18 801E80A8 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D8E1C 801E80AC 8C430000 */  lw    $v1, ($v0)
/* 1D8E20 801E80B0 3C040001 */  lui   $a0, (0x00010064 >> 16) # lui $a0, 1
/* 1D8E24 801E80B4 34840064 */  ori   $a0, (0x00010064 & 0xFFFF) # ori $a0, $a0, 0x64
/* 1D8E28 801E80B8 00031880 */  sll   $v1, $v1, 2
/* 1D8E2C 801E80BC 0323C821 */  addu  $t9, $t9, $v1
/* 1D8E30 801E80C0 8F390D50 */  lw    $t9, 0xd50($t9)
/* 1D8E34 801E80C4 00230821 */  addu  $at, $at, $v1
/* 1D8E38 801E80C8 AC39A520 */ sw $t9, %lo(D_800EA520)($at)
/* 1D8E3C 801E80CC 8C480000 */  lw    $t0, ($v0)
/* 1D8E40 801E80D0 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D8E44 801E80D4 00084880 */  sll   $t1, $t0, 2
/* 1D8E48 801E80D8 00290821 */  addu  $at, $at, $t1
/* 1D8E4C 801E80DC AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D8E50 801E80E0 8C430000 */  lw    $v1, ($v0)
/* 1D8E54 801E80E4 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D8E58 801E80E8 00031880 */  sll   $v1, $v1, 2
/* 1D8E5C 801E80EC 00230821 */  addu  $at, $at, $v1
/* 1D8E60 801E80F0 C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 1D8E64 801E80F4 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D8E68 801E80F8 00230821 */  addu  $at, $at, $v1
/* 1D8E6C 801E80FC E424B160 */ swc1 $f4, %lo(D_800EB160)($at)
/* 1D8E70 801E8100 8C4A0000 */  lw    $t2, ($v0)
/* 1D8E74 801E8104 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D8E78 801E8108 000A5880 */  sll   $t3, $t2, 2
/* 1D8E7C 801E810C 002B0821 */  addu  $at, $at, $t3
/* 1D8E80 801E8110 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D8E84 801E8114 8C4C0000 */  lw    $t4, ($v0)
/* 1D8E88 801E8118 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D8E8C 801E811C 000C6880 */  sll   $t5, $t4, 2
/* 1D8E90 801E8120 002D0821 */  addu  $at, $at, $t5
/* 1D8E94 801E8124 0C02A5D8 */  jal   func_800A9760
/* 1D8E98 801E8128 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 1D8E9C 801E812C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 1D8EA0 801E8130 3C0E801D */  lui   $t6, %hi(D_801CB590) # $t6, 0x801d
/* 1D8EA4 801E8134 25CEB590 */  addiu $t6, %lo(D_801CB590) # addiu $t6, $t6, -0x4a70
/* 1D8EA8 801E8138 3C04801F */  lui   $a0, %hi(D_801E8008) # $a0, 0x801f
/* 1D8EAC 801E813C 24848008 */  addiu $a0, %lo(D_801E8008) # addiu $a0, $a0, -0x7ff8
/* 1D8EB0 801E8140 0C068354 */  jal   func_801A0D50
/* 1D8EB4 801E8144 ADEE0098 */   sw    $t6, 0x98($t7)
/* 1D8EB8 801E8148 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1D8EBC 801E814C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1D8EC0 801E8150 3C04800E */ lui $a0, %hi(gEntityVtableIndexArray)
/* 1D8EC4 801E8154 3C06801F */  lui   $a2, %hi(D_801F4558_ovl10) # $a2, 0x801f
/* 1D8EC8 801E8158 8F190000 */  lw    $t9, ($t8)
/* 1D8ECC 801E815C 24C64558 */  addiu $a2, %lo(D_801F4558_ovl10) # addiu $a2, $a2, 0x4558
/* 1D8ED0 801E8160 24050003 */  li    $a1, 3
/* 1D8ED4 801E8164 00194080 */  sll   $t0, $t9, 2
/* 1D8ED8 801E8168 00882021 */  addu  $a0, $a0, $t0
/* 1D8EDC 801E816C 0C02911F */  jal   call_virtual_function
/* 1D8EE0 801E8170 8C84DC50 */ lw $a0, %lo(gEntityVtableIndexArray)($a0)
/* 1D8EE4 801E8174 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D8EE8 801E8178 27BD0020 */  addiu $sp, $sp, 0x20
/* 1D8EEC 801E817C 03E00008 */  jr    $ra
/* 1D8EF0 801E8180 00000000 */   nop   
.type func_801E8050_ovl10, @function
.size func_801E8050_ovl10, . - func_801E8050_ovl10
