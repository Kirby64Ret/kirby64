glabel func_801DFB48_ovl14 # 58
/* 202738 801DFB48 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 20273C 801DFB4C AFB00018 */  sw          $s0, 0x18($sp)
/* 202740 801DFB50 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 202744 801DFB54 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 202748 801DFB58 8E0E0000 */  lw          $t6, 0x0($s0)
/* 20274C 801DFB5C AFBF0024 */  sw          $ra, 0x24($sp)
/* 202750 801DFB60 AFB20020 */  sw          $s2, 0x20($sp)
/* 202754 801DFB64 AFB1001C */  sw          $s1, 0x1C($sp)
/* 202758 801DFB68 AFA40028 */  sw          $a0, 0x28($sp)
/* 20275C 801DFB6C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 202760 801DFB70 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 202764 801DFB74 000FC080 */  sll         $t8, $t7, 2
/* 202768 801DFB78 00380821 */  addu        $at, $at, $t8
/* 20276C 801DFB7C 0C044A6B */  jal         func_801129AC
/* 202770 801DFB80 AC20DFD0 */   sw         $zero, %lo(D_800DDFD0)($at)
/* 202774 801DFB84 0C03E905 */  jal         func_800FA414
/* 202778 801DFB88 24040002 */   addiu      $a0, $zero, 0x2
/* 20277C 801DFB8C 8E020000 */  lw          $v0, 0x0($s0)
/* 202780 801DFB90 3C018013 */  lui         $at, %hi(D_80129138)
/* 202784 801DFB94 3C12800E */  lui         $s2, %hi(D_800E0D50)
/* 202788 801DFB98 8C590000 */  lw          $t9, 0x0($v0)
/* 20278C 801DFB9C 3C11800F */  lui         $s1, %hi(D_800E9C60)
/* 202790 801DFBA0 26319C60 */  addiu       $s1, $s1, %lo(D_800E9C60)
/* 202794 801DFBA4 AC399138 */  sw          $t9, %lo(D_80129138)($at)
/* 202798 801DFBA8 8C480000 */  lw          $t0, 0x0($v0)
/* 20279C 801DFBAC 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 2027A0 801DFBB0 44812000 */  mtc1        $at, $f4
/* 2027A4 801DFBB4 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 2027A8 801DFBB8 00084880 */  sll         $t1, $t0, 2
/* 2027AC 801DFBBC 00290821 */  addu        $at, $at, $t1
/* 2027B0 801DFBC0 26520D50 */  addiu       $s2, $s2, %lo(D_800E0D50)
/* 2027B4 801DFBC4 24100001 */  addiu       $s0, $zero, 0x1
/* 2027B8 801DFBC8 E4246A10 */  swc1        $f4, %lo(D_800E6A10)($at)
.L801DFBCC:
/* 2027BC 801DFBCC 8C430000 */  lw          $v1, 0x0($v0)
/* 2027C0 801DFBD0 00031880 */  sll         $v1, $v1, 2
/* 2027C4 801DFBD4 02435021 */  addu        $t2, $s2, $v1
/* 2027C8 801DFBD8 8D4B0000 */  lw          $t3, 0x0($t2)
/* 2027CC 801DFBDC 000B6080 */  sll         $t4, $t3, 2
/* 2027D0 801DFBE0 022C6821 */  addu        $t5, $s1, $t4
/* 2027D4 801DFBE4 8DAE0000 */  lw          $t6, 0x0($t5)
/* 2027D8 801DFBE8 120E0006 */  beq         $s0, $t6, .L801DFC04
/* 2027DC 801DFBEC 00000000 */   nop
/* 2027E0 801DFBF0 0C002DAF */  jal         finish_current_thread
/* 2027E4 801DFBF4 02002025 */   move       $a0, $s0
/* 2027E8 801DFBF8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 2027EC 801DFBFC 1000FFF3 */  b           .L801DFBCC
/* 2027F0 801DFC00 8C42A7C4 */   lw         $v0, %lo(D_8004A7C4)($v0)
.L801DFC04:
/* 2027F4 801DFC04 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 2027F8 801DFC08 8FBF0024 */  lw          $ra, 0x24($sp)
/* 2027FC 801DFC0C 00230821 */  addu        $at, $at, $v1
/* 202800 801DFC10 AC30DC50 */  sw          $s0, %lo(gEntityVtableIndexArray)($at)
/* 202804 801DFC14 8FB00018 */  lw          $s0, 0x18($sp)
/* 202808 801DFC18 8FB1001C */  lw          $s1, 0x1C($sp)
/* 20280C 801DFC1C 8FB20020 */  lw          $s2, 0x20($sp)
/* 202810 801DFC20 03E00008 */  jr          $ra
/* 202814 801DFC24 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DFB48_ovl14, @function
.size func_801DFB48_ovl14, . - func_801DFB48_ovl14
