glabel func_8018F368_ovl3
/* EFDA8 8018F368 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* EFDAC 8018F36C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* EFDB0 8018F370 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* EFDB4 8018F374 AFBF0014 */  sw         $ra, 0x14($sp)
/* EFDB8 8018F378 AFA40050 */  sw         $a0, 0x50($sp)
/* EFDBC 8018F37C 8CC70000 */  lw         $a3, 0x0($a2)
/* EFDC0 8018F380 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* EFDC4 8018F384 3C01800F */  lui        $at, %hi(D_800E9C60)
/* EFDC8 8018F388 00073880 */  sll        $a3, $a3, 2
/* EFDCC 8018F38C 01C77021 */  addu       $t6, $t6, $a3
/* EFDD0 8018F390 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* EFDD4 8018F394 00270821 */  addu       $at, $at, $a3
/* EFDD8 8018F398 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFDDC 8018F39C AC2E9C60 */  sw         $t6, %lo(D_800E9C60)($at)
/* EFDE0 8018F3A0 8CD80000 */  lw         $t8, 0x0($a2)
/* EFDE4 8018F3A4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* EFDE8 8018F3A8 910F0150 */  lbu        $t7, 0x150($t0)
/* EFDEC 8018F3AC 3C01800F */  lui        $at, %hi(D_800EA520)
/* EFDF0 8018F3B0 0018C880 */  sll        $t9, $t8, 2
/* EFDF4 8018F3B4 00390821 */  addu       $at, $at, $t9
/* EFDF8 8018F3B8 0C054E61 */  jal        func_80153984_ovl3
/* EFDFC 8018F3BC AC2FA520 */   sw        $t7, %lo(D_800EA520)($at)
/* EFE00 8018F3C0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFE04 8018F3C4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* EFE08 8018F3C8 8D0A0044 */  lw         $t2, 0x44($t0)
/* EFE0C 8018F3CC 24010003 */  addiu      $at, $zero, 0x3
/* EFE10 8018F3D0 11410003 */  beq        $t2, $at, .L8018F3E0_ovl3
/* EFE14 8018F3D4 00000000 */   nop
/* EFE18 8018F3D8 0C0485EE */  jal        func_801217B8
/* EFE1C 8018F3DC 00000000 */   nop
.L8018F3E0_ovl3:
/* EFE20 8018F3E0 0C0473D6 */  jal        func_8011CF58
/* EFE24 8018F3E4 00000000 */   nop
/* EFE28 8018F3E8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFE2C 8018F3EC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* EFE30 8018F3F0 8D0B0030 */  lw         $t3, 0x30($t0)
/* EFE34 8018F3F4 15600004 */  bnez       $t3, .L8018F408_ovl3
/* EFE38 8018F3F8 00000000 */   nop
/* EFE3C 8018F3FC 910C0017 */  lbu        $t4, 0x17($t0)
/* EFE40 8018F400 11800007 */  beqz       $t4, .L8018F420_ovl3
/* EFE44 8018F404 00000000 */   nop
.L8018F408_ovl3:
/* EFE48 8018F408 0C047717 */  jal        func_8011DC5C
/* EFE4C 8018F40C AD0000A0 */   sw        $zero, 0xA0($t0)
/* EFE50 8018F410 0C04759F */  jal        func_8011D67C
/* EFE54 8018F414 00000000 */   nop
/* EFE58 8018F418 100003BA */  b          .L80190304_ovl3
/* EFE5C 8018F41C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8018F420_ovl3:
/* EFE60 8018F420 0C048918 */  jal        func_80122460
/* EFE64 8018F424 00000000 */   nop
/* EFE68 8018F428 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFE6C 8018F42C 10400004 */  beqz       $v0, .L8018F440_ovl3
/* EFE70 8018F430 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* EFE74 8018F434 8D0D00E4 */  lw         $t5, 0xE4($t0)
/* EFE78 8018F438 15A0000B */  bnez       $t5, .L8018F468_ovl3
/* EFE7C 8018F43C 00000000 */   nop
.L8018F440_ovl3:
/* EFE80 8018F440 8D0E00E8 */  lw         $t6, 0xE8($t0)
/* EFE84 8018F444 3C18800D */  lui        $t8, %hi(gKirbyController)
/* EFE88 8018F448 51C00018 */  beql       $t6, $zero, .L8018F4AC_ovl3
/* EFE8C 8018F44C 8D0B00FC */   lw        $t3, 0xFC($t0)
/* EFE90 8018F450 97186FE8 */  lhu        $t8, %lo(gKirbyController)($t8)
/* EFE94 8018F454 330F0400 */  andi       $t7, $t8, 0x400
/* EFE98 8018F458 51E00014 */  beql       $t7, $zero, .L8018F4AC_ovl3
/* EFE9C 8018F45C 8D0B00FC */   lw        $t3, 0xFC($t0)
/* EFEA0 8018F460 50400012 */  beql       $v0, $zero, .L8018F4AC_ovl3
/* EFEA4 8018F464 8D0B00FC */   lw        $t3, 0xFC($t0)
.L8018F468_ovl3:
/* EFEA8 8018F468 0C047585 */  jal        func_8011D614
/* EFEAC 8018F46C 00000000 */   nop
/* EFEB0 8018F470 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* EFEB4 8018F474 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
/* EFEB8 8018F478 94590000 */  lhu        $t9, 0x0($v0)
/* EFEBC 8018F47C 332A0007 */  andi       $t2, $t9, 0x7
/* EFEC0 8018F480 0C047717 */  jal        func_8011DC5C
/* EFEC4 8018F484 A44A0000 */   sh        $t2, 0x0($v0)
/* EFEC8 8018F488 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFECC 8018F48C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* EFED0 8018F490 AD0000A0 */  sw         $zero, 0xA0($t0)
/* EFED4 8018F494 2404000A */  addiu      $a0, $zero, 0xA
/* EFED8 8018F498 0C048BDB */  jal        set_kirby_action_1
/* EFEDC 8018F49C 2405000D */   addiu     $a1, $zero, 0xD
/* EFEE0 8018F4A0 10000398 */  b          .L80190304_ovl3
/* EFEE4 8018F4A4 8FBF0014 */   lw        $ra, 0x14($sp)
/* EFEE8 8018F4A8 8D0B00FC */  lw         $t3, 0xFC($t0)
.L8018F4AC_ovl3:
/* EFEEC 8018F4AC 51600017 */  beql       $t3, $zero, .L8018F50C_ovl3
/* EFEF0 8018F4B0 8D030044 */   lw        $v1, 0x44($t0)
/* EFEF4 8018F4B4 0C048956 */  jal        func_80122558
/* EFEF8 8018F4B8 00000000 */   nop
/* EFEFC 8018F4BC 14400006 */  bnez       $v0, .L8018F4D8_ovl3
/* EFF00 8018F4C0 00000000 */   nop
/* EFF04 8018F4C4 0C0489BF */  jal        func_801226FC
/* EFF08 8018F4C8 00000000 */   nop
/* EFF0C 8018F4CC 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFF10 8018F4D0 1040000D */  beqz       $v0, .L8018F508_ovl3
/* EFF14 8018F4D4 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8018F4D8_ovl3:
/* EFF18 8018F4D8 0C047585 */  jal        func_8011D614
/* EFF1C 8018F4DC 00000000 */   nop
/* EFF20 8018F4E0 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* EFF24 8018F4E4 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
/* EFF28 8018F4E8 944C0000 */  lhu        $t4, 0x0($v0)
/* EFF2C 8018F4EC 318D0007 */  andi       $t5, $t4, 0x7
/* EFF30 8018F4F0 0C047717 */  jal        func_8011DC5C
/* EFF34 8018F4F4 A44D0000 */   sh        $t5, 0x0($v0)
/* EFF38 8018F4F8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFF3C 8018F4FC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* EFF40 8018F500 1000037F */  b          .L80190300_ovl3
/* EFF44 8018F504 AD0000A0 */   sw        $zero, 0xA0($t0)
.L8018F508_ovl3:
/* EFF48 8018F508 8D030044 */  lw         $v1, 0x44($t0)
.L8018F50C_ovl3:
/* EFF4C 8018F50C 246EFFFF */  addiu      $t6, $v1, -0x1
/* EFF50 8018F510 2DC10008 */  sltiu      $at, $t6, 0x8
/* EFF54 8018F514 10200271 */  beqz       $at, .L8018FEDC_ovl3
/* EFF58 8018F518 000E7080 */   sll       $t6, $t6, 2
/* EFF5C 8018F51C 3C018019 */  lui        $at, %hi(jtbl_80197BB4_ovl3)
/* EFF60 8018F520 002E0821 */  addu       $at, $at, $t6
/* EFF64 8018F524 8C2E7BB4 */  lw         $t6, %lo(jtbl_80197BB4_ovl3)($at)
/* EFF68 8018F528 01C00008 */  jr         $t6
/* EFF6C 8018F52C 00000000 */   nop
/* EFF70 8018F530 0C048724 */  jal        func_80121C90
/* EFF74 8018F534 00000000 */   nop
/* EFF78 8018F538 3C088013 */  lui        $t0, %hi(gKirbyState)
/* EFF7C 8018F53C 10400004 */  beqz       $v0, .L8018F550_ovl3
/* EFF80 8018F540 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* EFF84 8018F544 24180002 */  addiu      $t8, $zero, 0x2
/* EFF88 8018F548 10000057 */  b          .L8018F6A8_ovl3
/* EFF8C 8018F54C AD180044 */   sw        $t8, 0x44($t0)
.L8018F550_ovl3:
/* EFF90 8018F550 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
/* EFF94 8018F554 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
/* EFF98 8018F558 240A0003 */  addiu      $t2, $zero, 0x3
/* EFF9C 8018F55C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* EFFA0 8018F560 31F98000 */  andi       $t9, $t7, 0x8000
/* EFFA4 8018F564 13200003 */  beqz       $t9, .L8018F574_ovl3
/* EFFA8 8018F568 00000000 */   nop
/* EFFAC 8018F56C 1000004E */  b          .L8018F6A8_ovl3
/* EFFB0 8018F570 AD0A0044 */   sw        $t2, 0x44($t0)
.L8018F574_ovl3:
/* EFFB4 8018F574 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* EFFB8 8018F578 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* EFFBC 8018F57C 240C0004 */  addiu      $t4, $zero, 0x4
/* EFFC0 8018F580 8CC70000 */  lw         $a3, 0x0($a2)
/* EFFC4 8018F584 00073880 */  sll        $a3, $a3, 2
/* EFFC8 8018F588 01675821 */  addu       $t3, $t3, $a3
/* EFFCC 8018F58C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* EFFD0 8018F590 55600004 */  bnel       $t3, $zero, .L8018F5A4_ovl3
/* EFFD4 8018F594 91020150 */   lbu       $v0, 0x150($t0)
/* EFFD8 8018F598 10000043 */  b          .L8018F6A8_ovl3
/* EFFDC 8018F59C AD0C0044 */   sw        $t4, 0x44($t0)
/* EFFE0 8018F5A0 91020150 */  lbu        $v0, 0x150($t0)
.L8018F5A4_ovl3:
/* EFFE4 8018F5A4 3C05800F */  lui        $a1, %hi(D_800E9720)
/* EFFE8 8018F5A8 24A59720 */  addiu      $a1, $a1, %lo(D_800E9720)
/* EFFEC 8018F5AC 10400014 */  beqz       $v0, .L8018F600_ovl3
/* EFFF0 8018F5B0 00A71821 */   addu      $v1, $a1, $a3
/* EFFF4 8018F5B4 8C640000 */  lw         $a0, 0x0($v1)
/* EFFF8 8018F5B8 10800011 */  beqz       $a0, .L8018F600_ovl3
/* EFFFC 8018F5BC 248DFFFF */   addiu     $t5, $a0, -0x1
/* F0000 8018F5C0 AC6D0000 */  sw         $t5, 0x0($v1)
/* F0004 8018F5C4 8CC70000 */  lw         $a3, 0x0($a2)
/* F0008 8018F5C8 00073880 */  sll        $a3, $a3, 2
/* F000C 8018F5CC 00A77021 */  addu       $t6, $a1, $a3
/* F0010 8018F5D0 8DD80000 */  lw         $t8, 0x0($t6)
/* F0014 8018F5D4 1700000A */  bnez       $t8, .L8018F600_ovl3
/* F0018 8018F5D8 00000000 */   nop
/* F001C 8018F5DC 0C029D9E */  jal        play_sound
/* F0020 8018F5E0 240400EB */   addiu     $a0, $zero, 0xEB
/* F0024 8018F5E4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* F0028 8018F5E8 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* F002C 8018F5EC 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0030 8018F5F0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0034 8018F5F4 8DE70000 */  lw         $a3, 0x0($t7)
/* F0038 8018F5F8 91020150 */  lbu        $v0, 0x150($t0)
/* F003C 8018F5FC 00073880 */  sll        $a3, $a3, 2
.L8018F600_ovl3:
/* F0040 8018F600 3C19800F */  lui        $t9, %hi(D_800EA520)
/* F0044 8018F604 0327C821 */  addu       $t9, $t9, $a3
/* F0048 8018F608 8F39A520 */  lw         $t9, %lo(D_800EA520)($t9)
/* F004C 8018F60C 3C0B800D */  lui        $t3, %hi(D_800D6F58 + 0x50)
/* F0050 8018F610 3C0C800D */  lui        $t4, %hi(D_800D6F58 + 0x54)
/* F0054 8018F614 1059000C */  beq        $v0, $t9, .L8018F648_ovl3
/* F0058 8018F618 3C0E800D */   lui       $t6, %hi(D_800D6F58 + 0x58)
/* F005C 8018F61C 8D0A0020 */  lw         $t2, 0x20($t0)
/* F0060 8018F620 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* F0064 8018F624 00872021 */  addu       $a0, $a0, $a3
/* F0068 8018F628 15400007 */  bnez       $t2, .L8018F648_ovl3
/* F006C 8018F62C 3C058017 */   lui       $a1, %hi(func_8016C510_ovl3)
/* F0070 8018F630 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* F0074 8018F634 0C02C7B2 */  jal        assign_new_process_entry
/* F0078 8018F638 24A5C510 */   addiu     $a1, $a1, %lo(func_8016C510_ovl3)
/* F007C 8018F63C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0080 8018F640 10000019 */  b          .L8018F6A8_ovl3
/* F0084 8018F644 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8018F648_ovl3:
/* F0088 8018F648 8D6B6FA8 */  lw         $t3, %lo(D_800D6F58 + 0x50)($t3)
/* F008C 8018F64C 8D8C6FAC */  lw         $t4, %lo(D_800D6F58 + 0x54)($t4)
/* F0090 8018F650 95CE6FB0 */  lhu        $t6, %lo(D_800D6F58 + 0x58)($t6)
/* F0094 8018F654 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
/* F0098 8018F658 016C6825 */  or         $t5, $t3, $t4
/* F009C 8018F65C 01AEC025 */  or         $t8, $t5, $t6
/* F00A0 8018F660 17000011 */  bnez       $t8, .L8018F6A8_ovl3
/* F00A4 8018F664 00000000 */   nop
/* F00A8 8018F668 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
/* F00AC 8018F66C 31F9003F */  andi       $t9, $t7, 0x3F
/* F00B0 8018F670 1320000D */  beqz       $t9, .L8018F6A8_ovl3
/* F00B4 8018F674 00000000 */   nop
/* F00B8 8018F678 A1000007 */  sb         $zero, 0x7($t0)
/* F00BC 8018F67C 0C04783A */  jal        func_8011E0E8
/* F00C0 8018F680 AD0000A0 */   sw        $zero, 0xA0($t0)
/* F00C4 8018F684 0C047717 */  jal        func_8011DC5C
/* F00C8 8018F688 00000000 */   nop
/* F00CC 8018F68C 0C047585 */  jal        func_8011D614
/* F00D0 8018F690 00000000 */   nop
/* F00D4 8018F694 24040011 */  addiu      $a0, $zero, 0x11
/* F00D8 8018F698 0C048BDB */  jal        set_kirby_action_1
/* F00DC 8018F69C 24050011 */   addiu     $a1, $zero, 0x11
/* F00E0 8018F6A0 10000318 */  b          .L80190304_ovl3
/* F00E4 8018F6A4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8018F6A8_ovl3:
/* F00E8 8018F6A8 1000020C */  b          .L8018FEDC_ovl3
/* F00EC 8018F6AC 8D030044 */   lw        $v1, 0x44($t0)
/* F00F0 8018F6B0 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F00F4 8018F6B4 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F00F8 8018F6B8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* F00FC 8018F6BC 44802000 */  mtc1       $zero, $f4
/* F0100 8018F6C0 8CC70000 */  lw         $a3, 0x0($a2)
/* F0104 8018F6C4 3C0B800D */  lui        $t3, %hi(gKirbyController + 0x2)
/* F0108 8018F6C8 00073880 */  sll        $a3, $a3, 2
/* F010C 8018F6CC 00270821 */  addu       $at, $at, $a3
/* F0110 8018F6D0 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
/* F0114 8018F6D4 24010002 */  addiu      $at, $zero, 0x2
/* F0118 8018F6D8 46062032 */  c.eq.s     $f4, $f6
/* F011C 8018F6DC 00000000 */  nop
/* F0120 8018F6E0 45000004 */  bc1f       .L8018F6F4_ovl3
/* F0124 8018F6E4 00000000 */   nop
/* F0128 8018F6E8 24030001 */  addiu      $v1, $zero, 0x1
/* F012C 8018F6EC 1000000F */  b          .L8018F72C_ovl3
/* F0130 8018F6F0 AD030044 */   sw        $v1, 0x44($t0)
.L8018F6F4_ovl3:
/* F0134 8018F6F4 956B6FEA */  lhu        $t3, %lo(gKirbyController + 0x2)($t3)
/* F0138 8018F6F8 3C0E800F */  lui        $t6, %hi(D_800E8920)
/* F013C 8018F6FC 01C77021 */  addu       $t6, $t6, $a3
/* F0140 8018F700 316C8000 */  andi       $t4, $t3, 0x8000
/* F0144 8018F704 11800004 */  beqz       $t4, .L8018F718_ovl3
/* F0148 8018F708 00000000 */   nop
/* F014C 8018F70C 24030003 */  addiu      $v1, $zero, 0x3
/* F0150 8018F710 10000006 */  b          .L8018F72C_ovl3
/* F0154 8018F714 AD030044 */   sw        $v1, 0x44($t0)
.L8018F718_ovl3:
/* F0158 8018F718 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
/* F015C 8018F71C 55C00004 */  bnel       $t6, $zero, .L8018F730_ovl3
/* F0160 8018F720 8D0F0034 */   lw        $t7, 0x34($t0)
/* F0164 8018F724 24030004 */  addiu      $v1, $zero, 0x4
/* F0168 8018F728 AD030044 */  sw         $v1, 0x44($t0)
.L8018F72C_ovl3:
/* F016C 8018F72C 8D0F0034 */  lw         $t7, 0x34($t0)
.L8018F730_ovl3:
/* F0170 8018F730 31F90001 */  andi       $t9, $t7, 0x1
/* F0174 8018F734 5720003D */  bnel       $t9, $zero, .L8018F82C_ovl3
/* F0178 8018F738 8CD80000 */   lw        $t8, 0x0($a2)
/* F017C 8018F73C 14610034 */  bne        $v1, $at, .L8018F810_ovl3
/* F0180 8018F740 00000000 */   nop
/* F0184 8018F744 910A0007 */  lbu        $t2, 0x7($t0)
/* F0188 8018F748 1540002F */  bnez       $t2, .L8018F808_ovl3
/* F018C 8018F74C 00000000 */   nop
/* F0190 8018F750 0C04843F */  jal        func_801210FC
/* F0194 8018F754 00000000 */   nop
/* F0198 8018F758 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F019C 8018F75C 14400013 */  bnez       $v0, .L8018F7AC_ovl3
/* F01A0 8018F760 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F01A4 8018F764 3C0B800D */  lui        $t3, %hi(gKirbyController)
/* F01A8 8018F768 956B6FE8 */  lhu        $t3, %lo(gKirbyController)($t3)
/* F01AC 8018F76C 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* F01B0 8018F770 316C0300 */  andi       $t4, $t3, 0x300
/* F01B4 8018F774 15800024 */  bnez       $t4, .L8018F808_ovl3
/* F01B8 8018F778 00000000 */   nop
/* F01BC 8018F77C 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* F01C0 8018F780 3C05800F */  lui        $a1, %hi(D_800E9560)
/* F01C4 8018F784 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F01C8 8018F788 8DAE0000 */  lw         $t6, 0x0($t5)
/* F01CC 8018F78C 000EC080 */  sll        $t8, $t6, 2
/* F01D0 8018F790 00B81021 */  addu       $v0, $a1, $t8
/* F01D4 8018F794 8C430000 */  lw         $v1, 0x0($v0)
/* F01D8 8018F798 2861000A */  slti       $at, $v1, 0xA
/* F01DC 8018F79C 1020001A */  beqz       $at, .L8018F808_ovl3
/* F01E0 8018F7A0 246F0001 */   addiu     $t7, $v1, 0x1
/* F01E4 8018F7A4 10000018 */  b          .L8018F808_ovl3
/* F01E8 8018F7A8 AC4F0000 */   sw        $t7, 0x0($v0)
.L8018F7AC_ovl3:
/* F01EC 8018F7AC 3C19800D */  lui        $t9, %hi(gKirbyController)
/* F01F0 8018F7B0 97396FE8 */  lhu        $t9, %lo(gKirbyController)($t9)
/* F01F4 8018F7B4 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* F01F8 8018F7B8 332A0300 */  andi       $t2, $t9, 0x300
/* F01FC 8018F7BC 11400012 */  beqz       $t2, .L8018F808_ovl3
/* F0200 8018F7C0 00000000 */   nop
/* F0204 8018F7C4 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* F0208 8018F7C8 3C05800F */  lui        $a1, %hi(D_800E9560)
/* F020C 8018F7CC 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F0210 8018F7D0 8D6C0000 */  lw         $t4, 0x0($t3)
/* F0214 8018F7D4 000C6880 */  sll        $t5, $t4, 2
/* F0218 8018F7D8 00AD1021 */  addu       $v0, $a1, $t5
/* F021C 8018F7DC 8C430000 */  lw         $v1, 0x0($v0)
/* F0220 8018F7E0 18600008 */  blez       $v1, .L8018F804_ovl3
/* F0224 8018F7E4 28610007 */   slti      $at, $v1, 0x7
/* F0228 8018F7E8 10200006 */  beqz       $at, .L8018F804_ovl3
/* F022C 8018F7EC 240E0001 */   addiu     $t6, $zero, 0x1
/* F0230 8018F7F0 0C048AA0 */  jal        func_80122A80
/* F0234 8018F7F4 A10E0007 */   sb        $t6, 0x7($t0)
/* F0238 8018F7F8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F023C 8018F7FC 10000002 */  b          .L8018F808_ovl3
/* F0240 8018F800 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
.L8018F804_ovl3:
/* F0244 8018F804 AC400000 */  sw         $zero, 0x0($v0)
.L8018F808_ovl3:
/* F0248 8018F808 1000000D */  b          .L8018F840_ovl3
/* F024C 8018F80C 8D030044 */   lw        $v1, 0x44($t0)
.L8018F810_ovl3:
/* F0250 8018F810 0C0473D6 */  jal        func_8011CF58
/* F0254 8018F814 00000000 */   nop
/* F0258 8018F818 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F025C 8018F81C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0260 8018F820 10000007 */  b          .L8018F840_ovl3
/* F0264 8018F824 8D030044 */   lw        $v1, 0x44($t0)
/* F0268 8018F828 8CD80000 */  lw         $t8, 0x0($a2)
.L8018F82C_ovl3:
/* F026C 8018F82C 3C05800F */  lui        $a1, %hi(D_800E9560)
/* F0270 8018F830 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F0274 8018F834 00187880 */  sll        $t7, $t8, 2
/* F0278 8018F838 00AFC821 */  addu       $t9, $a1, $t7
/* F027C 8018F83C AF200000 */  sw         $zero, 0x0($t9)
.L8018F840_ovl3:
/* F0280 8018F840 8D0A003C */  lw         $t2, 0x3C($t0)
/* F0284 8018F844 15430003 */  bne        $t2, $v1, .L8018F854_ovl3
/* F0288 8018F848 00000000 */   nop
/* F028C 8018F84C 0C048672 */  jal        func_801219C8
/* F0290 8018F850 00000000 */   nop
.L8018F854_ovl3:
/* F0294 8018F854 0C047B5A */  jal        func_8011ED68
/* F0298 8018F858 00000000 */   nop
/* F029C 8018F85C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F02A0 8018F860 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F02A4 8018F864 910B0007 */  lbu        $t3, 0x7($t0)
/* F02A8 8018F868 3C014030 */  lui        $at, (0x40300000 >> 16)
/* F02AC 8018F86C 5560000D */  bnel       $t3, $zero, .L8018F8A4_ovl3
/* F02B0 8018F870 44816000 */   mtc1      $at, $f12
/* F02B4 8018F874 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* F02B8 8018F878 44816000 */  mtc1       $at, $f12
/* F02BC 8018F87C 0C02BB30 */  jal        func_800AECC0
/* F02C0 8018F880 00000000 */   nop
/* F02C4 8018F884 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* F02C8 8018F888 44816000 */  mtc1       $at, $f12
/* F02CC 8018F88C 0C02BB48 */  jal        func_800AED20
/* F02D0 8018F890 00000000 */   nop
/* F02D4 8018F894 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F02D8 8018F898 1000000A */  b          .L8018F8C4_ovl3
/* F02DC 8018F89C 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F02E0 8018F8A0 44816000 */  mtc1       $at, $f12
.L8018F8A4_ovl3:
/* F02E4 8018F8A4 0C02BB30 */  jal        func_800AECC0
/* F02E8 8018F8A8 00000000 */   nop
/* F02EC 8018F8AC 3C014030 */  lui        $at, (0x40300000 >> 16)
/* F02F0 8018F8B0 44816000 */  mtc1       $at, $f12
/* F02F4 8018F8B4 0C02BB48 */  jal        func_800AED20
/* F02F8 8018F8B8 00000000 */   nop
/* F02FC 8018F8BC 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0300 8018F8C0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8018F8C4_ovl3:
/* F0304 8018F8C4 10000185 */  b          .L8018FEDC_ovl3
/* F0308 8018F8C8 8D030044 */   lw        $v1, 0x44($t0)
/* F030C 8018F8CC 8D0C0034 */  lw         $t4, 0x34($t0)
/* F0310 8018F8D0 318D0001 */  andi       $t5, $t4, 0x1
/* F0314 8018F8D4 55A0000A */  bnel       $t5, $zero, .L8018F900_ovl3
/* F0318 8018F8D8 8D0F00E4 */   lw        $t7, 0xE4($t0)
/* F031C 8018F8DC 0C048465 */  jal        func_80121194
/* F0320 8018F8E0 00000000 */   nop
/* F0324 8018F8E4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0328 8018F8E8 10400004 */  beqz       $v0, .L8018F8FC_ovl3
/* F032C 8018F8EC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F0330 8018F8F0 8D0E0034 */  lw         $t6, 0x34($t0)
/* F0334 8018F8F4 35D80001 */  ori        $t8, $t6, 0x1
/* F0338 8018F8F8 AD180034 */  sw         $t8, 0x34($t0)
.L8018F8FC_ovl3:
/* F033C 8018F8FC 8D0F00E4 */  lw         $t7, 0xE4($t0)
.L8018F900_ovl3:
/* F0340 8018F900 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F0344 8018F904 51E00027 */  beql       $t7, $zero, .L8018F9A4_ovl3
/* F0348 8018F908 950B00D2 */   lhu       $t3, 0xD2($t0)
/* F034C 8018F90C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F0350 8018F910 44804000 */  mtc1       $zero, $f8
/* F0354 8018F914 3C01800E */  lui        $at, %hi(D_800E3210)
/* F0358 8018F918 8CD90000 */  lw         $t9, 0x0($a2)
/* F035C 8018F91C 240B0004 */  addiu      $t3, $zero, 0x4
/* F0360 8018F920 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* F0364 8018F924 00195080 */  sll        $t2, $t9, 2
/* F0368 8018F928 002A0821 */  addu       $at, $at, $t2
/* F036C 8018F92C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
/* F0370 8018F930 AD0B0044 */  sw         $t3, 0x44($t0)
/* F0374 8018F934 8CCC0000 */  lw         $t4, 0x0($a2)
/* F0378 8018F938 3C048019 */  lui        $a0, %hi(D_8019395C_ovl3)
/* F037C 8018F93C 2484395C */  addiu      $a0, $a0, %lo(D_8019395C_ovl3)
/* F0380 8018F940 000C6880 */  sll        $t5, $t4, 2
/* F0384 8018F944 01CD7021 */  addu       $t6, $t6, $t5
/* F0388 8018F948 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* F038C 8018F94C 31D80006 */  andi       $t8, $t6, 0x6
/* F0390 8018F950 57000014 */  bnel       $t8, $zero, .L8018F9A4_ovl3
/* F0394 8018F954 950B00D2 */   lhu       $t3, 0xD2($t0)
/* F0398 8018F958 0C055127 */  jal        func_8015449C_ovl3
/* F039C 8018F95C 00002825 */   or        $a1, $zero, $zero
/* F03A0 8018F960 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F03A4 8018F964 1040000E */  beqz       $v0, .L8018F9A0_ovl3
/* F03A8 8018F968 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F03AC 8018F96C 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* F03B0 8018F970 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* F03B4 8018F974 44805000 */  mtc1       $zero, $f10
/* F03B8 8018F978 3C01800E */  lui        $at, %hi(D_800E3210)
/* F03BC 8018F97C 8DF90000 */  lw         $t9, 0x0($t7)
/* F03C0 8018F980 2404000B */  addiu      $a0, $zero, 0xB
/* F03C4 8018F984 2405000A */  addiu      $a1, $zero, 0xA
/* F03C8 8018F988 00195080 */  sll        $t2, $t9, 2
/* F03CC 8018F98C 002A0821 */  addu       $at, $at, $t2
/* F03D0 8018F990 0C02ED1A */  jal        func_800BB468
/* F03D4 8018F994 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
/* F03D8 8018F998 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F03DC 8018F99C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8018F9A0_ovl3:
/* F03E0 8018F9A0 950B00D2 */  lhu        $t3, 0xD2($t0)
.L8018F9A4_ovl3:
/* F03E4 8018F9A4 15600005 */  bnez       $t3, .L8018F9BC_ovl3
/* F03E8 8018F9A8 00000000 */   nop
/* F03EC 8018F9AC 0C047AF5 */  jal        func_8011EBD4
/* F03F0 8018F9B0 00000000 */   nop
/* F03F4 8018F9B4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F03F8 8018F9B8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L8018F9BC_ovl3:
/* F03FC 8018F9BC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F0400 8018F9C0 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F0404 8018F9C4 3C0C800F */  lui        $t4, %hi(D_800E83E0)
/* F0408 8018F9C8 24010002 */  addiu      $at, $zero, 0x2
/* F040C 8018F9CC 8CC70000 */  lw         $a3, 0x0($a2)
/* F0410 8018F9D0 3C0B800F */  lui        $t3, %hi(D_800E8AE0)
/* F0414 8018F9D4 3C02800E */  lui        $v0, %hi(D_800E3750)
/* F0418 8018F9D8 00073880 */  sll        $a3, $a3, 2
/* F041C 8018F9DC 01876021 */  addu       $t4, $t4, $a3
/* F0420 8018F9E0 8D8C83E0 */  lw         $t4, %lo(D_800E83E0)($t4)
/* F0424 8018F9E4 01675821 */  addu       $t3, $t3, $a3
/* F0428 8018F9E8 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* F042C 8018F9EC 15A1001B */  bne        $t5, $at, .L8018FA5C_ovl3
/* F0430 8018F9F0 00000000 */   nop
/* F0434 8018F9F4 44808000 */  mtc1       $zero, $f16
/* F0438 8018F9F8 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* F043C 8018F9FC 00477021 */  addu       $t6, $v0, $a3
/* F0440 8018FA00 E5D00000 */  swc1       $f16, 0x0($t6)
/* F0444 8018FA04 8CC70000 */  lw         $a3, 0x0($a2)
/* F0448 8018FA08 3C01800E */  lui        $at, %hi(D_800E3210)
/* F044C 8018FA0C 2404000B */  addiu      $a0, $zero, 0xB
/* F0450 8018FA10 00073880 */  sll        $a3, $a3, 2
/* F0454 8018FA14 0047C021 */  addu       $t8, $v0, $a3
/* F0458 8018FA18 C7120000 */  lwc1       $f18, 0x0($t8)
/* F045C 8018FA1C 00270821 */  addu       $at, $at, $a3
/* F0460 8018FA20 2405000A */  addiu      $a1, $zero, 0xA
/* F0464 8018FA24 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
/* F0468 8018FA28 8CCF0000 */  lw         $t7, 0x0($a2)
/* F046C 8018FA2C 3C018019 */  lui        $at, %hi(D_80197BD4_ovl3)
/* F0470 8018FA30 C4247BD4 */  lwc1       $f4, %lo(D_80197BD4_ovl3)($at)
/* F0474 8018FA34 3C01800E */  lui        $at, %hi(D_800E3C90)
/* F0478 8018FA38 000FC880 */  sll        $t9, $t7, 2
/* F047C 8018FA3C 00390821 */  addu       $at, $at, $t9
/* F0480 8018FA40 0C02ED1A */  jal        func_800BB468
/* F0484 8018FA44 E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
/* F0488 8018FA48 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F048C 8018FA4C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0490 8018FA50 240A0004 */  addiu      $t2, $zero, 0x4
/* F0494 8018FA54 10000018 */  b          .L8018FAB8_ovl3
/* F0498 8018FA58 AD0A0044 */   sw        $t2, 0x44($t0)
.L8018FA5C_ovl3:
/* F049C 8018FA5C 8D6B8AE0 */  lw         $t3, %lo(D_800E8AE0)($t3)
/* F04A0 8018FA60 316C0006 */  andi       $t4, $t3, 0x6
/* F04A4 8018FA64 15800014 */  bnez       $t4, .L8018FAB8_ovl3
/* F04A8 8018FA68 00000000 */   nop
/* F04AC 8018FA6C 910D0009 */  lbu        $t5, 0x9($t0)
/* F04B0 8018FA70 3C01800E */  lui        $at, %hi(D_800E3210)
/* F04B4 8018FA74 00270821 */  addu       $at, $at, $a3
/* F04B8 8018FA78 31AE0001 */  andi       $t6, $t5, 0x1
/* F04BC 8018FA7C 15C0000E */  bnez       $t6, .L8018FAB8_ovl3
/* F04C0 8018FA80 00000000 */   nop
/* F04C4 8018FA84 C50600CC */  lwc1       $f6, 0xCC($t0)
/* F04C8 8018FA88 C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
/* F04CC 8018FA8C 8FB80050 */  lw         $t8, 0x50($sp)
/* F04D0 8018FA90 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* F04D4 8018FA94 4608303C */  c.lt.s     $f6, $f8
/* F04D8 8018FA98 00000000 */  nop
/* F04DC 8018FA9C 45000006 */  bc1f       .L8018FAB8_ovl3
/* F04E0 8018FAA0 00000000 */   nop
/* F04E4 8018FAA4 8F0F003C */  lw         $t7, 0x3C($t8)
/* F04E8 8018FAA8 3C048019 */  lui        $a0, %hi(D_80190F2C_ovl3)
/* F04EC 8018FAAC 24840F2C */  addiu      $a0, $a0, %lo(D_80190F2C_ovl3)
/* F04F0 8018FAB0 0C05A153 */  jal        func_8016854C_ovl3
/* F04F4 8018FAB4 8DE50010 */   lw        $a1, 0x10($t7)
.L8018FAB8_ovl3:
/* F04F8 8018FAB8 0C048672 */  jal        func_801219C8
/* F04FC 8018FABC 00000000 */   nop
/* F0500 8018FAC0 0C047B5A */  jal        func_8011ED68
/* F0504 8018FAC4 00000000 */   nop
/* F0508 8018FAC8 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F050C 8018FACC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0510 8018FAD0 10000102 */  b          .L8018FEDC_ovl3
/* F0514 8018FAD4 8D030044 */   lw        $v1, 0x44($t0)
/* F0518 8018FAD8 8D190034 */  lw         $t9, 0x34($t0)
/* F051C 8018FADC 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* F0520 8018FAE0 332A0001 */  andi       $t2, $t9, 0x1
/* F0524 8018FAE4 5540000C */  bnel       $t2, $zero, .L8018FB18_ovl3
/* F0528 8018FAE8 8D0F003C */   lw        $t7, 0x3C($t0)
/* F052C 8018FAEC 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* F0530 8018FAF0 3C0E800F */  lui        $t6, %hi(D_800E8920)
/* F0534 8018FAF4 8D6C0000 */  lw         $t4, 0x0($t3)
/* F0538 8018FAF8 000C6880 */  sll        $t5, $t4, 2
/* F053C 8018FAFC 01CD7021 */  addu       $t6, $t6, $t5
/* F0540 8018FB00 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
/* F0544 8018FB04 51C00004 */  beql       $t6, $zero, .L8018FB18_ovl3
/* F0548 8018FB08 8D0F003C */   lw        $t7, 0x3C($t0)
/* F054C 8018FB0C 24030005 */  addiu      $v1, $zero, 0x5
/* F0550 8018FB10 AD030044 */  sw         $v1, 0x44($t0)
/* F0554 8018FB14 8D0F003C */  lw         $t7, 0x3C($t0)
.L8018FB18_ovl3:
/* F0558 8018FB18 15E30003 */  bne        $t7, $v1, .L8018FB28_ovl3
/* F055C 8018FB1C 00000000 */   nop
/* F0560 8018FB20 0C048672 */  jal        func_801219C8
/* F0564 8018FB24 00000000 */   nop
.L8018FB28_ovl3:
/* F0568 8018FB28 0C047B5A */  jal        func_8011ED68
/* F056C 8018FB2C 00000000 */   nop
/* F0570 8018FB30 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0574 8018FB34 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0578 8018FB38 100000E8 */  b          .L8018FEDC_ovl3
/* F057C 8018FB3C 8D030044 */   lw        $v1, 0x44($t0)
/* F0580 8018FB40 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* F0584 8018FB44 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* F0588 8018FB48 3C01800E */  lui        $at, %hi(D_800E64D0)
/* F058C 8018FB4C 44805000 */  mtc1       $zero, $f10
/* F0590 8018FB50 8F2A0000 */  lw         $t2, 0x0($t9)
/* F0594 8018FB54 240C0002 */  addiu      $t4, $zero, 0x2
/* F0598 8018FB58 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
/* F059C 8018FB5C 000A5880 */  sll        $t3, $t2, 2
/* F05A0 8018FB60 002B0821 */  addu       $at, $at, $t3
/* F05A4 8018FB64 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
/* F05A8 8018FB68 46105032 */  c.eq.s     $f10, $f16
/* F05AC 8018FB6C 00000000 */  nop
/* F05B0 8018FB70 45010003 */  bc1t       .L8018FB80_ovl3
/* F05B4 8018FB74 00000000 */   nop
/* F05B8 8018FB78 1000000F */  b          .L8018FBB8_ovl3
/* F05BC 8018FB7C AD0C0044 */   sw        $t4, 0x44($t0)
.L8018FB80_ovl3:
/* F05C0 8018FB80 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
/* F05C4 8018FB84 24180003 */  addiu      $t8, $zero, 0x3
/* F05C8 8018FB88 31AE8000 */  andi       $t6, $t5, 0x8000
/* F05CC 8018FB8C 11C00003 */  beqz       $t6, .L8018FB9C_ovl3
/* F05D0 8018FB90 00000000 */   nop
/* F05D4 8018FB94 10000008 */  b          .L8018FBB8_ovl3
/* F05D8 8018FB98 AD180044 */   sw        $t8, 0x44($t0)
.L8018FB9C_ovl3:
/* F05DC 8018FB9C 0C02BC8C */  jal        func_800AF230
/* F05E0 8018FBA0 00000000 */   nop
/* F05E4 8018FBA4 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F05E8 8018FBA8 10400003 */  beqz       $v0, .L8018FBB8_ovl3
/* F05EC 8018FBAC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F05F0 8018FBB0 240F0001 */  addiu      $t7, $zero, 0x1
/* F05F4 8018FBB4 AD0F0044 */  sw         $t7, 0x44($t0)
.L8018FBB8_ovl3:
/* F05F8 8018FBB8 100000C8 */  b          .L8018FEDC_ovl3
/* F05FC 8018FBBC 8D030044 */   lw        $v1, 0x44($t0)
/* F0600 8018FBC0 3C04800D */  lui        $a0, %hi(gKirbyController)
/* F0604 8018FBC4 94846FE8 */  lhu        $a0, %lo(gKirbyController)($a0)
/* F0608 8018FBC8 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F060C 8018FBCC 30840F00 */  andi       $a0, $a0, 0xF00
/* F0610 8018FBD0 1080000A */  beqz       $a0, .L8018FBFC_ovl3
/* F0614 8018FBD4 00000000 */   nop
/* F0618 8018FBD8 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F061C 8018FBDC 3C05800F */  lui        $a1, %hi(D_800E9560)
/* F0620 8018FBE0 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F0624 8018FBE4 8CCA0000 */  lw         $t2, 0x0($a2)
/* F0628 8018FBE8 2419001E */  addiu      $t9, $zero, 0x1E
/* F062C 8018FBEC 000A5880 */  sll        $t3, $t2, 2
/* F0630 8018FBF0 00AB6021 */  addu       $t4, $a1, $t3
/* F0634 8018FBF4 10000018 */  b          .L8018FC58_ovl3
/* F0638 8018FBF8 AD990000 */   sw        $t9, 0x0($t4)
.L8018FBFC_ovl3:
/* F063C 8018FBFC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F0640 8018FC00 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F0644 8018FC04 3C01800E */  lui        $at, %hi(D_800E3210)
/* F0648 8018FC08 44809000 */  mtc1       $zero, $f18
/* F064C 8018FC0C 8CC70000 */  lw         $a3, 0x0($a2)
/* F0650 8018FC10 00073880 */  sll        $a3, $a3, 2
/* F0654 8018FC14 00270821 */  addu       $at, $at, $a3
/* F0658 8018FC18 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
/* F065C 8018FC1C 4604903C */  c.lt.s     $f18, $f4
/* F0660 8018FC20 00000000 */  nop
/* F0664 8018FC24 45000006 */  bc1f       .L8018FC40_ovl3
/* F0668 8018FC28 3C05800F */   lui       $a1, %hi(D_800E9560)
/* F066C 8018FC2C 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F0670 8018FC30 00A77021 */  addu       $t6, $a1, $a3
/* F0674 8018FC34 240D001E */  addiu      $t5, $zero, 0x1E
/* F0678 8018FC38 10000007 */  b          .L8018FC58_ovl3
/* F067C 8018FC3C ADCD0000 */   sw        $t5, 0x0($t6)
.L8018FC40_ovl3:
/* F0680 8018FC40 3C05800F */  lui        $a1, %hi(D_800E9560)
/* F0684 8018FC44 24A59560 */  addiu      $a1, $a1, %lo(D_800E9560)
/* F0688 8018FC48 00A71021 */  addu       $v0, $a1, $a3
/* F068C 8018FC4C 8C580000 */  lw         $t8, 0x0($v0)
/* F0690 8018FC50 270FFFFF */  addiu      $t7, $t8, -0x1
/* F0694 8018FC54 AC4F0000 */  sw         $t7, 0x0($v0)
.L8018FC58_ovl3:
/* F0698 8018FC58 8CC70000 */  lw         $a3, 0x0($a2)
/* F069C 8018FC5C 3C0A800F */  lui        $t2, %hi(D_800E8AE0)
/* F06A0 8018FC60 00073880 */  sll        $a3, $a3, 2
/* F06A4 8018FC64 01475021 */  addu       $t2, $t2, $a3
/* F06A8 8018FC68 8D4A8AE0 */  lw         $t2, %lo(D_800E8AE0)($t2)
/* F06AC 8018FC6C 314B0006 */  andi       $t3, $t2, 0x6
/* F06B0 8018FC70 11600030 */  beqz       $t3, .L8018FD34_ovl3
/* F06B4 8018FC74 3C19800F */   lui       $t9, %hi(D_800E8920)
/* F06B8 8018FC78 0327C821 */  addu       $t9, $t9, $a3
/* F06BC 8018FC7C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* F06C0 8018FC80 13200011 */  beqz       $t9, .L8018FCC8_ovl3
/* F06C4 8018FC84 00000000 */   nop
/* F06C8 8018FC88 0C04842D */  jal        func_801210B4
/* F06CC 8018FC8C 00000000 */   nop
/* F06D0 8018FC90 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F06D4 8018FC94 10400004 */  beqz       $v0, .L8018FCA8_ovl3
/* F06D8 8018FC98 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F06DC 8018FC9C 240C0002 */  addiu      $t4, $zero, 0x2
/* F06E0 8018FCA0 10000003 */  b          .L8018FCB0_ovl3
/* F06E4 8018FCA4 AD0C0044 */   sw        $t4, 0x44($t0)
.L8018FCA8_ovl3:
/* F06E8 8018FCA8 240D0001 */  addiu      $t5, $zero, 0x1
/* F06EC 8018FCAC AD0D0044 */  sw         $t5, 0x44($t0)
.L8018FCB0_ovl3:
/* F06F0 8018FCB0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* F06F4 8018FCB4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* F06F8 8018FCB8 8D030044 */  lw         $v1, 0x44($t0)
/* F06FC 8018FCBC 8DC70000 */  lw         $a3, 0x0($t6)
/* F0700 8018FCC0 1000002A */  b          .L8018FD6C_ovl3
/* F0704 8018FCC4 00073880 */   sll       $a3, $a3, 2
.L8018FCC8_ovl3:
/* F0708 8018FCC8 14800028 */  bnez       $a0, .L8018FD6C_ovl3
/* F070C 8018FCCC 00A7C021 */   addu      $t8, $a1, $a3
/* F0710 8018FCD0 8F0F0000 */  lw         $t7, 0x0($t8)
/* F0714 8018FCD4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* F0718 8018FCD8 00270821 */  addu       $at, $at, $a3
/* F071C 8018FCDC 15E00023 */  bnez       $t7, .L8018FD6C_ovl3
/* F0720 8018FCE0 00000000 */   nop
/* F0724 8018FCE4 44803000 */  mtc1       $zero, $f6
/* F0728 8018FCE8 C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
/* F072C 8018FCEC 3C018019 */  lui        $at, %hi(D_80197BD8_ovl3)
/* F0730 8018FCF0 46083032 */  c.eq.s     $f6, $f8
/* F0734 8018FCF4 00000000 */  nop
/* F0738 8018FCF8 4500001C */  bc1f       .L8018FD6C_ovl3
/* F073C 8018FCFC 00000000 */   nop
/* F0740 8018FD00 C42A7BD8 */  lwc1       $f10, %lo(D_80197BD8_ovl3)($at)
/* F0744 8018FD04 3C01800E */  lui        $at, %hi(D_800E3210)
/* F0748 8018FD08 00270821 */  addu       $at, $at, $a3
/* F074C 8018FD0C C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
/* F0750 8018FD10 460A803E */  c.le.s     $f16, $f10
/* F0754 8018FD14 00000000 */  nop
/* F0758 8018FD18 45000014 */  bc1f       .L8018FD6C_ovl3
/* F075C 8018FD1C 00000000 */   nop
/* F0760 8018FD20 24030004 */  addiu      $v1, $zero, 0x4
/* F0764 8018FD24 AD030044 */  sw         $v1, 0x44($t0)
/* F0768 8018FD28 8CC70000 */  lw         $a3, 0x0($a2)
/* F076C 8018FD2C 1000000F */  b          .L8018FD6C_ovl3
/* F0770 8018FD30 00073880 */   sll       $a3, $a3, 2
.L8018FD34_ovl3:
/* F0774 8018FD34 3C0B800F */  lui        $t3, %hi(D_800E8920)
/* F0778 8018FD38 01675821 */  addu       $t3, $t3, $a3
/* F077C 8018FD3C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
/* F0780 8018FD40 24030003 */  addiu      $v1, $zero, 0x3
/* F0784 8018FD44 51600007 */  beql       $t3, $zero, .L8018FD64_ovl3
/* F0788 8018FD48 AD030044 */   sw        $v1, 0x44($t0)
/* F078C 8018FD4C 24030002 */  addiu      $v1, $zero, 0x2
/* F0790 8018FD50 AD030044 */  sw         $v1, 0x44($t0)
/* F0794 8018FD54 8CC70000 */  lw         $a3, 0x0($a2)
/* F0798 8018FD58 10000004 */  b          .L8018FD6C_ovl3
/* F079C 8018FD5C 00073880 */   sll       $a3, $a3, 2
/* F07A0 8018FD60 AD030044 */  sw         $v1, 0x44($t0)
.L8018FD64_ovl3:
/* F07A4 8018FD64 8CC70000 */  lw         $a3, 0x0($a2)
/* F07A8 8018FD68 00073880 */  sll        $a3, $a3, 2
.L8018FD6C_ovl3:
/* F07AC 8018FD6C 3C0D800F */  lui        $t5, %hi(D_800E93A0)
/* F07B0 8018FD70 25AD93A0 */  addiu      $t5, $t5, %lo(D_800E93A0)
/* F07B4 8018FD74 00ED1021 */  addu       $v0, $a3, $t5
/* F07B8 8018FD78 8C440000 */  lw         $a0, 0x0($v0)
/* F07BC 8018FD7C 10800002 */  beqz       $a0, .L8018FD88_ovl3
/* F07C0 8018FD80 248EFFFF */   addiu     $t6, $a0, -0x1
/* F07C4 8018FD84 AC4E0000 */  sw         $t6, 0x0($v0)
.L8018FD88_ovl3:
/* F07C8 8018FD88 8D18003C */  lw         $t8, 0x3C($t0)
/* F07CC 8018FD8C 57030007 */  bnel       $t8, $v1, .L8018FDAC_ovl3
/* F07D0 8018FD90 910F0017 */   lbu       $t7, 0x17($t0)
/* F07D4 8018FD94 0C048672 */  jal        func_801219C8
/* F07D8 8018FD98 00000000 */   nop
/* F07DC 8018FD9C 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F07E0 8018FDA0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F07E4 8018FDA4 8D030044 */  lw         $v1, 0x44($t0)
/* F07E8 8018FDA8 910F0017 */  lbu        $t7, 0x17($t0)
.L8018FDAC_ovl3:
/* F07EC 8018FDAC 15E0004B */  bnez       $t7, .L8018FEDC_ovl3
/* F07F0 8018FDB0 3C068005 */   lui       $a2, %hi(D_8004A7C4)
/* F07F4 8018FDB4 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F07F8 8018FDB8 3C0A800D */  lui        $t2, %hi(gKirbyController)
/* F07FC 8018FDBC 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
/* F0800 8018FDC0 8CC70000 */  lw         $a3, 0x0($a2)
/* F0804 8018FDC4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* F0808 8018FDC8 314B0300 */  andi       $t3, $t2, 0x300
/* F080C 8018FDCC 15600011 */  bnez       $t3, .L8018FE14_ovl3
/* F0810 8018FDD0 00073880 */   sll       $a3, $a3, 2
/* F0814 8018FDD4 3C01800E */  lui        $at, %hi(D_800E6A10)
/* F0818 8018FDD8 00270821 */  addu       $at, $at, $a3
/* F081C 8018FDDC C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* F0820 8018FDE0 3C018019 */  lui        $at, %hi(D_80197BDC_ovl3)
/* F0824 8018FDE4 C4247BDC */  lwc1       $f4, %lo(D_80197BDC_ovl3)($at)
/* F0828 8018FDE8 3C01800E */  lui        $at, %hi(D_800E6690)
/* F082C 8018FDEC 00270821 */  addu       $at, $at, $a3
/* F0830 8018FDF0 46049182 */  mul.s      $f6, $f18, $f4
/* F0834 8018FDF4 44804000 */  mtc1       $zero, $f8
/* F0838 8018FDF8 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
/* F083C 8018FDFC 8CD90000 */  lw         $t9, 0x0($a2)
/* F0840 8018FE00 3C01800E */  lui        $at, %hi(D_800E6850)
/* F0844 8018FE04 00196080 */  sll        $t4, $t9, 2
/* F0848 8018FE08 002C0821 */  addu       $at, $at, $t4
/* F084C 8018FE0C 10000033 */  b          .L8018FEDC_ovl3
/* F0850 8018FE10 E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
.L8018FE14_ovl3:
/* F0854 8018FE14 00270821 */  addu       $at, $at, $a3
/* F0858 8018FE18 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
/* F085C 8018FE1C 3C018019 */  lui        $at, %hi(D_80197BE0_ovl3)
/* F0860 8018FE20 C4307BE0 */  lwc1       $f16, %lo(D_80197BE0_ovl3)($at)
/* F0864 8018FE24 3C01800E */  lui        $at, %hi(D_800E6690)
/* F0868 8018FE28 00270821 */  addu       $at, $at, $a3
/* F086C 8018FE2C 46105482 */  mul.s      $f18, $f10, $f16
/* F0870 8018FE30 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* F0874 8018FE34 8CCD0000 */  lw         $t5, 0x0($a2)
/* F0878 8018FE38 3C018019 */  lui        $at, %hi(D_80197BE4_ovl3)
/* F087C 8018FE3C C4247BE4 */  lwc1       $f4, %lo(D_80197BE4_ovl3)($at)
/* F0880 8018FE40 3C01800E */  lui        $at, %hi(D_800E6850)
/* F0884 8018FE44 000D7080 */  sll        $t6, $t5, 2
/* F0888 8018FE48 002E0821 */  addu       $at, $at, $t6
/* F088C 8018FE4C 10000023 */  b          .L8018FEDC_ovl3
/* F0890 8018FE50 E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
/* F0894 8018FE54 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* F0898 8018FE58 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* F089C 8018FE5C 3C0F800F */  lui        $t7, %hi(D_800EA360)
/* F08A0 8018FE60 3C0A800F */  lui        $t2, %hi(D_800E8920)
/* F08A4 8018FE64 8F070000 */  lw         $a3, 0x0($t8)
/* F08A8 8018FE68 00073880 */  sll        $a3, $a3, 2
/* F08AC 8018FE6C 01E77821 */  addu       $t7, $t7, $a3
/* F08B0 8018FE70 8DEFA360 */  lw         $t7, %lo(D_800EA360)($t7)
/* F08B4 8018FE74 01475021 */  addu       $t2, $t2, $a3
/* F08B8 8018FE78 11E00013 */  beqz       $t7, .L8018FEC8_ovl3
/* F08BC 8018FE7C 00000000 */   nop
/* F08C0 8018FE80 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
/* F08C4 8018FE84 240C0004 */  addiu      $t4, $zero, 0x4
/* F08C8 8018FE88 5140000D */  beql       $t2, $zero, .L8018FEC0_ovl3
/* F08CC 8018FE8C AD0C0044 */   sw        $t4, 0x44($t0)
/* F08D0 8018FE90 0C04842D */  jal        func_801210B4
/* F08D4 8018FE94 00000000 */   nop
/* F08D8 8018FE98 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F08DC 8018FE9C 10400004 */  beqz       $v0, .L8018FEB0_ovl3
/* F08E0 8018FEA0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
/* F08E4 8018FEA4 240B0002 */  addiu      $t3, $zero, 0x2
/* F08E8 8018FEA8 10000005 */  b          .L8018FEC0_ovl3
/* F08EC 8018FEAC AD0B0044 */   sw        $t3, 0x44($t0)
.L8018FEB0_ovl3:
/* F08F0 8018FEB0 24190001 */  addiu      $t9, $zero, 0x1
/* F08F4 8018FEB4 10000002 */  b          .L8018FEC0_ovl3
/* F08F8 8018FEB8 AD190044 */   sw        $t9, 0x44($t0)
/* F08FC 8018FEBC AD0C0044 */  sw         $t4, 0x44($t0)
.L8018FEC0_ovl3:
/* F0900 8018FEC0 0C047734 */  jal        func_8011DCD0
/* F0904 8018FEC4 00000000 */   nop
.L8018FEC8_ovl3:
/* F0908 8018FEC8 0C047B5A */  jal        func_8011ED68
/* F090C 8018FECC 00000000 */   nop
/* F0910 8018FED0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0914 8018FED4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0918 8018FED8 8D030044 */  lw         $v1, 0x44($t0)
.L8018FEDC_ovl3:
/* F091C 8018FEDC 24020007 */  addiu      $v0, $zero, 0x7
/* F0920 8018FEE0 10430003 */  beq        $v0, $v1, .L8018FEF0_ovl3
/* F0924 8018FEE4 3C0D8005 */   lui       $t5, %hi(D_8004A7C4)
/* F0928 8018FEE8 1460008C */  bnez       $v1, .L8019011C_ovl3
/* F092C 8018FEEC 24010008 */   addiu     $at, $zero, 0x8
.L8018FEF0_ovl3:
/* F0930 8018FEF0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* F0934 8018FEF4 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* F0938 8018FEF8 3C048019 */  lui        $a0, %hi(D_801922CC_ovl3)
/* F093C 8018FEFC 8DAE0000 */  lw         $t6, 0x0($t5)
/* F0940 8018FF00 248422CC */  addiu      $a0, $a0, %lo(D_801922CC_ovl3)
/* F0944 8018FF04 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* F0948 8018FF08 000EC080 */  sll        $t8, $t6, 2
/* F094C 8018FF0C 01F87821 */  addu       $t7, $t7, $t8
/* F0950 8018FF10 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* F0954 8018FF14 0C05A153 */  jal        func_8016854C_ovl3
/* F0958 8018FF18 8DE50038 */   lw        $a1, 0x38($t7)
/* F095C 8018FF1C 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* F0960 8018FF20 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* F0964 8018FF24 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* F0968 8018FF28 27A40040 */  addiu      $a0, $sp, 0x40
/* F096C 8018FF2C 8D4B0000 */  lw         $t3, 0x0($t2)
/* F0970 8018FF30 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* F0974 8018FF34 000BC880 */  sll        $t9, $t3, 2
/* F0978 8018FF38 01996021 */  addu       $t4, $t4, $t9
/* F097C 8018FF3C 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* F0980 8018FF40 0C02C8D0 */  jal        func_800B2340
/* F0984 8018FF44 8D850038 */   lw        $a1, 0x38($t4)
/* F0988 8018FF48 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* F098C 8018FF4C 8CC6A7C4 */  lw         $a2, %lo(D_8004A7C4)($a2)
/* F0990 8018FF50 3C03800E */  lui        $v1, %hi(gEntitiesNextPosYArray)
/* F0994 8018FF54 24632790 */  addiu      $v1, $v1, %lo(gEntitiesNextPosYArray)
/* F0998 8018FF58 8CCD0000 */  lw         $t5, 0x0($a2)
/* F099C 8018FF5C C7A60044 */  lwc1       $f6, 0x44($sp)
/* F09A0 8018FF60 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
/* F09A4 8018FF64 000D7080 */  sll        $t6, $t5, 2
/* F09A8 8018FF68 006EC021 */  addu       $t8, $v1, $t6
/* F09AC 8018FF6C C7080000 */  lwc1       $f8, 0x0($t8)
/* F09B0 8018FF70 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
/* F09B4 8018FF74 3C01421C */  lui        $at, (0x421C0000 >> 16)
/* F09B8 8018FF78 46083001 */  sub.s      $f0, $f6, $f8
/* F09BC 8018FF7C 44806000 */  mtc1       $zero, $f12
/* F09C0 8018FF80 44815000 */  mtc1       $at, $f10
/* F09C4 8018FF84 C7B00044 */  lwc1       $f16, 0x44($sp)
/* F09C8 8018FF88 E4400008 */  swc1       $f0, 0x8($v0)
/* F09CC 8018FF8C E4400000 */  swc1       $f0, 0x0($v0)
/* F09D0 8018FF90 E44C0004 */  swc1       $f12, 0x4($v0)
/* F09D4 8018FF94 E44A000C */  swc1       $f10, 0xC($v0)
/* F09D8 8018FF98 8CCF0000 */  lw         $t7, 0x0($a2)
/* F09DC 8018FF9C 3C014220 */  lui        $at, (0x42200000 >> 16)
/* F09E0 8018FFA0 44812000 */  mtc1       $at, $f4
/* F09E4 8018FFA4 000F5080 */  sll        $t2, $t7, 2
/* F09E8 8018FFA8 006A5821 */  addu       $t3, $v1, $t2
/* F09EC 8018FFAC C5720000 */  lwc1       $f18, 0x0($t3)
/* F09F0 8018FFB0 3C01429E */  lui        $at, (0x429E0000 >> 16)
/* F09F4 8018FFB4 44813000 */  mtc1       $at, $f6
/* F09F8 8018FFB8 46128001 */  sub.s      $f0, $f16, $f18
/* F09FC 8018FFBC E4440014 */  swc1       $f4, 0x14($v0)
/* F0A00 8018FFC0 E446001C */  swc1       $f6, 0x1C($v0)
/* F0A04 8018FFC4 C7A80044 */  lwc1       $f8, 0x44($sp)
/* F0A08 8018FFC8 E4400018 */  swc1       $f0, 0x18($v0)
/* F0A0C 8018FFCC E4400010 */  swc1       $f0, 0x10($v0)
/* F0A10 8018FFD0 8CD90000 */  lw         $t9, 0x0($a2)
/* F0A14 8018FFD4 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* F0A18 8018FFD8 44818000 */  mtc1       $at, $f16
/* F0A1C 8018FFDC 00196080 */  sll        $t4, $t9, 2
/* F0A20 8018FFE0 006C6821 */  addu       $t5, $v1, $t4
/* F0A24 8018FFE4 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* F0A28 8018FFE8 3C0142F0 */  lui        $at, (0x42F00000 >> 16)
/* F0A2C 8018FFEC 44819000 */  mtc1       $at, $f18
/* F0A30 8018FFF0 460A4001 */  sub.s      $f0, $f8, $f10
/* F0A34 8018FFF4 E4500024 */  swc1       $f16, 0x24($v0)
/* F0A38 8018FFF8 E452002C */  swc1       $f18, 0x2C($v0)
/* F0A3C 8018FFFC C7A40044 */  lwc1       $f4, 0x44($sp)
/* F0A40 80190000 E4400028 */  swc1       $f0, 0x28($v0)
/* F0A44 80190004 E4400020 */  swc1       $f0, 0x20($v0)
/* F0A48 80190008 8CCE0000 */  lw         $t6, 0x0($a2)
/* F0A4C 8019000C 3C01C21C */  lui        $at, (0xC21C0000 >> 16)
/* F0A50 80190010 44814000 */  mtc1       $at, $f8
/* F0A54 80190014 000EC080 */  sll        $t8, $t6, 2
/* F0A58 80190018 00787821 */  addu       $t7, $v1, $t8
/* F0A5C 8019001C C5E60000 */  lwc1       $f6, 0x0($t7)
/* F0A60 80190020 E44C0034 */  swc1       $f12, 0x34($v0)
/* F0A64 80190024 E448003C */  swc1       $f8, 0x3C($v0)
/* F0A68 80190028 46062001 */  sub.s      $f0, $f4, $f6
/* F0A6C 8019002C C7AA0044 */  lwc1       $f10, 0x44($sp)
/* F0A70 80190030 3C01C220 */  lui        $at, (0xC2200000 >> 16)
/* F0A74 80190034 44819000 */  mtc1       $at, $f18
/* F0A78 80190038 E4400038 */  swc1       $f0, 0x38($v0)
/* F0A7C 8019003C E4400030 */  swc1       $f0, 0x30($v0)
/* F0A80 80190040 8CCA0000 */  lw         $t2, 0x0($a2)
/* F0A84 80190044 3C01C29E */  lui        $at, (0xC29E0000 >> 16)
/* F0A88 80190048 44812000 */  mtc1       $at, $f4
/* F0A8C 8019004C 000A5880 */  sll        $t3, $t2, 2
/* F0A90 80190050 006BC821 */  addu       $t9, $v1, $t3
/* F0A94 80190054 C7300000 */  lwc1       $f16, 0x0($t9)
/* F0A98 80190058 E4520044 */  swc1       $f18, 0x44($v0)
/* F0A9C 8019005C E444004C */  swc1       $f4, 0x4C($v0)
/* F0AA0 80190060 46105001 */  sub.s      $f0, $f10, $f16
/* F0AA4 80190064 C7A60044 */  lwc1       $f6, 0x44($sp)
/* F0AA8 80190068 3C01C2A0 */  lui        $at, (0xC2A00000 >> 16)
/* F0AAC 8019006C 44815000 */  mtc1       $at, $f10
/* F0AB0 80190070 E4400048 */  swc1       $f0, 0x48($v0)
/* F0AB4 80190074 E4400040 */  swc1       $f0, 0x40($v0)
/* F0AB8 80190078 8CCC0000 */  lw         $t4, 0x0($a2)
/* F0ABC 8019007C 3C01C2F0 */  lui        $at, (0xC2F00000 >> 16)
/* F0AC0 80190080 44818000 */  mtc1       $at, $f16
/* F0AC4 80190084 000C6880 */  sll        $t5, $t4, 2
/* F0AC8 80190088 006D7021 */  addu       $t6, $v1, $t5
/* F0ACC 8019008C C5C80000 */  lwc1       $f8, 0x0($t6)
/* F0AD0 80190090 E44A0054 */  swc1       $f10, 0x54($v0)
/* F0AD4 80190094 E450005C */  swc1       $f16, 0x5C($v0)
/* F0AD8 80190098 46083001 */  sub.s      $f0, $f6, $f8
/* F0ADC 8019009C 3C01800E */  lui        $at, %hi(D_800E17D0)
/* F0AE0 801900A0 44809000 */  mtc1       $zero, $f18
/* F0AE4 801900A4 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* F0AE8 801900A8 E4400058 */  swc1       $f0, 0x58($v0)
/* F0AEC 801900AC E4400050 */  swc1       $f0, 0x50($v0)
/* F0AF0 801900B0 8CC70000 */  lw         $a3, 0x0($a2)
/* F0AF4 801900B4 00073880 */  sll        $a3, $a3, 2
/* F0AF8 801900B8 00270821 */  addu       $at, $at, $a3
/* F0AFC 801900BC C42217D0 */  lwc1       $f2, %lo(D_800E17D0)($at)
/* F0B00 801900C0 0307C021 */  addu       $t8, $t8, $a3
/* F0B04 801900C4 4612103C */  c.lt.s     $f2, $f18
/* F0B08 801900C8 00000000 */  nop
/* F0B0C 801900CC 45020004 */  bc1fl      .L801900E0_ovl3
/* F0B10 801900D0 46001006 */   mov.s     $f0, $f2
/* F0B14 801900D4 10000002 */  b          .L801900E0_ovl3
/* F0B18 801900D8 46001007 */   neg.s     $f0, $f2
/* F0B1C 801900DC 46001006 */  mov.s      $f0, $f2
.L801900E0_ovl3:
/* F0B20 801900E0 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* F0B24 801900E4 3C048019 */  lui        $a0, %hi(D_801964BC_ovl3)
/* F0B28 801900E8 248464BC */  addiu      $a0, $a0, %lo(D_801964BC_ovl3)
/* F0B2C 801900EC 8F0F003C */  lw         $t7, 0x3C($t8)
/* F0B30 801900F0 00002825 */  or         $a1, $zero, $zero
/* F0B34 801900F4 C5E40034 */  lwc1       $f4, 0x34($t7)
/* F0B38 801900F8 46040080 */  add.s      $f2, $f0, $f4
/* F0B3C 801900FC 44061000 */  mfc1       $a2, $f2
/* F0B40 80190100 0C05515E */  jal        func_80154578_ovl3
/* F0B44 80190104 00000000 */   nop
/* F0B48 80190108 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0B4C 8019010C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0B50 80190110 8D030044 */  lw         $v1, 0x44($t0)
/* F0B54 80190114 10000022 */  b          .L801901A0_ovl3
/* F0B58 80190118 24020007 */   addiu     $v0, $zero, 0x7
.L8019011C_ovl3:
/* F0B5C 8019011C 10610020 */  beq        $v1, $at, .L801901A0_ovl3
/* F0B60 80190120 3C0A8005 */   lui       $t2, %hi(D_8004A7C4)
/* F0B64 80190124 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* F0B68 80190128 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
/* F0B6C 8019012C 3C048019 */  lui        $a0, %hi(D_80192264_ovl3)
/* F0B70 80190130 8D4B0000 */  lw         $t3, 0x0($t2)
/* F0B74 80190134 24842264 */  addiu      $a0, $a0, %lo(D_80192264_ovl3)
/* F0B78 80190138 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* F0B7C 8019013C 000BC880 */  sll        $t9, $t3, 2
/* F0B80 80190140 01996021 */  addu       $t4, $t4, $t9
/* F0B84 80190144 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
/* F0B88 80190148 0C05A153 */  jal        func_8016854C_ovl3
/* F0B8C 8019014C 8D850038 */   lw        $a1, 0x38($t4)
/* F0B90 80190150 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* F0B94 80190154 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* F0B98 80190158 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* F0B9C 8019015C 3C048019 */  lui        $a0, %hi(D_801964B0_ovl3)
/* F0BA0 80190160 8DAE0000 */  lw         $t6, 0x0($t5)
/* F0BA4 80190164 248464B0 */  addiu      $a0, $a0, %lo(D_801964B0_ovl3)
/* F0BA8 80190168 00002825 */  or         $a1, $zero, $zero
/* F0BAC 8019016C 000EC080 */  sll        $t8, $t6, 2
/* F0BB0 80190170 00380821 */  addu       $at, $at, $t8
/* F0BB4 80190174 C42641D0 */  lwc1       $f6, %lo(gEntitiesAngleYArray)($at)
/* F0BB8 80190178 3C018019 */  lui        $at, %hi(D_80197BE8_ovl3)
/* F0BBC 8019017C C4287BE8 */  lwc1       $f8, %lo(D_80197BE8_ovl3)($at)
/* F0BC0 80190180 46083280 */  add.s      $f10, $f6, $f8
/* F0BC4 80190184 44065000 */  mfc1       $a2, $f10
/* F0BC8 80190188 0C05515E */  jal        func_80154578_ovl3
/* F0BCC 8019018C 00000000 */   nop
/* F0BD0 80190190 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0BD4 80190194 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0BD8 80190198 8D030044 */  lw         $v1, 0x44($t0)
/* F0BDC 8019019C 24020007 */  addiu      $v0, $zero, 0x7
.L801901A0_ovl3:
/* F0BE0 801901A0 10430048 */  beq        $v0, $v1, .L801902C4_ovl3
/* F0BE4 801901A4 8D06003C */   lw        $a2, 0x3C($t0)
/* F0BE8 801901A8 24090008 */  addiu      $t1, $zero, 0x8
/* F0BEC 801901AC 11230045 */  beq        $t1, $v1, .L801902C4_ovl3
/* F0BF0 801901B0 3C05800D */   lui       $a1, %hi(gKirbyController + 0x2)
/* F0BF4 801901B4 94A56FEA */  lhu        $a1, %lo(gKirbyController + 0x2)($a1)
/* F0BF8 801901B8 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* F0BFC 801901BC 30AF4000 */  andi       $t7, $a1, 0x4000
/* F0C00 801901C0 11E00004 */  beqz       $t7, .L801901D4_ovl3
/* F0C04 801901C4 00000000 */   nop
/* F0C08 801901C8 AD020044 */  sw         $v0, 0x44($t0)
/* F0C0C 801901CC 1000003D */  b          .L801902C4_ovl3
/* F0C10 801901D0 00401825 */   or        $v1, $v0, $zero
.L801901D4_ovl3:
/* F0C14 801901D4 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* F0C18 801901D8 3C04800F */  lui        $a0, %hi(D_800E8920)
/* F0C1C 801901DC 30AB0400 */  andi       $t3, $a1, 0x400
/* F0C20 801901E0 8D470000 */  lw         $a3, 0x0($t2)
/* F0C24 801901E4 00073880 */  sll        $a3, $a3, 2
/* F0C28 801901E8 00872021 */  addu       $a0, $a0, $a3
/* F0C2C 801901EC 8C848920 */  lw         $a0, %lo(D_800E8920)($a0)
/* F0C30 801901F0 10800006 */  beqz       $a0, .L8019020C_ovl3
/* F0C34 801901F4 00000000 */   nop
/* F0C38 801901F8 11600004 */  beqz       $t3, .L8019020C_ovl3
/* F0C3C 801901FC 00000000 */   nop
/* F0C40 80190200 AD090044 */  sw         $t1, 0x44($t0)
/* F0C44 80190204 1000002F */  b          .L801902C4_ovl3
/* F0C48 80190208 01201825 */   or        $v1, $t1, $zero
.L8019020C_ovl3:
/* F0C4C 8019020C 1043002D */  beq        $v0, $v1, .L801902C4_ovl3
/* F0C50 80190210 3C02800F */   lui       $v0, %hi(D_800E8AE0)
/* F0C54 80190214 00471021 */  addu       $v0, $v0, $a3
/* F0C58 80190218 10800016 */  beqz       $a0, .L80190274_ovl3
/* F0C5C 8019021C 8C428AE0 */   lw        $v0, %lo(D_800E8AE0)($v0)
/* F0C60 80190220 30590007 */  andi       $t9, $v0, 0x7
/* F0C64 80190224 24010007 */  addiu      $at, $zero, 0x7
/* F0C68 80190228 17210026 */  bne        $t9, $at, .L801902C4_ovl3
/* F0C6C 8019022C 3C02800D */   lui       $v0, %hi(gKirbyController)
/* F0C70 80190230 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
/* F0C74 80190234 30AE8000 */  andi       $t6, $a1, 0x8000
/* F0C78 80190238 304C0400 */  andi       $t4, $v0, 0x400
/* F0C7C 8019023C 15800003 */  bnez       $t4, .L8019024C_ovl3
/* F0C80 80190240 304D0800 */   andi      $t5, $v0, 0x800
/* F0C84 80190244 15A00004 */  bnez       $t5, .L80190258_ovl3
/* F0C88 80190248 00000000 */   nop
.L8019024C_ovl3:
/* F0C8C 8019024C 11C0001D */  beqz       $t6, .L801902C4_ovl3
/* F0C90 80190250 30580300 */   andi      $t8, $v0, 0x300
/* F0C94 80190254 1300001B */  beqz       $t8, .L801902C4_ovl3
.L80190258_ovl3:
/* F0C98 80190258 3C01800F */   lui       $at, %hi(D_800E9E20)
/* F0C9C 8019025C 00270821 */  addu       $at, $at, $a3
/* F0CA0 80190260 240F0001 */  addiu      $t7, $zero, 0x1
/* F0CA4 80190264 AC2F9E20 */  sw         $t7, %lo(D_800E9E20)($at)
/* F0CA8 80190268 24030006 */  addiu      $v1, $zero, 0x6
/* F0CAC 8019026C 10000015 */  b          .L801902C4_ovl3
/* F0CB0 80190270 AD030044 */   sw        $v1, 0x44($t0)
.L80190274_ovl3:
/* F0CB4 80190274 304B0006 */  andi       $t3, $v0, 0x6
/* F0CB8 80190278 11600012 */  beqz       $t3, .L801902C4_ovl3
/* F0CBC 8019027C 30A28000 */   andi      $v0, $a1, 0x8000
/* F0CC0 80190280 14400005 */  bnez       $v0, .L80190298_ovl3
/* F0CC4 80190284 3C19800D */   lui       $t9, %hi(gKirbyController)
/* F0CC8 80190288 97396FE8 */  lhu        $t9, %lo(gKirbyController)($t9)
/* F0CCC 8019028C 332C0F00 */  andi       $t4, $t9, 0xF00
/* F0CD0 80190290 1180000C */  beqz       $t4, .L801902C4_ovl3
/* F0CD4 80190294 00000000 */   nop
.L80190298_ovl3:
/* F0CD8 80190298 10400006 */  beqz       $v0, .L801902B4_ovl3
/* F0CDC 8019029C 24030006 */   addiu     $v1, $zero, 0x6
/* F0CE0 801902A0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* F0CE4 801902A4 00270821 */  addu       $at, $at, $a3
/* F0CE8 801902A8 240D0001 */  addiu      $t5, $zero, 0x1
/* F0CEC 801902AC 10000004 */  b          .L801902C0_ovl3
/* F0CF0 801902B0 AC2D9E20 */   sw        $t5, %lo(D_800E9E20)($at)
.L801902B4_ovl3:
/* F0CF4 801902B4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* F0CF8 801902B8 00270821 */  addu       $at, $at, $a3
/* F0CFC 801902BC AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
.L801902C0_ovl3:
/* F0D00 801902C0 AD030044 */  sw         $v1, 0x44($t0)
.L801902C4_ovl3:
/* F0D04 801902C4 10C3000E */  beq        $a2, $v1, .L80190300_ovl3
/* F0D08 801902C8 3C188005 */   lui       $t8, %hi(D_8004A7C4)
/* F0D0C 801902CC 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* F0D10 801902D0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* F0D14 801902D4 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
/* F0D18 801902D8 8F0F0000 */  lw         $t7, 0x0($t8)
/* F0D1C 801902DC 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
/* F0D20 801902E0 000F5080 */  sll        $t2, $t7, 2
/* F0D24 801902E4 008A2021 */  addu       $a0, $a0, $t2
/* F0D28 801902E8 0C02C7B2 */  jal        assign_new_process_entry
/* F0D2C 801902EC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* F0D30 801902F0 3C088013 */  lui        $t0, %hi(gKirbyState)
/* F0D34 801902F4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* F0D38 801902F8 8D0B0044 */  lw         $t3, 0x44($t0)
/* F0D3C 801902FC AD0B003C */  sw         $t3, 0x3C($t0)
.L80190300_ovl3:
/* F0D40 80190300 8FBF0014 */  lw         $ra, 0x14($sp)
.L80190304_ovl3:
/* F0D44 80190304 27BD0050 */  addiu      $sp, $sp, 0x50
/* F0D48 80190308 03E00008 */  jr         $ra
/* F0D4C 8019030C 00000000 */   nop
