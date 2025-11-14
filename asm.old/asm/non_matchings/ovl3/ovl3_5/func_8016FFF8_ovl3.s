glabel func_8016FFF8_ovl3
/* 0D0A38 8016FFF8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D0A3C 8016FFFC 3C0F8019 */  lui   $t7, %hi(D_80196C84) # $t7, 0x8019
/* 0D0A40 80170000 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D0A44 80170004 AFA40028 */  sw    $a0, 0x28($sp)
/* 0D0A48 80170008 25EF6C84 */  addiu $t7, %lo(D_80196C84) # addiu $t7, $t7, 0x6c84
/* 0D0A4C 8017000C 99F90002 */  lwr   $t9, 2($t7)
/* 0D0A50 80170010 27AE0024 */  addiu $t6, $sp, 0x24
/* 0D0A54 80170014 0C054E61 */  jal   func_80153984_ovl3
/* 0D0A58 80170018 B9D90002 */   swr   $t9, 2($t6)
/* 0D0A5C 8017001C 0C0547A5 */  jal   ovl3_process_command_string
/* 0D0A60 80170020 27A40024 */   addiu $a0, $sp, 0x24
/* 0D0A64 80170024 10400009 */  beqz  $v0, .L8017004C_ovl3
/* 0D0A68 80170028 3C038013 */   lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D0A6C 8017002C 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0A70 80170030 3C088019 */  lui   $t0, %hi(D_80190358) # $t0, 0x8019
/* 0D0A74 80170034 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D0A78 80170038 AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D0A7C 8017003C 25080358 */  addiu $t0, %lo(D_80190358) # addiu $t0, $t0, 0x358
/* 0D0A80 80170040 A060000A */  sb    $zero, 0xa($v1)
/* 0D0A84 80170044 100000A6 */  b     .L801702E0_ovl3
/* 0D0A88 80170048 AC68015C */   sw    $t0, 0x15c($v1)
.L8017004C_ovl3:
/* 0D0A8C 8017004C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0D0A90 80170050 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0D0A94 80170054 3C05800F */  lui   $a1, %hi(D_800E8920) # $a1, 0x800f
/* 0D0A98 80170058 24A58920 */  addiu $a1, %lo(D_800E8920) # addiu $a1, $a1, -0x76e0
/* 0D0A9C 8017005C 8C820000 */  lw    $v0, ($a0)
/* 0D0AA0 80170060 00021080 */  sll   $v0, $v0, 2
/* 0D0AA4 80170064 00A24821 */  addu  $t1, $a1, $v0
/* 0D0AA8 80170068 8D2A0000 */  lw    $t2, ($t1)
/* 0D0AAC 8017006C 15400018 */  bnez  $t2, .L801700D0_ovl3
/* 0D0AB0 80170070 3C0B800F */ lui $t3, %hi(D_800E98E0)
/* 0D0AB4 80170074 01625821 */  addu  $t3, $t3, $v0
/* 0D0AB8 80170078 8D6B98E0 */ lw $t3, %lo(D_800E98E0)($t3)
/* 0D0ABC 8017007C 24010012 */  li    $at, 18
/* 0D0AC0 80170080 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D0AC4 80170084 15610007 */  bne   $t3, $at, .L801700A4_ovl3
/* 0D0AC8 80170088 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D0ACC 8017008C 0C0473D6 */  jal   func_8011CF58
/* 0D0AD0 80170090 00000000 */   nop   
/* 0D0AD4 80170094 0C0485EE */  jal   func_801217B8
/* 0D0AD8 80170098 00000000 */   nop   
/* 0D0ADC 8017009C 10000091 */  b     .L801702E4_ovl3
/* 0D0AE0 801700A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801700A4_ovl3:
/* 0D0AE4 801700A4 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0AE8 801700A8 3C0C8019 */  lui   $t4, %hi(D_80190358) # $t4, 0x8019
/* 0D0AEC 801700AC AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D0AF0 801700B0 258C0358 */  addiu $t4, %lo(D_80190358) # addiu $t4, $t4, 0x358
/* 0D0AF4 801700B4 A060000A */  sb    $zero, 0xa($v1)
/* 0D0AF8 801700B8 AC6C015C */  sw    $t4, 0x15c($v1)
/* 0D0AFC 801700BC 24040006 */  li    $a0, 6
/* 0D0B00 801700C0 0C048BDB */  jal   set_kirby_action_1
/* 0D0B04 801700C4 24050006 */   li    $a1, 6
/* 0D0B08 801700C8 10000086 */  b     .L801702E4_ovl3
/* 0D0B0C 801700CC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801700D0_ovl3:
/* 0D0B10 801700D0 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D0B14 801700D4 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D0B18 801700D8 8C6D0030 */  lw    $t5, 0x30($v1)
/* 0D0B1C 801700DC 3C0F8019 */  lui   $t7, %hi(D_80190358) # $t7, 0x8019
/* 0D0B20 801700E0 3C01800D */  lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0B24 801700E4 15A00005 */  bnez  $t5, .L801700FC_ovl3
/* 0D0B28 801700E8 25EF0358 */   addiu $t7, %lo(D_80190358) # addiu $t7, $t7, 0x358
/* 0D0B2C 801700EC 906E0017 */  lbu   $t6, 0x17($v1)
/* 0D0B30 801700F0 3C0C800D */  lui   $t4, %hi(D_800D6FAC) # $t4, 0x800d
/* 0D0B34 801700F4 11C00021 */  beqz  $t6, .L8017017C_ovl3
/* 0D0B38 801700F8 00000000 */   nop   
.L801700FC_ovl3:
/* 0D0B3C 801700FC AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D0B40 80170100 AC6F015C */  sw    $t7, 0x15c($v1)
/* 0D0B44 80170104 8C820000 */  lw    $v0, ($a0)
/* 0D0B48 80170108 3C03800E */  lui   $v1, %hi(D_800E3750) # $v1, 0x800e
/* 0D0B4C 8017010C 00021080 */  sll   $v0, $v0, 2
/* 0D0B50 80170110 00A2C021 */  addu  $t8, $a1, $v0
/* 0D0B54 80170114 8F190000 */  lw    $t9, ($t8)
/* 0D0B58 80170118 24050001 */  li    $a1, 1
/* 0D0B5C 8017011C 13200013 */  beqz  $t9, .L8017016C_ovl3
/* 0D0B60 80170120 00000000 */   nop   
/* 0D0B64 80170124 44802000 */  mtc1  $zero, $f4
/* 0D0B68 80170128 24633750 */  addiu $v1, %lo(D_800E3750) # addiu $v1, $v1, 0x3750
/* 0D0B6C 8017012C 00624021 */  addu  $t0, $v1, $v0
/* 0D0B70 80170130 E5040000 */  swc1  $f4, ($t0)
/* 0D0B74 80170134 8C820000 */  lw    $v0, ($a0)
/* 0D0B78 80170138 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D0B7C 8017013C 00021080 */  sll   $v0, $v0, 2
/* 0D0B80 80170140 00624821 */  addu  $t1, $v1, $v0
/* 0D0B84 80170144 C5260000 */  lwc1  $f6, ($t1)
/* 0D0B88 80170148 00220821 */  addu  $at, $at, $v0
/* 0D0B8C 8017014C E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0D0B90 80170150 8C8A0000 */  lw    $t2, ($a0)
/* 0D0B94 80170154 3C018019 */  lui   $at, %hi(D_801973A0) # $at, 0x8019
/* 0D0B98 80170158 C42873A0 */  lwc1  $f8, %lo(D_801973A0)($at)
/* 0D0B9C 8017015C 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D0BA0 80170160 000A5880 */  sll   $t3, $t2, 2
/* 0D0BA4 80170164 002B0821 */  addu  $at, $at, $t3
/* 0D0BA8 80170168 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
.L8017016C_ovl3:
/* 0D0BAC 8017016C 0C048BDB */  jal   set_kirby_action_1
/* 0D0BB0 80170170 00002025 */   move  $a0, $zero
/* 0D0BB4 80170174 1000005B */  b     .L801702E4_ovl3
/* 0D0BB8 80170178 8FBF0014 */   lw    $ra, 0x14($sp)
.L8017017C_ovl3:
/* 0D0BBC 8017017C 8D8C6FAC */  lw    $t4, %lo(D_800D6FAC)($t4)
/* 0D0BC0 80170180 3C0D800F */ lui $t5, %hi(D_800E9720)
/* 0D0BC4 80170184 01A26821 */  addu  $t5, $t5, $v0
/* 0D0BC8 80170188 1580001E */  bnez  $t4, .L80170204_ovl3
/* 0D0BCC 8017018C 00000000 */   nop   
/* 0D0BD0 80170190 8DAD9720 */ lw $t5, %lo(D_800E9720)($t5)
/* 0D0BD4 80170194 15A0001B */  bnez  $t5, .L80170204_ovl3
/* 0D0BD8 80170198 00000000 */   nop   
/* 0D0BDC 8017019C 0C048918 */  jal   func_80122460
/* 0D0BE0 801701A0 00000000 */   nop   
/* 0D0BE4 801701A4 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0D0BE8 801701A8 10400016 */  beqz  $v0, .L80170204_ovl3
/* 0D0BEC 801701AC 2463E7C0 */   addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0D0BF0 801701B0 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 0D0BF4 801701B4 24426FE8 */  addiu $v0, %lo(gKirbyController) # addiu $v0, $v0, 0x6fe8
/* 0D0BF8 801701B8 944E0000 */  lhu   $t6, ($v0)
/* 0D0BFC 801701BC 31CF0400 */  andi  $t7, $t6, 0x400
/* 0D0C00 801701C0 11E00010 */  beqz  $t7, .L80170204_ovl3
/* 0D0C04 801701C4 00000000 */   nop   
/* 0D0C08 801701C8 90780004 */  lbu   $t8, 4($v1)
/* 0D0C0C 801701CC 3C028013 */  lui   $v0, %hi(D_8012BCA0) # $v0, 0x8013
/* 0D0C10 801701D0 2442BCA0 */  addiu $v0, %lo(D_8012BCA0) # addiu $v0, $v0, -0x4360
/* 0D0C14 801701D4 1700000B */  bnez  $t8, .L80170204_ovl3
/* 0D0C18 801701D8 3C01800D */   lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0C1C 801701DC AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D0C20 801701E0 94590000 */  lhu   $t9, ($v0)
/* 0D0C24 801701E4 A060000A */  sb    $zero, 0xa($v1)
/* 0D0C28 801701E8 2404000A */  li    $a0, 10
/* 0D0C2C 801701EC 33280007 */  andi  $t0, $t9, 7
/* 0D0C30 801701F0 A4480000 */  sh    $t0, ($v0)
/* 0D0C34 801701F4 0C048BDB */  jal   set_kirby_action_1
/* 0D0C38 801701F8 2405000D */   li    $a1, 13
/* 0D0C3C 801701FC 10000039 */  b     .L801702E4_ovl3
/* 0D0C40 80170200 8FBF0014 */   lw    $ra, 0x14($sp)
.L80170204_ovl3:
/* 0D0C44 80170204 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0D0C48 80170208 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0D0C4C 8017020C 3C0B800F */ lui $t3, %hi(D_800E9AA0)
/* 0D0C50 80170210 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 0D0C54 80170214 8C890000 */  lw    $t1, ($a0)
/* 0D0C58 80170218 24426FE8 */  addiu $v0, %lo(gKirbyController) # addiu $v0, $v0, 0x6fe8
/* 0D0C5C 8017021C 00095080 */  sll   $t2, $t1, 2
/* 0D0C60 80170220 016A5821 */  addu  $t3, $t3, $t2
/* 0D0C64 80170224 8D6B9AA0 */ lw $t3, %lo(D_800E9AA0)($t3)
/* 0D0C68 80170228 5160000C */  beql  $t3, $zero, .L8017025C_ovl3
/* 0D0C6C 8017022C 94580000 */   lhu   $t8, ($v0)
/* 0D0C70 80170230 906C0017 */  lbu   $t4, 0x17($v1)
/* 0D0C74 80170234 55800013 */  bnezl $t4, .L80170284_ovl3
/* 0D0C78 80170238 8C6B0034 */   lw    $t3, 0x34($v1)
/* 0D0C7C 8017023C 944D0002 */  lhu   $t5, 2($v0)
/* 0D0C80 80170240 240F0001 */  li    $t7, 1
/* 0D0C84 80170244 31AE4000 */  andi  $t6, $t5, 0x4000
/* 0D0C88 80170248 51C0000E */  beql  $t6, $zero, .L80170284_ovl3
/* 0D0C8C 8017024C 8C6B0034 */   lw    $t3, 0x34($v1)
/* 0D0C90 80170250 1000000B */  b     .L80170280_ovl3
/* 0D0C94 80170254 A06F000A */   sb    $t7, 0xa($v1)
/* 0D0C98 80170258 94580000 */  lhu   $t8, ($v0)
.L8017025C_ovl3:
/* 0D0C9C 8017025C 33190400 */  andi  $t9, $t8, 0x400
/* 0D0CA0 80170260 53200008 */  beql  $t9, $zero, .L80170284_ovl3
/* 0D0CA4 80170264 8C6B0034 */   lw    $t3, 0x34($v1)
/* 0D0CA8 80170268 94480002 */  lhu   $t0, 2($v0)
/* 0D0CAC 8017026C 240A0002 */  li    $t2, 2
/* 0D0CB0 80170270 31098000 */  andi  $t1, $t0, 0x8000
/* 0D0CB4 80170274 51200003 */  beql  $t1, $zero, .L80170284_ovl3
/* 0D0CB8 80170278 8C6B0034 */   lw    $t3, 0x34($v1)
/* 0D0CBC 8017027C A06A000A */  sb    $t2, 0xa($v1)
.L80170280_ovl3:
/* 0D0CC0 80170280 8C6B0034 */  lw    $t3, 0x34($v1)
.L80170284_ovl3:
/* 0D0CC4 80170284 316C0001 */  andi  $t4, $t3, 1
/* 0D0CC8 80170288 5580000D */  bnezl $t4, .L801702C0_ovl3
/* 0D0CCC 8017028C 8C8E0000 */   lw    $t6, ($a0)
/* 0D0CD0 80170290 906D000A */  lbu   $t5, 0xa($v1)
/* 0D0CD4 80170294 24010002 */  li    $at, 2
/* 0D0CD8 80170298 2405000F */  li    $a1, 15
/* 0D0CDC 8017029C 15A10007 */  bne   $t5, $at, .L801702BC_ovl3
/* 0D0CE0 801702A0 3C01800D */   lui   $at, %hi(D_800D6F10) # $at, 0x800d
/* 0D0CE4 801702A4 AC206F10 */  sw    $zero, %lo(D_800D6F10)($at)
/* 0D0CE8 801702A8 A060000A */  sb    $zero, 0xa($v1)
/* 0D0CEC 801702AC 0C048BDB */  jal   set_kirby_action_1
/* 0D0CF0 801702B0 24040019 */   li    $a0, 25
/* 0D0CF4 801702B4 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0D0CF8 801702B8 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
.L801702BC_ovl3:
/* 0D0CFC 801702BC 8C8E0000 */  lw    $t6, ($a0)
.L801702C0_ovl3:
/* 0D0D00 801702C0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0D0D04 801702C4 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0D0D08 801702C8 000E7880 */  sll   $t7, $t6, 2
/* 0D0D0C 801702CC 01F81021 */  addu  $v0, $t7, $t8
/* 0D0D10 801702D0 8C430000 */  lw    $v1, ($v0)
/* 0D0D14 801702D4 10600002 */  beqz  $v1, .L801702E0_ovl3
/* 0D0D18 801702D8 2479FFFF */   addiu $t9, $v1, -1
/* 0D0D1C 801702DC AC590000 */  sw    $t9, ($v0)
.L801702E0_ovl3:
/* 0D0D20 801702E0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801702E4_ovl3:
/* 0D0D24 801702E4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0D0D28 801702E8 03E00008 */  jr    $ra
/* 0D0D2C 801702EC 00000000 */   nop   
.type func_8016FFF8_ovl3, @function
.size func_8016FFF8_ovl3, . - func_8016FFF8_ovl3
