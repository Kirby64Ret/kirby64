glabel func_80198914_ovl7
/* 13E984 80198914 00057080 */  sll        $t6, $a1, 2
/* 13E988 80198918 01C57021 */  addu       $t6, $t6, $a1
/* 13E98C 8019891C 3C0F801D */  lui        $t7, %hi(D_801CE790_ovl7)
/* 13E990 80198920 25EFE790 */  addiu      $t7, $t7, %lo(D_801CE790_ovl7)
/* 13E994 80198924 000E7140 */  sll        $t6, $t6, 5
/* 13E998 80198928 00043080 */  sll        $a2, $a0, 2
/* 13E99C 8019892C 3C01800E */  lui        $at, %hi(D_800E1B50)
/* 13E9A0 80198930 00260821 */  addu       $at, $at, $a2
/* 13E9A4 80198934 01CF1821 */  addu       $v1, $t6, $t7
/* 13E9A8 80198938 3C18800E */  lui        $t8, %hi(D_800E7730)
/* 13E9AC 8019893C AC231B50 */  sw         $v1, %lo(D_800E1B50)($at)
/* 13E9B0 80198940 27187730 */  addiu      $t8, $t8, %lo(D_800E7730)
/* 13E9B4 80198944 AC600090 */  sw         $zero, 0x90($v1)
/* 13E9B8 80198948 00981021 */  addu       $v0, $a0, $t8
/* 13E9BC 8019894C 90590000 */  lbu        $t9, 0x0($v0)
/* 13E9C0 80198950 2F210007 */  sltiu      $at, $t9, 0x7
/* 13E9C4 80198954 1020003F */  beqz       $at, .L80198A54_ovl7
/* 13E9C8 80198958 0019C880 */   sll       $t9, $t9, 2
/* 13E9CC 8019895C 3C01801D */  lui        $at, %hi(jtbl_801CDB10_ovl7)
/* 13E9D0 80198960 00390821 */  addu       $at, $at, $t9
/* 13E9D4 80198964 8C39DB10 */  lw         $t9, %lo(jtbl_801CDB10_ovl7)($at)
/* 13E9D8 80198968 03200008 */  jr         $t9
/* 13E9DC 8019896C 00000000 */   nop
/* 13E9E0 80198970 00044040 */  sll        $t0, $a0, 1
/* 13E9E4 80198974 3C09800E */  lui        $t1, %hi(D_800E77A0)
/* 13E9E8 80198978 01284821 */  addu       $t1, $t1, $t0
/* 13E9EC 8019897C 952977A0 */  lhu        $t1, %lo(D_800E77A0)($t1)
/* 13E9F0 80198980 3C0B801F */  lui        $t3, %hi(D_801F33F0_ovl10)
/* 13E9F4 80198984 00095080 */  sll        $t2, $t1, 2
/* 13E9F8 80198988 016A5821 */  addu       $t3, $t3, $t2
/* 13E9FC 8019898C 8D6B33F0 */  lw         $t3, %lo(D_801F33F0_ovl10)($t3)
/* 13EA00 80198990 10000039 */  b          .L80198A78_ovl7
/* 13EA04 80198994 AC6B0088 */   sw        $t3, 0x88($v1)
/* 13EA08 80198998 00046040 */  sll        $t4, $a0, 1
/* 13EA0C 8019899C 3C0D800E */  lui        $t5, %hi(D_800E77A0)
/* 13EA10 801989A0 01AC6821 */  addu       $t5, $t5, $t4
/* 13EA14 801989A4 95AD77A0 */  lhu        $t5, %lo(D_800E77A0)($t5)
/* 13EA18 801989A8 3C0F801D */  lui        $t7, %hi(D_801D7880_ovl8)
/* 13EA1C 801989AC 000D7080 */  sll        $t6, $t5, 2
/* 13EA20 801989B0 01EE7821 */  addu       $t7, $t7, $t6
/* 13EA24 801989B4 8DEF7880 */  lw         $t7, %lo(D_801D7880_ovl8)($t7)
/* 13EA28 801989B8 1000002F */  b          .L80198A78_ovl7
/* 13EA2C 801989BC AC6F0088 */   sw        $t7, 0x88($v1)
/* 13EA30 801989C0 3C19800E */  lui        $t9, %hi(D_800E77A0)
/* 13EA34 801989C4 273977A0 */  addiu      $t9, $t9, %lo(D_800E77A0)
/* 13EA38 801989C8 0004C040 */  sll        $t8, $a0, 1
/* 13EA3C 801989CC 03192821 */  addu       $a1, $t8, $t9
/* 13EA40 801989D0 94A80000 */  lhu        $t0, 0x0($a1)
/* 13EA44 801989D4 3C0A801C */  lui        $t2, %hi(D_801C2B6C_ovl7)
/* 13EA48 801989D8 3C0D801C */  lui        $t5, %hi(D_801C2C84_ovl7)
/* 13EA4C 801989DC 00084880 */  sll        $t1, $t0, 2
/* 13EA50 801989E0 01495021 */  addu       $t2, $t2, $t1
/* 13EA54 801989E4 8D4A2B6C */  lw         $t2, %lo(D_801C2B6C_ovl7)($t2)
/* 13EA58 801989E8 AC6A0088 */  sw         $t2, 0x88($v1)
/* 13EA5C 801989EC 94AB0000 */  lhu        $t3, 0x0($a1)
/* 13EA60 801989F0 000B6080 */  sll        $t4, $t3, 2
/* 13EA64 801989F4 01AC6821 */  addu       $t5, $t5, $t4
/* 13EA68 801989F8 8DAD2C84 */  lw         $t5, %lo(D_801C2C84_ovl7)($t5)
/* 13EA6C 801989FC 1000001E */  b          .L80198A78_ovl7
/* 13EA70 80198A00 AC6D0090 */   sw        $t5, 0x90($v1)
/* 13EA74 80198A04 00047040 */  sll        $t6, $a0, 1
/* 13EA78 80198A08 3C0F800E */  lui        $t7, %hi(D_800E77A0)
/* 13EA7C 80198A0C 01EE7821 */  addu       $t7, $t7, $t6
/* 13EA80 80198A10 95EF77A0 */  lhu        $t7, %lo(D_800E77A0)($t7)
/* 13EA84 80198A14 3C19801C */  lui        $t9, %hi(D_801C2D9C_ovl7)
/* 13EA88 80198A18 000FC080 */  sll        $t8, $t7, 2
/* 13EA8C 80198A1C 0338C821 */  addu       $t9, $t9, $t8
/* 13EA90 80198A20 8F392D9C */  lw         $t9, %lo(D_801C2D9C_ovl7)($t9)
/* 13EA94 80198A24 10000014 */  b          .L80198A78_ovl7
/* 13EA98 80198A28 AC790088 */   sw        $t9, 0x88($v1)
/* 13EA9C 80198A2C 00044040 */  sll        $t0, $a0, 1
/* 13EAA0 80198A30 3C09800E */  lui        $t1, %hi(D_800E77A0)
/* 13EAA4 80198A34 01284821 */  addu       $t1, $t1, $t0
/* 13EAA8 80198A38 952977A0 */  lhu        $t1, %lo(D_800E77A0)($t1)
/* 13EAAC 80198A3C 3C0B801C */  lui        $t3, %hi(D_801C2DD4_ovl7)
/* 13EAB0 80198A40 00095080 */  sll        $t2, $t1, 2
/* 13EAB4 80198A44 016A5821 */  addu       $t3, $t3, $t2
/* 13EAB8 80198A48 8D6B2DD4 */  lw         $t3, %lo(D_801C2DD4_ovl7)($t3)
/* 13EABC 80198A4C 1000000A */  b          .L80198A78_ovl7
/* 13EAC0 80198A50 AC6B0088 */   sw        $t3, 0x88($v1)
.L80198A54_ovl7:
/* 13EAC4 80198A54 00046040 */  sll        $t4, $a0, 1
/* 13EAC8 80198A58 3C0D800E */  lui        $t5, %hi(D_800E77A0)
/* 13EACC 80198A5C 01AC6821 */  addu       $t5, $t5, $t4
/* 13EAD0 80198A60 95AD77A0 */  lhu        $t5, %lo(D_800E77A0)($t5)
/* 13EAD4 80198A64 3C0F801C */  lui        $t7, %hi(D_801C29C0_ovl7)
/* 13EAD8 80198A68 000D7080 */  sll        $t6, $t5, 2
/* 13EADC 80198A6C 01EE7821 */  addu       $t7, $t7, $t6
/* 13EAE0 80198A70 8DEF29C0 */  lw         $t7, %lo(D_801C29C0_ovl7)($t7)
/* 13EAE4 80198A74 AC6F0088 */  sw         $t7, 0x88($v1)
.L80198A78_ovl7:
/* 13EAE8 80198A78 8C640088 */  lw         $a0, 0x88($v1)
/* 13EAEC 80198A7C 44800000 */  mtc1       $zero, $f0
/* 13EAF0 80198A80 2409FFFF */  addiu      $t1, $zero, -0x1
/* 13EAF4 80198A84 10800008 */  beqz       $a0, .L80198AA8_ovl7
/* 13EAF8 80198A88 240A0001 */   addiu     $t2, $zero, 0x1
/* 13EAFC 80198A8C 8C980018 */  lw         $t8, 0x18($a0)
/* 13EB00 80198A90 AC780094 */  sw         $t8, 0x94($v1)
/* 13EB04 80198A94 8C990014 */  lw         $t9, 0x14($a0)
/* 13EB08 80198A98 AC79008C */  sw         $t9, 0x8C($v1)
/* 13EB0C 80198A9C 8C880020 */  lw         $t0, 0x20($a0)
/* 13EB10 80198AA0 10000004 */  b          .L80198AB4_ovl7
/* 13EB14 80198AA4 AC680048 */   sw        $t0, 0x48($v1)
.L80198AA8_ovl7:
/* 13EB18 80198AA8 AC600094 */  sw         $zero, 0x94($v1)
/* 13EB1C 80198AAC AC60008C */  sw         $zero, 0x8C($v1)
/* 13EB20 80198AB0 AC690048 */  sw         $t1, 0x48($v1)
.L80198AB4_ovl7:
/* 13EB24 80198AB4 24040001 */  addiu      $a0, $zero, 0x1
/* 13EB28 80198AB8 AC600098 */  sw         $zero, 0x98($v1)
/* 13EB2C 80198ABC AC60009C */  sw         $zero, 0x9C($v1)
/* 13EB30 80198AC0 A0640042 */  sb         $a0, 0x42($v1)
/* 13EB34 80198AC4 A0640041 */  sb         $a0, 0x41($v1)
/* 13EB38 80198AC8 A06A0038 */  sb         $t2, 0x38($v1)
/* 13EB3C 80198ACC 904B0000 */  lbu        $t3, 0x0($v0)
/* 13EB40 80198AD0 24010004 */  addiu      $at, $zero, 0x4
/* 13EB44 80198AD4 2404FFFF */  addiu      $a0, $zero, -0x1
/* 13EB48 80198AD8 15610004 */  bne        $t3, $at, .L80198AEC_ovl7
/* 13EB4C 80198ADC 240C001E */   addiu     $t4, $zero, 0x1E
/* 13EB50 80198AE0 2404FFFF */  addiu      $a0, $zero, -0x1
/* 13EB54 80198AE4 10000002 */  b          .L80198AF0_ovl7
/* 13EB58 80198AE8 A0640039 */   sb        $a0, 0x39($v1)
.L80198AEC_ovl7:
/* 13EB5C 80198AEC A06C0039 */  sb         $t4, 0x39($v1)
.L80198AF0_ovl7:
/* 13EB60 80198AF0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 13EB64 80198AF4 AC600074 */  sw         $zero, 0x74($v1)
/* 13EB68 80198AF8 AC600078 */  sw         $zero, 0x78($v1)
/* 13EB6C 80198AFC AC60007C */  sw         $zero, 0x7C($v1)
/* 13EB70 80198B00 AC600080 */  sw         $zero, 0x80($v1)
/* 13EB74 80198B04 AC600084 */  sw         $zero, 0x84($v1)
/* 13EB78 80198B08 AC600030 */  sw         $zero, 0x30($v1)
/* 13EB7C 80198B0C A060003D */  sb         $zero, 0x3D($v1)
/* 13EB80 80198B10 AC600044 */  sw         $zero, 0x44($v1)
/* 13EB84 80198B14 A0600043 */  sb         $zero, 0x43($v1)
/* 13EB88 80198B18 A060003F */  sb         $zero, 0x3F($v1)
/* 13EB8C 80198B1C A060003E */  sb         $zero, 0x3E($v1)
/* 13EB90 80198B20 A064003B */  sb         $a0, 0x3B($v1)
/* 13EB94 80198B24 00260821 */  addu       $at, $at, $a2
/* 13EB98 80198B28 C4244550 */  lwc1       $f4, %lo(gEntitiesScaleXArray)($at)
/* 13EB9C 80198B2C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 13EBA0 80198B30 00260821 */  addu       $at, $at, $a2
/* 13EBA4 80198B34 E4640018 */  swc1       $f4, 0x18($v1)
/* 13EBA8 80198B38 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
/* 13EBAC 80198B3C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 13EBB0 80198B40 00260821 */  addu       $at, $at, $a2
/* 13EBB4 80198B44 E4660000 */  swc1       $f6, 0x0($v1)
/* 13EBB8 80198B48 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* 13EBBC 80198B4C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 13EBC0 80198B50 00260821 */  addu       $at, $at, $a2
/* 13EBC4 80198B54 E4680004 */  swc1       $f8, 0x4($v1)
/* 13EBC8 80198B58 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 13EBCC 80198B5C A060003C */  sb         $zero, 0x3C($v1)
/* 13EBD0 80198B60 AC60002C */  sw         $zero, 0x2C($v1)
/* 13EBD4 80198B64 E460001C */  swc1       $f0, 0x1C($v1)
/* 13EBD8 80198B68 E4600028 */  swc1       $f0, 0x28($v1)
/* 13EBDC 80198B6C E460000C */  swc1       $f0, 0xC($v1)
/* 13EBE0 80198B70 E4600010 */  swc1       $f0, 0x10($v1)
/* 13EBE4 80198B74 E4600014 */  swc1       $f0, 0x14($v1)
/* 13EBE8 80198B78 E4600020 */  swc1       $f0, 0x20($v1)
/* 13EBEC 80198B7C E4600024 */  swc1       $f0, 0x24($v1)
/* 13EBF0 80198B80 A0600040 */  sb         $zero, 0x40($v1)
/* 13EBF4 80198B84 A064003A */  sb         $a0, 0x3A($v1)
/* 13EBF8 80198B88 AC600034 */  sw         $zero, 0x34($v1)
/* 13EBFC 80198B8C 8C620088 */  lw         $v0, 0x88($v1)
/* 13EC00 80198B90 03E00008 */  jr         $ra
/* 13EC04 80198B94 E46A0008 */   swc1      $f10, 0x8($v1)
