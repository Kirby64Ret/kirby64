glabel func_80211FC8_ovl9
/* 1C0018 80211FC8 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 1C001C 80211FCC 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 1C0020 80211FD0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 1C0024 80211FD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C0028 80211FD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C002C 80211FDC AFA40018 */  sw         $a0, 0x18($sp)
/* 1C0030 80211FE0 8DC30000 */  lw         $v1, 0x0($t6)
/* 1C0034 80211FE4 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1C0038 80211FE8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C003C 80211FEC 00031880 */  sll        $v1, $v1, 2
/* 1C0040 80211FF0 00431021 */  addu       $v0, $v0, $v1
/* 1C0044 80211FF4 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1C0048 80211FF8 00230821 */  addu       $at, $at, $v1
/* 1C004C 80211FFC 240F0004 */  addiu      $t7, $zero, 0x4
/* 1C0050 80212000 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1C0054 80212004 3C18801D */  lui        $t8, %hi(D_801CCACC)
/* 1C0058 80212008 2718CACC */  addiu      $t8, $t8, %lo(D_801CCACC)
/* 1C005C 8021200C AC400048 */  sw         $zero, 0x48($v0)
/* 1C0060 80212010 AC580098 */  sw         $t8, 0x98($v0)
/* 1C0064 80212014 8CB90000 */  lw         $t9, 0x0($a1)
/* 1C0068 80212018 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1C006C 8021201C 3C040001 */  lui        $a0, (0x100E4 >> 16)
/* 1C0070 80212020 8F280000 */  lw         $t0, 0x0($t9)
/* 1C0074 80212024 348400E4 */  ori        $a0, $a0, (0x100E4 & 0xFFFF)
/* 1C0078 80212028 00084880 */  sll        $t1, $t0, 2
/* 1C007C 8021202C 00290821 */  addu       $at, $at, $t1
/* 1C0080 80212030 0C02A806 */  jal        func_800AA018
/* 1C0084 80212034 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 1C0088 80212038 3C040001 */  lui        $a0, (0x100E5 >> 16)
/* 1C008C 8021203C 0C02A806 */  jal        func_800AA018
/* 1C0090 80212040 348400E5 */   ori       $a0, $a0, (0x100E5 & 0xFFFF)
/* 1C0094 80212044 0C029D9E */  jal        play_sound
/* 1C0098 80212048 2404021E */   addiu     $a0, $zero, 0x21E
/* 1C009C 8021204C 0C02BC9F */  jal        func_800AF27C
/* 1C00A0 80212050 00000000 */   nop
/* 1C00A4 80212054 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C00A8 80212058 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C00AC 8021205C 3C018022 */  lui        $at, %hi(D_8021DD58_ovl9)
/* 1C00B0 80212060 C424DD58 */  lwc1       $f4, %lo(D_8021DD58_ovl9)($at)
/* 1C00B4 80212064 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1C00B8 80212068 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1C00BC 8021206C 000A5880 */  sll        $t3, $t2, 2
/* 1C00C0 80212070 002B0821 */  addu       $at, $at, $t3
/* 1C00C4 80212074 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* 1C00C8 80212078 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1C00CC 8021207C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1C00D0 80212080 44813000 */  mtc1       $at, $f6
/* 1C00D4 80212084 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1C00D8 80212088 000C6880 */  sll        $t5, $t4, 2
/* 1C00DC 8021208C 002D0821 */  addu       $at, $at, $t5
/* 1C00E0 80212090 0C02BE85 */  jal        func_800AFA14
/* 1C00E4 80212094 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
/* 1C00E8 80212098 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C00EC 8021209C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C00F0 802120A0 03E00008 */  jr         $ra
/* 1C00F4 802120A4 00000000 */   nop
