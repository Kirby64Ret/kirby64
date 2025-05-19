glabel func_800FD570
/* 085FE0 800FD570 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 085FE4 800FD574 44866000 */  mtc1  $a2, $f12
/* 085FE8 800FD578 44877000 */  mtc1  $a3, $f14
/* 085FEC 800FD57C 00803025 */  move  $a2, $a0
/* 085FF0 800FD580 AFBF001C */  sw    $ra, 0x1c($sp)
/* 085FF4 800FD584 AFA40038 */  sw    $a0, 0x38($sp)
/* 085FF8 800FD588 10800009 */  beqz  $a0, .L800FD5B0_ovl2
/* 085FFC 800FD58C AFA5003C */   sw    $a1, 0x3c($sp)
/* 086000 800FD590 27A40028 */  addiu $a0, $sp, 0x28
/* 086004 800FD594 00C02825 */  move  $a1, $a2
/* 086008 800FD598 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 08600C 800FD59C 0C0291E5 */  jal   func_800A4794
/* 086010 800FD5A0 E7AE0044 */   swc1  $f14, 0x44($sp)
/* 086014 800FD5A4 C7AC0040 */  lwc1  $f12, 0x40($sp)
/* 086018 800FD5A8 10000015 */  b     .L800FD600_ovl2
/* 08601C 800FD5AC C7AE0044 */   lwc1  $f14, 0x44($sp)
.L800FD5B0_ovl2:
/* 086020 800FD5B0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 086024 800FD5B4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 086028 800FD5B8 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 08602C 800FD5BC 8C4E0000 */  lw    $t6, ($v0)
/* 086030 800FD5C0 000E7880 */  sll   $t7, $t6, 2
/* 086034 800FD5C4 002F0821 */  addu  $at, $at, $t7
/* 086038 800FD5C8 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 08603C 800FD5CC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 086040 800FD5D0 E7A40028 */  swc1  $f4, 0x28($sp)
/* 086044 800FD5D4 8C580000 */  lw    $t8, ($v0)
/* 086048 800FD5D8 0018C880 */  sll   $t9, $t8, 2
/* 08604C 800FD5DC 00390821 */  addu  $at, $at, $t9
/* 086050 800FD5E0 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 086054 800FD5E4 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 086058 800FD5E8 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 08605C 800FD5EC 8C480000 */  lw    $t0, ($v0)
/* 086060 800FD5F0 00084880 */  sll   $t1, $t0, 2
/* 086064 800FD5F4 00290821 */  addu  $at, $at, $t1
/* 086068 800FD5F8 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 08606C 800FD5FC E7A80030 */  swc1  $f8, 0x30($sp)
.L800FD600_ovl2:
/* 086070 800FD600 8FAA003C */  lw    $t2, 0x3c($sp)
/* 086074 800FD604 3C0C8012 */  lui   $t4, %hi(D_801245C4) # $t4, 0x8012
/* 086078 800FD608 258C45C4 */  addiu $t4, %lo(D_801245C4) # addiu $t4, $t4, 0x45c4
/* 08607C 800FD60C 000A5880 */  sll   $t3, $t2, 2
/* 086080 800FD610 016A5823 */  subu  $t3, $t3, $t2
/* 086084 800FD614 000B5880 */  sll   $t3, $t3, 2
/* 086088 800FD618 016C1021 */  addu  $v0, $t3, $t4
/* 08608C 800FD61C 8C4D0000 */  lw    $t5, ($v0)
/* 086090 800FD620 3C0F8012 */  lui   $t7, %hi(D_80124630) # $t7, 0x8012
/* 086094 800FD624 00002025 */  move  $a0, $zero
/* 086098 800FD628 11A00025 */  beqz  $t5, .L800FD6C0_ovl2
/* 08609C 800FD62C 25EF4630 */   addiu $t7, %lo(D_80124630) # addiu $t7, $t7, 0x4630
/* 0860A0 800FD630 E7AC0040 */  swc1  $f12, 0x40($sp)
/* 0860A4 800FD634 0C03F675 */  jal   func_800FD9D4
/* 0860A8 800FD638 E7AE0044 */   swc1  $f14, 0x44($sp)
/* 0860AC 800FD63C 2401FFFF */  li    $at, -1
/* 0860B0 800FD640 C7AC0040 */  lwc1  $f12, 0x40($sp)
/* 0860B4 800FD644 C7AE0044 */  lwc1  $f14, 0x44($sp)
/* 0860B8 800FD648 14410006 */  bne   $v0, $at, .L800FD664_ovl2
/* 0860BC 800FD64C 00402025 */   move  $a0, $v0
/* 0860C0 800FD650 3C048013 */  lui   $a0, %hi(D_801288E0) # $a0, 0x8013
/* 0860C4 800FD654 0C02909C */  jal   print_error_stub
/* 0860C8 800FD658 248488E0 */   addiu $a0, %lo(D_801288E0) # addiu $a0, $a0, -0x7720
/* 0860CC 800FD65C 10000039 */  b     .L800FD744_ovl2
/* 0860D0 800FD660 00001025 */   move  $v0, $zero
.L800FD664_ovl2:
/* 0860D4 800FD664 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 0860D8 800FD668 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0860DC 800FD66C 00041880 */  sll   $v1, $a0, 2
/* 0860E0 800FD670 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 0860E4 800FD674 460C5400 */  add.s $f16, $f10, $f12
/* 0860E8 800FD678 C7B2002C */  lwc1  $f18, 0x2c($sp)
/* 0860EC 800FD67C 00230821 */  addu  $at, $at, $v1
/* 0860F0 800FD680 AC2EC2E0 */ sw $t6, %lo(D_800EC2E0)($at)
/* 0860F4 800FD684 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 0860F8 800FD688 460E9100 */  add.s $f4, $f18, $f14
/* 0860FC 800FD68C 00230821 */  addu  $at, $at, $v1
/* 086100 800FD690 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 086104 800FD694 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 086108 800FD698 E43025D0 */ swc1 $f16, %lo(gEntitiesNextPosXArray)($at)
/* 08610C 800FD69C 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 086110 800FD6A0 00230821 */  addu  $at, $at, $v1
/* 086114 800FD6A4 46083280 */  add.s $f10, $f6, $f8
/* 086118 800FD6A8 E4242790 */ swc1 $f4, %lo(gEntitiesNextPosYArray)($at)
/* 08611C 800FD6AC 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 086120 800FD6B0 00230821 */  addu  $at, $at, $v1
/* 086124 800FD6B4 E42A2950 */ swc1 $f10, %lo(gEntitiesNextPosZArray)($at)
/* 086128 800FD6B8 10000022 */  b     .L800FD744_ovl2
/* 08612C 800FD6BC 24020001 */   li    $v0, 1
.L800FD6C0_ovl2:
/* 086130 800FD6C0 504F0012 */  beql  $v0, $t7, .L800FD70C_ovl2
/* 086134 800FD6C4 C7B20028 */   lwc1  $f18, 0x28($sp)
/* 086138 800FD6C8 C7B20028 */  lwc1  $f18, 0x28($sp)
/* 08613C 800FD6CC C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 086140 800FD6D0 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 086144 800FD6D4 460C9480 */  add.s $f18, $f18, $f12
/* 086148 800FD6D8 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 08614C 800FD6DC 24040003 */  li    $a0, 3
/* 086150 800FD6E0 460E8400 */  add.s $f16, $f16, $f14
/* 086154 800FD6E4 44079000 */  mfc1  $a3, $f18
/* 086158 800FD6E8 24050002 */  li    $a1, 2
/* 08615C 800FD6EC 46085200 */  add.s $f8, $f10, $f8
/* 086160 800FD6F0 8C460004 */  lw    $a2, 4($v0)
/* 086164 800FD6F4 E7B00010 */  swc1  $f16, 0x10($sp)
/* 086168 800FD6F8 0C029FDD */  jal   func_800A7F74
/* 08616C 800FD6FC E7A80014 */   swc1  $f8, 0x14($sp)
/* 086170 800FD700 10000010 */  b     .L800FD744_ovl2
/* 086174 800FD704 24020001 */   li    $v0, 1
/* 086178 800FD708 C7B20028 */  lwc1  $f18, 0x28($sp)
.L800FD70C_ovl2:
/* 08617C 800FD70C C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 086180 800FD710 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 086184 800FD714 460C9480 */  add.s $f18, $f18, $f12
/* 086188 800FD718 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 08618C 800FD71C 00002025 */  move  $a0, $zero
/* 086190 800FD720 460E8400 */  add.s $f16, $f16, $f14
/* 086194 800FD724 44079000 */  mfc1  $a3, $f18
/* 086198 800FD728 24050002 */  li    $a1, 2
/* 08619C 800FD72C 46085200 */  add.s $f8, $f10, $f8
/* 0861A0 800FD730 8C460004 */  lw    $a2, 4($v0)
/* 0861A4 800FD734 E7B00010 */  swc1  $f16, 0x10($sp)
/* 0861A8 800FD738 0C029FDD */  jal   func_800A7F74
/* 0861AC 800FD73C E7A80014 */   swc1  $f8, 0x14($sp)
/* 0861B0 800FD740 24020001 */  li    $v0, 1
.L800FD744_ovl2:
/* 0861B4 800FD744 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0861B8 800FD748 27BD0038 */  addiu $sp, $sp, 0x38
/* 0861BC 800FD74C 03E00008 */  jr    $ra
/* 0861C0 800FD750 00000000 */   nop   
.type func_800FD570, @function
.size func_800FD570, . - func_800FD570
