glabel func_8021F4A0_ovl18
/* 231E40 8021F4A0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 231E44 8021F4A4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 231E48 8021F4A8 3C01800D */  lui        $at, %hi(D_800D6E58)
/* 231E4C 8021F4AC C4246E58 */  lwc1       $f4, %lo(D_800D6E58)($at)
/* 231E50 8021F4B0 8C4E0000 */  lw         $t6, 0x0($v0)
/* 231E54 8021F4B4 3C01800E */  lui        $at, %hi(D_800E7B20)
/* 231E58 8021F4B8 2418001E */  addiu      $t8, $zero, 0x1E
/* 231E5C 8021F4BC 000E7880 */  sll        $t7, $t6, 2
/* 231E60 8021F4C0 002F0821 */  addu       $at, $at, $t7
/* 231E64 8021F4C4 E4247B20 */  swc1       $f4, %lo(D_800E7B20)($at)
/* 231E68 8021F4C8 8C590000 */  lw         $t9, 0x0($v0)
/* 231E6C 8021F4CC 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 231E70 8021F4D0 00194080 */  sll        $t0, $t9, 2
/* 231E74 8021F4D4 00280821 */  addu       $at, $at, $t0
/* 231E78 8021F4D8 AC387CE0 */  sw         $t8, %lo(D_800E7CE0)($at)
/* 231E7C 8021F4DC 3C01800D */  lui        $at, %hi(D_800D7098)
/* 231E80 8021F4E0 03E00008 */  jr         $ra
/* 231E84 8021F4E4 AC207098 */   sw        $zero, %lo(D_800D7098)($at)
