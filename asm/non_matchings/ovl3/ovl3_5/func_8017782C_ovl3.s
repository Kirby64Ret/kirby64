glabel func_8017782C_ovl3
/* 0D826C 8017782C 3C0E8019 */  lui   $t6, %hi(D_80196D64) # $t6, 0x8019
/* 0D8270 80177830 95CE6D64 */  lhu   $t6, %lo(D_80196D64)($t6)
/* 0D8274 80177834 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D8278 80177838 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D827C 8017783C AFA40028 */  sw    $a0, 0x28($sp)
/* 0D8280 80177840 0C054E61 */  jal   func_80153984_ovl3
/* 0D8284 80177844 A7AE0024 */   sh    $t6, 0x24($sp)
/* 0D8288 80177848 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D828C 8017784C 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D8290 80177850 90C3000B */  lbu   $v1, 0xb($a2)
/* 0D8294 80177854 24010001 */  li    $at, 1
/* 0D8298 80177858 106100B5 */  beq   $v1, $at, .L80177B30_ovl3
/* 0D829C 8017785C 24010002 */   li    $at, 2
/* 0D82A0 80177860 106100B3 */  beq   $v1, $at, .L80177B30_ovl3
/* 0D82A4 80177864 3C0F800D */   lui   $t7, %hi(D_800D6B54) # $t7, 0x800d
/* 0D82A8 80177868 8DEF6B54 */  lw    $t7, %lo(D_800D6B54)($t7)
/* 0D82AC 8017786C 24040006 */  li    $a0, 6
/* 0D82B0 80177870 11E00005 */  beqz  $t7, .L80177888_ovl3
/* 0D82B4 80177874 00000000 */   nop   
/* 0D82B8 80177878 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D82BC 8017787C 24050006 */   li    $a1, 6
/* 0D82C0 80177880 100000AC */  b     .L80177B34_ovl3
/* 0D82C4 80177884 8FBF0014 */   lw    $ra, 0x14($sp)
.L80177888_ovl3:
/* 0D82C8 80177888 0C0547A5 */  jal   func_80151E94_ovl3
/* 0D82CC 8017788C 27A40024 */   addiu $a0, $sp, 0x24
/* 0D82D0 80177890 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D82D4 80177894 144000A6 */  bnez  $v0, .L80177B30_ovl3
/* 0D82D8 80177898 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D82DC 8017789C 90D800B9 */  lbu   $t8, 0xb9($a2)
/* 0D82E0 801778A0 5700000E */  bnezl $t8, .L801778DC_ovl3
/* 0D82E4 801778A4 90CB0017 */   lbu   $t3, 0x17($a2)
/* 0D82E8 801778A8 8CD90034 */  lw    $t9, 0x34($a2)
/* 0D82EC 801778AC 33280001 */  andi  $t0, $t9, 1
/* 0D82F0 801778B0 5500000A */  bnezl $t0, .L801778DC_ovl3
/* 0D82F4 801778B4 90CB0017 */   lbu   $t3, 0x17($a2)
/* 0D82F8 801778B8 0C048465 */  jal   func_80121194_ovl3
/* 0D82FC 801778BC 00000000 */   nop   
/* 0D8300 801778C0 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D8304 801778C4 10400004 */  beqz  $v0, .L801778D8_ovl3
/* 0D8308 801778C8 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D830C 801778CC 8CC90034 */  lw    $t1, 0x34($a2)
/* 0D8310 801778D0 352A0001 */  ori   $t2, $t1, 1
/* 0D8314 801778D4 ACCA0034 */  sw    $t2, 0x34($a2)
.L801778D8_ovl3:
/* 0D8318 801778D8 90CB0017 */  lbu   $t3, 0x17($a2)
.L801778DC_ovl3:
/* 0D831C 801778DC 15600006 */  bnez  $t3, .L801778F8_ovl3
/* 0D8320 801778E0 00000000 */   nop   
/* 0D8324 801778E4 90C3000B */  lbu   $v1, 0xb($a2)
/* 0D8328 801778E8 24010004 */  li    $at, 4
/* 0D832C 801778EC 10610002 */  beq   $v1, $at, .L801778F8_ovl3
/* 0D8330 801778F0 24010003 */   li    $at, 3
/* 0D8334 801778F4 14610028 */  bne   $v1, $at, .L80177998_ovl3
.L801778F8_ovl3:
/* 0D8338 801778F8 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D833C 801778FC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D8340 80177900 3C0C800F */  lui   $t4, 0x800f
/* 0D8344 80177904 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D8348 80177908 8C620000 */  lw    $v0, ($v1)
/* 0D834C 8017790C 24040006 */  li    $a0, 6
/* 0D8350 80177910 00021080 */  sll   $v0, $v0, 2
/* 0D8354 80177914 01826021 */  addu  $t4, $t4, $v0
/* 0D8358 80177918 8D8C8920 */  lw    $t4, -0x76e0($t4)
/* 0D835C 8017791C 1180001A */  beqz  $t4, .L80177988_ovl3
/* 0D8360 80177920 00000000 */   nop   
/* 0D8364 80177924 44802000 */  mtc1  $zero, $f4
/* 0D8368 80177928 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D836C 8017792C 00A26821 */  addu  $t5, $a1, $v0
/* 0D8370 80177930 E5A40000 */  swc1  $f4, ($t5)
/* 0D8374 80177934 8C620000 */  lw    $v0, ($v1)
/* 0D8378 80177938 3C01800E */  lui   $at, 0x800e
/* 0D837C 8017793C 24040149 */  li    $a0, 329
/* 0D8380 80177940 00021080 */  sll   $v0, $v0, 2
/* 0D8384 80177944 00A27021 */  addu  $t6, $a1, $v0
/* 0D8388 80177948 C5C60000 */  lwc1  $f6, ($t6)
/* 0D838C 8017794C 00220821 */  addu  $at, $at, $v0
/* 0D8390 80177950 E4263210 */  swc1  $f6, 0x3210($at)
/* 0D8394 80177954 8C6F0000 */  lw    $t7, ($v1)
/* 0D8398 80177958 3C018019 */  lui   $at, %hi(D_801974F8) # $at, 0x8019
/* 0D839C 8017795C C42874F8 */  lwc1  $f8, %lo(D_801974F8)($at)
/* 0D83A0 80177960 3C01800E */  lui   $at, 0x800e
/* 0D83A4 80177964 000FC080 */  sll   $t8, $t7, 2
/* 0D83A8 80177968 00380821 */  addu  $at, $at, $t8
/* 0D83AC 8017796C 0C029D9E */  jal   func_800A7678_ovl3
/* 0D83B0 80177970 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 0D83B4 80177974 24040007 */  li    $a0, 7
/* 0D83B8 80177978 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D83BC 8017797C 24050007 */   li    $a1, 7
/* 0D83C0 80177980 1000006C */  b     .L80177B34_ovl3
/* 0D83C4 80177984 8FBF0014 */   lw    $ra, 0x14($sp)
.L80177988_ovl3:
/* 0D83C8 80177988 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D83CC 8017798C 24050006 */   li    $a1, 6
/* 0D83D0 80177990 10000068 */  b     .L80177B34_ovl3
/* 0D83D4 80177994 8FBF0014 */   lw    $ra, 0x14($sp)
.L80177998_ovl3:
/* 0D83D8 80177998 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D83DC 8017799C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D83E0 801779A0 3C19800F */  lui   $t9, 0x800f
/* 0D83E4 801779A4 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D83E8 801779A8 8C620000 */  lw    $v0, ($v1)
/* 0D83EC 801779AC 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D83F0 801779B0 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0D83F4 801779B4 00021080 */  sll   $v0, $v0, 2
/* 0D83F8 801779B8 0322C821 */  addu  $t9, $t9, $v0
/* 0D83FC 801779BC 8F398920 */  lw    $t9, -0x76e0($t9)
/* 0D8400 801779C0 53200025 */  beql  $t9, $zero, .L80177A58_ovl3
/* 0D8404 801779C4 44816000 */   mtc1  $at, $f12
/* 0D8408 801779C8 44805000 */  mtc1  $zero, $f10
/* 0D840C 801779CC 00A24021 */  addu  $t0, $a1, $v0
/* 0D8410 801779D0 3C01800E */  lui   $at, 0x800e
/* 0D8414 801779D4 E50A0000 */  swc1  $f10, ($t0)
/* 0D8418 801779D8 8C620000 */  lw    $v0, ($v1)
/* 0D841C 801779DC 3C0C800D */  lui   $t4, %hi(D_800D6FE8) # $t4, 0x800d
/* 0D8420 801779E0 958C6FE8 */  lhu   $t4, %lo(D_800D6FE8)($t4)
/* 0D8424 801779E4 00021080 */  sll   $v0, $v0, 2
/* 0D8428 801779E8 00A24821 */  addu  $t1, $a1, $v0
/* 0D842C 801779EC C5300000 */  lwc1  $f16, ($t1)
/* 0D8430 801779F0 00220821 */  addu  $at, $at, $v0
/* 0D8434 801779F4 318D0300 */  andi  $t5, $t4, 0x300
/* 0D8438 801779F8 E4303210 */  swc1  $f16, 0x3210($at)
/* 0D843C 801779FC 8C6A0000 */  lw    $t2, ($v1)
/* 0D8440 80177A00 3C018019 */  lui   $at, %hi(D_801974FC) # $at, 0x8019
/* 0D8444 80177A04 C43274FC */  lwc1  $f18, %lo(D_801974FC)($at)
/* 0D8448 80177A08 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0D844C 80177A0C 000A5880 */  sll   $t3, $t2, 2
/* 0D8450 80177A10 002B0821 */  addu  $at, $at, $t3
/* 0D8454 80177A14 15A00008 */  bnez  $t5, .L80177A38_ovl3
/* 0D8458 80177A18 E4323C90 */   swc1  $f18, 0x3c90($at)
/* 0D845C 80177A1C 0C029D9E */  jal   func_800A7678_ovl3
/* 0D8460 80177A20 24040149 */   li    $a0, 329
/* 0D8464 80177A24 24040007 */  li    $a0, 7
/* 0D8468 80177A28 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D846C 80177A2C 24050007 */   li    $a1, 7
/* 0D8470 80177A30 10000040 */  b     .L80177B34_ovl3
/* 0D8474 80177A34 8FBF0014 */   lw    $ra, 0x14($sp)
.L80177A38_ovl3:
/* 0D8478 80177A38 24040001 */  li    $a0, 1
/* 0D847C 80177A3C 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D8480 80177A40 24050003 */   li    $a1, 3
/* 0D8484 80177A44 0C048BEC */  jal   func_80122FB0_ovl3
/* 0D8488 80177A48 24040001 */   li    $a0, 1
/* 0D848C 80177A4C 10000039 */  b     .L80177B34_ovl3
/* 0D8490 80177A50 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D8494 80177A54 44816000 */  mtc1  $at, $f12
.L80177A58_ovl3:
/* 0D8498 80177A58 0C05E418 */  jal   func_80179060_ovl3
/* 0D849C 80177A5C 00000000 */   nop   
/* 0D84A0 80177A60 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D84A4 80177A64 10400006 */  beqz  $v0, .L80177A80_ovl3
/* 0D84A8 80177A68 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D84AC 80177A6C 24040006 */  li    $a0, 6
/* 0D84B0 80177A70 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D84B4 80177A74 24050006 */   li    $a1, 6
/* 0D84B8 80177A78 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D84BC 80177A7C 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
.L80177A80_ovl3:
/* 0D84C0 80177A80 3C0E800D */  lui   $t6, %hi(D_800D6FE8) # $t6, 0x800d
/* 0D84C4 80177A84 95CE6FE8 */  lhu   $t6, %lo(D_800D6FE8)($t6)
/* 0D84C8 80177A88 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D84CC 80177A8C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0D84D0 80177A90 31CF0300 */  andi  $t7, $t6, 0x300
/* 0D84D4 80177A94 11E0001F */  beqz  $t7, .L80177B14_ovl3
/* 0D84D8 80177A98 00000000 */   nop   
/* 0D84DC 80177A9C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D84E0 80177AA0 3C01800E */  lui   $at, 0x800e
/* 0D84E4 80177AA4 C4C600BC */  lwc1  $f6, 0xbc($a2)
/* 0D84E8 80177AA8 8C620000 */  lw    $v0, ($v1)
/* 0D84EC 80177AAC 44805000 */  mtc1  $zero, $f10
/* 0D84F0 80177AB0 00021080 */  sll   $v0, $v0, 2
/* 0D84F4 80177AB4 00220821 */  addu  $at, $at, $v0
/* 0D84F8 80177AB8 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0D84FC 80177ABC 3C01800E */  lui   $at, 0x800e
/* 0D8500 80177AC0 00220821 */  addu  $at, $at, $v0
/* 0D8504 80177AC4 46062202 */  mul.s $f8, $f4, $f6
/* 0D8508 80177AC8 E4286690 */  swc1  $f8, 0x6690($at)
/* 0D850C 80177ACC C4C000C0 */  lwc1  $f0, 0xc0($a2)
/* 0D8510 80177AD0 460A003C */  c.lt.s $f0, $f10
/* 0D8514 80177AD4 00000000 */  nop   
/* 0D8518 80177AD8 45020009 */  bc1fl .L80177B00_ovl3
/* 0D851C 80177ADC 8C680000 */   lw    $t0, ($v1)
/* 0D8520 80177AE0 8C780000 */  lw    $t8, ($v1)
/* 0D8524 80177AE4 3C01800E */  lui   $at, 0x800e
/* 0D8528 80177AE8 46000407 */  neg.s $f16, $f0
/* 0D852C 80177AEC 0018C880 */  sll   $t9, $t8, 2
/* 0D8530 80177AF0 00390821 */  addu  $at, $at, $t9
/* 0D8534 80177AF4 1000000E */  b     .L80177B30_ovl3
/* 0D8538 80177AF8 E4306850 */   swc1  $f16, 0x6850($at)
/* 0D853C 80177AFC 8C680000 */  lw    $t0, ($v1)
.L80177B00_ovl3:
/* 0D8540 80177B00 3C01800E */  lui   $at, 0x800e
/* 0D8544 80177B04 00084880 */  sll   $t1, $t0, 2
/* 0D8548 80177B08 00290821 */  addu  $at, $at, $t1
/* 0D854C 80177B0C 10000008 */  b     .L80177B30_ovl3
/* 0D8550 80177B10 E4206850 */   swc1  $f0, 0x6850($at)
.L80177B14_ovl3:
/* 0D8554 80177B14 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0D8558 80177B18 44809000 */  mtc1  $zero, $f18
/* 0D855C 80177B1C 3C01800E */  lui   $at, 0x800e
/* 0D8560 80177B20 8D4B0000 */  lw    $t3, ($t2)
/* 0D8564 80177B24 000B6080 */  sll   $t4, $t3, 2
/* 0D8568 80177B28 002C0821 */  addu  $at, $at, $t4
/* 0D856C 80177B2C E4326850 */  swc1  $f18, 0x6850($at)
.L80177B30_ovl3:
/* 0D8570 80177B30 8FBF0014 */  lw    $ra, 0x14($sp)
.L80177B34_ovl3:
/* 0D8574 80177B34 27BD0028 */  addiu $sp, $sp, 0x28
/* 0D8578 80177B38 03E00008 */  jr    $ra
/* 0D857C 80177B3C 00000000 */   nop   
