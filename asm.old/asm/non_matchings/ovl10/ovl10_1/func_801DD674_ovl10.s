glabel func_801DD674_ovl10
/* 1CE3E4 801DD674 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1CE3E8 801DD678 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1CE3EC 801DD67C 0C0775D8 */  jal   func_801DD760_ovl10
/* 1CE3F0 801DD680 AFA40018 */   sw    $a0, 0x18($sp)
/* 1CE3F4 801DD684 44802000 */  mtc1  $zero, $f4
/* 1CE3F8 801DD688 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1CE3FC 801DD68C 46040032 */  c.eq.s $f0, $f4
/* 1CE400 801DD690 00000000 */  nop   
/* 1CE404 801DD694 45030009 */  bc1tl .L801DD6BC_ovl10
/* 1CE408 801DD698 3C014320 */   lui   $at, 0x4320
/* 1CE40C 801DD69C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1CE410 801DD6A0 3C01800F */ lui $at, %hi(D_800EA520)
/* 1CE414 801DD6A4 240E03E8 */  li    $t6, 1000
/* 1CE418 801DD6A8 8DF80000 */  lw    $t8, ($t7)
/* 1CE41C 801DD6AC 0018C880 */  sll   $t9, $t8, 2
/* 1CE420 801DD6B0 00390821 */  addu  $at, $at, $t9
/* 1CE424 801DD6B4 AC2EA520 */ sw $t6, %lo(D_800EA520)($at)
/* 1CE428 801DD6B8 3C014320 */  li    $at, 0x43200000 # 160.000000
.L801DD6BC_ovl10:
/* 1CE42C 801DD6BC 44816000 */  mtc1  $at, $f12
/* 1CE430 801DD6C0 0C0669FA */  jal   func_8019A7E8_ovl10
/* 1CE434 801DD6C4 00000000 */   nop   
/* 1CE438 801DD6C8 10400008 */  beqz  $v0, .L801DD6EC_ovl10
/* 1CE43C 801DD6CC 3C098005 */   lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1CE440 801DD6D0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1CE444 801DD6D4 3C01800F */ lui $at, %hi(D_800EA520)
/* 1CE448 801DD6D8 240803E8 */  li    $t0, 1000
/* 1CE44C 801DD6DC 8D2A0000 */  lw    $t2, ($t1)
/* 1CE450 801DD6E0 000A5880 */  sll   $t3, $t2, 2
/* 1CE454 801DD6E4 002B0821 */  addu  $at, $at, $t3
/* 1CE458 801DD6E8 AC28A520 */ sw $t0, %lo(D_800EA520)($at)
.L801DD6EC_ovl10:
/* 1CE45C 801DD6EC 0C06835D */  jal   func_801A0D74_ovl10
/* 1CE460 801DD6F0 8FA40018 */   lw    $a0, 0x18($sp)
/* 1CE464 801DD6F4 0C078A32 */  jal   func_801E28C8_ovl10
/* 1CE468 801DD6F8 00002025 */   move  $a0, $zero
/* 1CE46C 801DD6FC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1CE470 801DD700 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1CE474 801DD704 3C0C800F */ lui $t4, %hi(D_800E83E0)
/* 1CE478 801DD708 24010001 */  li    $at, 1
/* 1CE47C 801DD70C 8C660000 */  lw    $a2, ($v1)
/* 1CE480 801DD710 240D0009 */  li    $t5, 9
/* 1CE484 801DD714 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1CE488 801DD718 00063080 */  sll   $a2, $a2, 2
/* 1CE48C 801DD71C 01866021 */  addu  $t4, $t4, $a2
/* 1CE490 801DD720 8D8C83E0 */ lw $t4, %lo(D_800E83E0)($t4)
/* 1CE494 801DD724 1581000A */  bne   $t4, $at, .L801DD750_ovl10
/* 1CE498 801DD728 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CE49C 801DD72C 00260821 */  addu  $at, $at, $a2
/* 1CE4A0 801DD730 AC2DDC50 */ sw $t5, %lo(gEntityVtableIndexArray)($at)
/* 1CE4A4 801DD734 8C6F0000 */  lw    $t7, ($v1)
/* 1CE4A8 801DD738 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1CE4AC 801DD73C 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1CE4B0 801DD740 000FC080 */  sll   $t8, $t7, 2
/* 1CE4B4 801DD744 00982021 */  addu  $a0, $a0, $t8
/* 1CE4B8 801DD748 0C02C7B2 */  jal   assign_new_process_entry
/* 1CE4BC 801DD74C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DD750_ovl10:
/* 1CE4C0 801DD750 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1CE4C4 801DD754 27BD0018 */  addiu $sp, $sp, 0x18
/* 1CE4C8 801DD758 03E00008 */  jr    $ra
/* 1CE4CC 801DD75C 00000000 */   nop   
.type func_801DD674_ovl10, @function
.size func_801DD674_ovl10, . - func_801DD674_ovl10
