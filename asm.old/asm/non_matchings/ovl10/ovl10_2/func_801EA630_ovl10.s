glabel func_801EA630_ovl10
/* 1DB3A0 801EA630 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DB3A4 801EA634 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DB3A8 801EA638 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DB3AC 801EA63C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DB3B0 801EA640 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DB3B4 801EA644 8C4E0000 */  lw    $t6, ($v0)
/* 1DB3B8 801EA648 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DB3BC 801EA64C 24180001 */  li    $t8, 1
/* 1DB3C0 801EA650 000E7880 */  sll   $t7, $t6, 2
/* 1DB3C4 801EA654 002F0821 */  addu  $at, $at, $t7
/* 1DB3C8 801EA658 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1DB3CC 801EA65C 8C590000 */  lw    $t9, ($v0)
/* 1DB3D0 801EA660 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1DB3D4 801EA664 24090005 */  li    $t1, 5
/* 1DB3D8 801EA668 00194080 */  sll   $t0, $t9, 2
/* 1DB3DC 801EA66C 00280821 */  addu  $at, $at, $t0
/* 1DB3E0 801EA670 AC389C60 */ sw $t8, %lo(D_800E9C60)($at)
/* 1DB3E4 801EA674 8C4A0000 */  lw    $t2, ($v0)
/* 1DB3E8 801EA678 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1DB3EC 801EA67C 24040010 */  li    $a0, 16
/* 1DB3F0 801EA680 000A5880 */  sll   $t3, $t2, 2
/* 1DB3F4 801EA684 002B0821 */  addu  $at, $at, $t3
/* 1DB3F8 801EA688 0C002DAF */  jal   finish_current_thread
/* 1DB3FC 801EA68C AC29DFD0 */ sw $t1, %lo(D_800DDFD0)($at)
/* 1DB400 801EA690 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DB404 801EA694 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DB408 801EA698 44802000 */  mtc1  $zero, $f4
/* 1DB40C 801EA69C 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 1DB410 801EA6A0 8C4C0000 */  lw    $t4, ($v0)
/* 1DB414 801EA6A4 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 1DB418 801EA6A8 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DB41C 801EA6AC 000C6880 */  sll   $t5, $t4, 2
/* 1DB420 801EA6B0 008D7021 */  addu  $t6, $a0, $t5
/* 1DB424 801EA6B4 E5C40000 */  swc1  $f4, ($t6)
/* 1DB428 801EA6B8 8C430000 */  lw    $v1, ($v0)
/* 1DB42C 801EA6BC 24080001 */  li    $t0, 1
/* 1DB430 801EA6C0 00031880 */  sll   $v1, $v1, 2
/* 1DB434 801EA6C4 00837821 */  addu  $t7, $a0, $v1
/* 1DB438 801EA6C8 C5E60000 */  lwc1  $f6, ($t7)
/* 1DB43C 801EA6CC 00230821 */  addu  $at, $at, $v1
/* 1DB440 801EA6D0 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 1DB444 801EA6D4 8C590000 */  lw    $t9, ($v0)
/* 1DB448 801EA6D8 3C01801F */  lui   $at, %hi(D_801F4B6C_ovl10) # $at, 0x801f
/* 1DB44C 801EA6DC C4284B6C */  lwc1  $f8, %lo(D_801F4B6C_ovl10)($at)
/* 1DB450 801EA6E0 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1DB454 801EA6E4 0019C080 */  sll   $t8, $t9, 2
/* 1DB458 801EA6E8 00380821 */  addu  $at, $at, $t8
/* 1DB45C 801EA6EC E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
/* 1DB460 801EA6F0 8C4A0000 */  lw    $t2, ($v0)
/* 1DB464 801EA6F4 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DB468 801EA6F8 000A4880 */  sll   $t1, $t2, 2
/* 1DB46C 801EA6FC 00290821 */  addu  $at, $at, $t1
/* 1DB470 801EA700 0C02BE85 */  jal   func_800AFA14
/* 1DB474 801EA704 AC289E20 */ sw $t0, %lo(D_800E9E20)($at)
/* 1DB478 801EA708 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DB47C 801EA70C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DB480 801EA710 03E00008 */  jr    $ra
/* 1DB484 801EA714 00000000 */   nop   
.type func_801EA630_ovl10, @function
.size func_801EA630_ovl10, . - func_801EA630_ovl10
