glabel func_801EA628_ovl9
/* 198678 801EA628 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
.L801EA62C_ovl16:
/* 19867C 801EA62C C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
glabel func_801EA630_ovl10
/* 198680 801EA630 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 198684 801EA634 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
/* 198688 801EA638 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 19868C 801EA63C 44814000 */  mtc1       $at, $f8
/* 198690 801EA640 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 198694 801EA644 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
.L801EA648_ovl16:
/* 198698 801EA648 46083280 */  add.s      $f10, $f6, $f8
/* 19869C 801EA64C E7A40030 */  swc1       $f4, 0x30($sp)
/* 1986A0 801EA650 44812000 */  mtc1       $at, $f4
/* 1986A4 801EA654 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1986A8 801EA658 C42E2950 */  lwc1       $f14, %lo(gEntitiesNextPosZArray)($at)
/* 1986AC 801EA65C 46045180 */  add.s      $f6, $f10, $f4
/* 1986B0 801EA660 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1986B4 801EA664 AFA40048 */  sw         $a0, 0x48($sp)
/* 1986B8 801EA668 27A40030 */  addiu      $a0, $sp, 0x30
/* 1986BC 801EA66C E7A60034 */  swc1       $f6, 0x34($sp)
/* 1986C0 801EA670 00002825 */  or         $a1, $zero, $zero
/* 1986C4 801EA674 3406FFFF */  ori        $a2, $zero, 0xFFFF
.L801EA678_ovl16:
/* 1986C8 801EA678 0C02CAB5 */  jal        func_800B2AD4
/* 1986CC 801EA67C E7AE0038 */   swc1      $f14, 0x38($sp)
/* 1986D0 801EA680 C7A00030 */  lwc1       $f0, 0x30($sp)
/* 1986D4 801EA684 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1986D8 801EA688 46000202 */  mul.s      $f8, $f0, $f0
/* 1986DC 801EA68C 00000000 */  nop
/* 1986E0 801EA690 460E7282 */  mul.s      $f10, $f14, $f14
/* 1986E4 801EA694 0C00CAC8 */  jal        sqrtf
/* 1986E8 801EA698 460A4300 */   add.s     $f12, $f8, $f10
/* 1986EC 801EA69C 46000306 */  mov.s      $f12, $f0
/* 1986F0 801EA6A0 0C0061C3 */  jal        atan2f
/* 1986F4 801EA6A4 C7AE0034 */   lwc1      $f14, 0x34($sp)
/* 1986F8 801EA6A8 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1986FC 801EA6AC C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 198700 801EA6B0 0C0061C3 */  jal        atan2f
/* 198704 801EA6B4 E7A00044 */   swc1      $f0, 0x44($sp)
.L801EA6B8_ovl16:
/* 198708 801EA6B8 3C018022 */  lui        $at, %hi(D_8021D180_ovl9)
/* 19870C 801EA6BC C42CD180 */  lwc1       $f12, %lo(D_8021D180_ovl9)($at)
/* 198710 801EA6C0 C7A20044 */  lwc1       $f2, 0x44($sp)
/* 198714 801EA6C4 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 198718 801EA6C8 3C05800F */  lui        $a1, %hi(D_800EAC20)
/* 19871C 801EA6CC 4602603E */  c.le.s     $f12, $f2
/* 198720 801EA6D0 3C018022 */  lui        $at, %hi(D_8021D184_ovl9)
/* 198724 801EA6D4 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 198728 801EA6D8 3C06800F */  lui        $a2, %hi(D_800EA6E0)
/* 19872C 801EA6DC 45000006 */  bc1f       .L801EA6F8_ovl9
/* 198730 801EA6E0 24A5AC20 */   addiu     $a1, $a1, %lo(D_800EAC20)
/* 198734 801EA6E4 460C1081 */  sub.s      $f2, $f2, $f12
.L801EA6E8_ovl9:
/* 198738 801EA6E8 4602603E */  c.le.s     $f12, $f2
.L801EA6EC_ovl16:
/* 19873C 801EA6EC 00000000 */  nop
/* 198740 801EA6F0 4503FFFD */  bc1tl      .L801EA6E8_ovl9
/* 198744 801EA6F4 460C1081 */   sub.s     $f2, $f2, $f12
.L801EA6F8_ovl9:
/* 198748 801EA6F8 C42ED184 */  lwc1       $f14, %lo(D_8021D184_ovl9)($at)
.L801EA6FC_ovl16:
/* 19874C 801EA6FC 460E103E */  c.le.s     $f2, $f14
/* 198750 801EA700 00000000 */  nop
/* 198754 801EA704 45020007 */  bc1fl      .L801EA724_ovl9
/* 198758 801EA708 8CE40000 */   lw        $a0, 0x0($a3)
/* 19875C 801EA70C 460C1080 */  add.s      $f2, $f2, $f12
.L801EA710_ovl9:
/* 198760 801EA710 460E103E */  c.le.s     $f2, $f14
/* 198764 801EA714 00000000 */  nop
glabel func_801EA718_ovl10
/* 198768 801EA718 4503FFFD */  bc1tl      .L801EA710_ovl9
/* 19876C 801EA71C 460C1080 */   add.s     $f2, $f2, $f12
/* 198770 801EA720 8CE40000 */  lw         $a0, 0x0($a3)
.L801EA724_ovl9:
/* 198774 801EA724 3C018022 */  lui        $at, %hi(D_8021D188_ovl9)
/* 198778 801EA728 C424D188 */  lwc1       $f4, %lo(D_8021D188_ovl9)($at)
/* 19877C 801EA72C 8C830000 */  lw         $v1, 0x0($a0)
.L801EA730_ovl16:
/* 198780 801EA730 24C6A6E0 */  addiu      $a2, $a2, %lo(D_800EA6E0)
/* 198784 801EA734 46041180 */  add.s      $f6, $f2, $f4
/* 198788 801EA738 00031880 */  sll        $v1, $v1, 2
/* 19878C 801EA73C 00C31021 */  addu       $v0, $a2, $v1
/* 198790 801EA740 C44E0000 */  lwc1       $f14, 0x0($v0)
/* 198794 801EA744 3C018022 */  lui        $at, %hi(D_8021D190_ovl9)
/* 198798 801EA748 460E303C */  c.lt.s     $f6, $f14
/* 19879C 801EA74C 00000000 */  nop
/* 1987A0 801EA750 45000012 */  bc1f       .L801EA79C_ovl16
/* 1987A4 801EA754 00000000 */   nop
/* 1987A8 801EA758 3C018022 */  lui        $at, %hi(D_8021D18C_ovl9)
/* 1987AC 801EA75C C428D18C */  lwc1       $f8, %lo(D_8021D18C_ovl9)($at)
/* 1987B0 801EA760 44809000 */  mtc1       $zero, $f18
/* 1987B4 801EA764 46087281 */  sub.s      $f10, $f14, $f8
.L801EA768_ovl16:
/* 1987B8 801EA768 E44A0000 */  swc1       $f10, 0x0($v0)
/* 1987BC 801EA76C 8C830000 */  lw         $v1, 0x0($a0)
/* 1987C0 801EA770 00031880 */  sll        $v1, $v1, 2
.L801EA774_ovl10:
/* 1987C4 801EA774 00C31021 */  addu       $v0, $a2, $v1
/* 1987C8 801EA778 C4440000 */  lwc1       $f4, 0x0($v0)
/* 1987CC 801EA77C 4612203C */  c.lt.s     $f4, $f18
/* 1987D0 801EA780 00000000 */  nop
glabel func_801EA784_ovl10
/* 1987D4 801EA784 4502001D */  bc1fl      .L801EA7FC_ovl9
/* 1987D8 801EA788 00A31021 */   addu      $v0, $a1, $v1
/* 1987DC 801EA78C E4520000 */  swc1       $f18, 0x0($v0)
/* 1987E0 801EA790 8C830000 */  lw         $v1, 0x0($a0)
/* 1987E4 801EA794 10000018 */  b          .L801EA7F8_ovl9
/* 1987E8 801EA798 00031880 */   sll       $v1, $v1, 2
.L801EA79C_ovl16:
/* 1987EC 801EA79C C426D190 */  lwc1       $f6, %lo(D_8021D190_ovl9)($at)
/* 1987F0 801EA7A0 3C018022 */  lui        $at, %hi(D_8021D194_ovl9)
/* 1987F4 801EA7A4 46061201 */  sub.s      $f8, $f2, $f6
/* 1987F8 801EA7A8 4608703C */  c.lt.s     $f14, $f8
.L801EA7AC_ovl16:
/* 1987FC 801EA7AC 00000000 */  nop
/* 198800 801EA7B0 45020012 */  bc1fl      .L801EA7FC_ovl9
/* 198804 801EA7B4 00A31021 */   addu      $v0, $a1, $v1
/* 198808 801EA7B8 C422D194 */  lwc1       $f2, %lo(D_8021D194_ovl9)($at)
/* 19880C 801EA7BC 3C018022 */  lui        $at, %hi(D_8021D198_ovl9)
/* 198810 801EA7C0 C42AD198 */  lwc1       $f10, %lo(D_8021D198_ovl9)($at)
/* 198814 801EA7C4 460A7100 */  add.s      $f4, $f14, $f10
/* 198818 801EA7C8 E4440000 */  swc1       $f4, 0x0($v0)
glabel func_801EA7CC_ovl10
/* 19881C 801EA7CC 8C830000 */  lw         $v1, 0x0($a0)
/* 198820 801EA7D0 00031880 */  sll        $v1, $v1, 2
/* 198824 801EA7D4 00C31021 */  addu       $v0, $a2, $v1
/* 198828 801EA7D8 C4460000 */  lwc1       $f6, 0x0($v0)
/* 19882C 801EA7DC 4606103C */  c.lt.s     $f2, $f6
.L801EA7E0_ovl16:
/* 198830 801EA7E0 00000000 */  nop
/* 198834 801EA7E4 45020005 */  bc1fl      .L801EA7FC_ovl9
/* 198838 801EA7E8 00A31021 */   addu      $v0, $a1, $v1
/* 19883C 801EA7EC E4420000 */  swc1       $f2, 0x0($v0)
/* 198840 801EA7F0 8C830000 */  lw         $v1, 0x0($a0)
/* 198844 801EA7F4 00031880 */  sll        $v1, $v1, 2
.L801EA7F8_ovl9:
/* 198848 801EA7F8 00A31021 */  addu       $v0, $a1, $v1
.L801EA7FC_ovl9:
/* 19884C 801EA7FC C4420000 */  lwc1       $f2, 0x0($v0)
/* 198850 801EA800 44804000 */  mtc1       $zero, $f8
/* 198854 801EA804 44809000 */  mtc1       $zero, $f18
/* 198858 801EA808 46020401 */  sub.s      $f16, $f0, $f2
/* 19885C 801EA80C 44803000 */  mtc1       $zero, $f6
/* 198860 801EA810 4608803C */  c.lt.s     $f16, $f8
/* 198864 801EA814 00000000 */  nop
/* 198868 801EA818 45020004 */  bc1fl      .L801EA82C_ovl9
.L801EA81C_ovl16:
/* 19886C 801EA81C 46008386 */   mov.s     $f14, $f16
/* 198870 801EA820 10000002 */  b          .L801EA82C_ovl9
/* 198874 801EA824 46008387 */   neg.s     $f14, $f16
/* 198878 801EA828 46008386 */  mov.s      $f14, $f16
.L801EA82C_ovl9:
/* 19887C 801EA82C 460E603C */  c.lt.s     $f12, $f14
/* 198880 801EA830 00000000 */  nop
/* 198884 801EA834 4502000E */  bc1fl      .L801EA870_ovl9
/* 198888 801EA838 4606803C */   c.lt.s    $f16, $f6
/* 19888C 801EA83C 4612803C */  c.lt.s     $f16, $f18
/* 198890 801EA840 3C018022 */  lui        $at, %hi(D_8021D1A0_ovl9)
/* 198894 801EA844 45000006 */  bc1f       .L801EA860_ovl16
/* 198898 801EA848 00000000 */   nop
/* 19889C 801EA84C 3C018022 */  lui        $at, %hi(D_8021D19C_ovl9)
.L801EA850_ovl16:
/* 1988A0 801EA850 C42CD19C */  lwc1       $f12, %lo(D_8021D19C_ovl9)($at)
/* 1988A4 801EA854 460C0280 */  add.s      $f10, $f0, $f12
/* 1988A8 801EA858 10000004 */  b          .L801EA86C_ovl9
/* 1988AC 801EA85C 46025401 */   sub.s     $f16, $f10, $f2
.L801EA860_ovl16:
/* 1988B0 801EA860 C42CD1A0 */  lwc1       $f12, %lo(D_8021D1A0_ovl9)($at)
/* 1988B4 801EA864 460C1100 */  add.s      $f4, $f2, $f12
/* 1988B8 801EA868 46040401 */  sub.s      $f16, $f0, $f4
.L801EA86C_ovl9:
/* 1988BC 801EA86C 4606803C */  c.lt.s     $f16, $f6
.L801EA870_ovl9:
/* 1988C0 801EA870 3C018022 */  lui        $at, %hi(D_8021D1A4_ovl9)
/* 1988C4 801EA874 C42CD1A4 */  lwc1       $f12, %lo(D_8021D1A4_ovl9)($at)
/* 1988C8 801EA878 3C018022 */  lui        $at, %hi(D_8021D1A8_ovl9)
/* 1988CC 801EA87C 45020004 */  bc1fl      .L801EA890_ovl9
/* 1988D0 801EA880 46008386 */   mov.s     $f14, $f16
/* 1988D4 801EA884 10000002 */  b          .L801EA890_ovl9
/* 1988D8 801EA888 46008387 */   neg.s     $f14, $f16
/* 1988DC 801EA88C 46008386 */  mov.s      $f14, $f16
.L801EA890_ovl9:
/* 1988E0 801EA890 C428D1A8 */  lwc1       $f8, %lo(D_8021D1A8_ovl9)($at)
.L801EA894_ovl16:
/* 1988E4 801EA894 460E403C */  c.lt.s     $f8, $f14
/* 1988E8 801EA898 00000000 */  nop
/* 1988EC 801EA89C 4500002B */  bc1f       .L801EA94C_ovl10
/* 1988F0 801EA8A0 00000000 */   nop
/* 1988F4 801EA8A4 4610903C */  c.lt.s     $f18, $f16
/* 1988F8 801EA8A8 3C018022 */  lui        $at, %hi(D_8021D1B0_ovl9)
/* 1988FC 801EA8AC 45000004 */  bc1f       .L801EA8C0_ovl9
/* 198900 801EA8B0 00000000 */   nop
/* 198904 801EA8B4 3C018022 */  lui        $at, %hi(D_8021D1AC_ovl9)
/* 198908 801EA8B8 10000002 */  b          .L801EA8C4_ovl9
/* 19890C 801EA8BC C42ED1AC */   lwc1      $f14, %lo(D_8021D1AC_ovl9)($at)
.L801EA8C0_ovl9:
/* 198910 801EA8C0 C42ED1B0 */  lwc1       $f14, %lo(D_8021D1B0_ovl9)($at)
.L801EA8C4_ovl9:
/* 198914 801EA8C4 460E1280 */  add.s      $f10, $f2, $f14
/* 198918 801EA8C8 E44A0000 */  swc1       $f10, 0x0($v0)
.L801EA8CC_ovl16:
/* 19891C 801EA8CC 8C830000 */  lw         $v1, 0x0($a0)
/* 198920 801EA8D0 00031880 */  sll        $v1, $v1, 2
/* 198924 801EA8D4 00A31021 */  addu       $v0, $a1, $v1
/* 198928 801EA8D8 C4420000 */  lwc1       $f2, 0x0($v0)
/* 19892C 801EA8DC 4602603C */  c.lt.s     $f12, $f2
/* 198930 801EA8E0 00000000 */  nop
/* 198934 801EA8E4 4502000C */  bc1fl      .L801EA918_ovl9
/* 198938 801EA8E8 4612103C */   c.lt.s    $f2, $f18
/* 19893C 801EA8EC 460C1101 */  sub.s      $f4, $f2, $f12
.L801EA8F0_ovl9:
/* 198940 801EA8F0 E4440000 */  swc1       $f4, 0x0($v0)
/* 198944 801EA8F4 8C830000 */  lw         $v1, 0x0($a0)
/* 198948 801EA8F8 00031880 */  sll        $v1, $v1, 2
/* 19894C 801EA8FC 00A31021 */  addu       $v0, $a1, $v1
glabel func_801EA900_ovl16
/* 198950 801EA900 C4420000 */  lwc1       $f2, 0x0($v0)
/* 198954 801EA904 4602603C */  c.lt.s     $f12, $f2
/* 198958 801EA908 00000000 */  nop
/* 19895C 801EA90C 4503FFF8 */  bc1tl      .L801EA8F0_ovl9
.L801EA910_ovl16:
/* 198960 801EA910 460C1101 */   sub.s     $f4, $f2, $f12
/* 198964 801EA914 4612103C */  c.lt.s     $f2, $f18
.L801EA918_ovl9:
/* 198968 801EA918 00000000 */  nop
/* 19896C 801EA91C 4500000B */  bc1f       .L801EA94C_ovl10
/* 198970 801EA920 00000000 */   nop
/* 198974 801EA924 460C1180 */  add.s      $f6, $f2, $f12
.L801EA928_ovl9:
/* 198978 801EA928 E4460000 */  swc1       $f6, 0x0($v0)
/* 19897C 801EA92C 8C830000 */  lw         $v1, 0x0($a0)
/* 198980 801EA930 00031880 */  sll        $v1, $v1, 2
/* 198984 801EA934 00A31021 */  addu       $v0, $a1, $v1
/* 198988 801EA938 C4420000 */  lwc1       $f2, 0x0($v0)
/* 19898C 801EA93C 4612103C */  c.lt.s     $f2, $f18
/* 198990 801EA940 00000000 */  nop
.L801EA944_ovl16:
/* 198994 801EA944 4503FFF8 */  bc1tl      .L801EA928_ovl9
/* 198998 801EA948 460C1180 */   add.s     $f6, $f2, $f12
.L801EA94C_ovl10:
/* 19899C 801EA94C 3C02800E */  lui        $v0, %hi(D_800DFBD0)
/* 1989A0 801EA950 2442FBD0 */  addiu      $v0, $v0, %lo(D_800DFBD0)
/* 1989A4 801EA954 00437821 */  addu       $t7, $v0, $v1
/* 1989A8 801EA958 8DF80000 */  lw         $t8, 0x0($t7)
/* 1989AC 801EA95C 00C37021 */  addu       $t6, $a2, $v1
/* 1989B0 801EA960 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 1989B4 801EA964 8F190008 */  lw         $t9, 0x8($t8)
/* 1989B8 801EA968 E7280030 */  swc1       $f8, 0x30($t9)
/* 1989BC 801EA96C 8CE80000 */  lw         $t0, 0x0($a3)
/* 1989C0 801EA970 8D030000 */  lw         $v1, 0x0($t0)
/* 1989C4 801EA974 00031880 */  sll        $v1, $v1, 2
/* 1989C8 801EA978 00435021 */  addu       $t2, $v0, $v1
.L801EA97C_ovl10:
/* 1989CC 801EA97C 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1989D0 801EA980 00A34821 */  addu       $t1, $a1, $v1
/* 1989D4 801EA984 C52A0000 */  lwc1       $f10, 0x0($t1)
/* 1989D8 801EA988 8D6C0008 */  lw         $t4, 0x8($t3)
/* 1989DC 801EA98C E58A0034 */  swc1       $f10, 0x34($t4)
/* 1989E0 801EA990 8FBF0014 */  lw         $ra, 0x14($sp)
.L801EA994_ovl16:
/* 1989E4 801EA994 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1989E8 801EA998 03E00008 */  jr         $ra
/* 1989EC 801EA99C 00000000 */   nop
