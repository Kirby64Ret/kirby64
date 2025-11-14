glabel func_801E27E8_ovl10
/* 1D3558 801E27E8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D355C 801E27EC 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1D3560 801E27F0 8C620000 */  lw    $v0, ($v1)
/* 1D3564 801E27F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D3568 801E27F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D356C 801E27FC AFA40018 */  sw    $a0, 0x18($sp)
/* 1D3570 801E2800 8C4F0000 */  lw    $t7, ($v0)
/* 1D3574 801E2804 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D3578 801E2808 240E0011 */  li    $t6, 17
/* 1D357C 801E280C 000FC080 */  sll   $t8, $t7, 2
/* 1D3580 801E2810 00380821 */  addu  $at, $at, $t8
/* 1D3584 801E2814 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1D3588 801E2818 8C480000 */  lw    $t0, ($v0)
/* 1D358C 801E281C 3C04800E */  lui   $a0, %hi(D_800E1B50) # $a0, 0x800e
/* 1D3590 801E2820 24841B50 */  addiu $a0, %lo(D_800E1B50) # addiu $a0, $a0, 0x1b50
/* 1D3594 801E2824 00084880 */  sll   $t1, $t0, 2
/* 1D3598 801E2828 00895021 */  addu  $t2, $a0, $t1
/* 1D359C 801E282C 8D4B0000 */  lw    $t3, ($t2)
/* 1D35A0 801E2830 3C19801F */  lui   $t9, %hi(D_801F3ACC_ovl10) # $t9, 0x801f
/* 1D35A4 801E2834 27393ACC */  addiu $t9, %lo(D_801F3ACC_ovl10) # addiu $t9, $t9, 0x3acc
/* 1D35A8 801E2838 AD79008C */  sw    $t9, 0x8c($t3)
/* 1D35AC 801E283C 8C6D0000 */  lw    $t5, ($v1)
/* 1D35B0 801E2840 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1D35B4 801E2844 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1D35B8 801E2848 8DAF0000 */  lw    $t7, ($t5)
/* 1D35BC 801E284C 000F7080 */  sll   $t6, $t7, 2
/* 1D35C0 801E2850 008EC021 */  addu  $t8, $a0, $t6
/* 1D35C4 801E2854 8F080000 */  lw    $t0, ($t8)
/* 1D35C8 801E2858 0C02CCFD */  jal   func_800B33F4
/* 1D35CC 801E285C AD0C0098 */   sw    $t4, 0x98($t0)
/* 1D35D0 801E2860 3C040001 */  lui   $a0, (0x00010302 >> 16) # lui $a0, 1
/* 1D35D4 801E2864 0C02A806 */  jal   func_800AA018
/* 1D35D8 801E2868 34840302 */   ori   $a0, (0x00010302 & 0xFFFF) # ori $a0, $a0, 0x302
/* 1D35DC 801E286C 3C040001 */  lui   $a0, (0x00010303 >> 16) # lui $a0, 1
/* 1D35E0 801E2870 0C02A855 */  jal   func_800AA154
/* 1D35E4 801E2874 34840303 */   ori   $a0, (0x00010303 & 0xFFFF) # ori $a0, $a0, 0x303
/* 1D35E8 801E2878 0C002DAF */  jal   finish_current_thread
/* 1D35EC 801E287C 2404001E */   li    $a0, 30
/* 1D35F0 801E2880 0C06F1E5 */  jal   func_801BC794_ovl10
/* 1D35F4 801E2884 24040008 */   li    $a0, 8
/* 1D35F8 801E2888 0C02BE85 */  jal   func_800AFA14
/* 1D35FC 801E288C 00000000 */   nop   
/* 1D3600 801E2890 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D3604 801E2894 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D3608 801E2898 03E00008 */  jr    $ra
/* 1D360C 801E289C 00000000 */   nop   
.type func_801E27E8_ovl10, @function
.size func_801E27E8_ovl10, . - func_801E27E8_ovl10
