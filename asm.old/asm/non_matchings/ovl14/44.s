glabel func_801DEC34_ovl14 # 44
/* 201824 801DEC34 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 201828 801DEC38 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 20182C 801DEC3C 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 201830 801DEC40 AFBF0014 */  sw          $ra, 0x14($sp)
/* 201834 801DEC44 AFA40038 */  sw          $a0, 0x38($sp)
/* 201838 801DEC48 0C044554 */  jal         func_80111550
/* 20183C 801DEC4C 8DC40000 */   lw         $a0, 0x0($t6)
/* 201840 801DEC50 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 201844 801DEC54 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 201848 801DEC58 3C04801E */  lui         $a0, %hi(D_801D9E34)
/* 20184C 801DEC5C 24849E34 */  addiu       $a0, $a0, %lo(D_801D9E34)
/* 201850 801DEC60 0C044722 */  jal         func_80111C88
/* 201854 801DEC64 8DE50000 */   lw         $a1, 0x0($t7)
/* 201858 801DEC68 0C0447B3 */  jal         func_80111ECC
/* 20185C 801DEC6C 00402025 */   move       $a0, $v0
/* 201860 801DEC70 0C044054 */  jal         func_80110150
/* 201864 801DEC74 27A40018 */   addiu      $a0, $sp, 0x18
/* 201868 801DEC78 10400007 */  beqz        $v0, .L801DEC98
/* 20186C 801DEC7C 8FA40024 */   lw         $a0, 0x24($sp)
/* 201870 801DEC80 93A50018 */  lbu         $a1, 0x18($sp)
/* 201874 801DEC84 93A60019 */  lbu         $a2, 0x19($sp)
/* 201878 801DEC88 0C05A50C */  jal         func_80169430_ovl3
/* 20187C 801DEC8C 2407000F */   addiu      $a3, $zero, 0xF
/* 201880 801DEC90 10000002 */  b           .L801DEC9C
/* 201884 801DEC94 24020001 */   addiu      $v0, $zero, 0x1
.L801DEC98:
/* 201888 801DEC98 00001025 */  move        $v0, $zero
.L801DEC9C:
/* 20188C 801DEC9C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 201890 801DECA0 27BD0038 */  addiu       $sp, $sp, 0x38
/* 201894 801DECA4 03E00008 */  jr          $ra
/* 201898 801DECA8 00000000 */   nop
.type func_801DEC34_ovl14, @function
.size func_801DEC34_ovl14, . - func_801DEC34_ovl14
