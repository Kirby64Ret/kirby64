nonmatching func_8018271C_ovl3, 0x680

glabel func_8018271C_ovl3
    /* E315C 8018271C 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* E3160 80182720 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E3164 80182724 0C054E61 */  jal        func_80153984_ovl3
    /* E3168 80182728 AFA40040 */   sw        $a0, 0x40($sp)
    /* E316C 8018272C 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3170 80182730 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E3174 80182734 8CEE0044 */  lw         $t6, 0x44($a3)
    /* E3178 80182738 24010003 */  addiu      $at, $zero, 0x3
    /* E317C 8018273C 11C10003 */  beq        $t6, $at, .L8018274C_ovl3
    /* E3180 80182740 00000000 */   nop
    /* E3184 80182744 0C0485EE */  jal        func_801217B8
    /* E3188 80182748 00000000 */   nop
  .L8018274C_ovl3:
    /* E318C 8018274C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E3190 80182750 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E3194 80182754 8D0F0000 */  lw         $t7, 0x0($t0)
    /* E3198 80182758 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* E319C 8018275C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E31A0 80182760 8DF80000 */  lw         $t8, 0x0($t7)
    /* E31A4 80182764 0018C880 */  sll        $t9, $t8, 2
    /* E31A8 80182768 01394821 */  addu       $t1, $t1, $t9
    /* E31AC 8018276C 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* E31B0 80182770 312A0006 */  andi       $t2, $t1, 0x6
    /* E31B4 80182774 55400006 */  bnel       $t2, $zero, .L80182790_ovl3
    /* E31B8 80182778 44816000 */   mtc1      $at, $f12
    /* E31BC 8018277C 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E31C0 80182780 44816000 */  mtc1       $at, $f12
    /* E31C4 80182784 10000003 */  b          .L80182794_ovl3
    /* E31C8 80182788 00000000 */   nop
    /* E31CC 8018278C 44816000 */  mtc1       $at, $f12
  .L80182790_ovl3:
    /* E31D0 80182790 00000000 */  nop
  .L80182794_ovl3:
    /* E31D4 80182794 0C02BB30 */  jal        func_800AECC0
    /* E31D8 80182798 00000000 */   nop
    /* E31DC 8018279C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E31E0 801827A0 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E31E4 801827A4 8D0B0000 */  lw         $t3, 0x0($t0)
    /* E31E8 801827A8 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* E31EC 801827AC 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E31F0 801827B0 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E31F4 801827B4 000C6880 */  sll        $t5, $t4, 2
    /* E31F8 801827B8 01CD7021 */  addu       $t6, $t6, $t5
    /* E31FC 801827BC 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* E3200 801827C0 31CF0006 */  andi       $t7, $t6, 0x6
    /* E3204 801827C4 55E00006 */  bnel       $t7, $zero, .L801827E0_ovl3
    /* E3208 801827C8 44816000 */   mtc1      $at, $f12
    /* E320C 801827CC 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E3210 801827D0 44816000 */  mtc1       $at, $f12
    /* E3214 801827D4 10000003 */  b          .L801827E4_ovl3
    /* E3218 801827D8 00000000 */   nop
    /* E321C 801827DC 44816000 */  mtc1       $at, $f12
  .L801827E0_ovl3:
    /* E3220 801827E0 00000000 */  nop
  .L801827E4_ovl3:
    /* E3224 801827E4 0C02BB48 */  jal        func_800AED20
    /* E3228 801827E8 00000000 */   nop
    /* E322C 801827EC 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E3230 801827F0 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E3234 801827F4 8D180000 */  lw         $t8, 0x0($t0)
    /* E3238 801827F8 3C19800F */  lui        $t9, %hi(D_800E9720)
    /* E323C 801827FC 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3240 80182800 8F030000 */  lw         $v1, 0x0($t8)
    /* E3244 80182804 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E3248 80182808 00031880 */  sll        $v1, $v1, 2
    /* E324C 8018280C 0323C821 */  addu       $t9, $t9, $v1
    /* E3250 80182810 8F399720 */  lw         $t9, %lo(D_800E9720)($t9)
    /* E3254 80182814 57200009 */  bnel       $t9, $zero, .L8018283C_ovl3
    /* E3258 80182818 8CEA0050 */   lw        $t2, 0x50($a3)
    /* E325C 8018281C 8CE90030 */  lw         $t1, 0x30($a3)
    /* E3260 80182820 5120015B */  beql       $t1, $zero, .L80182D90_ovl3
    /* E3264 80182824 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E3268 80182828 0C04759F */  jal        func_8011D67C
    /* E326C 8018282C 00000000 */   nop
    /* E3270 80182830 10000157 */  b          .L80182D90_ovl3
    /* E3274 80182834 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E3278 80182838 8CEA0050 */  lw         $t2, 0x50($a3)
  .L8018283C_ovl3:
    /* E327C 8018283C 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* E3280 80182840 01635821 */  addu       $t3, $t3, $v1
    /* E3284 80182844 1140002B */  beqz       $t2, .L801828F4_ovl3
    /* E3288 80182848 27A40034 */   addiu     $a0, $sp, 0x34
    /* E328C 8018284C 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* E3290 80182850 8CE2004C */  lw         $v0, 0x4C($a3)
    /* E3294 80182854 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* E3298 80182858 8D650020 */  lw         $a1, 0x20($t3)
    /* E329C 8018285C 0C02C8D0 */  jal        func_800B2340
    /* E32A0 80182860 AFA20030 */   sw        $v0, 0x30($sp)
    /* E32A4 80182864 8FA20030 */  lw         $v0, 0x30($sp)
    /* E32A8 80182868 C7A40034 */  lwc1       $f4, 0x34($sp)
    /* E32AC 8018286C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E32B0 80182870 8C4C004C */  lw         $t4, 0x4C($v0)
    /* E32B4 80182874 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E32B8 80182878 3C09800E */  lui        $t1, %hi(D_800DFBD0)
    /* E32BC 8018287C E5840004 */  swc1       $f4, 0x4($t4)
    /* E32C0 80182880 C7A60038 */  lwc1       $f6, 0x38($sp)
    /* E32C4 80182884 8C4D004C */  lw         $t5, 0x4C($v0)
    /* E32C8 80182888 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E32CC 8018288C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E32D0 80182890 E5A60008 */  swc1       $f6, 0x8($t5)
    /* E32D4 80182894 C7A8003C */  lwc1       $f8, 0x3C($sp)
    /* E32D8 80182898 8C4E004C */  lw         $t6, 0x4C($v0)
    /* E32DC 8018289C 27A40034 */  addiu      $a0, $sp, 0x34
    /* E32E0 801828A0 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* E32E4 801828A4 E5C8000C */  swc1       $f8, 0xC($t6)
    /* E32E8 801828A8 8D0F0000 */  lw         $t7, 0x0($t0)
    /* E32EC 801828AC 8CE20050 */  lw         $v0, 0x50($a3)
    /* E32F0 801828B0 8DF80000 */  lw         $t8, 0x0($t7)
    /* E32F4 801828B4 0018C880 */  sll        $t9, $t8, 2
    /* E32F8 801828B8 01394821 */  addu       $t1, $t1, $t9
    /* E32FC 801828BC 8D29FBD0 */  lw         $t1, %lo(D_800DFBD0)($t1)
    /* E3300 801828C0 8D25003C */  lw         $a1, 0x3C($t1)
    /* E3304 801828C4 0C02C8D0 */  jal        func_800B2340
    /* E3308 801828C8 AFA20030 */   sw        $v0, 0x30($sp)
    /* E330C 801828CC 8FA20030 */  lw         $v0, 0x30($sp)
    /* E3310 801828D0 C7AA0034 */  lwc1       $f10, 0x34($sp)
    /* E3314 801828D4 8C4A004C */  lw         $t2, 0x4C($v0)
    /* E3318 801828D8 E54A0004 */  swc1       $f10, 0x4($t2)
    /* E331C 801828DC C7B00038 */  lwc1       $f16, 0x38($sp)
    /* E3320 801828E0 8C4B004C */  lw         $t3, 0x4C($v0)
    /* E3324 801828E4 E5700008 */  swc1       $f16, 0x8($t3)
    /* E3328 801828E8 C7B2003C */  lwc1       $f18, 0x3C($sp)
    /* E332C 801828EC 8C4C004C */  lw         $t4, 0x4C($v0)
    /* E3330 801828F0 E592000C */  swc1       $f18, 0xC($t4)
  .L801828F4_ovl3:
    /* E3334 801828F4 3C040002 */  lui        $a0, (0x20007 >> 16)
    /* E3338 801828F8 0C02AA22 */  jal        func_800AA888
    /* E333C 801828FC 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
    /* E3340 80182900 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3344 80182904 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E3348 80182908 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E334C 8018290C 1440000D */  bnez       $v0, .L80182944_ovl3
    /* E3350 80182910 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
    /* E3354 80182914 90ED0017 */  lbu        $t5, 0x17($a3)
    /* E3358 80182918 51A0000B */  beql       $t5, $zero, .L80182948_ovl3
    /* E335C 8018291C 8D190000 */   lw        $t9, 0x0($t0)
    /* E3360 80182920 8D020000 */  lw         $v0, 0x0($t0)
    /* E3364 80182924 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E3368 80182928 24040006 */  addiu      $a0, $zero, 0x6
    /* E336C 8018292C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* E3370 80182930 000E7880 */  sll        $t7, $t6, 2
    /* E3374 80182934 002F0821 */  addu       $at, $at, $t7
    /* E3378 80182938 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
    /* E337C 8018293C 10000104 */  b          .L80182D50_ovl3
    /* E3380 80182940 ACE40044 */   sw        $a0, 0x44($a3)
  .L80182944_ovl3:
    /* E3384 80182944 8D190000 */  lw         $t9, 0x0($t0)
  .L80182948_ovl3:
    /* E3388 80182948 3C0B800F */  lui        $t3, %hi(D_800E9560)
    /* E338C 8018294C 256B9560 */  addiu      $t3, $t3, %lo(D_800E9560)
    /* E3390 80182950 8F290000 */  lw         $t1, 0x0($t9)
    /* E3394 80182954 3C048019 */  lui        $a0, %hi(D_801934C4_ovl3)
    /* E3398 80182958 248434C4 */  addiu      $a0, $a0, %lo(D_801934C4_ovl3)
    /* E339C 8018295C 00095080 */  sll        $t2, $t1, 2
    /* E33A0 80182960 014B1021 */  addu       $v0, $t2, $t3
    /* E33A4 80182964 8C430000 */  lw         $v1, 0x0($v0)
    /* E33A8 80182968 14600010 */  bnez       $v1, .L801829AC_ovl3
    /* E33AC 8018296C 2478FFFF */   addiu     $t8, $v1, -0x1
    /* E33B0 80182970 0C055127 */  jal        func_8015449C_ovl3
    /* E33B4 80182974 00002825 */   or        $a1, $zero, $zero
    /* E33B8 80182978 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E33BC 8018297C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E33C0 80182980 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E33C4 80182984 1040000A */  beqz       $v0, .L801829B0_ovl3
    /* E33C8 80182988 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
    /* E33CC 8018298C 8D0D0000 */  lw         $t5, 0x0($t0)
    /* E33D0 80182990 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* E33D4 80182994 240C0001 */  addiu      $t4, $zero, 0x1
    /* E33D8 80182998 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E33DC 8018299C 000E7880 */  sll        $t7, $t6, 2
    /* E33E0 801829A0 002F0821 */  addu       $at, $at, $t7
    /* E33E4 801829A4 10000002 */  b          .L801829B0_ovl3
    /* E33E8 801829A8 AC2C83E0 */   sw        $t4, %lo(D_800E83E0)($at)
  .L801829AC_ovl3:
    /* E33EC 801829AC AC580000 */  sw         $t8, 0x0($v0)
  .L801829B0_ovl3:
    /* E33F0 801829B0 8CE40044 */  lw         $a0, 0x44($a3)
    /* E33F4 801829B4 2499FFFF */  addiu      $t9, $a0, -0x1
    /* E33F8 801829B8 2F210006 */  sltiu      $at, $t9, 0x6
    /* E33FC 801829BC 102000F3 */  beqz       $at, .L80182D8C_ovl3
    /* E3400 801829C0 0019C880 */   sll       $t9, $t9, 2
    /* E3404 801829C4 3C018019 */  lui        $at, %hi(jtbl_80197778_ovl3)
    /* E3408 801829C8 00390821 */  addu       $at, $at, $t9
    /* E340C 801829CC 8C397778 */  lw         $t9, %lo(jtbl_80197778_ovl3)($at)
    /* E3410 801829D0 03200008 */  jr         $t9
    /* E3414 801829D4 00000000 */   nop
  jlabel .L801829D8_ovl3
    /* E3418 801829D8 0C048724 */  jal        func_80121C90
    /* E341C 801829DC 00000000 */   nop
    /* E3420 801829E0 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3424 801829E4 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E3428 801829E8 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E342C 801829EC 10400008 */  beqz       $v0, .L80182A10_ovl3
    /* E3430 801829F0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
    /* E3434 801829F4 24090002 */  addiu      $t1, $zero, 0x2
    /* E3438 801829F8 ACE90044 */  sw         $t1, 0x44($a3)
    /* E343C 801829FC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3440 80182A00 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E3444 80182A04 8C430000 */  lw         $v1, 0x0($v0)
    /* E3448 80182A08 100000B5 */  b          .L80182CE0_ovl3
    /* E344C 80182A0C 00031880 */   sll       $v1, $v1, 2
  .L80182A10_ovl3:
    /* E3450 80182A10 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* E3454 80182A14 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* E3458 80182A18 240D0003 */  addiu      $t5, $zero, 0x3
    /* E345C 80182A1C 3C028005 */  lui        $v0, (0x80050000 >> 16)
    /* E3460 80182A20 314B8000 */  andi       $t3, $t2, 0x8000
    /* E3464 80182A24 51600007 */  beql       $t3, $zero, .L80182A44_ovl3
    /* E3468 80182A28 8D020000 */   lw        $v0, 0x0($t0)
    /* E346C 80182A2C ACED0044 */  sw         $t5, 0x44($a3)
    /* E3470 80182A30 8C42A7C4 */  lw         $v0, -0x583C($v0)
    /* E3474 80182A34 8C430000 */  lw         $v1, 0x0($v0)
    /* E3478 80182A38 100000A9 */  b          .L80182CE0_ovl3
    /* E347C 80182A3C 00031880 */   sll       $v1, $v1, 2
    /* E3480 80182A40 8D020000 */  lw         $v0, 0x0($t0)
  .L80182A44_ovl3:
    /* E3484 80182A44 3C0E800F */  lui        $t6, %hi(D_800E8920)
    /* E3488 80182A48 240C0004 */  addiu      $t4, $zero, 0x4
    /* E348C 80182A4C 8C430000 */  lw         $v1, 0x0($v0)
    /* E3490 80182A50 00031880 */  sll        $v1, $v1, 2
    /* E3494 80182A54 01C37021 */  addu       $t6, $t6, $v1
    /* E3498 80182A58 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
    /* E349C 80182A5C 15C000A0 */  bnez       $t6, .L80182CE0_ovl3
    /* E34A0 80182A60 00000000 */   nop
    /* E34A4 80182A64 ACEC0044 */  sw         $t4, 0x44($a3)
    /* E34A8 80182A68 8C430000 */  lw         $v1, 0x0($v0)
    /* E34AC 80182A6C 1000009C */  b          .L80182CE0_ovl3
    /* E34B0 80182A70 00031880 */   sll       $v1, $v1, 2
  jlabel .L80182A74_ovl3
    /* E34B4 80182A74 8CEF0034 */  lw         $t7, 0x34($a3)
    /* E34B8 80182A78 31F80001 */  andi       $t8, $t7, 0x1
    /* E34BC 80182A7C 5700001F */  bnel       $t8, $zero, .L80182AFC_ovl3
    /* E34C0 80182A80 8CEF003C */   lw        $t7, 0x3C($a3)
    /* E34C4 80182A84 8D190000 */  lw         $t9, 0x0($t0)
    /* E34C8 80182A88 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E34CC 80182A8C 44802000 */  mtc1       $zero, $f4
    /* E34D0 80182A90 8F230000 */  lw         $v1, 0x0($t9)
    /* E34D4 80182A94 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* E34D8 80182A98 00031880 */  sll        $v1, $v1, 2
    /* E34DC 80182A9C 00230821 */  addu       $at, $at, $v1
    /* E34E0 80182AA0 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* E34E4 80182AA4 46062032 */  c.eq.s     $f4, $f6
    /* E34E8 80182AA8 00000000 */  nop
    /* E34EC 80182AAC 45000004 */  bc1f       .L80182AC0_ovl3
    /* E34F0 80182AB0 00000000 */   nop
    /* E34F4 80182AB4 24040001 */  addiu      $a0, $zero, 0x1
    /* E34F8 80182AB8 1000000F */  b          .L80182AF8_ovl3
    /* E34FC 80182ABC ACE40044 */   sw        $a0, 0x44($a3)
  .L80182AC0_ovl3:
    /* E3500 80182AC0 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* E3504 80182AC4 3C0E800F */  lui        $t6, %hi(D_800E8920)
    /* E3508 80182AC8 01C37021 */  addu       $t6, $t6, $v1
    /* E350C 80182ACC 314B8000 */  andi       $t3, $t2, 0x8000
    /* E3510 80182AD0 11600004 */  beqz       $t3, .L80182AE4_ovl3
    /* E3514 80182AD4 00000000 */   nop
    /* E3518 80182AD8 24040003 */  addiu      $a0, $zero, 0x3
    /* E351C 80182ADC 10000006 */  b          .L80182AF8_ovl3
    /* E3520 80182AE0 ACE40044 */   sw        $a0, 0x44($a3)
  .L80182AE4_ovl3:
    /* E3524 80182AE4 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
    /* E3528 80182AE8 55C00004 */  bnel       $t6, $zero, .L80182AFC_ovl3
    /* E352C 80182AEC 8CEF003C */   lw        $t7, 0x3C($a3)
    /* E3530 80182AF0 24040004 */  addiu      $a0, $zero, 0x4
    /* E3534 80182AF4 ACE40044 */  sw         $a0, 0x44($a3)
  .L80182AF8_ovl3:
    /* E3538 80182AF8 8CEF003C */  lw         $t7, 0x3C($a3)
  .L80182AFC_ovl3:
    /* E353C 80182AFC 15E40003 */  bne        $t7, $a0, .L80182B0C_ovl3
    /* E3540 80182B00 00000000 */   nop
    /* E3544 80182B04 0C048672 */  jal        func_801219C8
    /* E3548 80182B08 00000000 */   nop
  .L80182B0C_ovl3:
    /* E354C 80182B0C 0C047B5A */  jal        func_8011ED68
    /* E3550 80182B10 00000000 */   nop
    /* E3554 80182B14 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3558 80182B18 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E355C 80182B1C 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3560 80182B20 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E3564 80182B24 8C430000 */  lw         $v1, 0x0($v0)
    /* E3568 80182B28 1000006D */  b          .L80182CE0_ovl3
    /* E356C 80182B2C 00031880 */   sll       $v1, $v1, 2
  jlabel .L80182B30_ovl3
    /* E3570 80182B30 8CF80034 */  lw         $t8, 0x34($a3)
    /* E3574 80182B34 33190001 */  andi       $t9, $t8, 0x1
    /* E3578 80182B38 5720000C */  bnel       $t9, $zero, .L80182B6C_ovl3
    /* E357C 80182B3C 8CEB00E4 */   lw        $t3, 0xE4($a3)
    /* E3580 80182B40 0C048465 */  jal        func_80121194
    /* E3584 80182B44 00000000 */   nop
    /* E3588 80182B48 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E358C 80182B4C 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* E3590 80182B50 2508A7C4 */  addiu      $t0, $t0, %lo(omCurrentObj)
    /* E3594 80182B54 10400004 */  beqz       $v0, .L80182B68_ovl3
    /* E3598 80182B58 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
    /* E359C 80182B5C 8CE90034 */  lw         $t1, 0x34($a3)
    /* E35A0 80182B60 352A0001 */  ori        $t2, $t1, 0x1
    /* E35A4 80182B64 ACEA0034 */  sw         $t2, 0x34($a3)
  .L80182B68_ovl3:
    /* E35A8 80182B68 8CEB00E4 */  lw         $t3, 0xE4($a3)
  .L80182B6C_ovl3:
    /* E35AC 80182B6C 5160000B */  beql       $t3, $zero, .L80182B9C_ovl3
    /* E35B0 80182B70 94F800D2 */   lhu       $t8, 0xD2($a3)
    /* E35B4 80182B74 8D0D0000 */  lw         $t5, 0x0($t0)
    /* E35B8 80182B78 44804000 */  mtc1       $zero, $f8
    /* E35BC 80182B7C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E35C0 80182B80 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E35C4 80182B84 240F0004 */  addiu      $t7, $zero, 0x4
    /* E35C8 80182B88 000E6080 */  sll        $t4, $t6, 2
    /* E35CC 80182B8C 002C0821 */  addu       $at, $at, $t4
    /* E35D0 80182B90 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
    /* E35D4 80182B94 ACEF0044 */  sw         $t7, 0x44($a3)
    /* E35D8 80182B98 94F800D2 */  lhu        $t8, 0xD2($a3)
  .L80182B9C_ovl3:
    /* E35DC 80182B9C 17000003 */  bnez       $t8, .L80182BAC_ovl3
    /* E35E0 80182BA0 00000000 */   nop
    /* E35E4 80182BA4 0C047AF5 */  jal        func_8011EBD4
    /* E35E8 80182BA8 00000000 */   nop
  .L80182BAC_ovl3:
    /* E35EC 80182BAC 0C048672 */  jal        func_801219C8
    /* E35F0 80182BB0 00000000 */   nop
    /* E35F4 80182BB4 0C047B5A */  jal        func_8011ED68
    /* E35F8 80182BB8 00000000 */   nop
    /* E35FC 80182BBC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3600 80182BC0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E3604 80182BC4 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3608 80182BC8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E360C 80182BCC 8C430000 */  lw         $v1, 0x0($v0)
    /* E3610 80182BD0 10000043 */  b          .L80182CE0_ovl3
    /* E3614 80182BD4 00031880 */   sll       $v1, $v1, 2
  jlabel .L80182BD8_ovl3
    /* E3618 80182BD8 8CF90034 */  lw         $t9, 0x34($a3)
    /* E361C 80182BDC 33290001 */  andi       $t1, $t9, 0x1
    /* E3620 80182BE0 5520000C */  bnel       $t1, $zero, .L80182C14_ovl3
    /* E3624 80182BE4 8CEF003C */   lw        $t7, 0x3C($a3)
    /* E3628 80182BE8 8D0A0000 */  lw         $t2, 0x0($t0)
    /* E362C 80182BEC 3C0E800F */  lui        $t6, %hi(D_800E8920)
    /* E3630 80182BF0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E3634 80182BF4 000B6880 */  sll        $t5, $t3, 2
    /* E3638 80182BF8 01CD7021 */  addu       $t6, $t6, $t5
    /* E363C 80182BFC 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
    /* E3640 80182C00 51C00004 */  beql       $t6, $zero, .L80182C14_ovl3
    /* E3644 80182C04 8CEF003C */   lw        $t7, 0x3C($a3)
    /* E3648 80182C08 24040005 */  addiu      $a0, $zero, 0x5
    /* E364C 80182C0C ACE40044 */  sw         $a0, 0x44($a3)
    /* E3650 80182C10 8CEF003C */  lw         $t7, 0x3C($a3)
  .L80182C14_ovl3:
    /* E3654 80182C14 15E40003 */  bne        $t7, $a0, .L80182C24_ovl3
    /* E3658 80182C18 00000000 */   nop
    /* E365C 80182C1C 0C048672 */  jal        func_801219C8
    /* E3660 80182C20 00000000 */   nop
  .L80182C24_ovl3:
    /* E3664 80182C24 0C047B5A */  jal        func_8011ED68
    /* E3668 80182C28 00000000 */   nop
    /* E366C 80182C2C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3670 80182C30 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E3674 80182C34 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E3678 80182C38 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E367C 80182C3C 8C430000 */  lw         $v1, 0x0($v0)
    /* E3680 80182C40 10000027 */  b          .L80182CE0_ovl3
    /* E3684 80182C44 00031880 */   sll       $v1, $v1, 2
  jlabel .L80182C48_ovl3
    /* E3688 80182C48 8D180000 */  lw         $t8, 0x0($t0)
    /* E368C 80182C4C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E3690 80182C50 44805000 */  mtc1       $zero, $f10
    /* E3694 80182C54 8F190000 */  lw         $t9, 0x0($t8)
    /* E3698 80182C58 240A0002 */  addiu      $t2, $zero, 0x2
    /* E369C 80182C5C 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
    /* E36A0 80182C60 00194880 */  sll        $t1, $t9, 2
    /* E36A4 80182C64 00290821 */  addu       $at, $at, $t1
    /* E36A8 80182C68 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
    /* E36AC 80182C6C 46105032 */  c.eq.s     $f10, $f16
    /* E36B0 80182C70 00000000 */  nop
    /* E36B4 80182C74 45010003 */  bc1t       .L80182C84_ovl3
    /* E36B8 80182C78 00000000 */   nop
    /* E36BC 80182C7C 1000000F */  b          .L80182CBC_ovl3
    /* E36C0 80182C80 ACEA0044 */   sw        $t2, 0x44($a3)
  .L80182C84_ovl3:
    /* E36C4 80182C84 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
    /* E36C8 80182C88 240E0003 */  addiu      $t6, $zero, 0x3
    /* E36CC 80182C8C 316D8000 */  andi       $t5, $t3, 0x8000
    /* E36D0 80182C90 11A00003 */  beqz       $t5, .L80182CA0_ovl3
    /* E36D4 80182C94 00000000 */   nop
    /* E36D8 80182C98 10000008 */  b          .L80182CBC_ovl3
    /* E36DC 80182C9C ACEE0044 */   sw        $t6, 0x44($a3)
  .L80182CA0_ovl3:
    /* E36E0 80182CA0 0C02BC8C */  jal        func_800AF230
    /* E36E4 80182CA4 00000000 */   nop
    /* E36E8 80182CA8 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E36EC 80182CAC 10400003 */  beqz       $v0, .L80182CBC_ovl3
    /* E36F0 80182CB0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
    /* E36F4 80182CB4 240C0001 */  addiu      $t4, $zero, 0x1
    /* E36F8 80182CB8 ACEC0044 */  sw         $t4, 0x44($a3)
  .L80182CBC_ovl3:
    /* E36FC 80182CBC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3700 80182CC0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E3704 80182CC4 8C430000 */  lw         $v1, 0x0($v0)
    /* E3708 80182CC8 10000005 */  b          .L80182CE0_ovl3
    /* E370C 80182CCC 00031880 */   sll       $v1, $v1, 2
  jlabel .L80182CD0_ovl3
    /* E3710 80182CD0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* E3714 80182CD4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* E3718 80182CD8 8C430000 */  lw         $v1, 0x0($v0)
    /* E371C 80182CDC 00031880 */  sll        $v1, $v1, 2
  .L80182CE0_ovl3:
    /* E3720 80182CE0 3C0F800F */  lui        $t7, %hi(D_800E83E0)
    /* E3724 80182CE4 01E37821 */  addu       $t7, $t7, $v1
    /* E3728 80182CE8 8DEF83E0 */  lw         $t7, %lo(D_800E83E0)($t7)
    /* E372C 80182CEC 3C05800F */  lui        $a1, %hi(D_800E9720)
    /* E3730 80182CF0 24A59720 */  addiu      $a1, $a1, %lo(D_800E9720)
    /* E3734 80182CF4 11E00007 */  beqz       $t7, .L80182D14_ovl3
    /* E3738 80182CF8 24180001 */   addiu     $t8, $zero, 0x1
    /* E373C 80182CFC 00A3C821 */  addu       $t9, $a1, $v1
    /* E3740 80182D00 AF380000 */  sw         $t8, 0x0($t9)
    /* E3744 80182D04 24090006 */  addiu      $t1, $zero, 0x6
    /* E3748 80182D08 ACE90044 */  sw         $t1, 0x44($a3)
    /* E374C 80182D0C 8C430000 */  lw         $v1, 0x0($v0)
    /* E3750 80182D10 00031880 */  sll        $v1, $v1, 2
  .L80182D14_ovl3:
    /* E3754 80182D14 3C05800F */  lui        $a1, %hi(D_800E9720)
    /* E3758 80182D18 24A59720 */  addiu      $a1, $a1, %lo(D_800E9720)
    /* E375C 80182D1C 00A32021 */  addu       $a0, $a1, $v1
    /* E3760 80182D20 8C8A0000 */  lw         $t2, 0x0($a0)
    /* E3764 80182D24 24180006 */  addiu      $t8, $zero, 0x6
    /* E3768 80182D28 254BFFFF */  addiu      $t3, $t2, -0x1
    /* E376C 80182D2C AC8B0000 */  sw         $t3, 0x0($a0)
    /* E3770 80182D30 8C4D0000 */  lw         $t5, 0x0($v0)
    /* E3774 80182D34 000D7080 */  sll        $t6, $t5, 2
    /* E3778 80182D38 00AE6021 */  addu       $t4, $a1, $t6
    /* E377C 80182D3C 8D8F0000 */  lw         $t7, 0x0($t4)
    /* E3780 80182D40 55E00003 */  bnel       $t7, $zero, .L80182D50_ovl3
    /* E3784 80182D44 8CE40044 */   lw        $a0, 0x44($a3)
    /* E3788 80182D48 ACF80044 */  sw         $t8, 0x44($a3)
    /* E378C 80182D4C 8CE40044 */  lw         $a0, 0x44($a3)
  .L80182D50_ovl3:
    /* E3790 80182D50 8CF9003C */  lw         $t9, 0x3C($a3)
    /* E3794 80182D54 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* E3798 80182D58 5324000D */  beql       $t9, $a0, .L80182D90_ovl3
    /* E379C 80182D5C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E37A0 80182D60 8C490000 */  lw         $t1, 0x0($v0)
    /* E37A4 80182D64 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* E37A8 80182D68 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* E37AC 80182D6C 00095080 */  sll        $t2, $t1, 2
    /* E37B0 80182D70 008A2021 */  addu       $a0, $a0, $t2
    /* E37B4 80182D74 0C02C7B2 */  jal        assign_new_process_entry
    /* E37B8 80182D78 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* E37BC 80182D7C 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* E37C0 80182D80 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* E37C4 80182D84 8CEB0044 */  lw         $t3, 0x44($a3)
    /* E37C8 80182D88 ACEB003C */  sw         $t3, 0x3C($a3)
  .L80182D8C_ovl3:
    /* E37CC 80182D8C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80182D90_ovl3:
    /* E37D0 80182D90 27BD0040 */  addiu      $sp, $sp, 0x40
    /* E37D4 80182D94 03E00008 */  jr         $ra
    /* E37D8 80182D98 00000000 */   nop
endlabel func_8018271C_ovl3
.size func_8018271C_ovl3, . - func_8018271C_ovl3
