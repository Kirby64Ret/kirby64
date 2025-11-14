glabel func_800AF920
/* 057B70 800AF920 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 057B74 800AF924 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 057B78 800AF928 04810005 */  bgez  $a0, .L800AF940_ovl1
/* 057B7C 800AF92C 8DC2004C */   lw    $v0, 0x4c($t6)
/* 057B80 800AF930 904F0013 */  lbu   $t7, 0x13($v0)
/* 057B84 800AF934 39F80008 */  xori  $t8, $t7, 8
/* 057B88 800AF938 03E00008 */  jr    $ra
/* 057B8C 800AF93C A0580013 */   sb    $t8, 0x13($v0)
.type func_800AF920, @function

.L800AF940_ovl1:
/* 057B90 800AF940 50800006 */  beql  $a0, $zero, .L800AF95C_ovl1
/* 057B94 800AF944 90490013 */   lbu   $t1, 0x13($v0)
/* 057B98 800AF948 90590013 */  lbu   $t9, 0x13($v0)
/* 057B9C 800AF94C 3328FFF7 */  andi  $t0, $t9, 0xfff7
/* 057BA0 800AF950 03E00008 */  jr    $ra
/* 057BA4 800AF954 A0480013 */   sb    $t0, 0x13($v0)
.type func_800AF920, @function

/* 057BA8 800AF958 90490013 */  lbu   $t1, 0x13($v0)
.L800AF95C_ovl1:
/* 057BAC 800AF95C 352A0008 */  ori   $t2, $t1, 8
/* 057BB0 800AF960 A04A0013 */  sb    $t2, 0x13($v0)
/* 057BB4 800AF964 03E00008 */  jr    $ra
/* 057BB8 800AF968 00000000 */   nop   
.type func_800AF920, @function
.size func_800AF920, . - func_800AF920
