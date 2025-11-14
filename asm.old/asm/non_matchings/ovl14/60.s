glabel func_801DFC30_ovl14 # 60
/* 202820 801DFC30 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 202824 801DFC34 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 202828 801DFC38 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 20282C 801DFC3C AFBF001C */  sw          $ra, 0x1C($sp)
/* 202830 801DFC40 AFB00018 */  sw          $s0, 0x18($sp)
/* 202834 801DFC44 AFA40020 */  sw          $a0, 0x20($sp)
/* 202838 801DFC48 8C4F0000 */  lw          $t7, 0x0($v0)
/* 20283C 801DFC4C 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 202840 801DFC50 240E0001 */  addiu       $t6, $zero, 0x1
/* 202844 801DFC54 000FC080 */  sll         $t8, $t7, 2
/* 202848 801DFC58 00380821 */  addu        $at, $at, $t8
/* 20284C 801DFC5C AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 202850 801DFC60 8C500000 */  lw          $s0, 0x0($v0)
/* 202854 801DFC64 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 202858 801DFC68 2404000A */  addiu       $a0, $zero, 0xA
/* 20285C 801DFC6C 00108080 */  sll         $s0, $s0, 2
/* 202860 801DFC70 00300821 */  addu        $at, $at, $s0
/* 202864 801DFC74 C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 202868 801DFC78 3C01801E */  lui         $at, %hi(D_801E30B4_ovl14)
/* 20286C 801DFC7C C42630B4 */  lwc1        $f6, %lo(D_801E30B4_ovl14)($at)
/* 202870 801DFC80 3C01800E */  lui         $at, %hi(D_800E6690)
/* 202874 801DFC84 00300821 */  addu        $at, $at, $s0
/* 202878 801DFC88 46062202 */  mul.s       $f8, $f4, $f6
/* 20287C 801DFC8C 0C002DAF */  jal         finish_current_thread
/* 202880 801DFC90 E4286690 */   swc1       $f8, %lo(D_800E6690)($at)
/* 202884 801DFC94 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 202888 801DFC98 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 20288C 801DFC9C 44805000 */  mtc1        $zero, $f10
/* 202890 801DFCA0 3C01800E */  lui         $at, %hi(D_800E6690)
/* 202894 801DFCA4 8C590000 */  lw          $t9, 0x0($v0)
/* 202898 801DFCA8 24040122 */  addiu       $a0, $zero, 0x122
/* 20289C 801DFCAC 00194080 */  sll         $t0, $t9, 2
/* 2028A0 801DFCB0 00280821 */  addu        $at, $at, $t0
/* 2028A4 801DFCB4 E42A6690 */  swc1        $f10, %lo(D_800E6690)($at)
/* 2028A8 801DFCB8 8C500000 */  lw          $s0, 0x0($v0)
/* 2028AC 801DFCBC 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 2028B0 801DFCC0 00108080 */  sll         $s0, $s0, 2
/* 2028B4 801DFCC4 00300821 */  addu        $at, $at, $s0
/* 2028B8 801DFCC8 C4306A10 */  lwc1        $f16, %lo(D_800E6A10)($at)
/* 2028BC 801DFCCC 3C01801E */  lui         $at, %hi(D_801E30B8_ovl14)
/* 2028C0 801DFCD0 C43230B8 */  lwc1        $f18, %lo(D_801E30B8_ovl14)($at)
/* 2028C4 801DFCD4 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 2028C8 801DFCD8 00300821 */  addu        $at, $at, $s0
/* 2028CC 801DFCDC 46128102 */  mul.s       $f4, $f16, $f18
/* 2028D0 801DFCE0 0C002DAF */  jal         finish_current_thread
/* 2028D4 801DFCE4 E42464D0 */   swc1       $f4, %lo(D_800E64D0)($at)
/* 2028D8 801DFCE8 3C098005 */  lui         $t1, %hi(D_8004A7C4)
/* 2028DC 801DFCEC 8D29A7C4 */  lw          $t1, %lo(D_8004A7C4)($t1)
/* 2028E0 801DFCF0 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 2028E4 801DFCF4 2404000A */  addiu       $a0, $zero, 0xA
/* 2028E8 801DFCF8 8D300000 */  lw          $s0, 0x0($t1)
/* 2028EC 801DFCFC 00108080 */  sll         $s0, $s0, 2
/* 2028F0 801DFD00 00300821 */  addu        $at, $at, $s0
/* 2028F4 801DFD04 C4266A10 */  lwc1        $f6, %lo(D_800E6A10)($at)
/* 2028F8 801DFD08 3C01801E */  lui         $at, %hi(D_801E30BC_ovl14)
/* 2028FC 801DFD0C C42830BC */  lwc1        $f8, %lo(D_801E30BC_ovl14)($at)
/* 202900 801DFD10 3C01800E */  lui         $at, %hi(D_800E6690)
/* 202904 801DFD14 00300821 */  addu        $at, $at, $s0
/* 202908 801DFD18 46083282 */  mul.s       $f10, $f6, $f8
/* 20290C 801DFD1C 0C002DAF */  jal         finish_current_thread
/* 202910 801DFD20 E42A6690 */   swc1       $f10, %lo(D_800E6690)($at)
/* 202914 801DFD24 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 202918 801DFD28 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 20291C 801DFD2C 44808000 */  mtc1        $zero, $f16
/* 202920 801DFD30 3C03800E */  lui         $v1, %hi(D_800E6690)
/* 202924 801DFD34 8C4A0000 */  lw          $t2, 0x0($v0)
/* 202928 801DFD38 24636690 */  addiu       $v1, $v1, %lo(D_800E6690)
/* 20292C 801DFD3C 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 202930 801DFD40 000A5880 */  sll         $t3, $t2, 2
/* 202934 801DFD44 006B6021 */  addu        $t4, $v1, $t3
/* 202938 801DFD48 E5900000 */  swc1        $f16, 0x0($t4)
/* 20293C 801DFD4C 8C500000 */  lw          $s0, 0x0($v0)
/* 202940 801DFD50 00108080 */  sll         $s0, $s0, 2
/* 202944 801DFD54 00706821 */  addu        $t5, $v1, $s0
/* 202948 801DFD58 C5B20000 */  lwc1        $f18, 0x0($t5)
/* 20294C 801DFD5C 00300821 */  addu        $at, $at, $s0
/* 202950 801DFD60 0C02BE85 */  jal         func_800AFA14
/* 202954 801DFD64 E43264D0 */   swc1       $f18, %lo(D_800E64D0)($at)
/* 202958 801DFD68 8FBF001C */  lw          $ra, 0x1C($sp)
/* 20295C 801DFD6C 8FB00018 */  lw          $s0, 0x18($sp)
/* 202960 801DFD70 27BD0020 */  addiu       $sp, $sp, 0x20
/* 202964 801DFD74 03E00008 */  jr          $ra
/* 202968 801DFD78 00000000 */   nop
.type func_801DFC30_ovl14, @function
.size func_801DFC30_ovl14, . - func_801DFC30_ovl14
