glabel func_8015D7A0_ovl3
/* BE1E0 8015D7A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* BE1E4 8015D7A4 AFB10018 */  sw         $s1, 0x18($sp)
/* BE1E8 8015D7A8 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* BE1EC 8015D7AC 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* BE1F0 8015D7B0 AFB00014 */  sw         $s0, 0x14($sp)
/* BE1F4 8015D7B4 8E300000 */  lw         $s0, 0x0($s1)
/* BE1F8 8015D7B8 AFBF001C */  sw         $ra, 0x1C($sp)
/* BE1FC 8015D7BC 3C01800F */  lui        $at, %hi(D_800EA520)
/* BE200 8015D7C0 8E0E0000 */  lw         $t6, 0x0($s0)
/* BE204 8015D7C4 24180001 */  addiu      $t8, $zero, 0x1
/* BE208 8015D7C8 000E7880 */  sll        $t7, $t6, 2
/* BE20C 8015D7CC 002F0821 */  addu       $at, $at, $t7
/* BE210 8015D7D0 AC20A520 */  sw         $zero, %lo(D_800EA520)($at)
/* BE214 8015D7D4 8E190000 */  lw         $t9, 0x0($s0)
/* BE218 8015D7D8 3C01800E */  lui        $at, %hi(D_800E0650)
.L8015D7DC_ovl5:
/* BE21C 8015D7DC 00194080 */  sll        $t0, $t9, 2
/* BE220 8015D7E0 00280821 */  addu       $at, $at, $t0
/* BE224 8015D7E4 0C058738 */  jal        func_80161CE0_ovl3
/* BE228 8015D7E8 AC380650 */   sw        $t8, %lo(D_800E0650)($at)
/* BE22C 8015D7EC 8E290000 */  lw         $t1, 0x0($s1)
/* BE230 8015D7F0 3C0C800F */  lui        $t4, %hi(D_800EC2E0)
/* BE234 8015D7F4 24010001 */  addiu      $at, $zero, 0x1
/* BE238 8015D7F8 8D2A0000 */  lw         $t2, 0x0($t1)
/* BE23C 8015D7FC 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
/* BE240 8015D800 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
/* BE244 8015D804 000A5880 */  sll        $t3, $t2, 2
/* BE248 8015D808 018B6021 */  addu       $t4, $t4, $t3
/* BE24C 8015D80C 8D8CC2E0 */  lw         $t4, %lo(D_800EC2E0)($t4)
.L8015D810_ovl5:
/* BE250 8015D810 3C03800D */  lui        $v1, %hi(D_800D71E8 + 0x54)
/* BE254 8015D814 00002025 */  or         $a0, $zero, $zero
/* BE258 8015D818 15810009 */  bne        $t4, $at, .L8015D840_ovl3
/* BE25C 8015D81C 3C0141F0 */   lui       $at, (0x41F00000 >> 16)
/* BE260 8015D820 44812000 */  mtc1       $at, $f4
/* BE264 8015D824 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
.L8015D828_ovl5:
/* BE268 8015D828 44813000 */  mtc1       $at, $f6
.L8015D82C_ovl5:
/* BE26C 8015D82C 2463723C */  addiu      $v1, $v1, %lo(D_800D71E8 + 0x54)
/* BE270 8015D830 E4440000 */  swc1       $f4, 0x0($v0)
/* BE274 8015D834 E4660000 */  swc1       $f6, 0x0($v1)
/* BE278 8015D838 10000009 */  b          .L8015D860_ovl3
/* BE27C 8015D83C C4600000 */   lwc1      $f0, 0x0($v1)
.L8015D840_ovl3:
/* BE280 8015D840 44804000 */  mtc1       $zero, $f8
/* BE284 8015D844 3C03800D */  lui        $v1, %hi(D_800D71E8 + 0x54)
/* BE288 8015D848 2463723C */  addiu      $v1, $v1, %lo(D_800D71E8 + 0x54)
/* BE28C 8015D84C E4680000 */  swc1       $f8, 0x0($v1)
/* BE290 8015D850 C4600000 */  lwc1       $f0, 0x0($v1)
/* BE294 8015D854 3C02800D */  lui        $v0, %hi(D_800D71E8 + 0x50)
/* BE298 8015D858 24427238 */  addiu      $v0, $v0, %lo(D_800D71E8 + 0x50)
/* BE29C 8015D85C E4400000 */  swc1       $f0, 0x0($v0)
.L8015D860_ovl3:
/* BE2A0 8015D860 44060000 */  mfc1       $a2, $f0
glabel func_8015D864_ovl5
/* BE2A4 8015D864 0C0587B0 */  jal        func_80161EC0_ovl3
/* BE2A8 8015D868 8C450000 */   lw        $a1, 0x0($v0)
/* BE2AC 8015D86C 8E300000 */  lw         $s0, 0x0($s1)
/* BE2B0 8015D870 3C0D800B */  lui        $t5, %hi(func_800B4954)
/* BE2B4 8015D874 3C01800E */  lui        $at, %hi(D_800DEF90)
/* BE2B8 8015D878 8E0E0000 */  lw         $t6, 0x0($s0)
/* BE2BC 8015D87C 25AD4954 */  addiu      $t5, $t5, %lo(func_800B4954)
/* BE2C0 8015D880 3C198016 */  lui        $t9, %hi(func_8015DBE4_ovl3)
/* BE2C4 8015D884 000E7880 */  sll        $t7, $t6, 2
/* BE2C8 8015D888 002F0821 */  addu       $at, $at, $t7
/* BE2CC 8015D88C AC2DEF90 */  sw         $t5, %lo(D_800DEF90)($at)
/* BE2D0 8015D890 8E180000 */  lw         $t8, 0x0($s0)
/* BE2D4 8015D894 3C01800E */  lui        $at, %hi(D_800DF150)
/* BE2D8 8015D898 2739DBE4 */  addiu      $t9, $t9, %lo(func_8015DBE4_ovl3)
/* BE2DC 8015D89C 00184080 */  sll        $t0, $t8, 2
/* BE2E0 8015D8A0 00280821 */  addu       $at, $at, $t0
/* BE2E4 8015D8A4 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* BE2E8 8015D8A8 8E0A0000 */  lw         $t2, 0x0($s0)
/* BE2EC 8015D8AC 3C01800E */  lui        $at, %hi(D_800E0490)
/* BE2F0 8015D8B0 3C098019 */  lui        $t1, %hi(D_80192E9C_ovl3)
/* BE2F4 8015D8B4 000A5880 */  sll        $t3, $t2, 2
/* BE2F8 8015D8B8 002B0821 */  addu       $at, $at, $t3
/* BE2FC 8015D8BC 25292E9C */  addiu      $t1, $t1, %lo(D_80192E9C_ovl3)
/* BE300 8015D8C0 AC290490 */  sw         $t1, %lo(D_800E0490)($at)
/* BE304 8015D8C4 8E030000 */  lw         $v1, 0x0($s0)
/* BE308 8015D8C8 3C18801A */  lui        $t8, %hi(D_801982F8_ovl3)
/* BE30C 8015D8CC 3C0D8019 */  lui        $t5, %hi(D_80197F60_ovl3)
/* BE310 8015D8D0 2467FFFC */  addiu      $a3, $v1, -0x4
/* BE314 8015D8D4 00077080 */  sll        $t6, $a3, 2
/* BE318 8015D8D8 01C77023 */  subu       $t6, $t6, $a3
/* BE31C 8015D8DC 000E70C0 */  sll        $t6, $t6, 3
/* BE320 8015D8E0 01C77023 */  subu       $t6, $t6, $a3
/* BE324 8015D8E4 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* BE328 8015D8E8 00036080 */  sll        $t4, $v1, 2
/* BE32C 8015D8EC 008C2021 */  addu       $a0, $a0, $t4
/* BE330 8015D8F0 000E7080 */  sll        $t6, $t6, 2
/* BE334 8015D8F4 00077940 */  sll        $t7, $a3, 5
/* BE338 8015D8F8 25AD7F60 */  addiu      $t5, $t5, %lo(D_80197F60_ovl3)
/* BE33C 8015D8FC 271882F8 */  addiu      $t8, $t8, %lo(D_801982F8_ovl3)
/* BE340 8015D900 01F83021 */  addu       $a2, $t7, $t8
/* BE344 8015D904 01CD2821 */  addu       $a1, $t6, $t5
/* BE348 8015D908 0C055192 */  jal        func_80154648_ovl3
/* BE34C 8015D90C 8C840D50 */   lw        $a0, %lo(D_800E0D50)($a0)
.L8015D910_ovl5:
/* BE350 8015D910 8E300000 */  lw         $s0, 0x0($s1)
/* BE354 8015D914 3C018019 */  lui        $at, %hi(D_80197084_ovl3)
/* BE358 8015D918 C4207084 */  lwc1       $f0, %lo(D_80197084_ovl3)($at)
/* BE35C 8015D91C 8E190000 */  lw         $t9, 0x0($s0)
/* BE360 8015D920 3C01800F */  lui        $at, %hi(D_800E8920)
/* BE364 8015D924 3C0A800E */  lui        $t2, %hi(D_800E0D50)
/* BE368 8015D928 00194080 */  sll        $t0, $t9, 2
/* BE36C 8015D92C 00280821 */  addu       $at, $at, $t0
/* BE370 8015D930 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* BE374 8015D934 8E030000 */  lw         $v1, 0x0($s0)
/* BE378 8015D938 3C02800F */  lui        $v0, %hi(D_800E8AE0)
/* BE37C 8015D93C 24428AE0 */  addiu      $v0, $v0, %lo(D_800E8AE0)
/* BE380 8015D940 00031880 */  sll        $v1, $v1, 2
/* BE384 8015D944 01435021 */  addu       $t2, $t2, $v1
/* BE388 8015D948 8D4A0D50 */  lw         $t2, %lo(D_800E0D50)($t2)
/* BE38C 8015D94C 00437021 */  addu       $t6, $v0, $v1
/* BE390 8015D950 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* BE394 8015D954 000A4880 */  sll        $t1, $t2, 2
/* BE398 8015D958 00495821 */  addu       $t3, $v0, $t1
/* BE39C 8015D95C 8D6C0000 */  lw         $t4, 0x0($t3)
/* BE3A0 8015D960 3C040002 */  lui        $a0, (0x20032 >> 16)
/* BE3A4 8015D964 34840032 */  ori        $a0, $a0, (0x20032 & 0xFFFF)
/* BE3A8 8015D968 ADCC0000 */  sw         $t4, 0x0($t6)
/* BE3AC 8015D96C 8E0D0000 */  lw         $t5, 0x0($s0)
/* BE3B0 8015D970 24050021 */  addiu      $a1, $zero, 0x21
/* BE3B4 8015D974 24060010 */  addiu      $a2, $zero, 0x10
/* BE3B8 8015D978 000D7880 */  sll        $t7, $t5, 2
/* BE3BC 8015D97C 002F0821 */  addu       $at, $at, $t7
/* BE3C0 8015D980 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* BE3C4 8015D984 8E180000 */  lw         $t8, 0x0($s0)
/* BE3C8 8015D988 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* BE3CC 8015D98C 0018C880 */  sll        $t9, $t8, 2
/* BE3D0 8015D990 00390821 */  addu       $at, $at, $t9
/* BE3D4 8015D994 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* BE3D8 8015D998 8E080000 */  lw         $t0, 0x0($s0)
/* BE3DC 8015D99C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* BE3E0 8015D9A0 00085080 */  sll        $t2, $t0, 2
/* BE3E4 8015D9A4 002A0821 */  addu       $at, $at, $t2
/* BE3E8 8015D9A8 0C02A619 */  jal        func_800A9864
/* BE3EC 8015D9AC E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* BE3F0 8015D9B0 8E300000 */  lw         $s0, 0x0($s1)
/* BE3F4 8015D9B4 3C01800F */  lui        $at, %hi(D_800E9720)
/* BE3F8 8015D9B8 24090046 */  addiu      $t1, $zero, 0x46
/* BE3FC 8015D9BC 8E0B0000 */  lw         $t3, 0x0($s0)
/* BE400 8015D9C0 3C05800F */  lui        $a1, %hi(D_800EA8A0)
/* BE404 8015D9C4 24A5A8A0 */  addiu      $a1, $a1, %lo(D_800EA8A0)
/* BE408 8015D9C8 000B6080 */  sll        $t4, $t3, 2
/* BE40C 8015D9CC 002C0821 */  addu       $at, $at, $t4
/* BE410 8015D9D0 AC299720 */  sw         $t1, %lo(D_800E9720)($at)
/* BE414 8015D9D4 8E0E0000 */  lw         $t6, 0x0($s0)
/* BE418 8015D9D8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BE41C 8015D9DC 44815000 */  mtc1       $at, $f10
.L8015D9E0_ovl5:
/* BE420 8015D9E0 000E6880 */  sll        $t5, $t6, 2
/* BE424 8015D9E4 00AD7821 */  addu       $t7, $a1, $t5
/* BE428 8015D9E8 E5EA0000 */  swc1       $f10, 0x0($t7)
/* BE42C 8015D9EC 8E030000 */  lw         $v1, 0x0($s0)
/* BE430 8015D9F0 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* BE434 8015D9F4 3C040002 */  lui        $a0, (0x20280 >> 16)
/* BE438 8015D9F8 00031880 */  sll        $v1, $v1, 2
/* BE43C 8015D9FC 00A3C021 */  addu       $t8, $a1, $v1
/* BE440 8015DA00 C7100000 */  lwc1       $f16, 0x0($t8)
/* BE444 8015DA04 00230821 */  addu       $at, $at, $v1
/* BE448 8015DA08 34840280 */  ori        $a0, $a0, (0x20280 & 0xFFFF)
/* BE44C 8015DA0C 0C02A806 */  jal        func_800AA018
/* BE450 8015DA10 E430A6E0 */   swc1      $f16, %lo(D_800EA6E0)($at)
/* BE454 8015DA14 8E300000 */  lw         $s0, 0x0($s1)
/* BE458 8015DA18 3C19800F */  lui        $t9, %hi(D_800EC2E0)
/* BE45C 8015DA1C 24010001 */  addiu      $at, $zero, 0x1
/* BE460 8015DA20 8E030000 */  lw         $v1, 0x0($s0)
glabel func_8015DA24_ovl5
/* BE464 8015DA24 24040002 */  addiu      $a0, $zero, 0x2
/* BE468 8015DA28 24050001 */  addiu      $a1, $zero, 0x1
/* BE46C 8015DA2C 00031880 */  sll        $v1, $v1, 2
/* BE470 8015DA30 0323C821 */  addu       $t9, $t9, $v1
/* BE474 8015DA34 8F39C2E0 */  lw         $t9, %lo(D_800EC2E0)($t9)
/* BE478 8015DA38 17210028 */  bne        $t9, $at, .L8015DADC_ovl3
/* BE47C 8015DA3C 00000000 */   nop
/* BE480 8015DA40 44801000 */  mtc1       $zero, $f2
/* BE484 8015DA44 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* BE488 8015DA48 00230821 */  addu       $at, $at, $v1
/* BE48C 8015DA4C E4224010 */  swc1       $f2, %lo(gEntitiesAngleXArray)($at)
/* BE490 8015DA50 8E030000 */  lw         $v1, 0x0($s0)
/* BE494 8015DA54 3C08800F */  lui        $t0, %hi(D_800E8AE0)
/* BE498 8015DA58 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* BE49C 8015DA5C 00031880 */  sll        $v1, $v1, 2
/* BE4A0 8015DA60 01034021 */  addu       $t0, $t0, $v1
/* BE4A4 8015DA64 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
/* BE4A8 8015DA68 310A0004 */  andi       $t2, $t0, 0x4
/* BE4AC 8015DA6C 55400006 */  bnel       $t2, $zero, .L8015DA88_ovl3
/* BE4B0 8015DA70 44810000 */   mtc1      $at, $f0
/* BE4B4 8015DA74 3C014120 */  lui        $at, (0x41200000 >> 16)
/* BE4B8 8015DA78 44810000 */  mtc1       $at, $f0
/* BE4BC 8015DA7C 10000003 */  b          .L8015DA8C_ovl3
/* BE4C0 8015DA80 00000000 */   nop
/* BE4C4 8015DA84 44810000 */  mtc1       $at, $f0
.L8015DA88_ovl3:
/* BE4C8 8015DA88 00000000 */  nop
.L8015DA8C_ovl3:
/* BE4CC 8015DA8C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* BE4D0 8015DA90 00230821 */  addu       $at, $at, $v1
/* BE4D4 8015DA94 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* BE4D8 8015DA98 3C01800E */  lui        $at, %hi(D_800E64D0)
/* BE4DC 8015DA9C 00230821 */  addu       $at, $at, $v1
/* BE4E0 8015DAA0 46120102 */  mul.s      $f4, $f0, $f18
/* BE4E4 8015DAA4 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* BE4E8 8015DAA8 8E0B0000 */  lw         $t3, 0x0($s0)
/* BE4EC 8015DAAC 3C01800E */  lui        $at, %hi(D_800E6690)
/* BE4F0 8015DAB0 000B4880 */  sll        $t1, $t3, 2
/* BE4F4 8015DAB4 00290821 */  addu       $at, $at, $t1
/* BE4F8 8015DAB8 E4226690 */  swc1       $f2, %lo(D_800E6690)($at)
/* BE4FC 8015DABC 8E0C0000 */  lw         $t4, 0x0($s0)
/* BE500 8015DAC0 3C014120 */  lui        $at, (0x41200000 >> 16)
/* BE504 8015DAC4 44813000 */  mtc1       $at, $f6
/* BE508 8015DAC8 3C01800E */  lui        $at, %hi(D_800E6850)
/* BE50C 8015DACC 000C7080 */  sll        $t6, $t4, 2
/* BE510 8015DAD0 002E0821 */  addu       $at, $at, $t6
/* BE514 8015DAD4 10000026 */  b          .L8015DB70_ovl3
/* BE518 8015DAD8 E4266850 */   swc1      $f6, %lo(D_800E6850)($at)
.L8015DADC_ovl3:
/* BE51C 8015DADC 3C018019 */  lui        $at, %hi(D_80197088_ovl3)
/* BE520 8015DAE0 C4287088 */  lwc1       $f8, %lo(D_80197088_ovl3)($at)
/* BE524 8015DAE4 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* BE528 8015DAE8 00230821 */  addu       $at, $at, $v1
/* BE52C 8015DAEC E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
/* BE530 8015DAF0 8E030000 */  lw         $v1, 0x0($s0)
/* BE534 8015DAF4 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* BE538 8015DAF8 3C01C108 */  lui        $at, (0xC1080000 >> 16)
.L8015DAFC_ovl5:
/* BE53C 8015DAFC 00031880 */  sll        $v1, $v1, 2
/* BE540 8015DB00 01A36821 */  addu       $t5, $t5, $v1
/* BE544 8015DB04 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* BE548 8015DB08 31AF0004 */  andi       $t7, $t5, 0x4
/* BE54C 8015DB0C 55E00008 */  bnel       $t7, $zero, .L8015DB30_ovl5
/* BE550 8015DB10 44818000 */   mtc1      $at, $f16
/* BE554 8015DB14 3C01C188 */  lui        $at, (0xC1880000 >> 16)
/* BE558 8015DB18 44815000 */  mtc1       $at, $f10
/* BE55C 8015DB1C 3C01800E */  lui        $at, %hi(D_800E3210)
/* BE560 8015DB20 00230821 */  addu       $at, $at, $v1
/* BE564 8015DB24 10000005 */  b          .L8015DB3C_ovl3
/* BE568 8015DB28 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* BE56C 8015DB2C 44818000 */  mtc1       $at, $f16
.L8015DB30_ovl5:
/* BE570 8015DB30 3C01800E */  lui        $at, %hi(D_800E3210)
/* BE574 8015DB34 00230821 */  addu       $at, $at, $v1
/* BE578 8015DB38 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
.L8015DB3C_ovl3:
/* BE57C 8015DB3C 8E180000 */  lw         $t8, 0x0($s0)
/* BE580 8015DB40 44809000 */  mtc1       $zero, $f18
/* BE584 8015DB44 3C01800E */  lui        $at, %hi(D_800E3750)
/* BE588 8015DB48 0018C880 */  sll        $t9, $t8, 2
/* BE58C 8015DB4C 00390821 */  addu       $at, $at, $t9
/* BE590 8015DB50 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
/* BE594 8015DB54 8E080000 */  lw         $t0, 0x0($s0)
/* BE598 8015DB58 3C014188 */  lui        $at, (0x41880000 >> 16)
/* BE59C 8015DB5C 44812000 */  mtc1       $at, $f4
/* BE5A0 8015DB60 3C01800E */  lui        $at, %hi(D_800E3C90)
/* BE5A4 8015DB64 00085080 */  sll        $t2, $t0, 2
/* BE5A8 8015DB68 002A0821 */  addu       $at, $at, $t2
/* BE5AC 8015DB6C E4243C90 */  swc1       $f4, %lo(D_800E3C90)($at)
.L8015DB70_ovl3:
/* BE5B0 8015DB70 0C02A08D */  jal        func_800A8234
/* BE5B4 8015DB74 24060049 */   addiu     $a2, $zero, 0x49
/* BE5B8 8015DB78 8E2B0000 */  lw         $t3, 0x0($s1)
/* BE5BC 8015DB7C 3C01800F */  lui        $at, %hi(D_800EA520)
/* BE5C0 8015DB80 24040001 */  addiu      $a0, $zero, 0x1
/* BE5C4 8015DB84 8D690000 */  lw         $t1, 0x0($t3)
/* BE5C8 8015DB88 24050001 */  addiu      $a1, $zero, 0x1
/* BE5CC 8015DB8C 2406004E */  addiu      $a2, $zero, 0x4E
/* BE5D0 8015DB90 00096080 */  sll        $t4, $t1, 2
/* BE5D4 8015DB94 002C0821 */  addu       $at, $at, $t4
.L8015DB98_ovl5:
/* BE5D8 8015DB98 0C02A08D */  jal        func_800A8234
/* BE5DC 8015DB9C AC22A520 */   sw        $v0, %lo(D_800EA520)($at)
/* BE5E0 8015DBA0 8E300000 */  lw         $s0, 0x0($s1)
/* BE5E4 8015DBA4 3C01800F */  lui        $at, %hi(D_800EB4E0)
/* BE5E8 8015DBA8 8E0E0000 */  lw         $t6, 0x0($s0)
/* BE5EC 8015DBAC 000E6880 */  sll        $t5, $t6, 2
/* BE5F0 8015DBB0 002D0821 */  addu       $at, $at, $t5
/* BE5F4 8015DBB4 AC22B4E0 */  sw         $v0, %lo(D_800EB4E0)($at)
/* BE5F8 8015DBB8 8E0F0000 */  lw         $t7, 0x0($s0)
/* BE5FC 8015DBBC 3C01800F */  lui        $at, %hi(D_800EB6A0)
.L8015DBC0_ovl5:
/* BE600 8015DBC0 000FC080 */  sll        $t8, $t7, 2
.L8015DBC4_ovl5:
/* BE604 8015DBC4 00380821 */  addu       $at, $at, $t8
/* BE608 8015DBC8 0C02BE85 */  jal        func_800AFA14
/* BE60C 8015DBCC AC20B6A0 */   sw        $zero, %lo(D_800EB6A0)($at)
.L8015DBD0_ovl5:
/* BE610 8015DBD0 8FBF001C */  lw         $ra, 0x1C($sp)
/* BE614 8015DBD4 8FB00014 */  lw         $s0, 0x14($sp)
/* BE618 8015DBD8 8FB10018 */  lw         $s1, 0x18($sp)
/* BE61C 8015DBDC 03E00008 */  jr         $ra
/* BE620 8015DBE0 27BD0020 */   addiu     $sp, $sp, 0x20
