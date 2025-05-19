glabel func_8016BF60_ovl3
/* 0CC9A0 8016BF60 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CC9A4 8016BF64 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CC9A8 8016BF68 8CEE0028 */  lw    $t6, 0x28($a3)
/* 0CC9AC 8016BF6C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CC9B0 8016BF70 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CC9B4 8016BF74 11C00007 */  beqz  $t6, .L8016BF94_ovl3
/* 0CC9B8 8016BF78 AFA40018 */   sw    $a0, 0x18($sp)
/* 0CC9BC 8016BF7C 2418001F */  li    $t8, 31
/* 0CC9C0 8016BF80 A0F80005 */  sb    $t8, 5($a3)
/* 0CC9C4 8016BF84 0C076C78 */  jal   func_801DB1E0_ovl3
/* 0CC9C8 8016BF88 A0F80006 */   sb    $t8, 6($a3)
/* 0CC9CC 8016BF8C 0C02BE85 */  jal   func_800AFA14
/* 0CC9D0 8016BF90 00000000 */   nop   
.L8016BF94_ovl3:
/* 0CC9D4 8016BF94 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CC9D8 8016BF98 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CC9DC 8016BF9C 8D020000 */  lw    $v0, ($t0)
/* 0CC9E0 8016BFA0 3C198017 */  lui   $t9, %hi(D_8016C558) # $t9, 0x8017
/* 0CC9E4 8016BFA4 3C01800E */ lui $at, %hi(D_800DF150)
/* 0CC9E8 8016BFA8 8C490000 */  lw    $t1, ($v0)
/* 0CC9EC 8016BFAC 2739C558 */  addiu $t9, %lo(D_8016C558) # addiu $t9, $t9, -0x3aa8
/* 0CC9F0 8016BFB0 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray3)
/* 0CC9F4 8016BFB4 00095080 */  sll   $t2, $t1, 2
/* 0CC9F8 8016BFB8 002A0821 */  addu  $at, $at, $t2
/* 0CC9FC 8016BFBC AC39F150 */ sw $t9, %lo(D_800DF150)($at)
/* 0CCA00 8016BFC0 8C4B0000 */  lw    $t3, ($v0)
/* 0CCA04 8016BFC4 3C058017 */  lui   $a1, %hi(D_80177000) # $a1, 0x8017
/* 0CCA08 8016BFC8 24A57000 */  addiu $a1, %lo(D_80177000) # addiu $a1, $a1, 0x7000
/* 0CCA0C 8016BFCC 000B6080 */  sll   $t4, $t3, 2
/* 0CCA10 8016BFD0 008C2021 */  addu  $a0, $a0, $t4
/* 0CCA14 8016BFD4 0C02C7B2 */  jal   assign_new_process_entry
/* 0CCA18 8016BFD8 8C84E890 */ lw $a0, %lo(gEntityGObjProcessArray3)($a0)
/* 0CCA1C 8016BFDC 0C04723E */  jal   func_8011C8F8
/* 0CCA20 8016BFE0 00000000 */   nop   
/* 0CCA24 8016BFE4 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CCA28 8016BFE8 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CCA2C 8016BFEC 90ED0004 */  lbu   $t5, 4($a3)
/* 0CCA30 8016BFF0 3C048019 */ lui $a0, %hi(D_80196D48)
/* 0CCA34 8016BFF4 24050020 */  li    $a1, 32
/* 0CCA38 8016BFF8 000D7080 */  sll   $t6, $t5, 2
/* 0CCA3C 8016BFFC 008E2021 */  addu  $a0, $a0, $t6
/* 0CCA40 8016C000 8C846D48 */ lw $a0, %lo(D_80196D48)($a0)
/* 0CCA44 8016C004 0C02A619 */  jal   func_800A9864
/* 0CCA48 8016C008 24060010 */   li    $a2, 16
/* 0CCA4C 8016C00C 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CCA50 8016C010 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CCA54 8016C014 240F0002 */  li    $t7, 2
/* 0CCA58 8016C018 ACEF0154 */  sw    $t7, 0x154($a3)
/* 0CCA5C 8016C01C 3C03800D */  lui   $v1, %hi(D_800D6FB0) # $v1, 0x800d
/* 0CCA60 8016C020 94636FB0 */  lhu   $v1, %lo(D_800D6FB0)($v1)
/* 0CCA64 8016C024 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CCA68 8016C028 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CCA6C 8016C02C 10600013 */  beqz  $v1, .L8016C07C_ovl3
/* 0CCA70 8016C030 00031203 */   sra   $v0, $v1, 8
/* 0CCA74 8016C034 24010001 */  li    $at, 1
/* 0CCA78 8016C038 ACE000A8 */  sw    $zero, 0xa8($a3)
/* 0CCA7C 8016C03C ACE000AC */  sw    $zero, 0xac($a3)
/* 0CCA80 8016C040 10410006 */  beq   $v0, $at, .L8016C05C_ovl3
/* 0CCA84 8016C044 A0E00004 */   sb    $zero, 4($a3)
/* 0CCA88 8016C048 24010002 */  li    $at, 2
/* 0CCA8C 8016C04C 1041000A */  beq   $v0, $at, .L8016C078_ovl3
/* 0CCA90 8016C050 2418004B */   li    $t8, 75
/* 0CCA94 8016C054 1000000A */  b     .L8016C080_ovl3
/* 0CCA98 8016C058 90E90004 */   lbu   $t1, 4($a3)
.L8016C05C_ovl3:
/* 0CCA9C 8016C05C 0C089FCE */  jal   func_80227F38_ovl19
/* 0CCAA0 8016C060 00000000 */   nop   
/* 0CCAA4 8016C064 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CCAA8 8016C068 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CCAAC 8016C06C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CCAB0 8016C070 10000002 */  b     .L8016C07C_ovl3
/* 0CCAB4 8016C074 24E7E7C0 */   addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8016C078_ovl3:
/* 0CCAB8 8016C078 A0F8000C */  sb    $t8, 0xc($a3)
.L8016C07C_ovl3:
/* 0CCABC 8016C07C 90E90004 */  lbu   $t1, 4($a3)
.L8016C080_ovl3:
/* 0CCAC0 8016C080 24010001 */  li    $at, 1
/* 0CCAC4 8016C084 5521000B */  bnel  $t1, $at, .L8016C0B4_ovl3
/* 0CCAC8 8016C088 8D0E0000 */   lw    $t6, ($t0)
/* 0CCACC 8016C08C 8D0A0000 */  lw    $t2, ($t0)
/* 0CCAD0 8016C090 3C198019 */  lui   $t9, %hi(D_80192704) # $t9, 0x8019
/* 0CCAD4 8016C094 3C01800E */ lui $at, %hi(D_800E0490)
/* 0CCAD8 8016C098 8D4B0000 */  lw    $t3, ($t2)
/* 0CCADC 8016C09C 27392704 */  addiu $t9, %lo(D_80192704) # addiu $t9, $t9, 0x2704
/* 0CCAE0 8016C0A0 000B6080 */  sll   $t4, $t3, 2
/* 0CCAE4 8016C0A4 002C0821 */  addu  $at, $at, $t4
/* 0CCAE8 8016C0A8 10000009 */  b     .L8016C0D0_ovl3
/* 0CCAEC 8016C0AC AC390490 */   sw    $t9, %lo(D_800E0490)($at)
/* 0CCAF0 8016C0B0 8D0E0000 */  lw    $t6, ($t0)
.L8016C0B4_ovl3:
/* 0CCAF4 8016C0B4 3C0D8019 */  lui   $t5, %hi(D_801926E8) # $t5, 0x8019
/* 0CCAF8 8016C0B8 3C01800E */ lui $at, %hi(D_800E0490)
/* 0CCAFC 8016C0BC 8DCF0000 */  lw    $t7, ($t6)
/* 0CCB00 8016C0C0 25AD26E8 */  addiu $t5, %lo(D_801926E8) # addiu $t5, $t5, 0x26e8
/* 0CCB04 8016C0C4 000FC080 */  sll   $t8, $t7, 2
/* 0CCB08 8016C0C8 00380821 */  addu  $at, $at, $t8
/* 0CCB0C 8016C0CC AC2D0490 */  sw    $t5, %lo(D_800E0490)($at)
.L8016C0D0_ovl3:
/* 0CCB10 8016C0D0 0C03E39B */  jal   func_800F8E6C
/* 0CCB14 8016C0D4 8FA40018 */   lw    $a0, 0x18($sp)
/* 0CCB18 8016C0D8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0CCB1C 8016C0DC 44816000 */  mtc1  $at, $f12
/* 0CCB20 8016C0E0 0C0548D2 */  jal   func_80152348_ovl3
/* 0CCB24 8016C0E4 00000000 */   nop   
/* 0CCB28 8016C0E8 0C03FC51 */  jal   func_800FF144
/* 0CCB2C 8016C0EC 00000000 */   nop   
/* 0CCB30 8016C0F0 3C038013 */  lui   $v1, %hi(D_8012E944) # $v1, 0x8013
/* 0CCB34 8016C0F4 2463E944 */  addiu $v1, %lo(D_8012E944) # addiu $v1, $v1, -0x16bc
/* 0CCB38 8016C0F8 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CCB3C 8016C0FC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CCB40 8016C100 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CCB44 8016C104 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0CCB48 8016C108 1040000E */  beqz  $v0, .L8016C144_ovl3
/* 0CCB4C 8016C10C AC620000 */   sw    $v0, ($v1)
/* 0CCB50 8016C110 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0CCB54 8016C114 44812000 */  mtc1  $at, $f4
/* 0CCB58 8016C118 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0CCB5C 8016C11C 44813000 */  mtc1  $at, $f6
/* 0CCB60 8016C120 E4440010 */  swc1  $f4, 0x10($v0)
/* 0CCB64 8016C124 8C690000 */  lw    $t1, ($v1)
/* 0CCB68 8016C128 3C01C370 */  li    $at, 0xC3700000 # -240.000000
/* 0CCB6C 8016C12C 44814000 */  mtc1  $at, $f8
/* 0CCB70 8016C130 E5260014 */  swc1  $f6, 0x14($t1)
/* 0CCB74 8016C134 8C6A0000 */  lw    $t2, ($v1)
/* 0CCB78 8016C138 E5480018 */  swc1  $f8, 0x18($t2)
/* 0CCB7C 8016C13C 8C6B0000 */  lw    $t3, ($v1)
/* 0CCB80 8016C140 A1600021 */  sb    $zero, 0x21($t3)
.L8016C144_ovl3:
/* 0CCB84 8016C144 90F90004 */  lbu   $t9, 4($a3)
/* 0CCB88 8016C148 13200007 */  beqz  $t9, .L8016C168_ovl3
/* 0CCB8C 8016C14C 00000000 */   nop   
/* 0CCB90 8016C150 0C04732E */  jal   func_8011CCB8
/* 0CCB94 8016C154 00000000 */   nop   
/* 0CCB98 8016C158 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0CCB9C 8016C15C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CCBA0 8016C160 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CCBA4 8016C164 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8016C168_ovl3:
/* 0CCBA8 8016C168 3C02801A */  lui   $v0, %hi(D_80198830) # $v0, 0x801a
/* 0CCBAC 8016C16C 24428830 */  addiu $v0, %lo(D_80198830) # addiu $v0, $v0, -0x77d0
/* 0CCBB0 8016C170 240C00F0 */  li    $t4, 240
/* 0CCBB4 8016C174 240E0002 */  li    $t6, 2
/* 0CCBB8 8016C178 ACEC001C */  sw    $t4, 0x1c($a3)
/* 0CCBBC 8016C17C A4400000 */  sh    $zero, ($v0)
/* 0CCBC0 8016C180 A44E0002 */  sh    $t6, 2($v0)
/* 0CCBC4 8016C184 3C0F800C */  lui   $t7, %hi(D_800BE4FC) # $t7, 0x800c
/* 0CCBC8 8016C188 8DEFE4FC */  lw    $t7, %lo(D_800BE4FC)($t7)
/* 0CCBCC 8016C18C 24010002 */  li    $at, 2
/* 0CCBD0 8016C190 3C02800C */ lui $v0, %hi(D_800BE514)
/* 0CCBD4 8016C194 55E100CC */  bnel  $t7, $at, .L8016C4C8_ovl3
/* 0CCBD8 8016C198 8D020000 */   lw    $v0, ($t0)
/* 0CCBDC 8016C19C 8C42E514 */ lw $v0, %lo(D_800BE514)($v0)
/* 0CCBE0 8016C1A0 3C017FFF */  lui   $at, (0x7FFFFFFF >> 16) # lui $at, 0x7fff
/* 0CCBE4 8016C1A4 3421FFFF */  ori   $at, (0x7FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0CCBE8 8016C1A8 00412824 */  and   $a1, $v0, $at
/* 0CCBEC 8016C1AC 2CA1000C */  sltiu $at, $a1, 0xc
/* 0CCBF0 8016C1B0 102000B7 */  beqz  $at, .L8016C490_ovl3
/* 0CCBF4 8016C1B4 00056880 */   sll   $t5, $a1, 2
/* 0CCBF8 8016C1B8 3C018019 */ lui $at, %hi(jtbl_80197314)
/* 0CCBFC 8016C1BC 002D0821 */  addu  $at, $at, $t5
/* 0CCC00 8016C1C0 8C2D7314 */ lw $t5, %lo(jtbl_80197314)($at)
/* 0CCC04 8016C1C4 01A00008 */  jr    $t5
/* 0CCC08 8016C1C8 00000000 */   nop   
glabel L8016C1CC_ovl3
/* 0CCC0C 8016C1CC 8D020000 */  lw    $v0, ($t0)
/* 0CCC10 8016C1D0 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCC14 8016C1D4 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCC18 8016C1D8 8C580000 */  lw    $t8, ($v0)
/* 0CCC1C 8016C1DC 00184880 */  sll   $t1, $t8, 2
/* 0CCC20 8016C1E0 00695021 */  addu  $t2, $v1, $t1
/* 0CCC24 8016C1E4 100000BE */  b     .L8016C4E0_ovl3
/* 0CCC28 8016C1E8 AD400000 */   sw    $zero, ($t2)
glabel L8016C1EC_ovl3
/* 0CCC2C 8016C1EC 00025800 */  sll   $t3, $v0, 0
/* 0CCC30 8016C1F0 0561000C */  bgez  $t3, .L8016C224_ovl3
/* 0CCC34 8016C1F4 3C03800E */   lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCC38 8016C1F8 8D020000 */  lw    $v0, ($t0)
/* 0CCC3C 8016C1FC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CCC40 8016C200 44815000 */  mtc1  $at, $f10
/* 0CCC44 8016C204 8C590000 */  lw    $t9, ($v0)
/* 0CCC48 8016C208 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCC4C 8016C20C 240E0004 */  li    $t6, 4
/* 0CCC50 8016C210 00196080 */  sll   $t4, $t9, 2
/* 0CCC54 8016C214 002C0821 */  addu  $at, $at, $t4
/* 0CCC58 8016C218 E42A6A10 */ swc1 $f10, %lo(D_800E6A10)($at)
/* 0CCC5C 8016C21C 1000000B */  b     .L8016C24C_ovl3
/* 0CCC60 8016C220 A0EE000B */   sb    $t6, 0xb($a3)
.L8016C224_ovl3:
/* 0CCC64 8016C224 8D020000 */  lw    $v0, ($t0)
/* 0CCC68 8016C228 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CCC6C 8016C22C 44818000 */  mtc1  $at, $f16
/* 0CCC70 8016C230 8C4F0000 */  lw    $t7, ($v0)
/* 0CCC74 8016C234 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCC78 8016C238 24180003 */  li    $t8, 3
/* 0CCC7C 8016C23C 000F6880 */  sll   $t5, $t7, 2
/* 0CCC80 8016C240 002D0821 */  addu  $at, $at, $t5
/* 0CCC84 8016C244 E4306A10 */ swc1 $f16, %lo(D_800E6A10)($at)
/* 0CCC88 8016C248 A0F8000B */  sb    $t8, 0xb($a3)
.L8016C24C_ovl3:
/* 0CCC8C 8016C24C 8C4A0000 */  lw    $t2, ($v0)
/* 0CCC90 8016C250 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCC94 8016C254 24090047 */  li    $t1, 71
/* 0CCC98 8016C258 000A5880 */  sll   $t3, $t2, 2
/* 0CCC9C 8016C25C 006BC821 */  addu  $t9, $v1, $t3
/* 0CCCA0 8016C260 1000009F */  b     .L8016C4E0_ovl3
/* 0CCCA4 8016C264 AF290000 */   sw    $t1, ($t9)
glabel L8016C268_ovl3
/* 0CCCA8 8016C268 00026000 */  sll   $t4, $v0, 0
/* 0CCCAC 8016C26C 0581000A */  bgez  $t4, .L8016C298_ovl3
/* 0CCCB0 8016C270 3C03800E */   lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCCB4 8016C274 8D020000 */  lw    $v0, ($t0)
/* 0CCCB8 8016C278 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CCCBC 8016C27C 44819000 */  mtc1  $at, $f18
/* 0CCCC0 8016C280 8C4E0000 */  lw    $t6, ($v0)
/* 0CCCC4 8016C284 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCCC8 8016C288 000E7880 */  sll   $t7, $t6, 2
/* 0CCCCC 8016C28C 002F0821 */  addu  $at, $at, $t7
/* 0CCCD0 8016C290 10000009 */  b     .L8016C2B8_ovl3
/* 0CCCD4 8016C294 E4326A10 */ swc1 $f18, %lo(D_800E6A10)($at)
.L8016C298_ovl3:
/* 0CCCD8 8016C298 8D020000 */  lw    $v0, ($t0)
/* 0CCCDC 8016C29C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CCCE0 8016C2A0 44812000 */  mtc1  $at, $f4
/* 0CCCE4 8016C2A4 8C4D0000 */  lw    $t5, ($v0)
/* 0CCCE8 8016C2A8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCCEC 8016C2AC 000DC080 */  sll   $t8, $t5, 2
/* 0CCCF0 8016C2B0 00380821 */  addu  $at, $at, $t8
/* 0CCCF4 8016C2B4 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
.L8016C2B8_ovl3:
/* 0CCCF8 8016C2B8 240A0001 */  li    $t2, 1
/* 0CCCFC 8016C2BC A0EA000B */  sb    $t2, 0xb($a3)
/* 0CCD00 8016C2C0 8C490000 */  lw    $t1, ($v0)
/* 0CCD04 8016C2C4 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCD08 8016C2C8 240B0047 */  li    $t3, 71
/* 0CCD0C 8016C2CC 0009C880 */  sll   $t9, $t1, 2
/* 0CCD10 8016C2D0 00796021 */  addu  $t4, $v1, $t9
/* 0CCD14 8016C2D4 10000082 */  b     .L8016C4E0_ovl3
/* 0CCD18 8016C2D8 AD8B0000 */   sw    $t3, ($t4)
glabel L8016C2DC_ovl3
/* 0CCD1C 8016C2DC 00027000 */  sll   $t6, $v0, 0
/* 0CCD20 8016C2E0 05C1000A */  bgez  $t6, .L8016C30C_ovl3
/* 0CCD24 8016C2E4 ACE5003C */   sw    $a1, 0x3c($a3)
/* 0CCD28 8016C2E8 8D020000 */  lw    $v0, ($t0)
/* 0CCD2C 8016C2EC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CCD30 8016C2F0 44813000 */  mtc1  $at, $f6
/* 0CCD34 8016C2F4 8C4F0000 */  lw    $t7, ($v0)
/* 0CCD38 8016C2F8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCD3C 8016C2FC 000F6880 */  sll   $t5, $t7, 2
/* 0CCD40 8016C300 002D0821 */  addu  $at, $at, $t5
/* 0CCD44 8016C304 10000009 */  b     .L8016C32C_ovl3
/* 0CCD48 8016C308 E4266A10 */ swc1 $f6, %lo(D_800E6A10)($at)
.L8016C30C_ovl3:
/* 0CCD4C 8016C30C 8D020000 */  lw    $v0, ($t0)
/* 0CCD50 8016C310 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CCD54 8016C314 44814000 */  mtc1  $at, $f8
/* 0CCD58 8016C318 8C580000 */  lw    $t8, ($v0)
/* 0CCD5C 8016C31C 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCD60 8016C320 00185080 */  sll   $t2, $t8, 2
/* 0CCD64 8016C324 002A0821 */  addu  $at, $at, $t2
/* 0CCD68 8016C328 E4286A10 */ swc1 $f8, %lo(D_800E6A10)($at)
.L8016C32C_ovl3:
/* 0CCD6C 8016C32C 24090002 */  li    $t1, 2
/* 0CCD70 8016C330 A0E9000B */  sb    $t1, 0xb($a3)
/* 0CCD74 8016C334 8C4B0000 */  lw    $t3, ($v0)
/* 0CCD78 8016C338 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCD7C 8016C33C 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCD80 8016C340 000B6080 */  sll   $t4, $t3, 2
/* 0CCD84 8016C344 006C7021 */  addu  $t6, $v1, $t4
/* 0CCD88 8016C348 24190047 */  li    $t9, 71
/* 0CCD8C 8016C34C 10000064 */  b     .L8016C4E0_ovl3
/* 0CCD90 8016C350 ADD90000 */   sw    $t9, ($t6)
glabel L8016C354_ovl3
/* 0CCD94 8016C354 90EF0004 */  lbu   $t7, 4($a3)
/* 0CCD98 8016C358 00024800 */  sll   $t1, $v0, 0
/* 0CCD9C 8016C35C 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCDA0 8016C360 15E00004 */  bnez  $t7, .L8016C374_ovl3
/* 0CCDA4 8016C364 240D0005 */   li    $t5, 5
/* 0CCDA8 8016C368 ACE5003C */  sw    $a1, 0x3c($a3)
/* 0CCDAC 8016C36C 10000009 */  b     .L8016C394_ovl3
/* 0CCDB0 8016C370 A0ED000B */   sb    $t5, 0xb($a3)
.L8016C374_ovl3:
/* 0CCDB4 8016C374 24010005 */  li    $at, 5
/* 0CCDB8 8016C378 14A10004 */  bne   $a1, $at, .L8016C38C_ovl3
/* 0CCDBC 8016C37C ACE0003C */   sw    $zero, 0x3c($a3)
/* 0CCDC0 8016C380 24180002 */  li    $t8, 2
/* 0CCDC4 8016C384 10000003 */  b     .L8016C394_ovl3
/* 0CCDC8 8016C388 A0F8000B */   sb    $t8, 0xb($a3)
.L8016C38C_ovl3:
/* 0CCDCC 8016C38C 240A0001 */  li    $t2, 1
/* 0CCDD0 8016C390 A0EA000B */  sb    $t2, 0xb($a3)
.L8016C394_ovl3:
/* 0CCDD4 8016C394 0523000B */  bgezl $t1, .L8016C3C4_ovl3
/* 0CCDD8 8016C398 8D020000 */   lw    $v0, ($t0)
/* 0CCDDC 8016C39C 8D020000 */  lw    $v0, ($t0)
/* 0CCDE0 8016C3A0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CCDE4 8016C3A4 44815000 */  mtc1  $at, $f10
/* 0CCDE8 8016C3A8 8C4B0000 */  lw    $t3, ($v0)
/* 0CCDEC 8016C3AC 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCDF0 8016C3B0 000B6080 */  sll   $t4, $t3, 2
/* 0CCDF4 8016C3B4 002C0821 */  addu  $at, $at, $t4
/* 0CCDF8 8016C3B8 10000009 */  b     .L8016C3E0_ovl3
/* 0CCDFC 8016C3BC E42A6A10 */ swc1 $f10, %lo(D_800E6A10)($at)
/* 0CCE00 8016C3C0 8D020000 */  lw    $v0, ($t0)
.L8016C3C4_ovl3:
/* 0CCE04 8016C3C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CCE08 8016C3C8 44818000 */  mtc1  $at, $f16
/* 0CCE0C 8016C3CC 8C590000 */  lw    $t9, ($v0)
/* 0CCE10 8016C3D0 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCE14 8016C3D4 00197080 */  sll   $t6, $t9, 2
/* 0CCE18 8016C3D8 002E0821 */  addu  $at, $at, $t6
/* 0CCE1C 8016C3DC E4306A10 */ swc1 $f16, %lo(D_800E6A10)($at)
.L8016C3E0_ovl3:
/* 0CCE20 8016C3E0 8C4D0000 */  lw    $t5, ($v0)
/* 0CCE24 8016C3E4 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCE28 8016C3E8 240F0047 */  li    $t7, 71
/* 0CCE2C 8016C3EC 000DC080 */  sll   $t8, $t5, 2
/* 0CCE30 8016C3F0 00785021 */  addu  $t2, $v1, $t8
/* 0CCE34 8016C3F4 1000003A */  b     .L8016C4E0_ovl3
/* 0CCE38 8016C3F8 AD4F0000 */   sw    $t7, ($t2)
glabel L8016C3FC_ovl3
/* 0CCE3C 8016C3FC 90E90004 */  lbu   $t1, 4($a3)
/* 0CCE40 8016C400 0002C800 */  sll   $t9, $v0, 0
/* 0CCE44 8016C404 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCE48 8016C408 15200004 */  bnez  $t1, .L8016C41C_ovl3
/* 0CCE4C 8016C40C 240B0006 */   li    $t3, 6
/* 0CCE50 8016C410 ACE5003C */  sw    $a1, 0x3c($a3)
/* 0CCE54 8016C414 10000004 */  b     .L8016C428_ovl3
/* 0CCE58 8016C418 A0EB000B */   sb    $t3, 0xb($a3)
.L8016C41C_ovl3:
/* 0CCE5C 8016C41C 240C0001 */  li    $t4, 1
/* 0CCE60 8016C420 ACE0003C */  sw    $zero, 0x3c($a3)
/* 0CCE64 8016C424 A0EC000B */  sb    $t4, 0xb($a3)
.L8016C428_ovl3:
/* 0CCE68 8016C428 0723000B */  bgezl $t9, .L8016C458_ovl3
/* 0CCE6C 8016C42C 8D020000 */   lw    $v0, ($t0)
/* 0CCE70 8016C430 8D020000 */  lw    $v0, ($t0)
/* 0CCE74 8016C434 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CCE78 8016C438 44819000 */  mtc1  $at, $f18
/* 0CCE7C 8016C43C 8C4E0000 */  lw    $t6, ($v0)
/* 0CCE80 8016C440 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCE84 8016C444 000E6880 */  sll   $t5, $t6, 2
/* 0CCE88 8016C448 002D0821 */  addu  $at, $at, $t5
/* 0CCE8C 8016C44C 10000009 */  b     .L8016C474_ovl3
/* 0CCE90 8016C450 E4326A10 */ swc1 $f18, %lo(D_800E6A10)($at)
/* 0CCE94 8016C454 8D020000 */  lw    $v0, ($t0)
.L8016C458_ovl3:
/* 0CCE98 8016C458 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CCE9C 8016C45C 44812000 */  mtc1  $at, $f4
/* 0CCEA0 8016C460 8C580000 */  lw    $t8, ($v0)
/* 0CCEA4 8016C464 3C01800E */ lui $at, %hi(D_800E6A10)
/* 0CCEA8 8016C468 00187880 */  sll   $t7, $t8, 2
/* 0CCEAC 8016C46C 002F0821 */  addu  $at, $at, $t7
/* 0CCEB0 8016C470 E4246A10 */ swc1 $f4, %lo(D_800E6A10)($at)
.L8016C474_ovl3:
/* 0CCEB4 8016C474 8C490000 */  lw    $t1, ($v0)
/* 0CCEB8 8016C478 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCEBC 8016C47C 240A0047 */  li    $t2, 71
/* 0CCEC0 8016C480 00095880 */  sll   $t3, $t1, 2
/* 0CCEC4 8016C484 006B6021 */  addu  $t4, $v1, $t3
/* 0CCEC8 8016C488 10000015 */  b     .L8016C4E0_ovl3
/* 0CCECC 8016C48C AD8A0000 */   sw    $t2, ($t4)
.L8016C490_ovl3:
/* 0CCED0 8016C490 3C048019 */  lui   $a0, %hi(D_801972D0) # $a0, 0x8019
/* 0CCED4 8016C494 0C02909C */  jal   print_error_stub
/* 0CCED8 8016C498 248472D0 */   addiu $a0, %lo(D_801972D0) # addiu $a0, $a0, 0x72d0
/* 0CCEDC 8016C49C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CCEE0 8016C4A0 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0CCEE4 8016C4A4 8D020000 */  lw    $v0, ($t0)
/* 0CCEE8 8016C4A8 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCEEC 8016C4AC 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCEF0 8016C4B0 8C590000 */  lw    $t9, ($v0)
/* 0CCEF4 8016C4B4 00197080 */  sll   $t6, $t9, 2
/* 0CCEF8 8016C4B8 006E6821 */  addu  $t5, $v1, $t6
/* 0CCEFC 8016C4BC 10000008 */  b     .L8016C4E0_ovl3
/* 0CCF00 8016C4C0 ADA00000 */   sw    $zero, ($t5)
/* 0CCF04 8016C4C4 8D020000 */  lw    $v0, ($t0)
.L8016C4C8_ovl3:
/* 0CCF08 8016C4C8 3C03800E */  lui   $v1, %hi(gEntityVtableIndexArray) # $v1, 0x800e
/* 0CCF0C 8016C4CC 2463DC50 */  addiu $v1, %lo(gEntityVtableIndexArray) # addiu $v1, $v1, -0x23b0
/* 0CCF10 8016C4D0 8C580000 */  lw    $t8, ($v0)
/* 0CCF14 8016C4D4 00187880 */  sll   $t7, $t8, 2
/* 0CCF18 8016C4D8 006F4821 */  addu  $t1, $v1, $t7
/* 0CCF1C 8016C4DC AD200000 */  sw    $zero, ($t1)
.L8016C4E0_ovl3:
/* 0CCF20 8016C4E0 8C4B0000 */  lw    $t3, ($v0)
/* 0CCF24 8016C4E4 3C068019 */  lui   $a2, %hi(D_80196990) # $a2, 0x8019
/* 0CCF28 8016C4E8 24C66990 */  addiu $a2, %lo(D_80196990) # addiu $a2, $a2, 0x6990
/* 0CCF2C 8016C4EC 000B5080 */  sll   $t2, $t3, 2
/* 0CCF30 8016C4F0 006A6021 */  addu  $t4, $v1, $t2
/* 0CCF34 8016C4F4 8D840000 */  lw    $a0, ($t4)
/* 0CCF38 8016C4F8 0C02911F */  jal   call_virtual_function
/* 0CCF3C 8016C4FC 24050056 */   li    $a1, 86
/* 0CCF40 8016C500 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CCF44 8016C504 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CCF48 8016C508 03E00008 */  jr    $ra
/* 0CCF4C 8016C50C 00000000 */   nop   
.type func_8016BF60_ovl3, @function
.size func_8016BF60_ovl3, . - func_8016BF60_ovl3
