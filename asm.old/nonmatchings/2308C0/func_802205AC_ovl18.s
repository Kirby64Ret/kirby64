glabel func_802205AC_ovl18
/* 232F4C 802205AC 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 232F50 802205B0 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 232F54 802205B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 232F58 802205B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 232F5C 802205BC AFA40018 */  sw         $a0, 0x18($sp)
/* 232F60 802205C0 8DF80000 */  lw         $t8, 0x0($t7)
/* 232F64 802205C4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 232F68 802205C8 240E0001 */  addiu      $t6, $zero, 0x1
/* 232F6C 802205CC 0018C880 */  sll        $t9, $t8, 2
/* 232F70 802205D0 00390821 */  addu       $at, $at, $t9
/* 232F74 802205D4 0C02CD48 */  jal        func_800B3520
/* 232F78 802205D8 AC2EDFD0 */   sw        $t6, %lo(D_800DDFD0)($at)
/* 232F7C 802205DC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 232F80 802205E0 0C02BB30 */  jal        func_800AECC0
/* 232F84 802205E4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 232F88 802205E8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 232F8C 802205EC 0C02BB48 */  jal        func_800AED20
/* 232F90 802205F0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 232F94 802205F4 0C075943 */  jal        func_801D650C_ovl9
/* 232F98 802205F8 8FA40018 */   lw        $a0, 0x18($sp)
/* 232F9C 802205FC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L80220600_ovl19:
/* 232FA0 80220600 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 232FA4 80220604 44802000 */  mtc1       $zero, $f4
/* 232FA8 80220608 3C01800F */  lui        $at, %hi(D_800EADE0)
/* 232FAC 8022060C 8C480000 */  lw         $t0, 0x0($v0)
/* 232FB0 80220610 4600203C */  c.lt.s     $f4, $f0
/* 232FB4 80220614 3C040001 */  lui        $a0, (0x10028 >> 16)
/* 232FB8 80220618 00084880 */  sll        $t1, $t0, 2
/* 232FBC 8022061C 00290821 */  addu       $at, $at, $t1
/* 232FC0 80220620 45000009 */  bc1f       .L80220648_ovl18
/* 232FC4 80220624 E420ADE0 */   swc1      $f0, %lo(D_800EADE0)($at)
/* 232FC8 80220628 8C4A0000 */  lw         $t2, 0x0($v0)
/* 232FCC 8022062C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 232FD0 80220630 44813000 */  mtc1       $at, $f6
/* 232FD4 80220634 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 232FD8 80220638 000A5880 */  sll        $t3, $t2, 2
/* 232FDC 8022063C 002B0821 */  addu       $at, $at, $t3
/* 232FE0 80220640 10000008 */  b          .L80220664_ovl18
.L80220644_ovl19:
/* 232FE4 80220644 E4266A10 */   swc1      $f6, %lo(D_800E6A10)($at)
.L80220648_ovl18:
/* 232FE8 80220648 8C4C0000 */  lw         $t4, 0x0($v0)
/* 232FEC 8022064C 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 232FF0 80220650 44814000 */  mtc1       $at, $f8
/* 232FF4 80220654 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 232FF8 80220658 000C6880 */  sll        $t5, $t4, 2
/* 232FFC 8022065C 002D0821 */  addu       $at, $at, $t5
.L80220660_ovl19:
/* 233000 80220660 E4286A10 */  swc1       $f8, %lo(D_800E6A10)($at)
.L80220664_ovl18:
/* 233004 80220664 0C02A855 */  jal        func_800AA154
/* 233008 80220668 34840028 */   ori       $a0, $a0, (0x10028 & 0xFFFF)
/* 23300C 8022066C 44806000 */  mtc1       $zero, $f12
/* 233010 80220670 0C02BB30 */  jal        func_800AECC0
.L80220674_ovl19:
/* 233014 80220674 00000000 */   nop
.L80220678_ovl19:
/* 233018 80220678 44806000 */  mtc1       $zero, $f12
/* 23301C 8022067C 0C02BB48 */  jal        func_800AED20
/* 233020 80220680 00000000 */   nop
/* 233024 80220684 2404002E */  addiu      $a0, $zero, 0x2E
/* 233028 80220688 0C06B30D */  jal        func_801ACC34_ovl7
/* 23302C 8022068C 00002825 */   or        $a1, $zero, $zero
/* 233030 80220690 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 233034 80220694 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 233038 80220698 3C01800F */  lui        $at, %hi(D_800EBBE0)
/* 23303C 8022069C 240400A6 */  addiu      $a0, $zero, 0xA6
/* 233040 802206A0 8DF80000 */  lw         $t8, 0x0($t7)
/* 233044 802206A4 00187080 */  sll        $t6, $t8, 2
/* 233048 802206A8 002E0821 */  addu       $at, $at, $t6
/* 23304C 802206AC 0C029D9E */  jal        play_sound
/* 233050 802206B0 AC22BBE0 */   sw        $v0, %lo(D_800EBBE0)($at)
/* 233054 802206B4 0C002DAF */  jal        finish_current_thread
/* 233058 802206B8 24040004 */   addiu     $a0, $zero, 0x4
.L802206BC_ovl19:
/* 23305C 802206BC 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 233060 802206C0 0C02BB30 */  jal        func_800AECC0
.L802206C4_ovl19:
/* 233064 802206C4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 233068 802206C8 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 23306C 802206CC 0C02BB48 */  jal        func_800AED20
/* 233070 802206D0 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
.L802206D4_ovl19:
/* 233074 802206D4 3C040001 */  lui        $a0, (0x10023 >> 16)
/* 233078 802206D8 0C02A855 */  jal        func_800AA154
/* 23307C 802206DC 34840023 */   ori       $a0, $a0, (0x10023 & 0xFFFF)
/* 233080 802206E0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 233084 802206E4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 233088 802206E8 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 23308C 802206EC 2419001E */  addiu      $t9, $zero, 0x1E
/* 233090 802206F0 8C480000 */  lw         $t0, 0x0($v0)
/* 233094 802206F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 233098 802206F8 00084880 */  sll        $t1, $t0, 2
/* 23309C 802206FC 00290821 */  addu       $at, $at, $t1
/* 2330A0 80220700 AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
/* 2330A4 80220704 8C4A0000 */  lw         $t2, 0x0($v0)
/* 2330A8 80220708 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 2330AC 8022070C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2330B0 80220710 000A5880 */  sll        $t3, $t2, 2
/* 2330B4 80220714 002B0821 */  addu       $at, $at, $t3
/* 2330B8 80220718 03E00008 */  jr         $ra
/* 2330BC 8022071C AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
