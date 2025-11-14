glabel func_801E74E8_ovl16
/* 21D798 801E74E8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 21D79C 801E74EC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21D7A0 801E74F0 AFA40000 */  sw    $a0, ($sp)
/* 21D7A4 801E74F4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21D7A8 801E74F8 8C4F0000 */  lw    $t7, ($v0)
/* 21D7AC 801E74FC 240E0019 */  li    $t6, 25
/* 21D7B0 801E7500 2419000A */  li    $t9, 10
/* 21D7B4 801E7504 000FC080 */  sll   $t8, $t7, 2
/* 21D7B8 801E7508 00380821 */  addu  $at, $at, $t8
/* 21D7BC 801E750C AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21D7C0 801E7510 8C480000 */  lw    $t0, ($v0)
/* 21D7C4 801E7514 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 21D7C8 801E7518 44802000 */  mtc1  $zero, $f4
/* 21D7CC 801E751C 00084880 */  sll   $t1, $t0, 2
/* 21D7D0 801E7520 00290821 */  addu  $at, $at, $t1
/* 21D7D4 801E7524 AC399AA0 */ sw $t9, %lo(D_800E9AA0)($at)
/* 21D7D8 801E7528 8C4A0000 */  lw    $t2, ($v0)
/* 21D7DC 801E752C 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 21D7E0 801E7530 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 21D7E4 801E7534 000A5880 */  sll   $t3, $t2, 2
/* 21D7E8 801E7538 008B6021 */  addu  $t4, $a0, $t3
/* 21D7EC 801E753C E5840000 */  swc1  $f4, ($t4)
/* 21D7F0 801E7540 8C430000 */  lw    $v1, ($v0)
/* 21D7F4 801E7544 3C01800E */ lui $at, %hi(D_800E3590)
/* 21D7F8 801E7548 3C05800E */  lui   $a1, %hi(D_800E3C90) # $a1, 0x800e
/* 21D7FC 801E754C 00031880 */  sll   $v1, $v1, 2
/* 21D800 801E7550 00836821 */  addu  $t5, $a0, $v1
/* 21D804 801E7554 C5A00000 */  lwc1  $f0, ($t5)
/* 21D808 801E7558 00230821 */  addu  $at, $at, $v1
/* 21D80C 801E755C 24A53C90 */  addiu $a1, %lo(D_800E3C90) # addiu $a1, $a1, 0x3c90
/* 21D810 801E7560 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 21D814 801E7564 8C4F0000 */  lw    $t7, ($v0)
/* 21D818 801E7568 3C01800E */ lui $at, %hi(D_800E3210)
/* 21D81C 801E756C 240C001F */  li    $t4, 31
/* 21D820 801E7570 000F7080 */  sll   $t6, $t7, 2
/* 21D824 801E7574 002E0821 */  addu  $at, $at, $t6
/* 21D828 801E7578 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 21D82C 801E757C 8C580000 */  lw    $t8, ($v0)
/* 21D830 801E7580 3C01800E */ lui $at, %hi(D_800E3050)
/* 21D834 801E7584 00184080 */  sll   $t0, $t8, 2
/* 21D838 801E7588 00280821 */  addu  $at, $at, $t0
/* 21D83C 801E758C E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 21D840 801E7590 8C590000 */  lw    $t9, ($v0)
/* 21D844 801E7594 3C01801F */  lui   $at, %hi(D_801F0064) # $at, 0x801f
/* 21D848 801E7598 C4260064 */  lwc1  $f6, %lo(D_801F0064)($at)
/* 21D84C 801E759C 00194880 */  sll   $t1, $t9, 2
/* 21D850 801E75A0 00A95021 */  addu  $t2, $a1, $t1
/* 21D854 801E75A4 E5460000 */  swc1  $f6, ($t2)
/* 21D858 801E75A8 8C430000 */  lw    $v1, ($v0)
/* 21D85C 801E75AC 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 21D860 801E75B0 00031880 */  sll   $v1, $v1, 2
/* 21D864 801E75B4 00A35821 */  addu  $t3, $a1, $v1
/* 21D868 801E75B8 C5680000 */  lwc1  $f8, ($t3)
/* 21D86C 801E75BC 00230821 */  addu  $at, $at, $v1
/* 21D870 801E75C0 E4283AD0 */ swc1 $f8, %lo(D_800E3AD0)($at)
/* 21D874 801E75C4 8C4D0000 */  lw    $t5, ($v0)
/* 21D878 801E75C8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21D87C 801E75CC 000D7880 */  sll   $t7, $t5, 2
/* 21D880 801E75D0 002F0821 */  addu  $at, $at, $t7
/* 21D884 801E75D4 03E00008 */  jr    $ra
/* 21D888 801E75D8 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
.type func_801E74E8_ovl16, @function
.size func_801E74E8_ovl16, . - func_801E74E8_ovl16
