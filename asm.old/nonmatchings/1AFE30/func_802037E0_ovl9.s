glabel func_802037E0_ovl9
/* 1B1830 802037E0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1B1834 802037E4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1B1838 802037E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B183C 802037EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B1840 802037F0 8DC30000 */  lw         $v1, 0x0($t6)
/* 1B1844 802037F4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B1848 802037F8 44802000 */  mtc1       $zero, $f4
/* 1B184C 802037FC 00031880 */  sll        $v1, $v1, 2
/* 1B1850 80203800 00230821 */  addu       $at, $at, $v1
/* 1B1854 80203804 C4203210 */  lwc1       $f0, %lo(D_800E3210)($at)
/* 1B1858 80203808 3C0F800E */  lui        $t7, %hi(D_800E3750)
/* 1B185C 8020380C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B1860 80203810 4604003C */  c.lt.s     $f0, $f4
/* 1B1864 80203814 25EF3750 */  addiu      $t7, $t7, %lo(D_800E3750)
/* 1B1868 80203818 00230821 */  addu       $at, $at, $v1
/* 1B186C 8020381C 006F1021 */  addu       $v0, $v1, $t7
/* 1B1870 80203820 45020004 */  bc1fl      .L80203834_ovl9
/* 1B1874 80203824 46000086 */   mov.s     $f2, $f0
/* 1B1878 80203828 10000002 */  b          .L80203834_ovl9
/* 1B187C 8020382C 46000087 */   neg.s     $f2, $f0
/* 1B1880 80203830 46000086 */  mov.s      $f2, $f0
.L80203834_ovl9:
/* 1B1884 80203834 C4263C90 */  lwc1       $f6, %lo(D_800E3C90)($at)
/* 1B1888 80203838 4602303E */  c.le.s     $f6, $f2
/* 1B188C 8020383C 00000000 */  nop
/* 1B1890 80203840 45000004 */  bc1f       .L80203854_ovl9
/* 1B1894 80203844 00000000 */   nop
/* 1B1898 80203848 C4480000 */  lwc1       $f8, 0x0($v0)
/* 1B189C 8020384C 46004287 */  neg.s      $f10, $f8
/* 1B18A0 80203850 E44A0000 */  swc1       $f10, 0x0($v0)
.L80203854_ovl9:
/* 1B18A4 80203854 0C066D09 */  jal        func_8019B424_ovl7
/* 1B18A8 80203858 00000000 */   nop
/* 1B18AC 8020385C 0C080D63 */  jal        func_8020358C_ovl9
/* 1B18B0 80203860 00000000 */   nop
/* 1B18B4 80203864 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B18B8 80203868 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B18BC 8020386C 03E00008 */  jr         $ra
/* 1B18C0 80203870 00000000 */   nop
