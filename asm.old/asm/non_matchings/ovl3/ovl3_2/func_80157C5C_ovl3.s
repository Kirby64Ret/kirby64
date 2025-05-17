glabel func_80157C5C_ovl3
/* 0B869C 80157C5C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B86A0 80157C60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B86A4 80157C64 0C0473D6 */  jal   func_8011CF58
/* 0B86A8 80157C68 AFA40018 */   sw    $a0, 0x18($sp)
/* 0B86AC 80157C6C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0B86B0 80157C70 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0B86B4 80157C74 906E0004 */  lbu   $t6, 4($v1)
/* 0B86B8 80157C78 3C048019 */  lui   $a0, 0x8019
/* 0B86BC 80157C7C 000E7880 */  sll   $t7, $t6, 2
/* 0B86C0 80157C80 008F2021 */  addu  $a0, $a0, $t7
/* 0B86C4 80157C84 0C02AA22 */  jal   func_800AA888
/* 0B86C8 80157C88 8C846D48 */   lw    $a0, 0x6d48($a0)
/* 0B86CC 80157C8C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0B86D0 80157C90 1440000B */  bnez  $v0, .L80157CC0_ovl3
/* 0B86D4 80157C94 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0B86D8 80157C98 90780004 */  lbu   $t8, 4($v1)
/* 0B86DC 80157C9C 3C048019 */  lui   $a0, 0x8019
/* 0B86E0 80157CA0 0018C880 */  sll   $t9, $t8, 2
/* 0B86E4 80157CA4 00992021 */  addu  $a0, $a0, $t9
/* 0B86E8 80157CA8 0C048BC2 */  jal   func_80122F08
/* 0B86EC 80157CAC 8C846D48 */   lw    $a0, 0x6d48($a0)
/* 0B86F0 80157CB0 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0B86F4 80157CB4 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0B86F8 80157CB8 24080002 */  li    $t0, 2
/* 0B86FC 80157CBC AC680154 */  sw    $t0, 0x154($v1)
.L80157CC0_ovl3:
/* 0B8700 80157CC0 90620004 */  lbu   $v0, 4($v1)
/* 0B8704 80157CC4 24040001 */  li    $a0, 1
/* 0B8708 80157CC8 3C0A8019 */  lui   $t2, %hi(D_80190358) # $t2, 0x8019
/* 0B870C 80157CCC 14820005 */  bne   $a0, $v0, .L80157CE4_ovl3
/* 0B8710 80157CD0 254A0358 */   addiu $t2, %lo(D_80190358) # addiu $t2, $t2, 0x358
/* 0B8714 80157CD4 3C098019 */  lui   $t1, %hi(D_801903E0) # $t1, 0x8019
/* 0B8718 80157CD8 252903E0 */  addiu $t1, %lo(D_801903E0) # addiu $t1, $t1, 0x3e0
/* 0B871C 80157CDC 10000002 */  b     .L80157CE8_ovl3
/* 0B8720 80157CE0 AC69015C */   sw    $t1, 0x15c($v1)
.L80157CE4_ovl3:
/* 0B8724 80157CE4 AC6A015C */  sw    $t2, 0x15c($v1)
.L80157CE8_ovl3:
/* 0B8728 80157CE8 1482000B */  bne   $a0, $v0, .L80157D18_ovl3
/* 0B872C 80157CEC 3C188005 */   lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0B8730 80157CF0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0B8734 80157CF4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0B8738 80157CF8 3C0B8019 */  lui   $t3, %hi(D_80192704) # $t3, 0x8019
/* 0B873C 80157CFC 3C01800E */  lui   $at, 0x800e
/* 0B8740 80157D00 8D8D0000 */  lw    $t5, ($t4)
/* 0B8744 80157D04 256B2704 */  addiu $t3, %lo(D_80192704) # addiu $t3, $t3, 0x2704
/* 0B8748 80157D08 000D7080 */  sll   $t6, $t5, 2
/* 0B874C 80157D0C 002E0821 */  addu  $at, $at, $t6
/* 0B8750 80157D10 10000009 */  b     .L80157D38_ovl3
/* 0B8754 80157D14 AC2B0490 */   sw    $t3, 0x0490($at)
.L80157D18_ovl3:
/* 0B8758 80157D18 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0B875C 80157D1C 3C0F8019 */  lui   $t7, %hi(D_801926E8) # $t7, 0x8019
/* 0B8760 80157D20 3C01800E */  lui   $at, 0x800e
/* 0B8764 80157D24 8F190000 */  lw    $t9, ($t8)
/* 0B8768 80157D28 25EF26E8 */  addiu $t7, %lo(D_801926E8) # addiu $t7, $t7, 0x26e8
/* 0B876C 80157D2C 00194080 */  sll   $t0, $t9, 2
/* 0B8770 80157D30 00280821 */  addu  $at, $at, $t0
/* 0B8774 80157D34 AC2F0490 */  sw    $t7, 0x0490($at)
.L80157D38_ovl3:
/* 0B8778 80157D38 0C047717 */  jal   func_8011DC5C
/* 0B877C 80157D3C A06000B0 */   sb    $zero, 0xb0($v1)
/* 0B8780 80157D40 0C04783A */  jal   func_8011E0E8
/* 0B8784 80157D44 00000000 */   nop   
/* 0B8788 80157D48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B878C 80157D4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B8790 80157D50 03E00008 */  jr    $ra
/* 0B8794 80157D54 00000000 */   nop   
.type func_80157C5C_ovl3, @function
.size func_80157C5C_ovl3, . - func_80157C5C_ovl3
