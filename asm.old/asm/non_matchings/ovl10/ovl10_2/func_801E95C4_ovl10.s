glabel func_801E95C4_ovl10
/* 1DA334 801E95C4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DA338 801E95C8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DA33C 801E95CC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1DA340 801E95D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DA344 801E95D4 AFA40038 */  sw    $a0, 0x38($sp)
/* 1DA348 801E95D8 8C4E0000 */  lw    $t6, ($v0)
/* 1DA34C 801E95DC 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DA350 801E95E0 24080001 */  li    $t0, 1
/* 1DA354 801E95E4 000E7880 */  sll   $t7, $t6, 2
/* 1DA358 801E95E8 002F0821 */  addu  $at, $at, $t7
/* 1DA35C 801E95EC AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1DA360 801E95F0 8C580000 */  lw    $t8, ($v0)
/* 1DA364 801E95F4 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DA368 801E95F8 3C040001 */  lui   $a0, (0x00010369 >> 16) # lui $a0, 1
/* 1DA36C 801E95FC 0018C880 */  sll   $t9, $t8, 2
/* 1DA370 801E9600 00390821 */  addu  $at, $at, $t9
/* 1DA374 801E9604 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DA378 801E9608 8C490000 */  lw    $t1, ($v0)
/* 1DA37C 801E960C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DA380 801E9610 34840369 */  ori   $a0, (0x00010369 & 0xFFFF) # ori $a0, $a0, 0x369
/* 1DA384 801E9614 00095080 */  sll   $t2, $t1, 2
/* 1DA388 801E9618 002A0821 */  addu  $at, $at, $t2
/* 1DA38C 801E961C AC28DFD0 */ sw $t0, %lo(D_800DDFD0)($at)
/* 1DA390 801E9620 8C4B0000 */  lw    $t3, ($v0)
/* 1DA394 801E9624 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1DA398 801E9628 44812000 */  mtc1  $at, $f4
/* 1DA39C 801E962C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1DA3A0 801E9630 000B6080 */  sll   $t4, $t3, 2
/* 1DA3A4 801E9634 002C0821 */  addu  $at, $at, $t4
/* 1DA3A8 801E9638 0C02A7A9 */  jal   func_800A9EA4
/* 1DA3AC 801E963C E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
/* 1DA3B0 801E9640 3C040001 */  lui   $a0, (0x00010368 >> 16) # lui $a0, 1
/* 1DA3B4 801E9644 34840368 */  ori   $a0, (0x00010368 & 0xFFFF) # ori $a0, $a0, 0x368
/* 1DA3B8 801E9648 0C02AA19 */  jal   func_800AA864
/* 1DA3BC 801E964C 24050001 */   li    $a1, 1
/* 1DA3C0 801E9650 3C040001 */  lui   $a0, (0x0001036D >> 16) # lui $a0, 1
/* 1DA3C4 801E9654 0C02A7A9 */  jal   func_800A9EA4
/* 1DA3C8 801E9658 3484036D */   ori   $a0, (0x0001036D & 0xFFFF) # ori $a0, $a0, 0x36d
/* 1DA3CC 801E965C 3C040001 */  lui   $a0, (0x0001036C >> 16) # lui $a0, 1
/* 1DA3D0 801E9660 0C02A7A9 */  jal   func_800A9EA4
/* 1DA3D4 801E9664 3484036C */   ori   $a0, (0x0001036C & 0xFFFF) # ori $a0, $a0, 0x36c
/* 1DA3D8 801E9668 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1DA3DC 801E966C 27A40030 */   addiu $a0, $sp, 0x30
/* 1DA3E0 801E9670 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DA3E4 801E9674 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DA3E8 801E9678 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 1DA3EC 801E967C 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 1DA3F0 801E9680 8C4D0000 */  lw    $t5, ($v0)
/* 1DA3F4 801E9684 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 1DA3F8 801E9688 44805000 */  mtc1  $zero, $f10
/* 1DA3FC 801E968C 000D7080 */  sll   $t6, $t5, 2
/* 1DA400 801E9690 006E7821 */  addu  $t7, $v1, $t6
/* 1DA404 801E9694 E5E60000 */  swc1  $f6, ($t7)
/* 1DA408 801E9698 93A50034 */  lbu   $a1, 0x34($sp)
/* 1DA40C 801E969C 27A40020 */  addiu $a0, $sp, 0x20
/* 1DA410 801E96A0 A3A5002F */  sb    $a1, 0x2f($sp)
/* 1DA414 801E96A4 8C590000 */  lw    $t9, ($v0)
/* 1DA418 801E96A8 00194880 */  sll   $t1, $t9, 2
/* 1DA41C 801E96AC 00694021 */  addu  $t0, $v1, $t1
/* 1DA420 801E96B0 C5080000 */  lwc1  $f8, ($t0)
/* 1DA424 801E96B4 E7AA0028 */  swc1  $f10, 0x28($sp)
/* 1DA428 801E96B8 0C079713 */  jal   func_801E5C4C_ovl10
/* 1DA42C 801E96BC E7A80020 */   swc1  $f8, 0x20($sp)
/* 1DA430 801E96C0 0C002DAF */  jal   finish_current_thread
/* 1DA434 801E96C4 93A4002F */   lbu   $a0, 0x2f($sp)
/* 1DA438 801E96C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DA43C 801E96CC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DA440 801E96D0 44808000 */  mtc1  $zero, $f16
/* 1DA444 801E96D4 3C04800E */  lui   $a0, %hi(D_800E33D0) # $a0, 0x800e
/* 1DA448 801E96D8 8C4A0000 */  lw    $t2, ($v0)
/* 1DA44C 801E96DC 248433D0 */  addiu $a0, %lo(D_800E33D0) # addiu $a0, $a0, 0x33d0
/* 1DA450 801E96E0 3C01800E */ lui $at, %hi(D_800E3050)
/* 1DA454 801E96E4 000A5880 */  sll   $t3, $t2, 2
/* 1DA458 801E96E8 008B6021 */  addu  $t4, $a0, $t3
/* 1DA45C 801E96EC E5900000 */  swc1  $f16, ($t4)
/* 1DA460 801E96F0 8C430000 */  lw    $v1, ($v0)
/* 1DA464 801E96F4 3C0E801E */  lui   $t6, %hi(func_801DB1E0) # $t6, 0x801e
/* 1DA468 801E96F8 25CEB1E0 */  addiu $t6, %lo(func_801DB1E0) # addiu $t6, $t6, -0x4e20
/* 1DA46C 801E96FC 00031880 */  sll   $v1, $v1, 2
/* 1DA470 801E9700 00836821 */  addu  $t5, $a0, $v1
/* 1DA474 801E9704 C5B20000 */  lwc1  $f18, ($t5)
/* 1DA478 801E9708 00230821 */  addu  $at, $at, $v1
/* 1DA47C 801E970C E4323050 */ swc1 $f18, %lo(D_800E3050)($at)
/* 1DA480 801E9710 8C4F0000 */  lw    $t7, ($v0)
/* 1DA484 801E9714 3C01800E */ lui $at, %hi(D_800DEF90)
/* 1DA488 801E9718 000FC880 */  sll   $t9, $t7, 2
/* 1DA48C 801E971C 00390821 */  addu  $at, $at, $t9
/* 1DA490 801E9720 AC2EEF90 */ sw $t6, %lo(D_800DEF90)($at)
/* 1DA494 801E9724 8C490000 */  lw    $t1, ($v0)
/* 1DA498 801E9728 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 1DA49C 801E972C 00094080 */  sll   $t0, $t1, 2
/* 1DA4A0 801E9730 00280821 */  addu  $at, $at, $t0
/* 1DA4A4 801E9734 0C07973C */  jal   func_801E5CF0_ovl10
/* 1DA4A8 801E9738 C42CA8A0 */ lwc1 $f12, %lo(D_800EA8A0)($at)
/* 1DA4AC 801E973C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1DA4B0 801E9740 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1DA4B4 801E9744 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DA4B8 801E9748 24180001 */  li    $t8, 1
/* 1DA4BC 801E974C 8D4B0000 */  lw    $t3, ($t2)
/* 1DA4C0 801E9750 000B6080 */  sll   $t4, $t3, 2
/* 1DA4C4 801E9754 002C0821 */  addu  $at, $at, $t4
/* 1DA4C8 801E9758 0C02BE85 */  jal   func_800AFA14
/* 1DA4CC 801E975C AC389E20 */ sw $t8, %lo(D_800E9E20)($at)
/* 1DA4D0 801E9760 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DA4D4 801E9764 27BD0038 */  addiu $sp, $sp, 0x38
/* 1DA4D8 801E9768 03E00008 */  jr    $ra
/* 1DA4DC 801E976C 00000000 */   nop   
.type func_801E95C4_ovl10, @function
.size func_801E95C4_ovl10, . - func_801E95C4_ovl10
