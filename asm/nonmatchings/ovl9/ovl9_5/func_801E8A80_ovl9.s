nonmatching func_801E8A80_ovl9, 0x1FC

glabel func_801E8A80_ovl9
    /* 196AD0 801E8A80 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 196AD4 801E8A84 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* 196AD8 801E8A88 8CC20000 */  lw         $v0, 0x0($a2)
    /* 196ADC 801E8A8C AFA40000 */  sw         $a0, 0x0($sp)
    /* 196AE0 801E8A90 3C0E800B */  lui        $t6, %hi(func_800B6E84)
    /* 196AE4 801E8A94 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 196AE8 801E8A98 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 196AEC 801E8A9C 25CE6E84 */  addiu      $t6, $t6, %lo(func_800B6E84)
    /* 196AF0 801E8AA0 000FC080 */  sll        $t8, $t7, 2
    /* 196AF4 801E8AA4 00380821 */  addu       $at, $at, $t8
    /* 196AF8 801E8AA8 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
    /* 196AFC 801E8AAC 8C590000 */  lw         $t9, 0x0($v0)
    /* 196B00 801E8AB0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 196B04 801E8AB4 44812000 */  mtc1       $at, $f4
    /* 196B08 801E8AB8 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 196B0C 801E8ABC 00194880 */  sll        $t1, $t9, 2
    /* 196B10 801E8AC0 00290821 */  addu       $at, $at, $t1
    /* 196B14 801E8AC4 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
    /* 196B18 801E8AC8 8C440000 */  lw         $a0, 0x0($v0)
    /* 196B1C 801E8ACC 3C03800E */  lui        $v1, %hi(gEntitiesAngleZArray)
    /* 196B20 801E8AD0 24634390 */  addiu      $v1, $v1, %lo(gEntitiesAngleZArray)
    /* 196B24 801E8AD4 00042080 */  sll        $a0, $a0, 2
    /* 196B28 801E8AD8 00645021 */  addu       $t2, $v1, $a0
    /* 196B2C 801E8ADC C5460000 */  lwc1       $f6, 0x0($t2)
    /* 196B30 801E8AE0 3C07800F */  lui        $a3, %hi(D_800EAA60)
    /* 196B34 801E8AE4 24E7AA60 */  addiu      $a3, $a3, %lo(D_800EAA60)
    /* 196B38 801E8AE8 00E45821 */  addu       $t3, $a3, $a0
    /* 196B3C 801E8AEC E5660000 */  swc1       $f6, 0x0($t3)
    /* 196B40 801E8AF0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 196B44 801E8AF4 44801000 */  mtc1       $zero, $f2
    /* 196B48 801E8AF8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 196B4C 801E8AFC 000C6880 */  sll        $t5, $t4, 2
    /* 196B50 801E8B00 006D7821 */  addu       $t7, $v1, $t5
    /* 196B54 801E8B04 E5E20000 */  swc1       $f2, 0x0($t7)
    /* 196B58 801E8B08 8C440000 */  lw         $a0, 0x0($v0)
    /* 196B5C 801E8B0C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 196B60 801E8B10 00042080 */  sll        $a0, $a0, 2
    /* 196B64 801E8B14 00647021 */  addu       $t6, $v1, $a0
    /* 196B68 801E8B18 C5C00000 */  lwc1       $f0, 0x0($t6)
    /* 196B6C 801E8B1C 00240821 */  addu       $at, $at, $a0
    /* 196B70 801E8B20 3C03800F */  lui        $v1, %hi(D_800E98E0)
    /* 196B74 801E8B24 E42041D0 */  swc1       $f0, %lo(gEntitiesAngleYArray)($at)
    /* 196B78 801E8B28 8C580000 */  lw         $t8, 0x0($v0)
    /* 196B7C 801E8B2C 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 196B80 801E8B30 246398E0 */  addiu      $v1, $v1, %lo(D_800E98E0)
    /* 196B84 801E8B34 0018C880 */  sll        $t9, $t8, 2
    /* 196B88 801E8B38 00390821 */  addu       $at, $at, $t9
    /* 196B8C 801E8B3C E4204010 */  swc1       $f0, %lo(gEntitiesAngleXArray)($at)
    /* 196B90 801E8B40 8C440000 */  lw         $a0, 0x0($v0)
    /* 196B94 801E8B44 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 196B98 801E8B48 240E0001 */  addiu      $t6, $zero, 0x1
    /* 196B9C 801E8B4C 00042080 */  sll        $a0, $a0, 2
    /* 196BA0 801E8B50 00E44821 */  addu       $t1, $a3, $a0
    /* 196BA4 801E8B54 C5280000 */  lwc1       $f8, 0x0($t1)
    /* 196BA8 801E8B58 00646021 */  addu       $t4, $v1, $a0
    /* 196BAC 801E8B5C 46081032 */  c.eq.s     $f2, $f8
    /* 196BB0 801E8B60 00000000 */  nop
    /* 196BB4 801E8B64 45020007 */  bc1fl      .L801E8B84_ovl9
    /* 196BB8 801E8B68 AD800000 */   sw        $zero, 0x0($t4)
    /* 196BBC 801E8B6C 3C03800F */  lui        $v1, %hi(D_800E98E0)
    /* 196BC0 801E8B70 246398E0 */  addiu      $v1, $v1, %lo(D_800E98E0)
    /* 196BC4 801E8B74 00645821 */  addu       $t3, $v1, $a0
    /* 196BC8 801E8B78 10000002 */  b          .L801E8B84_ovl9
    /* 196BCC 801E8B7C AD6A0000 */   sw        $t2, 0x0($t3)
    /* 196BD0 801E8B80 AD800000 */  sw         $zero, 0x0($t4)
  .L801E8B84_ovl9:
    /* 196BD4 801E8B84 8C440000 */  lw         $a0, 0x0($v0)
    /* 196BD8 801E8B88 00042080 */  sll        $a0, $a0, 2
    /* 196BDC 801E8B8C 00646821 */  addu       $t5, $v1, $a0
    /* 196BE0 801E8B90 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 196BE4 801E8B94 00240821 */  addu       $at, $at, $a0
    /* 196BE8 801E8B98 11E00005 */  beqz       $t7, .L801E8BB0_ovl9
    /* 196BEC 801E8B9C 00000000 */   nop
    /* 196BF0 801E8BA0 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 196BF4 801E8BA4 00240821 */  addu       $at, $at, $a0
    /* 196BF8 801E8BA8 10000002 */  b          .L801E8BB4_ovl9
    /* 196BFC 801E8BAC AC2E8920 */   sw        $t6, %lo(D_800E8920)($at)
  .L801E8BB0_ovl9:
    /* 196C00 801E8BB0 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
  .L801E8BB4_ovl9:
    /* 196C04 801E8BB4 8C430000 */  lw         $v1, 0x0($v0)
    /* 196C08 801E8BB8 3C18800E */  lui        $t8, %hi(D_800E7880)
    /* 196C0C 801E8BBC 3C018022 */  lui        $at, %hi(D_8021C014_ovl9)
    /* 196C10 801E8BC0 0303C021 */  addu       $t8, $t8, $v1
    /* 196C14 801E8BC4 93187880 */  lbu        $t8, %lo(D_800E7880)($t8)
    /* 196C18 801E8BC8 00034880 */  sll        $t1, $v1, 2
    /* 196C1C 801E8BCC 3C08800E */  lui        $t0, %hi(D_800DFBD0)
    /* 196C20 801E8BD0 0018C880 */  sll        $t9, $t8, 2
    /* 196C24 801E8BD4 00390821 */  addu       $at, $at, $t9
    /* 196C28 801E8BD8 C420C014 */  lwc1       $f0, %lo(D_8021C014_ovl9)($at)
    /* 196C2C 801E8BDC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 196C30 801E8BE0 00290821 */  addu       $at, $at, $t1
    /* 196C34 801E8BE4 E420A6E0 */  swc1       $f0, %lo(D_800EA6E0)($at)
    /* 196C38 801E8BE8 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 196C3C 801E8BEC 2508FBD0 */  addiu      $t0, $t0, %lo(D_800DFBD0)
    /* 196C40 801E8BF0 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* 196C44 801E8BF4 000A5880 */  sll        $t3, $t2, 2
    /* 196C48 801E8BF8 010B6021 */  addu       $t4, $t0, $t3
    /* 196C4C 801E8BFC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 196C50 801E8C00 8DAF0008 */  lw         $t7, 0x8($t5)
    /* 196C54 801E8C04 E5E00030 */  swc1       $f0, 0x30($t7)
    /* 196C58 801E8C08 8CC20000 */  lw         $v0, 0x0($a2)
    /* 196C5C 801E8C0C 8C440000 */  lw         $a0, 0x0($v0)
    /* 196C60 801E8C10 00042080 */  sll        $a0, $a0, 2
    /* 196C64 801E8C14 00E47021 */  addu       $t6, $a3, $a0
    /* 196C68 801E8C18 C5CA0000 */  lwc1       $f10, 0x0($t6)
    /* 196C6C 801E8C1C 00240821 */  addu       $at, $at, $a0
    /* 196C70 801E8C20 46005400 */  add.s      $f16, $f10, $f0
    /* 196C74 801E8C24 E430A8A0 */  swc1       $f16, %lo(D_800EA8A0)($at)
    /* 196C78 801E8C28 8C580000 */  lw         $t8, 0x0($v0)
    /* 196C7C 801E8C2C 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 196C80 801E8C30 0018C880 */  sll        $t9, $t8, 2
    /* 196C84 801E8C34 01194821 */  addu       $t1, $t0, $t9
    /* 196C88 801E8C38 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 196C8C 801E8C3C 8D4B0008 */  lw         $t3, 0x8($t2)
    /* 196C90 801E8C40 E5620038 */  swc1       $f2, 0x38($t3)
    /* 196C94 801E8C44 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 196C98 801E8C48 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 196C9C 801E8C4C 000D7880 */  sll        $t7, $t5, 2
    /* 196CA0 801E8C50 010F7021 */  addu       $t6, $t0, $t7
    /* 196CA4 801E8C54 8DD80000 */  lw         $t8, 0x0($t6)
    /* 196CA8 801E8C58 8F050008 */  lw         $a1, 0x8($t8)
    /* 196CAC 801E8C5C C4B20038 */  lwc1       $f18, 0x38($a1)
    /* 196CB0 801E8C60 E4B20034 */  swc1       $f18, 0x34($a1)
    /* 196CB4 801E8C64 8CD90000 */  lw         $t9, 0x0($a2)
    /* 196CB8 801E8C68 8F290000 */  lw         $t1, 0x0($t9)
    /* 196CBC 801E8C6C 00095080 */  sll        $t2, $t1, 2
    /* 196CC0 801E8C70 002A0821 */  addu       $at, $at, $t2
    /* 196CC4 801E8C74 03E00008 */  jr         $ra
    /* 196CC8 801E8C78 AC20DC50 */   sw        $zero, %lo(gEntityFuncListIDArray)($at)
endlabel func_801E8A80_ovl9
.size func_801E8A80_ovl9, . - func_801E8A80_ovl9
