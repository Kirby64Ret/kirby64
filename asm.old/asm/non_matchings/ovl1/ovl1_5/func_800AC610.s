glabel func_800AC610
/* 054860 800AC610 3C03800E */  lui   $v1, %hi(D_800DD6EC) # $v1, 0x800e
/* 054864 800AC614 2463D6EC */  addiu $v1, %lo(D_800DD6EC) # addiu $v1, $v1, -0x2914
/* 054868 800AC618 8C6E0000 */  lw    $t6, ($v1)
/* 05486C 800AC61C 3C05800E */  lui   $a1, %hi(D_800DD6E4) # $a1, 0x800e
/* 054870 800AC620 3C02800E */  lui   $v0, %hi(D_800DD6E0) # $v0, 0x800e
/* 054874 800AC624 11C0000B */  beqz  $t6, .L800AC654_ovl1
/* 054878 800AC628 24A5D6E4 */   addiu $a1, %lo(D_800DD6E4) # addiu $a1, $a1, -0x291c
/* 05487C 800AC62C 3C04800E */  lui   $a0, %hi(D_800DD6F0) # $a0, 0x800e
/* 054880 800AC630 2484D6F0 */  addiu $a0, %lo(D_800DD6F0) # addiu $a0, $a0, -0x2910
/* 054884 800AC634 2442D6E0 */  addiu $v0, %lo(D_800DD6E0) # addiu $v0, $v0, -0x2920
/* 054888 800AC638 8C4F0000 */  lw    $t7, ($v0)
/* 05488C 800AC63C 8C980000 */  lw    $t8, ($a0)
/* 054890 800AC640 AF0F0000 */  sw    $t7, ($t8)
/* 054894 800AC644 8C790000 */  lw    $t9, ($v1)
/* 054898 800AC648 AC600000 */  sw    $zero, ($v1)
/* 05489C 800AC64C AC800000 */  sw    $zero, ($a0)
/* 0548A0 800AC650 AC590000 */  sw    $t9, ($v0)
.L800AC654_ovl1:
/* 0548A4 800AC654 8CA20000 */  lw    $v0, ($a1)
/* 0548A8 800AC658 3C04800E */  lui   $a0, %hi(D_800DD6F0) # $a0, 0x800e
/* 0548AC 800AC65C 2484D6F0 */  addiu $a0, %lo(D_800DD6F0) # addiu $a0, $a0, -0x2910
/* 0548B0 800AC660 10400007 */  beqz  $v0, .L800AC680_ovl1
/* 0548B4 800AC664 3C06800E */   lui   $a2, %hi(D_800DD6E8) # $a2, 0x800e
/* 0548B8 800AC668 24C6D6E8 */  addiu $a2, %lo(D_800DD6E8) # addiu $a2, $a2, -0x2918
/* 0548BC 800AC66C 8CC90000 */  lw    $t1, ($a2)
/* 0548C0 800AC670 AC620000 */  sw    $v0, ($v1)
/* 0548C4 800AC674 ACC00000 */  sw    $zero, ($a2)
/* 0548C8 800AC678 ACA00000 */  sw    $zero, ($a1)
/* 0548CC 800AC67C AC890000 */  sw    $t1, ($a0)
.L800AC680_ovl1:
/* 0548D0 800AC680 03E00008 */  jr    $ra
/* 0548D4 800AC684 00000000 */   nop   
.type func_800AC610, @function
.size func_800AC610, . - func_800AC610
