glabel func_800A6208
/* 04E458 800A6208 C4840000 */  lwc1  $f4, ($a0)
/* 04E45C 800A620C C4A60000 */  lwc1  $f6, ($a1)
/* 04E460 800A6210 C48A000C */  lwc1  $f10, 0xc($a0)
/* 04E464 800A6214 C4B00004 */  lwc1  $f16, 4($a1)
/* 04E468 800A6218 46062202 */  mul.s $f8, $f4, $f6
/* 04E46C 800A621C C4860018 */  lwc1  $f6, 0x18($a0)
/* 04E470 800A6220 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 04E474 800A6224 46105482 */  mul.s $f18, $f10, $f16
/* 04E478 800A6228 C4AA0008 */  lwc1  $f10, 8($a1)
/* 04E47C 800A622C 27AE0004 */  addiu $t6, $sp, 4
/* 04E480 800A6230 460A3402 */  mul.s $f16, $f6, $f10
/* 04E484 800A6234 46124100 */  add.s $f4, $f8, $f18
/* 04E488 800A6238 C4920024 */  lwc1  $f18, 0x24($a0)
/* 04E48C 800A623C 46102200 */  add.s $f8, $f4, $f16
/* 04E490 800A6240 46089180 */  add.s $f6, $f18, $f8
/* 04E494 800A6244 E7A60004 */  swc1  $f6, 4($sp)
/* 04E498 800A6248 C4A40000 */  lwc1  $f4, ($a1)
/* 04E49C 800A624C C48A0004 */  lwc1  $f10, 4($a0)
/* 04E4A0 800A6250 C4A80004 */  lwc1  $f8, 4($a1)
/* 04E4A4 800A6254 C4920010 */  lwc1  $f18, 0x10($a0)
/* 04E4A8 800A6258 46045402 */  mul.s $f16, $f10, $f4
/* 04E4AC 800A625C C484001C */  lwc1  $f4, 0x1c($a0)
/* 04E4B0 800A6260 46089182 */  mul.s $f6, $f18, $f8
/* 04E4B4 800A6264 C4B20008 */  lwc1  $f18, 8($a1)
/* 04E4B8 800A6268 46122202 */  mul.s $f8, $f4, $f18
/* 04E4BC 800A626C 46068280 */  add.s $f10, $f16, $f6
/* 04E4C0 800A6270 C4860028 */  lwc1  $f6, 0x28($a0)
/* 04E4C4 800A6274 46085400 */  add.s $f16, $f10, $f8
/* 04E4C8 800A6278 46103100 */  add.s $f4, $f6, $f16
/* 04E4CC 800A627C E7A40008 */  swc1  $f4, 8($sp)
/* 04E4D0 800A6280 C4AA0000 */  lwc1  $f10, ($a1)
/* 04E4D4 800A6284 C4920008 */  lwc1  $f18, 8($a0)
/* 04E4D8 800A6288 C4B00004 */  lwc1  $f16, 4($a1)
/* 04E4DC 800A628C C4860014 */  lwc1  $f6, 0x14($a0)
/* 04E4E0 800A6290 460A9202 */  mul.s $f8, $f18, $f10
/* 04E4E4 800A6294 C48A0020 */  lwc1  $f10, 0x20($a0)
/* 04E4E8 800A6298 46103102 */  mul.s $f4, $f6, $f16
/* 04E4EC 800A629C C4A60008 */  lwc1  $f6, 8($a1)
/* 04E4F0 800A62A0 46065402 */  mul.s $f16, $f10, $f6
/* 04E4F4 800A62A4 46044480 */  add.s $f18, $f8, $f4
/* 04E4F8 800A62A8 C484002C */  lwc1  $f4, 0x2c($a0)
/* 04E4FC 800A62AC 46109200 */  add.s $f8, $f18, $f16
/* 04E500 800A62B0 46082280 */  add.s $f10, $f4, $f8
/* 04E504 800A62B4 E7AA000C */  swc1  $f10, 0xc($sp)
/* 04E508 800A62B8 8DD80000 */  lw    $t8, ($t6)
/* 04E50C 800A62BC ACB80000 */  sw    $t8, ($a1)
/* 04E510 800A62C0 8DCF0004 */  lw    $t7, 4($t6)
/* 04E514 800A62C4 ACAF0004 */  sw    $t7, 4($a1)
/* 04E518 800A62C8 8DD80008 */  lw    $t8, 8($t6)
/* 04E51C 800A62CC 27BD0010 */  addiu $sp, $sp, 0x10
/* 04E520 800A62D0 03E00008 */  jr    $ra
/* 04E524 800A62D4 ACB80008 */   sw    $t8, 8($a1)
.type func_800A6208, @function
.size func_800A6208, . - func_800A6208
