glabel func_80176490_ovl3
/* D6ED0 80176490 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D6ED4 80176494 AFB00018 */  sw         $s0, 0x18($sp)
/* D6ED8 80176498 3C108013 */  lui        $s0, %hi(gKirbyState)
.L8017649C_ovl5:
/* D6EDC 8017649C 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* D6EE0 801764A0 240E0001 */  addiu      $t6, $zero, 0x1
/* D6EE4 801764A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* D6EE8 801764A8 AE0E0030 */  sw         $t6, 0x30($s0)
/* D6EEC 801764AC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* D6EF0 801764B0 AFA40020 */  sw         $a0, 0x20($sp)
/* D6EF4 801764B4 0C02BB30 */  jal        func_800AECC0
/* D6EF8 801764B8 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* D6EFC 801764BC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* D6F00 801764C0 0C02BB48 */  jal        func_800AED20
/* D6F04 801764C4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* D6F08 801764C8 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* D6F0C 801764CC 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* D6F10 801764D0 3C0F8017 */  lui        $t7, %hi(func_80176814_ovl3)
/* D6F14 801764D4 3C01800E */  lui        $at, %hi(D_800DF150)
/* D6F18 801764D8 8F190000 */  lw         $t9, 0x0($t8)
/* D6F1C 801764DC 25EF6814 */  addiu      $t7, $t7, %lo(func_80176814_ovl3)
/* D6F20 801764E0 00002025 */  or         $a0, $zero, $zero
/* D6F24 801764E4 00194080 */  sll        $t0, $t9, 2
/* D6F28 801764E8 00280821 */  addu       $at, $at, $t0
/* D6F2C 801764EC 0C048BEC */  jal        func_80122FB0
glabel func_801764F0_ovl5
/* D6F30 801764F0 AC2FF150 */   sw        $t7, %lo(D_800DF150)($at)
/* D6F34 801764F4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* D6F38 801764F8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* D6F3C 801764FC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray4)
/* D6F40 80176500 3C05800B */  lui        $a1, %hi(func_800B1870)
/* D6F44 80176504 8D2A0000 */  lw         $t2, 0x0($t1)
/* D6F48 80176508 24A51870 */  addiu      $a1, $a1, %lo(func_800B1870)
/* D6F4C 8017650C 000A5880 */  sll        $t3, $t2, 2
/* D6F50 80176510 008B2021 */  addu       $a0, $a0, $t3
/* D6F54 80176514 0C02C7DA */  jal        func_800B1F68
/* D6F58 80176518 8C84EA50 */   lw        $a0, %lo(gEntityGObjProcessArray4)($a0)
/* D6F5C 8017651C 3C040002 */  lui        $a0, (0x20007 >> 16)
/* D6F60 80176520 0C048BC2 */  jal        func_80122F08
/* D6F64 80176524 34840007 */   ori       $a0, $a0, (0x20007 & 0xFFFF)
/* D6F68 80176528 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D6F6C 8017652C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
glabel func_80176530_ovl5
/* D6F70 80176530 3C018019 */  lui        $at, %hi(D_801974B8_ovl3)
/* D6F74 80176534 C42074B8 */  lwc1       $f0, %lo(D_801974B8_ovl3)($at)
/* D6F78 80176538 8C4C0000 */  lw         $t4, 0x0($v0)
/* D6F7C 8017653C 3C018019 */  lui        $at, %hi(D_801974BC_ovl3)
/* D6F80 80176540 C42C74BC */  lwc1       $f12, %lo(D_801974BC_ovl3)($at)
/* D6F84 80176544 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* D6F88 80176548 000C6880 */  sll        $t5, $t4, 2
/* D6F8C 8017654C 002D0821 */  addu       $at, $at, $t5
/* D6F90 80176550 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* D6F94 80176554 8C4E0000 */  lw         $t6, 0x0($v0)
/* D6F98 80176558 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* D6F9C 8017655C 240CFFFF */  addiu      $t4, $zero, -0x1
/* D6FA0 80176560 000EC080 */  sll        $t8, $t6, 2
/* D6FA4 80176564 00380821 */  addu       $at, $at, $t8
/* D6FA8 80176568 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* D6FAC 8017656C 8C590000 */  lw         $t9, 0x0($v0)
/* D6FB0 80176570 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* D6FB4 80176574 44801000 */  mtc1       $zero, $f2
.L80176578_ovl5:
/* D6FB8 80176578 00197880 */  sll        $t7, $t9, 2
/* D6FBC 8017657C 002F0821 */  addu       $at, $at, $t7
/* D6FC0 80176580 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
/* D6FC4 80176584 AE00015C */  sw         $zero, 0x15C($s0)
/* D6FC8 80176588 8C480000 */  lw         $t0, 0x0($v0)
/* D6FCC 8017658C 3C01800E */  lui        $at, %hi(D_800DF310)
/* D6FD0 80176590 3C04800E */  lui        $a0, %hi(D_800E6690)
/* D6FD4 80176594 00084880 */  sll        $t1, $t0, 2
/* D6FD8 80176598 00290821 */  addu       $at, $at, $t1
/* D6FDC 8017659C AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
/* D6FE0 801765A0 3C01800D */  lui        $at, %hi(D_800D6ED0 + 0x40)
/* D6FE4 801765A4 AC206F10 */  sw         $zero, %lo(D_800D6ED0 + 0x40)($at)
/* D6FE8 801765A8 A60000B4 */  sh         $zero, 0xB4($s0)
/* D6FEC 801765AC 860B00B4 */  lh         $t3, 0xB4($s0)
/* D6FF0 801765B0 A2000007 */  sb         $zero, 0x7($s0)
/* D6FF4 801765B4 A2000004 */  sb         $zero, 0x4($s0)
/* D6FF8 801765B8 A20000B0 */  sb         $zero, 0xB0($s0)
/* D6FFC 801765BC A20000B1 */  sb         $zero, 0xB1($s0)
/* D7000 801765C0 A60B00B2 */  sh         $t3, 0xB2($s0)
/* D7004 801765C4 8C4D0000 */  lw         $t5, 0x0($v0)
/* D7008 801765C8 3C01800F */  lui        $at, %hi(D_800E7CE0 + 0x380)
/* D700C 801765CC 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* D7010 801765D0 000D7080 */  sll        $t6, $t5, 2
/* D7014 801765D4 002E0821 */  addu       $at, $at, $t6
/* D7018 801765D8 AC2C8060 */  sw         $t4, %lo(D_800E7CE0 + 0x380)($at)
.L801765DC_ovl5:
/* D701C 801765DC 8C580000 */  lw         $t8, 0x0($v0)
/* D7020 801765E0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D7024 801765E4 3C05800E */  lui        $a1, %hi(D_800E3750)
/* D7028 801765E8 0018C880 */  sll        $t9, $t8, 2
glabel func_801765EC_ovl5
/* D702C 801765EC 00997821 */  addu       $t7, $a0, $t9
/* D7030 801765F0 E5E20000 */  swc1       $f2, 0x0($t7)
/* D7034 801765F4 8C430000 */  lw         $v1, 0x0($v0)
/* D7038 801765F8 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* D703C 801765FC 44804000 */  mtc1       $zero, $f8
/* D7040 80176600 00031880 */  sll        $v1, $v1, 2
/* D7044 80176604 00834021 */  addu       $t0, $a0, $v1
/* D7048 80176608 C5040000 */  lwc1       $f4, 0x0($t0)
/* D704C 8017660C 00230821 */  addu       $at, $at, $v1
/* D7050 80176610 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* D7054 80176614 8C490000 */  lw         $t1, 0x0($v0)
/* D7058 80176618 3C01800E */  lui        $at, %hi(D_800E6850)
.L8017661C_ovl5:
/* D705C 8017661C 00095080 */  sll        $t2, $t1, 2
/* D7060 80176620 002A0821 */  addu       $at, $at, $t2
/* D7064 80176624 E42C6850 */  swc1       $f12, %lo(D_800E6850)($at)
/* D7068 80176628 8C4B0000 */  lw         $t3, 0x0($v0)
/* D706C 8017662C 3C01800E */  lui        $at, %hi(D_800E3210)
/* D7070 80176630 000B6880 */  sll        $t5, $t3, 2
/* D7074 80176634 00AD6021 */  addu       $t4, $a1, $t5
.L80176638_ovl5:
/* D7078 80176638 E5820000 */  swc1       $f2, 0x0($t4)
/* D707C 8017663C 8C430000 */  lw         $v1, 0x0($v0)
/* D7080 80176640 00031880 */  sll        $v1, $v1, 2
/* D7084 80176644 00A37021 */  addu       $t6, $a1, $v1
/* D7088 80176648 C5C60000 */  lwc1       $f6, 0x0($t6)
/* D708C 8017664C 00230821 */  addu       $at, $at, $v1
/* D7090 80176650 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* D7094 80176654 8C580000 */  lw         $t8, 0x0($v0)
.L80176658_ovl5:
/* D7098 80176658 3C01800E */  lui        $at, %hi(D_800E3C90)
/* D709C 8017665C 0018C880 */  sll        $t9, $t8, 2
/* D70A0 80176660 00390821 */  addu       $at, $at, $t9
/* D70A4 80176664 E42C3C90 */  swc1       $f12, %lo(D_800E3C90)($at)
/* D70A8 80176668 8C4F0000 */  lw         $t7, 0x0($v0)
/* D70AC 8017666C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* D70B0 80176670 000F4080 */  sll        $t0, $t7, 2
/* D70B4 80176674 00280821 */  addu       $at, $at, $t0
/* D70B8 80176678 E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
.L8017667C_ovl5:
/* D70BC 8017667C 8E090034 */  lw         $t1, 0x34($s0)
/* D70C0 80176680 312A0001 */  andi       $t2, $t1, 0x1
/* D70C4 80176684 15400009 */  bnez       $t2, .L801766AC_ovl3
/* D70C8 80176688 00000000 */   nop
/* D70CC 8017668C 8C430000 */  lw         $v1, 0x0($v0)
/* D70D0 80176690 3C01800E */  lui        $at, %hi(D_800E17D0)
/* D70D4 80176694 00031880 */  sll        $v1, $v1, 2
/* D70D8 80176698 00230821 */  addu       $at, $at, $v1
/* D70DC 8017669C C42A17D0 */  lwc1       $f10, %lo(D_800E17D0)($at)
.L801766A0_ovl5:
/* D70E0 801766A0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* D70E4 801766A4 00230821 */  addu       $at, $at, $v1
/* D70E8 801766A8 E42A41D0 */  swc1       $f10, %lo(gEntitiesAngleYArray)($at)
.L801766AC_ovl3:
/* D70EC 801766AC 0C03EE45 */  jal        func_800FB914
/* D70F0 801766B0 00002025 */   or        $a0, $zero, $zero
.L801766B4_ovl5:
/* D70F4 801766B4 0C008322 */  jal        func_80020C88
/* D70F8 801766B8 00000000 */   nop
/* D70FC 801766BC 0C029FAD */  jal        func_800A7EB4
/* D7100 801766C0 00000000 */   nop
/* D7104 801766C4 8E0B00E8 */  lw         $t3, 0xE8($s0)
/* D7108 801766C8 44800000 */  mtc1       $zero, $f0
/* D710C 801766CC 3C01800D */  lui        $at, %hi(gKirbyHp)
/* D7110 801766D0 11600005 */  beqz       $t3, .L801766E8_ovl3
.L801766D4_ovl5:
/* D7114 801766D4 00000000 */   nop
/* D7118 801766D8 8E0D00E4 */  lw         $t5, 0xE4($s0)
/* D711C 801766DC 11A00002 */  beqz       $t5, .L801766E8_ovl3
/* D7120 801766E0 00000000 */   nop
/* D7124 801766E4 AE000030 */  sw         $zero, 0x30($s0)
.L801766E8_ovl3:
/* D7128 801766E8 C4306E50 */  lwc1       $f16, %lo(gKirbyHp)($at)
/* D712C 801766EC 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* D7130 801766F0 46100032 */  c.eq.s     $f0, $f16
/* D7134 801766F4 00000000 */  nop
.L801766F8_ovl5:
/* D7138 801766F8 45020010 */  bc1fl      .L8017673C_ovl3
/* D713C 801766FC 861900D4 */   lh        $t9, 0xD4($s0)
/* D7140 80176700 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* D7144 80176704 3C01800E */  lui        $at, %hi(D_800E7B20)
/* D7148 80176708 8D8E0000 */  lw         $t6, 0x0($t4)
/* D714C 8017670C 000EC080 */  sll        $t8, $t6, 2
/* D7150 80176710 00380821 */  addu       $at, $at, $t8
/* D7154 80176714 C4327B20 */  lwc1       $f18, %lo(D_800E7B20)($at)
/* D7158 80176718 46120032 */  c.eq.s     $f0, $f18
/* D715C 8017671C 00000000 */  nop
/* D7160 80176720 45030006 */  bc1tl      .L8017673C_ovl3
/* D7164 80176724 861900D4 */   lh        $t9, 0xD4($s0)
/* D7168 80176728 0C029D9E */  jal        play_sound
/* D716C 8017672C 240400DC */   addiu     $a0, $zero, 0xDC
/* D7170 80176730 1000000B */  b          .L80176760_ovl3
/* D7174 80176734 00000000 */   nop
/* D7178 80176738 861900D4 */  lh         $t9, 0xD4($s0)
.L8017673C_ovl3:
/* D717C 8017673C 2B210002 */  slti       $at, $t9, 0x2
/* D7180 80176740 14200005 */  bnez       $at, .L80176758_ovl3
/* D7184 80176744 00000000 */   nop
/* D7188 80176748 0C029D9E */  jal        play_sound
/* D718C 8017674C 240400D9 */   addiu     $a0, $zero, 0xD9
.L80176750_ovl5:
/* D7190 80176750 10000003 */  b          .L80176760_ovl3
/* D7194 80176754 00000000 */   nop
.L80176758_ovl3:
/* D7198 80176758 0C029D9E */  jal        play_sound
/* D719C 8017675C 240400D8 */   addiu     $a0, $zero, 0xD8
.L80176760_ovl3:
/* D71A0 80176760 0C04768D */  jal        func_8011DA34
/* D71A4 80176764 00000000 */   nop
/* D71A8 80176768 00002025 */  or         $a0, $zero, $zero
/* D71AC 8017676C 0C008266 */  jal        func_80020998
/* D71B0 80176770 24057800 */   addiu     $a1, $zero, 0x7800
/* D71B4 80176774 00002025 */  or         $a0, $zero, $zero
/* D71B8 80176778 0C029D6C */  jal        play_music
/* D71BC 8017677C 24050005 */   addiu     $a1, $zero, 0x5
/* D71C0 80176780 0C05D8E6 */  jal        func_80176398_ovl3
/* D71C4 80176784 00000000 */   nop
.L80176788_ovl5:
/* D71C8 80176788 0C02ED26 */  jal        func_800BB498
/* D71CC 8017678C 00000000 */   nop
/* D71D0 80176790 24040002 */  addiu      $a0, $zero, 0x2
/* D71D4 80176794 0C02ED1A */  jal        func_800BB468
/* D71D8 80176798 00002825 */   or        $a1, $zero, $zero
/* D71DC 8017679C 3C10800D */  lui        $s0, %hi(D_800D6B54 + 0x4)
/* D71E0 801767A0 26106B58 */  addiu      $s0, $s0, %lo(D_800D6B54 + 0x4)
/* D71E4 801767A4 240F0400 */  addiu      $t7, $zero, 0x400
/* D71E8 801767A8 AE0F0000 */  sw         $t7, 0x0($s0)
/* D71EC 801767AC 24080001 */  addiu      $t0, $zero, 0x1
/* D71F0 801767B0 3C01800D */  lui        $at, %hi(D_800D6B54)
/* D71F4 801767B4 AC286B54 */  sw         $t0, %lo(D_800D6B54)($at)
/* D71F8 801767B8 3C01800C */  lui        $at, %hi(D_800BE4F8)
/* D71FC 801767BC 24090006 */  addiu      $t1, $zero, 0x6
/* D7200 801767C0 3C040002 */  lui        $a0, (0x20065 >> 16)
/* D7204 801767C4 3C050002 */  lui        $a1, (0x20066 >> 16)
/* D7208 801767C8 AC29E4F8 */  sw         $t1, %lo(D_800BE4F8)($at)
/* D720C 801767CC 34A50066 */  ori        $a1, $a1, (0x20066 & 0xFFFF)
/* D7210 801767D0 34840065 */  ori        $a0, $a0, (0x20065 & 0xFFFF)
/* D7214 801767D4 0C048C3A */  jal        func_801230E8
.L801767D8_ovl5:
/* D7218 801767D8 24060001 */   addiu     $a2, $zero, 0x1
/* D721C 801767DC 240A005A */  addiu      $t2, $zero, 0x5A
/* D7220 801767E0 AE0A0000 */  sw         $t2, 0x0($s0)
/* D7224 801767E4 240B0001 */  addiu      $t3, $zero, 0x1
/* D7228 801767E8 3C01800D */  lui        $at, %hi(D_800D6B54)
/* D722C 801767EC AC2B6B54 */  sw         $t3, %lo(D_800D6B54)($at)
/* D7230 801767F0 3C01800C */  lui        $at, %hi(D_800BE4F8)
/* D7234 801767F4 240D0006 */  addiu      $t5, $zero, 0x6
/* D7238 801767F8 0C02BE85 */  jal        func_800AFA14
/* D723C 801767FC AC2DE4F8 */   sw        $t5, %lo(D_800BE4F8)($at)
/* D7240 80176800 8FBF001C */  lw         $ra, 0x1C($sp)
/* D7244 80176804 8FB00018 */  lw         $s0, 0x18($sp)
/* D7248 80176808 27BD0020 */  addiu      $sp, $sp, 0x20
.L8017680C_ovl5:
/* D724C 8017680C 03E00008 */  jr         $ra
/* D7250 80176810 00000000 */   nop
