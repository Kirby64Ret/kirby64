glabel func_801720D8_ovl5
/* 119548 801720D8 00043080 */  sll        $a2, $a0, 2
/* 11954C 801720DC 3C0E8019 */  lui        $t6, %hi(D_8018ECA8_ovl5)
/* 119550 801720E0 01C67021 */  addu       $t6, $t6, $a2
/* 119554 801720E4 8DCEECA8 */  lw         $t6, %lo(D_8018ECA8_ovl5)($t6)
/* 119558 801720E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11955C 801720EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 119560 801720F0 AFA60020 */  sw         $a2, 0x20($sp)
/* 119564 801720F4 240400BA */  addiu      $a0, $zero, 0xBA
/* 119568 801720F8 0C029D9E */  jal        play_sound
/* 11956C 801720FC AFAE0024 */   sw        $t6, 0x24($sp)
/* 119570 80172100 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 119574 80172104 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 119578 80172108 3C08800F */  lui        $t0, %hi(D_800E9FE0)
/* 11957C 8017210C 25089FE0 */  addiu      $t0, $t0, %lo(D_800E9FE0)
/* 119580 80172110 8C580000 */  lw         $t8, 0x0($v0)
/* 119584 80172114 240F0001 */  addiu      $t7, $zero, 0x1
/* 119588 80172118 8FA60020 */  lw         $a2, 0x20($sp)
/* 11958C 8017211C 0018C880 */  sll        $t9, $t8, 2
/* 119590 80172120 01194821 */  addu       $t1, $t0, $t9
/* 119594 80172124 AD2F0000 */  sw         $t7, 0x0($t1)
.L80172128_ovl3:
/* 119598 80172128 8C430000 */  lw         $v1, 0x0($v0)
/* 11959C 8017212C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1195A0 80172130 3C0C8019 */  lui        $t4, %hi(D_8018E998_ovl5)
/* 1195A4 80172134 00031880 */  sll        $v1, $v1, 2
/* 1195A8 80172138 01035021 */  addu       $t2, $t0, $v1
/* 1195AC 8017213C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1195B0 80172140 00230821 */  addu       $at, $at, $v1
/* 1195B4 80172144 258CE998 */  addiu      $t4, $t4, %lo(D_8018E998_ovl5)
/* 1195B8 80172148 8FB80024 */  lw         $t8, 0x24($sp)
/* 1195BC 8017214C 00CC2821 */  addu       $a1, $a2, $t4
/* 1195C0 80172150 AC2B9C60 */  sw         $t3, %lo(D_800E9C60)($at)
/* 1195C4 80172154 8CAD0000 */  lw         $t5, 0x0($a1)
/* 1195C8 80172158 3C0F8018 */  lui        $t7, %hi(D_801875F0_ovl5)
/* 1195CC 8017215C 25EF75F0 */  addiu      $t7, $t7, %lo(D_801875F0_ovl5)
/* 1195D0 80172160 0018C8C0 */  sll        $t9, $t8, 3
/* 1195D4 80172164 032F3821 */  addu       $a3, $t9, $t7
/* 1195D8 80172168 25AE0001 */  addiu      $t6, $t5, 0x1
/* 1195DC 8017216C ACAE0000 */  sw         $t6, 0x0($a1)
/* 1195E0 80172170 8CE40004 */  lw         $a0, 0x4($a3)
/* 1195E4 80172174 0C006291 */  jal        random_soft_s32_range
/* 1195E8 80172178 AFA7001C */   sw        $a3, 0x1C($sp)
/* 1195EC 8017217C 8FA7001C */  lw         $a3, 0x1C($sp)
/* 1195F0 80172180 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 1195F4 80172184 44814000 */  mtc1       $at, $f8
/* 1195F8 80172188 8CE90000 */  lw         $t1, 0x0($a3)
/* 1195FC 8017218C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 119600 80172190 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 119604 80172194 00495021 */  addu       $t2, $v0, $t1
/* 119608 80172198 448A2000 */  mtc1       $t2, $f4
/* 11960C 8017219C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 119610 801721A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 119614 801721A4 468021A0 */  cvt.s.w    $f6, $f4
/* 119618 801721A8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 11961C 801721AC 000EC080 */  sll        $t8, $t6, 2
/* 119620 801721B0 00380821 */  addu       $at, $at, $t8
/* 119624 801721B4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 119628 801721B8 46083282 */  mul.s      $f10, $f6, $f8
/* 11962C 801721BC 4600540D */  trunc.w.s  $f16, $f10
/* 119630 801721C0 440C8000 */  mfc1       $t4, $f16
/* 119634 801721C4 03E00008 */  jr         $ra
/* 119638 801721C8 AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
