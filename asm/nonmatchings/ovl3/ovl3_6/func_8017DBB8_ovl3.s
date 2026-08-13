nonmatching func_8017DBB8_ovl3, 0x3A8

glabel func_8017DBB8_ovl3
    /* DE5F8 8017DBB8 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* DE5FC 8017DBBC AFBF0014 */  sw         $ra, 0x14($sp)
    /* DE600 8017DBC0 0C054E61 */  jal        func_80153984_ovl3
    /* DE604 8017DBC4 AFA40040 */   sw        $a0, 0x40($sp)
    /* DE608 8017DBC8 0C0473D6 */  jal        func_8011CF58
    /* DE60C 8017DBCC 00000000 */   nop
    /* DE610 8017DBD0 0C0485EE */  jal        func_801217B8
    /* DE614 8017DBD4 00000000 */   nop
    /* DE618 8017DBD8 3C0E8013 */  lui        $t6, %hi(D_8012E7E8 + 0x8)
    /* DE61C 8017DBDC 8DCEE7F0 */  lw         $t6, %lo(D_8012E7E8 + 0x8)($t6)
    /* DE620 8017DBE0 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* DE624 8017DBE4 11C00005 */  beqz       $t6, .L8017DBFC_ovl3
    /* DE628 8017DBE8 00000000 */   nop
    /* DE62C 8017DBEC 0C04759F */  jal        func_8011D67C
    /* DE630 8017DBF0 00000000 */   nop
    /* DE634 8017DBF4 100000D7 */  b          .L8017DF54_ovl3
    /* DE638 8017DBF8 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8017DBFC_ovl3:
    /* DE63C 8017DBFC 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* DE640 8017DC00 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* DE644 8017DC04 3C018019 */  lui        $at, %hi(D_80197684_ovl3)
    /* DE648 8017DC08 8DF80000 */  lw         $t8, 0x0($t7)
    /* DE64C 8017DC0C 0018C880 */  sll        $t9, $t8, 2
    /* DE650 8017DC10 01394821 */  addu       $t1, $t1, $t9
    /* DE654 8017DC14 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* DE658 8017DC18 312A0006 */  andi       $t2, $t1, 0x6
    /* DE65C 8017DC1C 11400008 */  beqz       $t2, .L8017DC40_ovl3
    /* DE660 8017DC20 00000000 */   nop
    /* DE664 8017DC24 3C018019 */  lui        $at, %hi(D_8019767C_ovl3)
    /* DE668 8017DC28 C42C767C */  lwc1       $f12, %lo(D_8019767C_ovl3)($at)
    /* DE66C 8017DC2C 3C018019 */  lui        $at, %hi(D_80197680_ovl3)
    /* DE670 8017DC30 0C048333 */  jal        func_80120CCC
    /* DE674 8017DC34 C42E7680 */   lwc1      $f14, %lo(D_80197680_ovl3)($at)
    /* DE678 8017DC38 10000006 */  b          .L8017DC54_ovl3
    /* DE67C 8017DC3C 00403825 */   or        $a3, $v0, $zero
  .L8017DC40_ovl3:
    /* DE680 8017DC40 C42C7684 */  lwc1       $f12, %lo(D_80197684_ovl3)($at)
    /* DE684 8017DC44 3C018019 */  lui        $at, %hi(D_80197688_ovl3)
    /* DE688 8017DC48 0C048333 */  jal        func_80120CCC
    /* DE68C 8017DC4C C42E7688 */   lwc1      $f14, %lo(D_80197688_ovl3)($at)
    /* DE690 8017DC50 00403825 */  or         $a3, $v0, $zero
  .L8017DC54_ovl3:
    /* DE694 8017DC54 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* DE698 8017DC58 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* DE69C 8017DC5C 8D03004C */  lw         $v1, 0x4C($t0)
    /* DE6A0 8017DC60 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* DE6A4 8017DC64 1060001A */  beqz       $v1, .L8017DCD0_ovl3
    /* DE6A8 8017DC68 00000000 */   nop
    /* DE6AC 8017DC6C 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* DE6B0 8017DC70 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* DE6B4 8017DC74 27A40030 */  addiu      $a0, $sp, 0x30
    /* DE6B8 8017DC78 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DE6BC 8017DC7C 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* DE6C0 8017DC80 000C6880 */  sll        $t5, $t4, 2
    /* DE6C4 8017DC84 01CD7021 */  addu       $t6, $t6, $t5
    /* DE6C8 8017DC88 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* DE6CC 8017DC8C 8DC50028 */  lw         $a1, 0x28($t6)
    /* DE6D0 8017DC90 AFA7003C */  sw         $a3, 0x3C($sp)
    /* DE6D4 8017DC94 0C02C8D0 */  jal        func_800B2340
    /* DE6D8 8017DC98 AFA3002C */   sw        $v1, 0x2C($sp)
    /* DE6DC 8017DC9C 8FA2002C */  lw         $v0, 0x2C($sp)
    /* DE6E0 8017DCA0 C7A40030 */  lwc1       $f4, 0x30($sp)
    /* DE6E4 8017DCA4 8FA7003C */  lw         $a3, 0x3C($sp)
    /* DE6E8 8017DCA8 8C4F004C */  lw         $t7, 0x4C($v0)
    /* DE6EC 8017DCAC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* DE6F0 8017DCB0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* DE6F4 8017DCB4 E5E40004 */  swc1       $f4, 0x4($t7)
    /* DE6F8 8017DCB8 C7A60034 */  lwc1       $f6, 0x34($sp)
    /* DE6FC 8017DCBC 8C58004C */  lw         $t8, 0x4C($v0)
    /* DE700 8017DCC0 E7060008 */  swc1       $f6, 0x8($t8)
    /* DE704 8017DCC4 C7A80038 */  lwc1       $f8, 0x38($sp)
    /* DE708 8017DCC8 8C59004C */  lw         $t9, 0x4C($v0)
    /* DE70C 8017DCCC E728000C */  swc1       $f8, 0xC($t9)
  .L8017DCD0_ovl3:
    /* DE710 8017DCD0 54E00090 */  bnel       $a3, $zero, .L8017DF14_ovl3
    /* DE714 8017DCD4 3C040002 */   lui       $a0, (0x20010 >> 16)
    /* DE718 8017DCD8 8D020044 */  lw         $v0, 0x44($t0)
    /* DE71C 8017DCDC 3C09800D */  lui        $t1, %hi(gKirbyController)
    /* DE720 8017DCE0 24010001 */  addiu      $at, $zero, 0x1
    /* DE724 8017DCE4 1440000B */  bnez       $v0, .L8017DD14_ovl3
    /* DE728 8017DCE8 00000000 */   nop
    /* DE72C 8017DCEC 95296FE8 */  lhu        $t1, %lo(gKirbyController)($t1)
    /* DE730 8017DCF0 240B0001 */  addiu      $t3, $zero, 0x1
    /* DE734 8017DCF4 240CFFFF */  addiu      $t4, $zero, -0x1
    /* DE738 8017DCF8 312A0100 */  andi       $t2, $t1, 0x100
    /* DE73C 8017DCFC 11400003 */  beqz       $t2, .L8017DD0C_ovl3
    /* DE740 8017DD00 00000000 */   nop
    /* DE744 8017DD04 10000082 */  b          .L8017DF10_ovl3
    /* DE748 8017DD08 AD0B0044 */   sw        $t3, 0x44($t0)
  .L8017DD0C_ovl3:
    /* DE74C 8017DD0C 10000080 */  b          .L8017DF10_ovl3
    /* DE750 8017DD10 AD0C0044 */   sw        $t4, 0x44($t0)
  .L8017DD14_ovl3:
    /* DE754 8017DD14 1441003F */  bne        $v0, $at, .L8017DE14_ovl3
    /* DE758 8017DD18 3C0D800D */   lui       $t5, %hi(gKirbyController)
    /* DE75C 8017DD1C 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
    /* DE760 8017DD20 31AE0100 */  andi       $t6, $t5, 0x100
    /* DE764 8017DD24 11C00005 */  beqz       $t6, .L8017DD3C_ovl3
    /* DE768 8017DD28 00000000 */   nop
    /* DE76C 8017DD2C 0C05F7D8 */  jal        func_8017DF60_ovl3
    /* DE770 8017DD30 24040001 */   addiu     $a0, $zero, 0x1
    /* DE774 8017DD34 10000003 */  b          .L8017DD44_ovl3
    /* DE778 8017DD38 00000000 */   nop
  .L8017DD3C_ovl3:
    /* DE77C 8017DD3C 0C05F7D8 */  jal        func_8017DF60_ovl3
    /* DE780 8017DD40 00002025 */   or        $a0, $zero, $zero
  .L8017DD44_ovl3:
    /* DE784 8017DD44 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* DE788 8017DD48 24A5A7C4 */  addiu      $a1, $a1, %lo(omCurrentObj)
    /* DE78C 8017DD4C 8CA30000 */  lw         $v1, 0x0($a1)
    /* DE790 8017DD50 3C04800F */  lui        $a0, %hi(D_800EA6E0)
    /* DE794 8017DD54 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
    /* DE798 8017DD58 8C620000 */  lw         $v0, 0x0($v1)
    /* DE79C 8017DD5C 44805000 */  mtc1       $zero, $f10
    /* DE7A0 8017DD60 3C18800D */  lui        $t8, %hi(gKirbyController)
    /* DE7A4 8017DD64 00021080 */  sll        $v0, $v0, 2
    /* DE7A8 8017DD68 00827821 */  addu       $t7, $a0, $v0
    /* DE7AC 8017DD6C C5E00000 */  lwc1       $f0, 0x0($t7)
    /* DE7B0 8017DD70 46005032 */  c.eq.s     $f10, $f0
    /* DE7B4 8017DD74 00000000 */  nop
    /* DE7B8 8017DD78 4500000C */  bc1f       .L8017DDAC_ovl3
    /* DE7BC 8017DD7C 00000000 */   nop
    /* DE7C0 8017DD80 97186FE8 */  lhu        $t8, %lo(gKirbyController)($t8)
    /* DE7C4 8017DD84 2409FFFF */  addiu      $t1, $zero, -0x1
    /* DE7C8 8017DD88 3C018013 */  lui        $at, %hi(D_8012E7FC + 0x8)
    /* DE7CC 8017DD8C 33190200 */  andi       $t9, $t8, 0x200
    /* DE7D0 8017DD90 13200006 */  beqz       $t9, .L8017DDAC_ovl3
    /* DE7D4 8017DD94 00000000 */   nop
    /* DE7D8 8017DD98 AC29E804 */  sw         $t1, %lo(D_8012E7FC + 0x8)($at)
    /* DE7DC 8017DD9C 8C620000 */  lw         $v0, 0x0($v1)
    /* DE7E0 8017DDA0 00021080 */  sll        $v0, $v0, 2
    /* DE7E4 8017DDA4 00825021 */  addu       $t2, $a0, $v0
    /* DE7E8 8017DDA8 C5400000 */  lwc1       $f0, 0x0($t2)
  .L8017DDAC_ovl3:
    /* DE7EC 8017DDAC 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* DE7F0 8017DDB0 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
    /* DE7F4 8017DDB4 00625821 */  addu       $t3, $v1, $v0
    /* DE7F8 8017DDB8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* DE7FC 8017DDBC 8D8D001C */  lw         $t5, 0x1C($t4)
    /* DE800 8017DDC0 E5A00034 */  swc1       $f0, 0x34($t5)
    /* DE804 8017DDC4 8CAE0000 */  lw         $t6, 0x0($a1)
    /* DE808 8017DDC8 8DC20000 */  lw         $v0, 0x0($t6)
    /* DE80C 8017DDCC 00021080 */  sll        $v0, $v0, 2
    /* DE810 8017DDD0 0062C021 */  addu       $t8, $v1, $v0
    /* DE814 8017DDD4 8F190000 */  lw         $t9, 0x0($t8)
    /* DE818 8017DDD8 00827821 */  addu       $t7, $a0, $v0
    /* DE81C 8017DDDC C5F00000 */  lwc1       $f16, 0x0($t7)
    /* DE820 8017DDE0 8F29001C */  lw         $t1, 0x1C($t9)
    /* DE824 8017DDE4 46008487 */  neg.s      $f18, $f16
    /* DE828 8017DDE8 E5320038 */  swc1       $f18, 0x38($t1)
    /* DE82C 8017DDEC 8CAA0000 */  lw         $t2, 0x0($a1)
    /* DE830 8017DDF0 8D420000 */  lw         $v0, 0x0($t2)
    /* DE834 8017DDF4 00021080 */  sll        $v0, $v0, 2
    /* DE838 8017DDF8 00626021 */  addu       $t4, $v1, $v0
    /* DE83C 8017DDFC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* DE840 8017DE00 00825821 */  addu       $t3, $a0, $v0
    /* DE844 8017DE04 C5640000 */  lwc1       $f4, 0x0($t3)
    /* DE848 8017DE08 8DAE0008 */  lw         $t6, 0x8($t5)
    /* DE84C 8017DE0C 10000040 */  b          .L8017DF10_ovl3
    /* DE850 8017DE10 E5C40034 */   swc1      $f4, 0x34($t6)
  .L8017DE14_ovl3:
    /* DE854 8017DE14 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* DE858 8017DE18 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* DE85C 8017DE1C 31F80200 */  andi       $t8, $t7, 0x200
    /* DE860 8017DE20 13000005 */  beqz       $t8, .L8017DE38_ovl3
    /* DE864 8017DE24 00000000 */   nop
    /* DE868 8017DE28 0C05F7D8 */  jal        func_8017DF60_ovl3
    /* DE86C 8017DE2C 24040001 */   addiu     $a0, $zero, 0x1
    /* DE870 8017DE30 10000003 */  b          .L8017DE40_ovl3
    /* DE874 8017DE34 00000000 */   nop
  .L8017DE38_ovl3:
    /* DE878 8017DE38 0C05F7D8 */  jal        func_8017DF60_ovl3
    /* DE87C 8017DE3C 00002025 */   or        $a0, $zero, $zero
  .L8017DE40_ovl3:
    /* DE880 8017DE40 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* DE884 8017DE44 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* DE888 8017DE48 3C04800F */  lui        $a0, %hi(D_800EA6E0)
    /* DE88C 8017DE4C 2484A6E0 */  addiu      $a0, $a0, %lo(D_800EA6E0)
    /* DE890 8017DE50 8C620000 */  lw         $v0, 0x0($v1)
    /* DE894 8017DE54 44803000 */  mtc1       $zero, $f6
    /* DE898 8017DE58 00021080 */  sll        $v0, $v0, 2
    /* DE89C 8017DE5C 0082C821 */  addu       $t9, $a0, $v0
    /* DE8A0 8017DE60 C7200000 */  lwc1       $f0, 0x0($t9)
    /* DE8A4 8017DE64 46003032 */  c.eq.s     $f6, $f0
    /* DE8A8 8017DE68 00000000 */  nop
    /* DE8AC 8017DE6C 4500000C */  bc1f       .L8017DEA0_ovl3
    /* DE8B0 8017DE70 3C09800D */   lui       $t1, %hi(gKirbyController)
    /* DE8B4 8017DE74 95296FE8 */  lhu        $t1, %lo(gKirbyController)($t1)
    /* DE8B8 8017DE78 240B0001 */  addiu      $t3, $zero, 0x1
    /* DE8BC 8017DE7C 3C018013 */  lui        $at, %hi(D_8012E7FC + 0x8)
    /* DE8C0 8017DE80 312A0100 */  andi       $t2, $t1, 0x100
    /* DE8C4 8017DE84 11400006 */  beqz       $t2, .L8017DEA0_ovl3
    /* DE8C8 8017DE88 00000000 */   nop
    /* DE8CC 8017DE8C AC2BE804 */  sw         $t3, %lo(D_8012E7FC + 0x8)($at)
    /* DE8D0 8017DE90 8C620000 */  lw         $v0, 0x0($v1)
    /* DE8D4 8017DE94 00021080 */  sll        $v0, $v0, 2
    /* DE8D8 8017DE98 00826021 */  addu       $t4, $a0, $v0
    /* DE8DC 8017DE9C C5800000 */  lwc1       $f0, 0x0($t4)
  .L8017DEA0_ovl3:
    /* DE8E0 8017DEA0 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* DE8E4 8017DEA4 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
    /* DE8E8 8017DEA8 00626821 */  addu       $t5, $v1, $v0
    /* DE8EC 8017DEAC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* DE8F0 8017DEB0 46000207 */  neg.s      $f8, $f0
    /* DE8F4 8017DEB4 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* DE8F8 8017DEB8 8DCF001C */  lw         $t7, 0x1C($t6)
    /* DE8FC 8017DEBC 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* DE900 8017DEC0 E5E80034 */  swc1       $f8, 0x34($t7)
    /* DE904 8017DEC4 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* DE908 8017DEC8 8F020000 */  lw         $v0, 0x0($t8)
    /* DE90C 8017DECC 00021080 */  sll        $v0, $v0, 2
    /* DE910 8017DED0 00624821 */  addu       $t1, $v1, $v0
    /* DE914 8017DED4 8D2A0000 */  lw         $t2, 0x0($t1)
    /* DE918 8017DED8 0082C821 */  addu       $t9, $a0, $v0
    /* DE91C 8017DEDC C72A0000 */  lwc1       $f10, 0x0($t9)
    /* DE920 8017DEE0 8D4B001C */  lw         $t3, 0x1C($t2)
    /* DE924 8017DEE4 E56A0038 */  swc1       $f10, 0x38($t3)
    /* DE928 8017DEE8 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* DE92C 8017DEEC 8D820000 */  lw         $v0, 0x0($t4)
    /* DE930 8017DEF0 00021080 */  sll        $v0, $v0, 2
    /* DE934 8017DEF4 00627021 */  addu       $t6, $v1, $v0
    /* DE938 8017DEF8 8DCF0000 */  lw         $t7, 0x0($t6)
    /* DE93C 8017DEFC 00826821 */  addu       $t5, $a0, $v0
    /* DE940 8017DF00 C5B00000 */  lwc1       $f16, 0x0($t5)
    /* DE944 8017DF04 8DF80008 */  lw         $t8, 0x8($t7)
    /* DE948 8017DF08 46008487 */  neg.s      $f18, $f16
    /* DE94C 8017DF0C E7120034 */  swc1       $f18, 0x34($t8)
  .L8017DF10_ovl3:
    /* DE950 8017DF10 3C040002 */  lui        $a0, (0x20010 >> 16)
  .L8017DF14_ovl3:
    /* DE954 8017DF14 0C02AA22 */  jal        func_800AA888
    /* DE958 8017DF18 34840010 */   ori       $a0, $a0, (0x20010 & 0xFFFF)
    /* DE95C 8017DF1C 1040000C */  beqz       $v0, .L8017DF50_ovl3
    /* DE960 8017DF20 3C048019 */   lui       $a0, %hi(D_80193250_ovl3)
    /* DE964 8017DF24 24843250 */  addiu      $a0, $a0, %lo(D_80193250_ovl3)
    /* DE968 8017DF28 0C055127 */  jal        func_8015449C_ovl3
    /* DE96C 8017DF2C 00002825 */   or        $a1, $zero, $zero
    /* DE970 8017DF30 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* DE974 8017DF34 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* DE978 8017DF38 3C048019 */  lui        $a0, %hi(D_80191508_ovl3)
    /* DE97C 8017DF3C 24841508 */  addiu      $a0, $a0, %lo(D_80191508_ovl3)
    /* DE980 8017DF40 0C044681 */  jal        func_80111A04
    /* DE984 8017DF44 8F250000 */   lw        $a1, 0x0($t9)
    /* DE988 8017DF48 0C044713 */  jal        func_80111C4C
    /* DE98C 8017DF4C 00402025 */   or        $a0, $v0, $zero
  .L8017DF50_ovl3:
    /* DE990 8017DF50 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017DF54_ovl3:
    /* DE994 8017DF54 27BD0040 */  addiu      $sp, $sp, 0x40
    /* DE998 8017DF58 03E00008 */  jr         $ra
    /* DE99C 8017DF5C 00000000 */   nop
endlabel func_8017DBB8_ovl3
.size func_8017DBB8_ovl3, . - func_8017DBB8_ovl3
