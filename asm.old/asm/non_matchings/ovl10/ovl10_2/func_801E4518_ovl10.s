glabel func_801E4518_ovl10
/* 1D5288 801E4518 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1D528C 801E451C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1D5290 801E4520 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1D5294 801E4524 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D5298 801E4528 AFA40018 */  sw    $a0, 0x18($sp)
/* 1D529C 801E452C 8CC20000 */  lw    $v0, ($a2)
/* 1D52A0 801E4530 3C04800F */ lui $a0, %hi(D_800E9FE0)
/* 1D52A4 801E4534 44802000 */  mtc1  $zero, $f4
/* 1D52A8 801E4538 00021080 */  sll   $v0, $v0, 2
/* 1D52AC 801E453C 00822021 */  addu  $a0, $a0, $v0
/* 1D52B0 801E4540 8C849FE0 */ lw $a0, %lo(D_800E9FE0)($a0)
/* 1D52B4 801E4544 3C05800E */  lui   $a1, %hi(D_800E2410) # $a1, 0x800e
/* 1D52B8 801E4548 24A52410 */  addiu $a1, %lo(D_800E2410) # addiu $a1, $a1, 0x2410
/* 1D52BC 801E454C 00A27021 */  addu  $t6, $a1, $v0
/* 1D52C0 801E4550 8C870004 */  lw    $a3, 4($a0)
/* 1D52C4 801E4554 908B0001 */  lbu   $t3, 1($a0)
/* 1D52C8 801E4558 E5C40000 */  swc1  $f4, ($t6)
/* 1D52CC 801E455C 8CC20000 */  lw    $v0, ($a2)
/* 1D52D0 801E4560 3C0C800E */  lui   $t4, %hi(D_800E2250) # $t4, 0x800e
/* 1D52D4 801E4564 258C2250 */  addiu $t4, %lo(D_800E2250) # addiu $t4, $t4, 0x2250
/* 1D52D8 801E4568 00021080 */  sll   $v0, $v0, 2
/* 1D52DC 801E456C 00A27821 */  addu  $t7, $a1, $v0
/* 1D52E0 801E4570 C5E00000 */  lwc1  $f0, ($t7)
/* 1D52E4 801E4574 0182C021 */  addu  $t8, $t4, $v0
/* 1D52E8 801E4578 3C0D800E */  lui   $t5, %hi(D_800E2090) # $t5, 0x800e
/* 1D52EC 801E457C E7000000 */  swc1  $f0, ($t8)
/* 1D52F0 801E4580 8CD90000 */  lw    $t9, ($a2)
/* 1D52F4 801E4584 25AD2090 */  addiu $t5, %lo(D_800E2090) # addiu $t5, $t5, 0x2090
/* 1D52F8 801E4588 3C0A800F */  lui   $t2, %hi(D_800EA1A0) # $t2, 0x800f
/* 1D52FC 801E458C 00197080 */  sll   $t6, $t9, 2
/* 1D5300 801E4590 01AE7821 */  addu  $t7, $t5, $t6
/* 1D5304 801E4594 E5E00000 */  swc1  $f0, ($t7)
/* 1D5308 801E4598 8CC20000 */  lw    $v0, ($a2)
/* 1D530C 801E459C 254AA1A0 */  addiu $t2, %lo(D_800EA1A0) # addiu $t2, $t2, -0x5e60
/* 1D5310 801E45A0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 1D5314 801E45A4 00021080 */  sll   $v0, $v0, 2
/* 1D5318 801E45A8 01421821 */  addu  $v1, $t2, $v0
/* 1D531C 801E45AC 8C680000 */  lw    $t0, ($v1)
/* 1D5320 801E45B0 3C0E800F */ lui $t6, %hi(D_800E9E20)
/* 1D5324 801E45B4 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 1D5328 801E45B8 05000027 */  bltz  $t0, .L801E4658_ovl10
/* 1D532C 801E45BC 01C27021 */   addu  $t6, $t6, $v0
/* 1D5330 801E45C0 00582821 */  addu  $a1, $v0, $t8
/* 1D5334 801E45C4 8CA90000 */  lw    $t1, ($a1)
/* 1D5338 801E45C8 010B082A */  slt   $at, $t0, $t3
/* 1D533C 801E45CC 15200020 */  bnez  $t1, .L801E4650_ovl10
/* 1D5340 801E45D0 2539FFFF */   addiu $t9, $t1, -1
/* 1D5344 801E45D4 14200003 */  bnez  $at, .L801E45E4_ovl10
/* 1D5348 801E45D8 2419FFFF */   li    $t9, -1
/* 1D534C 801E45DC 10000043 */  b     .L801E46EC_ovl10
/* 1D5350 801E45E0 AC790000 */   sw    $t9, ($v1)
.L801E45E4_ovl10:
/* 1D5354 801E45E4 908E0002 */  lbu   $t6, 2($a0)
/* 1D5358 801E45E8 ACAE0000 */  sw    $t6, ($a1)
/* 1D535C 801E45EC 8CC20000 */  lw    $v0, ($a2)
/* 1D5360 801E45F0 00021080 */  sll   $v0, $v0, 2
/* 1D5364 801E45F4 01427821 */  addu  $t7, $t2, $v0
/* 1D5368 801E45F8 8DF80000 */  lw    $t8, ($t7)
/* 1D536C 801E45FC 01A27821 */  addu  $t7, $t5, $v0
/* 1D5370 801E4600 0018C8C0 */  sll   $t9, $t8, 3
/* 1D5374 801E4604 03277021 */  addu  $t6, $t9, $a3
/* 1D5378 801E4608 C5C60000 */  lwc1  $f6, ($t6)
/* 1D537C 801E460C E5E60000 */  swc1  $f6, ($t7)
/* 1D5380 801E4610 8CC20000 */  lw    $v0, ($a2)
/* 1D5384 801E4614 00021080 */  sll   $v0, $v0, 2
/* 1D5388 801E4618 0142C021 */  addu  $t8, $t2, $v0
/* 1D538C 801E461C 8F190000 */  lw    $t9, ($t8)
/* 1D5390 801E4620 0182C021 */  addu  $t8, $t4, $v0
/* 1D5394 801E4624 001970C0 */  sll   $t6, $t9, 3
/* 1D5398 801E4628 01C77821 */  addu  $t7, $t6, $a3
/* 1D539C 801E462C C5E80004 */  lwc1  $f8, 4($t7)
/* 1D53A0 801E4630 E7080000 */  swc1  $f8, ($t8)
/* 1D53A4 801E4634 8CD90000 */  lw    $t9, ($a2)
/* 1D53A8 801E4638 00197080 */  sll   $t6, $t9, 2
/* 1D53AC 801E463C 014E1821 */  addu  $v1, $t2, $t6
/* 1D53B0 801E4640 8C6F0000 */  lw    $t7, ($v1)
/* 1D53B4 801E4644 25F80001 */  addiu $t8, $t7, 1
/* 1D53B8 801E4648 10000028 */  b     .L801E46EC_ovl10
/* 1D53BC 801E464C AC780000 */   sw    $t8, ($v1)
.L801E4650_ovl10:
/* 1D53C0 801E4650 10000026 */  b     .L801E46EC_ovl10
/* 1D53C4 801E4654 ACB90000 */   sw    $t9, ($a1)
.L801E4658_ovl10:
/* 1D53C8 801E4658 8DCE9E20 */ lw $t6, %lo(D_800E9E20)($t6)
/* 1D53CC 801E465C 3C0F800E */ lui $t7, %hi(D_800DD8D0)
/* 1D53D0 801E4660 01E27821 */  addu  $t7, $t7, $v0
/* 1D53D4 801E4664 51C00022 */  beql  $t6, $zero, .L801E46F0_ovl10
/* 1D53D8 801E4668 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1D53DC 801E466C 8DEFD8D0 */ lw $t7, %lo(D_800DD8D0)($t7)
/* 1D53E0 801E4670 3C04800F */  lui   $a0, %hi(D_800E93A0) # $a0, 0x800f
/* 1D53E4 801E4674 248493A0 */  addiu $a0, %lo(D_800E93A0) # addiu $a0, $a0, -0x6c60
/* 1D53E8 801E4678 000FC782 */  srl   $t8, $t7, 0x1e
/* 1D53EC 801E467C 1300001B */  beqz  $t8, .L801E46EC_ovl10
/* 1D53F0 801E4680 00821821 */   addu  $v1, $a0, $v0
/* 1D53F4 801E4684 8C790000 */  lw    $t9, ($v1)
/* 1D53F8 801E4688 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D53FC 801E468C 272EFFFF */  addiu $t6, $t9, -1
/* 1D5400 801E4690 AC6E0000 */  sw    $t6, ($v1)
/* 1D5404 801E4694 8CC20000 */  lw    $v0, ($a2)
/* 1D5408 801E4698 24190002 */  li    $t9, 2
/* 1D540C 801E469C 240E0001 */  li    $t6, 1
/* 1D5410 801E46A0 00021080 */  sll   $v0, $v0, 2
/* 1D5414 801E46A4 00827821 */  addu  $t7, $a0, $v0
/* 1D5418 801E46A8 8DF80000 */  lw    $t8, ($t7)
/* 1D541C 801E46AC 00220821 */  addu  $at, $at, $v0
/* 1D5420 801E46B0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1D5424 801E46B4 17000005 */  bnez  $t8, .L801E46CC_ovl10
/* 1D5428 801E46B8 00000000 */   nop   
/* 1D542C 801E46BC 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1D5430 801E46C0 00220821 */  addu  $at, $at, $v0
/* 1D5434 801E46C4 10000002 */  b     .L801E46D0_ovl10
/* 1D5438 801E46C8 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.L801E46CC_ovl10:
/* 1D543C 801E46CC AC2EDC50 */  sw    $t6, -0x23b0($at)
.L801E46D0_ovl10:
/* 1D5440 801E46D0 8CCF0000 */  lw    $t7, ($a2)
/* 1D5444 801E46D4 3C05801E */  lui   $a1, %hi(D_801E3BE4) # $a1, 0x801e
/* 1D5448 801E46D8 24A53BE4 */  addiu $a1, %lo(D_801E3BE4) # addiu $a1, $a1, 0x3be4
/* 1D544C 801E46DC 000FC080 */  sll   $t8, $t7, 2
/* 1D5450 801E46E0 00982021 */  addu  $a0, $a0, $t8
/* 1D5454 801E46E4 0C02C7B2 */  jal   assign_new_process_entry
/* 1D5458 801E46E8 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801E46EC_ovl10:
/* 1D545C 801E46EC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E46F0_ovl10:
/* 1D5460 801E46F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1D5464 801E46F4 03E00008 */  jr    $ra
/* 1D5468 801E46F8 00000000 */   nop   
.type func_801E4518_ovl10, @function
.size func_801E4518_ovl10, . - func_801E4518_ovl10
