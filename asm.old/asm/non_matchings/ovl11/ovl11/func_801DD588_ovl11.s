glabel func_801DD588_ovl11
/* 1E7E48 801DD588 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7E4C 801DD58C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7E50 801DD590 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E7E54 801DD594 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E7E58 801DD598 AFA40018 */  sw    $a0, 0x18($sp)
/* 1E7E5C 801DD59C 8C430000 */  lw    $v1, ($v0)
/* 1E7E60 801DD5A0 3C06800F */  lui   $a2, %hi(D_800E9E20) # $a2, 0x800f
/* 1E7E64 801DD5A4 24C69E20 */  addiu $a2, %lo(D_800E9E20) # addiu $a2, $a2, -0x61e0
/* 1E7E68 801DD5A8 00031880 */  sll   $v1, $v1, 2
/* 1E7E6C 801DD5AC 00C37021 */  addu  $t6, $a2, $v1
/* 1E7E70 801DD5B0 8DC40000 */  lw    $a0, ($t6)
/* 1E7E74 801DD5B4 24010001 */  li    $at, 1
/* 1E7E78 801DD5B8 1481000F */  bne   $a0, $at, .L801DD5F8_ovl11
/* 1E7E7C 801DD5BC 00000000 */   nop   
/* 1E7E80 801DD5C0 3C04801E */  lui   $a0, %hi(D_801E0C60) # $a0, 0x801e
/* 1E7E84 801DD5C4 0C07749C */  jal   func_801DD270_ovl11
/* 1E7E88 801DD5C8 24840C60 */   addiu $a0, %lo(D_801E0C60) # addiu $a0, $a0, 0xc60
/* 1E7E8C 801DD5CC 0C029D9E */  jal   play_sound
/* 1E7E90 801DD5D0 240401E4 */   li    $a0, 484
/* 1E7E94 801DD5D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7E98 801DD5D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7E9C 801DD5DC 3C04800F */ lui $a0, %hi(D_800E9E20)
/* 1E7EA0 801DD5E0 3C06800F */  lui   $a2, %hi(D_800E9E20) # $a2, 0x800f
/* 1E7EA4 801DD5E4 8C430000 */  lw    $v1, ($v0)
/* 1E7EA8 801DD5E8 24C69E20 */  addiu $a2, %lo(D_800E9E20) # addiu $a2, $a2, -0x61e0
/* 1E7EAC 801DD5EC 00031880 */  sll   $v1, $v1, 2
/* 1E7EB0 801DD5F0 00832021 */  addu  $a0, $a0, $v1
/* 1E7EB4 801DD5F4 8C849E20 */ lw $a0, %lo(D_800E9E20)($a0)
.L801DD5F8_ovl11:
/* 1E7EB8 801DD5F8 10800049 */  beqz  $a0, .L801DD720_ovl11
/* 1E7EBC 801DD5FC 24010009 */   li    $at, 9
/* 1E7EC0 801DD600 14810015 */  bne   $a0, $at, .L801DD658_ovl11
/* 1E7EC4 801DD604 3C05800F */   lui   $a1, %hi(D_800E9C60)
/* 1E7EC8 801DD608 0C029D9E */  jal   play_sound
/* 1E7ECC 801DD60C 24040177 */   li    $a0, 375
/* 1E7ED0 801DD610 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7ED4 801DD614 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7ED8 801DD618 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1E7EDC 801DD61C 240F0006 */  li    $t7, 6
/* 1E7EE0 801DD620 8C580000 */  lw    $t8, ($v0)
/* 1E7EE4 801DD624 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E7EE8 801DD628 3C05801E */  lui   $a1, %hi(D_801DC258) # $a1, 0x801e
/* 1E7EEC 801DD62C 0018C880 */  sll   $t9, $t8, 2
/* 1E7EF0 801DD630 00390821 */  addu  $at, $at, $t9
/* 1E7EF4 801DD634 AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
/* 1E7EF8 801DD638 8C480000 */  lw    $t0, ($v0)
/* 1E7EFC 801DD63C 24A5C258 */  addiu $a1, %lo(D_801DC258) # addiu $a1, $a1, -0x3da8
/* 1E7F00 801DD640 00084880 */  sll   $t1, $t0, 2
/* 1E7F04 801DD644 00892021 */  addu  $a0, $a0, $t1
/* 1E7F08 801DD648 0C02C7B2 */  jal   assign_new_process_entry
/* 1E7F0C 801DD64C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1E7F10 801DD650 10000034 */  b     .L801DD724_ovl11
/* 1E7F14 801DD654 8FBF0014 */   lw    $ra, 0x14($sp)
.L801DD658_ovl11:
/* 1E7F18 801DD658 24A59C60 */  addiu $a1, $a1, %lo(D_800E9C60)
/* 1E7F1C 801DD65C 00A32021 */  addu  $a0, $a1, $v1
/* 1E7F20 801DD660 8C8A0000 */  lw    $t2, ($a0)
/* 1E7F24 801DD664 254BFFFF */  addiu $t3, $t2, -1
/* 1E7F28 801DD668 AC8B0000 */  sw    $t3, ($a0)
/* 1E7F2C 801DD66C 8C430000 */  lw    $v1, ($v0)
/* 1E7F30 801DD670 00031880 */  sll   $v1, $v1, 2
/* 1E7F34 801DD674 00A36021 */  addu  $t4, $a1, $v1
/* 1E7F38 801DD678 8D8D0000 */  lw    $t5, ($t4)
/* 1E7F3C 801DD67C 00C37021 */  addu  $t6, $a2, $v1
/* 1E7F40 801DD680 55A00028 */  bnezl $t5, .L801DD724_ovl11
/* 1E7F44 801DD684 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1E7F48 801DD688 8DD80000 */  lw    $t8, ($t6)
/* 1E7F4C 801DD68C 3C07801E */  lui   $a3, %hi(D_801E0C60) # $a3, 0x801e
/* 1E7F50 801DD690 24E70C60 */  addiu $a3, %lo(D_801E0C60) # addiu $a3, $a3, 0xc60
/* 1E7F54 801DD694 00187880 */  sll   $t7, $t8, 2
/* 1E7F58 801DD698 00EFC821 */  addu  $t9, $a3, $t7
/* 1E7F5C 801DD69C C724000C */  lwc1  $f4, 0xc($t9)
/* 1E7F60 801DD6A0 3C01800F */ lui $at, %hi(D_800EAA60)
/* 1E7F64 801DD6A4 00230821 */  addu  $at, $at, $v1
/* 1E7F68 801DD6A8 E424AA60 */ swc1 $f4, %lo(D_800EAA60)($at)
/* 1E7F6C 801DD6AC 8C480000 */  lw    $t0, ($v0)
/* 1E7F70 801DD6B0 00084880 */  sll   $t1, $t0, 2
/* 1E7F74 801DD6B4 00C95021 */  addu  $t2, $a2, $t1
/* 1E7F78 801DD6B8 8D4B0000 */  lw    $t3, ($t2)
/* 1E7F7C 801DD6BC 00EB6021 */  addu  $t4, $a3, $t3
/* 1E7F80 801DD6C0 0C077473 */  jal   func_801DD1CC_ovl11
/* 1E7F84 801DD6C4 91840007 */   lbu   $a0, 7($t4)
/* 1E7F88 801DD6C8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E7F8C 801DD6CC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E7F90 801DD6D0 3C0D800F */ lui $t5, %hi(D_800E9E20)
/* 1E7F94 801DD6D4 3C0E801E */ lui $t6, %hi(D_801E0C5F)
/* 1E7F98 801DD6D8 8C430000 */  lw    $v1, ($v0)
/* 1E7F9C 801DD6DC 3C05800F */  lui   $a1, %hi(D_800E9C60) # $a1, 0x800f
/* 1E7FA0 801DD6E0 24A59C60 */  addiu $a1, %lo(D_800E9C60) # addiu $a1, $a1, -0x63a0
/* 1E7FA4 801DD6E4 00031880 */  sll   $v1, $v1, 2
/* 1E7FA8 801DD6E8 01A36821 */  addu  $t5, $t5, $v1
/* 1E7FAC 801DD6EC 8DAD9E20 */ lw $t5, %lo(D_800E9E20)($t5)
/* 1E7FB0 801DD6F0 00A3C021 */  addu  $t8, $a1, $v1
/* 1E7FB4 801DD6F4 3C08800F */  lui   $t0, %hi(D_800E9E20) # $t0, 0x800f
/* 1E7FB8 801DD6F8 01CD7021 */  addu  $t6, $t6, $t5
/* 1E7FBC 801DD6FC 91CE0C5F */ lbu $t6, %lo(D_801E0C5F)($t6)
/* 1E7FC0 801DD700 25089E20 */  addiu $t0, %lo(D_800E9E20) # addiu $t0, $t0, -0x61e0
/* 1E7FC4 801DD704 AF0E0000 */  sw    $t6, ($t8)
/* 1E7FC8 801DD708 8C4F0000 */  lw    $t7, ($v0)
/* 1E7FCC 801DD70C 000FC880 */  sll   $t9, $t7, 2
/* 1E7FD0 801DD710 03282021 */  addu  $a0, $t9, $t0
/* 1E7FD4 801DD714 8C890000 */  lw    $t1, ($a0)
/* 1E7FD8 801DD718 252A0001 */  addiu $t2, $t1, 1
/* 1E7FDC 801DD71C AC8A0000 */  sw    $t2, ($a0)
.L801DD720_ovl11:
/* 1E7FE0 801DD720 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DD724_ovl11:
/* 1E7FE4 801DD724 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E7FE8 801DD728 03E00008 */  jr    $ra
/* 1E7FEC 801DD72C 00000000 */   nop   
.type func_801DD588_ovl11, @function
.size func_801DD588_ovl11, . - func_801DD588_ovl11
