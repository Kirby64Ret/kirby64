glabel func_801E6298_ovl10
/* 1D7008 801E6298 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D700C 801E629C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D7010 801E62A0 AFA40000 */  sw    $a0, ($sp)
/* 1D7014 801E62A4 3C07800F */  lui   $a3, %hi(D_800EA360) # $a3, 0x800f
/* 1D7018 801E62A8 8C4E0000 */  lw    $t6, ($v0)
/* 1D701C 801E62AC 24E7A360 */  addiu $a3, %lo(D_800EA360) # addiu $a3, $a3, -0x5ca0
/* 1D7020 801E62B0 24190001 */  li    $t9, 1
/* 1D7024 801E62B4 000E7880 */  sll   $t7, $t6, 2
/* 1D7028 801E62B8 00EF2821 */  addu  $a1, $a3, $t7
/* 1D702C 801E62BC 8CB80000 */  lw    $t8, ($a1)
/* 1D7030 801E62C0 17000046 */  bnez  $t8, .L801E63DC_ovl10
/* 1D7034 801E62C4 00000000 */   nop   
/* 1D7038 801E62C8 ACB90000 */  sw    $t9, ($a1)
/* 1D703C 801E62CC 8C490000 */  lw    $t1, ($v0)
/* 1D7040 801E62D0 3C08800F */  lui   $t0, %hi(D_800EA520) # $t0, 0x800f
/* 1D7044 801E62D4 2508A520 */  addiu $t0, %lo(D_800EA520) # addiu $t0, $t0, -0x5ae0
/* 1D7048 801E62D8 00095080 */  sll   $t2, $t1, 2
/* 1D704C 801E62DC 010A5821 */  addu  $t3, $t0, $t2
/* 1D7050 801E62E0 8D6C0000 */  lw    $t4, ($t3)
/* 1D7054 801E62E4 3C01800F */ lui $at, %hi(D_800EB160)
/* 1D7058 801E62E8 3C05800E */ lui $a1, %hi(D_800E7880)
/* 1D705C 801E62EC 000C6880 */  sll   $t5, $t4, 2
/* 1D7060 801E62F0 00ED3021 */  addu  $a2, $a3, $t5
/* 1D7064 801E62F4 8CCE0000 */  lw    $t6, ($a2)
/* 1D7068 801E62F8 25CFFFFF */  addiu $t7, $t6, -1
/* 1D706C 801E62FC ACCF0000 */  sw    $t7, ($a2)
/* 1D7070 801E6300 8C430000 */  lw    $v1, ($v0)
/* 1D7074 801E6304 00032080 */  sll   $a0, $v1, 2
/* 1D7078 801E6308 00240821 */  addu  $at, $at, $a0
/* 1D707C 801E630C C424B160 */ lwc1 $f4, %lo(D_800DB160)($at)
/* 1D7080 801E6310 3C01800E */ lui $at, %hi(D_800E7B20)
/* 1D7084 801E6314 00240821 */  addu  $at, $at, $a0
/* 1D7088 801E6318 C4267B20 */ lwc1 $f6, %lo(D_800E7B20)($at)
/* 1D708C 801E631C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1D7090 801E6320 44814000 */  mtc1  $at, $f8
/* 1D7094 801E6324 46062001 */  sub.s $f0, $f4, $f6
/* 1D7098 801E6328 0104C021 */  addu  $t8, $t0, $a0
/* 1D709C 801E632C 00A32821 */  addu  $a1, $a1, $v1
/* 1D70A0 801E6330 4608003C */  c.lt.s $f0, $f8
/* 1D70A4 801E6334 00000000 */  nop   
/* 1D70A8 801E6338 45000002 */  bc1f  .L801E6344_ovl10
/* 1D70AC 801E633C 00000000 */   nop   
/* 1D70B0 801E6340 46000000 */  add.s $f0, $f0, $f0
.L801E6344_ovl10:
/* 1D70B4 801E6344 90A57880 */ lbu $a1, %lo(D_800E7880)($a1)
/* 1D70B8 801E6348 24010006 */  li    $at, 6
/* 1D70BC 801E634C 10A10003 */  beq   $a1, $at, .L801E635C_ovl10
/* 1D70C0 801E6350 24010007 */   li    $at, 7
/* 1D70C4 801E6354 54A1000C */  bnel  $a1, $at, .L801E6388_ovl10
/* 1D70C8 801E6358 01045021 */   addu  $t2, $t0, $a0
.L801E635C_ovl10:
/* 1D70CC 801E635C 8F190000 */  lw    $t9, ($t8)
/* 1D70D0 801E6360 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 1D70D4 801E6364 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 1D70D8 801E6368 00194880 */  sll   $t1, $t9, 2
/* 1D70DC 801E636C 00A91821 */  addu  $v1, $a1, $t1
/* 1D70E0 801E6370 C46A0000 */  lwc1  $f10, ($v1)
/* 1D70E4 801E6374 46005401 */  sub.s $f16, $f10, $f0
/* 1D70E8 801E6378 E4700000 */  swc1  $f16, ($v1)
/* 1D70EC 801E637C 8C440000 */  lw    $a0, ($v0)
/* 1D70F0 801E6380 00042080 */  sll   $a0, $a0, 2
/* 1D70F4 801E6384 01045021 */  addu  $t2, $t0, $a0
.L801E6388_ovl10:
/* 1D70F8 801E6388 8D4B0000 */  lw    $t3, ($t2)
/* 1D70FC 801E638C 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 1D7100 801E6390 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 1D7104 801E6394 000B6080 */  sll   $t4, $t3, 2
/* 1D7108 801E6398 00AC1821 */  addu  $v1, $a1, $t4
/* 1D710C 801E639C C4720000 */  lwc1  $f18, ($v1)
/* 1D7110 801E63A0 44801000 */  mtc1  $zero, $f2
/* 1D7114 801E63A4 46009101 */  sub.s $f4, $f18, $f0
/* 1D7118 801E63A8 E4640000 */  swc1  $f4, ($v1)
/* 1D711C 801E63AC 8C4D0000 */  lw    $t5, ($v0)
/* 1D7120 801E63B0 000D7080 */  sll   $t6, $t5, 2
/* 1D7124 801E63B4 010E7821 */  addu  $t7, $t0, $t6
/* 1D7128 801E63B8 8DF80000 */  lw    $t8, ($t7)
/* 1D712C 801E63BC 0018C880 */  sll   $t9, $t8, 2
/* 1D7130 801E63C0 00B91821 */  addu  $v1, $a1, $t9
/* 1D7134 801E63C4 C4660000 */  lwc1  $f6, ($v1)
/* 1D7138 801E63C8 4602303C */  c.lt.s $f6, $f2
/* 1D713C 801E63CC 00000000 */  nop   
/* 1D7140 801E63D0 45000002 */  bc1f  .L801E63DC_ovl10
/* 1D7144 801E63D4 00000000 */   nop   
/* 1D7148 801E63D8 E4620000 */  swc1  $f2, ($v1)
.L801E63DC_ovl10:
/* 1D714C 801E63DC 03E00008 */  jr    $ra
/* 1D7150 801E63E0 00000000 */   nop   
