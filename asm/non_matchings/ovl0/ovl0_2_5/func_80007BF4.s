glabel func_80007BF4 
/* 008800 80007C00 44856000 */  mtc1  $a1, $f12
/* 008804 80007C04 44877000 */  mtc1  $a3, $f14
/* 008808 80007C08 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 00880C 80007C0C 44818000 */  mtc1  $at, $f16
/* 008810 80007C10 460E6100 */  add.s $f4, $f12, $f14
/* 008814 80007C14 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 008818 80007C18 44819000 */  mtc1  $at, $f18
/* 00881C 80007C1C AFA60008 */  sw    $a2, 8($sp)
/* 008820 80007C20 46102002 */  mul.s $f0, $f4, $f16
/* 008824 80007C24 46007181 */  sub.s $f6, $f14, $f0
/* 008828 80007C28 46123202 */  mul.s $f8, $f6, $f18
/* 00882C 80007C2C 4600428D */  trunc.w.s $f10, $f8
/* 008830 80007C30 44185000 */  mfc1  $t8, $f10
/* 008834 80007C34 00000000 */  nop   
/* 008838 80007C38 A4980000 */  sh    $t8, ($a0)
/* 00883C 80007C3C C7A60010 */  lwc1  $f6, 0x10($sp)
/* 008840 80007C40 C7A40008 */  lwc1  $f4, 8($sp)
/* 008844 80007C44 241801FF */  li    $t8, 511
/* 008848 80007C48 A498000C */  sh    $t8, 0xc($a0)
/* 00884C 80007C4C 46062200 */  add.s $f8, $f4, $f6
/* 008850 80007C50 8499000C */  lh    $t9, 0xc($a0)
/* 008854 80007C54 46104082 */  mul.s $f2, $f8, $f16
/* 008858 80007C58 A4990004 */  sh    $t9, 4($a0)
/* 00885C 80007C5C 46023281 */  sub.s $f10, $f6, $f2
/* 008860 80007C60 46125102 */  mul.s $f4, $f10, $f18
/* 008864 80007C64 4600220D */  trunc.w.s $f8, $f4
/* 008868 80007C68 46120182 */  mul.s $f6, $f0, $f18
/* 00886C 80007C6C 00000000 */  nop   
/* 008870 80007C70 46121102 */  mul.s $f4, $f2, $f18
/* 008874 80007C74 44094000 */  mfc1  $t1, $f8
/* 008878 80007C78 00000000 */  nop   
/* 00887C 80007C7C A4890002 */  sh    $t1, 2($a0)
/* 008880 80007C80 4600328D */  trunc.w.s $f10, $f6
/* 008884 80007C84 4600220D */  trunc.w.s $f8, $f4
/* 008888 80007C88 440C5000 */  mfc1  $t4, $f10
/* 00888C 80007C8C 440F4000 */  mfc1  $t7, $f8
/* 008890 80007C90 A48C0008 */  sh    $t4, 8($a0)
/* 008894 80007C94 03E00008 */  jr    $ra
/* 008898 80007C98 A48F000A */   sh    $t7, 0xa($a0)
.type func_80007BF4, @function
.size func_80007BF4, . - func_80007BF4
