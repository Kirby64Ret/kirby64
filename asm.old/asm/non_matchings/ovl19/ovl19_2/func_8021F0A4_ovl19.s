glabel func_8021F0A4_ovl19
/* 23F7B4 8021F0A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 23F7B8 8021F0A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 23F7BC 8021F0AC AFA40000 */  sw    $a0, ($sp)
/* 23F7C0 8021F0B0 3C03800F */  lui   $v1, %hi(D_800E8060) # $v1, 0x800f
/* 23F7C4 8021F0B4 8C4E0000 */  lw    $t6, ($v0)
/* 23F7C8 8021F0B8 24638060 */  addiu $v1, %lo(D_800E8060) # addiu $v1, $v1, -0x7fa0
/* 23F7CC 8021F0BC 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 23F7D0 8021F0C0 000E7880 */  sll   $t7, $t6, 2
/* 23F7D4 8021F0C4 006FC021 */  addu  $t8, $v1, $t7
/* 23F7D8 8021F0C8 8F190000 */  lw    $t9, ($t8)
/* 23F7DC 8021F0CC 17200027 */  bnez  $t9, .L8021F16C_ovl19
/* 23F7E0 8021F0D0 00000000 */   nop   
/* 23F7E4 8021F0D4 8D085F90 */  lw    $t0, %lo(D_800E5F90)($t0)
/* 23F7E8 8021F0D8 2401000A */  li    $at, 10
/* 23F7EC 8021F0DC 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 23F7F0 8021F0E0 15010022 */  bne   $t0, $at, .L8021F16C_ovl19
/* 23F7F4 8021F0E4 2484E7C0 */   addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 23F7F8 8021F0E8 24050001 */  li    $a1, 1
/* 23F7FC 8021F0EC 2409004F */  li    $t1, 79
/* 23F800 8021F0F0 AC80003C */  sw    $zero, 0x3c($a0)
/* 23F804 8021F0F4 A0850017 */  sb    $a1, 0x17($a0)
/* 23F808 8021F0F8 A089000C */  sb    $t1, 0xc($a0)
/* 23F80C 8021F0FC A4850068 */  sh    $a1, 0x68($a0)
/* 23F810 8021F100 8C4A0000 */  lw    $t2, ($v0)
/* 23F814 8021F104 3C01800E */  lui   $at, %hi(D_800E0D50) # $at, 0x800e
/* 23F818 8021F108 AC2A0D50 */  sw    $t2, %lo(D_800E0D50)($at)
/* 23F81C 8021F10C 8C4B0000 */  lw    $t3, ($v0)
/* 23F820 8021F110 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 23F824 8021F114 44812000 */  mtc1  $at, $f4
/* 23F828 8021F118 000B6080 */  sll   $t4, $t3, 2
/* 23F82C 8021F11C 006C6821 */  addu  $t5, $v1, $t4
/* 23F830 8021F120 ADA50000 */  sw    $a1, ($t5)
/* 23F834 8021F124 3C01800E */  lui   $at, %hi(D_800E6A10) # $at, 0x800e
/* 23F838 8021F128 C4266A10 */  lwc1  $f6, %lo(D_800E6A10)($at)
/* 23F83C 8021F12C 46062032 */  c.eq.s $f4, $f6
/* 23F840 8021F130 00000000 */  nop   
/* 23F844 8021F134 4502000A */  bc1fl .L8021F160_ovl19
/* 23F848 8021F138 8C980034 */   lw    $t8, 0x34($a0)
/* 23F84C 8021F13C 8C820034 */  lw    $v0, 0x34($a0)
/* 23F850 8021F140 304E0001 */  andi  $t6, $v0, 1
/* 23F854 8021F144 11C00003 */  beqz  $t6, .L8021F154_ovl19
/* 23F858 8021F148 344F0001 */   ori   $t7, $v0, 1
/* 23F85C 8021F14C 03E00008 */  jr    $ra
/* 23F860 8021F150 AC800020 */   sw    $zero, 0x20($a0)
.type func_8021F0A4_ovl19, @function

.L8021F154_ovl19:
/* 23F864 8021F154 03E00008 */  jr    $ra
/* 23F868 8021F158 AC8F0034 */   sw    $t7, 0x34($a0)
.type func_8021F0A4_ovl19, @function

/* 23F86C 8021F15C 8C980034 */  lw    $t8, 0x34($a0)
.L8021F160_ovl19:
/* 23F870 8021F160 2401FFFE */  li    $at, -2
/* 23F874 8021F164 0301C824 */  and   $t9, $t8, $at
/* 23F878 8021F168 AC990034 */  sw    $t9, 0x34($a0)
.L8021F16C_ovl19:
/* 23F87C 8021F16C 03E00008 */  jr    $ra
/* 23F880 8021F170 00000000 */   nop   
.type func_8021F0A4_ovl19, @function
.size func_8021F0A4_ovl19, . - func_8021F0A4_ovl19
