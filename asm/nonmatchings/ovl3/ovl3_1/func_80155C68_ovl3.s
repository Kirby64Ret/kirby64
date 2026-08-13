nonmatching func_80155C68_ovl3, 0xE8

glabel func_80155C68_ovl3
    /* B66A8 80155C68 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* B66AC 80155C6C 2463A7C4 */  addiu      $v1, $v1, %lo(omCurrentObj)
    /* B66B0 80155C70 8C6E0000 */  lw         $t6, 0x0($v1)
    /* B66B4 80155C74 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* B66B8 80155C78 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B66BC 80155C7C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* B66C0 80155C80 3C06800E */  lui        $a2, %hi(D_800E0490)
    /* B66C4 80155C84 00001025 */  or         $v0, $zero, $zero
    /* B66C8 80155C88 000FC080 */  sll        $t8, $t7, 2
    /* B66CC 80155C8C 00D83021 */  addu       $a2, $a2, $t8
    /* B66D0 80155C90 8CC60490 */  lw         $a2, %lo(D_800E0490)($a2)
    /* B66D4 80155C94 10C0002A */  beqz       $a2, .L80155D40_ovl3
    /* B66D8 80155C98 00000000 */   nop
    /* B66DC 80155C9C 8CD90000 */  lw         $t9, 0x0($a2)
    /* B66E0 80155CA0 13200027 */  beqz       $t9, .L80155D40_ovl3
    /* B66E4 80155CA4 AC99001C */   sw        $t9, 0x1C($a0)
    /* B66E8 80155CA8 C4A40000 */  lwc1       $f4, 0x0($a1)
    /* B66EC 80155CAC 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
    /* B66F0 80155CB0 E4840000 */  swc1       $f4, 0x0($a0)
    /* B66F4 80155CB4 C4A60004 */  lwc1       $f6, 0x4($a1)
    /* B66F8 80155CB8 E4860004 */  swc1       $f6, 0x4($a0)
    /* B66FC 80155CBC C4A80008 */  lwc1       $f8, 0x8($a1)
    /* B6700 80155CC0 00002825 */  or         $a1, $zero, $zero
    /* B6704 80155CC4 E4880008 */  swc1       $f8, 0x8($a0)
    /* B6708 80155CC8 8C690000 */  lw         $t1, 0x0($v1)
    /* B670C 80155CCC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* B6710 80155CD0 000A5880 */  sll        $t3, $t2, 2
    /* B6714 80155CD4 002B0821 */  addu       $at, $at, $t3
    /* B6718 80155CD8 C42A2B10 */  lwc1       $f10, %lo(gEntitiesPosXArray)($at)
    /* B671C 80155CDC 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* B6720 80155CE0 E48A000C */  swc1       $f10, 0xC($a0)
    /* B6724 80155CE4 8C6C0000 */  lw         $t4, 0x0($v1)
    /* B6728 80155CE8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* B672C 80155CEC 000D7080 */  sll        $t6, $t5, 2
    /* B6730 80155CF0 002E0821 */  addu       $at, $at, $t6
    /* B6734 80155CF4 C4302CD0 */  lwc1       $f16, %lo(gEntitiesPosYArray)($at)
    /* B6738 80155CF8 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
    /* B673C 80155CFC E4900010 */  swc1       $f16, 0x10($a0)
    /* B6740 80155D00 8C6F0000 */  lw         $t7, 0x0($v1)
    /* B6744 80155D04 8DF80000 */  lw         $t8, 0x0($t7)
    /* B6748 80155D08 0018C880 */  sll        $t9, $t8, 2
    /* B674C 80155D0C 00390821 */  addu       $at, $at, $t9
    /* B6750 80155D10 C4322E90 */  lwc1       $f18, %lo(gEntitiesPosZArray)($at)
    /* B6754 80155D14 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* B6758 80155D18 E4920014 */  swc1       $f18, 0x14($a0)
    /* B675C 80155D1C 8C680000 */  lw         $t0, 0x0($v1)
    /* B6760 80155D20 8D090000 */  lw         $t1, 0x0($t0)
    /* B6764 80155D24 00095080 */  sll        $t2, $t1, 2
    /* B6768 80155D28 002A0821 */  addu       $at, $at, $t2
    /* B676C 80155D2C C42441D0 */  lwc1       $f4, %lo(gEntitiesAngleYArray)($at)
    /* B6770 80155D30 0C046FD3 */  jal        func_8011BF4C
    /* B6774 80155D34 E4840018 */   swc1      $f4, 0x18($a0)
    /* B6778 80155D38 10000002 */  b          .L80155D44_ovl3
    /* B677C 80155D3C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80155D40_ovl3:
    /* B6780 80155D40 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80155D44_ovl3:
    /* B6784 80155D44 27BD0018 */  addiu      $sp, $sp, 0x18
    /* B6788 80155D48 03E00008 */  jr         $ra
    /* B678C 80155D4C 00000000 */   nop
endlabel func_80155C68_ovl3
.size func_80155C68_ovl3, . - func_80155C68_ovl3
