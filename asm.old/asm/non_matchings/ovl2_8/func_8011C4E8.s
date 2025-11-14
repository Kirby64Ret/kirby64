glabel func_8011C4E8
/* 0A4F58 8011C4E8 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 0A4F5C 8011C4EC AFBF004C */  sw    $ra, 0x4c($sp)
/* 0A4F60 8011C4F0 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0A4F64 8011C4F4 AFB70044 */  sw    $s7, 0x44($sp)
/* 0A4F68 8011C4F8 AFB60040 */  sw    $s6, 0x40($sp)
/* 0A4F6C 8011C4FC AFB5003C */  sw    $s5, 0x3c($sp)
/* 0A4F70 8011C500 AFB40038 */  sw    $s4, 0x38($sp)
/* 0A4F74 8011C504 AFB30034 */  sw    $s3, 0x34($sp)
/* 0A4F78 8011C508 AFB20030 */  sw    $s2, 0x30($sp)
/* 0A4F7C 8011C50C AFB1002C */  sw    $s1, 0x2c($sp)
/* 0A4F80 8011C510 AFB00028 */  sw    $s0, 0x28($sp)
/* 0A4F84 8011C514 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 0A4F88 8011C518 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0A4F8C 8011C51C AFA400A0 */  sw    $a0, 0xa0($sp)
/* 0A4F90 8011C520 8CA7001C */  lw    $a3, 0x1c($a1)
/* 0A4F94 8011C524 3C138005 */  lui   $s3, %hi(gDisplayListHeads) # $s3, 0x8005
/* 0A4F98 8011C528 00A0A825 */  move  $s5, $a1
/* 0A4F9C 8011C52C 10E0006E */  beqz  $a3, .L8011C6E8_ovl2
/* 0A4FA0 8011C530 2673A3D0 */   addiu $s3, %lo(gDisplayListHeads) # addiu $s3, $s3, -0x5c30
/* 0A4FA4 8011C534 8E620008 */  lw    $v0, 8($s3)
/* 0A4FA8 8011C538 3C188012 */  lui   $t8, %hi(D_80126E68) # $t8, 0x8012
/* 0A4FAC 8011C53C 27186E68 */  addiu $t8, %lo(D_80126E68) # addiu $t8, $t8, 0x6e68
/* 0A4FB0 8011C540 244E0008 */  addiu $t6, $v0, 8
/* 0A4FB4 8011C544 AE6E0008 */  sw    $t6, 8($s3)
/* 0A4FB8 8011C548 3C0FDE00 */  lui   $t7, 0xde00
/* 0A4FBC 8011C54C AC4F0000 */  sw    $t7, ($v0)
/* 0A4FC0 8011C550 AC580004 */  sw    $t8, 4($v0)
/* 0A4FC4 8011C554 C4AC0018 */  lwc1  $f12, 0x18($a1)
/* 0A4FC8 8011C558 0C00D604 */  jal   cosf
/* 0A4FCC 8011C55C AFA7009C */   sw    $a3, 0x9c($sp)
/* 0A4FD0 8011C560 46000586 */  mov.s $f22, $f0
/* 0A4FD4 8011C564 0C00B5B8 */  jal   sinf
/* 0A4FD8 8011C568 C6AC0018 */   lwc1  $f12, 0x18($s5)
/* 0A4FDC 8011C56C 8FA7009C */  lw    $a3, 0x9c($sp)
/* 0A4FE0 8011C570 46000506 */  mov.s $f20, $f0
/* 0A4FE4 8011C574 3C1EDA38 */  lui   $fp, 0xda38
/* 0A4FE8 8011C578 90F90006 */  lbu   $t9, 6($a3)
/* 0A4FEC 8011C57C 27B70060 */  addiu $s7, $sp, 0x60
/* 0A4FF0 8011C580 27B6006C */  addiu $s6, $sp, 0x6c
/* 0A4FF4 8011C584 33280002 */  andi  $t0, $t9, 2
/* 0A4FF8 8011C588 11000009 */  beqz  $t0, .L8011C5B0_ovl2
/* 0A4FFC 8011C58C 8CF00008 */   lw    $s0, 8($a3)
/* 0A5000 8011C590 8EAB000C */  lw    $t3, 0xc($s5)
/* 0A5004 8011C594 27A90080 */  addiu $t1, $sp, 0x80
/* 0A5008 8011C598 AD2B0000 */  sw    $t3, ($t1)
/* 0A500C 8011C59C 8EAA0010 */  lw    $t2, 0x10($s5)
/* 0A5010 8011C5A0 AD2A0004 */  sw    $t2, 4($t1)
/* 0A5014 8011C5A4 8EAB0014 */  lw    $t3, 0x14($s5)
/* 0A5018 8011C5A8 10000008 */  b     .L8011C5CC_ovl2
/* 0A501C 8011C5AC AD2B0008 */   sw    $t3, 8($t1)
.L8011C5B0_ovl2:
/* 0A5020 8011C5B0 8EAE0000 */  lw    $t6, ($s5)
/* 0A5024 8011C5B4 27AC0080 */  addiu $t4, $sp, 0x80
/* 0A5028 8011C5B8 AD8E0000 */  sw    $t6, ($t4)
/* 0A502C 8011C5BC 8EAD0004 */  lw    $t5, 4($s5)
/* 0A5030 8011C5C0 AD8D0004 */  sw    $t5, 4($t4)
/* 0A5034 8011C5C4 8EAE0008 */  lw    $t6, 8($s5)
/* 0A5038 8011C5C8 AD8E0008 */  sw    $t6, 8($t4)
.L8011C5CC_ovl2:
/* 0A503C 8011C5CC 90EF0000 */  lbu   $t7, ($a3)
/* 0A5040 8011C5D0 3C128005 */  lui   $s2, %hi(gDynamicBuffer1) # $s2, 0x8005
/* 0A5044 8011C5D4 2652A3F8 */  addiu $s2, %lo(gDynamicBuffer1) # addiu $s2, $s2, -0x5c08
/* 0A5048 8011C5D8 11E0003B */  beqz  $t7, .L8011C6C8_ovl2
/* 0A504C 8011C5DC 0000A025 */   move  $s4, $zero
/* 0A5050 8011C5E0 C6040004 */  lwc1  $f4, 4($s0)
.L8011C5E4_ovl2:
/* 0A5054 8011C5E4 C7A80080 */  lwc1  $f8, 0x80($sp)
/* 0A5058 8011C5E8 C7B20084 */  lwc1  $f18, 0x84($sp)
/* 0A505C 8011C5EC 46142182 */  mul.s $f6, $f4, $f20
/* 0A5060 8011C5F0 8E51000C */  lw    $s1, 0xc($s2)
/* 0A5064 8011C5F4 02C02825 */  move  $a1, $s6
/* 0A5068 8011C5F8 02E03025 */  move  $a2, $s7
/* 0A506C 8011C5FC 02202025 */  move  $a0, $s1
/* 0A5070 8011C600 46083280 */  add.s $f10, $f6, $f8
/* 0A5074 8011C604 E7AA006C */  swc1  $f10, 0x6c($sp)
/* 0A5078 8011C608 C6100000 */  lwc1  $f16, ($s0)
/* 0A507C 8011C60C C7AA0088 */  lwc1  $f10, 0x88($sp)
/* 0A5080 8011C610 46128100 */  add.s $f4, $f16, $f18
/* 0A5084 8011C614 E7A40070 */  swc1  $f4, 0x70($sp)
/* 0A5088 8011C618 C6060004 */  lwc1  $f6, 4($s0)
/* 0A508C 8011C61C 46163202 */  mul.s $f8, $f6, $f22
/* 0A5090 8011C620 460A4400 */  add.s $f16, $f8, $f10
/* 0A5094 8011C624 E7B00074 */  swc1  $f16, 0x74($sp)
/* 0A5098 8011C628 C612000C */  lwc1  $f18, 0xc($s0)
/* 0A509C 8011C62C C6A60000 */  lwc1  $f6, ($s5)
/* 0A50A0 8011C630 46149102 */  mul.s $f4, $f18, $f20
/* 0A50A4 8011C634 46062200 */  add.s $f8, $f4, $f6
/* 0A50A8 8011C638 E7A80060 */  swc1  $f8, 0x60($sp)
/* 0A50AC 8011C63C C6B00004 */  lwc1  $f16, 4($s5)
/* 0A50B0 8011C640 C60A0008 */  lwc1  $f10, 8($s0)
/* 0A50B4 8011C644 46105480 */  add.s $f18, $f10, $f16
/* 0A50B8 8011C648 E7B20064 */  swc1  $f18, 0x64($sp)
/* 0A50BC 8011C64C C604000C */  lwc1  $f4, 0xc($s0)
/* 0A50C0 8011C650 C6A80008 */  lwc1  $f8, 8($s5)
/* 0A50C4 8011C654 AFA7009C */  sw    $a3, 0x9c($sp)
/* 0A50C8 8011C658 46162182 */  mul.s $f6, $f4, $f22
/* 0A50CC 8011C65C 46083280 */  add.s $f10, $f6, $f8
/* 0A50D0 8011C660 0C0470D1 */  jal   func_8011C344
/* 0A50D4 8011C664 E7AA0068 */   swc1  $f10, 0x68($sp)
/* 0A50D8 8011C668 10400011 */  beqz  $v0, .L8011C6B0_ovl2
/* 0A50DC 8011C66C 8FA7009C */   lw    $a3, 0x9c($sp)
/* 0A50E0 8011C670 8E620008 */  lw    $v0, 8($s3)
/* 0A50E4 8011C674 3C098012 */  lui   $t1, %hi(D_80126E90) # $t1, 0x8012
/* 0A50E8 8011C678 25296E90 */  addiu $t1, %lo(D_80126E90) # addiu $t1, $t1, 0x6e90
/* 0A50EC 8011C67C 24580008 */  addiu $t8, $v0, 8
/* 0A50F0 8011C680 AE780008 */  sw    $t8, 8($s3)
/* 0A50F4 8011C684 AC510004 */  sw    $s1, 4($v0)
/* 0A50F8 8011C688 AC5E0000 */  sw    $fp, ($v0)
/* 0A50FC 8011C68C 8E620008 */  lw    $v0, 8($s3)
/* 0A5100 8011C690 3C08DE00 */  lui   $t0, 0xde00
/* 0A5104 8011C694 24590008 */  addiu $t9, $v0, 8
/* 0A5108 8011C698 AE790008 */  sw    $t9, 8($s3)
/* 0A510C 8011C69C AC490004 */  sw    $t1, 4($v0)
/* 0A5110 8011C6A0 AC480000 */  sw    $t0, ($v0)
/* 0A5114 8011C6A4 8E4A000C */  lw    $t2, 0xc($s2)
/* 0A5118 8011C6A8 254B0040 */  addiu $t3, $t2, 0x40
/* 0A511C 8011C6AC AE4B000C */  sw    $t3, 0xc($s2)
.L8011C6B0_ovl2:
/* 0A5120 8011C6B0 90EC0000 */  lbu   $t4, ($a3)
/* 0A5124 8011C6B4 26940001 */  addiu $s4, $s4, 1
/* 0A5128 8011C6B8 26100010 */  addiu $s0, $s0, 0x10
/* 0A512C 8011C6BC 028C082B */  sltu  $at, $s4, $t4
/* 0A5130 8011C6C0 5420FFC8 */  bnezl $at, .L8011C5E4_ovl2
/* 0A5134 8011C6C4 C6040004 */   lwc1  $f4, 4($s0)
.L8011C6C8_ovl2:
/* 0A5138 8011C6C8 8E620008 */  lw    $v0, 8($s3)
/* 0A513C 8011C6CC 3C0F8012 */  lui   $t7, %hi(D_80126EB0) # $t7, 0x8012
/* 0A5140 8011C6D0 25EF6EB0 */  addiu $t7, %lo(D_80126EB0) # addiu $t7, $t7, 0x6eb0
/* 0A5144 8011C6D4 244D0008 */  addiu $t5, $v0, 8
/* 0A5148 8011C6D8 AE6D0008 */  sw    $t5, 8($s3)
/* 0A514C 8011C6DC 3C0EDE00 */  lui   $t6, 0xde00
/* 0A5150 8011C6E0 AC4E0000 */  sw    $t6, ($v0)
/* 0A5154 8011C6E4 AC4F0004 */  sw    $t7, 4($v0)
.L8011C6E8_ovl2:
/* 0A5158 8011C6E8 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0A515C 8011C6EC D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0A5160 8011C6F0 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 0A5164 8011C6F4 8FB00028 */  lw    $s0, 0x28($sp)
/* 0A5168 8011C6F8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0A516C 8011C6FC 8FB20030 */  lw    $s2, 0x30($sp)
/* 0A5170 8011C700 8FB30034 */  lw    $s3, 0x34($sp)
/* 0A5174 8011C704 8FB40038 */  lw    $s4, 0x38($sp)
/* 0A5178 8011C708 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0A517C 8011C70C 8FB60040 */  lw    $s6, 0x40($sp)
/* 0A5180 8011C710 8FB70044 */  lw    $s7, 0x44($sp)
/* 0A5184 8011C714 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0A5188 8011C718 03E00008 */  jr    $ra
/* 0A518C 8011C71C 27BD00A0 */   addiu $sp, $sp, 0xa0
.type func_8011C4E8, @function
.size func_8011C4E8, . - func_8011C4E8
