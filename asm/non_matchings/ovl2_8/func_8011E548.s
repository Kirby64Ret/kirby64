glabel func_8011E548
/* 0A6FB8 8011E548 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A6FBC 8011E54C 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A6FC0 8011E550 8CE20034 */  lw    $v0, 0x34($a3)
/* 0A6FC4 8011E554 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0A6FC8 8011E558 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A6FCC 8011E55C 304E8000 */  andi  $t6, $v0, 0x8000
/* 0A6FD0 8011E560 15C00101 */  bnez  $t6, .L8011E968_ovl2
/* 0A6FD4 8011E564 304F0001 */   andi  $t7, $v0, 1
/* 0A6FD8 8011E568 11E000FF */  beqz  $t7, .L8011E968_ovl2
/* 0A6FDC 8011E56C 3C088005 */   lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A6FE0 8011E570 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A6FE4 8011E574 3C0A800F */ lui $t2, %hi(D_800E8AE0)
/* 0A6FE8 8011E578 3C018013 */  lui   $at, %hi(D_80128F2C)
/* 0A6FEC 8011E57C 8D180000 */  lw    $t8, ($t0)
/* 0A6FF0 8011E580 3C0C800D */  lui   $t4, %hi(D_800D6FAC) # $t4, 0x800d
/* 0A6FF4 8011E584 0018C880 */  sll   $t9, $t8, 2
/* 0A6FF8 8011E588 01595021 */  addu  $t2, $t2, $t9
/* 0A6FFC 8011E58C 8D4A8AE0 */ lw $t2, %lo(D_800E8AE0)($t2)
/* 0A7000 8011E590 314B0006 */  andi  $t3, $t2, 6
/* 0A7004 8011E594 11600004 */  beqz  $t3, .L8011E5A8_ovl2
/* 0A7008 8011E598 00000000 */   nop   
/* 0A700C 8011E59C 3C018013 */  lui   $at, %hi(D_80128F2C) # $at, 0x8013
/* 0A7010 8011E5A0 10000002 */  b     .L8011E5AC_ovl2
/* 0A7014 8011E5A4 C42E8F28 */   lwc1  $f14, %lo(D_80128F28)($at)
.L8011E5A8_ovl2:
/* 0A7018 8011E5A8 C42E8F2C */  lwc1  $f14, %lo(D_80128F2C)($at)
.L8011E5AC_ovl2:
/* 0A701C 8011E5AC 8D8C6FAC */  lw    $t4, %lo(D_800D6FAC)($t4)
/* 0A7020 8011E5B0 5580000C */  bnezl $t4, .L8011E5E4_ovl2
/* 0A7024 8011E5B4 8CF90020 */   lw    $t9, 0x20($a3)
/* 0A7028 8011E5B8 8CED00A0 */  lw    $t5, 0xa0($a3)
/* 0A702C 8011E5BC 3C0E800D */  lui   $t6, %hi(D_800D6FEA) # $t6, 0x800d
/* 0A7030 8011E5C0 55A00008 */  bnezl $t5, .L8011E5E4_ovl2
/* 0A7034 8011E5C4 8CF90020 */   lw    $t9, 0x20($a3)
/* 0A7038 8011E5C8 95CE6FEA */  lhu   $t6, %lo(D_800D6FEA)($t6)
/* 0A703C 8011E5CC 24180001 */  li    $t8, 1
/* 0A7040 8011E5D0 31CF4000 */  andi  $t7, $t6, 0x4000
/* 0A7044 8011E5D4 51E00003 */  beql  $t7, $zero, .L8011E5E4_ovl2
/* 0A7048 8011E5D8 8CF90020 */   lw    $t9, 0x20($a3)
/* 0A704C 8011E5DC A0F8000A */  sb    $t8, 0xa($a3)
/* 0A7050 8011E5E0 8CF90020 */  lw    $t9, 0x20($a3)
.L8011E5E4_ovl2:
/* 0A7054 8011E5E4 17200028 */  bnez  $t9, .L8011E688_ovl2
/* 0A7058 8011E5E8 00000000 */   nop   
/* 0A705C 8011E5EC 8D0A0000 */  lw    $t2, ($t0)
/* 0A7060 8011E5F0 3C09800E */  lui   $t1, %hi(D_800E6A10) # $t1, 0x800e
/* 0A7064 8011E5F4 25296A10 */  addiu $t1, %lo(D_800E6A10) # addiu $t1, $t1, 0x6a10
/* 0A7068 8011E5F8 000A5880 */  sll   $t3, $t2, 2
/* 0A706C 8011E5FC 012B1021 */  addu  $v0, $t1, $t3
/* 0A7070 8011E600 C4440000 */  lwc1  $f4, ($v0)
/* 0A7074 8011E604 3C018013 */  lui   $at, %hi(D_80128F30) # $at, 0x8013
/* 0A7078 8011E608 C4328F30 */  lwc1  $f18, %lo(D_80128F30)($at)
/* 0A707C 8011E60C 46002187 */  neg.s $f6, $f4
/* 0A7080 8011E610 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 0A7084 8011E614 E4460000 */  swc1  $f6, ($v0)
/* 0A7088 8011E618 8D0C0000 */  lw    $t4, ($t0)
/* 0A708C 8011E61C 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 0A7090 8011E620 3C018013 */  lui   $at, %hi(D_80128F34) # $at, 0x8013
/* 0A7094 8011E624 000C6880 */  sll   $t5, $t4, 2
/* 0A7098 8011E628 012D7021 */  addu  $t6, $t1, $t5
/* 0A709C 8011E62C C5C80000 */  lwc1  $f8, ($t6)
/* 0A70A0 8011E630 44808000 */  mtc1  $zero, $f16
/* 0A70A4 8011E634 4600428D */  trunc.w.s $f10, $f8
/* 0A70A8 8011E638 44185000 */  mfc1  $t8, $f10
/* 0A70AC 8011E63C 00000000 */  nop   
/* 0A70B0 8011E640 ACF80020 */  sw    $t8, 0x20($a3)
/* 0A70B4 8011E644 8D190000 */  lw    $t9, ($t0)
/* 0A70B8 8011E648 C4268F34 */  lwc1  $f6, %lo(D_80128F34)($at)
/* 0A70BC 8011E64C 00195080 */  sll   $t2, $t9, 2
/* 0A70C0 8011E650 00AA5821 */  addu  $t3, $a1, $t2
/* 0A70C4 8011E654 C5640000 */  lwc1  $f4, ($t3)
/* 0A70C8 8011E658 46062200 */  add.s $f8, $f4, $f6
/* 0A70CC 8011E65C E4E8007C */  swc1  $f8, 0x7c($a3)
/* 0A70D0 8011E660 C4E2007C */  lwc1  $f2, 0x7c($a3)
/* 0A70D4 8011E664 4602903E */  c.le.s $f18, $f2
/* 0A70D8 8011E668 00000000 */  nop   
/* 0A70DC 8011E66C 45000004 */  bc1f  .L8011E680_ovl2
/* 0A70E0 8011E670 00000000 */   nop   
/* 0A70E4 8011E674 46121281 */  sub.s $f10, $f2, $f18
/* 0A70E8 8011E678 E4EA007C */  swc1  $f10, 0x7c($a3)
/* 0A70EC 8011E67C C4E2007C */  lwc1  $f2, 0x7c($a3)
.L8011E680_ovl2:
/* 0A70F0 8011E680 10000061 */  b     .L8011E808_ovl2
/* 0A70F4 8011E684 8CEB0020 */   lw    $t3, 0x20($a3)
.L8011E688_ovl2:
/* 0A70F8 8011E688 0C048465 */  jal   func_80121194
/* 0A70FC 8011E68C E7AE0044 */   swc1  $f14, 0x44($sp)
/* 0A7100 8011E690 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A7104 8011E694 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A7108 8011E698 1040004D */  beqz  $v0, .L8011E7D0_ovl2
/* 0A710C 8011E69C C7AE0044 */   lwc1  $f14, 0x44($sp)
/* 0A7110 8011E6A0 3C0C800D */  lui   $t4, %hi(D_800D6FAC) # $t4, 0x800d
/* 0A7114 8011E6A4 8D8C6FAC */  lw    $t4, %lo(D_800D6FAC)($t4)
/* 0A7118 8011E6A8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A711C 8011E6AC 15800048 */  bnez  $t4, .L8011E7D0_ovl2
/* 0A7120 8011E6B0 00000000 */   nop   
/* 0A7124 8011E6B4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A7128 8011E6B8 3C09800E */  lui   $t1, %hi(D_800E6A10) # $t1, 0x800e
/* 0A712C 8011E6BC 25296A10 */  addiu $t1, %lo(D_800E6A10) # addiu $t1, $t1, 0x6a10
/* 0A7130 8011E6C0 8D0D0000 */  lw    $t5, ($t0)
/* 0A7134 8011E6C4 3C0C8013 */  lui   $t4, %hi(D_80129114) # $t4, 0x8013
/* 0A7138 8011E6C8 3C06800E */ lui $a2, %hi(D_800E6BD0)
/* 0A713C 8011E6CC 000D7080 */  sll   $t6, $t5, 2
/* 0A7140 8011E6D0 012E1021 */  addu  $v0, $t1, $t6
/* 0A7144 8011E6D4 C4440000 */  lwc1  $f4, ($v0)
/* 0A7148 8011E6D8 3C0E800E */ lui $t6, %hi(D_800E5F90)
/* 0A714C 8011E6DC 27A40034 */  addiu $a0, $sp, 0x34
/* 0A7150 8011E6E0 46002187 */  neg.s $f6, $f4
/* 0A7154 8011E6E4 E4460000 */  swc1  $f6, ($v0)
/* 0A7158 8011E6E8 8D0F0000 */  lw    $t7, ($t0)
/* 0A715C 8011E6EC 000FC080 */  sll   $t8, $t7, 2
/* 0A7160 8011E6F0 0138C821 */  addu  $t9, $t1, $t8
/* 0A7164 8011E6F4 C7280000 */  lwc1  $f8, ($t9)
/* 0A7168 8011E6F8 4600428D */  trunc.w.s $f10, $f8
/* 0A716C 8011E6FC 440B5000 */  mfc1  $t3, $f10
/* 0A7170 8011E700 00000000 */  nop   
/* 0A7174 8011E704 ACEB0020 */  sw    $t3, 0x20($a3)
/* 0A7178 8011E708 8D030000 */  lw    $v1, ($t0)
/* 0A717C 8011E70C 8D8C9114 */  lw    $t4, %lo(D_80129114)($t4)
/* 0A7180 8011E710 00031880 */  sll   $v1, $v1, 2
/* 0A7184 8011E714 01C37021 */  addu  $t6, $t6, $v1
/* 0A7188 8011E718 8DCE5F90 */ lw $t6, %lo(D_800E5F90)($t6)
/* 0A718C 8011E71C 8D8D0004 */  lw    $t5, 4($t4)
/* 0A7190 8011E720 00C33021 */  addu  $a2, $a2, $v1
/* 0A7194 8011E724 000E7900 */  sll   $t7, $t6, 4
/* 0A7198 8011E728 01AFC021 */  addu  $t8, $t5, $t7
/* 0A719C 8011E72C 8F050004 */  lw    $a1, 4($t8)
/* 0A71A0 8011E730 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 0A71A4 8011E734 0C0078D1 */  jal   func_8001E344_ovl2
/* 0A71A8 8011E738 8CC66BD0 */ lw $a2, %lo(D_800E6BD0)($a2)
/* 0A71AC 8011E73C 44808000 */  mtc1  $zero, $f16
/* 0A71B0 8011E740 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0A71B4 8011E744 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0A71B8 8011E748 E7B00038 */  swc1  $f16, 0x38($sp)
/* 0A71BC 8011E74C E7B0002C */  swc1  $f16, 0x2c($sp)
/* 0A71C0 8011E750 E7B00028 */  swc1  $f16, 0x28($sp)
/* 0A71C4 8011E754 8F2A0000 */  lw    $t2, ($t9)
/* 0A71C8 8011E758 3C09800E */  lui   $t1, %hi(D_800E6A10) # $t1, 0x800e
/* 0A71CC 8011E75C 25296A10 */  addiu $t1, %lo(D_800E6A10) # addiu $t1, $t1, 0x6a10
/* 0A71D0 8011E760 000A5880 */  sll   $t3, $t2, 2
/* 0A71D4 8011E764 012B6021 */  addu  $t4, $t1, $t3
/* 0A71D8 8011E768 C5840000 */  lwc1  $f4, ($t4)
/* 0A71DC 8011E76C 27A40028 */  addiu $a0, $sp, 0x28
/* 0A71E0 8011E770 27A50034 */  addiu $a1, $sp, 0x34
/* 0A71E4 8011E774 0C03E270 */  jal   vec3_abs_angle_diff
/* 0A71E8 8011E778 E7A40030 */   swc1  $f4, 0x30($sp)
/* 0A71EC 8011E77C 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0A71F0 8011E780 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0A71F4 8011E784 E4E0007C */  swc1  $f0, 0x7c($a3)
/* 0A71F8 8011E788 44808000 */  mtc1  $zero, $f16
/* 0A71FC 8011E78C C4E2007C */  lwc1  $f2, 0x7c($a3)
/* 0A7200 8011E790 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 0A7204 8011E794 C7AE0044 */  lwc1  $f14, 0x44($sp)
/* 0A7208 8011E798 4610103C */  c.lt.s $f2, $f16
/* 0A720C 8011E79C 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 0A7210 8011E7A0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A7214 8011E7A4 3C018013 */  lui   $at, %hi(D_80128F38) # $at, 0x8013
/* 0A7218 8011E7A8 45000005 */  bc1f  .L8011E7C0_ovl2
/* 0A721C 8011E7AC 00000000 */   nop   
/* 0A7220 8011E7B0 C4328F38 */  lwc1  $f18, %lo(D_80128F38)($at)
/* 0A7224 8011E7B4 46121180 */  add.s $f6, $f2, $f18
/* 0A7228 8011E7B8 E4E6007C */  swc1  $f6, 0x7c($a3)
/* 0A722C 8011E7BC C4E2007C */  lwc1  $f2, 0x7c($a3)
.L8011E7C0_ovl2:
/* 0A7230 8011E7C0 3C018013 */  lui   $at, %hi(D_80128F3C) # $at, 0x8013
/* 0A7234 8011E7C4 C4328F3C */  lwc1  $f18, %lo(D_80128F3C)($at)
/* 0A7238 8011E7C8 1000000E */  b     .L8011E804_ovl2
/* 0A723C 8011E7CC 8D08A7C4 */   lw    $t0, %lo(D_8004A7C4)($t0)
.L8011E7D0_ovl2:
/* 0A7240 8011E7D0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0A7244 8011E7D4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0A7248 8011E7D8 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 0A724C 8011E7DC 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 0A7250 8011E7E0 8D0E0000 */  lw    $t6, ($t0)
/* 0A7254 8011E7E4 3C018013 */  lui   $at, %hi(D_80128F40) # $at, 0x8013
/* 0A7258 8011E7E8 44808000 */  mtc1  $zero, $f16
/* 0A725C 8011E7EC 000E6880 */  sll   $t5, $t6, 2
/* 0A7260 8011E7F0 00AD7821 */  addu  $t7, $a1, $t5
/* 0A7264 8011E7F4 C5E80000 */  lwc1  $f8, ($t7)
/* 0A7268 8011E7F8 E4E8007C */  swc1  $f8, 0x7c($a3)
/* 0A726C 8011E7FC C4328F40 */  lwc1  $f18, %lo(D_80128F40)($at)
/* 0A7270 8011E800 C4E2007C */  lwc1  $f2, 0x7c($a3)
.L8011E804_ovl2:
/* 0A7274 8011E804 8CEB0020 */  lw    $t3, 0x20($a3)
.L8011E808_ovl2:
/* 0A7278 8011E808 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0A727C 8011E80C 8D180000 */  lw    $t8, ($t0)
/* 0A7280 8011E810 448B3000 */  mtc1  $t3, $f6
/* 0A7284 8011E814 44812000 */  mtc1  $at, $f4
/* 0A7288 8011E818 3C04800E */  lui   $a0, %hi(gEntitiesAngleYArray) # $a0, 0x800e
/* 0A728C 8011E81C 46803220 */  cvt.s.w $f8, $f6
/* 0A7290 8011E820 248441D0 */  addiu $a0, %lo(gEntitiesAngleYArray) # addiu $a0, $a0, 0x41d0
/* 0A7294 8011E824 0018C880 */  sll   $t9, $t8, 2
/* 0A7298 8011E828 00995021 */  addu  $t2, $a0, $t9
/* 0A729C 8011E82C C54A0000 */  lwc1  $f10, ($t2)
/* 0A72A0 8011E830 46082032 */  c.eq.s $f4, $f8
/* 0A72A4 8011E834 E4EA0080 */  swc1  $f10, 0x80($a3)
/* 0A72A8 8011E838 4502001E */  bc1fl .L8011E8B4_ovl2
/* 0A72AC 8011E83C C4E00080 */   lwc1  $f0, 0x80($a3)
/* 0A72B0 8011E840 C4E00080 */  lwc1  $f0, 0x80($a3)
/* 0A72B4 8011E844 4602003C */  c.lt.s $f0, $f2
/* 0A72B8 8011E848 00000000 */  nop   
/* 0A72BC 8011E84C 45020005 */  bc1fl .L8011E864_ovl2
/* 0A72C0 8011E850 46020301 */   sub.s $f12, $f0, $f2
/* 0A72C4 8011E854 46120280 */  add.s $f10, $f0, $f18
/* 0A72C8 8011E858 10000002 */  b     .L8011E864_ovl2
/* 0A72CC 8011E85C 46025301 */   sub.s $f12, $f10, $f2
/* 0A72D0 8011E860 46020301 */  sub.s $f12, $f0, $f2
.L8011E864_ovl2:
/* 0A72D4 8011E864 460E6181 */  sub.s $f6, $f12, $f14
/* 0A72D8 8011E868 460E303C */  c.lt.s $f6, $f14
/* 0A72DC 8011E86C 00000000 */  nop   
/* 0A72E0 8011E870 45020005 */  bc1fl .L8011E888_ovl2
/* 0A72E4 8011E874 460E0101 */   sub.s $f4, $f0, $f14
/* 0A72E8 8011E878 E4E20080 */  swc1  $f2, 0x80($a3)
/* 0A72EC 8011E87C 1000002C */  b     .L8011E930_ovl2
/* 0A72F0 8011E880 8CE20034 */   lw    $v0, 0x34($a3)
/* 0A72F4 8011E884 460E0101 */  sub.s $f4, $f0, $f14
.L8011E888_ovl2:
/* 0A72F8 8011E888 E4E40080 */  swc1  $f4, 0x80($a3)
/* 0A72FC 8011E88C C4E00080 */  lwc1  $f0, 0x80($a3)
/* 0A7300 8011E890 4610003C */  c.lt.s $f0, $f16
/* 0A7304 8011E894 00000000 */  nop   
/* 0A7308 8011E898 45020021 */  bc1fl .L8011E920_ovl2
/* 0A730C 8011E89C 8D0C0000 */   lw    $t4, ($t0)
/* 0A7310 8011E8A0 46120200 */  add.s $f8, $f0, $f18
/* 0A7314 8011E8A4 E4E80080 */  swc1  $f8, 0x80($a3)
/* 0A7318 8011E8A8 1000001C */  b     .L8011E91C_ovl2
/* 0A731C 8011E8AC C4E00080 */   lwc1  $f0, 0x80($a3)
/* 0A7320 8011E8B0 C4E00080 */  lwc1  $f0, 0x80($a3)
.L8011E8B4_ovl2:
/* 0A7324 8011E8B4 4600103C */  c.lt.s $f2, $f0
/* 0A7328 8011E8B8 00000000 */  nop   
/* 0A732C 8011E8BC 45020005 */  bc1fl .L8011E8D4_ovl2
/* 0A7330 8011E8C0 46001301 */   sub.s $f12, $f2, $f0
/* 0A7334 8011E8C4 46121280 */  add.s $f10, $f2, $f18
/* 0A7338 8011E8C8 10000002 */  b     .L8011E8D4_ovl2
/* 0A733C 8011E8CC 46005301 */   sub.s $f12, $f10, $f0
/* 0A7340 8011E8D0 46001301 */  sub.s $f12, $f2, $f0
.L8011E8D4_ovl2:
/* 0A7344 8011E8D4 460E6181 */  sub.s $f6, $f12, $f14
/* 0A7348 8011E8D8 460E303C */  c.lt.s $f6, $f14
/* 0A734C 8011E8DC 00000000 */  nop   
/* 0A7350 8011E8E0 45020005 */  bc1fl .L8011E8F8_ovl2
/* 0A7354 8011E8E4 460E0100 */   add.s $f4, $f0, $f14
/* 0A7358 8011E8E8 E4E20080 */  swc1  $f2, 0x80($a3)
/* 0A735C 8011E8EC 10000010 */  b     .L8011E930_ovl2
/* 0A7360 8011E8F0 8CE20034 */   lw    $v0, 0x34($a3)
/* 0A7364 8011E8F4 460E0100 */  add.s $f4, $f0, $f14
.L8011E8F8_ovl2:
/* 0A7368 8011E8F8 E4E40080 */  swc1  $f4, 0x80($a3)
/* 0A736C 8011E8FC C4E00080 */  lwc1  $f0, 0x80($a3)
/* 0A7370 8011E900 4600903E */  c.le.s $f18, $f0
/* 0A7374 8011E904 00000000 */  nop   
/* 0A7378 8011E908 45020005 */  bc1fl .L8011E920_ovl2
/* 0A737C 8011E90C 8D0C0000 */   lw    $t4, ($t0)
/* 0A7380 8011E910 46120201 */  sub.s $f8, $f0, $f18
/* 0A7384 8011E914 E4E80080 */  swc1  $f8, 0x80($a3)
/* 0A7388 8011E918 C4E00080 */  lwc1  $f0, 0x80($a3)
.L8011E91C_ovl2:
/* 0A738C 8011E91C 8D0C0000 */  lw    $t4, ($t0)
.L8011E920_ovl2:
/* 0A7390 8011E920 000C7080 */  sll   $t6, $t4, 2
/* 0A7394 8011E924 008E6821 */  addu  $t5, $a0, $t6
/* 0A7398 8011E928 1000000F */  b     .L8011E968_ovl2
/* 0A739C 8011E92C E5A00000 */   swc1  $f0, ($t5)
.L8011E930_ovl2:
/* 0A73A0 8011E930 ACE00020 */  sw    $zero, 0x20($a3)
/* 0A73A4 8011E934 8D0F0000 */  lw    $t7, ($t0)
/* 0A73A8 8011E938 2401FFFE */  li    $at, -2
/* 0A73AC 8011E93C 00416024 */  and   $t4, $v0, $at
/* 0A73B0 8011E940 000FC080 */  sll   $t8, $t7, 2
/* 0A73B4 8011E944 00B8C821 */  addu  $t9, $a1, $t8
/* 0A73B8 8011E948 E7220000 */  swc1  $f2, ($t9)
/* 0A73BC 8011E94C 8D030000 */  lw    $v1, ($t0)
/* 0A73C0 8011E950 00031880 */  sll   $v1, $v1, 2
/* 0A73C4 8011E954 00A35021 */  addu  $t2, $a1, $v1
/* 0A73C8 8011E958 C54A0000 */  lwc1  $f10, ($t2)
/* 0A73CC 8011E95C 00835821 */  addu  $t3, $a0, $v1
/* 0A73D0 8011E960 E56A0000 */  swc1  $f10, ($t3)
/* 0A73D4 8011E964 ACEC0034 */  sw    $t4, 0x34($a3)
.L8011E968_ovl2:
/* 0A73D8 8011E968 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A73DC 8011E96C 27BD0048 */  addiu $sp, $sp, 0x48
/* 0A73E0 8011E970 03E00008 */  jr    $ra
/* 0A73E4 8011E974 00000000 */   nop   
.type func_8011E548, @function
.size func_8011E548, . - func_8011E548
