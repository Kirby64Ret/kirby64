glabel func_8016BF60_ovl3
/* CC9A0 8016BF60 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CC9A4 8016BF64 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CC9A8 8016BF68 8CEE0028 */  lw         $t6, 0x28($a3)
/* CC9AC 8016BF6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC9B0 8016BF70 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC9B4 8016BF74 11C00007 */  beqz       $t6, .L8016BF94_ovl3
/* CC9B8 8016BF78 AFA40018 */   sw        $a0, 0x18($sp)
/* CC9BC 8016BF7C 2418001F */  addiu      $t8, $zero, 0x1F
/* CC9C0 8016BF80 A0F80005 */  sb         $t8, 0x5($a3)
/* CC9C4 8016BF84 0C076C78 */  jal        func_801DB1E0_ovl17
/* CC9C8 8016BF88 A0F80006 */   sb        $t8, 0x6($a3)
/* CC9CC 8016BF8C 0C02BE85 */  jal        func_800AFA14
/* CC9D0 8016BF90 00000000 */   nop
.L8016BF94_ovl3:
/* CC9D4 8016BF94 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CC9D8 8016BF98 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CC9DC 8016BF9C 8D020000 */  lw         $v0, 0x0($t0)
/* CC9E0 8016BFA0 3C198017 */  lui        $t9, %hi(func_8016C558_ovl3)
/* CC9E4 8016BFA4 3C01800E */  lui        $at, %hi(D_800DF150)
.L8016BFA8_ovl5:
/* CC9E8 8016BFA8 8C490000 */  lw         $t1, 0x0($v0)
/* CC9EC 8016BFAC 2739C558 */  addiu      $t9, $t9, %lo(func_8016C558_ovl3)
/* CC9F0 8016BFB0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray3)
/* CC9F4 8016BFB4 00095080 */  sll        $t2, $t1, 2
/* CC9F8 8016BFB8 002A0821 */  addu       $at, $at, $t2
/* CC9FC 8016BFBC AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* CCA00 8016BFC0 8C4B0000 */  lw         $t3, 0x0($v0)
/* CCA04 8016BFC4 3C058017 */  lui        $a1, %hi(func_80177000_ovl3)
.L8016BFC8_ovl5:
/* CCA08 8016BFC8 24A57000 */  addiu      $a1, $a1, %lo(func_80177000_ovl3)
/* CCA0C 8016BFCC 000B6080 */  sll        $t4, $t3, 2
/* CCA10 8016BFD0 008C2021 */  addu       $a0, $a0, $t4
/* CCA14 8016BFD4 0C02C7B2 */  jal        assign_new_process_entry
/* CCA18 8016BFD8 8C84E890 */   lw        $a0, %lo(gEntityGObjProcessArray3)($a0)
/* CCA1C 8016BFDC 0C04723E */  jal        func_8011C8F8
/* CCA20 8016BFE0 00000000 */   nop
/* CCA24 8016BFE4 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCA28 8016BFE8 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CCA2C 8016BFEC 90ED0004 */  lbu        $t5, 0x4($a3)
glabel func_8016BFF0_ovl5
/* CCA30 8016BFF0 3C048019 */  lui        $a0, %hi(D_80196D48_ovl3)
/* CCA34 8016BFF4 24050020 */  addiu      $a1, $zero, 0x20
/* CCA38 8016BFF8 000D7080 */  sll        $t6, $t5, 2
/* CCA3C 8016BFFC 008E2021 */  addu       $a0, $a0, $t6
/* CCA40 8016C000 8C846D48 */  lw         $a0, %lo(D_80196D48_ovl3)($a0)
/* CCA44 8016C004 0C02A619 */  jal        func_800A9864
/* CCA48 8016C008 24060010 */   addiu     $a2, $zero, 0x10
/* CCA4C 8016C00C 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCA50 8016C010 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CCA54 8016C014 240F0002 */  addiu      $t7, $zero, 0x2
/* CCA58 8016C018 ACEF0154 */  sw         $t7, 0x154($a3)
/* CCA5C 8016C01C 3C03800D */  lui        $v1, %hi(D_800D6F58 + 0x58)
/* CCA60 8016C020 94636FB0 */  lhu        $v1, %lo(D_800D6F58 + 0x58)($v1)
/* CCA64 8016C024 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CCA68 8016C028 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CCA6C 8016C02C 10600013 */  beqz       $v1, .L8016C07C_ovl3
/* CCA70 8016C030 00031203 */   sra       $v0, $v1, 8
/* CCA74 8016C034 24010001 */  addiu      $at, $zero, 0x1
/* CCA78 8016C038 ACE000A8 */  sw         $zero, 0xA8($a3)
/* CCA7C 8016C03C ACE000AC */  sw         $zero, 0xAC($a3)
/* CCA80 8016C040 10410006 */  beq        $v0, $at, .L8016C05C_ovl3
/* CCA84 8016C044 A0E00004 */   sb        $zero, 0x4($a3)
/* CCA88 8016C048 24010002 */  addiu      $at, $zero, 0x2
/* CCA8C 8016C04C 1041000A */  beq        $v0, $at, .L8016C078_ovl3
/* CCA90 8016C050 2418004B */   addiu     $t8, $zero, 0x4B
/* CCA94 8016C054 1000000A */  b          .L8016C080_ovl3
/* CCA98 8016C058 90E90004 */   lbu       $t1, 0x4($a3)
.L8016C05C_ovl3:
/* CCA9C 8016C05C 0C089FCE */  jal        func_80227F38_ovl19
/* CCAA0 8016C060 00000000 */   nop
/* CCAA4 8016C064 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCAA8 8016C068 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CCAAC 8016C06C 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CCAB0 8016C070 10000002 */  b          .L8016C07C_ovl3
/* CCAB4 8016C074 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
.L8016C078_ovl3:
/* CCAB8 8016C078 A0F8000C */  sb         $t8, 0xC($a3)
.L8016C07C_ovl3:
/* CCABC 8016C07C 90E90004 */  lbu        $t1, 0x4($a3)
.L8016C080_ovl3:
/* CCAC0 8016C080 24010001 */  addiu      $at, $zero, 0x1
/* CCAC4 8016C084 5521000B */  bnel       $t1, $at, .L8016C0B4_ovl3
/* CCAC8 8016C088 8D0E0000 */   lw        $t6, 0x0($t0)
/* CCACC 8016C08C 8D0A0000 */  lw         $t2, 0x0($t0)
/* CCAD0 8016C090 3C198019 */  lui        $t9, %hi(D_80192704_ovl3)
/* CCAD4 8016C094 3C01800E */  lui        $at, %hi(D_800E0490)
/* CCAD8 8016C098 8D4B0000 */  lw         $t3, 0x0($t2)
/* CCADC 8016C09C 27392704 */  addiu      $t9, $t9, %lo(D_80192704_ovl3)
/* CCAE0 8016C0A0 000B6080 */  sll        $t4, $t3, 2
/* CCAE4 8016C0A4 002C0821 */  addu       $at, $at, $t4
/* CCAE8 8016C0A8 10000009 */  b          .L8016C0D0_ovl3
/* CCAEC 8016C0AC AC390490 */   sw        $t9, %lo(D_800E0490)($at)
/* CCAF0 8016C0B0 8D0E0000 */  lw         $t6, 0x0($t0)
.L8016C0B4_ovl3:
/* CCAF4 8016C0B4 3C0D8019 */  lui        $t5, %hi(D_801926E8_ovl3)
/* CCAF8 8016C0B8 3C01800E */  lui        $at, %hi(D_800E0490)
/* CCAFC 8016C0BC 8DCF0000 */  lw         $t7, 0x0($t6)
/* CCB00 8016C0C0 25AD26E8 */  addiu      $t5, $t5, %lo(D_801926E8_ovl3)
/* CCB04 8016C0C4 000FC080 */  sll        $t8, $t7, 2
/* CCB08 8016C0C8 00380821 */  addu       $at, $at, $t8
/* CCB0C 8016C0CC AC2D0490 */  sw         $t5, %lo(D_800E0490)($at)
.L8016C0D0_ovl3:
/* CCB10 8016C0D0 0C03E39B */  jal        func_800F8E6C
/* CCB14 8016C0D4 8FA40018 */   lw        $a0, 0x18($sp)
/* CCB18 8016C0D8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* CCB1C 8016C0DC 44816000 */  mtc1       $at, $f12
/* CCB20 8016C0E0 0C0548D2 */  jal        func_80152348_ovl3
/* CCB24 8016C0E4 00000000 */   nop
/* CCB28 8016C0E8 0C03FC51 */  jal        func_800FF144
/* CCB2C 8016C0EC 00000000 */   nop
/* CCB30 8016C0F0 3C038013 */  lui        $v1, %hi(D_8012E922 + 0x22)
/* CCB34 8016C0F4 2463E944 */  addiu      $v1, $v1, %lo(D_8012E922 + 0x22)
/* CCB38 8016C0F8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCB3C 8016C0FC 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CCB40 8016C100 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CCB44 8016C104 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CCB48 8016C108 1040000E */  beqz       $v0, .L8016C144_ovl3
/* CCB4C 8016C10C AC620000 */   sw        $v0, 0x0($v1)
/* CCB50 8016C110 3C014190 */  lui        $at, (0x41900000 >> 16)
/* CCB54 8016C114 44812000 */  mtc1       $at, $f4
/* CCB58 8016C118 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* CCB5C 8016C11C 44813000 */  mtc1       $at, $f6
/* CCB60 8016C120 E4440010 */  swc1       $f4, 0x10($v0)
/* CCB64 8016C124 8C690000 */  lw         $t1, 0x0($v1)
/* CCB68 8016C128 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* CCB6C 8016C12C 44814000 */  mtc1       $at, $f8
/* CCB70 8016C130 E5260014 */  swc1       $f6, 0x14($t1)
/* CCB74 8016C134 8C6A0000 */  lw         $t2, 0x0($v1)
/* CCB78 8016C138 E5480018 */  swc1       $f8, 0x18($t2)
/* CCB7C 8016C13C 8C6B0000 */  lw         $t3, 0x0($v1)
/* CCB80 8016C140 A1600021 */  sb         $zero, 0x21($t3)
.L8016C144_ovl3:
/* CCB84 8016C144 90F90004 */  lbu        $t9, 0x4($a3)
.L8016C148_ovl5:
/* CCB88 8016C148 13200007 */  beqz       $t9, .L8016C168_ovl3
/* CCB8C 8016C14C 00000000 */   nop
/* CCB90 8016C150 0C04732E */  jal        func_8011CCB8
/* CCB94 8016C154 00000000 */   nop
.L8016C158_ovl5:
/* CCB98 8016C158 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCB9C 8016C15C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CCBA0 8016C160 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CCBA4 8016C164 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016C168_ovl3:
/* CCBA8 8016C168 3C02801A */  lui        $v0, %hi(D_80198830_ovl3)
/* CCBAC 8016C16C 24428830 */  addiu      $v0, $v0, %lo(D_80198830_ovl3)
/* CCBB0 8016C170 240C00F0 */  addiu      $t4, $zero, 0xF0
/* CCBB4 8016C174 240E0002 */  addiu      $t6, $zero, 0x2
/* CCBB8 8016C178 ACEC001C */  sw         $t4, 0x1C($a3)
/* CCBBC 8016C17C A4400000 */  sh         $zero, 0x0($v0)
/* CCBC0 8016C180 A44E0002 */  sh         $t6, 0x2($v0)
/* CCBC4 8016C184 3C0F800C */  lui        $t7, %hi(D_800BE4FC)
/* CCBC8 8016C188 8DEFE4FC */  lw         $t7, %lo(D_800BE4FC)($t7)
/* CCBCC 8016C18C 24010002 */  addiu      $at, $zero, 0x2
/* CCBD0 8016C190 3C02800C */  lui        $v0, (0x800C0000 >> 16)
/* CCBD4 8016C194 55E100CC */  bnel       $t7, $at, .L8016C4C8_ovl3
.L8016C198_ovl5:
/* CCBD8 8016C198 8D020000 */   lw        $v0, 0x0($t0)
/* CCBDC 8016C19C 8C42E514 */  lw         $v0, -0x1AEC($v0)
/* CCBE0 8016C1A0 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
/* CCBE4 8016C1A4 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
/* CCBE8 8016C1A8 00412824 */  and        $a1, $v0, $at
/* CCBEC 8016C1AC 2CA1000C */  sltiu      $at, $a1, 0xC
.L8016C1B0_ovl5:
/* CCBF0 8016C1B0 102000B7 */  beqz       $at, .L8016C490_ovl3
/* CCBF4 8016C1B4 00056880 */   sll       $t5, $a1, 2
/* CCBF8 8016C1B8 3C018019 */  lui        $at, %hi(jtbl_80197314_ovl3)
/* CCBFC 8016C1BC 002D0821 */  addu       $at, $at, $t5
/* CCC00 8016C1C0 8C2D7314 */  lw         $t5, %lo(jtbl_80197314_ovl3)($at)
/* CCC04 8016C1C4 01A00008 */  jr         $t5
/* CCC08 8016C1C8 00000000 */   nop
.L8016C1CC_ovl5:
/* CCC0C 8016C1CC 8D020000 */  lw         $v0, 0x0($t0)
/* CCC10 8016C1D0 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCC14 8016C1D4 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCC18 8016C1D8 8C580000 */  lw         $t8, 0x0($v0)
/* CCC1C 8016C1DC 00184880 */  sll        $t1, $t8, 2
/* CCC20 8016C1E0 00695021 */  addu       $t2, $v1, $t1
/* CCC24 8016C1E4 100000BE */  b          .L8016C4E0_ovl3
/* CCC28 8016C1E8 AD400000 */   sw        $zero, 0x0($t2)
/* CCC2C 8016C1EC 00025800 */  sll        $t3, $v0, 0
/* CCC30 8016C1F0 0561000C */  bgez       $t3, .L8016C224_ovl3
/* CCC34 8016C1F4 3C03800E */   lui       $v1, %hi(gEntityVtableIndexArray)
/* CCC38 8016C1F8 8D020000 */  lw         $v0, 0x0($t0)
/* CCC3C 8016C1FC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CCC40 8016C200 44815000 */  mtc1       $at, $f10
/* CCC44 8016C204 8C590000 */  lw         $t9, 0x0($v0)
glabel func_8016C208_ovl5
/* CCC48 8016C208 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCC4C 8016C20C 240E0004 */  addiu      $t6, $zero, 0x4
/* CCC50 8016C210 00196080 */  sll        $t4, $t9, 2
/* CCC54 8016C214 002C0821 */  addu       $at, $at, $t4
/* CCC58 8016C218 E42A6A10 */  swc1       $f10, %lo(D_800E6A10)($at)
/* CCC5C 8016C21C 1000000B */  b          .L8016C24C_ovl3
/* CCC60 8016C220 A0EE000B */   sb        $t6, 0xB($a3)
.L8016C224_ovl3:
/* CCC64 8016C224 8D020000 */  lw         $v0, 0x0($t0)
/* CCC68 8016C228 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CCC6C 8016C22C 44818000 */  mtc1       $at, $f16
/* CCC70 8016C230 8C4F0000 */  lw         $t7, 0x0($v0)
/* CCC74 8016C234 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCC78 8016C238 24180003 */  addiu      $t8, $zero, 0x3
/* CCC7C 8016C23C 000F6880 */  sll        $t5, $t7, 2
/* CCC80 8016C240 002D0821 */  addu       $at, $at, $t5
/* CCC84 8016C244 E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
/* CCC88 8016C248 A0F8000B */  sb         $t8, 0xB($a3)
.L8016C24C_ovl3:
/* CCC8C 8016C24C 8C4A0000 */  lw         $t2, 0x0($v0)
/* CCC90 8016C250 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCC94 8016C254 24090047 */  addiu      $t1, $zero, 0x47
/* CCC98 8016C258 000A5880 */  sll        $t3, $t2, 2
/* CCC9C 8016C25C 006BC821 */  addu       $t9, $v1, $t3
/* CCCA0 8016C260 1000009F */  b          .L8016C4E0_ovl3
/* CCCA4 8016C264 AF290000 */   sw        $t1, 0x0($t9)
/* CCCA8 8016C268 00026000 */  sll        $t4, $v0, 0
/* CCCAC 8016C26C 0581000A */  bgez       $t4, .L8016C298_ovl3
/* CCCB0 8016C270 3C03800E */   lui       $v1, %hi(gEntityVtableIndexArray)
/* CCCB4 8016C274 8D020000 */  lw         $v0, 0x0($t0)
/* CCCB8 8016C278 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
.L8016C27C_ovl5:
/* CCCBC 8016C27C 44819000 */  mtc1       $at, $f18
/* CCCC0 8016C280 8C4E0000 */  lw         $t6, 0x0($v0)
/* CCCC4 8016C284 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCCC8 8016C288 000E7880 */  sll        $t7, $t6, 2
glabel func_8016C28C_ovl5
/* CCCCC 8016C28C 002F0821 */  addu       $at, $at, $t7
/* CCCD0 8016C290 10000009 */  b          .L8016C2B8_ovl3
/* CCCD4 8016C294 E4326A10 */   swc1      $f18, %lo(D_800E6A10)($at)
.L8016C298_ovl3:
/* CCCD8 8016C298 8D020000 */  lw         $v0, 0x0($t0)
/* CCCDC 8016C29C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CCCE0 8016C2A0 44812000 */  mtc1       $at, $f4
/* CCCE4 8016C2A4 8C4D0000 */  lw         $t5, 0x0($v0)
/* CCCE8 8016C2A8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCCEC 8016C2AC 000DC080 */  sll        $t8, $t5, 2
/* CCCF0 8016C2B0 00380821 */  addu       $at, $at, $t8
/* CCCF4 8016C2B4 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
.L8016C2B8_ovl3:
/* CCCF8 8016C2B8 240A0001 */  addiu      $t2, $zero, 0x1
/* CCCFC 8016C2BC A0EA000B */  sb         $t2, 0xB($a3)
/* CCD00 8016C2C0 8C490000 */  lw         $t1, 0x0($v0)
/* CCD04 8016C2C4 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCD08 8016C2C8 240B0047 */  addiu      $t3, $zero, 0x47
/* CCD0C 8016C2CC 0009C880 */  sll        $t9, $t1, 2
/* CCD10 8016C2D0 00796021 */  addu       $t4, $v1, $t9
/* CCD14 8016C2D4 10000082 */  b          .L8016C4E0_ovl3
/* CCD18 8016C2D8 AD8B0000 */   sw        $t3, 0x0($t4)
/* CCD1C 8016C2DC 00027000 */  sll        $t6, $v0, 0
/* CCD20 8016C2E0 05C1000A */  bgez       $t6, .L8016C30C_ovl3
/* CCD24 8016C2E4 ACE5003C */   sw        $a1, 0x3C($a3)
/* CCD28 8016C2E8 8D020000 */  lw         $v0, 0x0($t0)
/* CCD2C 8016C2EC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CCD30 8016C2F0 44813000 */  mtc1       $at, $f6
/* CCD34 8016C2F4 8C4F0000 */  lw         $t7, 0x0($v0)
/* CCD38 8016C2F8 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCD3C 8016C2FC 000F6880 */  sll        $t5, $t7, 2
/* CCD40 8016C300 002D0821 */  addu       $at, $at, $t5
/* CCD44 8016C304 10000009 */  b          .L8016C32C_ovl3
/* CCD48 8016C308 E4266A10 */   swc1      $f6, %lo(D_800E6A10)($at)
.L8016C30C_ovl3:
/* CCD4C 8016C30C 8D020000 */  lw         $v0, 0x0($t0)
/* CCD50 8016C310 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CCD54 8016C314 44814000 */  mtc1       $at, $f8
/* CCD58 8016C318 8C580000 */  lw         $t8, 0x0($v0)
/* CCD5C 8016C31C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCD60 8016C320 00185080 */  sll        $t2, $t8, 2
/* CCD64 8016C324 002A0821 */  addu       $at, $at, $t2
/* CCD68 8016C328 E4286A10 */  swc1       $f8, %lo(D_800E6A10)($at)
.L8016C32C_ovl3:
/* CCD6C 8016C32C 24090002 */  addiu      $t1, $zero, 0x2
/* CCD70 8016C330 A0E9000B */  sb         $t1, 0xB($a3)
/* CCD74 8016C334 8C4B0000 */  lw         $t3, 0x0($v0)
/* CCD78 8016C338 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCD7C 8016C33C 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCD80 8016C340 000B6080 */  sll        $t4, $t3, 2
/* CCD84 8016C344 006C7021 */  addu       $t6, $v1, $t4
/* CCD88 8016C348 24190047 */  addiu      $t9, $zero, 0x47
/* CCD8C 8016C34C 10000064 */  b          .L8016C4E0_ovl3
/* CCD90 8016C350 ADD90000 */   sw        $t9, 0x0($t6)
/* CCD94 8016C354 90EF0004 */  lbu        $t7, 0x4($a3)
/* CCD98 8016C358 00024800 */  sll        $t1, $v0, 0
/* CCD9C 8016C35C 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCDA0 8016C360 15E00004 */  bnez       $t7, .L8016C374_ovl3
/* CCDA4 8016C364 240D0005 */   addiu     $t5, $zero, 0x5
.L8016C368_ovl5:
/* CCDA8 8016C368 ACE5003C */  sw         $a1, 0x3C($a3)
/* CCDAC 8016C36C 10000009 */  b          .L8016C394_ovl3
/* CCDB0 8016C370 A0ED000B */   sb        $t5, 0xB($a3)
.L8016C374_ovl3:
/* CCDB4 8016C374 24010005 */  addiu      $at, $zero, 0x5
/* CCDB8 8016C378 14A10004 */  bne        $a1, $at, .L8016C38C_ovl3
/* CCDBC 8016C37C ACE0003C */   sw        $zero, 0x3C($a3)
/* CCDC0 8016C380 24180002 */  addiu      $t8, $zero, 0x2
/* CCDC4 8016C384 10000003 */  b          .L8016C394_ovl3
/* CCDC8 8016C388 A0F8000B */   sb        $t8, 0xB($a3)
.L8016C38C_ovl3:
/* CCDCC 8016C38C 240A0001 */  addiu      $t2, $zero, 0x1
.L8016C390_ovl5:
/* CCDD0 8016C390 A0EA000B */  sb         $t2, 0xB($a3)
.L8016C394_ovl3:
/* CCDD4 8016C394 0523000B */  bgezl      $t1, .L8016C3C4_ovl3
/* CCDD8 8016C398 8D020000 */   lw        $v0, 0x0($t0)
/* CCDDC 8016C39C 8D020000 */  lw         $v0, 0x0($t0)
/* CCDE0 8016C3A0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CCDE4 8016C3A4 44815000 */  mtc1       $at, $f10
/* CCDE8 8016C3A8 8C4B0000 */  lw         $t3, 0x0($v0)
/* CCDEC 8016C3AC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCDF0 8016C3B0 000B6080 */  sll        $t4, $t3, 2
.L8016C3B4_ovl5:
/* CCDF4 8016C3B4 002C0821 */  addu       $at, $at, $t4
/* CCDF8 8016C3B8 10000009 */  b          .L8016C3E0_ovl3
/* CCDFC 8016C3BC E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* CCE00 8016C3C0 8D020000 */  lw         $v0, 0x0($t0)
.L8016C3C4_ovl3:
/* CCE04 8016C3C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CCE08 8016C3C8 44818000 */  mtc1       $at, $f16
/* CCE0C 8016C3CC 8C590000 */  lw         $t9, 0x0($v0)
/* CCE10 8016C3D0 3C01800E */  lui        $at, %hi(D_800E6A10)
.L8016C3D4_ovl5:
/* CCE14 8016C3D4 00197080 */  sll        $t6, $t9, 2
/* CCE18 8016C3D8 002E0821 */  addu       $at, $at, $t6
/* CCE1C 8016C3DC E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
.L8016C3E0_ovl3:
/* CCE20 8016C3E0 8C4D0000 */  lw         $t5, 0x0($v0)
/* CCE24 8016C3E4 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCE28 8016C3E8 240F0047 */  addiu      $t7, $zero, 0x47
/* CCE2C 8016C3EC 000DC080 */  sll        $t8, $t5, 2
/* CCE30 8016C3F0 00785021 */  addu       $t2, $v1, $t8
/* CCE34 8016C3F4 1000003A */  b          .L8016C4E0_ovl3
/* CCE38 8016C3F8 AD4F0000 */   sw        $t7, 0x0($t2)
/* CCE3C 8016C3FC 90E90004 */  lbu        $t1, 0x4($a3)
/* CCE40 8016C400 0002C800 */  sll        $t9, $v0, 0
/* CCE44 8016C404 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCE48 8016C408 15200004 */  bnez       $t1, .L8016C41C_ovl3
/* CCE4C 8016C40C 240B0006 */   addiu     $t3, $zero, 0x6
glabel func_8016C410_ovl5
/* CCE50 8016C410 ACE5003C */  sw         $a1, 0x3C($a3)
/* CCE54 8016C414 10000004 */  b          .L8016C428_ovl3
/* CCE58 8016C418 A0EB000B */   sb        $t3, 0xB($a3)
.L8016C41C_ovl3:
/* CCE5C 8016C41C 240C0001 */  addiu      $t4, $zero, 0x1
/* CCE60 8016C420 ACE0003C */  sw         $zero, 0x3C($a3)
/* CCE64 8016C424 A0EC000B */  sb         $t4, 0xB($a3)
.L8016C428_ovl3:
/* CCE68 8016C428 0723000B */  bgezl      $t9, .L8016C458_ovl3
/* CCE6C 8016C42C 8D020000 */   lw        $v0, 0x0($t0)
/* CCE70 8016C430 8D020000 */  lw         $v0, 0x0($t0)
/* CCE74 8016C434 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* CCE78 8016C438 44819000 */  mtc1       $at, $f18
/* CCE7C 8016C43C 8C4E0000 */  lw         $t6, 0x0($v0)
/* CCE80 8016C440 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCE84 8016C444 000E6880 */  sll        $t5, $t6, 2
/* CCE88 8016C448 002D0821 */  addu       $at, $at, $t5
/* CCE8C 8016C44C 10000009 */  b          .L8016C474_ovl3
/* CCE90 8016C450 E4326A10 */   swc1      $f18, %lo(D_800E6A10)($at)
/* CCE94 8016C454 8D020000 */  lw         $v0, 0x0($t0)
.L8016C458_ovl3:
/* CCE98 8016C458 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CCE9C 8016C45C 44812000 */  mtc1       $at, $f4
/* CCEA0 8016C460 8C580000 */  lw         $t8, 0x0($v0)
/* CCEA4 8016C464 3C01800E */  lui        $at, %hi(D_800E6A10)
/* CCEA8 8016C468 00187880 */  sll        $t7, $t8, 2
/* CCEAC 8016C46C 002F0821 */  addu       $at, $at, $t7
/* CCEB0 8016C470 E4246A10 */  swc1       $f4, %lo(D_800E6A10)($at)
.L8016C474_ovl3:
/* CCEB4 8016C474 8C490000 */  lw         $t1, 0x0($v0)
/* CCEB8 8016C478 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCEBC 8016C47C 240A0047 */  addiu      $t2, $zero, 0x47
/* CCEC0 8016C480 00095880 */  sll        $t3, $t1, 2
/* CCEC4 8016C484 006B6021 */  addu       $t4, $v1, $t3
/* CCEC8 8016C488 10000015 */  b          .L8016C4E0_ovl3
/* CCECC 8016C48C AD8A0000 */   sw        $t2, 0x0($t4)
.L8016C490_ovl3:
/* CCED0 8016C490 3C048019 */  lui        $a0, %hi(D_801972D0_ovl3)
/* CCED4 8016C494 0C02909C */  jal        print_error_stub
/* CCED8 8016C498 248472D0 */   addiu     $a0, $a0, %lo(D_801972D0_ovl3)
/* CCEDC 8016C49C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CCEE0 8016C4A0 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* CCEE4 8016C4A4 8D020000 */  lw         $v0, 0x0($t0)
/* CCEE8 8016C4A8 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCEEC 8016C4AC 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCEF0 8016C4B0 8C590000 */  lw         $t9, 0x0($v0)
/* CCEF4 8016C4B4 00197080 */  sll        $t6, $t9, 2
/* CCEF8 8016C4B8 006E6821 */  addu       $t5, $v1, $t6
/* CCEFC 8016C4BC 10000008 */  b          .L8016C4E0_ovl3
/* CCF00 8016C4C0 ADA00000 */   sw        $zero, 0x0($t5)
/* CCF04 8016C4C4 8D020000 */  lw         $v0, 0x0($t0)
.L8016C4C8_ovl3:
/* CCF08 8016C4C8 3C03800E */  lui        $v1, %hi(gEntityVtableIndexArray)
/* CCF0C 8016C4CC 2463DC50 */  addiu      $v1, $v1, %lo(gEntityVtableIndexArray)
/* CCF10 8016C4D0 8C580000 */  lw         $t8, 0x0($v0)
/* CCF14 8016C4D4 00187880 */  sll        $t7, $t8, 2
/* CCF18 8016C4D8 006F4821 */  addu       $t1, $v1, $t7
/* CCF1C 8016C4DC AD200000 */  sw         $zero, 0x0($t1)
.L8016C4E0_ovl3:
/* CCF20 8016C4E0 8C4B0000 */  lw         $t3, 0x0($v0)
/* CCF24 8016C4E4 3C068019 */  lui        $a2, %hi(D_80196990_ovl3)
/* CCF28 8016C4E8 24C66990 */  addiu      $a2, $a2, %lo(D_80196990_ovl3)
/* CCF2C 8016C4EC 000B5080 */  sll        $t2, $t3, 2
/* CCF30 8016C4F0 006A6021 */  addu       $t4, $v1, $t2
/* CCF34 8016C4F4 8D840000 */  lw         $a0, 0x0($t4)
/* CCF38 8016C4F8 0C02911F */  jal        call_virtual_function
/* CCF3C 8016C4FC 24050056 */   addiu     $a1, $zero, 0x56
/* CCF40 8016C500 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCF44 8016C504 27BD0018 */  addiu      $sp, $sp, 0x18
glabel func_8016C508_ovl5
/* CCF48 8016C508 03E00008 */  jr         $ra
/* CCF4C 8016C50C 00000000 */   nop
