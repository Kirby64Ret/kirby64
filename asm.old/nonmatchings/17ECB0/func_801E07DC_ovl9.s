glabel func_801E07DC_ovl10
/* 18E82C 801E07DC 27BDFFB0 */  addiu      $sp, $sp, -0x50
.L801E07E0_ovl11:
/* 18E830 801E07E0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 18E834 801E07E4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
glabel func_801E07E8_ovl14
/* 18E838 801E07E8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 18E83C 801E07EC AFB00018 */  sw         $s0, 0x18($sp)
glabel func_801E07F0_ovl14
/* 18E840 801E07F0 AFA40050 */  sw         $a0, 0x50($sp)
/* 18E844 801E07F4 8DC20000 */  lw         $v0, 0x0($t6)
/* 18E848 801E07F8 3C10800E */  lui        $s0, %hi(D_800E1B50)
/* 18E84C 801E07FC 00027880 */  sll        $t7, $v0, 2
/* 18E850 801E0800 020F8021 */  addu       $s0, $s0, $t7
.L801E0804_ovl16:
/* 18E854 801E0804 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
/* 18E858 801E0808 56000004 */  bnel       $s0, $zero, .L801E081C_ovl17
.L801E080C_ovl11:
/* 18E85C 801E080C 8E18008C */   lw        $t8, 0x8C($s0)
.L801E0810_ovl11:
/* 18E860 801E0810 10000038 */  b          .L801E08F4_ovl9
.L801E0814_ovl11:
/* 18E864 801E0814 00001025 */   or        $v0, $zero, $zero
/* 18E868 801E0818 8E18008C */  lw         $t8, 0x8C($s0)
.L801E081C_ovl17:
/* 18E86C 801E081C 17000003 */  bnez       $t8, .L801E082C_ovl10
glabel func_801E0820_ovl16
/* 18E870 801E0820 00000000 */   nop
glabel func_801E0824_ovl12
/* 18E874 801E0824 10000033 */  b          .L801E08F4_ovl9
.L801E0828_ovl10:
/* 18E878 801E0828 00001025 */   or        $v0, $zero, $zero
.L801E082C_ovl10:
/* 18E87C 801E082C 0C044554 */  jal        func_80111550
/* 18E880 801E0830 00402025 */   or        $a0, $v0, $zero
/* 18E884 801E0834 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 18E888 801E0838 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 18E88C 801E083C 8E04008C */  lw         $a0, 0x8C($s0)
/* 18E890 801E0840 0C044722 */  jal        func_80111C88
/* 18E894 801E0844 8F250000 */   lw        $a1, 0x0($t9)
/* 18E898 801E0848 8E08008C */  lw         $t0, 0x8C($s0)
/* 18E89C 801E084C 00402025 */  or         $a0, $v0, $zero
/* 18E8A0 801E0850 8D030008 */  lw         $v1, 0x8($t0)
/* 18E8A4 801E0854 8C690004 */  lw         $t1, 0x4($v1)
/* 18E8A8 801E0858 8FA30050 */  lw         $v1, 0x50($sp)
/* 18E8AC 801E085C 15200005 */  bnez       $t1, .L801E0874_ovl9
/* 18E8B0 801E0860 00000000 */   nop
/* 18E8B4 801E0864 10600003 */  beqz       $v1, .L801E0874_ovl9
/* 18E8B8 801E0868 00000000 */   nop
/* 18E8BC 801E086C 8C4A0024 */  lw         $t2, 0x24($v0)
/* 18E8C0 801E0870 AD430008 */  sw         $v1, 0x8($t2)
.L801E0874_ovl9:
/* 18E8C4 801E0874 0C0447B3 */  jal        func_80111ECC
/* 18E8C8 801E0878 00000000 */   nop
/* 18E8CC 801E087C 0C0442C0 */  jal        func_80110B00
/* 18E8D0 801E0880 27A40030 */   addiu     $a0, $sp, 0x30
/* 18E8D4 801E0884 1040000D */  beqz       $v0, .L801E08BC_ovl9
/* 18E8D8 801E0888 3C198005 */   lui       $t9, %hi(D_8004A7C4)
/* 18E8DC 801E088C 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 18E8E0 801E0890 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
.L801E0894_ovl12:
/* 18E8E4 801E0894 93AB0032 */  lbu        $t3, 0x32($sp)
/* 18E8E8 801E0898 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 18E8EC 801E089C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 18E8F0 801E08A0 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
/* 18E8F4 801E08A4 000D7080 */  sll        $t6, $t5, 2
.L801E08A8_ovl11:
/* 18E8F8 801E08A8 006E7821 */  addu       $t7, $v1, $t6
.L801E08AC_ovl15:
/* 18E8FC 801E08AC ADEB0000 */  sw         $t3, 0x0($t7)
/* 18E900 801E08B0 93B80033 */  lbu        $t8, 0x33($sp)
.L801E08B4_ovl12:
/* 18E904 801E08B4 10000009 */  b          .L801E08DC_ovl9
/* 18E908 801E08B8 A2180043 */   sb        $t8, 0x43($s0)
.L801E08BC_ovl9:
/* 18E90C 801E08BC 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 18E910 801E08C0 3C03800F */  lui        $v1, %hi(D_800E83E0)
/* 18E914 801E08C4 246383E0 */  addiu      $v1, $v1, %lo(D_800E83E0)
/* 18E918 801E08C8 8F280000 */  lw         $t0, 0x0($t9)
/* 18E91C 801E08CC 00084880 */  sll        $t1, $t0, 2
/* 18E920 801E08D0 00695021 */  addu       $t2, $v1, $t1
.L801E08D4_ovl16:
/* 18E924 801E08D4 AD400000 */  sw         $zero, 0x0($t2)
.L801E08D8_ovl17:
/* 18E928 801E08D8 A2000043 */  sb         $zero, 0x43($s0)
.L801E08DC_ovl9:
/* 18E92C 801E08DC 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 18E930 801E08E0 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 18E934 801E08E4 8D8D0000 */  lw         $t5, 0x0($t4)
/* 18E938 801E08E8 000D7080 */  sll        $t6, $t5, 2
.L801E08EC_ovl11:
/* 18E93C 801E08EC 006E5821 */  addu       $t3, $v1, $t6
/* 18E940 801E08F0 8D620000 */  lw         $v0, 0x0($t3)
.L801E08F4_ovl9:
/* 18E944 801E08F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 18E948 801E08F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 18E94C 801E08FC 27BD0050 */  addiu      $sp, $sp, 0x50
/* 18E950 801E0900 03E00008 */  jr         $ra
/* 18E954 801E0904 00000000 */   nop
