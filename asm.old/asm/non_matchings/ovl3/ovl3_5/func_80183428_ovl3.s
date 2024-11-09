glabel func_80183428_ovl3
/* 0E3E68 80183428 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0E3E6C 8018342C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0E3E70 80183430 AFA40020 */  sw    $a0, 0x20($sp)
/* 0E3E74 80183434 0C054E61 */  jal   func_80153984_ovl3
/* 0E3E78 80183438 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0E3E7C 8018343C 0C0473D6 */  jal   func_8011CF58
/* 0E3E80 80183440 00000000 */   nop   
/* 0E3E84 80183444 0C048596 */  jal   func_80121658
/* 0E3E88 80183448 00000000 */   nop   
/* 0E3E8C 8018344C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0E3E90 80183450 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0E3E94 80183454 8C440044 */  lw    $a0, 0x44($v0)
/* 0E3E98 80183458 24060002 */  li    $a2, 2
/* 0E3E9C 8018345C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0E3EA0 80183460 10C4001D */  beq   $a2, $a0, .L801834D8_ovl3
/* 0E3EA4 80183464 00000000 */   nop   
/* 0E3EA8 80183468 904E0017 */  lbu   $t6, 0x17($v0)
/* 0E3EAC 8018346C 51C00004 */  beql  $t6, $zero, .L80183480_ovl3
/* 0E3EB0 80183470 904F0016 */   lbu   $t7, 0x16($v0)
/* 0E3EB4 80183474 10000018 */  b     .L801834D8_ovl3
/* 0E3EB8 80183478 24030001 */   li    $v1, 1
/* 0E3EBC 8018347C 904F0016 */  lbu   $t7, 0x16($v0)
.L80183480_ovl3:
/* 0E3EC0 80183480 3C18800D */  lui   $t8, %hi(D_800D6FEA) # $t8, 0x800d
/* 0E3EC4 80183484 3C09800D */  lui   $t1, %hi(D_800D6FEA) # $t1, 0x800d
/* 0E3EC8 80183488 15E0000D */  bnez  $t7, .L801834C0_ovl3
/* 0E3ECC 8018348C 00000000 */   nop   
/* 0E3ED0 80183490 97186FEA */  lhu   $t8, %lo(D_800D6FEA)($t8)
/* 0E3ED4 80183494 33194000 */  andi  $t9, $t8, 0x4000
/* 0E3ED8 80183498 53200004 */  beql  $t9, $zero, .L801834AC_ovl3
/* 0E3EDC 8018349C 9048000A */   lbu   $t0, 0xa($v0)
/* 0E3EE0 801834A0 1000000D */  b     .L801834D8_ovl3
/* 0E3EE4 801834A4 24030001 */   li    $v1, 1
/* 0E3EE8 801834A8 9048000A */  lbu   $t0, 0xa($v0)
.L801834AC_ovl3:
/* 0E3EEC 801834AC 24010004 */  li    $at, 4
/* 0E3EF0 801834B0 15010009 */  bne   $t0, $at, .L801834D8_ovl3
/* 0E3EF4 801834B4 00000000 */   nop   
/* 0E3EF8 801834B8 10000007 */  b     .L801834D8_ovl3
/* 0E3EFC 801834BC 24030001 */   li    $v1, 1
.L801834C0_ovl3:
/* 0E3F00 801834C0 95296FEA */  lhu   $t1, %lo(D_800D6FEA)($t1)
/* 0E3F04 801834C4 240B0004 */  li    $t3, 4
/* 0E3F08 801834C8 312A4000 */  andi  $t2, $t1, 0x4000
/* 0E3F0C 801834CC 11400002 */  beqz  $t2, .L801834D8_ovl3
/* 0E3F10 801834D0 00000000 */   nop   
/* 0E3F14 801834D4 A04B000A */  sb    $t3, 0xa($v0)
.L801834D8_ovl3:
/* 0E3F18 801834D8 50600010 */  beql  $v1, $zero, .L8018351C_ovl3
/* 0E3F1C 801834DC 8C4F0030 */   lw    $t7, 0x30($v0)
/* 0E3F20 801834E0 10C4000D */  beq   $a2, $a0, .L80183518_ovl3
/* 0E3F24 801834E4 3C0C8005 */   lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0E3F28 801834E8 AC460044 */  sw    $a2, 0x44($v0)
/* 0E3F2C 801834EC 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0E3F30 801834F0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 0E3F34 801834F4 3C058017 */  lui   $a1, %hi(D_8016C510) # $a1, 0x8017
/* 0E3F38 801834F8 8D8D0000 */  lw    $t5, ($t4)
/* 0E3F3C 801834FC 24A5C510 */  addiu $a1, %lo(D_8016C510) # addiu $a1, $a1, -0x3af0
/* 0E3F40 80183500 000D7080 */  sll   $t6, $t5, 2
/* 0E3F44 80183504 008E2021 */  addu  $a0, $a0, $t6
/* 0E3F48 80183508 0C02C7B2 */  jal   assign_new_process_entry
/* 0E3F4C 8018350C 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 0E3F50 80183510 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0E3F54 80183514 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
.L80183518_ovl3:
/* 0E3F58 80183518 8C4F0030 */  lw    $t7, 0x30($v0)
.L8018351C_ovl3:
/* 0E3F5C 8018351C 51E00011 */  beql  $t7, $zero, .L80183564_ovl3
/* 0E3F60 80183520 8C49003C */   lw    $t1, 0x3c($v0)
/* 0E3F64 80183524 0C047717 */  jal   func_8011DC5C
/* 0E3F68 80183528 00000000 */   nop   
/* 0E3F6C 8018352C 0C04783A */  jal   func_8011E0E8
/* 0E3F70 80183530 00000000 */   nop   
/* 0E3F74 80183534 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0E3F78 80183538 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0E3F7C 8018353C 44802000 */  mtc1  $zero, $f4
/* 0E3F80 80183540 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 0E3F84 80183544 8F190000 */  lw    $t9, ($t8)
/* 0E3F88 80183548 00194080 */  sll   $t0, $t9, 2
/* 0E3F8C 8018354C 00280821 */  addu  $at, $at, $t0
/* 0E3F90 80183550 0C04759F */  jal   func_8011D67C
/* 0E3F94 80183554 E4244010 */ swc1 $f4, %lo(gEntitiesAngleXArray)($at)
/* 0E3F98 80183558 10000011 */  b     .L801835A0_ovl3
/* 0E3F9C 8018355C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E3FA0 80183560 8C49003C */  lw    $t1, 0x3c($v0)
.L80183564_ovl3:
/* 0E3FA4 80183564 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0E3FA8 80183568 5120000D */  beql  $t1, $zero, .L801835A0_ovl3
/* 0E3FAC 8018356C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0E3FB0 80183570 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0E3FB4 80183574 3C0D800E */ lui $t5, %hi(D_800DFBD0)
/* 0E3FB8 80183578 3C048019 */  lui   $a0, %hi(D_80191950) # $a0, 0x8019
/* 0E3FBC 8018357C 8D4B0000 */  lw    $t3, ($t2)
/* 0E3FC0 80183580 24841950 */  addiu $a0, %lo(D_80191950) # addiu $a0, $a0, 0x1950
/* 0E3FC4 80183584 3C063F80 */  lui   $a2, 0x3f80
/* 0E3FC8 80183588 000B6080 */  sll   $t4, $t3, 2
/* 0E3FCC 8018358C 01AC6821 */  addu  $t5, $t5, $t4
/* 0E3FD0 80183590 8DADFBD0 */ lw $t5, %lo(D_800DFBD0)($t5)
/* 0E3FD4 80183594 0C05A153 */  jal   func_8016854C_ovl3
/* 0E3FD8 80183598 8DA50004 */   lw    $a1, 4($t5)
/* 0E3FDC 8018359C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801835A0_ovl3:
/* 0E3FE0 801835A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0E3FE4 801835A4 03E00008 */  jr    $ra
/* 0E3FE8 801835A8 00000000 */   nop   
.type func_80183428_ovl3, @function
.size func_80183428_ovl3, . - func_80183428_ovl3
