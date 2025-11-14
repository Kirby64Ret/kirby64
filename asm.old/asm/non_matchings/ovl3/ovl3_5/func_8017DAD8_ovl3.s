glabel func_8017DAD8_ovl3
/* 0DE518 8017DAD8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0DE51C 8017DADC AFB00018 */  sw    $s0, 0x18($sp)
/* 0DE520 8017DAE0 44866000 */  mtc1  $a2, $f12
/* 0DE524 8017DAE4 00808025 */  move  $s0, $a0
/* 0DE528 8017DAE8 14A0002E */  bnez  $a1, .L8017DBA4_ovl3
/* 0DE52C 8017DAEC AFBF001C */   sw    $ra, 0x1c($sp)
/* 0DE530 8017DAF0 44802000 */  mtc1  $zero, $f4
/* 0DE534 8017DAF4 00000000 */  nop   
/* 0DE538 8017DAF8 46046032 */  c.eq.s $f12, $f4
/* 0DE53C 8017DAFC 00000000 */  nop   
/* 0DE540 8017DB00 45030029 */  bc1tl .L8017DBA8_ovl3
/* 0DE544 8017DB04 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0DE548 8017DB08 0C058CAE */  jal   func_801632B8_ovl3
/* 0DE54C 8017DB0C 24040003 */   li    $a0, 3
/* 0DE550 8017DB10 00027080 */  sll   $t6, $v0, 2
/* 0DE554 8017DB14 3C01800E */ lui $at, %hi(D_800E1D10)
/* 0DE558 8017DB18 002E0821 */  addu  $at, $at, $t6
/* 0DE55C 8017DB1C AC301D10 */ sw $s0, %lo(D_800E1D10)($at)
/* 0DE560 8017DB20 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0DE564 8017DB24 AFA20024 */  sw    $v0, 0x24($sp)
/* 0DE568 8017DB28 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
.L8017DB2C_ovl3:
/* 0DE56C 8017DB2C 0C006291 */  jal   random_soft_s32_range
/* 0DE570 8017DB30 24040005 */   li    $a0, 5
/* 0DE574 8017DB34 8E0F003C */  lw    $t7, 0x3c($s0)
/* 0DE578 8017DB38 104FFFFC */  beq   $v0, $t7, .L8017DB2C_ovl3
/* 0DE57C 8017DB3C 00000000 */   nop   
/* 0DE580 8017DB40 8FA30024 */  lw    $v1, 0x24($sp)
/* 0DE584 8017DB44 3C018013 */  lui   $at, %hi(D_8012E7FC) # $at, 0x8013
/* 0DE588 8017DB48 AC22E7FC */  sw    $v0, %lo(D_8012E7FC)($at)
/* 0DE58C 8017DB4C 8E18003C */  lw    $t8, 0x3c($s0)
/* 0DE590 8017DB50 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0DE594 8017DB54 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0DE598 8017DB58 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 0DE59C 8017DB5C 00031880 */  sll   $v1, $v1, 2
/* 0DE5A0 8017DB60 00230821 */  addu  $at, $at, $v1
/* 0DE5A4 8017DB64 AC38C2E0 */ sw $t8, %lo(D_800EC2E0)($at)
/* 0DE5A8 8017DB68 8C990000 */  lw    $t9, ($a0)
/* 0DE5AC 8017DB6C 3C06800F */  lui   $a2, %hi(D_800EA8A0) # $a2, 0x800f
/* 0DE5B0 8017DB70 24C6A8A0 */  addiu $a2, %lo(D_800EA8A0) # addiu $a2, $a2, -0x5760
/* 0DE5B4 8017DB74 00194080 */  sll   $t0, $t9, 2
/* 0DE5B8 8017DB78 00C84821 */  addu  $t1, $a2, $t0
/* 0DE5BC 8017DB7C C5260000 */  lwc1  $f6, ($t1)
/* 0DE5C0 8017DB80 3C01800F */ lui $at, %hi(D_800EC660)
/* 0DE5C4 8017DB84 00230821 */  addu  $at, $at, $v1
/* 0DE5C8 8017DB88 E426C660 */ swc1 $f6, %lo(D_800EC660)($at)
/* 0DE5CC 8017DB8C 8C8A0000 */  lw    $t2, ($a0)
/* 0DE5D0 8017DB90 000A5880 */  sll   $t3, $t2, 2
/* 0DE5D4 8017DB94 00CB2821 */  addu  $a1, $a2, $t3
/* 0DE5D8 8017DB98 C4A80000 */  lwc1  $f8, ($a1)
/* 0DE5DC 8017DB9C 46004287 */  neg.s $f10, $f8
/* 0DE5E0 8017DBA0 E4AA0000 */  swc1  $f10, ($a1)
.L8017DBA4_ovl3:
/* 0DE5E4 8017DBA4 8FBF001C */  lw    $ra, 0x1c($sp)
.L8017DBA8_ovl3:
/* 0DE5E8 8017DBA8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0DE5EC 8017DBAC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0DE5F0 8017DBB0 03E00008 */  jr    $ra
/* 0DE5F4 8017DBB4 00000000 */   nop   
.type func_8017DAD8_ovl3, @function
.size func_8017DAD8_ovl3, . - func_8017DAD8_ovl3
