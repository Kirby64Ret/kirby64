glabel func_80173AF4_ovl3
/* 0D4534 80173AF4 3C0F8013 */  lui   $t7, %hi(D_8012E7F0) # $t7, 0x8013
/* 0D4538 80173AF8 8DEFE7F0 */  lw    $t7, %lo(D_8012E7F0)($t7)
/* 0D453C 80173AFC 3C0E8019 */  lui   $t6, %hi(D_80196C9C) # $t6, 0x8019
/* 0D4540 80173B00 95CE6C9C */  lhu   $t6, %lo(D_80196C9C)($t6)
/* 0D4544 80173B04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D4548 80173B08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D454C 80173B0C AFA40020 */  sw    $a0, 0x20($sp)
/* 0D4550 80173B10 15E00012 */  bnez  $t7, .L80173B5C_ovl3
/* 0D4554 80173B14 A7AE001C */   sh    $t6, 0x1c($sp)
/* 0D4558 80173B18 3C188013 */  lui   $t8, %hi(D_8012E804) # $t8, 0x8013
/* 0D455C 80173B1C 8F18E804 */  lw    $t8, %lo(D_8012E804)($t8)
/* 0D4560 80173B20 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0D4564 80173B24 1700000D */  bnez  $t8, .L80173B5C_ovl3
/* 0D4568 80173B28 00000000 */   nop   
/* 0D456C 80173B2C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0D4570 80173B30 3C0A800F */  lui   $t2, 0x800f
/* 0D4574 80173B34 3C048019 */  lui   $a0, %hi(D_801930CC) # $a0, 0x8019
/* 0D4578 80173B38 8F280000 */  lw    $t0, ($t9)
/* 0D457C 80173B3C 248430CC */  addiu $a0, %lo(D_801930CC) # addiu $a0, $a0, 0x30cc
/* 0D4580 80173B40 00084880 */  sll   $t1, $t0, 2
/* 0D4584 80173B44 01495021 */  addu  $t2, $t2, $t1
/* 0D4588 80173B48 8D4A8920 */  lw    $t2, -0x76e0($t2)
/* 0D458C 80173B4C 11400003 */  beqz  $t2, .L80173B5C_ovl3
/* 0D4590 80173B50 00000000 */   nop   
/* 0D4594 80173B54 0C055127 */  jal   func_8015449C_ovl3
/* 0D4598 80173B58 00002825 */   move  $a1, $zero
.L80173B5C_ovl3:
/* 0D459C 80173B5C 0C054E61 */  jal   func_80153984_ovl3
/* 0D45A0 80173B60 00000000 */   nop   
/* 0D45A4 80173B64 0C0547A5 */  jal   func_80151E94_ovl3
/* 0D45A8 80173B68 27A4001C */   addiu $a0, $sp, 0x1c
/* 0D45AC 80173B6C 10400003 */  beqz  $v0, .L80173B7C_ovl3
/* 0D45B0 80173B70 00000000 */   nop   
/* 0D45B4 80173B74 0C04783A */  jal   func_8011E0E8
/* 0D45B8 80173B78 00000000 */   nop   
.L80173B7C_ovl3:
/* 0D45BC 80173B7C 3C0B8013 */  lui   $t3, %hi(D_8012E7F0) # $t3, 0x8013
/* 0D45C0 80173B80 8D6BE7F0 */  lw    $t3, %lo(D_8012E7F0)($t3)
/* 0D45C4 80173B84 3C0C8013 */  lui   $t4, %hi(D_8012E804) # $t4, 0x8013
/* 0D45C8 80173B88 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D45CC 80173B8C 15600017 */  bnez  $t3, .L80173BEC_ovl3
/* 0D45D0 80173B90 00000000 */   nop   
/* 0D45D4 80173B94 8D8CE804 */  lw    $t4, %lo(D_8012E804)($t4)
/* 0D45D8 80173B98 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0D45DC 80173B9C 55800042 */  bnezl $t4, .L80173CA8_ovl3
/* 0D45E0 80173BA0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D45E4 80173BA4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0D45E8 80173BA8 3C0E800F */  lui   $t6, 0x800f
/* 0D45EC 80173BAC 3C048019 */  lui   $a0, %hi(D_801910AC) # $a0, 0x8019
/* 0D45F0 80173BB0 8DA20000 */  lw    $v0, ($t5)
/* 0D45F4 80173BB4 3C0F800E */  lui   $t7, 0x800e
/* 0D45F8 80173BB8 248410AC */  addiu $a0, %lo(D_801910AC) # addiu $a0, $a0, 0x10ac
/* 0D45FC 80173BBC 00021080 */  sll   $v0, $v0, 2
/* 0D4600 80173BC0 01C27021 */  addu  $t6, $t6, $v0
/* 0D4604 80173BC4 8DCE8920 */  lw    $t6, -0x76e0($t6)
/* 0D4608 80173BC8 01E27821 */  addu  $t7, $t7, $v0
/* 0D460C 80173BCC 51C00036 */  beql  $t6, $zero, .L80173CA8_ovl3
/* 0D4610 80173BD0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D4614 80173BD4 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 0D4618 80173BD8 3C063F80 */  lui   $a2, 0x3f80
/* 0D461C 80173BDC 0C05A153 */  jal   func_8016854C_ovl3
/* 0D4620 80173BE0 8DE5001C */   lw    $a1, 0x1c($t7)
/* 0D4624 80173BE4 10000030 */  b     .L80173CA8_ovl3
/* 0D4628 80173BE8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80173BEC_ovl3:
/* 0D462C 80173BEC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D4630 80173BF0 44802000 */  mtc1  $zero, $f4
/* 0D4634 80173BF4 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0D4638 80173BF8 8C780000 */  lw    $t8, ($v1)
/* 0D463C 80173BFC 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0D4640 80173C00 3C01800E */  lui   $at, 0x800e
/* 0D4644 80173C04 0018C880 */  sll   $t9, $t8, 2
/* 0D4648 80173C08 00994021 */  addu  $t0, $a0, $t9
/* 0D464C 80173C0C E5040000 */  swc1  $f4, ($t0)
/* 0D4650 80173C10 8C620000 */  lw    $v0, ($v1)
/* 0D4654 80173C14 3C0C800D */  lui   $t4, %hi(D_800D6FE8) # $t4, 0x800d
/* 0D4658 80173C18 958C6FE8 */  lhu   $t4, %lo(D_800D6FE8)($t4)
/* 0D465C 80173C1C 00021080 */  sll   $v0, $v0, 2
/* 0D4660 80173C20 00824821 */  addu  $t1, $a0, $v0
/* 0D4664 80173C24 C5260000 */  lwc1  $f6, ($t1)
/* 0D4668 80173C28 00220821 */  addu  $at, $at, $v0
/* 0D466C 80173C2C 318D0400 */  andi  $t5, $t4, 0x400
/* 0D4670 80173C30 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0D4674 80173C34 8C6A0000 */  lw    $t2, ($v1)
/* 0D4678 80173C38 3C018019 */  lui   $at, %hi(D_80197430) # $at, 0x8019
/* 0D467C 80173C3C C4287430 */  lwc1  $f8, %lo(D_80197430)($at)
/* 0D4680 80173C40 3C01800E */  lui   $at, 0x800e
/* 0D4684 80173C44 000A5880 */  sll   $t3, $t2, 2
/* 0D4688 80173C48 002B0821 */  addu  $at, $at, $t3
/* 0D468C 80173C4C 11A00006 */  beqz  $t5, .L80173C68_ovl3
/* 0D4690 80173C50 E4286850 */   swc1  $f8, 0x6850($at)
/* 0D4694 80173C54 24040009 */  li    $a0, 9
/* 0D4698 80173C58 0C048BDB */  jal   set_kirby_action_1
/* 0D469C 80173C5C 2405000E */   li    $a1, 14
/* 0D46A0 80173C60 10000011 */  b     .L80173CA8_ovl3
/* 0D46A4 80173C64 8FBF0014 */   lw    $ra, 0x14($sp)
.L80173C68_ovl3:
/* 0D46A8 80173C68 8C6E0000 */  lw    $t6, ($v1)
/* 0D46AC 80173C6C 3C18800F */  lui   $t8, 0x800f
/* 0D46B0 80173C70 24050001 */  li    $a1, 1
/* 0D46B4 80173C74 000E7880 */  sll   $t7, $t6, 2
/* 0D46B8 80173C78 030FC021 */  addu  $t8, $t8, $t7
/* 0D46BC 80173C7C 8F188920 */  lw    $t8, -0x76e0($t8)
/* 0D46C0 80173C80 24040006 */  li    $a0, 6
/* 0D46C4 80173C84 13000005 */  beqz  $t8, .L80173C9C_ovl3
/* 0D46C8 80173C88 00000000 */   nop   
/* 0D46CC 80173C8C 0C048BDB */  jal   set_kirby_action_1
/* 0D46D0 80173C90 00002025 */   move  $a0, $zero
/* 0D46D4 80173C94 10000004 */  b     .L80173CA8_ovl3
/* 0D46D8 80173C98 8FBF0014 */   lw    $ra, 0x14($sp)
.L80173C9C_ovl3:
/* 0D46DC 80173C9C 0C048BDB */  jal   set_kirby_action_1
/* 0D46E0 80173CA0 24050006 */   li    $a1, 6
/* 0D46E4 80173CA4 8FBF0014 */  lw    $ra, 0x14($sp)
.L80173CA8_ovl3:
/* 0D46E8 80173CA8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D46EC 80173CAC 03E00008 */  jr    $ra
/* 0D46F0 80173CB0 00000000 */   nop   
