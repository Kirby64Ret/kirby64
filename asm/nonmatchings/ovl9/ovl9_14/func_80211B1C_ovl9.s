nonmatching func_80211B1C_ovl9, 0xD4

glabel func_80211B1C_ovl9
    /* 1BFB6C 80211B1C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1BFB70 80211B20 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1BFB74 80211B24 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1BFB78 80211B28 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1BFB7C 80211B2C 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1BFB80 80211B30 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* 1BFB84 80211B34 3C0F800E */  lui        $t7, %hi(gEntityFuncListIDArray)
    /* 1BFB88 80211B38 00021080 */  sll        $v0, $v0, 2
    /* 1BFB8C 80211B3C 3C05800E */  lui        $a1, %hi(D_800E1B50)
    /* 1BFB90 80211B40 00621821 */  addu       $v1, $v1, $v0
    /* 1BFB94 80211B44 01E27821 */  addu       $t7, $t7, $v0
    /* 1BFB98 80211B48 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
    /* 1BFB9C 80211B4C 8DEFDC50 */  lw         $t7, %lo(gEntityFuncListIDArray)($t7)
    /* 1BFBA0 80211B50 00A22821 */  addu       $a1, $a1, $v0
    /* 1BFBA4 80211B54 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
    /* 1BFBA8 80211B58 24010003 */  addiu      $at, $zero, 0x3
    /* 1BFBAC 80211B5C 8C67000C */  lw         $a3, 0xC($v1)
    /* 1BFBB0 80211B60 8C680008 */  lw         $t0, 0x8($v1)
    /* 1BFBB4 80211B64 11E10008 */  beq        $t7, $at, .L80211B88_ovl9
    /* 1BFBB8 80211B68 8CA60084 */   lw        $a2, 0x84($a1)
    /* 1BFBBC 80211B6C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 1BFBC0 80211B70 44813000 */  mtc1       $at, $f6
    /* 1BFBC4 80211B74 C4E40020 */  lwc1       $f4, 0x20($a3)
    /* 1BFBC8 80211B78 46062202 */  mul.s      $f8, $f4, $f6
    /* 1BFBCC 80211B7C E4C80014 */  swc1       $f8, 0x14($a2)
    /* 1BFBD0 80211B80 C50A0020 */  lwc1       $f10, 0x20($t0)
    /* 1BFBD4 80211B84 E4CA0018 */  swc1       $f10, 0x18($a2)
  .L80211B88_ovl9:
    /* 1BFBD8 80211B88 0C06835D */  jal        func_801A0D74_ovl7
    /* 1BFBDC 80211B8C 00000000 */   nop
    /* 1BFBE0 80211B90 44829000 */  mtc1       $v0, $f18
    /* 1BFBE4 80211B94 44808000 */  mtc1       $zero, $f16
    /* 1BFBE8 80211B98 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1BFBEC 80211B9C 46809120 */  cvt.s.w    $f4, $f18
    /* 1BFBF0 80211BA0 46048032 */  c.eq.s     $f16, $f4
    /* 1BFBF4 80211BA4 00000000 */  nop
    /* 1BFBF8 80211BA8 4500000B */  bc1f       .L80211BD8_ovl9
    /* 1BFBFC 80211BAC 00000000 */   nop
    /* 1BFC00 80211BB0 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1BFC04 80211BB4 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 1BFC08 80211BB8 3C068022 */  lui        $a2, %hi(D_8021CB88_ovl9)
    /* 1BFC0C 80211BBC 8F190000 */  lw         $t9, 0x0($t8)
    /* 1BFC10 80211BC0 24C6CB88 */  addiu      $a2, $a2, %lo(D_8021CB88_ovl9)
    /* 1BFC14 80211BC4 24050006 */  addiu      $a1, $zero, 0x6
    /* 1BFC18 80211BC8 00194880 */  sll        $t1, $t9, 2
    /* 1BFC1C 80211BCC 00892021 */  addu       $a0, $a0, $t1
    /* 1BFC20 80211BD0 0C02911F */  jal        utilFuncTableJump
    /* 1BFC24 80211BD4 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
  .L80211BD8_ovl9:
    /* 1BFC28 80211BD8 0C08485F */  jal        func_8021217C_ovl9
    /* 1BFC2C 80211BDC 00000000 */   nop
    /* 1BFC30 80211BE0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1BFC34 80211BE4 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1BFC38 80211BE8 03E00008 */  jr         $ra
    /* 1BFC3C 80211BEC 00000000 */   nop
endlabel func_80211B1C_ovl9
.size func_80211B1C_ovl9, . - func_80211B1C_ovl9
