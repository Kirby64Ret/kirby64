glabel func_8010E6F0
/* 097160 8010E6F0 00051080 */  sll   $v0, $a1, 2
/* 097164 8010E6F4 3C01800E */  lui   $at, 0x800e
/* 097168 8010E6F8 00220821 */  addu  $at, $at, $v0
/* 09716C 8010E6FC C42625D0 */  lwc1  $f6, 0x25d0($at)
/* 097170 8010E700 C4840000 */  lwc1  $f4, ($a0)
/* 097174 8010E704 3C01800E */  lui   $at, 0x800e
/* 097178 8010E708 00220821 */  addu  $at, $at, $v0
/* 09717C 8010E70C 46062200 */  add.s $f8, $f4, $f6
/* 097180 8010E710 C48A0004 */  lwc1  $f10, 4($a0)
/* 097184 8010E714 C4840008 */  lwc1  $f4, 8($a0)
/* 097188 8010E718 E4880000 */  swc1  $f8, ($a0)
/* 09718C 8010E71C C4302790 */  lwc1  $f16, 0x2790($at)
/* 097190 8010E720 3C01800E */  lui   $at, 0x800e
/* 097194 8010E724 00220821 */  addu  $at, $at, $v0
/* 097198 8010E728 46105480 */  add.s $f18, $f10, $f16
/* 09719C 8010E72C E4920004 */  swc1  $f18, 4($a0)
/* 0971A0 8010E730 C4262950 */  lwc1  $f6, 0x2950($at)
/* 0971A4 8010E734 46062200 */  add.s $f8, $f4, $f6
/* 0971A8 8010E738 03E00008 */  jr    $ra
/* 0971AC 8010E73C E4880008 */   swc1  $f8, 8($a0)
