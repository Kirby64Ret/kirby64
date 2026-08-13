nonmatching func_801E0F44_ovl15, 0x2EC

glabel func_801E0F44_ovl15
    /* 20BAA4 801E0F44 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 20BAA8 801E0F48 AFB30020 */  sw         $s3, 0x20($sp)
    /* 20BAAC 801E0F4C 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* 20BAB0 801E0F50 3C01800D */  lui        $at, %hi(D_800D7098)
    /* 20BAB4 801E0F54 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* 20BAB8 801E0F58 AC207098 */  sw         $zero, %lo(D_800D7098)($at)
    /* 20BABC 801E0F5C 8E620000 */  lw         $v0, 0x0($s3)
    /* 20BAC0 801E0F60 AFBF0024 */  sw         $ra, 0x24($sp)
    /* 20BAC4 801E0F64 AFB2001C */  sw         $s2, 0x1C($sp)
    /* 20BAC8 801E0F68 AFB10018 */  sw         $s1, 0x18($sp)
    /* 20BACC 801E0F6C AFB00014 */  sw         $s0, 0x14($sp)
    /* 20BAD0 801E0F70 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 20BAD4 801E0F74 3C038013 */  lui        $v1, %hi(D_80129210)
    /* 20BAD8 801E0F78 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* 20BADC 801E0F7C 000E7880 */  sll        $t7, $t6, 2
    /* 20BAE0 801E0F80 24639210 */  addiu      $v1, $v1, %lo(D_80129210)
    /* 20BAE4 801E0F84 002F0821 */  addu       $at, $at, $t7
    /* 20BAE8 801E0F88 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
    /* 20BAEC 801E0F8C C4640004 */  lwc1       $f4, 0x4($v1)
    /* 20BAF0 801E0F90 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* 20BAF4 801E0F94 3C0B800E */  lui        $t3, %hi(D_800E0D50)
    /* 20BAF8 801E0F98 46062200 */  add.s      $f8, $f4, $f6
    /* 20BAFC 801E0F9C 3C09800E */  lui        $t1, %hi(D_800E0D50)
    /* 20BB00 801E0FA0 E4680004 */  swc1       $f8, 0x4($v1)
    /* 20BB04 801E0FA4 8C580000 */  lw         $t8, 0x0($v0)
    /* 20BB08 801E0FA8 C4600004 */  lwc1       $f0, 0x4($v1)
    /* 20BB0C 801E0FAC 0018C880 */  sll        $t9, $t8, 2
    /* 20BB10 801E0FB0 00390821 */  addu       $at, $at, $t9
    /* 20BB14 801E0FB4 C422AA60 */  lwc1       $f2, %lo(D_800EAA60)($at)
    /* 20BB18 801E0FB8 3C01428C */  lui        $at, (0x428C0000 >> 16)
    /* 20BB1C 801E0FBC 4600103C */  c.lt.s     $f2, $f0
    /* 20BB20 801E0FC0 00000000 */  nop
    /* 20BB24 801E0FC4 45020004 */  bc1fl      .L801E0FD8_ovl15
    /* 20BB28 801E0FC8 44811000 */   mtc1      $at, $f2
    /* 20BB2C 801E0FCC E4620004 */  swc1       $f2, 0x4($v1)
    /* 20BB30 801E0FD0 C4600004 */  lwc1       $f0, 0x4($v1)
    /* 20BB34 801E0FD4 44811000 */  mtc1       $at, $f2
  .L801E0FD8_ovl15:
    /* 20BB38 801E0FD8 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 20BB3C 801E0FDC 4602003C */  c.lt.s     $f0, $f2
    /* 20BB40 801E0FE0 00000000 */  nop
    /* 20BB44 801E0FE4 45020003 */  bc1fl      .L801E0FF4_ovl15
    /* 20BB48 801E0FE8 8C500000 */   lw        $s0, 0x0($v0)
    /* 20BB4C 801E0FEC E4620004 */  swc1       $f2, 0x4($v1)
    /* 20BB50 801E0FF0 8C500000 */  lw         $s0, 0x0($v0)
  .L801E0FF4_ovl15:
    /* 20BB54 801E0FF4 3C08800F */  lui        $t0, %hi(D_800EA360)
    /* 20BB58 801E0FF8 00108080 */  sll        $s0, $s0, 2
    /* 20BB5C 801E0FFC 01104021 */  addu       $t0, $t0, $s0
    /* 20BB60 801E1000 8D08A360 */  lw         $t0, %lo(D_800EA360)($t0)
    /* 20BB64 801E1004 01705821 */  addu       $t3, $t3, $s0
    /* 20BB68 801E1008 00300821 */  addu       $at, $at, $s0
    /* 20BB6C 801E100C 11000008 */  beqz       $t0, .L801E1030_ovl15
    /* 20BB70 801E1010 01304821 */   addu      $t1, $t1, $s0
    /* 20BB74 801E1014 8D290D50 */  lw         $t1, %lo(D_800E0D50)($t1)
    /* 20BB78 801E1018 C42A3050 */  lwc1       $f10, %lo(D_800E3050)($at)
    /* 20BB7C 801E101C 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20BB80 801E1020 00095080 */  sll        $t2, $t1, 2
    /* 20BB84 801E1024 002A0821 */  addu       $at, $at, $t2
    /* 20BB88 801E1028 10000007 */  b          .L801E1048_ovl15
    /* 20BB8C 801E102C E42AA6E0 */   swc1      $f10, %lo(D_800EA6E0)($at)
  .L801E1030_ovl15:
    /* 20BB90 801E1030 8D6B0D50 */  lw         $t3, %lo(D_800E0D50)($t3)
    /* 20BB94 801E1034 44808000 */  mtc1       $zero, $f16
    /* 20BB98 801E1038 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20BB9C 801E103C 000B6080 */  sll        $t4, $t3, 2
    /* 20BBA0 801E1040 002C0821 */  addu       $at, $at, $t4
    /* 20BBA4 801E1044 E430A6E0 */  swc1       $f16, %lo(D_800EA6E0)($at)
  .L801E1048_ovl15:
    /* 20BBA8 801E1048 0C0787A2 */  jal        func_801E1E88_ovl15
    /* 20BBAC 801E104C 00000000 */   nop
    /* 20BBB0 801E1050 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 20BBB4 801E1054 3C0E800E */  lui        $t6, %hi(D_800DFF50)
    /* 20BBB8 801E1058 3C010001 */  lui        $at, (0x103D7 >> 16)
    /* 20BBBC 801E105C 8DB00000 */  lw         $s0, 0x0($t5)
    /* 20BBC0 801E1060 3C11800E */  lui        $s1, %hi(D_800E1B50)
    /* 20BBC4 801E1064 342103D7 */  ori        $at, $at, (0x103D7 & 0xFFFF)
    /* 20BBC8 801E1068 00108080 */  sll        $s0, $s0, 2
    /* 20BBCC 801E106C 01D07021 */  addu       $t6, $t6, $s0
    /* 20BBD0 801E1070 8DCEFF50 */  lw         $t6, %lo(D_800DFF50)($t6)
    /* 20BBD4 801E1074 26311B50 */  addiu      $s1, $s1, %lo(D_800E1B50)
    /* 20BBD8 801E1078 0230C021 */  addu       $t8, $s1, $s0
    /* 20BBDC 801E107C 55C10027 */  bnel       $t6, $at, .L801E111C_ovl15
    /* 20BBE0 801E1080 8F0F0000 */   lw        $t7, 0x0($t8)
    /* 20BBE4 801E1084 3C11800E */  lui        $s1, %hi(D_800E1B50)
    /* 20BBE8 801E1088 26311B50 */  addiu      $s1, $s1, %lo(D_800E1B50)
    /* 20BBEC 801E108C 0230C021 */  addu       $t8, $s1, $s0
    /* 20BBF0 801E1090 8F190000 */  lw         $t9, 0x0($t8)
    /* 20BBF4 801E1094 3C0F801E */  lui        $t7, %hi(D_801D92AC)
    /* 20BBF8 801E1098 25EF92AC */  addiu      $t7, $t7, %lo(D_801D92AC)
    /* 20BBFC 801E109C AF2F008C */  sw         $t7, 0x8C($t9)
    /* 20BC00 801E10A0 8E680000 */  lw         $t0, 0x0($s3)
    /* 20BC04 801E10A4 3C12800E */  lui        $s2, %hi(D_800DFBD0)
    /* 20BC08 801E10A8 2652FBD0 */  addiu      $s2, $s2, %lo(D_800DFBD0)
    /* 20BC0C 801E10AC 8D090000 */  lw         $t1, 0x0($t0)
    /* 20BC10 801E10B0 00003025 */  or         $a2, $zero, $zero
    /* 20BC14 801E10B4 00095080 */  sll        $t2, $t1, 2
    /* 20BC18 801E10B8 024A5821 */  addu       $t3, $s2, $t2
    /* 20BC1C 801E10BC 8D620000 */  lw         $v0, 0x0($t3)
    /* 20BC20 801E10C0 8C440010 */  lw         $a0, 0x10($v0)
    /* 20BC24 801E10C4 0C078674 */  jal        func_801E19D0_ovl15
    /* 20BC28 801E10C8 8C450058 */   lw        $a1, 0x58($v0)
    /* 20BC2C 801E10CC 8E6D0000 */  lw         $t5, 0x0($s3)
    /* 20BC30 801E10D0 3C0C801E */  lui        $t4, %hi(D_801D9120)
    /* 20BC34 801E10D4 258C9120 */  addiu      $t4, $t4, %lo(D_801D9120)
    /* 20BC38 801E10D8 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 20BC3C 801E10DC 00002825 */  or         $a1, $zero, $zero
    /* 20BC40 801E10E0 00003025 */  or         $a2, $zero, $zero
    /* 20BC44 801E10E4 000EC080 */  sll        $t8, $t6, 2
    /* 20BC48 801E10E8 02387821 */  addu       $t7, $s1, $t8
    /* 20BC4C 801E10EC 8DF90000 */  lw         $t9, 0x0($t7)
    /* 20BC50 801E10F0 AF2C008C */  sw         $t4, 0x8C($t9)
    /* 20BC54 801E10F4 8E680000 */  lw         $t0, 0x0($s3)
    /* 20BC58 801E10F8 8D090000 */  lw         $t1, 0x0($t0)
    /* 20BC5C 801E10FC 00095080 */  sll        $t2, $t1, 2
    /* 20BC60 801E1100 024A5821 */  addu       $t3, $s2, $t2
    /* 20BC64 801E1104 8D6D0000 */  lw         $t5, 0x0($t3)
    /* 20BC68 801E1108 0C078674 */  jal        func_801E19D0_ovl15
    /* 20BC6C 801E110C 8DA40018 */   lw        $a0, 0x18($t5)
    /* 20BC70 801E1110 10000041 */  b          .L801E1218_ovl15
    /* 20BC74 801E1114 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 20BC78 801E1118 8F0F0000 */  lw         $t7, 0x0($t8)
  .L801E111C_ovl15:
    /* 20BC7C 801E111C 3C0E801E */  lui        $t6, %hi(D_801D8E98)
    /* 20BC80 801E1120 25CE8E98 */  addiu      $t6, $t6, %lo(D_801D8E98)
    /* 20BC84 801E1124 ADEE008C */  sw         $t6, 0x8C($t7)
    /* 20BC88 801E1128 8E6C0000 */  lw         $t4, 0x0($s3)
    /* 20BC8C 801E112C 3C12800E */  lui        $s2, %hi(D_800DFBD0)
    /* 20BC90 801E1130 2652FBD0 */  addiu      $s2, $s2, %lo(D_800DFBD0)
    /* 20BC94 801E1134 8D990000 */  lw         $t9, 0x0($t4)
    /* 20BC98 801E1138 00003025 */  or         $a2, $zero, $zero
    /* 20BC9C 801E113C 00194080 */  sll        $t0, $t9, 2
    /* 20BCA0 801E1140 02484821 */  addu       $t1, $s2, $t0
    /* 20BCA4 801E1144 8D220000 */  lw         $v0, 0x0($t1)
    /* 20BCA8 801E1148 8C440010 */  lw         $a0, 0x10($v0)
    /* 20BCAC 801E114C 0C078674 */  jal        func_801E19D0_ovl15
    /* 20BCB0 801E1150 8C450058 */   lw        $a1, 0x58($v0)
    /* 20BCB4 801E1154 8E6A0000 */  lw         $t2, 0x0($s3)
    /* 20BCB8 801E1158 3C0B800E */  lui        $t3, %hi(D_800DFF50)
    /* 20BCBC 801E115C 3C010001 */  lui        $at, (0x103D3 >> 16)
    /* 20BCC0 801E1160 8D500000 */  lw         $s0, 0x0($t2)
    /* 20BCC4 801E1164 342103D3 */  ori        $at, $at, (0x103D3 & 0xFFFF)
    /* 20BCC8 801E1168 00108080 */  sll        $s0, $s0, 2
    /* 20BCCC 801E116C 01705821 */  addu       $t3, $t3, $s0
    /* 20BCD0 801E1170 8D6BFF50 */  lw         $t3, %lo(D_800DFF50)($t3)
    /* 20BCD4 801E1174 0230C021 */  addu       $t8, $s1, $s0
    /* 20BCD8 801E1178 55610027 */  bnel       $t3, $at, .L801E1218_ovl15
    /* 20BCDC 801E117C 8FBF0024 */   lw        $ra, 0x24($sp)
    /* 20BCE0 801E1180 8F0E0000 */  lw         $t6, 0x0($t8)
    /* 20BCE4 801E1184 3C0D801E */  lui        $t5, %hi(D_801D921C)
    /* 20BCE8 801E1188 25AD921C */  addiu      $t5, $t5, %lo(D_801D921C)
    /* 20BCEC 801E118C ADCD008C */  sw         $t5, 0x8C($t6)
    /* 20BCF0 801E1190 8E6F0000 */  lw         $t7, 0x0($s3)
    /* 20BCF4 801E1194 00003025 */  or         $a2, $zero, $zero
    /* 20BCF8 801E1198 8DEC0000 */  lw         $t4, 0x0($t7)
    /* 20BCFC 801E119C 000CC880 */  sll        $t9, $t4, 2
    /* 20BD00 801E11A0 02594021 */  addu       $t0, $s2, $t9
    /* 20BD04 801E11A4 8D090000 */  lw         $t1, 0x0($t0)
    /* 20BD08 801E11A8 8D2400B0 */  lw         $a0, 0xB0($t1)
    /* 20BD0C 801E11AC 0C078674 */  jal        func_801E19D0_ovl15
    /* 20BD10 801E11B0 00802825 */   or        $a1, $a0, $zero
    /* 20BD14 801E11B4 3C0A800C */  lui        $t2, %hi(D_800BE4EC)
    /* 20BD18 801E11B8 8D4AE4EC */  lw         $t2, %lo(D_800BE4EC)($t2)
    /* 20BD1C 801E11BC 3C10801E */  lui        $s0, %hi(D_801E665C_ovl15)
    /* 20BD20 801E11C0 2610665C */  addiu      $s0, $s0, %lo(D_801E665C_ovl15)
    /* 20BD24 801E11C4 000A58C2 */  srl        $t3, $t2, 3
    /* 20BD28 801E11C8 15600012 */  bnez       $t3, .L801E1214_ovl15
    /* 20BD2C 801E11CC 3C11801E */   lui       $s1, %hi(D_801E6670_ovl15)
    /* 20BD30 801E11D0 26316670 */  addiu      $s1, $s1, %lo(D_801E6670_ovl15)
    /* 20BD34 801E11D4 8E780000 */  lw         $t8, 0x0($s3)
  .L801E11D8_ovl15:
    /* 20BD38 801E11D8 8E190000 */  lw         $t9, 0x0($s0)
    /* 20BD3C 801E11DC 24040006 */  addiu      $a0, $zero, 0x6
    /* 20BD40 801E11E0 8F0D0000 */  lw         $t5, 0x0($t8)
    /* 20BD44 801E11E4 00194080 */  sll        $t0, $t9, 2
    /* 20BD48 801E11E8 24050002 */  addiu      $a1, $zero, 0x2
    /* 20BD4C 801E11EC 000D7080 */  sll        $t6, $t5, 2
    /* 20BD50 801E11F0 024E7821 */  addu       $t7, $s2, $t6
    /* 20BD54 801E11F4 8DEC0000 */  lw         $t4, 0x0($t7)
    /* 20BD58 801E11F8 2406000C */  addiu      $a2, $zero, 0xC
    /* 20BD5C 801E11FC 01884821 */  addu       $t1, $t4, $t0
    /* 20BD60 801E1200 0C02A040 */  jal        func_800A8100
    /* 20BD64 801E1204 8D270000 */   lw        $a3, 0x0($t1)
    /* 20BD68 801E1208 26100004 */  addiu      $s0, $s0, 0x4
    /* 20BD6C 801E120C 5611FFF2 */  bnel       $s0, $s1, .L801E11D8_ovl15
    /* 20BD70 801E1210 8E780000 */   lw        $t8, 0x0($s3)
  .L801E1214_ovl15:
    /* 20BD74 801E1214 8FBF0024 */  lw         $ra, 0x24($sp)
  .L801E1218_ovl15:
    /* 20BD78 801E1218 8FB00014 */  lw         $s0, 0x14($sp)
    /* 20BD7C 801E121C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 20BD80 801E1220 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 20BD84 801E1224 8FB30020 */  lw         $s3, 0x20($sp)
    /* 20BD88 801E1228 03E00008 */  jr         $ra
    /* 20BD8C 801E122C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_801E0F44_ovl15
.size func_801E0F44_ovl15, . - func_801E0F44_ovl15
