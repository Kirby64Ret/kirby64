glabel func_801E50A4_ovl10
/* 1D5E14 801E50A4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D5E18 801E50A8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D5E1C 801E50AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D5E20 801E50B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D5E24 801E50B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D5E28 801E50B8 8C620000 */  lw    $v0, ($v1)
/* 1D5E2C 801E50BC 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D5E30 801E50C0 44801000 */  mtc1  $zero, $f2
/* 1D5E34 801E50C4 00021080 */  sll   $v0, $v0, 2
/* 1D5E38 801E50C8 00220821 */  addu  $at, $at, $v0
/* 1D5E3C 801E50CC C4243750 */ lwc1 $f4, %lo(D_800E3750)($at)
/* 1D5E40 801E50D0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D5E44 801E50D4 00220821 */  addu  $at, $at, $v0
/* 1D5E48 801E50D8 46041032 */  c.eq.s $f2, $f4
/* 1D5E4C 801E50DC 3C0F800F */ lui $t7, %hi(D_800E9E20)
/* 1D5E50 801E50E0 24180008 */  li    $t8, 8
/* 1D5E54 801E50E4 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D5E58 801E50E8 45030015 */  bc1tl .L801E5140_ovl10
/* 1D5E5C 801E50EC 01E27821 */   addu  $t7, $t7, $v0
/* 1D5E60 801E50F0 C4203210 */ lwc1 $f0, %lo(D_800E3210)($at)
/* 1D5E64 801E50F4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1D5E68 801E50F8 44813000 */  mtc1  $at, $f6
/* 1D5E6C 801E50FC 4602003C */  c.lt.s $f0, $f2
/* 1D5E70 801E5100 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D5E74 801E5104 00220821 */  addu  $at, $at, $v0
/* 1D5E78 801E5108 240E0001 */  li    $t6, 1
/* 1D5E7C 801E510C 45020004 */  bc1fl .L801E5120_ovl10
/* 1D5E80 801E5110 46000086 */   mov.s $f2, $f0
/* 1D5E84 801E5114 10000002 */  b     .L801E5120_ovl10
/* 1D5E88 801E5118 46000087 */   neg.s $f2, $f0
/* 1D5E8C 801E511C 46000086 */  mov.s $f2, $f0
.L801E5120_ovl10:
/* 1D5E90 801E5120 4606103C */  c.lt.s $f2, $f6
/* 1D5E94 801E5124 00000000 */  nop   
/* 1D5E98 801E5128 45020005 */  bc1fl .L801E5140_ovl10
/* 1D5E9C 801E512C 01E27821 */   addu  $t7, $t7, $v0
/* 1D5EA0 801E5130 AC2E9E20 */ sw $t6, %lo(D_800E9E20)($at)
/* 1D5EA4 801E5134 8C620000 */  lw    $v0, ($v1)
/* 1D5EA8 801E5138 00021080 */  sll   $v0, $v0, 2
/* 1D5EAC 801E513C 01E27821 */  addu  $t7, $t7, $v0
.L801E5140_ovl10:
/* 1D5EB0 801E5140 8DEF9E20 */ lw $t7, %lo(D_800E9E20)($t7)
/* 1D5EB4 801E5144 24010002 */  li    $at, 2
/* 1D5EB8 801E5148 15E1000A */  bne   $t7, $at, .L801E5174_ovl10
/* 1D5EBC 801E514C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D5EC0 801E5150 00220821 */  addu  $at, $at, $v0
/* 1D5EC4 801E5154 AC38DC50 */ sw $t8, %lo(gEntityVtableIndexArray)($at)
/* 1D5EC8 801E5158 8C790000 */  lw    $t9, ($v1)
/* 1D5ECC 801E515C 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D5ED0 801E5160 24A53BE4 */  addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
/* 1D5ED4 801E5164 00194080 */  sll   $t0, $t9, 2
/* 1D5ED8 801E5168 00882021 */  addu  $a0, $a0, $t0
/* 1D5EDC 801E516C 0C02C7B2 */  jal   assign_new_process_entry
/* 1D5EE0 801E5170 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E5174_ovl10:
/* 1D5EE4 801E5174 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D5EE8 801E5178 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D5EEC 801E517C 03E00008 */  jr    $ra
/* 1D5EF0 801E5180 00000000 */   nop   
.type func_801E50A4_ovl10, @function
.size func_801E50A4_ovl10, . - func_801E50A4_ovl10
