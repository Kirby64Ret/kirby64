glabel func_8017C1FC_ovl3
/* 0DCC3C 8017C1FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0DCC40 8017C200 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0DCC44 8017C204 0C054E61 */  jal   func_80153984_ovl3
/* 0DCC48 8017C208 AFA40018 */   sw    $a0, 0x18($sp)
/* 0DCC4C 8017C20C 0C0473D6 */  jal   func_8011CF58
/* 0DCC50 8017C210 00000000 */   nop   
/* 0DCC54 8017C214 0C0485EE */  jal   func_801217B8
/* 0DCC58 8017C218 00000000 */   nop   
/* 0DCC5C 8017C21C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0DCC60 8017C220 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0DCC64 8017C224 8C620044 */  lw    $v0, 0x44($v1)
/* 0DCC68 8017C228 24050003 */  li    $a1, 3
/* 0DCC6C 8017C22C 54A20009 */  bnel  $a1, $v0, .L8017C254_ovl3
/* 0DCC70 8017C230 906F0017 */   lbu   $t7, 0x17($v1)
/* 0DCC74 8017C234 8C6E0030 */  lw    $t6, 0x30($v1)
/* 0DCC78 8017C238 11C0005A */  beqz  $t6, .L8017C3A4_ovl3
/* 0DCC7C 8017C23C 00000000 */   nop   
/* 0DCC80 8017C240 0C04759F */  jal   func_8011D67C
/* 0DCC84 8017C244 00000000 */   nop   
/* 0DCC88 8017C248 10000056 */  b     .L8017C3A4_ovl3
/* 0DCC8C 8017C24C 00000000 */   nop   
/* 0DCC90 8017C250 906F0017 */  lbu   $t7, 0x17($v1)
.L8017C254_ovl3:
/* 0DCC94 8017C254 24060001 */  li    $a2, 1
/* 0DCC98 8017C258 11E00003 */  beqz  $t7, .L8017C268_ovl3
/* 0DCC9C 8017C25C 00000000 */   nop   
/* 0DCCA0 8017C260 10000050 */  b     .L8017C3A4_ovl3
/* 0DCCA4 8017C264 AC650044 */   sw    $a1, 0x44($v1)
.L8017C268_ovl3:
/* 0DCCA8 8017C268 10460005 */  beq   $v0, $a2, .L8017C280_ovl3
/* 0DCCAC 8017C26C 24010002 */   li    $at, 2
/* 0DCCB0 8017C270 1041001E */  beq   $v0, $at, .L8017C2EC_ovl3
/* 0DCCB4 8017C274 3C0D8005 */ lui $t5, %hi(D_80056FE8)
/* 0DCCB8 8017C278 10000044 */  b     .L8017C38C_ovl3
/* 0DCCBC 8017C27C 3C0D800D */   lui   $t5, %hi(D_800CA7C4) # $t5, 0x800d
.L8017C280_ovl3:
/* 0DCCC0 8017C280 3C02800D */  lui   $v0, %hi(D_800D6FE8) # $v0, 0x800d
/* 0DCCC4 8017C284 94426FE8 */  lhu   $v0, %lo(D_800D6FE8)($v0)
/* 0DCCC8 8017C288 24190002 */  li    $t9, 2
/* 0DCCCC 8017C28C 30580300 */  andi  $t8, $v0, 0x300
/* 0DCCD0 8017C290 53000004 */  beql  $t8, $zero, .L8017C2A4_ovl3
/* 0DCCD4 8017C294 90680016 */   lbu   $t0, 0x16($v1)
/* 0DCCD8 8017C298 10000042 */  b     .L8017C3A4_ovl3
/* 0DCCDC 8017C29C AC790044 */   sw    $t9, 0x44($v1)
/* 0DCCE0 8017C2A0 90680016 */  lbu   $t0, 0x16($v1)
.L8017C2A4_ovl3:
/* 0DCCE4 8017C2A4 30494000 */  andi  $t1, $v0, 0x4000
/* 0DCCE8 8017C2A8 304B4000 */  andi  $t3, $v0, 0x4000
/* 0DCCEC 8017C2AC 1500000B */  bnez  $t0, .L8017C2DC_ovl3
/* 0DCCF0 8017C2B0 00000000 */   nop   
/* 0DCCF4 8017C2B4 55200004 */  bnezl $t1, .L8017C2C8_ovl3
/* 0DCCF8 8017C2B8 906A000A */   lbu   $t2, 0xa($v1)
/* 0DCCFC 8017C2BC 10000039 */  b     .L8017C3A4_ovl3
/* 0DCD00 8017C2C0 AC650044 */   sw    $a1, 0x44($v1)
/* 0DCD04 8017C2C4 906A000A */  lbu   $t2, 0xa($v1)
.L8017C2C8_ovl3:
/* 0DCD08 8017C2C8 24010004 */  li    $at, 4
/* 0DCD0C 8017C2CC 15410035 */  bne   $t2, $at, .L8017C3A4_ovl3
/* 0DCD10 8017C2D0 00000000 */   nop   
/* 0DCD14 8017C2D4 10000033 */  b     .L8017C3A4_ovl3
/* 0DCD18 8017C2D8 AC650044 */   sw    $a1, 0x44($v1)
.L8017C2DC_ovl3:
/* 0DCD1C 8017C2DC 15600031 */  bnez  $t3, .L8017C3A4_ovl3
/* 0DCD20 8017C2E0 240C0004 */   li    $t4, 4
/* 0DCD24 8017C2E4 1000002F */  b     .L8017C3A4_ovl3
/* 0DCD28 8017C2E8 A06C000A */   sb    $t4, 0xa($v1)
.L8017C2EC_ovl3:
/* 0DCD2C 8017C2EC 8DADA7C4 */  lw    $t5, %lo(D_800CA7C4)($t5)
/* 0DCD30 8017C2F0 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0DCD34 8017C2F4 44802000 */  mtc1  $zero, $f4
/* 0DCD38 8017C2F8 8DAE0000 */  lw    $t6, ($t5)
/* 0DCD3C 8017C2FC 000E7880 */  sll   $t7, $t6, 2
/* 0DCD40 8017C300 002F0821 */  addu  $at, $at, $t7
/* 0DCD44 8017C304 C42664D0 */ lwc1 $f6, %lo(D_800E64D0)($at)
/* 0DCD48 8017C308 46062032 */  c.eq.s $f4, $f6
/* 0DCD4C 8017C30C 00000000 */  nop   
/* 0DCD50 8017C310 45020004 */  bc1fl .L8017C324_ovl3
/* 0DCD54 8017C314 90780016 */   lbu   $t8, 0x16($v1)
/* 0DCD58 8017C318 10000018 */  b     .L8017C37C_ovl3
/* 0DCD5C 8017C31C AC660044 */   sw    $a2, 0x44($v1)
/* 0DCD60 8017C320 90780016 */  lbu   $t8, 0x16($v1)
.L8017C324_ovl3:
/* 0DCD64 8017C324 3C19800D */  lui   $t9, %hi(D_800D6FE8) # $t9, 0x800d
/* 0DCD68 8017C328 3C0A800D */  lui   $t2, %hi(D_800D6FE8) # $t2, 0x800d
/* 0DCD6C 8017C32C 1700000D */  bnez  $t8, .L8017C364_ovl3
/* 0DCD70 8017C330 00000000 */   nop   
/* 0DCD74 8017C334 97396FE8 */  lhu   $t9, %lo(D_800D6FE8)($t9)
/* 0DCD78 8017C338 33284000 */  andi  $t0, $t9, 0x4000
/* 0DCD7C 8017C33C 55000004 */  bnezl $t0, .L8017C350_ovl3
/* 0DCD80 8017C340 9069000A */   lbu   $t1, 0xa($v1)
/* 0DCD84 8017C344 1000000D */  b     .L8017C37C_ovl3
/* 0DCD88 8017C348 AC650044 */   sw    $a1, 0x44($v1)
/* 0DCD8C 8017C34C 9069000A */  lbu   $t1, 0xa($v1)
.L8017C350_ovl3:
/* 0DCD90 8017C350 24010004 */  li    $at, 4
/* 0DCD94 8017C354 15210009 */  bne   $t1, $at, .L8017C37C_ovl3
/* 0DCD98 8017C358 00000000 */   nop   
/* 0DCD9C 8017C35C 10000007 */  b     .L8017C37C_ovl3
/* 0DCDA0 8017C360 AC650044 */   sw    $a1, 0x44($v1)
.L8017C364_ovl3:
/* 0DCDA4 8017C364 954A6FE8 */  lhu   $t2, %lo(D_800D6FE8)($t2)
/* 0DCDA8 8017C368 240C0004 */  li    $t4, 4
/* 0DCDAC 8017C36C 314B4000 */  andi  $t3, $t2, 0x4000
/* 0DCDB0 8017C370 15600002 */  bnez  $t3, .L8017C37C_ovl3
/* 0DCDB4 8017C374 00000000 */   nop   
/* 0DCDB8 8017C378 A06C000A */  sb    $t4, 0xa($v1)
.L8017C37C_ovl3:
/* 0DCDBC 8017C37C 0C047B5A */  jal   func_8011ED68
/* 0DCDC0 8017C380 00000000 */   nop   
/* 0DCDC4 8017C384 10000007 */  b     .L8017C3A4_ovl3
/* 0DCDC8 8017C388 00000000 */   nop   
.L8017C38C_ovl3:
/* 0DCDCC 8017C38C 95AD6FE8 */ lhu $t5, %lo(D_80056FE8)($t5)
/* 0DCDD0 8017C390 240F0004 */  li    $t7, 4
/* 0DCDD4 8017C394 31AE4000 */  andi  $t6, $t5, 0x4000
/* 0DCDD8 8017C398 15C00002 */  bnez  $t6, .L8017C3A4_ovl3
/* 0DCDDC 8017C39C 00000000 */   nop   
/* 0DCDE0 8017C3A0 A06F000A */  sb    $t7, 0xa($v1)
.L8017C3A4_ovl3:
/* 0DCDE4 8017C3A4 3C018019 */  lui   $at, %hi(D_80197608) # $at, 0x8019
/* 0DCDE8 8017C3A8 C42C7608 */  lwc1  $f12, %lo(D_80197608)($at)
/* 0DCDEC 8017C3AC 3C018019 */  lui   $at, %hi(D_8019760C) # $at, 0x8019
/* 0DCDF0 8017C3B0 0C048333 */  jal   func_80120CCC
/* 0DCDF4 8017C3B4 C42E760C */   lwc1  $f14, %lo(D_8019760C)($at)
/* 0DCDF8 8017C3B8 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0DCDFC 8017C3BC 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0DCE00 8017C3C0 8C78003C */  lw    $t8, 0x3c($v1)
/* 0DCE04 8017C3C4 8C790044 */  lw    $t9, 0x44($v1)
/* 0DCE08 8017C3C8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0DCE0C 8017C3CC 5319000F */  beql  $t8, $t9, .L8017C40C_ovl3
/* 0DCE10 8017C3D0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0DCE14 8017C3D4 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0DCE18 8017C3D8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 0DCE1C 8017C3DC 3C058017 */  lui   $a1, %hi(D_8016C510) # $a1, 0x8017
/* 0DCE20 8017C3E0 8D090000 */  lw    $t1, ($t0)
/* 0DCE24 8017C3E4 24A5C510 */  addiu $a1, %lo(D_8016C510) # addiu $a1, $a1, -0x3af0
/* 0DCE28 8017C3E8 00095080 */  sll   $t2, $t1, 2
/* 0DCE2C 8017C3EC 008A2021 */  addu  $a0, $a0, $t2
/* 0DCE30 8017C3F0 0C02C7B2 */  jal   assign_new_process_entry
/* 0DCE34 8017C3F4 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 0DCE38 8017C3F8 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0DCE3C 8017C3FC 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0DCE40 8017C400 8C6B0044 */  lw    $t3, 0x44($v1)
/* 0DCE44 8017C404 AC6B003C */  sw    $t3, 0x3c($v1)
/* 0DCE48 8017C408 8FBF0014 */  lw    $ra, 0x14($sp)
.L8017C40C_ovl3:
/* 0DCE4C 8017C40C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0DCE50 8017C410 03E00008 */  jr    $ra
/* 0DCE54 8017C414 00000000 */   nop   
