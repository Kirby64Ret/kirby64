glabel func_800FF64C
/* 0880BC 800FF64C 3C0A8013 */  lui   $t2, %hi(D_8012B9B0) # $t2, 0x8013
/* 0880C0 800FF650 254AB9B0 */  addiu $t2, %lo(D_8012B9B0) # addiu $t2, $t2, -0x4650
/* 0880C4 800FF654 8D4E0000 */  lw    $t6, ($t2)
/* 0880C8 800FF658 00803025 */  move  $a2, $a0
/* 0880CC 800FF65C 3C048013 */  lui   $a0, %hi(D_8012B9B8) # $a0, 0x8013
/* 0880D0 800FF660 11C0002C */  beqz  $t6, .L800FF714_ovl2
/* 0880D4 800FF664 00001025 */   move  $v0, $zero
/* 0880D8 800FF668 3C0C800D */  lui   $t4, %hi(D_800D478C) # $t4, 0x800d
/* 0880DC 800FF66C 3C0B8013 */  lui   $t3, %hi(D_8012BBF8) # $t3, 0x8013
/* 0880E0 800FF670 256BBBF8 */  addiu $t3, %lo(D_8012BBF8) # addiu $t3, $t3, -0x4408
/* 0880E4 800FF674 258C478C */  addiu $t4, %lo(D_800D478C) # addiu $t4, $t4, 0x478c
/* 0880E8 800FF678 2484B9B8 */  addiu $a0, %lo(D_8012B9B8) # addiu $a0, $a0, -0x4648
/* 0880EC 800FF67C 240D000C */  li    $t5, 12
/* 0880F0 800FF680 94850008 */  lhu   $a1, 8($a0)
.L800FF684_ovl2:
/* 0880F4 800FF684 30AF00C0 */  andi  $t7, $a1, 0xc0
/* 0880F8 800FF688 51E0001D */  beql  $t7, $zero, .L800FF700_ovl2
/* 0880FC 800FF68C 8D4F0000 */   lw    $t7, ($t2)
/* 088100 800FF690 9498000A */  lhu   $t8, 0xa($a0)
/* 088104 800FF694 0002C900 */  sll   $t9, $v0, 4
/* 088108 800FF698 01797021 */  addu  $t6, $t3, $t9
/* 08810C 800FF69C 54D80018 */  bnel  $a2, $t8, .L800FF700_ovl2
/* 088110 800FF6A0 8D4F0000 */   lw    $t7, ($t2)
/* 088114 800FF6A4 8DC30000 */  lw    $v1, ($t6)
/* 088118 800FF6A8 50600015 */  beql  $v1, $zero, .L800FF700_ovl2
/* 08811C 800FF6AC 8D4F0000 */   lw    $t7, ($t2)
/* 088120 800FF6B0 00CD0019 */  multu $a2, $t5
/* 088124 800FF6B4 00007812 */  mflo  $t7
/* 088128 800FF6B8 018F3821 */  addu  $a3, $t4, $t7
/* 08812C 800FF6BC 90F80000 */  lbu   $t8, ($a3)
/* 088130 800FF6C0 30AF0040 */  andi  $t7, $a1, 0x40
/* 088134 800FF6C4 24E90002 */  addiu $t1, $a3, 2
/* 088138 800FF6C8 A0780014 */  sb    $t8, 0x14($v1)
/* 08813C 800FF6CC 90F90001 */  lbu   $t9, 1($a3)
/* 088140 800FF6D0 A0790015 */  sb    $t9, 0x15($v1)
/* 088144 800FF6D4 90EE0002 */  lbu   $t6, 2($a3)
/* 088148 800FF6D8 11E00008 */  beqz  $t7, .L800FF6FC_ovl2
/* 08814C 800FF6DC A06E0016 */   sb    $t6, 0x16($v1)
/* 088150 800FF6E0 91380001 */  lbu   $t8, 1($t1)
/* 088154 800FF6E4 25280003 */  addiu $t0, $t1, 3
/* 088158 800FF6E8 A0780018 */  sb    $t8, 0x18($v1)
/* 08815C 800FF6EC 91390002 */  lbu   $t9, 2($t1)
/* 088160 800FF6F0 A0790019 */  sb    $t9, 0x19($v1)
/* 088164 800FF6F4 910E0000 */  lbu   $t6, ($t0)
/* 088168 800FF6F8 A06E001A */  sb    $t6, 0x1a($v1)
.L800FF6FC_ovl2:
/* 08816C 800FF6FC 8D4F0000 */  lw    $t7, ($t2)
.L800FF700_ovl2:
/* 088170 800FF700 24420001 */  addiu $v0, $v0, 1
/* 088174 800FF704 24840030 */  addiu $a0, $a0, 0x30
/* 088178 800FF708 004F082B */  sltu  $at, $v0, $t7
/* 08817C 800FF70C 5420FFDD */  bnezl $at, .L800FF684_ovl2
/* 088180 800FF710 94850008 */   lhu   $a1, 8($a0)
.L800FF714_ovl2:
/* 088184 800FF714 03E00008 */  jr    $ra
/* 088188 800FF718 00000000 */   nop   
