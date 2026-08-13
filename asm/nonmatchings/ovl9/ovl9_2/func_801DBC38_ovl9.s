nonmatching func_801DBC38_ovl9, 0xB8

glabel func_801DBC38_ovl9
    /* 189C88 801DBC38 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 189C8C 801DBC3C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 189C90 801DBC40 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 189C94 801DBC44 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 189C98 801DBC48 AFA40038 */  sw         $a0, 0x38($sp)
    /* 189C9C 801DBC4C 8DC60000 */  lw         $a2, 0x0($t6)
    /* 189CA0 801DBC50 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 189CA4 801DBC54 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
    /* 189CA8 801DBC58 00061880 */  sll        $v1, $a2, 2
    /* 189CAC 801DBC5C 00E33821 */  addu       $a3, $a3, $v1
    /* 189CB0 801DBC60 8CE71B50 */  lw         $a3, %lo(D_800E1B50)($a3)
    /* 189CB4 801DBC64 01E37821 */  addu       $t7, $t7, $v1
    /* 189CB8 801DBC68 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
    /* 189CBC 801DBC6C 8CE80084 */  lw         $t0, 0x84($a3)
    /* 189CC0 801DBC70 27A4002C */  addiu      $a0, $sp, 0x2C
    /* 189CC4 801DBC74 8DE50008 */  lw         $a1, 0x8($t7)
    /* 189CC8 801DBC78 0C02C8D0 */  jal        func_800B2340
    /* 189CCC 801DBC7C AFA80024 */   sw        $t0, 0x24($sp)
    /* 189CD0 801DBC80 8FA80024 */  lw         $t0, 0x24($sp)
    /* 189CD4 801DBC84 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 189CD8 801DBC88 1100000A */  beqz       $t0, .L801DBCB4_ovl9
    /* 189CDC 801DBC8C 00000000 */   nop
    /* 189CE0 801DBC90 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 189CE4 801DBC94 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 189CE8 801DBC98 C7A40030 */  lwc1       $f4, 0x30($sp)
    /* 189CEC 801DBC9C 8F190000 */  lw         $t9, 0x0($t8)
    /* 189CF0 801DBCA0 00194880 */  sll        $t1, $t9, 2
    /* 189CF4 801DBCA4 00290821 */  addu       $at, $at, $t1
    /* 189CF8 801DBCA8 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 189CFC 801DBCAC 46062201 */  sub.s      $f8, $f4, $f6
    /* 189D00 801DBCB0 E5080018 */  swc1       $f8, 0x18($t0)
  .L801DBCB4_ovl9:
    /* 189D04 801DBCB4 0C06835D */  jal        func_801A0D74_ovl7
    /* 189D08 801DBCB8 8FA40038 */   lw        $a0, 0x38($sp)
    /* 189D0C 801DBCBC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 189D10 801DBCC0 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 189D14 801DBCC4 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* 189D18 801DBCC8 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 189D1C 801DBCCC 000B6080 */  sll        $t4, $t3, 2
    /* 189D20 801DBCD0 01AC6821 */  addu       $t5, $t5, $t4
    /* 189D24 801DBCD4 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* 189D28 801DBCD8 0C067D04 */  jal        func_8019F410_ovl7
    /* 189D2C 801DBCDC 8DA40008 */   lw        $a0, 0x8($t5)
    /* 189D30 801DBCE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 189D34 801DBCE4 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 189D38 801DBCE8 03E00008 */  jr         $ra
    /* 189D3C 801DBCEC 00000000 */   nop
endlabel func_801DBC38_ovl9
.size func_801DBC38_ovl9, . - func_801DBC38_ovl9
