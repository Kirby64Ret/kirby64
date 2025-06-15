glabel func_80220D54_ovl19
/* 241464 80220D54 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 241468 80220D58 AFBF0014 */  sw    $ra, 0x14($sp)
/* 24146C 80220D5C 0C087861 */  jal   func_8021E184_ovl19
/* 241470 80220D60 AFA40018 */   sw    $a0, 0x18($sp)
/* 241474 80220D64 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 241478 80220D68 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 24147C 80220D6C 44800000 */  mtc1  $zero, $f0
/* 241480 80220D70 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 241484 80220D74 8C4E0000 */  lw    $t6, ($v0)
/* 241488 80220D78 3C040002 */  lui   $a0, (0x00020079 >> 16) # lui $a0, 2
/* 24148C 80220D7C 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 241490 80220D80 000E7880 */  sll   $t7, $t6, 2
/* 241494 80220D84 002F0821 */  addu  $at, $at, $t7
/* 241498 80220D88 E42025D0 */ swc1 $f0, %lo(gEntitiesNextPosXArray)($at)
/* 24149C 80220D8C 8C580000 */  lw    $t8, ($v0)
/* 2414A0 80220D90 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 2414A4 80220D94 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 2414A8 80220D98 0018C880 */  sll   $t9, $t8, 2
/* 2414AC 80220D9C 00390821 */  addu  $at, $at, $t9
/* 2414B0 80220DA0 E4202790 */ swc1 $f0, %lo(gEntitiesNextPosYArray)($at)
/* 2414B4 80220DA4 8C480000 */  lw    $t0, ($v0)
/* 2414B8 80220DA8 3C01C30C */  li    $at, 0xC30C0000 # -140.000000
/* 2414BC 80220DAC 44812000 */  mtc1  $at, $f4
/* 2414C0 80220DB0 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 2414C4 80220DB4 00084880 */  sll   $t1, $t0, 2
/* 2414C8 80220DB8 00290821 */  addu  $at, $at, $t1
/* 2414CC 80220DBC 34840079 */  ori   $a0, (0x00020079 & 0xFFFF) # ori $a0, $a0, 0x79
/* 2414D0 80220DC0 24060010 */  li    $a2, 16
/* 2414D4 80220DC4 0C02A619 */  jal   func_800A9864
/* 2414D8 80220DC8 E4242950 */ swc1 $f4, %lo(gEntitiesNextPosZArray)($at)
/* 2414DC 80220DCC 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 2414E0 80220DD0 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 2414E4 80220DD4 3C0C800E */ lui $t4, %hi(D_800DFBD0)
/* 2414E8 80220DD8 3C0B800F */ lui $t3, %hi(D_800EC2E0)
/* 2414EC 80220DDC 8D420000 */  lw    $v0, ($t2)
/* 2414F0 80220DE0 00021080 */  sll   $v0, $v0, 2
/* 2414F4 80220DE4 01826021 */  addu  $t4, $t4, $v0
/* 2414F8 80220DE8 8D8CFBD0 */ lw $t4, %lo(D_800DFBD0)($t4)
/* 2414FC 80220DEC 01625821 */  addu  $t3, $t3, $v0
/* 241500 80220DF0 8D6BC2E0 */ lw $t3, %lo(D_800EC2E0)($t3)
/* 241504 80220DF4 8D8D0008 */  lw    $t5, 8($t4)
/* 241508 80220DF8 8DAE0080 */  lw    $t6, 0x80($t5)
/* 24150C 80220DFC 0C02BE85 */  jal   func_800AFA14
/* 241510 80220E00 A5CB0080 */   sh    $t3, 0x80($t6)
/* 241514 80220E04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 241518 80220E08 27BD0018 */  addiu $sp, $sp, 0x18
/* 24151C 80220E0C 03E00008 */  jr    $ra
/* 241520 80220E10 00000000 */   nop   
.type func_80220D54_ovl19, @function
.size func_80220D54_ovl19, . - func_80220D54_ovl19
