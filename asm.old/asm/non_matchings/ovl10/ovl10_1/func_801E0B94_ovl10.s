glabel func_801E0B94_ovl10
/* 1D1904 801E0B94 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1D1908 801E0B98 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1D190C 801E0B9C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1D1910 801E0BA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D1914 801E0BA4 AFA40048 */  sw    $a0, 0x48($sp)
/* 1D1918 801E0BA8 8CC30000 */  lw    $v1, ($a2)
/* 1D191C 801E0BAC 3C07800F */  lui   $a3, %hi(D_800EA1A0) # $a3, 0x800f
/* 1D1920 801E0BB0 24E7A1A0 */  addiu $a3, %lo(D_800EA1A0) # addiu $a3, $a3, -0x5e60
/* 1D1924 801E0BB4 00031880 */  sll   $v1, $v1, 2
/* 1D1928 801E0BB8 00E37021 */  addu  $t6, $a3, $v1
/* 1D192C 801E0BBC 8DCF0000 */  lw    $t7, ($t6)
/* 1D1930 801E0BC0 3C08800F */  lui   $t0, %hi(D_800E9020) # $t0, 0x800f
/* 1D1934 801E0BC4 55E0002C */  bnezl $t7, .L801E0C78_ovl10
/* 1D1938 801E0BC8 00E36021 */   addu  $t4, $a3, $v1
/* 1D193C 801E0BCC 44806000 */  mtc1  $zero, $f12
/* 1D1940 801E0BD0 25089020 */  addiu $t0, %lo(D_800E9020) # addiu $t0, $t0, -0x6fe0
/* 1D1944 801E0BD4 0103C021 */  addu  $t8, $t0, $v1
/* 1D1948 801E0BD8 E70C0000 */  swc1  $f12, ($t8)
/* 1D194C 801E0BDC 8CC30000 */  lw    $v1, ($a2)
/* 1D1950 801E0BE0 3C19800F */ lui $t9, %hi(D_800E9E20)
/* 1D1954 801E0BE4 00031880 */  sll   $v1, $v1, 2
/* 1D1958 801E0BE8 0323C821 */  addu  $t9, $t9, $v1
/* 1D195C 801E0BEC 8F399E20 */ lw $t9, %lo(D_800E9E20)($t9)
/* 1D1960 801E0BF0 2B21006E */  slti  $at, $t9, 0x6e
/* 1D1964 801E0BF4 50200020 */  beql  $at, $zero, .L801E0C78_ovl10
/* 1D1968 801E0BF8 00E36021 */   addu  $t4, $a3, $v1
/* 1D196C 801E0BFC 0C066A40 */  jal   func_8019A900_ovl10
/* 1D1970 801E0C00 27A4003C */   addiu $a0, $sp, 0x3c
/* 1D1974 801E0C04 3C07800F */  lui   $a3, %hi(D_800EA1A0) # $a3, 0x800f
/* 1D1978 801E0C08 10400005 */  beqz  $v0, .L801E0C20_ovl10
/* 1D197C 801E0C0C 24E7A1A0 */   addiu $a3, %lo(D_800EA1A0) # addiu $a3, $a3, -0x5e60
/* 1D1980 801E0C10 8FA9003C */  lw    $t1, 0x3c($sp)
/* 1D1984 801E0C14 44892000 */  mtc1  $t1, $f4
/* 1D1988 801E0C18 10000006 */  b     .L801E0C34_ovl10
/* 1D198C 801E0C1C 468020A0 */   cvt.s.w $f2, $f4
.L801E0C20_ovl10:
/* 1D1990 801E0C20 0C066D82 */  jal   func_8019B608_ovl10
/* 1D1994 801E0C24 00002025 */   move  $a0, $zero
/* 1D1998 801E0C28 3C07800F */  lui   $a3, %hi(D_800EA1A0) # $a3, 0x800f
/* 1D199C 801E0C2C 24E7A1A0 */  addiu $a3, %lo(D_800EA1A0) # addiu $a3, $a3, -0x5e60
/* 1D19A0 801E0C30 46000086 */  mov.s $f2, $f0
.L801E0C34_ovl10:
/* 1D19A4 801E0C34 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1D19A8 801E0C38 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1D19AC 801E0C3C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D19B0 801E0C40 240A000A */  li    $t2, 10
/* 1D19B4 801E0C44 8CC30000 */  lw    $v1, ($a2)
/* 1D19B8 801E0C48 00031880 */  sll   $v1, $v1, 2
/* 1D19BC 801E0C4C 00230821 */  addu  $at, $at, $v1
/* 1D19C0 801E0C50 C4266A10 */ lwc1 $f6, %lo(D_800E6A10)($at)
/* 1D19C4 801E0C54 00E35821 */  addu  $t3, $a3, $v1
/* 1D19C8 801E0C58 46061032 */  c.eq.s $f2, $f6
/* 1D19CC 801E0C5C 00000000 */  nop   
/* 1D19D0 801E0C60 45030005 */  bc1tl .L801E0C78_ovl10
/* 1D19D4 801E0C64 00E36021 */   addu  $t4, $a3, $v1
/* 1D19D8 801E0C68 AD6A0000 */  sw    $t2, ($t3)
/* 1D19DC 801E0C6C 8CC30000 */  lw    $v1, ($a2)
/* 1D19E0 801E0C70 00031880 */  sll   $v1, $v1, 2
/* 1D19E4 801E0C74 00E36021 */  addu  $t4, $a3, $v1
.L801E0C78_ovl10:
/* 1D19E8 801E0C78 8D820000 */  lw    $v0, ($t4)
/* 1D19EC 801E0C7C 3C08800F */  lui   $t0, %hi(D_800E9020) # $t0, 0x800f
/* 1D19F0 801E0C80 44806000 */  mtc1  $zero, $f12
/* 1D19F4 801E0C84 1040003E */  beqz  $v0, .L801E0D80_ovl10
/* 1D19F8 801E0C88 25089020 */   addiu $t0, %lo(D_800E9020) # addiu $t0, $t0, -0x6fe0
/* 1D19FC 801E0C8C 3C0D800E */  lui   $t5, %hi(D_800E6A10) # $t5, 0x800e
/* 1D1A00 801E0C90 25AD6A10 */  addiu $t5, %lo(D_800E6A10) # addiu $t5, $t5, 0x6a10
/* 1D1A04 801E0C94 006D2821 */  addu  $a1, $v1, $t5
/* 1D1A08 801E0C98 24010005 */  li    $at, 5
/* 1D1A0C 801E0C9C 14410010 */  bne   $v0, $at, .L801E0CE0_ovl10
/* 1D1A10 801E0CA0 C4A00000 */   lwc1  $f0, ($a1)
/* 1D1A14 801E0CA4 46000207 */  neg.s $f8, $f0
/* 1D1A18 801E0CA8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 1D1A1C 801E0CAC E4A80000 */  swc1  $f8, ($a1)
/* 1D1A20 801E0CB0 8CCE0000 */  lw    $t6, ($a2)
/* 1D1A24 801E0CB4 000E7880 */  sll   $t7, $t6, 2
/* 1D1A28 801E0CB8 010F2021 */  addu  $a0, $t0, $t7
/* 1D1A2C 801E0CBC C48A0000 */  lwc1  $f10, ($a0)
/* 1D1A30 801E0CC0 46005407 */  neg.s $f16, $f10
/* 1D1A34 801E0CC4 E4900000 */  swc1  $f16, ($a0)
/* 1D1A38 801E0CC8 8CC30000 */  lw    $v1, ($a2)
/* 1D1A3C 801E0CCC 00031880 */  sll   $v1, $v1, 2
/* 1D1A40 801E0CD0 00E3C021 */  addu  $t8, $a3, $v1
/* 1D1A44 801E0CD4 00230821 */  addu  $at, $at, $v1
/* 1D1A48 801E0CD8 C4206A10 */ lwc1 $f0, %lo(D_800E6A10)($at)
/* 1D1A4C 801E0CDC 8F020000 */  lw    $v0, ($t8)
.L801E0CE0_ovl10:
/* 1D1A50 801E0CE0 28410006 */  slti  $at, $v0, 6
/* 1D1A54 801E0CE4 14200006 */  bnez  $at, .L801E0D00_ovl10
/* 1D1A58 801E0CE8 01032021 */   addu  $a0, $t0, $v1
/* 1D1A5C 801E0CEC 3C01801F */  lui   $at, %hi(D_801F49FC_ovl10) # $at, 0x801f
/* 1D1A60 801E0CF0 C43249FC */  lwc1  $f18, %lo(D_801F49FC_ovl10)($at)
/* 1D1A64 801E0CF4 46120082 */  mul.s $f2, $f0, $f18
/* 1D1A68 801E0CF8 10000006 */  b     .L801E0D14_ovl10
/* 1D1A6C 801E0CFC C4860000 */   lwc1  $f6, ($a0)
.L801E0D00_ovl10:
/* 1D1A70 801E0D00 3C01801F */  lui   $at, %hi(D_801F4A00_ovl10) # $at, 0x801f
/* 1D1A74 801E0D04 C4244A00 */  lwc1  $f4, %lo(D_801F4A00_ovl10)($at)
/* 1D1A78 801E0D08 46040082 */  mul.s $f2, $f0, $f4
/* 1D1A7C 801E0D0C 00000000 */  nop   
/* 1D1A80 801E0D10 C4860000 */  lwc1  $f6, ($a0)
.L801E0D14_ovl10:
/* 1D1A84 801E0D14 46023200 */  add.s $f8, $f6, $f2
/* 1D1A88 801E0D18 E4880000 */  swc1  $f8, ($a0)
/* 1D1A8C 801E0D1C 8CD90000 */  lw    $t9, ($a2)
/* 1D1A90 801E0D20 00194880 */  sll   $t1, $t9, 2
/* 1D1A94 801E0D24 00E91021 */  addu  $v0, $a3, $t1
/* 1D1A98 801E0D28 8C4A0000 */  lw    $t2, ($v0)
/* 1D1A9C 801E0D2C 254BFFFF */  addiu $t3, $t2, -1
/* 1D1AA0 801E0D30 AC4B0000 */  sw    $t3, ($v0)
/* 1D1AA4 801E0D34 8CC30000 */  lw    $v1, ($a2)
/* 1D1AA8 801E0D38 00031880 */  sll   $v1, $v1, 2
/* 1D1AAC 801E0D3C 00E36021 */  addu  $t4, $a3, $v1
/* 1D1AB0 801E0D40 8D8D0000 */  lw    $t5, ($t4)
/* 1D1AB4 801E0D44 01037021 */  addu  $t6, $t0, $v1
/* 1D1AB8 801E0D48 1DA0000D */  bgtz  $t5, .L801E0D80_ovl10
/* 1D1ABC 801E0D4C 00000000 */   nop   
/* 1D1AC0 801E0D50 E5CC0000 */  swc1  $f12, ($t6)
/* 1D1AC4 801E0D54 8CC30000 */  lw    $v1, ($a2)
/* 1D1AC8 801E0D58 00031880 */  sll   $v1, $v1, 2
/* 1D1ACC 801E0D5C 01037821 */  addu  $t7, $t0, $v1
/* 1D1AD0 801E0D60 C5EA0000 */  lwc1  $f10, ($t7)
/* 1D1AD4 801E0D64 00E34821 */  addu  $t1, $a3, $v1
/* 1D1AD8 801E0D68 4600540D */  trunc.w.s $f16, $f10
/* 1D1ADC 801E0D6C 44198000 */  mfc1  $t9, $f16
/* 1D1AE0 801E0D70 00000000 */  nop   
/* 1D1AE4 801E0D74 AD390000 */  sw    $t9, ($t1)
/* 1D1AE8 801E0D78 8CC30000 */  lw    $v1, ($a2)
/* 1D1AEC 801E0D7C 00031880 */  sll   $v1, $v1, 2
.L801E0D80_ovl10:
/* 1D1AF0 801E0D80 3C0A800F */  lui   $t2, %hi(D_800E9E20) # $t2, 0x800f
/* 1D1AF4 801E0D84 254A9E20 */  addiu $t2, %lo(D_800E9E20) # addiu $t2, $t2, -0x61e0
/* 1D1AF8 801E0D88 006A1021 */  addu  $v0, $v1, $t2
/* 1D1AFC 801E0D8C 8C440000 */  lw    $a0, ($v0)
/* 1D1B00 801E0D90 28850079 */  slti  $a1, $a0, 0x79
/* 1D1B04 801E0D94 38A50001 */  xori  $a1, $a1, 1
/* 1D1B08 801E0D98 248B0001 */  addiu $t3, $a0, 1
/* 1D1B0C 801E0D9C 10A00014 */  beqz  $a1, .L801E0DF0_ovl10
/* 1D1B10 801E0DA0 AC4B0000 */   sw    $t3, ($v0)
/* 1D1B14 801E0DA4 8CCD0000 */  lw    $t5, ($a2)
/* 1D1B18 801E0DA8 3C01800F */ lui $at, %hi(D_800EA520)
/* 1D1B1C 801E0DAC 240C03E8 */  li    $t4, 1000
/* 1D1B20 801E0DB0 000D7080 */  sll   $t6, $t5, 2
/* 1D1B24 801E0DB4 002E0821 */  addu  $at, $at, $t6
/* 1D1B28 801E0DB8 AC2CA520 */ sw $t4, %lo(D_800EA520)($at)
/* 1D1B2C 801E0DBC 8CCF0000 */  lw    $t7, ($a2)
/* 1D1B30 801E0DC0 3C02800F */  lui   $v0, %hi(D_800EA8A0) # $v0, 0x800f
/* 1D1B34 801E0DC4 2442A8A0 */  addiu $v0, %lo(D_800EA8A0) # addiu $v0, $v0, -0x5760
/* 1D1B38 801E0DC8 000FC080 */  sll   $t8, $t7, 2
/* 1D1B3C 801E0DCC 0058C821 */  addu  $t9, $v0, $t8
/* 1D1B40 801E0DD0 E72C0000 */  swc1  $f12, ($t9)
/* 1D1B44 801E0DD4 8CC30000 */  lw    $v1, ($a2)
/* 1D1B48 801E0DD8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 1D1B4C 801E0DDC 00031880 */  sll   $v1, $v1, 2
/* 1D1B50 801E0DE0 00434821 */  addu  $t1, $v0, $v1
/* 1D1B54 801E0DE4 C5320000 */  lwc1  $f18, ($t1)
/* 1D1B58 801E0DE8 00230821 */  addu  $at, $at, $v1
/* 1D1B5C 801E0DEC E432A6E0 */ swc1 $f18, %lo(D_800EA6E0)($at)
.L801E0DF0_ovl10:
/* 1D1B60 801E0DF0 8CCA0000 */  lw    $t2, ($a2)
/* 1D1B64 801E0DF4 3C01800F */ lui $at, %hi(D_800E8920)
/* 1D1B68 801E0DF8 8FA40048 */  lw    $a0, 0x48($sp)
/* 1D1B6C 801E0DFC 000A5880 */  sll   $t3, $t2, 2
/* 1D1B70 801E0E00 002B0821 */  addu  $at, $at, $t3
/* 1D1B74 801E0E04 0C06835D */  jal   func_801A0D74_ovl10
/* 1D1B78 801E0E08 AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 1D1B7C 801E0E0C 0C078A32 */  jal   func_801E28C8_ovl10
/* 1D1B80 801E0E10 00002025 */   move  $a0, $zero
/* 1D1B84 801E0E14 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1D1B88 801E0E18 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1D1B8C 801E0E1C 3C0D800F */ lui $t5, %hi(D_800E83E0)
/* 1D1B90 801E0E20 24010001 */  li    $at, 1
/* 1D1B94 801E0E24 8CC30000 */  lw    $v1, ($a2)
/* 1D1B98 801E0E28 240C0012 */  li    $t4, 18
/* 1D1B9C 801E0E2C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D1BA0 801E0E30 00031880 */  sll   $v1, $v1, 2
/* 1D1BA4 801E0E34 01A36821 */  addu  $t5, $t5, $v1
/* 1D1BA8 801E0E38 8DAD83E0 */ lw $t5, %lo(D_800E83E0)($t5)
/* 1D1BAC 801E0E3C 15A1000A */  bne   $t5, $at, .L801E0E68_ovl10
/* 1D1BB0 801E0E40 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D1BB4 801E0E44 00230821 */  addu  $at, $at, $v1
/* 1D1BB8 801E0E48 AC2CDC50 */ sw $t4, %lo(gEntityVtableIndexArray)($at)
/* 1D1BBC 801E0E4C 8CCE0000 */  lw    $t6, ($a2)
/* 1D1BC0 801E0E50 3C05801E */  lui   $a1, %hi(D_801DBD38) # $a1, 0x801e
/* 1D1BC4 801E0E54 24A5BD38 */  addiu $a1, %lo(D_801DBD38) # addiu $a1, $a1, -0x42c8
/* 1D1BC8 801E0E58 000E7880 */  sll   $t7, $t6, 2
/* 1D1BCC 801E0E5C 008F2021 */  addu  $a0, $a0, $t7
/* 1D1BD0 801E0E60 0C02C7B2 */  jal   assign_new_process_entry
/* 1D1BD4 801E0E64 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E0E68_ovl10:
/* 1D1BD8 801E0E68 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D1BDC 801E0E6C 27BD0048 */  addiu $sp, $sp, 0x48
/* 1D1BE0 801E0E70 03E00008 */  jr    $ra
/* 1D1BE4 801E0E74 00000000 */   nop   
.type func_801E0B94_ovl10, @function
.size func_801E0B94_ovl10, . - func_801E0B94_ovl10
