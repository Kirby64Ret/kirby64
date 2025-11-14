glabel func_800ACC30
/* 054E80 800ACC30 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 054E84 800ACC34 44810000 */  mtc1  $at, $f0
/* 054E88 800ACC38 C4C40020 */  lwc1  $f4, 0x20($a2)
/* 054E8C 800ACC3C 46002182 */  mul.s $f6, $f4, $f0
/* 054E90 800ACC40 4600320D */  trunc.w.s $f8, $f6
/* 054E94 800ACC44 440F4000 */  mfc1  $t7, $f8
/* 054E98 800ACC48 00000000 */  nop   
/* 054E9C 800ACC4C A48F0000 */  sh    $t7, ($a0)
/* 054EA0 800ACC50 C4CA0024 */  lwc1  $f10, 0x24($a2)
/* 054EA4 800ACC54 46005402 */  mul.s $f16, $f10, $f0
/* 054EA8 800ACC58 4600848D */  trunc.w.s $f18, $f16
/* 054EAC 800ACC5C 44199000 */  mfc1  $t9, $f18
/* 054EB0 800ACC60 03E00008 */  jr    $ra
/* 054EB4 800ACC64 A4B90000 */   sh    $t9, ($a1)
.type func_800ACC30, @function
.size func_800ACC30, . - func_800ACC30
