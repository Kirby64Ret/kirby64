nonmatching func_801DF910_ovl12, 0xCC

glabel func_801DF910_ovl12
    /* 1EFC50 801DF910 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1EFC54 801DF914 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1EFC58 801DF918 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 1EFC5C 801DF91C 3C0F800F */  lui        $t7, %hi(D_800EA360)
    /* 1EFC60 801DF920 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1EFC64 801DF924 3C08800F */  lui        $t0, %hi(D_800EA520)
    /* 1EFC68 801DF928 00803025 */  or         $a2, $a0, $zero
    /* 1EFC6C 801DF92C 00031880 */  sll        $v1, $v1, 2
    /* 1EFC70 801DF930 00431021 */  addu       $v0, $v0, $v1
    /* 1EFC74 801DF934 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 1EFC78 801DF938 01E37821 */  addu       $t7, $t7, $v1
    /* 1EFC7C 801DF93C 8DEFA360 */  lw         $t7, %lo(D_800EA360)($t7)
    /* 1EFC80 801DF940 8C59006C */  lw         $t9, 0x6C($v0)
    /* 1EFC84 801DF944 01034021 */  addu       $t0, $t0, $v1
    /* 1EFC88 801DF948 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
    /* 1EFC8C 801DF94C 000FC080 */  sll        $t8, $t7, 2
    /* 1EFC90 801DF950 030FC023 */  subu       $t8, $t8, $t7
    /* 1EFC94 801DF954 03192821 */  addu       $a1, $t8, $t9
    /* 1EFC98 801DF958 15000009 */  bnez       $t0, .L801DF980_ovl12
    /* 1EFC9C 801DF95C 24A5FFFD */   addiu     $a1, $a1, -0x3
    /* 1EFCA0 801DF960 00051880 */  sll        $v1, $a1, 2
    /* 1EFCA4 801DF964 3C02801E */  lui        $v0, %hi(D_801E2BDC_ovl12)
    /* 1EFCA8 801DF968 3C04801E */  lui        $a0, %hi(D_801E2C00_ovl12)
    /* 1EFCAC 801DF96C 00431021 */  addu       $v0, $v0, $v1
    /* 1EFCB0 801DF970 00832021 */  addu       $a0, $a0, $v1
    /* 1EFCB4 801DF974 8C422BDC */  lw         $v0, %lo(D_801E2BDC_ovl12)($v0)
    /* 1EFCB8 801DF978 10000008 */  b          .L801DF99C_ovl12
    /* 1EFCBC 801DF97C 8C842C00 */   lw        $a0, %lo(D_801E2C00_ovl12)($a0)
  .L801DF980_ovl12:
    /* 1EFCC0 801DF980 00051880 */  sll        $v1, $a1, 2
    /* 1EFCC4 801DF984 3C02801E */  lui        $v0, %hi(D_801E2C54_ovl12)
    /* 1EFCC8 801DF988 3C04801E */  lui        $a0, %hi(D_801E2C78_ovl12)
    /* 1EFCCC 801DF98C 00431021 */  addu       $v0, $v0, $v1
    /* 1EFCD0 801DF990 00832021 */  addu       $a0, $a0, $v1
    /* 1EFCD4 801DF994 8C422C54 */  lw         $v0, %lo(D_801E2C54_ovl12)($v0)
    /* 1EFCD8 801DF998 8C842C78 */  lw         $a0, %lo(D_801E2C78_ovl12)($a0)
  .L801DF99C_ovl12:
    /* 1EFCDC 801DF99C 8CC30080 */  lw         $v1, 0x80($a2)
    /* 1EFCE0 801DF9A0 1060000C */  beqz       $v1, .L801DF9D4_ovl12
    /* 1EFCE4 801DF9A4 00000000 */   nop
    /* 1EFCE8 801DF9A8 884A0000 */  lwl        $t2, 0x0($v0)
  .L801DF9AC_ovl12:
    /* 1EFCEC 801DF9AC 984A0003 */  lwr        $t2, 0x3($v0)
    /* 1EFCF0 801DF9B0 A86A0058 */  swl        $t2, 0x58($v1)
    /* 1EFCF4 801DF9B4 B86A005B */  swr        $t2, 0x5B($v1)
    /* 1EFCF8 801DF9B8 888C0000 */  lwl        $t4, 0x0($a0)
    /* 1EFCFC 801DF9BC 988C0003 */  lwr        $t4, 0x3($a0)
    /* 1EFD00 801DF9C0 A86C0060 */  swl        $t4, 0x60($v1)
    /* 1EFD04 801DF9C4 B86C0063 */  swr        $t4, 0x63($v1)
    /* 1EFD08 801DF9C8 8C630000 */  lw         $v1, 0x0($v1)
    /* 1EFD0C 801DF9CC 5460FFF7 */  bnel       $v1, $zero, .L801DF9AC_ovl12
    /* 1EFD10 801DF9D0 884A0000 */   lwl       $t2, 0x0($v0)
  .L801DF9D4_ovl12:
    /* 1EFD14 801DF9D4 03E00008 */  jr         $ra
    /* 1EFD18 801DF9D8 00000000 */   nop
endlabel func_801DF910_ovl12
.size func_801DF910_ovl12, . - func_801DF910_ovl12
