glabel func_801ED208_ovl10
/* 1DDF78 801ED208 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DDF7C 801ED20C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 1DDF80 801ED210 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DDF84 801ED214 44816000 */  mtc1  $at, $f12
/* 1DDF88 801ED218 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DDF8C 801ED21C 0C067534 */  jal   func_8019D4D0_ovl10
/* 1DDF90 801ED220 24050008 */   li    $a1, 8
/* 1DDF94 801ED224 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1DDF98 801ED228 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1DDF9C 801ED22C 3C01800E */ lui $at, %hi(D_800E3210)
/* 1DDFA0 801ED230 44802000 */  mtc1  $zero, $f4
/* 1DDFA4 801ED234 8C620000 */  lw    $v0, ($v1)
/* 1DDFA8 801ED238 3C0E800F */ lui $t6, %hi(D_800E8920)
/* 1DDFAC 801ED23C 00021080 */  sll   $v0, $v0, 2
/* 1DDFB0 801ED240 00220821 */  addu  $at, $at, $v0
/* 1DDFB4 801ED244 C4263210 */ lwc1 $f6, %lo(D_800E3210)($at)
/* 1DDFB8 801ED248 01C27021 */  addu  $t6, $t6, $v0
/* 1DDFBC 801ED24C 46062032 */  c.eq.s $f4, $f6
/* 1DDFC0 801ED250 00000000 */  nop   
/* 1DDFC4 801ED254 4503001A */  bc1tl .L801ED2C0_ovl10
/* 1DDFC8 801ED258 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DDFCC 801ED25C 8DCE8920 */ lw $t6, %lo(D_800E8920)($t6)
/* 1DDFD0 801ED260 24010001 */  li    $at, 1
/* 1DDFD4 801ED264 3C0F800F */ lui $t7, %hi(D_800E9C60)
/* 1DDFD8 801ED268 15C10014 */  bne   $t6, $at, .L801ED2BC_ovl10
/* 1DDFDC 801ED26C 01E27821 */   addu  $t7, $t7, $v0
/* 1DDFE0 801ED270 8DEF9C60 */ lw $t7, %lo(D_800E9C60)($t7)
/* 1DDFE4 801ED274 24190007 */  li    $t9, 7
/* 1DDFE8 801ED278 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DDFEC 801ED27C 11E00006 */  beqz  $t7, .L801ED298_ovl10
/* 1DDFF0 801ED280 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DDFF4 801ED284 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DDFF8 801ED288 00220821 */  addu  $at, $at, $v0
/* 1DDFFC 801ED28C 24180005 */  li    $t8, 5
/* 1DE000 801ED290 10000003 */  b     .L801ED2A0_ovl10
/* 1DE004 801ED294 AC38DC50 */ sw $t8, %lo(gEntityVtableIndexArray)($at)
.L801ED298_ovl10:
/* 1DE008 801ED298 00220821 */  addu  $at, $at, $v0
/* 1DE00C 801ED29C AC39DC50 */  sw    $t9, -0x23b0($at)
.L801ED2A0_ovl10:
/* 1DE010 801ED2A0 8C680000 */  lw    $t0, ($v1)
/* 1DE014 801ED2A4 3C05801F */  lui   $a1, %hi(D_801EC3C8) # $a1, 0x801f
/* 1DE018 801ED2A8 24A5C3C8 */  addiu $a1, %lo(D_801EC3C8) # addiu $a1, $a1, -0x3c38
/* 1DE01C 801ED2AC 00084880 */  sll   $t1, $t0, 2
/* 1DE020 801ED2B0 00892021 */  addu  $a0, $a0, $t1
/* 1DE024 801ED2B4 0C02C7B2 */  jal   assign_new_process_entry
/* 1DE028 801ED2B8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801ED2BC_ovl10:
/* 1DE02C 801ED2BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801ED2C0_ovl10:
/* 1DE030 801ED2C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DE034 801ED2C4 03E00008 */  jr    $ra
/* 1DE038 801ED2C8 00000000 */   nop   
.type func_801ED208_ovl10, @function
.size func_801ED208_ovl10, . - func_801ED208_ovl10
