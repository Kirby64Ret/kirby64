glabel func_801D1A64_ovl8
/* 175544 801D1A64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 175548 801D1A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 17554C 801D1A6C 0C02D69F */  jal   func_800B5A7C
/* 175550 801D1A70 00000000 */   nop   
/* 175554 801D1A74 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 175558 801D1A78 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 17555C 801D1A7C 3C01800E */ lui $at, %hi(D_800E5510)
/* 175560 801D1A80 3C0E800E */  lui   $t6, %hi(D_800E64D0) # $t6, 0x800e
/* 175564 801D1A84 8C620000 */  lw    $v0, ($v1)
/* 175568 801D1A88 25CE64D0 */  addiu $t6, %lo(D_800E64D0) # addiu $t6, $t6, 0x64d0
/* 17556C 801D1A8C 3C04800E */ lui $a0, %hi(D_800DE350)
/* 175570 801D1A90 00021080 */  sll   $v0, $v0, 2
/* 175574 801D1A94 00220821 */  addu  $at, $at, $v0
/* 175578 801D1A98 C4245510 */ lwc1 $f4, %lo(D_800E5510)($at)
/* 17557C 801D1A9C 3C01800E */ lui $at, %hi(D_800E56D0)
/* 175580 801D1AA0 00220821 */  addu  $at, $at, $v0
/* 175584 801D1AA4 C42656D0 */ lwc1 $f6, %lo(D_800E56D0)($at)
/* 175588 801D1AA8 004E2821 */  addu  $a1, $v0, $t6
/* 17558C 801D1AAC C4AA0000 */  lwc1  $f10, ($a1)
/* 175590 801D1AB0 46062200 */  add.s $f8, $f4, $f6
/* 175594 801D1AB4 46085400 */  add.s $f16, $f10, $f8
/* 175598 801D1AB8 E4B00000 */  swc1  $f16, ($a1)
/* 17559C 801D1ABC 8C6F0000 */  lw    $t7, ($v1)
/* 1755A0 801D1AC0 000FC080 */  sll   $t8, $t7, 2
/* 1755A4 801D1AC4 00982021 */  addu  $a0, $a0, $t8
/* 1755A8 801D1AC8 0C03E39B */  jal   func_800F8E6C
/* 1755AC 801D1ACC 8C84E350 */ lw $a0, %lo(D_800DE350)($a0)
/* 1755B0 801D1AD0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1755B4 801D1AD4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1755B8 801D1AD8 3C01800E */ lui $at, %hi(D_800E5510)
/* 1755BC 801D1ADC 3C08800E */  lui   $t0, %hi(D_800E64D0) # $t0, 0x800e
/* 1755C0 801D1AE0 8F220000 */  lw    $v0, ($t9)
/* 1755C4 801D1AE4 250864D0 */  addiu $t0, %lo(D_800E64D0) # addiu $t0, $t0, 0x64d0
/* 1755C8 801D1AE8 00021080 */  sll   $v0, $v0, 2
/* 1755CC 801D1AEC 00220821 */  addu  $at, $at, $v0
/* 1755D0 801D1AF0 C4325510 */ lwc1 $f18, %lo(D_800E5510)($at)
/* 1755D4 801D1AF4 3C01800E */ lui $at, %hi(D_800E56D0)
/* 1755D8 801D1AF8 00220821 */  addu  $at, $at, $v0
/* 1755DC 801D1AFC C42456D0 */ lwc1 $f4, %lo(D_800E56D0)($at)
/* 1755E0 801D1B00 00482821 */  addu  $a1, $v0, $t0
/* 1755E4 801D1B04 C4AA0000 */  lwc1  $f10, ($a1)
/* 1755E8 801D1B08 46049180 */  add.s $f6, $f18, $f4
/* 1755EC 801D1B0C 46065201 */  sub.s $f8, $f10, $f6
/* 1755F0 801D1B10 0C0744A9 */  jal   func_801D12A4_ovl8
/* 1755F4 801D1B14 E4A80000 */   swc1  $f8, ($a1)
/* 1755F8 801D1B18 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1755FC 801D1B1C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 175600 801D1B20 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 175604 801D1B24 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 175608 801D1B28 8C620000 */  lw    $v0, ($v1)
/* 17560C 801D1B2C 3C01800E */ lui $at, %hi(D_800E2090)
/* 175610 801D1B30 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 175614 801D1B34 00021080 */  sll   $v0, $v0, 2
/* 175618 801D1B38 00492021 */  addu  $a0, $v0, $t1
/* 17561C 801D1B3C 00220821 */  addu  $at, $at, $v0
/* 175620 801D1B40 C4322090 */ lwc1 $f18, %lo(D_800E2090)($at)
/* 175624 801D1B44 C4900000 */  lwc1  $f16, ($a0)
/* 175628 801D1B48 3C01800E */ lui $at, %hi(D_800E3210)
/* 17562C 801D1B4C 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 175630 801D1B50 46128100 */  add.s $f4, $f16, $f18
/* 175634 801D1B54 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 175638 801D1B58 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 17563C 801D1B5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 175640 801D1B60 E4840000 */  swc1  $f4, ($a0)
/* 175644 801D1B64 8C620000 */  lw    $v0, ($v1)
/* 175648 801D1B68 00021080 */  sll   $v0, $v0, 2
/* 17564C 801D1B6C 004A2821 */  addu  $a1, $v0, $t2
/* 175650 801D1B70 00220821 */  addu  $at, $at, $v0
/* 175654 801D1B74 C4263210 */ lwc1 $f6, %lo(D_800E3210)($at)
/* 175658 801D1B78 C4AA0000 */  lwc1  $f10, ($a1)
/* 17565C 801D1B7C 3C01800E */ lui $at, %hi(D_800E2410)
/* 175660 801D1B80 46065200 */  add.s $f8, $f10, $f6
/* 175664 801D1B84 E4A80000 */  swc1  $f8, ($a1)
/* 175668 801D1B88 8C620000 */  lw    $v0, ($v1)
/* 17566C 801D1B8C 00021080 */  sll   $v0, $v0, 2
/* 175670 801D1B90 004B3021 */  addu  $a2, $v0, $t3
/* 175674 801D1B94 00220821 */  addu  $at, $at, $v0
/* 175678 801D1B98 C4322410 */ lwc1 $f18, %lo(D_800E2410)($at)
/* 17567C 801D1B9C C4D00000 */  lwc1  $f16, ($a2)
/* 175680 801D1BA0 27BD0018 */  addiu $sp, $sp, 0x18
/* 175684 801D1BA4 46128100 */  add.s $f4, $f16, $f18
/* 175688 801D1BA8 03E00008 */  jr    $ra
/* 17568C 801D1BAC E4C40000 */   swc1  $f4, ($a2)
.type func_801D1A64_ovl8, @function
.size func_801D1A64_ovl8, . - func_801D1A64_ovl8
