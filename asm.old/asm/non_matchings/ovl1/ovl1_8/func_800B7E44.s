glabel func_800B7E44
/* 060094 800B7E44 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 060098 800B7E48 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 06009C 800B7E4C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0600A0 800B7E50 44806000 */  mtc1  $zero, $f12
/* 0600A4 800B7E54 8C430000 */  lw    $v1, ($v0)
/* 0600A8 800B7E58 3C04800F */  lui   $a0, %hi(D_800EB320) # $a0, 0x800f
/* 0600AC 800B7E5C 2484B320 */  addiu $a0, %lo(D_800EB320) # addiu $a0, $a0, -0x4ce0
/* 0600B0 800B7E60 00031880 */  sll   $v1, $v1, 2
/* 0600B4 800B7E64 00230821 */  addu  $at, $at, $v1
/* 0600B8 800B7E68 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0600BC 800B7E6C 00837021 */  addu  $t6, $a0, $v1
/* 0600C0 800B7E70 C5C80000 */  lwc1  $f8, ($t6)
/* 0600C4 800B7E74 46046001 */  sub.s $f0, $f12, $f4
/* 0600C8 800B7E78 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 0600CC 800B7E7C 00230821 */  addu  $at, $at, $v1
/* 0600D0 800B7E80 C4262950 */ lwc1 $f6, %lo(gEntitiesNextPosZArray)($at)
/* 0600D4 800B7E84 46004282 */  mul.s $f10, $f8, $f0
/* 0600D8 800B7E88 3C01800E */ lui $at, %hi(D_800E2090)
/* 0600DC 800B7E8C 00230821 */  addu  $at, $at, $v1
/* 0600E0 800B7E90 44802000 */  mtc1  $zero, $f4
/* 0600E4 800B7E94 46066081 */  sub.s $f2, $f12, $f6
/* 0600E8 800B7E98 E42A2090 */ swc1 $f10, %lo(D_800E2090)($at)
/* 0600EC 800B7E9C 8C430000 */  lw    $v1, ($v0)
/* 0600F0 800B7EA0 3C01800E */ lui $at, %hi(D_800E2410)
/* 0600F4 800B7EA4 00031880 */  sll   $v1, $v1, 2
/* 0600F8 800B7EA8 00837821 */  addu  $t7, $a0, $v1
/* 0600FC 800B7EAC C5F00000 */  lwc1  $f16, ($t7)
/* 060100 800B7EB0 00230821 */  addu  $at, $at, $v1
/* 060104 800B7EB4 46028482 */  mul.s $f18, $f16, $f2
/* 060108 800B7EB8 E4322410 */ swc1 $f18, %lo(D_800E2410)($at)
/* 06010C 800B7EBC 8C580000 */  lw    $t8, ($v0)
/* 060110 800B7EC0 3C01800E */ lui $at, %hi(D_800E2250)
/* 060114 800B7EC4 0018C880 */  sll   $t9, $t8, 2
/* 060118 800B7EC8 00390821 */  addu  $at, $at, $t9
/* 06011C 800B7ECC 03E00008 */  jr    $ra
/* 060120 800B7ED0 E4242250 */ swc1 $f4, %lo(D_800E2250)($at)
.type func_800B7E44, @function
.size func_800B7E44, . - func_800B7E44
