glabel func_802226FC_ovl19
/* 242E0C 802226FC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 242E10 80222700 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 242E14 80222704 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 242E18 80222708 AFBF0014 */  sw         $ra, 0x14($sp)
/* 242E1C 8022270C AFA40018 */  sw         $a0, 0x18($sp)
/* 242E20 80222710 8DC20000 */  lw         $v0, 0x0($t6)
/* 242E24 80222714 3C0F800F */  lui        $t7, %hi(D_800E9E20)
/* 242E28 80222718 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
/* 242E2C 8022271C 00021080 */  sll        $v0, $v0, 2
.L80222720_ovl18:
/* 242E30 80222720 01E27821 */  addu       $t7, $t7, $v0
/* 242E34 80222724 8DEF9E20 */  lw         $t7, %lo(D_800E9E20)($t7)
/* 242E38 80222728 3C03800E */  lui        $v1, %hi(gEntitiesNextPosZArray)
/* 242E3C 8022272C 24632950 */  addiu      $v1, $v1, %lo(gEntitiesNextPosZArray)
/* 242E40 80222730 15E0002B */  bnez       $t7, .L802227E0_ovl19
/* 242E44 80222734 248425D0 */   addiu     $a0, $a0, %lo(gEntitiesNextPosXArray)
/* 242E48 80222738 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
/* 242E4C 8022273C 0062C021 */  addu       $t8, $v1, $v0
/* 242E50 80222740 C7060000 */  lwc1       $f6, 0x0($t8)
/* 242E54 80222744 C4640000 */  lwc1       $f4, 0x0($v1)
glabel func_80222748_ovl18
/* 242E58 80222748 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 242E5C 8022274C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 242E60 80222750 44819000 */  mtc1       $at, $f18
/* 242E64 80222754 C4B00000 */  lwc1       $f16, 0x0($a1)
/* 242E68 80222758 0082C821 */  addu       $t9, $a0, $v0
/* 242E6C 8022275C C72A0000 */  lwc1       $f10, 0x0($t9)
/* 242E70 80222760 C4880000 */  lwc1       $f8, 0x0($a0)
/* 242E74 80222764 46062001 */  sub.s      $f0, $f4, $f6
/* 242E78 80222768 00A24021 */  addu       $t0, $a1, $v0
/* 242E7C 8022276C C5060000 */  lwc1       $f6, 0x0($t0)
/* 242E80 80222770 46128100 */  add.s      $f4, $f16, $f18
/* 242E84 80222774 3C0147C8 */  lui        $at, (0x47C80000 >> 16)
/* 242E88 80222778 24040009 */  addiu      $a0, $zero, 0x9
/* 242E8C 8022277C 460A4081 */  sub.s      $f2, $f8, $f10
/* 242E90 80222780 46062301 */  sub.s      $f12, $f4, $f6
/* 242E94 80222784 46021202 */  mul.s      $f8, $f2, $f2
/* 242E98 80222788 44813000 */  mtc1       $at, $f6
/* 242E9C 8022278C 460C6282 */  mul.s      $f10, $f12, $f12
/* 242EA0 80222790 460A4400 */  add.s      $f16, $f8, $f10
/* 242EA4 80222794 46000482 */  mul.s      $f18, $f0, $f0
/* 242EA8 80222798 46109100 */  add.s      $f4, $f18, $f16
/* 242EAC 8022279C 4606203C */  c.lt.s     $f4, $f6
/* 242EB0 802227A0 00000000 */  nop
/* 242EB4 802227A4 4502000F */  bc1fl      .L802227E4_ovl19
/* 242EB8 802227A8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 242EBC 802227AC 0C0878B4 */  jal        func_8021E2D0_ovl19
/* 242EC0 802227B0 24050001 */   addiu     $a1, $zero, 0x1
/* 242EC4 802227B4 24040009 */  addiu      $a0, $zero, 0x9
/* 242EC8 802227B8 0C0878B4 */  jal        func_8021E2D0_ovl19
/* 242ECC 802227BC 24050002 */   addiu     $a1, $zero, 0x2
/* 242ED0 802227C0 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 242ED4 802227C4 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 242ED8 802227C8 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 242EDC 802227CC 24090001 */  addiu      $t1, $zero, 0x1
/* 242EE0 802227D0 8D4B0000 */  lw         $t3, 0x0($t2)
/* 242EE4 802227D4 000B6080 */  sll        $t4, $t3, 2
/* 242EE8 802227D8 002C0821 */  addu       $at, $at, $t4
/* 242EEC 802227DC AC299E20 */  sw         $t1, %lo(D_800E9E20)($at)
.L802227E0_ovl19:
/* 242EF0 802227E0 8FBF0014 */  lw         $ra, 0x14($sp)
.L802227E4_ovl19:
/* 242EF4 802227E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 242EF8 802227E8 03E00008 */  jr         $ra
/* 242EFC 802227EC 00000000 */   nop
