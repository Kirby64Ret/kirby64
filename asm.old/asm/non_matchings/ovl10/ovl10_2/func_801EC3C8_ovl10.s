glabel func_801EC3C8_ovl10
/* 1DD138 801EC3C8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1DD13C 801EC3CC AFB30020 */  sw    $s3, 0x20($sp)
/* 1DD140 801EC3D0 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1DD144 801EC3D4 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1DD148 801EC3D8 8E6E0000 */  lw    $t6, ($s3)
/* 1DD14C 801EC3DC AFBF0034 */  sw    $ra, 0x34($sp)
/* 1DD150 801EC3E0 AFB70030 */  sw    $s7, 0x30($sp)
/* 1DD154 801EC3E4 AFB6002C */  sw    $s6, 0x2c($sp)
/* 1DD158 801EC3E8 AFB50028 */  sw    $s5, 0x28($sp)
/* 1DD15C 801EC3EC AFB40024 */  sw    $s4, 0x24($sp)
/* 1DD160 801EC3F0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 1DD164 801EC3F4 AFB10018 */  sw    $s1, 0x18($sp)
/* 1DD168 801EC3F8 AFB00014 */  sw    $s0, 0x14($sp)
/* 1DD16C 801EC3FC AFA40038 */  sw    $a0, 0x38($sp)
/* 1DD170 801EC400 8DD00000 */  lw    $s0, ($t6)
/* 1DD174 801EC404 3C11800E */ lui $s1, %hi(D_800E1B50)
/* 1DD178 801EC408 3C12801F */  lui   $s2, %hi(D_801EC4CC) # $s2, 0x801f
/* 1DD17C 801EC40C 00108080 */  sll   $s0, $s0, 2
/* 1DD180 801EC410 02308821 */  addu  $s1, $s1, $s0
/* 1DD184 801EC414 3C14800F */  lui   $s4, %hi(D_800E9AA0) # $s4, 0x800f
/* 1DD188 801EC418 3C15800E */  lui   $s5, %hi(D_800DF150) # $s5, 0x800e
/* 1DD18C 801EC41C 3C16800E */  lui   $s6, %hi(gEntityVtableIndexArray) # $s6, 0x800e
/* 1DD190 801EC420 3C17801F */  lui   $s7, %hi(D_801F45E4_ovl10) # $s7, 0x801f
/* 1DD194 801EC424 8E311B50 */ lw $s1, %lo(D_800E1B50)($s1)
/* 1DD198 801EC428 26F745E4 */  addiu $s7, %lo(D_801F45E4_ovl10) # addiu $s7, $s7, 0x45e4
/* 1DD19C 801EC42C 26D6DC50 */  addiu $s6, %lo(gEntityVtableIndexArray) # addiu $s6, $s6, -0x23b0
/* 1DD1A0 801EC430 26B5F150 */  addiu $s5, %lo(D_800DF150) # addiu $s5, $s5, -0xeb0
/* 1DD1A4 801EC434 26949AA0 */  addiu $s4, %lo(D_800E9AA0) # addiu $s4, $s4, -0x6560
/* 1DD1A8 801EC438 2652C4CC */  addiu $s2, %lo(D_801EC4CC) # addiu $s2, $s2, -0x3b34
.L801EC43C_ovl10:
/* 1DD1AC 801EC43C 02907821 */  addu  $t7, $s4, $s0
/* 1DD1B0 801EC440 ADE00000 */  sw    $zero, ($t7)
/* 1DD1B4 801EC444 8E380088 */  lw    $t8, 0x88($s1)
/* 1DD1B8 801EC448 2405000F */  li    $a1, 15
/* 1DD1BC 801EC44C 02E03025 */  move  $a2, $s7
/* 1DD1C0 801EC450 8F190014 */  lw    $t9, 0x14($t8)
/* 1DD1C4 801EC454 AE39008C */  sw    $t9, 0x8c($s1)
/* 1DD1C8 801EC458 8E620000 */  lw    $v0, ($s3)
/* 1DD1CC 801EC45C 8C480000 */  lw    $t0, ($v0)
/* 1DD1D0 801EC460 00084880 */  sll   $t1, $t0, 2
/* 1DD1D4 801EC464 02A95021 */  addu  $t2, $s5, $t1
/* 1DD1D8 801EC468 AD520000 */  sw    $s2, ($t2)
/* 1DD1DC 801EC46C 8C4B0000 */  lw    $t3, ($v0)
/* 1DD1E0 801EC470 000B6080 */  sll   $t4, $t3, 2
/* 1DD1E4 801EC474 02CC6821 */  addu  $t5, $s6, $t4
/* 1DD1E8 801EC478 0C02911F */  jal   call_virtual_function
/* 1DD1EC 801EC47C 8DA40000 */   lw    $a0, ($t5)
/* 1DD1F0 801EC480 8E6E0000 */  lw    $t6, ($s3)
/* 1DD1F4 801EC484 8DD00000 */  lw    $s0, ($t6)
/* 1DD1F8 801EC488 1000FFEC */  b     .L801EC43C_ovl10
/* 1DD1FC 801EC48C 00108080 */   sll   $s0, $s0, 2
/* 1DD200 801EC490 00000000 */  nop   
/* 1DD204 801EC494 00000000 */  nop   
/* 1DD208 801EC498 00000000 */  nop   
/* 1DD20C 801EC49C 00000000 */  nop   
/* 1DD210 801EC4A0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1DD214 801EC4A4 8FB00014 */  lw    $s0, 0x14($sp)
/* 1DD218 801EC4A8 8FB10018 */  lw    $s1, 0x18($sp)
/* 1DD21C 801EC4AC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 1DD220 801EC4B0 8FB30020 */  lw    $s3, 0x20($sp)
/* 1DD224 801EC4B4 8FB40024 */  lw    $s4, 0x24($sp)
/* 1DD228 801EC4B8 8FB50028 */  lw    $s5, 0x28($sp)
/* 1DD22C 801EC4BC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 1DD230 801EC4C0 8FB70030 */  lw    $s7, 0x30($sp)
/* 1DD234 801EC4C4 03E00008 */  jr    $ra
/* 1DD238 801EC4C8 27BD0038 */   addiu $sp, $sp, 0x38
.type func_801EC3C8_ovl10, @function
.size func_801EC3C8_ovl10, . - func_801EC3C8_ovl10
