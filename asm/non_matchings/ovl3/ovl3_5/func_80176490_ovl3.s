glabel func_80176490_ovl3
/* 0D6ED0 80176490 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D6ED4 80176494 AFB00018 */  sw    $s0, 0x18($sp)
/* 0D6ED8 80176498 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0D6EDC 8017649C 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0D6EE0 801764A0 240E0001 */  li    $t6, 1
/* 0D6EE4 801764A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D6EE8 801764A8 AE0E0030 */  sw    $t6, 0x30($s0)
/* 0D6EEC 801764AC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0D6EF0 801764B0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0D6EF4 801764B4 0C02BB30 */  jal   func_800AECC0
/* 0D6EF8 801764B8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0D6EFC 801764BC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0D6F00 801764C0 0C02BB48 */  jal   func_800AED20
/* 0D6F04 801764C4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0D6F08 801764C8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0D6F0C 801764CC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0D6F10 801764D0 3C0F8017 */  lui   $t7, %hi(D_80176814) # $t7, 0x8017
/* 0D6F14 801764D4 3C01800E */ lui $at, %hi(D_800DF150)
/* 0D6F18 801764D8 8F190000 */  lw    $t9, ($t8)
/* 0D6F1C 801764DC 25EF6814 */  addiu $t7, %lo(D_80176814) # addiu $t7, $t7, 0x6814
/* 0D6F20 801764E0 00002025 */  move  $a0, $zero
/* 0D6F24 801764E4 00194080 */  sll   $t0, $t9, 2
/* 0D6F28 801764E8 00280821 */  addu  $at, $at, $t0
/* 0D6F2C 801764EC 0C048BEC */  jal   func_80122FB0
/* 0D6F30 801764F0 AC2FF150 */ sw $t7, %lo(D_800DF150)($at)
/* 0D6F34 801764F4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0D6F38 801764F8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0D6F3C 801764FC 3C04800E */ lui $a0, %hi(D_800DEA50)
/* 0D6F40 80176500 3C05800B */  lui   $a1, %hi(D_800B1870) # $a1, 0x800b
/* 0D6F44 80176504 8D2A0000 */  lw    $t2, ($t1)
/* 0D6F48 80176508 24A51870 */  addiu $a1, %lo(D_800B1870) # addiu $a1, $a1, 0x1870
/* 0D6F4C 8017650C 000A5880 */  sll   $t3, $t2, 2
/* 0D6F50 80176510 008B2021 */  addu  $a0, $a0, $t3
/* 0D6F54 80176514 0C02C7DA */  jal   func_800B1F68
/* 0D6F58 80176518 8C84EA50 */ lw $a0, %lo(D_800DEA50)($a0)
/* 0D6F5C 8017651C 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0D6F60 80176520 0C048BC2 */  jal   func_80122F08
/* 0D6F64 80176524 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0D6F68 80176528 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D6F6C 8017652C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D6F70 80176530 3C018019 */  lui   $at, %hi(D_801974B8) # $at, 0x8019
/* 0D6F74 80176534 C42074B8 */  lwc1  $f0, %lo(D_801974B8)($at)
/* 0D6F78 80176538 8C4C0000 */  lw    $t4, ($v0)
/* 0D6F7C 8017653C 3C018019 */  lui   $at, %hi(D_801974BC) # $at, 0x8019
/* 0D6F80 80176540 C42C74BC */  lwc1  $f12, %lo(D_801974BC)($at)
/* 0D6F84 80176544 3C01800E */ lui $at, %hi(D_800E4550)
/* 0D6F88 80176548 000C6880 */  sll   $t5, $t4, 2
/* 0D6F8C 8017654C 002D0821 */  addu  $at, $at, $t5
/* 0D6F90 80176550 E4204550 */ swc1 $f0, %lo(D_800E4550)($at)
/* 0D6F94 80176554 8C4E0000 */  lw    $t6, ($v0)
/* 0D6F98 80176558 3C01800E */ lui $at, %hi(D_800E4710)
/* 0D6F9C 8017655C 240CFFFF */  li    $t4, -1
/* 0D6FA0 80176560 000EC080 */  sll   $t8, $t6, 2
/* 0D6FA4 80176564 00380821 */  addu  $at, $at, $t8
/* 0D6FA8 80176568 E4204710 */ swc1 $f0, %lo(D_800E4710)($at)
/* 0D6FAC 8017656C 8C590000 */  lw    $t9, ($v0)
/* 0D6FB0 80176570 3C01800E */ lui $at, %hi(D_800E48D0)
/* 0D6FB4 80176574 44801000 */  mtc1  $zero, $f2
/* 0D6FB8 80176578 00197880 */  sll   $t7, $t9, 2
/* 0D6FBC 8017657C 002F0821 */  addu  $at, $at, $t7
/* 0D6FC0 80176580 E42048D0 */ swc1 $f0, %lo(D_800E48D0)($at)
/* 0D6FC4 80176584 AE00015C */  sw    $zero, 0x15c($s0)
/* 0D6FC8 80176588 8C480000 */  lw    $t0, ($v0)
/* 0D6FCC 8017658C 3C01800E */ lui $at, %hi(D_800DF310)
/* 0D6FD0 80176590 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0D6FD4 80176594 00084880 */  sll   $t1, $t0, 2
/* 0D6FD8 80176598 00290821 */  addu  $at, $at, $t1
/* 0D6FDC 8017659C AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 0D6FE0 801765A0 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D6FE4 801765A4 AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D6FE8 801765A8 A60000B4 */  sh    $zero, 0xb4($s0)
/* 0D6FEC 801765AC 860B00B4 */  lh    $t3, 0xb4($s0)
/* 0D6FF0 801765B0 A2000007 */  sb    $zero, 7($s0)
/* 0D6FF4 801765B4 A2000004 */  sb    $zero, 4($s0)
/* 0D6FF8 801765B8 A20000B0 */  sb    $zero, 0xb0($s0)
/* 0D6FFC 801765BC A20000B1 */  sb    $zero, 0xb1($s0)
/* 0D7000 801765C0 A60B00B2 */  sh    $t3, 0xb2($s0)
/* 0D7004 801765C4 8C4D0000 */  lw    $t5, ($v0)
/* 0D7008 801765C8 3C01800F */ lui $at, %hi(D_800E8060)
/* 0D700C 801765CC 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0D7010 801765D0 000D7080 */  sll   $t6, $t5, 2
/* 0D7014 801765D4 002E0821 */  addu  $at, $at, $t6
/* 0D7018 801765D8 AC2C8060 */ sw $t4, %lo(D_800E8060)($at)
/* 0D701C 801765DC 8C580000 */  lw    $t8, ($v0)
/* 0D7020 801765E0 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D7024 801765E4 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D7028 801765E8 0018C880 */  sll   $t9, $t8, 2
/* 0D702C 801765EC 00997821 */  addu  $t7, $a0, $t9
/* 0D7030 801765F0 E5E20000 */  swc1  $f2, ($t7)
/* 0D7034 801765F4 8C430000 */  lw    $v1, ($v0)
/* 0D7038 801765F8 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D703C 801765FC 44804000 */  mtc1  $zero, $f8
/* 0D7040 80176600 00031880 */  sll   $v1, $v1, 2
/* 0D7044 80176604 00834021 */  addu  $t0, $a0, $v1
/* 0D7048 80176608 C5040000 */  lwc1  $f4, ($t0)
/* 0D704C 8017660C 00230821 */  addu  $at, $at, $v1
/* 0D7050 80176610 E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 0D7054 80176614 8C490000 */  lw    $t1, ($v0)
/* 0D7058 80176618 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D705C 8017661C 00095080 */  sll   $t2, $t1, 2
/* 0D7060 80176620 002A0821 */  addu  $at, $at, $t2
/* 0D7064 80176624 E42C6850 */ swc1 $f12, %lo(D_800E6850)($at)
/* 0D7068 80176628 8C4B0000 */  lw    $t3, ($v0)
/* 0D706C 8017662C 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D7070 80176630 000B6880 */  sll   $t5, $t3, 2
/* 0D7074 80176634 00AD6021 */  addu  $t4, $a1, $t5
/* 0D7078 80176638 E5820000 */  swc1  $f2, ($t4)
/* 0D707C 8017663C 8C430000 */  lw    $v1, ($v0)
/* 0D7080 80176640 00031880 */  sll   $v1, $v1, 2
/* 0D7084 80176644 00A37021 */  addu  $t6, $a1, $v1
/* 0D7088 80176648 C5C60000 */  lwc1  $f6, ($t6)
/* 0D708C 8017664C 00230821 */  addu  $at, $at, $v1
/* 0D7090 80176650 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0D7094 80176654 8C580000 */  lw    $t8, ($v0)
/* 0D7098 80176658 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D709C 8017665C 0018C880 */  sll   $t9, $t8, 2
/* 0D70A0 80176660 00390821 */  addu  $at, $at, $t9
/* 0D70A4 80176664 E42C3C90 */ swc1 $f12, %lo(D_800E3C90)($at)
/* 0D70A8 80176668 8C4F0000 */  lw    $t7, ($v0)
/* 0D70AC 8017666C 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 0D70B0 80176670 000F4080 */  sll   $t0, $t7, 2
/* 0D70B4 80176674 00280821 */  addu  $at, $at, $t0
/* 0D70B8 80176678 E4284010 */ swc1 $f8, %lo(gEntitiesAngleXArray)($at)
/* 0D70BC 8017667C 8E090034 */  lw    $t1, 0x34($s0)
/* 0D70C0 80176680 312A0001 */  andi  $t2, $t1, 1
/* 0D70C4 80176684 15400009 */  bnez  $t2, .L801766AC_ovl3
/* 0D70C8 80176688 00000000 */   nop   
/* 0D70CC 8017668C 8C430000 */  lw    $v1, ($v0)
/* 0D70D0 80176690 3C01800E */ lui $at, %hi(D_800E17D0)
/* 0D70D4 80176694 00031880 */  sll   $v1, $v1, 2
/* 0D70D8 80176698 00230821 */  addu  $at, $at, $v1
/* 0D70DC 8017669C C42A17D0 */ lwc1 $f10, %lo(D_800E17D0)($at)
/* 0D70E0 801766A0 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 0D70E4 801766A4 00230821 */  addu  $at, $at, $v1
/* 0D70E8 801766A8 E42A41D0 */ swc1 $f10, %lo(gEntitiesAngleYArray)($at)
.L801766AC_ovl3:
/* 0D70EC 801766AC 0C03EE45 */  jal   func_800FB914
/* 0D70F0 801766B0 00002025 */   move  $a0, $zero
/* 0D70F4 801766B4 0C008322 */  jal   func_80020C88_ovl3
/* 0D70F8 801766B8 00000000 */   nop   
/* 0D70FC 801766BC 0C029FAD */  jal   func_800A7EB4
/* 0D7100 801766C0 00000000 */   nop   
/* 0D7104 801766C4 8E0B00E8 */  lw    $t3, 0xe8($s0)
/* 0D7108 801766C8 44800000 */  mtc1  $zero, $f0
/* 0D710C 801766CC 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0D7110 801766D0 11600005 */  beqz  $t3, .L801766E8_ovl3
/* 0D7114 801766D4 00000000 */   nop   
/* 0D7118 801766D8 8E0D00E4 */  lw    $t5, 0xe4($s0)
/* 0D711C 801766DC 11A00002 */  beqz  $t5, .L801766E8_ovl3
/* 0D7120 801766E0 00000000 */   nop   
/* 0D7124 801766E4 AE000030 */  sw    $zero, 0x30($s0)
.L801766E8_ovl3:
/* 0D7128 801766E8 C4306E50 */  lwc1  $f16, %lo(gKirbyHp)($at)
/* 0D712C 801766EC 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0D7130 801766F0 46100032 */  c.eq.s $f0, $f16
/* 0D7134 801766F4 00000000 */  nop   
/* 0D7138 801766F8 45020010 */  bc1fl .L8017673C_ovl3
/* 0D713C 801766FC 861900D4 */   lh    $t9, 0xd4($s0)
/* 0D7140 80176700 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0D7144 80176704 3C01800E */ lui $at, %hi(D_800E7B20)
/* 0D7148 80176708 8D8E0000 */  lw    $t6, ($t4)
/* 0D714C 8017670C 000EC080 */  sll   $t8, $t6, 2
/* 0D7150 80176710 00380821 */  addu  $at, $at, $t8
/* 0D7154 80176714 C4327B20 */ lwc1 $f18, %lo(D_800E7B20)($at)
/* 0D7158 80176718 46120032 */  c.eq.s $f0, $f18
/* 0D715C 8017671C 00000000 */  nop   
/* 0D7160 80176720 45030006 */  bc1tl .L8017673C_ovl3
/* 0D7164 80176724 861900D4 */   lh    $t9, 0xd4($s0)
/* 0D7168 80176728 0C029D9E */  jal   play_sound
/* 0D716C 8017672C 240400DC */   li    $a0, 220
/* 0D7170 80176730 1000000B */  b     .L80176760_ovl3
/* 0D7174 80176734 00000000 */   nop   
/* 0D7178 80176738 861900D4 */  lh    $t9, 0xd4($s0)
.L8017673C_ovl3:
/* 0D717C 8017673C 2B210002 */  slti  $at, $t9, 2
/* 0D7180 80176740 14200005 */  bnez  $at, .L80176758_ovl3
/* 0D7184 80176744 00000000 */   nop   
/* 0D7188 80176748 0C029D9E */  jal   play_sound
/* 0D718C 8017674C 240400D9 */   li    $a0, 217
/* 0D7190 80176750 10000003 */  b     .L80176760_ovl3
/* 0D7194 80176754 00000000 */   nop   
.L80176758_ovl3:
/* 0D7198 80176758 0C029D9E */  jal   play_sound
/* 0D719C 8017675C 240400D8 */   li    $a0, 216
.L80176760_ovl3:
/* 0D71A0 80176760 0C04768D */  jal   func_8011DA34
/* 0D71A4 80176764 00000000 */   nop   
/* 0D71A8 80176768 00002025 */  move  $a0, $zero
/* 0D71AC 8017676C 0C008266 */  jal   func_80020998_ovl3
/* 0D71B0 80176770 24057800 */   li    $a1, 30720
/* 0D71B4 80176774 00002025 */  move  $a0, $zero
/* 0D71B8 80176778 0C029D6C */  jal   func_800A75B0
/* 0D71BC 8017677C 24050005 */   li    $a1, 5
/* 0D71C0 80176780 0C05D8E6 */  jal   func_80176398_ovl3
/* 0D71C4 80176784 00000000 */   nop   
/* 0D71C8 80176788 0C02ED26 */  jal   func_800BB498
/* 0D71CC 8017678C 00000000 */   nop   
/* 0D71D0 80176790 24040002 */  li    $a0, 2
/* 0D71D4 80176794 0C02ED1A */  jal   func_800BB468
/* 0D71D8 80176798 00002825 */   move  $a1, $zero
/* 0D71DC 8017679C 3C10800D */  lui   $s0, %hi(D_800D6B58) # $s0, 0x800d
/* 0D71E0 801767A0 26106B58 */  addiu $s0, %lo(D_800D6B58) # addiu $s0, $s0, 0x6b58
/* 0D71E4 801767A4 240F0400 */  li    $t7, 1024
/* 0D71E8 801767A8 AE0F0000 */  sw    $t7, ($s0)
/* 0D71EC 801767AC 24080001 */  li    $t0, 1
/* 0D71F0 801767B0 3C01800D */  lui   $at, %hi(D_800D6B54) # $at, 0x800d
/* 0D71F4 801767B4 AC286B54 */  sw    $t0, %lo(D_800D6B54)($at)
/* 0D71F8 801767B8 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0D71FC 801767BC 24090006 */  li    $t1, 6
/* 0D7200 801767C0 3C040002 */  lui   $a0, (0x00020065 >> 16) # lui $a0, 2
/* 0D7204 801767C4 3C050002 */  lui   $a1, (0x00020066 >> 16) # lui $a1, 2
/* 0D7208 801767C8 AC29E4F8 */  sw    $t1, %lo(D_800BE4F8)($at)
/* 0D720C 801767CC 34A50066 */  ori   $a1, (0x00020066 & 0xFFFF) # ori $a1, $a1, 0x66
/* 0D7210 801767D0 34840065 */  ori   $a0, (0x00020065 & 0xFFFF) # ori $a0, $a0, 0x65
/* 0D7214 801767D4 0C048C3A */  jal   func_801230E8
/* 0D7218 801767D8 24060001 */   li    $a2, 1
/* 0D721C 801767DC 240A005A */  li    $t2, 90
/* 0D7220 801767E0 AE0A0000 */  sw    $t2, ($s0)
/* 0D7224 801767E4 240B0001 */  li    $t3, 1
/* 0D7228 801767E8 3C01800D */  lui   $at, %hi(D_800D6B54) # $at, 0x800d
/* 0D722C 801767EC AC2B6B54 */  sw    $t3, %lo(D_800D6B54)($at)
/* 0D7230 801767F0 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0D7234 801767F4 240D0006 */  li    $t5, 6
/* 0D7238 801767F8 0C02BE85 */  jal   func_800AFA14
/* 0D723C 801767FC AC2DE4F8 */   sw    $t5, %lo(D_800BE4F8)($at)
/* 0D7240 80176800 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D7244 80176804 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D7248 80176808 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D724C 8017680C 03E00008 */  jr    $ra
/* 0D7250 80176810 00000000 */   nop   
