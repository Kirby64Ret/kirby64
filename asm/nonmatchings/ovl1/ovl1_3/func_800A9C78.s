nonmatching func_800A9C78, 0xEC

glabel func_800A9C78
    /* 51EC8 800A9C78 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 51ECC 800A9C7C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 51ED0 800A9C80 AFA40030 */  sw         $a0, 0x30($sp)
    /* 51ED4 800A9C84 0C02A53D */  jal        func_800A94F4
    /* 51ED8 800A9C88 AFA50034 */   sw        $a1, 0x34($sp)
    /* 51EDC 800A9C8C 8C470004 */  lw         $a3, 0x4($v0)
    /* 51EE0 800A9C90 8FA40034 */  lw         $a0, 0x34($sp)
    /* 51EE4 800A9C94 00403025 */  or         $a2, $v0, $zero
    /* 51EE8 800A9C98 10E00017 */  beqz       $a3, .L800A9CF8
    /* 51EEC 800A9C9C 00041880 */   sll       $v1, $a0, 2
    /* 51EF0 800A9CA0 3C0E800E */  lui        $t6, %hi(D_800DF850)
    /* 51EF4 800A9CA4 25CEF850 */  addiu      $t6, $t6, %lo(D_800DF850)
    /* 51EF8 800A9CA8 006E2821 */  addu       $a1, $v1, $t6
    /* 51EFC 800A9CAC 8CA20000 */  lw         $v0, 0x0($a1)
    /* 51F00 800A9CB0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 51F04 800A9CB4 1041000A */  beq        $v0, $at, .L800A9CE0
    /* 51F08 800A9CB8 34440002 */   ori       $a0, $v0, 0x2
    /* 51F0C 800A9CBC AFA30020 */  sw         $v1, 0x20($sp)
    /* 51F10 800A9CC0 AFA5001C */  sw         $a1, 0x1C($sp)
    /* 51F14 800A9CC4 AFA60024 */  sw         $a2, 0x24($sp)
    /* 51F18 800A9CC8 0C02A15E */  jal        func_800A8578
    /* 51F1C 800A9CCC AFA7002C */   sw        $a3, 0x2C($sp)
    /* 51F20 800A9CD0 8FA30020 */  lw         $v1, 0x20($sp)
    /* 51F24 800A9CD4 8FA5001C */  lw         $a1, 0x1C($sp)
    /* 51F28 800A9CD8 8FA60024 */  lw         $a2, 0x24($sp)
    /* 51F2C 800A9CDC 8FA7002C */  lw         $a3, 0x2C($sp)
  .L800A9CE0:
    /* 51F30 800A9CE0 8FAF0030 */  lw         $t7, 0x30($sp)
    /* 51F34 800A9CE4 3C01800E */  lui        $at, %hi(D_800E0110)
    /* 51F38 800A9CE8 ACA60000 */  sw         $a2, 0x0($a1)
    /* 51F3C 800A9CEC 00230821 */  addu       $at, $at, $v1
    /* 51F40 800A9CF0 10000017 */  b          .L800A9D50
    /* 51F44 800A9CF4 AC2F0110 */   sw        $t7, %lo(D_800E0110)($at)
  .L800A9CF8:
    /* 51F48 800A9CF8 3C18800E */  lui        $t8, %hi(D_800DF690)
    /* 51F4C 800A9CFC 2718F690 */  addiu      $t8, $t8, %lo(D_800DF690)
    /* 51F50 800A9D00 00041880 */  sll        $v1, $a0, 2
    /* 51F54 800A9D04 00782821 */  addu       $a1, $v1, $t8
    /* 51F58 800A9D08 8CA20000 */  lw         $v0, 0x0($a1)
    /* 51F5C 800A9D0C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 51F60 800A9D10 1041000A */  beq        $v0, $at, .L800A9D3C
    /* 51F64 800A9D14 34440002 */   ori       $a0, $v0, 0x2
    /* 51F68 800A9D18 AFA30020 */  sw         $v1, 0x20($sp)
    /* 51F6C 800A9D1C AFA5001C */  sw         $a1, 0x1C($sp)
    /* 51F70 800A9D20 AFA60024 */  sw         $a2, 0x24($sp)
    /* 51F74 800A9D24 0C02A15E */  jal        func_800A8578
    /* 51F78 800A9D28 AFA7002C */   sw        $a3, 0x2C($sp)
    /* 51F7C 800A9D2C 8FA30020 */  lw         $v1, 0x20($sp)
    /* 51F80 800A9D30 8FA5001C */  lw         $a1, 0x1C($sp)
    /* 51F84 800A9D34 8FA60024 */  lw         $a2, 0x24($sp)
    /* 51F88 800A9D38 8FA7002C */  lw         $a3, 0x2C($sp)
  .L800A9D3C:
    /* 51F8C 800A9D3C 8FB90030 */  lw         $t9, 0x30($sp)
    /* 51F90 800A9D40 3C01800E */  lui        $at, %hi(D_800DFF50)
    /* 51F94 800A9D44 ACA60000 */  sw         $a2, 0x0($a1)
    /* 51F98 800A9D48 00230821 */  addu       $at, $at, $v1
    /* 51F9C 800A9D4C AC39FF50 */  sw         $t9, %lo(D_800DFF50)($at)
  .L800A9D50:
    /* 51FA0 800A9D50 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 51FA4 800A9D54 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 51FA8 800A9D58 00E01025 */  or         $v0, $a3, $zero
    /* 51FAC 800A9D5C 03E00008 */  jr         $ra
    /* 51FB0 800A9D60 00000000 */   nop
endlabel func_800A9C78
.size func_800A9C78, . - func_800A9C78
