nonmatching func_801F3870_ovl9, 0x12C

glabel func_801F3870_ovl9
    /* 1A18C0 801F3870 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1A18C4 801F3874 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1A18C8 801F3878 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1A18CC 801F387C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1A18D0 801F3880 AFA40038 */  sw         $a0, 0x38($sp)
    /* 1A18D4 801F3884 8DC30000 */  lw         $v1, 0x0($t6)
    /* 1A18D8 801F3888 3C01800E */  lui        $at, %hi(D_800E6690)
    /* 1A18DC 801F388C 44802000 */  mtc1       $zero, $f4
    /* 1A18E0 801F3890 00031880 */  sll        $v1, $v1, 2
    /* 1A18E4 801F3894 00230821 */  addu       $at, $at, $v1
    /* 1A18E8 801F3898 C4266690 */  lwc1       $f6, %lo(D_800E6690)($at)
    /* 1A18EC 801F389C 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 1A18F0 801F38A0 00431021 */  addu       $v0, $v0, $v1
    /* 1A18F4 801F38A4 46062032 */  c.eq.s     $f4, $f6
    /* 1A18F8 801F38A8 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 1A18FC 801F38AC 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* 1A1900 801F38B0 45020015 */  bc1fl      .L801F3908_ovl9
    /* 1A1904 801F38B4 44810000 */   mtc1      $at, $f0
    /* 1A1908 801F38B8 904F003C */  lbu        $t7, 0x3C($v0)
    /* 1A190C 801F38BC 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* 1A1910 801F38C0 55E00008 */  bnel       $t7, $zero, .L801F38E4_ovl9
    /* 1A1914 801F38C4 44810000 */   mtc1      $at, $f0
    /* 1A1918 801F38C8 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
    /* 1A191C 801F38CC 44816000 */  mtc1       $at, $f12
    /* 1A1920 801F38D0 0C0671C7 */  jal        func_8019C71C_ovl7
    /* 1A1924 801F38D4 00000000 */   nop
    /* 1A1928 801F38D8 10000011 */  b          .L801F3920_ovl9
    /* 1A192C 801F38DC 00000000 */   nop
    /* 1A1930 801F38E0 44810000 */  mtc1       $at, $f0
  .L801F38E4_ovl9:
    /* 1A1934 801F38E4 44804000 */  mtc1       $zero, $f8
    /* 1A1938 801F38E8 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1A193C 801F38EC E7A00028 */  swc1       $f0, 0x28($sp)
    /* 1A1940 801F38F0 E7A00030 */  swc1       $f0, 0x30($sp)
    /* 1A1944 801F38F4 0C067211 */  jal        func_8019C844_ovl7
    /* 1A1948 801F38F8 E7A8002C */   swc1      $f8, 0x2C($sp)
    /* 1A194C 801F38FC 10000008 */  b          .L801F3920_ovl9
    /* 1A1950 801F3900 00000000 */   nop
    /* 1A1954 801F3904 44810000 */  mtc1       $at, $f0
  .L801F3908_ovl9:
    /* 1A1958 801F3908 44805000 */  mtc1       $zero, $f10
    /* 1A195C 801F390C 27A40028 */  addiu      $a0, $sp, 0x28
    /* 1A1960 801F3910 E7A00028 */  swc1       $f0, 0x28($sp)
    /* 1A1964 801F3914 E7A00030 */  swc1       $f0, 0x30($sp)
    /* 1A1968 801F3918 0C07CAE0 */  jal        func_801F2B80_ovl9
    /* 1A196C 801F391C E7AA002C */   swc1      $f10, 0x2C($sp)
  .L801F3920_ovl9:
    /* 1A1970 801F3920 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1A1974 801F3924 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1A1978 801F3928 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 1A197C 801F392C 44808000 */  mtc1       $zero, $f16
    /* 1A1980 801F3930 8F030000 */  lw         $v1, 0x0($t8)
    /* 1A1984 801F3934 3C19800E */  lui        $t9, %hi(D_800E3750)
    /* 1A1988 801F3938 27393750 */  addiu      $t9, $t9, %lo(D_800E3750)
    /* 1A198C 801F393C 00031880 */  sll        $v1, $v1, 2
    /* 1A1990 801F3940 00230821 */  addu       $at, $at, $v1
    /* 1A1994 801F3944 C4203210 */  lwc1       $f0, %lo(D_800E3210)($at)
    /* 1A1998 801F3948 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* 1A199C 801F394C 00230821 */  addu       $at, $at, $v1
    /* 1A19A0 801F3950 4610003C */  c.lt.s     $f0, $f16
    /* 1A19A4 801F3954 00791021 */  addu       $v0, $v1, $t9
    /* 1A19A8 801F3958 45020004 */  bc1fl      .L801F396C_ovl9
    /* 1A19AC 801F395C 46000086 */   mov.s     $f2, $f0
    /* 1A19B0 801F3960 10000002 */  b          .L801F396C_ovl9
    /* 1A19B4 801F3964 46000087 */   neg.s     $f2, $f0
    /* 1A19B8 801F3968 46000086 */  mov.s      $f2, $f0
  .L801F396C_ovl9:
    /* 1A19BC 801F396C C4323C90 */  lwc1       $f18, %lo(D_800E3C90)($at)
    /* 1A19C0 801F3970 4602903E */  c.le.s     $f18, $f2
    /* 1A19C4 801F3974 00000000 */  nop
    /* 1A19C8 801F3978 45020005 */  bc1fl      .L801F3990_ovl9
    /* 1A19CC 801F397C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1A19D0 801F3980 C4440000 */  lwc1       $f4, 0x0($v0)
    /* 1A19D4 801F3984 46002187 */  neg.s      $f6, $f4
    /* 1A19D8 801F3988 E4460000 */  swc1       $f6, 0x0($v0)
    /* 1A19DC 801F398C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801F3990_ovl9:
    /* 1A19E0 801F3990 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1A19E4 801F3994 03E00008 */  jr         $ra
    /* 1A19E8 801F3998 00000000 */   nop
endlabel func_801F3870_ovl9
.size func_801F3870_ovl9, . - func_801F3870_ovl9
