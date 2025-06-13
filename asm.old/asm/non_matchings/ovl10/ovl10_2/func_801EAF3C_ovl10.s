glabel func_801EAF3C_ovl10
/* 1DBCAC 801EAF3C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DBCB0 801EAF40 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DBCB4 801EAF44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DBCB8 801EAF48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DBCBC 801EAF4C AFA40018 */  sw    $a0, 0x18($sp)
/* 1DBCC0 801EAF50 8C620000 */  lw    $v0, ($v1)
/* 1DBCC4 801EAF54 3C01800E */ lui $at, %hi(D_800E3750)
/* 1DBCC8 801EAF58 44801000 */  mtc1  $zero, $f2
/* 1DBCCC 801EAF5C 00021080 */  sll   $v0, $v0, 2
/* 1DBCD0 801EAF60 00220821 */  addu  $at, $at, $v0
/* 1DBCD4 801EAF64 C4243750 */ lwc1 $f4, %lo(D_800E3750)($at)
/* 1DBCD8 801EAF68 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DBCDC 801EAF6C 00220821 */  addu  $at, $at, $v0
/* 1DBCE0 801EAF70 46041032 */  c.eq.s $f2, $f4
/* 1DBCE4 801EAF74 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1DBCE8 801EAF78 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DBCEC 801EAF7C 45030015 */  bc1tl .L801EAFD4_ovl10
/* 1DBCF0 801EAF80 01E27821 */   addu  $t7, $t7, $v0
/* 1DBCF4 801EAF84 C4203210 */ lwc1 $f0, %lo(D_800E3210)($at)
/* 1DBCF8 801EAF88 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1DBCFC 801EAF8C 44813000 */  mtc1  $at, $f6
/* 1DBD00 801EAF90 4602003C */  c.lt.s $f0, $f2
/* 1DBD04 801EAF94 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1DBD08 801EAF98 00220821 */  addu  $at, $at, $v0
/* 1DBD0C 801EAF9C 240E0001 */  li    $t6, 1
/* 1DBD10 801EAFA0 45020004 */  bc1fl .L801EAFB4_ovl10
/* 1DBD14 801EAFA4 46000086 */   mov.s $f2, $f0
/* 1DBD18 801EAFA8 10000002 */  b     .L801EAFB4_ovl10
/* 1DBD1C 801EAFAC 46000087 */   neg.s $f2, $f0
/* 1DBD20 801EAFB0 46000086 */  mov.s $f2, $f0
.L801EAFB4_ovl10:
/* 1DBD24 801EAFB4 4606103C */  c.lt.s $f2, $f6
/* 1DBD28 801EAFB8 00000000 */  nop   
/* 1DBD2C 801EAFBC 45020005 */  bc1fl .L801EAFD4_ovl10
/* 1DBD30 801EAFC0 01E27821 */   addu  $t7, $t7, $v0
/* 1DBD34 801EAFC4 AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
/* 1DBD38 801EAFC8 8C620000 */  lw    $v0, ($v1)
/* 1DBD3C 801EAFCC 00021080 */  sll   $v0, $v0, 2
/* 1DBD40 801EAFD0 01E27821 */  addu  $t7, $t7, $v0
.L801EAFD4_ovl10:
/* 1DBD44 801EAFD4 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1DBD48 801EAFD8 24060002 */  li    $a2, 2
/* 1DBD4C 801EAFDC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DBD50 801EAFE0 14CF0009 */  bne   $a2, $t7, .L801EB008_ovl10
/* 1DBD54 801EAFE4 00220821 */   addu  $at, $at, $v0
/* 1DBD58 801EAFE8 AC26DC50 */ sw $a2, %lo(gEntityVtableIndexArray)($at)
/* 1DBD5C 801EAFEC 8C780000 */  lw    $t8, ($v1)
/* 1DBD60 801EAFF0 3C05801F */  lui   $a1, %hi(D_801EA784) # $a1, 0x801f
/* 1DBD64 801EAFF4 24A5A784 */  addiu $a1, %lo(D_801EA784) # addiu $a1, $a1, -0x587c
/* 1DBD68 801EAFF8 0018C880 */  sll   $t9, $t8, 2
/* 1DBD6C 801EAFFC 00992021 */  addu  $a0, $a0, $t9
/* 1DBD70 801EB000 0C02C7B2 */  jal   assign_new_process_entry
/* 1DBD74 801EB004 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801EB008_ovl10:
/* 1DBD78 801EB008 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1DBD7C 801EB00C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DBD80 801EB010 03E00008 */  jr    $ra
/* 1DBD84 801EB014 00000000 */   nop   
.type func_801EAF3C_ovl10, @function
.size func_801EAF3C_ovl10, . - func_801EAF3C_ovl10
