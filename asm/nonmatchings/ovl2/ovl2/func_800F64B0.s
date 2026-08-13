nonmatching func_800F64B0, 0x380

glabel func_800F64B0
    /* 7EF20 800F64B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 7EF24 800F64B4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 7EF28 800F64B8 3C01800D */  lui        $at, %hi(D_800D6B30)
    /* 7EF2C 800F64BC 240E00FF */  addiu      $t6, $zero, 0xFF
    /* 7EF30 800F64C0 A4206B30 */  sh         $zero, %lo(D_800D6B30)($at)
    /* 7EF34 800F64C4 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 7EF38 800F64C8 24040019 */  addiu      $a0, $zero, 0x19
    /* 7EF3C 800F64CC 3C058000 */  lui        $a1, (0x80000000 >> 16)
    /* 7EF40 800F64D0 24060063 */  addiu      $a2, $zero, 0x63
    /* 7EF44 800F64D4 0C002F7C */  jal        ohCreateCameraWrapper
    /* 7EF48 800F64D8 24070003 */   addiu     $a3, $zero, 0x3
    /* 7EF4C 800F64DC 3C014120 */  lui        $at, (0x41200000 >> 16)
    /* 7EF50 800F64E0 44810000 */  mtc1       $at, $f0
    /* 7EF54 800F64E4 3C03800D */  lui        $v1, %hi(D_800D6B18 + 0x8)
    /* 7EF58 800F64E8 24636B20 */  addiu      $v1, $v1, %lo(D_800D6B18 + 0x8)
    /* 7EF5C 800F64EC AC620000 */  sw         $v0, 0x0($v1)
    /* 7EF60 800F64F0 3C014336 */  lui        $at, (0x43360000 >> 16)
    /* 7EF64 800F64F4 44812000 */  mtc1       $at, $f4
    /* 7EF68 800F64F8 8C44003C */  lw         $a0, 0x3C($v0)
    /* 7EF6C 800F64FC 44050000 */  mfc1       $a1, $f0
    /* 7EF70 800F6500 44060000 */  mfc1       $a2, $f0
    /* 7EF74 800F6504 3C07439B */  lui        $a3, (0x439B0000 >> 16)
    /* 7EF78 800F6508 24840008 */  addiu      $a0, $a0, 0x8
    /* 7EF7C 800F650C 0C001F00 */  jal        func_80007C00
    /* 7EF80 800F6510 E7A40010 */   swc1      $f4, 0x10($sp)
    /* 7EF84 800F6514 3C05800F */  lui        $a1, %hi(func_800F62A4)
    /* 7EF88 800F6518 24A562A4 */  addiu      $a1, $a1, %lo(func_800F62A4)
    /* 7EF8C 800F651C 00002025 */  or         $a0, $zero, $zero
    /* 7EF90 800F6520 2406001A */  addiu      $a2, $zero, 0x1A
    /* 7EF94 800F6524 0C002860 */  jal        HS64_omMakeGObj
    /* 7EF98 800F6528 3C078000 */   lui       $a3, (0x80000000 >> 16)
    /* 7EF9C 800F652C 0C02B812 */  jal        func_800AE048
    /* 7EFA0 800F6530 24040040 */   addiu     $a0, $zero, 0x40
    /* 7EFA4 800F6534 0C02B83C */  jal        func_800AE0F0
    /* 7EFA8 800F6538 00000000 */   nop
    /* 7EFAC 800F653C 0C029B99 */  jal        func_800A6E64
    /* 7EFB0 800F6540 00000000 */   nop
    /* 7EFB4 800F6544 0C029E34 */  jal        func_800A78D0
    /* 7EFB8 800F6548 00002025 */   or        $a0, $zero, $zero
    /* 7EFBC 800F654C 3C02800C */  lui        $v0, %hi(D_800BE500)
    /* 7EFC0 800F6550 8C42E500 */  lw         $v0, %lo(D_800BE500)($v0)
    /* 7EFC4 800F6554 24010006 */  addiu      $at, $zero, 0x6
    /* 7EFC8 800F6558 14410009 */  bne        $v0, $at, .L800F6580
    /* 7EFCC 800F655C 3C04800C */   lui       $a0, %hi(D_800BE504)
    /* 7EFD0 800F6560 2484E504 */  addiu      $a0, $a0, %lo(D_800BE504)
    /* 7EFD4 800F6564 8C980000 */  lw         $t8, 0x0($a0)
    /* 7EFD8 800F6568 3C19800C */  lui        $t9, %hi(D_800BE534)
    /* 7EFDC 800F656C 17000004 */  bnez       $t8, .L800F6580
    /* 7EFE0 800F6570 00000000 */   nop
    /* 7EFE4 800F6574 8F39E534 */  lw         $t9, %lo(D_800BE534)($t9)
    /* 7EFE8 800F6578 24010002 */  addiu      $at, $zero, 0x2
    /* 7EFEC 800F657C 13210008 */  beq        $t9, $at, .L800F65A0
  .L800F6580:
    /* 7EFF0 800F6580 3C04800C */   lui       $a0, %hi(D_800BE504)
    /* 7EFF4 800F6584 24010005 */  addiu      $at, $zero, 0x5
    /* 7EFF8 800F6588 14410009 */  bne        $v0, $at, .L800F65B0
    /* 7EFFC 800F658C 2484E504 */   addiu     $a0, $a0, %lo(D_800BE504)
    /* 7F000 800F6590 8C8B0000 */  lw         $t3, 0x0($a0)
    /* 7F004 800F6594 24030003 */  addiu      $v1, $zero, 0x3
    /* 7F008 800F6598 546B0006 */  bnel       $v1, $t3, .L800F65B4
    /* 7F00C 800F659C 24010004 */   addiu     $at, $zero, 0x4
  .L800F65A0:
    /* 7F010 800F65A0 0C02A1C9 */  jal        func_800A8724
    /* 7F014 800F65A4 24040002 */   addiu     $a0, $zero, 0x2
    /* 7F018 800F65A8 10000015 */  b          .L800F6600
    /* 7F01C 800F65AC 00000000 */   nop
  .L800F65B0:
    /* 7F020 800F65B0 24010004 */  addiu      $at, $zero, 0x4
  .L800F65B4:
    /* 7F024 800F65B4 14410010 */  bne        $v0, $at, .L800F65F8
    /* 7F028 800F65B8 24030003 */   addiu     $v1, $zero, 0x3
    /* 7F02C 800F65BC 8C8C0000 */  lw         $t4, 0x0($a0)
    /* 7F030 800F65C0 3C0D800C */  lui        $t5, %hi(D_800BE534)
    /* 7F034 800F65C4 146C000C */  bne        $v1, $t4, .L800F65F8
    /* 7F038 800F65C8 00000000 */   nop
    /* 7F03C 800F65CC 8DADE534 */  lw         $t5, %lo(D_800BE534)($t5)
    /* 7F040 800F65D0 3C0E800C */  lui        $t6, %hi(D_800BE508)
    /* 7F044 800F65D4 146D0008 */  bne        $v1, $t5, .L800F65F8
    /* 7F048 800F65D8 00000000 */   nop
    /* 7F04C 800F65DC 8DCEE508 */  lw         $t6, %lo(D_800BE508)($t6)
    /* 7F050 800F65E0 11C00005 */  beqz       $t6, .L800F65F8
    /* 7F054 800F65E4 00000000 */   nop
    /* 7F058 800F65E8 0C02A1C9 */  jal        func_800A8724
    /* 7F05C 800F65EC 24040003 */   addiu     $a0, $zero, 0x3
    /* 7F060 800F65F0 10000003 */  b          .L800F6600
    /* 7F064 800F65F4 00000000 */   nop
  .L800F65F8:
    /* 7F068 800F65F8 0C02A1C9 */  jal        func_800A8724
    /* 7F06C 800F65FC 00002025 */   or        $a0, $zero, $zero
  .L800F6600:
    /* 7F070 800F6600 0C03E09D */  jal        func_800F8274
    /* 7F074 800F6604 00000000 */   nop
    /* 7F078 800F6608 0C03E158 */  jal        func_800F8560
    /* 7F07C 800F660C 00000000 */   nop
    /* 7F080 800F6610 24010009 */  addiu      $at, $zero, 0x9
    /* 7F084 800F6614 10410007 */  beq        $v0, $at, .L800F6634
    /* 7F088 800F6618 00000000 */   nop
    /* 7F08C 800F661C 0C045333 */  jal        func_80114CCC
    /* 7F090 800F6620 00000000 */   nop
    /* 7F094 800F6624 0C043737 */  jal        func_8010DCDC
    /* 7F098 800F6628 00000000 */   nop
    /* 7F09C 800F662C 0C03FCB2 */  jal        func_800FF2C8
    /* 7F0A0 800F6630 00000000 */   nop
  .L800F6634:
    /* 7F0A4 800F6634 0C04720E */  jal        func_8011C838
    /* 7F0A8 800F6638 00000000 */   nop
    /* 7F0AC 800F663C 0C02F826 */  jal        func_800BE098
    /* 7F0B0 800F6640 00000000 */   nop
    /* 7F0B4 800F6644 0C029AF0 */  jal        func_800A6BC0
    /* 7F0B8 800F6648 24040005 */   addiu     $a0, $zero, 0x5
    /* 7F0BC 800F664C 3C05800D */  lui        $a1, %hi(D_800D799C)
    /* 7F0C0 800F6650 24A5799C */  addiu      $a1, $a1, %lo(D_800D799C)
    /* 7F0C4 800F6654 00002025 */  or         $a0, $zero, $zero
    /* 7F0C8 800F6658 240A0006 */  addiu      $t2, $zero, 0x6
    /* 7F0CC 800F665C 24090008 */  addiu      $t1, $zero, 0x8
    /* 7F0D0 800F6660 2408000D */  addiu      $t0, $zero, 0xD
    /* 7F0D4 800F6664 24070007 */  addiu      $a3, $zero, 0x7
    /* 7F0D8 800F6668 2406000C */  addiu      $a2, $zero, 0xC
    /* 7F0DC 800F666C 8CAF0000 */  lw         $t7, 0x0($a1)
  .L800F6670:
    /* 7F0E0 800F6670 8DF8003C */  lw         $t8, 0x3C($t7)
    /* 7F0E4 800F6674 0304C821 */  addu       $t9, $t8, $a0
    /* 7F0E8 800F6678 8F220064 */  lw         $v0, 0x64($t9)
    /* 7F0EC 800F667C 90430004 */  lbu        $v1, 0x4($v0)
    /* 7F0F0 800F6680 15430007 */  bne        $t2, $v1, .L800F66A0
    /* 7F0F4 800F6684 00000000 */   nop
    /* 7F0F8 800F6688 A0460004 */  sb         $a2, 0x4($v0)
    /* 7F0FC 800F668C 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 7F100 800F6690 8D6C003C */  lw         $t4, 0x3C($t3)
    /* 7F104 800F6694 01846821 */  addu       $t5, $t4, $a0
    /* 7F108 800F6698 8DA20064 */  lw         $v0, 0x64($t5)
    /* 7F10C 800F669C 90430004 */  lbu        $v1, 0x4($v0)
  .L800F66A0:
    /* 7F110 800F66A0 14E30002 */  bne        $a3, $v1, .L800F66AC
    /* 7F114 800F66A4 24840004 */   addiu     $a0, $a0, 0x4
    /* 7F118 800F66A8 A0480004 */  sb         $t0, 0x4($v0)
  .L800F66AC:
    /* 7F11C 800F66AC 5489FFF0 */  bnel       $a0, $t1, .L800F6670
    /* 7F120 800F66B0 8CAF0000 */   lw        $t7, 0x0($a1)
    /* 7F124 800F66B4 3C0E8013 */  lui        $t6, %hi(D_801290D8)
    /* 7F128 800F66B8 8DCE90D8 */  lw         $t6, %lo(D_801290D8)($t6)
    /* 7F12C 800F66BC 24010022 */  addiu      $at, $zero, 0x22
    /* 7F130 800F66C0 3C0F800C */  lui        $t7, %hi(D_800BE508)
    /* 7F134 800F66C4 8DC5000C */  lw         $a1, 0xC($t6)
    /* 7F138 800F66C8 10A1001D */  beq        $a1, $at, .L800F6740
    /* 7F13C 800F66CC 24010027 */   addiu     $at, $zero, 0x27
    /* 7F140 800F66D0 10A10009 */  beq        $a1, $at, .L800F66F8
    /* 7F144 800F66D4 24040002 */   addiu     $a0, $zero, 0x2
    /* 7F148 800F66D8 24010028 */  addiu      $at, $zero, 0x28
    /* 7F14C 800F66DC 10A1000C */  beq        $a1, $at, .L800F6710
    /* 7F150 800F66E0 24040002 */   addiu     $a0, $zero, 0x2
    /* 7F154 800F66E4 24010029 */  addiu      $at, $zero, 0x29
    /* 7F158 800F66E8 10A1000F */  beq        $a1, $at, .L800F6728
    /* 7F15C 800F66EC 24040002 */   addiu     $a0, $zero, 0x2
    /* 7F160 800F66F0 1000001B */  b          .L800F6760
    /* 7F164 800F66F4 00000000 */   nop
  .L800F66F8:
    /* 7F168 800F66F8 0C02E77E */  jal        func_800B9DF8
    /* 7F16C 800F66FC AFA50020 */   sw        $a1, 0x20($sp)
    /* 7F170 800F6700 10400017 */  beqz       $v0, .L800F6760
    /* 7F174 800F6704 8FA50020 */   lw        $a1, 0x20($sp)
    /* 7F178 800F6708 10000015 */  b          .L800F6760
    /* 7F17C 800F670C 2405000D */   addiu     $a1, $zero, 0xD
  .L800F6710:
    /* 7F180 800F6710 0C02E77E */  jal        func_800B9DF8
    /* 7F184 800F6714 AFA50020 */   sw        $a1, 0x20($sp)
    /* 7F188 800F6718 10400011 */  beqz       $v0, .L800F6760
    /* 7F18C 800F671C 8FA50020 */   lw        $a1, 0x20($sp)
    /* 7F190 800F6720 1000000F */  b          .L800F6760
    /* 7F194 800F6724 24050012 */   addiu     $a1, $zero, 0x12
  .L800F6728:
    /* 7F198 800F6728 0C02E77E */  jal        func_800B9DF8
    /* 7F19C 800F672C AFA50020 */   sw        $a1, 0x20($sp)
    /* 7F1A0 800F6730 1040000B */  beqz       $v0, .L800F6760
    /* 7F1A4 800F6734 8FA50020 */   lw        $a1, 0x20($sp)
    /* 7F1A8 800F6738 10000009 */  b          .L800F6760
    /* 7F1AC 800F673C 24050008 */   addiu     $a1, $zero, 0x8
  .L800F6740:
    /* 7F1B0 800F6740 8DEFE508 */  lw         $t7, %lo(D_800BE508)($t7)
    /* 7F1B4 800F6744 3C18800D */  lui        $t8, %hi(D_800D6E20)
    /* 7F1B8 800F6748 030FC021 */  addu       $t8, $t8, $t7
    /* 7F1BC 800F674C 93186E20 */  lbu        $t8, %lo(D_800D6E20)($t8)
    /* 7F1C0 800F6750 13000003 */  beqz       $t8, .L800F6760
    /* 7F1C4 800F6754 00000000 */   nop
    /* 7F1C8 800F6758 3C05800D */  lui        $a1, %hi(D_800D6B48)
    /* 7F1CC 800F675C 8CA56B48 */  lw         $a1, %lo(D_800D6B48)($a1)
  .L800F6760:
    /* 7F1D0 800F6760 3C19800D */  lui        $t9, %hi(D_800D6B6C + 0x4)
    /* 7F1D4 800F6764 8F396B70 */  lw         $t9, %lo(D_800D6B6C + 0x4)($t9)
    /* 7F1D8 800F6768 3C01800D */  lui        $at, %hi(D_800D6B48)
    /* 7F1DC 800F676C AC256B48 */  sw         $a1, %lo(D_800D6B48)($at)
    /* 7F1E0 800F6770 24010001 */  addiu      $at, $zero, 0x1
    /* 7F1E4 800F6774 17210004 */  bne        $t9, $at, .L800F6788
    /* 7F1E8 800F6778 3C02800D */   lui       $v0, %hi(D_800D6F3C)
    /* 7F1EC 800F677C 3C0B8013 */  lui        $t3, %hi(D_801290D8)
    /* 7F1F0 800F6780 8D6B90D8 */  lw         $t3, %lo(D_801290D8)($t3)
    /* 7F1F4 800F6784 8D65000C */  lw         $a1, 0xC($t3)
  .L800F6788:
    /* 7F1F8 800F6788 8C426F3C */  lw         $v0, %lo(D_800D6F3C)($v0)
    /* 7F1FC 800F678C 28410003 */  slti       $at, $v0, 0x3
    /* 7F200 800F6790 14200004 */  bnez       $at, .L800F67A4
    /* 7F204 800F6794 24010004 */   addiu     $at, $zero, 0x4
    /* 7F208 800F6798 10410002 */  beq        $v0, $at, .L800F67A4
    /* 7F20C 800F679C 00000000 */   nop
    /* 7F210 800F67A0 00002825 */  or         $a1, $zero, $zero
  .L800F67A4:
    /* 7F214 800F67A4 0C029D6C */  jal        play_music
    /* 7F218 800F67A8 00002025 */   or        $a0, $zero, $zero
    /* 7F21C 800F67AC 0C03E158 */  jal        func_800F8560
    /* 7F220 800F67B0 00000000 */   nop
    /* 7F224 800F67B4 24010002 */  addiu      $at, $zero, 0x2
    /* 7F228 800F67B8 14410006 */  bne        $v0, $at, .L800F67D4
    /* 7F22C 800F67BC 3C0C800C */   lui       $t4, %hi(D_800BE508)
    /* 7F230 800F67C0 24040002 */  addiu      $a0, $zero, 0x2
    /* 7F234 800F67C4 0C02EE63 */  jal        func_800BB98C
    /* 7F238 800F67C8 00002825 */   or        $a1, $zero, $zero
    /* 7F23C 800F67CC 10000015 */  b          .L800F6824
    /* 7F240 800F67D0 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800F67D4:
    /* 7F244 800F67D4 8D8CE508 */  lw         $t4, %lo(D_800BE508)($t4)
    /* 7F248 800F67D8 3C0D800C */  lui        $t5, %hi(D_800BE4FC)
    /* 7F24C 800F67DC 00002025 */  or         $a0, $zero, $zero
    /* 7F250 800F67E0 15800009 */  bnez       $t4, .L800F6808
    /* 7F254 800F67E4 00002825 */   or        $a1, $zero, $zero
    /* 7F258 800F67E8 8DADE4FC */  lw         $t5, %lo(D_800BE4FC)($t5)
    /* 7F25C 800F67EC 15A00006 */  bnez       $t5, .L800F6808
    /* 7F260 800F67F0 00000000 */   nop
    /* 7F264 800F67F4 00002025 */  or         $a0, $zero, $zero
    /* 7F268 800F67F8 0C02EE63 */  jal        func_800BB98C
    /* 7F26C 800F67FC 00002825 */   or        $a1, $zero, $zero
    /* 7F270 800F6800 10000008 */  b          .L800F6824
    /* 7F274 800F6804 8FBF001C */   lw        $ra, 0x1C($sp)
  .L800F6808:
    /* 7F278 800F6808 0C0295D1 */  jal        utilSetRectColorFullScreen
    /* 7F27C 800F680C 00003025 */   or        $a2, $zero, $zero
    /* 7F280 800F6810 240400FF */  addiu      $a0, $zero, 0xFF
    /* 7F284 800F6814 2405FFF0 */  addiu      $a1, $zero, -0x10
    /* 7F288 800F6818 0C029685 */  jal        utilSpawnRect
    /* 7F28C 800F681C 00003025 */   or        $a2, $zero, $zero
    /* 7F290 800F6820 8FBF001C */  lw         $ra, 0x1C($sp)
  .L800F6824:
    /* 7F294 800F6824 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 7F298 800F6828 03E00008 */  jr         $ra
    /* 7F29C 800F682C 00000000 */   nop
endlabel func_800F64B0
.size func_800F64B0, . - func_800F64B0
