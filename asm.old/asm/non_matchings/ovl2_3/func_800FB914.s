glabel func_800FB914
/* 084384 800FB914 1480000E */  bnez  $a0, .L800FB950_ovl2
/* 084388 800FB918 3C038013 */   lui   $v1, %hi(D_80129404) # $v1, 0x8013
/* 08438C 800FB91C 3C018013 */  lui   $at, %hi(D_801293F8) # $at, 0x8013
/* 084390 800FB920 44802000 */  mtc1  $zero, $f4
/* 084394 800FB924 AC2093F8 */  sw    $zero, %lo(D_801293F8)($at)
/* 084398 800FB928 3C018013 */  lui   $at, %hi(D_801293FC) # $at, 0x8013
/* 08439C 800FB92C 240EFFFE */  li    $t6, -2
/* 0843A0 800FB930 24639404 */  addiu $v1, %lo(D_80129404) # addiu $v1, $v1, -0x6bfc
/* 0843A4 800FB934 AC2E93FC */  sw    $t6, %lo(D_801293FC)($at)
/* 0843A8 800FB938 E4640000 */  swc1  $f4, ($v1)
/* 0843AC 800FB93C C4660000 */  lwc1  $f6, ($v1)
/* 0843B0 800FB940 3C018013 */  lui   $at, 0x8013
/* 0843B4 800FB944 24020001 */  li    $v0, 1
/* 0843B8 800FB948 03E00008 */  jr    $ra
/* 0843BC 800FB94C E4269400 */   swc1  $f6, -0x6c00($at)
.type func_800FB914, @function

.L800FB950_ovl2:
/* 0843C0 800FB950 308F8000 */  andi  $t7, $a0, 0x8000
/* 0843C4 800FB954 15E00005 */  bnez  $t7, .L800FB96C_ovl2
/* 0843C8 800FB958 3C198013 */   lui   $t9, %hi(D_801293F8) # $t9, 0x8013
/* 0843CC 800FB95C 8F3993F8 */  lw    $t9, %lo(D_801293F8)($t9)
/* 0843D0 800FB960 3098000F */  andi  $t8, $a0, 0xf
/* 0843D4 800FB964 0319082A */  slt   $at, $t8, $t9
/* 0843D8 800FB968 1420000F */  bnez  $at, .L800FB9A8_ovl2
.L800FB96C_ovl2:
/* 0843DC 800FB96C 3088000F */   andi  $t0, $a0, 0xf
/* 0843E0 800FB970 3C018013 */  lui   $at, %hi(D_801293F8) # $at, 0x8013
/* 0843E4 800FB974 44804000 */  mtc1  $zero, $f8
/* 0843E8 800FB978 AC2893F8 */  sw    $t0, %lo(D_801293F8)($at)
/* 0843EC 800FB97C 3C038013 */  lui   $v1, %hi(D_80129404) # $v1, 0x8013
/* 0843F0 800FB980 3C018013 */  lui   $at, %hi(D_801293FC) # $at, 0x8013
/* 0843F4 800FB984 2409FFFE */  li    $t1, -2
/* 0843F8 800FB988 24639404 */  addiu $v1, %lo(D_80129404) # addiu $v1, $v1, -0x6bfc
/* 0843FC 800FB98C AC2993FC */  sw    $t1, %lo(D_801293FC)($at)
/* 084400 800FB990 E4680000 */  swc1  $f8, ($v1)
/* 084404 800FB994 C46A0000 */  lwc1  $f10, ($v1)
/* 084408 800FB998 3C018013 */  lui   $at, 0x8013
/* 08440C 800FB99C 24020001 */  li    $v0, 1
/* 084410 800FB9A0 03E00008 */  jr    $ra
/* 084414 800FB9A4 E42A9400 */   swc1  $f10, -0x6c00($at)
.type func_800FB914, @function

.L800FB9A8_ovl2:
/* 084418 800FB9A8 00001025 */  move  $v0, $zero
/* 08441C 800FB9AC 03E00008 */  jr    $ra
/* 084420 800FB9B0 00000000 */   nop   
.type func_800FB914, @function
.size func_800FB914, . - func_800FB914
