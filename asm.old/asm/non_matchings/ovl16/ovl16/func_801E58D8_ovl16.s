glabel func_801E58D8_ovl16
/* 21BB88 801E58D8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 21BB8C 801E58DC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 21BB90 801E58E0 AFA40000 */  sw    $a0, ($sp)
/* 21BB94 801E58E4 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21BB98 801E58E8 8C4F0000 */  lw    $t7, ($v0)
/* 21BB9C 801E58EC 240E0013 */  li    $t6, 19
/* 21BBA0 801E58F0 44802000 */  mtc1  $zero, $f4
/* 21BBA4 801E58F4 000FC080 */  sll   $t8, $t7, 2
/* 21BBA8 801E58F8 00380821 */  addu  $at, $at, $t8
/* 21BBAC 801E58FC AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21BBB0 801E5900 8C590000 */  lw    $t9, ($v0)
/* 21BBB4 801E5904 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 21BBB8 801E5908 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 21BBBC 801E590C 00194080 */  sll   $t0, $t9, 2
/* 21BBC0 801E5910 00884821 */  addu  $t1, $a0, $t0
/* 21BBC4 801E5914 E5240000 */  swc1  $f4, ($t1)
/* 21BBC8 801E5918 8C430000 */  lw    $v1, ($v0)
/* 21BBCC 801E591C 3C01800E */ lui $at, %hi(D_800E3590)
/* 21BBD0 801E5920 3C05800E */  lui   $a1, %hi(D_800E3C90) # $a1, 0x800e
/* 21BBD4 801E5924 00031880 */  sll   $v1, $v1, 2
/* 21BBD8 801E5928 00835021 */  addu  $t2, $a0, $v1
/* 21BBDC 801E592C C5400000 */  lwc1  $f0, ($t2)
/* 21BBE0 801E5930 00230821 */  addu  $at, $at, $v1
/* 21BBE4 801E5934 24A53C90 */  addiu $a1, %lo(D_800E3C90) # addiu $a1, $a1, 0x3c90
/* 21BBE8 801E5938 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 21BBEC 801E593C 8C4B0000 */  lw    $t3, ($v0)
/* 21BBF0 801E5940 3C01800E */ lui $at, %hi(D_800E3210)
/* 21BBF4 801E5944 24090017 */  li    $t1, 23
/* 21BBF8 801E5948 000B6080 */  sll   $t4, $t3, 2
/* 21BBFC 801E594C 002C0821 */  addu  $at, $at, $t4
/* 21BC00 801E5950 E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 21BC04 801E5954 8C4D0000 */  lw    $t5, ($v0)
/* 21BC08 801E5958 3C01800E */ lui $at, %hi(D_800E3050)
/* 21BC0C 801E595C 000D7880 */  sll   $t7, $t5, 2
/* 21BC10 801E5960 002F0821 */  addu  $at, $at, $t7
/* 21BC14 801E5964 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 21BC18 801E5968 8C4E0000 */  lw    $t6, ($v0)
/* 21BC1C 801E596C 3C01801F */  lui   $at, %hi(D_801EFFBC_ovl16) # $at, 0x801f
/* 21BC20 801E5970 C426FFBC */  lwc1  $f6, %lo(D_801EFFBC_ovl16)($at)
/* 21BC24 801E5974 000EC080 */  sll   $t8, $t6, 2
/* 21BC28 801E5978 00B8C821 */  addu  $t9, $a1, $t8
/* 21BC2C 801E597C E7260000 */  swc1  $f6, ($t9)
/* 21BC30 801E5980 8C430000 */  lw    $v1, ($v0)
/* 21BC34 801E5984 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 21BC38 801E5988 00031880 */  sll   $v1, $v1, 2
/* 21BC3C 801E598C 00A34021 */  addu  $t0, $a1, $v1
/* 21BC40 801E5990 C5080000 */  lwc1  $f8, ($t0)
/* 21BC44 801E5994 00230821 */  addu  $at, $at, $v1
/* 21BC48 801E5998 E4283AD0 */ swc1 $f8, %lo(D_800E3AD0)($at)
/* 21BC4C 801E599C 8C4A0000 */  lw    $t2, ($v0)
/* 21BC50 801E59A0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21BC54 801E59A4 000A5880 */  sll   $t3, $t2, 2
/* 21BC58 801E59A8 002B0821 */  addu  $at, $at, $t3
/* 21BC5C 801E59AC 03E00008 */  jr    $ra
/* 21BC60 801E59B0 AC29DC50 */ sw $t1, %lo(gEntityVtableIndexArray)($at)
.type func_801E58D8_ovl16, @function
.size func_801E58D8_ovl16, . - func_801E58D8_ovl16
