glabel func_801DB7D0_ovl11
/* 1E6090 801DB7D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E6094 801DB7D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E6098 801DB7D8 0C076D72 */  jal        func_801DB5C8_ovl11
.L801DB7DC_ovl13:
/* 1E609C 801DB7DC 00000000 */   nop
/* 1E60A0 801DB7E0 46000306 */  mov.s      $f12, $f0
/* 1E60A4 801DB7E4 0C076DA1 */  jal        func_801DB684_ovl14
/* 1E60A8 801DB7E8 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 1E60AC 801DB7EC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
.L801DB7F0_ovl12:
/* 1E60B0 801DB7F0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1E60B4 801DB7F4 3C0F800F */  lui        $t7, %hi(D_800E9720)
/* 1E60B8 801DB7F8 25EF9720 */  addiu      $t7, $t7, %lo(D_800E9720)
glabel func_801DB7FC_ovl14
/* 1E60BC 801DB7FC 8DC20000 */  lw         $v0, 0x0($t6)
/* 1E60C0 801DB800 3C01800E */  lui        $at, %hi(D_800E4C50)
glabel func_801DB804_ovl16
/* 1E60C4 801DB804 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* 1E60C8 801DB808 00021080 */  sll        $v0, $v0, 2
.L801DB80C_ovl13:
/* 1E60CC 801DB80C 004F1821 */  addu       $v1, $v0, $t7
/* 1E60D0 801DB810 8C640000 */  lw         $a0, 0x0($v1)
/* 1E60D4 801DB814 00220821 */  addu       $at, $at, $v0
/* 1E60D8 801DB818 1480001C */  bnez       $a0, .L801DB88C_ovl11
/* 1E60DC 801DB81C 2499FFFF */   addiu     $t9, $a0, -0x1
/* 1E60E0 801DB820 C4244C50 */  lwc1       $f4, %lo(D_800E4C50)($at)
/* 1E60E4 801DB824 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 1E60E8 801DB828 00220821 */  addu       $at, $at, $v0
/* 1E60EC 801DB82C C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* 1E60F0 801DB830 3C01801E */  lui        $at, %hi(func_801E0BF8_ovl9 + 0x20)
/* 1E60F4 801DB834 4606203C */  c.lt.s     $f4, $f6
/* 1E60F8 801DB838 00000000 */  nop
/* 1E60FC 801DB83C 45020015 */  bc1fl      .L801DB894_ovl11
/* 1E6100 801DB840 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1E6104 801DB844 44804000 */  mtc1       $zero, $f8
/* 1E6108 801DB848 24180002 */  addiu      $t8, $zero, 0x2
/* 1E610C 801DB84C 4608103C */  c.lt.s     $f2, $f8
.L801DB850_ovl17:
/* 1E6110 801DB850 00000000 */  nop
/* 1E6114 801DB854 45020004 */  bc1fl      .L801DB868_ovl11
/* 1E6118 801DB858 46001006 */   mov.s     $f0, $f2
/* 1E611C 801DB85C 10000002 */  b          .L801DB868_ovl11
/* 1E6120 801DB860 46001007 */   neg.s     $f0, $f2
.L801DB864_ovl16:
/* 1E6124 801DB864 46001006 */  mov.s      $f0, $f2
.L801DB868_ovl11:
/* 1E6128 801DB868 C42A0C18 */  lwc1       $f10, %lo(func_801E0BF8_ovl9 + 0x20)($at)
/* 1E612C 801DB86C 3C01800F */  lui        $at, %hi(D_800EA520)
glabel func_801DB870_ovl17
/* 1E6130 801DB870 00220821 */  addu       $at, $at, $v0
/* 1E6134 801DB874 460A003E */  c.le.s     $f0, $f10
/* 1E6138 801DB878 00000000 */  nop
.L801DB87C_ovl12:
/* 1E613C 801DB87C 45020005 */  bc1fl      .L801DB894_ovl11
/* 1E6140 801DB880 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1E6144 801DB884 10000002 */  b          .L801DB890_ovl17
/* 1E6148 801DB888 AC38A520 */   sw        $t8, %lo(D_800EA520)($at)
.L801DB88C_ovl11:
/* 1E614C 801DB88C AC790000 */  sw         $t9, 0x0($v1)
.L801DB890_ovl17:
/* 1E6150 801DB890 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DB894_ovl11:
/* 1E6154 801DB894 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E6158 801DB898 03E00008 */  jr         $ra
/* 1E615C 801DB89C 00000000 */   nop
