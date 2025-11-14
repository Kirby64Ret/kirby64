glabel func_801DF9DC_ovl12 # 95
/* 0047DC 801DF9DC 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 0047E0 801DF9E0 24C6A7C4 */  addiu       $a2, $a2, %lo(D_8004A7C4)
/* 0047E4 801DF9E4 8CCE0000 */  lw          $t6, 0x0($a2)
/* 0047E8 801DF9E8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0047EC 801DF9EC AFBF0014 */  sw          $ra, 0x14($sp)
/* 0047F0 801DF9F0 8DC30000 */  lw          $v1, 0x0($t6)
/* 0047F4 801DF9F4 3C05800E */  lui         $a1, %hi(D_800DE350)
/* 0047F8 801DF9F8 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 0047FC 801DF9FC 00031880 */  sll         $v1, $v1, 2
/* 004800 801DFA00 00A32821 */  addu        $a1, $a1, $v1
/* 004804 801DFA04 8CA5E350 */  lw          $a1, %lo(D_800DE350)($a1)
/* 004808 801DFA08 00431021 */  addu        $v0, $v0, $v1
/* 00480C 801DFA0C 8C421B50 */  lw          $v0, %lo(D_800E1B50)($v0)
/* 004810 801DFA10 8CAF003C */  lw          $t7, 0x3C($a1)
/* 004814 801DFA14 24180002 */  addiu       $t8, $zero, 0x2
/* 004818 801DFA18 24190015 */  addiu       $t9, $zero, 0x15
/* 00481C 801DFA1C 8DE40010 */  lw          $a0, 0x10($t7)
/* 004820 801DFA20 24080001 */  addiu       $t0, $zero, 0x1
/* 004824 801DFA24 AC580070 */  sw          $t8, 0x70($v0)
/* 004828 801DFA28 AC590068 */  sw          $t9, 0x68($v0)
/* 00482C 801DFA2C AC48006C */  sw          $t0, 0x6C($v0)
/* 004830 801DFA30 8CCA0000 */  lw          $t2, 0x0($a2)
/* 004834 801DFA34 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 004838 801DFA38 24090001 */  addiu       $t1, $zero, 0x1
/* 00483C 801DFA3C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 004840 801DFA40 AFA2001C */  sw          $v0, 0x1C($sp)
/* 004844 801DFA44 000B6080 */  sll         $t4, $t3, 2
/* 004848 801DFA48 002C0821 */  addu        $at, $at, $t4
/* 00484C 801DFA4C 0C077E44 */  jal         func_801DF910_ovl12
/* 004850 801DFA50 AC29A1A0 */   sw         $t1, %lo(D_800EA1A0)($at)
/* 004854 801DFA54 8FA2001C */  lw          $v0, 0x1C($sp)
/* 004858 801DFA58 240401C9 */  addiu       $a0, $zero, 0x1C9
/* 00485C 801DFA5C 8C4D0068 */  lw          $t5, 0x68($v0)
/* 004860 801DFA60 25AEFFFF */  addiu       $t6, $t5, -0x1
/* 004864 801DFA64 0C029D9E */  jal         play_sound
/* 004868 801DFA68 AC4E0068 */   sw         $t6, 0x68($v0)
/* 00486C 801DFA6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 004870 801DFA70 27BD0020 */  addiu       $sp, $sp, 0x20
/* 004874 801DFA74 03E00008 */  jr          $ra
/* 004878 801DFA78 00000000 */   nop
.type func_801DF9DC_ovl12, @function
.size func_801DF9DC_ovl12, . - func_801DF9DC_ovl12
