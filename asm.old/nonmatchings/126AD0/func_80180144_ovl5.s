glabel func_80180144_ovl5
/* 1275B4 80180144 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1275B8 80180148 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 1275BC 8018014C AFBF001C */  sw         $ra, 0x1C($sp)
/* 1275C0 80180150 44816000 */  mtc1       $at, $f12
/* 1275C4 80180154 0C02906C */  jal        func_800A41B0
.L80180158_ovl3:
/* 1275C8 80180158 00000000 */   nop
/* 1275CC 8018015C 24040019 */  addiu      $a0, $zero, 0x19
/* 1275D0 80180160 3C058000 */  lui        $a1, (0x80000000 >> 16)
/* 1275D4 80180164 24060063 */  addiu      $a2, $zero, 0x63
/* 1275D8 80180168 24070001 */  addiu      $a3, $zero, 0x1
/* 1275DC 8018016C 0C002F7C */  jal        func_8000BDF0
/* 1275E0 80180170 AFA00010 */   sw        $zero, 0x10($sp)
/* 1275E4 80180174 0C02B812 */  jal        func_800AE048
.L80180178_ovl3:
/* 1275E8 80180178 24040080 */   addiu     $a0, $zero, 0x80
.L8018017C_ovl3:
/* 1275EC 8018017C 0C02B83C */  jal        func_800AE0F0
/* 1275F0 80180180 00000000 */   nop
/* 1275F4 80180184 0C029B99 */  jal        func_800A6E64
/* 1275F8 80180188 00000000 */   nop
/* 1275FC 8018018C 0C02A1C9 */  jal        func_800A8724
/* 127600 80180190 00002025 */   or        $a0, $zero, $zero
/* 127604 80180194 00002025 */  or         $a0, $zero, $zero
/* 127608 80180198 0C029D6C */  jal        play_music
/* 12760C 8018019C 24050007 */   addiu     $a1, $zero, 0x7
/* 127610 801801A0 0C029AF0 */  jal        func_800A6BC0
/* 127614 801801A4 2404000A */   addiu     $a0, $zero, 0xA
/* 127618 801801A8 0C060020 */  jal        func_80180080_ovl5
/* 12761C 801801AC 00000000 */   nop
/* 127620 801801B0 2404000C */  addiu      $a0, $zero, 0xC
/* 127624 801801B4 00002825 */  or         $a1, $zero, $zero
/* 127628 801801B8 0C02BB1C */  jal        func_800AEC70
/* 12762C 801801BC 24060070 */   addiu     $a2, $zero, 0x70
/* 127630 801801C0 00027080 */  sll        $t6, $v0, 2
.L801801C4_ovl3:
/* 127634 801801C4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 127638 801801C8 002E0821 */  addu       $at, $at, $t6
/* 12763C 801801CC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 127640 801801D0 2404000C */  addiu      $a0, $zero, 0xC
/* 127644 801801D4 00002825 */  or         $a1, $zero, $zero
/* 127648 801801D8 0C02BB1C */  jal        func_800AEC70
/* 12764C 801801DC 24060070 */   addiu     $a2, $zero, 0x70
/* 127650 801801E0 0002C080 */  sll        $t8, $v0, 2
/* 127654 801801E4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 127658 801801E8 00380821 */  addu       $at, $at, $t8
/* 12765C 801801EC 240F0001 */  addiu      $t7, $zero, 0x1
/* 127660 801801F0 AC2F98E0 */  sw         $t7, %lo(D_800E98E0)($at)
/* 127664 801801F4 2404000C */  addiu      $a0, $zero, 0xC
/* 127668 801801F8 00002825 */  or         $a1, $zero, $zero
/* 12766C 801801FC 0C02BB1C */  jal        func_800AEC70
.L80180200_ovl3:
/* 127670 80180200 24060070 */   addiu     $a2, $zero, 0x70
/* 127674 80180204 00024080 */  sll        $t0, $v0, 2
/* 127678 80180208 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 12767C 8018020C 00280821 */  addu       $at, $at, $t0
/* 127680 80180210 24190002 */  addiu      $t9, $zero, 0x2
/* 127684 80180214 AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
/* 127688 80180218 2404000C */  addiu      $a0, $zero, 0xC
/* 12768C 8018021C 00002825 */  or         $a1, $zero, $zero
/* 127690 80180220 0C02BB1C */  jal        func_800AEC70
/* 127694 80180224 24060070 */   addiu     $a2, $zero, 0x70
/* 127698 80180228 00025080 */  sll        $t2, $v0, 2
/* 12769C 8018022C 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 1276A0 80180230 002A0821 */  addu       $at, $at, $t2
/* 1276A4 80180234 24090003 */  addiu      $t1, $zero, 0x3
/* 1276A8 80180238 3C058018 */  lui        $a1, %hi(func_80180104_ovl5)
/* 1276AC 8018023C AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
/* 1276B0 80180240 24A50104 */  addiu      $a1, $a1, %lo(func_80180104_ovl5)
/* 1276B4 80180244 00002025 */  or         $a0, $zero, $zero
.L80180248_ovl3:
/* 1276B8 80180248 2406001A */  addiu      $a2, $zero, 0x1A
/* 1276BC 8018024C 0C002860 */  jal        func_8000A180
/* 1276C0 80180250 3C078000 */   lui       $a3, (0x80000000 >> 16)
/* 1276C4 80180254 00002025 */  or         $a0, $zero, $zero
/* 1276C8 80180258 00002825 */  or         $a1, $zero, $zero
/* 1276CC 8018025C 0C0295D1 */  jal        func_800A5744
/* 1276D0 80180260 00003025 */   or        $a2, $zero, $zero
/* 1276D4 80180264 240400FF */  addiu      $a0, $zero, 0xFF
/* 1276D8 80180268 2405FFF0 */  addiu      $a1, $zero, -0x10
/* 1276DC 8018026C 0C029685 */  jal        func_800A5A14
/* 1276E0 80180270 00003025 */   or        $a2, $zero, $zero
/* 1276E4 80180274 8FBF001C */  lw         $ra, 0x1C($sp)
.L80180278_ovl3:
/* 1276E8 80180278 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1276EC 8018027C 03E00008 */  jr         $ra
/* 1276F0 80180280 00000000 */   nop
