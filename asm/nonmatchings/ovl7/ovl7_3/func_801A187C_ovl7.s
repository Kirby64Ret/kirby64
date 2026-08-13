nonmatching func_801A187C_ovl7, 0x2F0

glabel func_801A187C_ovl7
    /* 1478EC 801A187C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1478F0 801A1880 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1478F4 801A1884 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1478F8 801A1888 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1478FC 801A188C 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 147900 801A1890 3C0F800F */  lui        $t7, %hi(D_800E8E60)
    /* 147904 801A1894 3C08800E */  lui        $t0, %hi(D_800E1B50)
    /* 147908 801A1898 000E1080 */  sll        $v0, $t6, 2
    /* 14790C 801A189C 01E27821 */  addu       $t7, $t7, $v0
    /* 147910 801A18A0 8DEF8E60 */  lw         $t7, %lo(D_800E8E60)($t7)
    /* 147914 801A18A4 01024021 */  addu       $t0, $t0, $v0
    /* 147918 801A18A8 24010001 */  addiu      $at, $zero, 0x1
    /* 14791C 801A18AC 00803825 */  or         $a3, $a0, $zero
    /* 147920 801A18B0 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 147924 801A18B4 11E1001F */  beq        $t7, $at, .L801A1934_ovl7
    /* 147928 801A18B8 AFAE001C */   sw        $t6, 0x1C($sp)
    /* 14792C 801A18BC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 147930 801A18C0 00220821 */  addu       $at, $at, $v0
    /* 147934 801A18C4 C42625D0 */  lwc1       $f6, %lo(gEntitiesNextPosXArray)($at)
    /* 147938 801A18C8 C4840004 */  lwc1       $f4, 0x4($a0)
    /* 14793C 801A18CC 44806000 */  mtc1       $zero, $f12
    /* 147940 801A18D0 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 147944 801A18D4 46062001 */  sub.s      $f0, $f4, $f6
    /* 147948 801A18D8 00220821 */  addu       $at, $at, $v0
    /* 14794C 801A18DC C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 147950 801A18E0 C488000C */  lwc1       $f8, 0xC($a0)
    /* 147954 801A18E4 460C0032 */  c.eq.s     $f0, $f12
    /* 147958 801A18E8 8FA4001C */  lw         $a0, 0x1C($sp)
    /* 14795C 801A18EC 460A4081 */  sub.s      $f2, $f8, $f10
    /* 147960 801A18F0 45020006 */  bc1fl      .L801A190C_ovl7
    /* 147964 801A18F4 44050000 */   mfc1      $a1, $f0
    /* 147968 801A18F8 460C1032 */  c.eq.s     $f2, $f12
    /* 14796C 801A18FC 00000000 */  nop
    /* 147970 801A1900 4503000D */  bc1tl      .L801A1938_ovl7
    /* 147974 801A1904 C4F00004 */   lwc1      $f16, 0x4($a3)
    /* 147978 801A1908 44050000 */  mfc1       $a1, $f0
  .L801A190C_ovl7:
    /* 14797C 801A190C 44061000 */  mfc1       $a2, $f2
    /* 147980 801A1910 AFA70030 */  sw         $a3, 0x30($sp)
    /* 147984 801A1914 0C03E1CA */  jal        func_800F8728
    /* 147988 801A1918 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 14798C 801A191C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 147990 801A1920 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 147994 801A1924 8FA70030 */  lw         $a3, 0x30($sp)
    /* 147998 801A1928 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 14799C 801A192C 8CA20000 */  lw         $v0, 0x0($a1)
    /* 1479A0 801A1930 00021080 */  sll        $v0, $v0, 2
  .L801A1934_ovl7:
    /* 1479A4 801A1934 C4F00004 */  lwc1       $f16, 0x4($a3)
  .L801A1938_ovl7:
    /* 1479A8 801A1938 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 1479AC 801A193C 00220821 */  addu       $at, $at, $v0
    /* 1479B0 801A1940 E43025D0 */  swc1       $f16, %lo(gEntitiesNextPosXArray)($at)
    /* 1479B4 801A1944 8CB80000 */  lw         $t8, 0x0($a1)
    /* 1479B8 801A1948 C4F20008 */  lwc1       $f18, 0x8($a3)
    /* 1479BC 801A194C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 1479C0 801A1950 0018C880 */  sll        $t9, $t8, 2
    /* 1479C4 801A1954 00390821 */  addu       $at, $at, $t9
    /* 1479C8 801A1958 E4322790 */  swc1       $f18, %lo(gEntitiesNextPosYArray)($at)
    /* 1479CC 801A195C 8CA90000 */  lw         $t1, 0x0($a1)
    /* 1479D0 801A1960 C4E4000C */  lwc1       $f4, 0xC($a3)
    /* 1479D4 801A1964 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1479D8 801A1968 00095080 */  sll        $t2, $t1, 2
    /* 1479DC 801A196C 002A0821 */  addu       $at, $at, $t2
    /* 1479E0 801A1970 E4242950 */  swc1       $f4, %lo(gEntitiesNextPosZArray)($at)
    /* 1479E4 801A1974 8D030048 */  lw         $v1, 0x48($t0)
    /* 1479E8 801A1978 3C048011 */  lui        $a0, %hi(func_8010C274)
    /* 1479EC 801A197C 2484C274 */  addiu      $a0, $a0, %lo(func_8010C274)
    /* 1479F0 801A1980 10830024 */  beq        $a0, $v1, .L801A1A14_ovl7
    /* 1479F4 801A1984 3C0B8011 */   lui       $t3, %hi(func_8010C184)
    /* 1479F8 801A1988 256BC184 */  addiu      $t3, $t3, %lo(func_8010C184)
    /* 1479FC 801A198C 11630021 */  beq        $t3, $v1, .L801A1A14_ovl7
    /* 147A00 801A1990 3C0C8011 */   lui       $t4, %hi(func_8010B480)
    /* 147A04 801A1994 258CB480 */  addiu      $t4, $t4, %lo(func_8010B480)
    /* 147A08 801A1998 1183001E */  beq        $t4, $v1, .L801A1A14_ovl7
    /* 147A0C 801A199C 3C0D8011 */   lui       $t5, %hi(func_8010B284)
    /* 147A10 801A19A0 25ADB284 */  addiu      $t5, $t5, %lo(func_8010B284)
    /* 147A14 801A19A4 11A3001B */  beq        $t5, $v1, .L801A1A14_ovl7
    /* 147A18 801A19A8 3C0E8011 */   lui       $t6, %hi(func_8010B67C)
    /* 147A1C 801A19AC 25CEB67C */  addiu      $t6, $t6, %lo(func_8010B67C)
    /* 147A20 801A19B0 11C30018 */  beq        $t6, $v1, .L801A1A14_ovl7
    /* 147A24 801A19B4 3C0F8011 */   lui       $t7, %hi(func_8010B860)
    /* 147A28 801A19B8 25EFB860 */  addiu      $t7, $t7, %lo(func_8010B860)
    /* 147A2C 801A19BC 11E30015 */  beq        $t7, $v1, .L801A1A14_ovl7
    /* 147A30 801A19C0 00000000 */   nop
    /* 147A34 801A19C4 8CB80000 */  lw         $t8, 0x0($a1)
    /* 147A38 801A19C8 3C09800F */  lui        $t1, %hi(D_800E8920)
    /* 147A3C 801A19CC 24010001 */  addiu      $at, $zero, 0x1
    /* 147A40 801A19D0 0018C880 */  sll        $t9, $t8, 2
    /* 147A44 801A19D4 01394821 */  addu       $t1, $t1, $t9
    /* 147A48 801A19D8 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
    /* 147A4C 801A19DC 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147A50 801A19E0 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147A54 801A19E4 15210006 */  bne        $t1, $at, .L801A1A00_ovl7
    /* 147A58 801A19E8 00000000 */   nop
    /* 147A5C 801A19EC 8C4A000C */  lw         $t2, 0xC($v0)
    /* 147A60 801A19F0 AD0A0078 */  sw         $t2, 0x78($t0)
    /* 147A64 801A19F4 8C4B0008 */  lw         $t3, 0x8($v0)
    /* 147A68 801A19F8 1000000A */  b          .L801A1A24_ovl7
    /* 147A6C 801A19FC AD0B007C */   sw        $t3, 0x7C($t0)
  .L801A1A00_ovl7:
    /* 147A70 801A1A00 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147A74 801A1A04 AD000078 */  sw         $zero, 0x78($t0)
    /* 147A78 801A1A08 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147A7C 801A1A0C 10000005 */  b          .L801A1A24_ovl7
    /* 147A80 801A1A10 AD00007C */   sw        $zero, 0x7C($t0)
  .L801A1A14_ovl7:
    /* 147A84 801A1A14 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147A88 801A1A18 AD000078 */  sw         $zero, 0x78($t0)
    /* 147A8C 801A1A1C 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147A90 801A1A20 AD00007C */  sw         $zero, 0x7C($t0)
  .L801A1A24_ovl7:
    /* 147A94 801A1A24 8D030048 */  lw         $v1, 0x48($t0)
    /* 147A98 801A1A28 3C0C8011 */  lui        $t4, %hi(func_8010C184)
    /* 147A9C 801A1A2C 258CC184 */  addiu      $t4, $t4, %lo(func_8010C184)
    /* 147AA0 801A1A30 5083004B */  beql       $a0, $v1, .L801A1B60_ovl7
    /* 147AA4 801A1A34 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 147AA8 801A1A38 11830048 */  beq        $t4, $v1, .L801A1B5C_ovl7
    /* 147AAC 801A1A3C 3C0D8011 */   lui       $t5, %hi(func_8010B480)
    /* 147AB0 801A1A40 25ADB480 */  addiu      $t5, $t5, %lo(func_8010B480)
    /* 147AB4 801A1A44 11A30045 */  beq        $t5, $v1, .L801A1B5C_ovl7
    /* 147AB8 801A1A48 3C0E8011 */   lui       $t6, %hi(func_8010B284)
    /* 147ABC 801A1A4C 25CEB284 */  addiu      $t6, $t6, %lo(func_8010B284)
    /* 147AC0 801A1A50 11C30042 */  beq        $t6, $v1, .L801A1B5C_ovl7
    /* 147AC4 801A1A54 3C0F8011 */   lui       $t7, %hi(func_8010B67C)
    /* 147AC8 801A1A58 25EFB67C */  addiu      $t7, $t7, %lo(func_8010B67C)
    /* 147ACC 801A1A5C 11E3003F */  beq        $t7, $v1, .L801A1B5C_ovl7
    /* 147AD0 801A1A60 3C188011 */   lui       $t8, %hi(func_8010B860)
    /* 147AD4 801A1A64 2718B860 */  addiu      $t8, $t8, %lo(func_8010B860)
    /* 147AD8 801A1A68 5303003D */  beql       $t8, $v1, .L801A1B60_ovl7
    /* 147ADC 801A1A6C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 147AE0 801A1A70 AD000044 */  sw         $zero, 0x44($t0)
    /* 147AE4 801A1A74 8C430000 */  lw         $v1, 0x0($v0)
    /* 147AE8 801A1A78 00031CC2 */  srl        $v1, $v1, 19
    /* 147AEC 801A1A7C 30790E00 */  andi       $t9, $v1, 0xE00
    /* 147AF0 801A1A80 5320000C */  beql       $t9, $zero, .L801A1AB4_ovl7
    /* 147AF4 801A1A84 30690007 */   andi      $t1, $v1, 0x7
    /* 147AF8 801A1A88 8C440008 */  lw         $a0, 0x8($v0)
    /* 147AFC 801A1A8C 0C043709 */  jal        func_8010DC24
    /* 147B00 801A1A90 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 147B04 801A1A94 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 147B08 801A1A98 3C038013 */  lui        $v1, %hi(D_8012BCA0)
    /* 147B0C 801A1A9C AD020044 */  sw         $v0, 0x44($t0)
    /* 147B10 801A1AA0 8C63BCA0 */  lw         $v1, %lo(D_8012BCA0)($v1)
    /* 147B14 801A1AA4 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147B18 801A1AA8 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147B1C 801A1AAC 00031CC2 */  srl        $v1, $v1, 19
    /* 147B20 801A1AB0 30690007 */  andi       $t1, $v1, 0x7
  .L801A1AB4_ovl7:
    /* 147B24 801A1AB4 5120000F */  beql       $t1, $zero, .L801A1AF4_ovl7
    /* 147B28 801A1AB8 306B0038 */   andi      $t3, $v1, 0x38
    /* 147B2C 801A1ABC 8D0A0044 */  lw         $t2, 0x44($t0)
    /* 147B30 801A1AC0 5540000C */  bnel       $t2, $zero, .L801A1AF4_ovl7
    /* 147B34 801A1AC4 306B0038 */   andi      $t3, $v1, 0x38
    /* 147B38 801A1AC8 8C440020 */  lw         $a0, 0x20($v0)
    /* 147B3C 801A1ACC 0C043709 */  jal        func_8010DC24
    /* 147B40 801A1AD0 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 147B44 801A1AD4 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 147B48 801A1AD8 3C038013 */  lui        $v1, %hi(D_8012BCA0)
    /* 147B4C 801A1ADC AD020044 */  sw         $v0, 0x44($t0)
    /* 147B50 801A1AE0 8C63BCA0 */  lw         $v1, %lo(D_8012BCA0)($v1)
    /* 147B54 801A1AE4 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147B58 801A1AE8 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147B5C 801A1AEC 00031CC2 */  srl        $v1, $v1, 19
    /* 147B60 801A1AF0 306B0038 */  andi       $t3, $v1, 0x38
  .L801A1AF4_ovl7:
    /* 147B64 801A1AF4 5160000F */  beql       $t3, $zero, .L801A1B34_ovl7
    /* 147B68 801A1AF8 306D01C0 */   andi      $t5, $v1, 0x1C0
    /* 147B6C 801A1AFC 8D0C0044 */  lw         $t4, 0x44($t0)
    /* 147B70 801A1B00 5580000C */  bnel       $t4, $zero, .L801A1B34_ovl7
    /* 147B74 801A1B04 306D01C0 */   andi      $t5, $v1, 0x1C0
    /* 147B78 801A1B08 8C44002C */  lw         $a0, 0x2C($v0)
    /* 147B7C 801A1B0C 0C043709 */  jal        func_8010DC24
    /* 147B80 801A1B10 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 147B84 801A1B14 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 147B88 801A1B18 3C038013 */  lui        $v1, %hi(D_8012BCA0)
    /* 147B8C 801A1B1C AD020044 */  sw         $v0, 0x44($t0)
    /* 147B90 801A1B20 8C63BCA0 */  lw         $v1, %lo(D_8012BCA0)($v1)
    /* 147B94 801A1B24 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 147B98 801A1B28 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 147B9C 801A1B2C 00031CC2 */  srl        $v1, $v1, 19
    /* 147BA0 801A1B30 306D01C0 */  andi       $t5, $v1, 0x1C0
  .L801A1B34_ovl7:
    /* 147BA4 801A1B34 51A0000A */  beql       $t5, $zero, .L801A1B60_ovl7
    /* 147BA8 801A1B38 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 147BAC 801A1B3C 8D0E0044 */  lw         $t6, 0x44($t0)
    /* 147BB0 801A1B40 55C00007 */  bnel       $t6, $zero, .L801A1B60_ovl7
    /* 147BB4 801A1B44 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 147BB8 801A1B48 8C440014 */  lw         $a0, 0x14($v0)
    /* 147BBC 801A1B4C 0C043709 */  jal        func_8010DC24
    /* 147BC0 801A1B50 AFA8002C */   sw        $t0, 0x2C($sp)
    /* 147BC4 801A1B54 8FA8002C */  lw         $t0, 0x2C($sp)
    /* 147BC8 801A1B58 AD020044 */  sw         $v0, 0x44($t0)
  .L801A1B5C_ovl7:
    /* 147BCC 801A1B5C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801A1B60_ovl7:
    /* 147BD0 801A1B60 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 147BD4 801A1B64 03E00008 */  jr         $ra
    /* 147BD8 801A1B68 00000000 */   nop
endlabel func_801A187C_ovl7
.size func_801A187C_ovl7, . - func_801A187C_ovl7
