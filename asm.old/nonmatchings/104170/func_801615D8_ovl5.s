glabel func_801615D8_ovl5
/* 108A48 801615D8 00047080 */  sll        $t6, $a0, 2
/* 108A4C 801615DC 3C028019 */  lui        $v0, %hi(D_8018E030_ovl5)
/* 108A50 801615E0 004E1021 */  addu       $v0, $v0, $t6
/* 108A54 801615E4 8C42E030 */  lw         $v0, %lo(D_8018E030_ovl5)($v0)
/* 108A58 801615E8 3C01800F */  lui        $at, %hi(D_800EA520)
.L801615EC_ovl3:
/* 108A5C 801615EC 240F0007 */  addiu      $t7, $zero, 0x7
/* 108A60 801615F0 00021080 */  sll        $v0, $v0, 2
/* 108A64 801615F4 00220821 */  addu       $at, $at, $v0
/* 108A68 801615F8 AC2FA520 */  sw         $t7, %lo(D_800EA520)($at)
.L801615FC_ovl3:
/* 108A6C 801615FC 44856000 */  mtc1       $a1, $f12
/* 108A70 80161600 3C01800F */  lui        $at, %hi(D_800EAA60)
/* 108A74 80161604 00220821 */  addu       $at, $at, $v0
/* 108A78 80161608 03E00008 */  jr         $ra
/* 108A7C 8016160C E42CAA60 */   swc1      $f12, %lo(D_800EAA60)($at)
