glabel func_801DF3DC_ovl11
/* 1E9C9C 801DF3DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E9CA0 801DF3E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E9CA4 801DF3E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E9CA8 801DF3E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E9CAC 801DF3EC AFA40018 */  sw    $a0, 0x18($sp)
/* 1E9CB0 801DF3F0 8C430000 */  lw    $v1, ($v0)
/* 1E9CB4 801DF3F4 3C0E800F */  lui   $t6, %hi(D_800E9720) # $t6, 0x800f
/* 1E9CB8 801DF3F8 25CE9720 */  addiu $t6, %lo(D_800E9720) # addiu $t6, $t6, -0x68e0
/* 1E9CBC 801DF3FC 00031880 */  sll   $v1, $v1, 2
/* 1E9CC0 801DF400 006E2021 */  addu  $a0, $v1, $t6
/* 1E9CC4 801DF404 8C850000 */  lw    $a1, ($a0)
/* 1E9CC8 801DF408 240F0002 */  li    $t7, 2
/* 1E9CCC 801DF40C 3C01800D */ lui $at, %hi(D_800D70D8)
/* 1E9CD0 801DF410 14A0000E */  bnez  $a1, .L801DF44C_ovl11
/* 1E9CD4 801DF414 24A8FFFF */   addiu $t0, $a1, -1
/* 1E9CD8 801DF418 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E9CDC 801DF41C 00230821 */  addu  $at, $at, $v1
/* 1E9CE0 801DF420 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E9CE4 801DF424 8C580000 */  lw    $t8, ($v0)
/* 1E9CE8 801DF428 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E9CEC 801DF42C 3C05801E */  lui   $a1, %hi(D_801DEF9C) # $a1, 0x801e
/* 1E9CF0 801DF430 0018C880 */  sll   $t9, $t8, 2
/* 1E9CF4 801DF434 00992021 */  addu  $a0, $a0, $t9
/* 1E9CF8 801DF438 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E9CFC 801DF43C 0C02C7B2 */  jal   assign_new_process_entry
/* 1E9D00 801DF440 24A5EF9C */   addiu $a1, %lo(D_801DEF9C) # addiu $a1, $a1, -0x1064
/* 1E9D04 801DF444 10000017 */  b     .L801DF4A4_ovl11
/* 1E9D08 801DF448 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DF44C_ovl11:
/* 1E9D0C 801DF44C AC880000 */  sw    $t0, ($a0)
/* 1E9D10 801DF450 C42670D8 */  lwc1  $f6, %lo(D_800D70D8)($at)
/* 1E9D14 801DF454 44802000 */  mtc1  $zero, $f4
/* 1E9D18 801DF458 24090002 */  li    $t1, 2
/* 1E9D1C 801DF45C 4604303E */  c.le.s $f6, $f4
/* 1E9D20 801DF460 00000000 */  nop   
/* 1E9D24 801DF464 4502000F */  bc1fl .L801DF4A4_ovl11
/* 1E9D28 801DF468 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E9D2C 801DF46C 8C4A0000 */  lw    $t2, ($v0)
/* 1E9D30 801DF470 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E9D34 801DF474 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E9D38 801DF478 000A5880 */  sll   $t3, $t2, 2
/* 1E9D3C 801DF47C 002B0821 */  addu  $at, $at, $t3
/* 1E9D40 801DF480 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
/* 1E9D44 801DF484 8C4C0000 */  lw    $t4, ($v0)
/* 1E9D48 801DF488 3C05801E */  lui   $a1, %hi(D_801DEF9C) # $a1, 0x801e
/* 1E9D4C 801DF48C 24A5EF9C */  addiu $a1, %lo(D_801DEF9C) # addiu $a1, $a1, -0x1064
/* 1E9D50 801DF490 000C6880 */  sll   $t5, $t4, 2
/* 1E9D54 801DF494 008D2021 */  addu  $a0, $a0, $t5
/* 1E9D58 801DF498 0C02C7B2 */  jal   assign_new_process_entry
/* 1E9D5C 801DF49C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E9D60 801DF4A0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DF4A4_ovl11:
/* 1E9D64 801DF4A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E9D68 801DF4A8 03E00008 */  jr    $ra
/* 1E9D6C 801DF4AC 00000000 */   nop   
.type func_801DF3DC_ovl11, @function
.size func_801DF3DC_ovl11, . - func_801DF3DC_ovl11
