nonmatching func_80023C48, 0x68

glabel func_80023C48
    /* 24848 80023C48 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 2484C 80023C4C AFBF001C */  sw         $ra, 0x1C($sp)
    /* 24850 80023C50 AFA40030 */  sw         $a0, 0x30($sp)
    /* 24854 80023C54 AFB10018 */  sw         $s1, 0x18($sp)
    /* 24858 80023C58 AFB00014 */  sw         $s0, 0x14($sp)
    /* 2485C 80023C5C 0C00B590 */  jal        osSetIntMask
    /* 24860 80023C60 24040001 */   addiu     $a0, $zero, 0x1
    /* 24864 80023C64 AFA20024 */  sw         $v0, 0x24($sp)
    /* 24868 80023C68 0C008ECD */  jal        func_80023B34
    /* 2486C 80023C6C 8FB10030 */   lw        $s1, 0x30($sp)
    /* 24870 80023C70 10400006 */  beqz       $v0, .L80023C8C
    /* 24874 80023C74 00401825 */   or        $v1, $v0, $zero
    /* 24878 80023C78 3C0E8009 */  lui        $t6, %hi(D_80097920)
    /* 2487C 80023C7C 8DCE7920 */  lw         $t6, %lo(D_80097920)($t6)
    /* 24880 80023C80 3C018009 */  lui        $at, %hi(D_80097920)
    /* 24884 80023C84 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 24888 80023C88 AC227920 */  sw         $v0, %lo(D_80097920)($at)
  .L80023C8C:
    /* 2488C 80023C8C 8FA40024 */  lw         $a0, 0x24($sp)
    /* 24890 80023C90 0C00B590 */  jal        osSetIntMask
    /* 24894 80023C94 AFA3002C */   sw        $v1, 0x2C($sp)
    /* 24898 80023C98 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2489C 80023C9C 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 248A0 80023CA0 8FB00014 */  lw         $s0, 0x14($sp)
    /* 248A4 80023CA4 8FB10018 */  lw         $s1, 0x18($sp)
    /* 248A8 80023CA8 03E00008 */  jr         $ra
    /* 248AC 80023CAC 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_80023C48
.size func_80023C48, . - func_80023C48
