nonmatching func_801525E8_ovl4, 0x460

glabel func_801525E8_ovl4
    /* F9B18 801525E8 3C0E800D */  lui        $t6, %hi(D_800D6B80)
    /* F9B1C 801525EC 8DCE6B80 */  lw         $t6, %lo(D_800D6B80)($t6)
    /* F9B20 801525F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* F9B24 801525F4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* F9B28 801525F8 15C0010F */  bnez       $t6, .L80152A38_ovl4
    /* F9B2C 801525FC AFA40020 */   sw        $a0, 0x20($sp)
    /* F9B30 80152600 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* F9B34 80152604 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* F9B38 80152608 3C06800F */  lui        $a2, %hi(D_800E9AA0)
    /* F9B3C 8015260C 24C69AA0 */  addiu      $a2, $a2, %lo(D_800E9AA0)
    /* F9B40 80152610 8CA20000 */  lw         $v0, 0x0($a1)
    /* F9B44 80152614 00021080 */  sll        $v0, $v0, 2
    /* F9B48 80152618 00C21821 */  addu       $v1, $a2, $v0
    /* F9B4C 8015261C 8C640000 */  lw         $a0, 0x0($v1)
    /* F9B50 80152620 10800003 */  beqz       $a0, .L80152630_ovl4
    /* F9B54 80152624 248FFFFF */   addiu     $t7, $a0, -0x1
    /* F9B58 80152628 10000103 */  b          .L80152A38_ovl4
    /* F9B5C 8015262C AC6F0000 */   sw        $t7, 0x0($v1)
  .L80152630_ovl4:
    /* F9B60 80152630 3C07800F */  lui        $a3, %hi(D_800E9C60)
    /* F9B64 80152634 24E79C60 */  addiu      $a3, $a3, %lo(D_800E9C60)
    /* F9B68 80152638 00E2C021 */  addu       $t8, $a3, $v0
    /* F9B6C 8015263C 8F190000 */  lw         $t9, 0x0($t8)
    /* F9B70 80152640 17200008 */  bnez       $t9, .L80152664_ovl4
    /* F9B74 80152644 3C088016 */   lui       $t0, %hi(D_8015C694_ovl4)
    /* F9B78 80152648 8D08C694 */  lw         $t0, %lo(D_8015C694_ovl4)($t0)
    /* F9B7C 8015264C 00084880 */  sll        $t1, $t0, 2
    /* F9B80 80152650 00C95021 */  addu       $t2, $a2, $t1
    /* F9B84 80152654 8D4B0000 */  lw         $t3, 0x0($t2)
    /* F9B88 80152658 3C068005 */  lui        $a2, %hi(gPlayerControllers)
    /* F9B8C 8015265C 24C68F20 */  addiu      $a2, $a2, %lo(gPlayerControllers)
    /* F9B90 80152660 11600007 */  beqz       $t3, .L80152680_ovl4
  .L80152664_ovl4:
    /* F9B94 80152664 3C0C8016 */   lui       $t4, %hi(D_8015C698_ovl4)
    /* F9B98 80152668 8D8CC698 */  lw         $t4, %lo(D_8015C698_ovl4)($t4)
    /* F9B9C 8015266C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* F9BA0 80152670 000C6880 */  sll        $t5, $t4, 2
    /* F9BA4 80152674 002D0821 */  addu       $at, $at, $t5
    /* F9BA8 80152678 100000EF */  b          .L80152A38_ovl4
    /* F9BAC 8015267C AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
  .L80152680_ovl4:
    /* F9BB0 80152680 94C30002 */  lhu        $v1, 0x2($a2)
    /* F9BB4 80152684 3C04800F */  lui        $a0, %hi(D_800E9FE0)
    /* F9BB8 80152688 00822021 */  addu       $a0, $a0, $v0
    /* F9BBC 8015268C 306E9000 */  andi       $t6, $v1, 0x9000
    /* F9BC0 80152690 11C00024 */  beqz       $t6, .L80152724_ovl4
    /* F9BC4 80152694 30784000 */   andi      $t8, $v1, 0x4000
    /* F9BC8 80152698 8C849FE0 */  lw         $a0, %lo(D_800E9FE0)($a0)
    /* F9BCC 8015269C 240F0004 */  addiu      $t7, $zero, 0x4
    /* F9BD0 801526A0 2401029A */  addiu      $at, $zero, 0x29A
    /* F9BD4 801526A4 14800009 */  bnez       $a0, .L801526CC_ovl4
    /* F9BD8 801526A8 00000000 */   nop
    /* F9BDC 801526AC 3C018016 */  lui        $at, %hi(D_8015C690_ovl4)
    /* F9BE0 801526B0 AC2FC690 */  sw         $t7, %lo(D_8015C690_ovl4)($at)
    /* F9BE4 801526B4 0C029D9E */  jal        play_sound
    /* F9BE8 801526B8 24040276 */   addiu     $a0, $zero, 0x276
    /* F9BEC 801526BC 24180001 */  addiu      $t8, $zero, 0x1
    /* F9BF0 801526C0 3C01800D */  lui        $at, %hi(D_800D6B78)
    /* F9BF4 801526C4 100000DC */  b          .L80152A38_ovl4
    /* F9BF8 801526C8 AC386B78 */   sw        $t8, %lo(D_800D6B78)($at)
  .L801526CC_ovl4:
    /* F9BFC 801526CC 10810015 */  beq        $a0, $at, .L80152724_ovl4
    /* F9C00 801526D0 24190003 */   addiu     $t9, $zero, 0x3
    /* F9C04 801526D4 3C088016 */  lui        $t0, %hi(D_8015C698_ovl4)
    /* F9C08 801526D8 8D08C698 */  lw         $t0, %lo(D_8015C698_ovl4)($t0)
    /* F9C0C 801526DC 3C0A800F */  lui        $t2, %hi(D_800E9FE0)
    /* F9C10 801526E0 3C018016 */  lui        $at, %hi(D_8015C690_ovl4)
    /* F9C14 801526E4 00084880 */  sll        $t1, $t0, 2
    /* F9C18 801526E8 01495021 */  addu       $t2, $t2, $t1
    /* F9C1C 801526EC 8D4A9FE0 */  lw         $t2, %lo(D_800E9FE0)($t2)
    /* F9C20 801526F0 AC39C690 */  sw         $t9, %lo(D_8015C690_ovl4)($at)
    /* F9C24 801526F4 3C01800D */  lui        $at, %hi(D_800D6B9C)
    /* F9C28 801526F8 254BFFFF */  addiu      $t3, $t2, -0x1
    /* F9C2C 801526FC AC2B6B9C */  sw         $t3, %lo(D_800D6B9C)($at)
    /* F9C30 80152700 8CAD0000 */  lw         $t5, 0x0($a1)
    /* F9C34 80152704 240C0001 */  addiu      $t4, $zero, 0x1
    /* F9C38 80152708 24040275 */  addiu      $a0, $zero, 0x275
    /* F9C3C 8015270C 000D7080 */  sll        $t6, $t5, 2
    /* F9C40 80152710 00EE7821 */  addu       $t7, $a3, $t6
    /* F9C44 80152714 0C029D9E */  jal        play_sound
    /* F9C48 80152718 ADEC0000 */   sw        $t4, 0x0($t7)
    /* F9C4C 8015271C 100000C7 */  b          .L80152A3C_ovl4
    /* F9C50 80152720 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80152724_ovl4:
    /* F9C54 80152724 13000009 */  beqz       $t8, .L8015274C_ovl4
    /* F9C58 80152728 24190004 */   addiu     $t9, $zero, 0x4
    /* F9C5C 8015272C 3C018016 */  lui        $at, %hi(D_8015C690_ovl4)
    /* F9C60 80152730 AC39C690 */  sw         $t9, %lo(D_8015C690_ovl4)($at)
    /* F9C64 80152734 0C029D9E */  jal        play_sound
    /* F9C68 80152738 24040276 */   addiu     $a0, $zero, 0x276
    /* F9C6C 8015273C 24080001 */  addiu      $t0, $zero, 0x1
    /* F9C70 80152740 3C01800D */  lui        $at, %hi(D_800D6B78)
    /* F9C74 80152744 100000BC */  b          .L80152A38_ovl4
    /* F9C78 80152748 AC286B78 */   sw        $t0, %lo(D_800D6B78)($at)
  .L8015274C_ovl4:
    /* F9C7C 8015274C 94C20000 */  lhu        $v0, 0x0($a2)
    /* F9C80 80152750 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9C84 80152754 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9C88 80152758 30490100 */  andi       $t1, $v0, 0x100
    /* F9C8C 8015275C 5120002A */  beql       $t1, $zero, .L80152808_ovl4
    /* F9C90 80152760 30480200 */   andi      $t0, $v0, 0x200
    /* F9C94 80152764 8C8A0000 */  lw         $t2, 0x0($a0)
    /* F9C98 80152768 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9C9C 8015276C 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9CA0 80152770 000A5880 */  sll        $t3, $t2, 2
    /* F9CA4 80152774 006B6821 */  addu       $t5, $v1, $t3
    /* F9CA8 80152778 8DAE0000 */  lw         $t6, 0x0($t5)
    /* F9CAC 8015277C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* F9CB0 80152780 44813000 */  mtc1       $at, $f6
    /* F9CB4 80152784 8DCC003C */  lw         $t4, 0x3C($t6)
    /* F9CB8 80152788 8D8F0010 */  lw         $t7, 0x10($t4)
    /* F9CBC 8015278C C5E4001C */  lwc1       $f4, 0x1C($t7)
    /* F9CC0 80152790 46062300 */  add.s      $f12, $f4, $f6
    /* F9CC4 80152794 0C0548B4 */  jal        func_801522D0_ovl4
    /* F9CC8 80152798 E7AC0018 */   swc1      $f12, 0x18($sp)
    /* F9CCC 8015279C 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9CD0 801527A0 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9CD4 801527A4 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9CD8 801527A8 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9CDC 801527AC 10400009 */  beqz       $v0, .L801527D4_ovl4
    /* F9CE0 801527B0 C7AC0018 */   lwc1      $f12, 0x18($sp)
    /* F9CE4 801527B4 8C980000 */  lw         $t8, 0x0($a0)
    /* F9CE8 801527B8 0018C880 */  sll        $t9, $t8, 2
    /* F9CEC 801527BC 00794021 */  addu       $t0, $v1, $t9
    /* F9CF0 801527C0 8D090000 */  lw         $t1, 0x0($t0)
    /* F9CF4 801527C4 8D2A003C */  lw         $t2, 0x3C($t1)
    /* F9CF8 801527C8 8D4B0010 */  lw         $t3, 0x10($t2)
    /* F9CFC 801527CC 1000000A */  b          .L801527F8_ovl4
    /* F9D00 801527D0 E56C001C */   swc1      $f12, 0x1C($t3)
  .L801527D4_ovl4:
    /* F9D04 801527D4 8C8D0000 */  lw         $t5, 0x0($a0)
    /* F9D08 801527D8 3C0142DC */  lui        $at, (0x42DC0000 >> 16)
    /* F9D0C 801527DC 44814000 */  mtc1       $at, $f8
    /* F9D10 801527E0 000D7080 */  sll        $t6, $t5, 2
    /* F9D14 801527E4 006E6021 */  addu       $t4, $v1, $t6
    /* F9D18 801527E8 8D8F0000 */  lw         $t7, 0x0($t4)
    /* F9D1C 801527EC 8DF8003C */  lw         $t8, 0x3C($t7)
    /* F9D20 801527F0 8F190010 */  lw         $t9, 0x10($t8)
    /* F9D24 801527F4 E728001C */  swc1       $f8, 0x1C($t9)
  .L801527F8_ovl4:
    /* F9D28 801527F8 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* F9D2C 801527FC 1000002E */  b          .L801528B8_ovl4
    /* F9D30 80152800 94428F20 */   lhu       $v0, %lo(gPlayerControllers)($v0)
    /* F9D34 80152804 30480200 */  andi       $t0, $v0, 0x200
  .L80152808_ovl4:
    /* F9D38 80152808 1100002B */  beqz       $t0, .L801528B8_ovl4
    /* F9D3C 8015280C 3C048016 */   lui       $a0, %hi(D_8015C6A0_ovl4)
    /* F9D40 80152810 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9D44 80152814 8C890000 */  lw         $t1, 0x0($a0)
    /* F9D48 80152818 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9D4C 8015281C 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9D50 80152820 00095080 */  sll        $t2, $t1, 2
    /* F9D54 80152824 006A5821 */  addu       $t3, $v1, $t2
    /* F9D58 80152828 8D6D0000 */  lw         $t5, 0x0($t3)
    /* F9D5C 8015282C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* F9D60 80152830 44818000 */  mtc1       $at, $f16
    /* F9D64 80152834 8DAE003C */  lw         $t6, 0x3C($t5)
    /* F9D68 80152838 8DCC0010 */  lw         $t4, 0x10($t6)
    /* F9D6C 8015283C C58A001C */  lwc1       $f10, 0x1C($t4)
    /* F9D70 80152840 46105301 */  sub.s      $f12, $f10, $f16
    /* F9D74 80152844 0C0548B4 */  jal        func_801522D0_ovl4
    /* F9D78 80152848 E7AC0018 */   swc1      $f12, 0x18($sp)
    /* F9D7C 8015284C 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9D80 80152850 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9D84 80152854 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9D88 80152858 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9D8C 8015285C 1040000B */  beqz       $v0, .L8015288C_ovl4
    /* F9D90 80152860 C7AC0018 */   lwc1      $f12, 0x18($sp)
    /* F9D94 80152864 8C8F0000 */  lw         $t7, 0x0($a0)
    /* F9D98 80152868 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* F9D9C 8015286C 000FC080 */  sll        $t8, $t7, 2
    /* F9DA0 80152870 0078C821 */  addu       $t9, $v1, $t8
    /* F9DA4 80152874 8F280000 */  lw         $t0, 0x0($t9)
    /* F9DA8 80152878 8D09003C */  lw         $t1, 0x3C($t0)
    /* F9DAC 8015287C 8D2A0010 */  lw         $t2, 0x10($t1)
    /* F9DB0 80152880 E54C001C */  swc1       $f12, 0x1C($t2)
    /* F9DB4 80152884 1000000C */  b          .L801528B8_ovl4
    /* F9DB8 80152888 94428F20 */   lhu       $v0, %lo(gPlayerControllers)($v0)
  .L8015288C_ovl4:
    /* F9DBC 8015288C 8C8B0000 */  lw         $t3, 0x0($a0)
    /* F9DC0 80152890 3C01C2DC */  lui        $at, (0xC2DC0000 >> 16)
    /* F9DC4 80152894 44819000 */  mtc1       $at, $f18
    /* F9DC8 80152898 000B6880 */  sll        $t5, $t3, 2
    /* F9DCC 8015289C 006D7021 */  addu       $t6, $v1, $t5
    /* F9DD0 801528A0 8DCC0000 */  lw         $t4, 0x0($t6)
    /* F9DD4 801528A4 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* F9DD8 801528A8 8D8F003C */  lw         $t7, 0x3C($t4)
    /* F9DDC 801528AC 8DF80010 */  lw         $t8, 0x10($t7)
    /* F9DE0 801528B0 E712001C */  swc1       $f18, 0x1C($t8)
    /* F9DE4 801528B4 94428F20 */  lhu        $v0, %lo(gPlayerControllers)($v0)
  .L801528B8_ovl4:
    /* F9DE8 801528B8 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9DEC 801528BC 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9DF0 801528C0 30590800 */  andi       $t9, $v0, 0x800
    /* F9DF4 801528C4 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9DF8 801528C8 13200025 */  beqz       $t9, .L80152960_ovl4
    /* F9DFC 801528CC 2463E350 */   addiu     $v1, $v1, %lo(D_800DE350)
    /* F9E00 801528D0 8C880000 */  lw         $t0, 0x0($a0)
    /* F9E04 801528D4 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* F9E08 801528D8 44813000 */  mtc1       $at, $f6
    /* F9E0C 801528DC 00084880 */  sll        $t1, $t0, 2
    /* F9E10 801528E0 00695021 */  addu       $t2, $v1, $t1
    /* F9E14 801528E4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* F9E18 801528E8 8D6D003C */  lw         $t5, 0x3C($t3)
    /* F9E1C 801528EC 8DAE0010 */  lw         $t6, 0x10($t5)
    /* F9E20 801528F0 C5C40024 */  lwc1       $f4, 0x24($t6)
    /* F9E24 801528F4 46062301 */  sub.s      $f12, $f4, $f6
    /* F9E28 801528F8 0C0548C6 */  jal        func_80152318_ovl4
    /* F9E2C 801528FC E7AC0018 */   swc1      $f12, 0x18($sp)
    /* F9E30 80152900 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9E34 80152904 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9E38 80152908 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9E3C 8015290C 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9E40 80152910 10400009 */  beqz       $v0, .L80152938_ovl4
    /* F9E44 80152914 C7AC0018 */   lwc1      $f12, 0x18($sp)
    /* F9E48 80152918 8C8C0000 */  lw         $t4, 0x0($a0)
    /* F9E4C 8015291C 000C7880 */  sll        $t7, $t4, 2
    /* F9E50 80152920 006FC021 */  addu       $t8, $v1, $t7
    /* F9E54 80152924 8F190000 */  lw         $t9, 0x0($t8)
    /* F9E58 80152928 8F28003C */  lw         $t0, 0x3C($t9)
    /* F9E5C 8015292C 8D090010 */  lw         $t1, 0x10($t0)
    /* F9E60 80152930 10000031 */  b          .L801529F8_ovl4
    /* F9E64 80152934 E52C0024 */   swc1      $f12, 0x24($t1)
  .L80152938_ovl4:
    /* F9E68 80152938 8C8A0000 */  lw         $t2, 0x0($a0)
    /* F9E6C 8015293C 3C01C28C */  lui        $at, (0xC28C0000 >> 16)
    /* F9E70 80152940 44814000 */  mtc1       $at, $f8
    /* F9E74 80152944 000A5880 */  sll        $t3, $t2, 2
    /* F9E78 80152948 006B6821 */  addu       $t5, $v1, $t3
    /* F9E7C 8015294C 8DAE0000 */  lw         $t6, 0x0($t5)
    /* F9E80 80152950 8DCC003C */  lw         $t4, 0x3C($t6)
    /* F9E84 80152954 8D8F0010 */  lw         $t7, 0x10($t4)
    /* F9E88 80152958 10000027 */  b          .L801529F8_ovl4
    /* F9E8C 8015295C E5E80024 */   swc1      $f8, 0x24($t7)
  .L80152960_ovl4:
    /* F9E90 80152960 30580400 */  andi       $t8, $v0, 0x400
    /* F9E94 80152964 13000024 */  beqz       $t8, .L801529F8_ovl4
    /* F9E98 80152968 00000000 */   nop
    /* F9E9C 8015296C 8C990000 */  lw         $t9, 0x0($a0)
    /* F9EA0 80152970 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* F9EA4 80152974 44818000 */  mtc1       $at, $f16
    /* F9EA8 80152978 00194080 */  sll        $t0, $t9, 2
    /* F9EAC 8015297C 00684821 */  addu       $t1, $v1, $t0
    /* F9EB0 80152980 8D2A0000 */  lw         $t2, 0x0($t1)
    /* F9EB4 80152984 8D4B003C */  lw         $t3, 0x3C($t2)
    /* F9EB8 80152988 8D6D0010 */  lw         $t5, 0x10($t3)
    /* F9EBC 8015298C C5AA0024 */  lwc1       $f10, 0x24($t5)
    /* F9EC0 80152990 46105300 */  add.s      $f12, $f10, $f16
    /* F9EC4 80152994 0C0548C6 */  jal        func_80152318_ovl4
    /* F9EC8 80152998 E7AC0018 */   swc1      $f12, 0x18($sp)
    /* F9ECC 8015299C 3C03800E */  lui        $v1, %hi(D_800DE350)
    /* F9ED0 801529A0 3C048016 */  lui        $a0, %hi(D_8015C6A0_ovl4)
    /* F9ED4 801529A4 2484C6A0 */  addiu      $a0, $a0, %lo(D_8015C6A0_ovl4)
    /* F9ED8 801529A8 2463E350 */  addiu      $v1, $v1, %lo(D_800DE350)
    /* F9EDC 801529AC 10400009 */  beqz       $v0, .L801529D4_ovl4
    /* F9EE0 801529B0 C7AC0018 */   lwc1      $f12, 0x18($sp)
    /* F9EE4 801529B4 8C8E0000 */  lw         $t6, 0x0($a0)
    /* F9EE8 801529B8 000E6080 */  sll        $t4, $t6, 2
    /* F9EEC 801529BC 006C7821 */  addu       $t7, $v1, $t4
    /* F9EF0 801529C0 8DF80000 */  lw         $t8, 0x0($t7)
    /* F9EF4 801529C4 8F19003C */  lw         $t9, 0x3C($t8)
    /* F9EF8 801529C8 8F280010 */  lw         $t0, 0x10($t9)
    /* F9EFC 801529CC 1000000A */  b          .L801529F8_ovl4
    /* F9F00 801529D0 E50C0024 */   swc1      $f12, 0x24($t0)
  .L801529D4_ovl4:
    /* F9F04 801529D4 8C890000 */  lw         $t1, 0x0($a0)
    /* F9F08 801529D8 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
    /* F9F0C 801529DC 44819000 */  mtc1       $at, $f18
    /* F9F10 801529E0 00095080 */  sll        $t2, $t1, 2
    /* F9F14 801529E4 006A5821 */  addu       $t3, $v1, $t2
    /* F9F18 801529E8 8D6D0000 */  lw         $t5, 0x0($t3)
    /* F9F1C 801529EC 8DAE003C */  lw         $t6, 0x3C($t5)
    /* F9F20 801529F0 8DCC0010 */  lw         $t4, 0x10($t6)
    /* F9F24 801529F4 E5920024 */  swc1       $f18, 0x24($t4)
  .L801529F8_ovl4:
    /* F9F28 801529F8 0C054939 */  jal        func_801524E4_ovl4
    /* F9F2C 801529FC 00000000 */   nop
    /* F9F30 80152A00 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* F9F34 80152A04 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* F9F38 80152A08 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* F9F3C 80152A0C 8DF80000 */  lw         $t8, 0x0($t7)
    /* F9F40 80152A10 0018C880 */  sll        $t9, $t8, 2
    /* F9F44 80152A14 00390821 */  addu       $at, $at, $t9
    /* F9F48 80152A18 AC229FE0 */  sw         $v0, %lo(D_800E9FE0)($at)
    /* F9F4C 80152A1C 2401029A */  addiu      $at, $zero, 0x29A
    /* F9F50 80152A20 50410006 */  beql       $v0, $at, .L80152A3C_ovl4
    /* F9F54 80152A24 8FBF0014 */   lw        $ra, 0x14($sp)
    /* F9F58 80152A28 10400003 */  beqz       $v0, .L80152A38_ovl4
    /* F9F5C 80152A2C 2448FFFF */   addiu     $t0, $v0, -0x1
    /* F9F60 80152A30 3C01800D */  lui        $at, %hi(D_800D6B9C)
    /* F9F64 80152A34 AC286B9C */  sw         $t0, %lo(D_800D6B9C)($at)
  .L80152A38_ovl4:
    /* F9F68 80152A38 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80152A3C_ovl4:
    /* F9F6C 80152A3C 27BD0020 */  addiu      $sp, $sp, 0x20
    /* F9F70 80152A40 03E00008 */  jr         $ra
    /* F9F74 80152A44 00000000 */   nop
endlabel func_801525E8_ovl4
.size func_801525E8_ovl4, . - func_801525E8_ovl4
