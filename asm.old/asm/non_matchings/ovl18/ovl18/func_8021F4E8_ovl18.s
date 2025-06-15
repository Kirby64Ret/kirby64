glabel func_8021F4E8_ovl18
/* 231E88 8021F4E8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 231E8C 8021F4EC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 231E90 8021F4F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 231E94 8021F4F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 231E98 8021F4F8 8DC20000 */  lw    $v0, ($t6)
/* 231E9C 8021F4FC 3C06800F */  lui   $a2, %hi(D_800E83E0) # $a2, 0x800f
/* 231EA0 8021F500 24C683E0 */  addiu $a2, %lo(D_800E83E0) # addiu $a2, $a2, -0x7c20
/* 231EA4 8021F504 00021080 */  sll   $v0, $v0, 2
/* 231EA8 8021F508 00C27821 */  addu  $t7, $a2, $v0
/* 231EAC 8021F50C 8DE30000 */  lw    $v1, ($t7)
/* 231EB0 8021F510 3C04800E */ lui $a0, %hi(D_800E1B50)
/* 231EB4 8021F514 24050002 */  li    $a1, 2
/* 231EB8 8021F518 00822021 */  addu  $a0, $a0, $v0
/* 231EBC 8021F51C 10A30004 */  beq   $a1, $v1, .L8021F530_ovl18
/* 231EC0 8021F520 8C841B50 */ lw $a0, %lo(D_800E1B50)($a0)
/* 231EC4 8021F524 24010001 */  li    $at, 1
/* 231EC8 8021F528 54610025 */  bnel  $v1, $at, .L8021F5C0_ovl18
/* 231ECC 8021F52C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8021F530_ovl18:
/* 231ED0 8021F530 A0800043 */  sb    $zero, 0x43($a0)
/* 231ED4 8021F534 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 231ED8 8021F538 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 231EDC 8021F53C 3C01800E */ lui $at, %hi(D_800E7B20)
/* 231EE0 8021F540 8C580000 */  lw    $t8, ($v0)
/* 231EE4 8021F544 0018C880 */  sll   $t9, $t8, 2
/* 231EE8 8021F548 00390821 */  addu  $at, $at, $t9
/* 231EEC 8021F54C C4247B20 */ lwc1 $f4, %lo(D_800E7B20)($at)
/* 231EF0 8021F550 3C01800D */  lui   $at, %hi(D_800D6E58) # $at, 0x800d
/* 231EF4 8021F554 E4246E58 */  swc1  $f4, %lo(D_800D6E58)($at)
/* 231EF8 8021F558 8C480000 */  lw    $t0, ($v0)
/* 231EFC 8021F55C 00084880 */  sll   $t1, $t0, 2
/* 231F00 8021F560 00C95021 */  addu  $t2, $a2, $t1
/* 231F04 8021F564 8D4B0000 */  lw    $t3, ($t2)
/* 231F08 8021F568 14AB0003 */  bne   $a1, $t3, .L8021F578_ovl18
/* 231F0C 8021F56C 00000000 */   nop   
/* 231F10 8021F570 0C087E5C */  jal   func_8021F970_ovl18
/* 231F14 8021F574 00000000 */   nop   
.L8021F578_ovl18:
/* 231F18 8021F578 3C01800D */  lui   $at, %hi(D_800D6E58) # $at, 0x800d
/* 231F1C 8021F57C 0C02F047 */  jal   func_800BC11C
/* 231F20 8021F580 C42C6E58 */   lwc1  $f12, %lo(D_800D6E58)($at)
/* 231F24 8021F584 1440000D */  bnez  $v0, .L8021F5BC_ovl18
/* 231F28 8021F588 24040002 */   li    $a0, 2
/* 231F2C 8021F58C 0C02ED1A */  jal   func_800BB468
/* 231F30 8021F590 00002825 */   move  $a1, $zero
/* 231F34 8021F594 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 231F38 8021F598 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 231F3C 8021F59C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 231F40 8021F5A0 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 231F44 8021F5A4 8D8D0000 */  lw    $t5, ($t4)
/* 231F48 8021F5A8 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 231F4C 8021F5AC 000D7080 */  sll   $t6, $t5, 2
/* 231F50 8021F5B0 008E2021 */  addu  $a0, $a0, $t6
/* 231F54 8021F5B4 0C02C7B2 */  jal   assign_new_process_entry
/* 231F58 8021F5B8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L8021F5BC_ovl18:
/* 231F5C 8021F5BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8021F5C0_ovl18:
/* 231F60 8021F5C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 231F64 8021F5C4 03E00008 */  jr    $ra
/* 231F68 8021F5C8 00000000 */   nop   
.type func_8021F4E8_ovl18, @function
.size func_8021F4E8_ovl18, . - func_8021F4E8_ovl18
