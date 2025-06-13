glabel mtx_create_translate_scale
/* 096D28 8010E2B8 44856000 */  mtc1  $a1, $f12
/* 096D2C 8010E2BC 44867000 */  mtc1  $a2, $f14
/* 096D30 8010E2C0 AFA7000C */  sw    $a3, 0xc($sp)
/* 096D34 8010E2C4 E48C0030 */  swc1  $f12, 0x30($a0)
/* 096D38 8010E2C8 E48E0034 */  swc1  $f14, 0x34($a0)
/* 096D3C 8010E2CC C7A4000C */  lwc1  $f4, 0xc($sp)
/* 096D40 8010E2D0 44800000 */  mtc1  $zero, $f0
/* 096D44 8010E2D4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 096D48 8010E2D8 E4840038 */  swc1  $f4, 0x38($a0)
/* 096D4C 8010E2DC C7A60010 */  lwc1  $f6, 0x10($sp)
/* 096D50 8010E2E0 44818000 */  mtc1  $at, $f16
/* 096D54 8010E2E4 E4860000 */  swc1  $f6, ($a0)
/* 096D58 8010E2E8 C7A80014 */  lwc1  $f8, 0x14($sp)
/* 096D5C 8010E2EC E4880014 */  swc1  $f8, 0x14($a0)
/* 096D60 8010E2F0 C7AA0018 */  lwc1  $f10, 0x18($sp)
/* 096D64 8010E2F4 E4800004 */  swc1  $f0, 4($a0)
/* 096D68 8010E2F8 E4800008 */  swc1  $f0, 8($a0)
/* 096D6C 8010E2FC E480000C */  swc1  $f0, 0xc($a0)
/* 096D70 8010E300 E4800010 */  swc1  $f0, 0x10($a0)
/* 096D74 8010E304 E4800018 */  swc1  $f0, 0x18($a0)
/* 096D78 8010E308 E480001C */  swc1  $f0, 0x1c($a0)
/* 096D7C 8010E30C E4800020 */  swc1  $f0, 0x20($a0)
/* 096D80 8010E310 E4800024 */  swc1  $f0, 0x24($a0)
/* 096D84 8010E314 E480002C */  swc1  $f0, 0x2c($a0)
/* 096D88 8010E318 E490003C */  swc1  $f16, 0x3c($a0)
/* 096D8C 8010E31C 03E00008 */  jr    $ra
/* 096D90 8010E320 E48A0028 */   swc1  $f10, 0x28($a0)
.size mtx_create_translate_scale, . - mtx_create_translate_scale
