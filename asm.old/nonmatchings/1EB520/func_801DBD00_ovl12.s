glabel func_801DBD00_ovl12
/* 1EC040 801DBD00 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1EC044 801DBD04 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1EC048 801DBD08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EC04C 801DBD0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EC050 801DBD10 8DC20000 */  lw         $v0, 0x0($t6)
glabel func_801DBD14_ovl9
/* 1EC054 801DBD14 3C0F800F */  lui        $t7, %hi(D_800EC2E0)
/* 1EC058 801DBD18 3C18800F */  lui        $t8, %hi(D_800E9720)
/* 1EC05C 801DBD1C 00021080 */  sll        $v0, $v0, 2
/* 1EC060 801DBD20 01E27821 */  addu       $t7, $t7, $v0
/* 1EC064 801DBD24 8DEFC2E0 */  lw         $t7, %lo(D_800EC2E0)($t7)
.L801DBD28_ovl17:
/* 1EC068 801DBD28 27189720 */  addiu      $t8, $t8, %lo(D_800E9720)
/* 1EC06C 801DBD2C 00581821 */  addu       $v1, $v0, $t8
.L801DBD30_ovl17:
/* 1EC070 801DBD30 51E0001A */  beql       $t7, $zero, .L801DBD9C_ovl17
/* 1EC074 801DBD34 8FBF0014 */   lw        $ra, 0x14($sp)
glabel func_801DBD38_ovl10
/* 1EC078 801DBD38 8C640000 */  lw         $a0, 0x0($v1)
/* 1EC07C 801DBD3C 54800015 */  bnel       $a0, $zero, .L801DBD94_ovl12
/* 1EC080 801DBD40 248FFFFF */   addiu     $t7, $a0, -0x1
/* 1EC084 801DBD44 0C076DCB */  jal        func_801DB72C_ovl12
.L801DBD48_ovl15:
/* 1EC088 801DBD48 00000000 */   nop
/* 1EC08C 801DBD4C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L801DBD50_ovl17:
/* 1EC090 801DBD50 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1EC094 801DBD54 3C01800F */  lui        $at, %hi(D_800E9720)
glabel func_801DBD58_ovl11
/* 1EC098 801DBD58 2419000F */  addiu      $t9, $zero, 0xF
/* 1EC09C 801DBD5C 8C480000 */  lw         $t0, 0x0($v0)
/* 1EC0A0 801DBD60 3C0C800F */  lui        $t4, %hi(D_800EC2E0)
/* 1EC0A4 801DBD64 258CC2E0 */  addiu      $t4, $t4, %lo(D_800EC2E0)
/* 1EC0A8 801DBD68 00084880 */  sll        $t1, $t0, 2
.L801DBD6C_ovl14:
/* 1EC0AC 801DBD6C 00290821 */  addu       $at, $at, $t1
/* 1EC0B0 801DBD70 AC399720 */  sw         $t9, %lo(D_800E9720)($at)
.L801DBD74_ovl15:
/* 1EC0B4 801DBD74 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1EC0B8 801DBD78 000A5880 */  sll        $t3, $t2, 2
/* 1EC0BC 801DBD7C 016C1821 */  addu       $v1, $t3, $t4
/* 1EC0C0 801DBD80 8C6D0000 */  lw         $t5, 0x0($v1)
/* 1EC0C4 801DBD84 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 1EC0C8 801DBD88 10000003 */  b          .L801DBD98_ovl17
/* 1EC0CC 801DBD8C AC6E0000 */   sw        $t6, 0x0($v1)
/* 1EC0D0 801DBD90 248FFFFF */  addiu      $t7, $a0, -0x1
.L801DBD94_ovl12:
/* 1EC0D4 801DBD94 AC6F0000 */  sw         $t7, 0x0($v1)
.L801DBD98_ovl17:
/* 1EC0D8 801DBD98 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DBD9C_ovl17:
/* 1EC0DC 801DBD9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EC0E0 801DBDA0 03E00008 */  jr         $ra
/* 1EC0E4 801DBDA4 00000000 */   nop
