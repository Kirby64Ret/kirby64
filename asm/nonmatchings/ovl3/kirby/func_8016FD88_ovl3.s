nonmatching func_8016FD88_ovl3, 0x270

glabel func_8016FD88_ovl3
    /* D07C8 8016FD88 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* D07CC 8016FD8C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* D07D0 8016FD90 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* D07D4 8016FD94 AC400030 */  sw         $zero, 0x30($v0)
    /* D07D8 8016FD98 A040000A */  sb         $zero, 0xA($v0)
    /* D07DC 8016FD9C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* D07E0 8016FDA0 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* D07E4 8016FDA4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* D07E8 8016FDA8 AFB00018 */  sw         $s0, 0x18($sp)
    /* D07EC 8016FDAC AFA40020 */  sw         $a0, 0x20($sp)
    /* D07F0 8016FDB0 8DF80000 */  lw         $t8, 0x0($t7)
    /* D07F4 8016FDB4 3C01800F */  lui        $at, %hi(D_800E9720)
    /* D07F8 8016FDB8 240E0005 */  addiu      $t6, $zero, 0x5
    /* D07FC 8016FDBC 0018C880 */  sll        $t9, $t8, 2
    /* D0800 8016FDC0 00390821 */  addu       $at, $at, $t9
    /* D0804 8016FDC4 0C0473D6 */  jal        func_8011CF58
    /* D0808 8016FDC8 AC2E9720 */   sw        $t6, %lo(D_800E9720)($at)
    /* D080C 8016FDCC 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* D0810 8016FDD0 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* D0814 8016FDD4 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* D0818 8016FDD8 24080008 */  addiu      $t0, $zero, 0x8
    /* D081C 8016FDDC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* D0820 8016FDE0 000A5880 */  sll        $t3, $t2, 2
    /* D0824 8016FDE4 002B0821 */  addu       $at, $at, $t3
    /* D0828 8016FDE8 0C04828A */  jal        func_80120A28
    /* D082C 8016FDEC AC28DFD0 */   sw        $t0, %lo(D_800DDFD0)($at)
    /* D0830 8016FDF0 3C078013 */  lui        $a3, %hi(gKirbyState)
    /* D0834 8016FDF4 3C0C8019 */  lui        $t4, %hi(D_80190448_ovl3)
    /* D0838 8016FDF8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
    /* D083C 8016FDFC 258C0448 */  addiu      $t4, $t4, %lo(D_80190448_ovl3)
    /* D0840 8016FE00 ACEC015C */  sw         $t4, 0x15C($a3)
    /* D0844 8016FE04 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* D0848 8016FE08 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* D084C 8016FE0C 8CE300A0 */  lw         $v1, 0xA0($a3)
    /* D0850 8016FE10 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* D0854 8016FE14 8C4D0000 */  lw         $t5, 0x0($v0)
    /* D0858 8016FE18 3C100002 */  lui        $s0, (0x20105 >> 16)
    /* D085C 8016FE1C 36100105 */  ori        $s0, $s0, (0x20105 & 0xFFFF)
    /* D0860 8016FE20 000D7880 */  sll        $t7, $t5, 2
    /* D0864 8016FE24 002F0821 */  addu       $at, $at, $t7
    /* D0868 8016FE28 AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
    /* D086C 8016FE2C 8C580000 */  lw         $t8, 0x0($v0)
    /* D0870 8016FE30 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* D0874 8016FE34 02002025 */  or         $a0, $s0, $zero
    /* D0878 8016FE38 00187080 */  sll        $t6, $t8, 2
    /* D087C 8016FE3C 002E0821 */  addu       $at, $at, $t6
    /* D0880 8016FE40 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* D0884 8016FE44 24010012 */  addiu      $at, $zero, 0x12
    /* D0888 8016FE48 1061002C */  beq        $v1, $at, .L8016FEFC_ovl3
    /* D088C 8016FE4C 3C050002 */   lui       $a1, (0x20007 >> 16)
    /* D0890 8016FE50 34A50007 */  ori        $a1, $a1, (0x20007 & 0xFFFF)
    /* D0894 8016FE54 0C02A9E3 */  jal        func_800AA78C
    /* D0898 8016FE58 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* D089C 8016FE5C 3C050002 */  lui        $a1, (0x20106 >> 16)
    /* D08A0 8016FE60 34A50106 */  ori        $a1, $a1, (0x20106 & 0xFFFF)
    /* D08A4 8016FE64 02002025 */  or         $a0, $s0, $zero
    /* D08A8 8016FE68 0C048C3A */  jal        func_801230E8
    /* D08AC 8016FE6C 00003025 */   or        $a2, $zero, $zero
    /* D08B0 8016FE70 3C10800D */  lui        $s0, %hi(gKirbyController)
    /* D08B4 8016FE74 24190001 */  addiu      $t9, $zero, 0x1
    /* D08B8 8016FE78 3C01800D */  lui        $at, %hi(D_800D6F10)
    /* D08BC 8016FE7C 26106FE8 */  addiu      $s0, $s0, %lo(gKirbyController)
    /* D08C0 8016FE80 AC396F10 */  sw         $t9, %lo(D_800D6F10)($at)
    /* D08C4 8016FE84 96090000 */  lhu        $t1, 0x0($s0)
    /* D08C8 8016FE88 312A0400 */  andi       $t2, $t1, 0x400
    /* D08CC 8016FE8C 11400007 */  beqz       $t2, .L8016FEAC_ovl3
    /* D08D0 8016FE90 00000000 */   nop
  .L8016FE94_ovl3:
    /* D08D4 8016FE94 0C002DAF */  jal        ohSleep
    /* D08D8 8016FE98 24040001 */   addiu     $a0, $zero, 0x1
    /* D08DC 8016FE9C 96080000 */  lhu        $t0, 0x0($s0)
    /* D08E0 8016FEA0 310B0400 */  andi       $t3, $t0, 0x400
    /* D08E4 8016FEA4 1560FFFB */  bnez       $t3, .L8016FE94_ovl3
    /* D08E8 8016FEA8 00000000 */   nop
  .L8016FEAC_ovl3:
    /* D08EC 8016FEAC 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* D08F0 8016FEB0 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* D08F4 8016FEB4 3C01800D */  lui        $at, %hi(D_800D6F10)
    /* D08F8 8016FEB8 AC206F10 */  sw         $zero, %lo(D_800D6F10)($at)
    /* D08FC 8016FEBC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* D0900 8016FEC0 3C18800F */  lui        $t8, %hi(D_800E9AA0)
    /* D0904 8016FEC4 27189AA0 */  addiu      $t8, $t8, %lo(D_800E9AA0)
    /* D0908 8016FEC8 000D7880 */  sll        $t7, $t5, 2
    /* D090C 8016FECC 01F81821 */  addu       $v1, $t7, $t8
    /* D0910 8016FED0 8C6E0000 */  lw         $t6, 0x0($v1)
    /* D0914 8016FED4 3C040002 */  lui        $a0, (0x20107 >> 16)
    /* D0918 8016FED8 3C050002 */  lui        $a1, (0x20108 >> 16)
    /* D091C 8016FEDC 25D90001 */  addiu      $t9, $t6, 0x1
    /* D0920 8016FEE0 AC790000 */  sw         $t9, 0x0($v1)
    /* D0924 8016FEE4 34A50108 */  ori        $a1, $a1, (0x20108 & 0xFFFF)
    /* D0928 8016FEE8 34840107 */  ori        $a0, $a0, (0x20107 & 0xFFFF)
    /* D092C 8016FEEC 0C048C3A */  jal        func_801230E8
    /* D0930 8016FEF0 24060001 */   addiu     $a2, $zero, 0x1
    /* D0934 8016FEF4 10000035 */  b          .L8016FFCC_ovl3
    /* D0938 8016FEF8 00000000 */   nop
  .L8016FEFC_ovl3:
    /* D093C 8016FEFC 0C05A4F1 */  jal        func_801693C4_ovl3
    /* D0940 8016FF00 24040009 */   addiu     $a0, $zero, 0x9
    /* D0944 8016FF04 3C040002 */  lui        $a0, (0x20109 >> 16)
    /* D0948 8016FF08 3C050002 */  lui        $a1, (0x2010A >> 16)
    /* D094C 8016FF0C 34A5010A */  ori        $a1, $a1, (0x2010A & 0xFFFF)
    /* D0950 8016FF10 34840109 */  ori        $a0, $a0, (0x20109 & 0xFFFF)
    /* D0954 8016FF14 0C048C3A */  jal        func_801230E8
    /* D0958 8016FF18 24060001 */   addiu     $a2, $zero, 0x1
    /* D095C 8016FF1C 3C040002 */  lui        $a0, (0x2010B >> 16)
    /* D0960 8016FF20 3C050002 */  lui        $a1, (0x2010C >> 16)
    /* D0964 8016FF24 34A5010C */  ori        $a1, $a1, (0x2010C & 0xFFFF)
    /* D0968 8016FF28 3484010B */  ori        $a0, $a0, (0x2010B & 0xFFFF)
    /* D096C 8016FF2C 0C048C3A */  jal        func_801230E8
    /* D0970 8016FF30 00003025 */   or        $a2, $zero, $zero
    /* D0974 8016FF34 3C10800D */  lui        $s0, %hi(gKirbyController)
    /* D0978 8016FF38 24090001 */  addiu      $t1, $zero, 0x1
    /* D097C 8016FF3C 3C01800D */  lui        $at, %hi(D_800D6F10)
    /* D0980 8016FF40 26106FE8 */  addiu      $s0, $s0, %lo(gKirbyController)
    /* D0984 8016FF44 AC296F10 */  sw         $t1, %lo(D_800D6F10)($at)
    /* D0988 8016FF48 960A0000 */  lhu        $t2, 0x0($s0)
    /* D098C 8016FF4C 31480400 */  andi       $t0, $t2, 0x400
    /* D0990 8016FF50 11000007 */  beqz       $t0, .L8016FF70_ovl3
    /* D0994 8016FF54 00000000 */   nop
  .L8016FF58_ovl3:
    /* D0998 8016FF58 0C002DAF */  jal        ohSleep
    /* D099C 8016FF5C 24040001 */   addiu     $a0, $zero, 0x1
    /* D09A0 8016FF60 960B0000 */  lhu        $t3, 0x0($s0)
    /* D09A4 8016FF64 316C0400 */  andi       $t4, $t3, 0x400
    /* D09A8 8016FF68 1580FFFB */  bnez       $t4, .L8016FF58_ovl3
    /* D09AC 8016FF6C 00000000 */   nop
  .L8016FF70_ovl3:
    /* D09B0 8016FF70 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* D09B4 8016FF74 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* D09B8 8016FF78 3C01800D */  lui        $at, %hi(D_800D6F10)
    /* D09BC 8016FF7C AC206F10 */  sw         $zero, %lo(D_800D6F10)($at)
    /* D09C0 8016FF80 8C4D0000 */  lw         $t5, 0x0($v0)
    /* D09C4 8016FF84 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* D09C8 8016FF88 3C19800F */  lui        $t9, %hi(D_800E9AA0)
    /* D09CC 8016FF8C 000D7880 */  sll        $t7, $t5, 2
    /* D09D0 8016FF90 002F0821 */  addu       $at, $at, $t7
    /* D09D4 8016FF94 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* D09D8 8016FF98 8C580000 */  lw         $t8, 0x0($v0)
    /* D09DC 8016FF9C 27399AA0 */  addiu      $t9, $t9, %lo(D_800E9AA0)
    /* D09E0 8016FFA0 3C040002 */  lui        $a0, (0x2010D >> 16)
    /* D09E4 8016FFA4 00187080 */  sll        $t6, $t8, 2
    /* D09E8 8016FFA8 01D91821 */  addu       $v1, $t6, $t9
    /* D09EC 8016FFAC 8C690000 */  lw         $t1, 0x0($v1)
    /* D09F0 8016FFB0 3C050002 */  lui        $a1, (0x2010E >> 16)
    /* D09F4 8016FFB4 34A5010E */  ori        $a1, $a1, (0x2010E & 0xFFFF)
    /* D09F8 8016FFB8 252A0001 */  addiu      $t2, $t1, 0x1
    /* D09FC 8016FFBC AC6A0000 */  sw         $t2, 0x0($v1)
    /* D0A00 8016FFC0 3484010D */  ori        $a0, $a0, (0x2010D & 0xFFFF)
    /* D0A04 8016FFC4 0C048C3A */  jal        func_801230E8
    /* D0A08 8016FFC8 24060001 */   addiu     $a2, $zero, 0x1
  .L8016FFCC_ovl3:
    /* D0A0C 8016FFCC 3C088013 */  lui        $t0, %hi(D_8012E7E8 + 0x8)
    /* D0A10 8016FFD0 8D08E7F0 */  lw         $t0, %lo(D_8012E7E8 + 0x8)($t0)
    /* D0A14 8016FFD4 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x8)
    /* D0A18 8016FFD8 250B0001 */  addiu      $t3, $t0, 0x1
    /* D0A1C 8016FFDC 0C02BE85 */  jal        curObjSleepForever
    /* D0A20 8016FFE0 AC2BE7F0 */   sw        $t3, %lo(D_8012E7E8 + 0x8)($at)
    /* D0A24 8016FFE4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* D0A28 8016FFE8 8FB00018 */  lw         $s0, 0x18($sp)
    /* D0A2C 8016FFEC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* D0A30 8016FFF0 03E00008 */  jr         $ra
    /* D0A34 8016FFF4 00000000 */   nop
endlabel func_8016FD88_ovl3
.size func_8016FD88_ovl3, . - func_8016FD88_ovl3
