glabel func_8021E4B0_ovl19
/* 23EBC0 8021E4B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23EBC4 8021E4B4 AFBF0014 */  sw         $ra, 0x14($sp)
.L8021E4B8_ovl18:
/* 23EBC8 8021E4B8 0C02D219 */  jal        func_800B4864
.L8021E4BC_ovl18:
/* 23EBCC 8021E4BC AFA40020 */   sw        $a0, 0x20($sp)
/* 23EBD0 8021E4C0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 23EBD4 8021E4C4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 23EBD8 8021E4C8 3C01800E */  lui        $at, %hi(D_800E6BD0)
glabel func_8021E4CC_ovl18
/* 23EBDC 8021E4CC 8DC30000 */  lw         $v1, 0x0($t6)
/* 23EBE0 8021E4D0 00031880 */  sll        $v1, $v1, 2
/* 23EBE4 8021E4D4 00230821 */  addu       $at, $at, $v1
/* 23EBE8 8021E4D8 C4246BD0 */  lwc1       $f4, %lo(D_800E6BD0)($at)
/* 23EBEC 8021E4DC 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 23EBF0 8021E4E0 00230821 */  addu       $at, $at, $v1
/* 23EBF4 8021E4E4 C4266D90 */  lwc1       $f6, %lo(D_800E6D90)($at)
/* 23EBF8 8021E4E8 46062032 */  c.eq.s     $f4, $f6
/* 23EBFC 8021E4EC 00000000 */  nop
/* 23EC00 8021E4F0 45010022 */  bc1t       .L8021E57C_ovl19
.L8021E4F4_ovl18:
/* 23EC04 8021E4F4 00000000 */   nop
/* 23EC08 8021E4F8 0C02CD7C */  jal        func_800B35F0
/* 23EC0C 8021E4FC 00000000 */   nop
/* 23EC10 8021E500 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
.L8021E504_ovl18:
/* 23EC14 8021E504 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 23EC18 8021E508 3C01800E */  lui        $at, %hi(D_800E5510)
/* 23EC1C 8021E50C 3C18800E */  lui        $t8, %hi(D_800E64D0)
/* 23EC20 8021E510 8DE30000 */  lw         $v1, 0x0($t7)
.L8021E514_ovl18:
/* 23EC24 8021E514 271864D0 */  addiu      $t8, $t8, %lo(D_800E64D0)
/* 23EC28 8021E518 8FA40020 */  lw         $a0, 0x20($sp)
/* 23EC2C 8021E51C 00031880 */  sll        $v1, $v1, 2
.L8021E520_ovl18:
/* 23EC30 8021E520 00230821 */  addu       $at, $at, $v1
/* 23EC34 8021E524 C4285510 */  lwc1       $f8, %lo(D_800E5510)($at)
glabel func_8021E528_ovl18
/* 23EC38 8021E528 3C01800E */  lui        $at, %hi(D_800E56D0)
/* 23EC3C 8021E52C 00230821 */  addu       $at, $at, $v1
/* 23EC40 8021E530 C42A56D0 */  lwc1       $f10, %lo(D_800E56D0)($at)
/* 23EC44 8021E534 00782821 */  addu       $a1, $v1, $t8
/* 23EC48 8021E538 C4A00000 */  lwc1       $f0, 0x0($a1)
/* 23EC4C 8021E53C 460A4400 */  add.s      $f16, $f8, $f10
/* 23EC50 8021E540 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 23EC54 8021E544 46100480 */  add.s      $f18, $f0, $f16
/* 23EC58 8021E548 0C03E39B */  jal        func_800F8E6C
/* 23EC5C 8021E54C E4B20000 */   swc1      $f18, 0x0($a1)
/* 23EC60 8021E550 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 23EC64 8021E554 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 23EC68 8021E558 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* 23EC6C 8021E55C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 23EC70 8021E560 8F280000 */  lw         $t0, 0x0($t9)
/* 23EC74 8021E564 00084880 */  sll        $t1, $t0, 2
/* 23EC78 8021E568 00290821 */  addu       $at, $at, $t1
/* 23EC7C 8021E56C 0C02D190 */  jal        func_800B4640
/* 23EC80 8021E570 E42464D0 */   swc1      $f4, %lo(D_800E64D0)($at)
/* 23EC84 8021E574 0C02CDA7 */  jal        func_800B369C
/* 23EC88 8021E578 00000000 */   nop
.L8021E57C_ovl19:
/* 23EC8C 8021E57C 0C02CC56 */  jal        func_800B3158
/* 23EC90 8021E580 00000000 */   nop
/* 23EC94 8021E584 14400011 */  bnez       $v0, .L8021E5CC_ovl19
/* 23EC98 8021E588 3C048005 */   lui       $a0, %hi(D_8004A7C4)
/* 23EC9C 8021E58C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 23ECA0 8021E590 3C05800E */  lui        $a1, %hi(D_800E76C0)
/* 23ECA4 8021E594 3C0A800D */  lui        $t2, %hi(D_800D6C68 + 0x28)
/* 23ECA8 8021E598 8C830000 */  lw         $v1, 0x0($a0)
/* 23ECAC 8021E59C 254A6C90 */  addiu      $t2, $t2, %lo(D_800D6C68 + 0x28)
/* 23ECB0 8021E5A0 00A32821 */  addu       $a1, $a1, $v1
/* 23ECB4 8021E5A4 90A576C0 */  lbu        $a1, %lo(D_800E76C0)($a1)
/* 23ECB8 8021E5A8 28A10040 */  slti       $at, $a1, 0x40
/* 23ECBC 8021E5AC 10200005 */  beqz       $at, .L8021E5C4_ovl19
/* 23ECC0 8021E5B0 00AA1021 */   addu      $v0, $a1, $t2
/* 23ECC4 8021E5B4 904B0000 */  lbu        $t3, 0x0($v0)
.L8021E5B8_ovl18:
/* 23ECC8 8021E5B8 316C0080 */  andi       $t4, $t3, 0x80
/* 23ECCC 8021E5BC A04C0000 */  sb         $t4, 0x0($v0)
/* 23ECD0 8021E5C0 8C830000 */  lw         $v1, 0x0($a0)
.L8021E5C4_ovl19:
/* 23ECD4 8021E5C4 0C02C640 */  jal        func_800B1900
/* 23ECD8 8021E5C8 3064FFFF */   andi      $a0, $v1, 0xFFFF
.L8021E5CC_ovl19:
/* 23ECDC 8021E5CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23ECE0 8021E5D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 23ECE4 8021E5D4 03E00008 */  jr         $ra
.L8021E5D8_ovl18:
/* 23ECE8 8021E5D8 00000000 */   nop
