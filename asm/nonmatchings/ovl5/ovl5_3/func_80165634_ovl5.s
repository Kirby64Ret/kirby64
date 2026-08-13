nonmatching func_80165634_ovl5, 0x290

glabel func_80165634_ovl5
    /* 10CAA4 80165634 27BDFF78 */  addiu      $sp, $sp, -0x88
    /* 10CAA8 80165638 3C0F8018 */  lui        $t7, %hi(D_801869BC_ovl5)
    /* 10CAAC 8016563C AFB2000C */  sw         $s2, 0xC($sp)
    /* 10CAB0 80165640 AFB10008 */  sw         $s1, 0x8($sp)
    /* 10CAB4 80165644 AFB00004 */  sw         $s0, 0x4($sp)
    /* 10CAB8 80165648 25EF69BC */  addiu      $t7, $t7, %lo(D_801869BC_ovl5)
    /* 10CABC 8016564C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 10CAC0 80165650 8DF80004 */  lw         $t8, 0x4($t7)
    /* 10CAC4 80165654 27AE006C */  addiu      $t6, $sp, 0x6C
    /* 10CAC8 80165658 ADD90000 */  sw         $t9, 0x0($t6)
    /* 10CACC 8016565C ADD80004 */  sw         $t8, 0x4($t6)
    /* 10CAD0 80165660 8DF8000C */  lw         $t8, 0xC($t7)
    /* 10CAD4 80165664 8DF90008 */  lw         $t9, 0x8($t7)
    /* 10CAD8 80165668 3C0F8018 */  lui        $t7, %hi(D_801869CC_ovl5)
    /* 10CADC 8016566C 25EF69CC */  addiu      $t7, $t7, %lo(D_801869CC_ovl5)
    /* 10CAE0 80165670 ADD8000C */  sw         $t8, 0xC($t6)
    /* 10CAE4 80165674 ADD90008 */  sw         $t9, 0x8($t6)
    /* 10CAE8 80165678 8DF80004 */  lw         $t8, 0x4($t7)
    /* 10CAEC 8016567C 8DF90000 */  lw         $t9, 0x0($t7)
    /* 10CAF0 80165680 27AE005C */  addiu      $t6, $sp, 0x5C
    /* 10CAF4 80165684 ADD80004 */  sw         $t8, 0x4($t6)
    /* 10CAF8 80165688 ADD90000 */  sw         $t9, 0x0($t6)
    /* 10CAFC 8016568C 8DF90008 */  lw         $t9, 0x8($t7)
    /* 10CB00 80165690 8DF8000C */  lw         $t8, 0xC($t7)
    /* 10CB04 80165694 3C0F8018 */  lui        $t7, %hi(D_801869DC_ovl5)
    /* 10CB08 80165698 25EF69DC */  addiu      $t7, $t7, %lo(D_801869DC_ovl5)
    /* 10CB0C 8016569C ADD90008 */  sw         $t9, 0x8($t6)
    /* 10CB10 801656A0 ADD8000C */  sw         $t8, 0xC($t6)
    /* 10CB14 801656A4 8DF80004 */  lw         $t8, 0x4($t7)
    /* 10CB18 801656A8 8DF90000 */  lw         $t9, 0x0($t7)
    /* 10CB1C 801656AC 27AE004C */  addiu      $t6, $sp, 0x4C
    /* 10CB20 801656B0 ADD80004 */  sw         $t8, 0x4($t6)
    /* 10CB24 801656B4 ADD90000 */  sw         $t9, 0x0($t6)
    /* 10CB28 801656B8 8DF90008 */  lw         $t9, 0x8($t7)
    /* 10CB2C 801656BC 8DF8000C */  lw         $t8, 0xC($t7)
    /* 10CB30 801656C0 27AB003C */  addiu      $t3, $sp, 0x3C
    /* 10CB34 801656C4 ADD90008 */  sw         $t9, 0x8($t6)
    /* 10CB38 801656C8 ADD8000C */  sw         $t8, 0xC($t6)
    /* 10CB3C 801656CC 3C0E8018 */  lui        $t6, %hi(D_801869EC_ovl5)
    /* 10CB40 801656D0 25CE69EC */  addiu      $t6, $t6, %lo(D_801869EC_ovl5)
    /* 10CB44 801656D4 8DD80000 */  lw         $t8, 0x0($t6)
    /* 10CB48 801656D8 3C018019 */  lui        $at, %hi(D_8018E260_ovl5)
    /* 10CB4C 801656DC 3C128019 */  lui        $s2, %hi(D_8018E3CC_ovl5)
    /* 10CB50 801656E0 AD780000 */  sw         $t8, 0x0($t3)
    /* 10CB54 801656E4 8DCF0004 */  lw         $t7, 0x4($t6)
    /* 10CB58 801656E8 3C048019 */  lui        $a0, %hi(D_8018E268_ovl5)
    /* 10CB5C 801656EC 3C058019 */  lui        $a1, %hi(D_8018E288_ovl5)
    /* 10CB60 801656F0 AD6F0004 */  sw         $t7, 0x4($t3)
    /* 10CB64 801656F4 8DD80008 */  lw         $t8, 0x8($t6)
    /* 10CB68 801656F8 3C068019 */  lui        $a2, %hi(D_8018E3C0_ovl5)
    /* 10CB6C 801656FC 3C078019 */  lui        $a3, %hi(D_8018E428_ovl5)
    /* 10CB70 80165700 AD780008 */  sw         $t8, 0x8($t3)
    /* 10CB74 80165704 8DCF000C */  lw         $t7, 0xC($t6)
    /* 10CB78 80165708 3C038019 */  lui        $v1, %hi(D_8018E3A0_ovl5)
    /* 10CB7C 8016570C 3C028019 */  lui        $v0, %hi(D_8018E3C8_ovl5)
    /* 10CB80 80165710 AD6F000C */  sw         $t7, 0xC($t3)
    /* 10CB84 80165714 AC20E260 */  sw         $zero, %lo(D_8018E260_ovl5)($at)
    /* 10CB88 80165718 3C018019 */  lui        $at, %hi(D_8018E264_ovl5)
    /* 10CB8C 8016571C 3C0C800D */  lui        $t4, %hi(D_800D7178 + 0x40)
    /* 10CB90 80165720 AC20E264 */  sw         $zero, %lo(D_8018E264_ovl5)($at)
    /* 10CB94 80165724 8D8C71B8 */  lw         $t4, %lo(D_800D7178 + 0x40)($t4)
    /* 10CB98 80165728 2442E3C8 */  addiu      $v0, $v0, %lo(D_8018E3C8_ovl5)
    /* 10CB9C 8016572C 2463E3A0 */  addiu      $v1, $v1, %lo(D_8018E3A0_ovl5)
    /* 10CBA0 80165730 24E7E428 */  addiu      $a3, $a3, %lo(D_8018E428_ovl5)
    /* 10CBA4 80165734 24C6E3C0 */  addiu      $a2, $a2, %lo(D_8018E3C0_ovl5)
    /* 10CBA8 80165738 24A5E288 */  addiu      $a1, $a1, %lo(D_8018E288_ovl5)
    /* 10CBAC 8016573C 2484E268 */  addiu      $a0, $a0, %lo(D_8018E268_ovl5)
    /* 10CBB0 80165740 2652E3CC */  addiu      $s2, $s2, %lo(D_8018E3CC_ovl5)
    /* 10CBB4 80165744 24100005 */  addiu      $s0, $zero, 0x5
    /* 10CBB8 80165748 24110001 */  addiu      $s1, $zero, 0x1
    /* 10CBBC 8016574C 27A8006C */  addiu      $t0, $sp, 0x6C
    /* 10CBC0 80165750 27A9005C */  addiu      $t1, $sp, 0x5C
    /* 10CBC4 80165754 27AA004C */  addiu      $t2, $sp, 0x4C
    /* 10CBC8 80165758 240D0001 */  addiu      $t5, $zero, 0x1
  .L8016575C_ovl5:
    /* 10CBCC 8016575C 8D190000 */  lw         $t9, 0x0($t0)
    /* 10CBD0 80165760 AC800000 */  sw         $zero, 0x0($a0)
    /* 10CBD4 80165764 ACB00000 */  sw         $s0, 0x0($a1)
    /* 10CBD8 80165768 A0D10000 */  sb         $s1, 0x0($a2)
    /* 10CBDC 8016576C ACE00000 */  sw         $zero, 0x0($a3)
    /* 10CBE0 80165770 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 10CBE4 80165774 8D2F0000 */  lw         $t7, 0x0($t1)
    /* 10CBE8 80165778 8D590000 */  lw         $t9, 0x0($t2)
    /* 10CBEC 8016577C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 10CBF0 80165780 8DF80000 */  lw         $t8, 0x0($t7)
    /* 10CBF4 80165784 000C7880 */  sll        $t7, $t4, 2
    /* 10CBF8 80165788 AC780004 */  sw         $t8, 0x4($v1)
    /* 10CBFC 8016578C 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 10CC00 80165790 016FC021 */  addu       $t8, $t3, $t7
    /* 10CC04 80165794 55AE0005 */  bnel       $t5, $t6, .L801657AC_ovl5
    /* 10CC08 80165798 A0400000 */   sb        $zero, 0x0($v0)
    /* 10CC0C 8016579C 8F190000 */  lw         $t9, 0x0($t8)
    /* 10CC10 801657A0 10000002 */  b          .L801657AC_ovl5
    /* 10CC14 801657A4 A0590000 */   sb        $t9, 0x0($v0)
    /* 10CC18 801657A8 A0400000 */  sb         $zero, 0x0($v0)
  .L801657AC_ovl5:
    /* 10CC1C 801657AC 8D0E0004 */  lw         $t6, 0x4($t0)
    /* 10CC20 801657B0 AC800004 */  sw         $zero, 0x4($a0)
    /* 10CC24 801657B4 ACB00004 */  sw         $s0, 0x4($a1)
    /* 10CC28 801657B8 A0D10001 */  sb         $s1, 0x1($a2)
    /* 10CC2C 801657BC ACE00004 */  sw         $zero, 0x4($a3)
    /* 10CC30 801657C0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 10CC34 801657C4 8D380004 */  lw         $t8, 0x4($t1)
    /* 10CC38 801657C8 8D4E0004 */  lw         $t6, 0x4($t2)
    /* 10CC3C 801657CC AC6F0008 */  sw         $t7, 0x8($v1)
    /* 10CC40 801657D0 8F190000 */  lw         $t9, 0x0($t8)
    /* 10CC44 801657D4 24840008 */  addiu      $a0, $a0, 0x8
    /* 10CC48 801657D8 24A50008 */  addiu      $a1, $a1, 0x8
    /* 10CC4C 801657DC AC79000C */  sw         $t9, 0xC($v1)
    /* 10CC50 801657E0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 10CC54 801657E4 24C60002 */  addiu      $a2, $a2, 0x2
    /* 10CC58 801657E8 24E70008 */  addiu      $a3, $a3, 0x8
    /* 10CC5C 801657EC 15AF0006 */  bne        $t5, $t7, .L80165808_ovl5
    /* 10CC60 801657F0 24630010 */   addiu     $v1, $v1, 0x10
    /* 10CC64 801657F4 000CC080 */  sll        $t8, $t4, 2
    /* 10CC68 801657F8 0178C821 */  addu       $t9, $t3, $t8
    /* 10CC6C 801657FC 8F2E0000 */  lw         $t6, 0x0($t9)
    /* 10CC70 80165800 10000002 */  b          .L8016580C_ovl5
    /* 10CC74 80165804 A04E0001 */   sb        $t6, 0x1($v0)
  .L80165808_ovl5:
    /* 10CC78 80165808 A0400001 */  sb         $zero, 0x1($v0)
  .L8016580C_ovl5:
    /* 10CC7C 8016580C 24420002 */  addiu      $v0, $v0, 0x2
    /* 10CC80 80165810 25080008 */  addiu      $t0, $t0, 0x8
    /* 10CC84 80165814 25290008 */  addiu      $t1, $t1, 0x8
    /* 10CC88 80165818 1452FFD0 */  bne        $v0, $s2, .L8016575C_ovl5
    /* 10CC8C 8016581C 254A0008 */   addiu     $t2, $t2, 0x8
    /* 10CC90 80165820 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* 10CC94 80165824 24428F20 */  addiu      $v0, $v0, %lo(gPlayerControllers)
    /* 10CC98 80165828 944F0000 */  lhu        $t7, 0x0($v0)
    /* 10CC9C 8016582C 3C018019 */  lui        $at, %hi(D_8018E441_ovl5)
    /* 10CCA0 80165830 31F8000F */  andi       $t8, $t7, 0xF
    /* 10CCA4 80165834 13000010 */  beqz       $t8, .L80165878_ovl5
    /* 10CCA8 80165838 00000000 */   nop
    /* 10CCAC 8016583C 9459000A */  lhu        $t9, 0xA($v0)
    /* 10CCB0 80165840 332E000F */  andi       $t6, $t9, 0xF
    /* 10CCB4 80165844 11C0000C */  beqz       $t6, .L80165878_ovl5
    /* 10CCB8 80165848 00000000 */   nop
    /* 10CCBC 8016584C 944F0014 */  lhu        $t7, 0x14($v0)
    /* 10CCC0 80165850 31F8000F */  andi       $t8, $t7, 0xF
    /* 10CCC4 80165854 13000008 */  beqz       $t8, .L80165878_ovl5
    /* 10CCC8 80165858 00000000 */   nop
    /* 10CCCC 8016585C 9459001E */  lhu        $t9, 0x1E($v0)
    /* 10CCD0 80165860 332E000F */  andi       $t6, $t9, 0xF
    /* 10CCD4 80165864 11C00004 */  beqz       $t6, .L80165878_ovl5
    /* 10CCD8 80165868 00000000 */   nop
    /* 10CCDC 8016586C 3C018019 */  lui        $at, %hi(D_8018E441_ovl5)
    /* 10CCE0 80165870 10000002 */  b          .L8016587C_ovl5
    /* 10CCE4 80165874 A031E441 */   sb        $s1, %lo(D_8018E441_ovl5)($at)
  .L80165878_ovl5:
    /* 10CCE8 80165878 A020E441 */  sb         $zero, %lo(D_8018E441_ovl5)($at)
  .L8016587C_ovl5:
    /* 10CCEC 8016587C 3C018019 */  lui        $at, %hi(D_8018E438_ovl5)
    /* 10CCF0 80165880 A020E438 */  sb         $zero, %lo(D_8018E438_ovl5)($at)
    /* 10CCF4 80165884 3C018019 */  lui        $at, %hi(D_8018E298_ovl5)
    /* 10CCF8 80165888 A02CE298 */  sb         $t4, %lo(D_8018E298_ovl5)($at)
    /* 10CCFC 8016588C 3C018019 */  lui        $at, %hi(D_8018E420_ovl5)
    /* 10CD00 80165890 AC2DE420 */  sw         $t5, %lo(D_8018E420_ovl5)($at)
    /* 10CD04 80165894 3C018019 */  lui        $at, %hi(D_8018E3C4_ovl5)
    /* 10CD08 80165898 3C028019 */  lui        $v0, %hi(D_8018E425_ovl5)
    /* 10CD0C 8016589C A020E3C4 */  sb         $zero, %lo(D_8018E3C4_ovl5)($at)
    /* 10CD10 801658A0 2442E425 */  addiu      $v0, $v0, %lo(D_8018E425_ovl5)
    /* 10CD14 801658A4 A0400000 */  sb         $zero, 0x0($v0)
    /* 10CD18 801658A8 3C018019 */  lui        $at, %hi(D_8018E424_ovl5)
    /* 10CD1C 801658AC 8FB00004 */  lw         $s0, 0x4($sp)
    /* 10CD20 801658B0 8FB10008 */  lw         $s1, 0x8($sp)
    /* 10CD24 801658B4 8FB2000C */  lw         $s2, 0xC($sp)
    /* 10CD28 801658B8 A020E424 */  sb         $zero, %lo(D_8018E424_ovl5)($at)
    /* 10CD2C 801658BC 03E00008 */  jr         $ra
    /* 10CD30 801658C0 27BD0088 */   addiu     $sp, $sp, 0x88
endlabel func_80165634_ovl5
.size func_80165634_ovl5, . - func_80165634_ovl5
