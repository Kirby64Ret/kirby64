nonmatching func_801DBEAC_ovl15, 0x230

glabel func_801DBEAC_ovl15
    /* 206A0C 801DBEAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 206A10 801DBEB0 AFB10018 */  sw         $s1, 0x18($sp)
    /* 206A14 801DBEB4 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 206A18 801DBEB8 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 206A1C 801DBEBC 8E230000 */  lw         $v1, 0x0($s1)
    /* 206A20 801DBEC0 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 206A24 801DBEC4 AFB00014 */  sw         $s0, 0x14($sp)
    /* 206A28 801DBEC8 AFA40038 */  sw         $a0, 0x38($sp)
    /* 206A2C 801DBECC 8C620000 */  lw         $v0, 0x0($v1)
    /* 206A30 801DBED0 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 206A34 801DBED4 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* 206A38 801DBED8 00021080 */  sll        $v0, $v0, 2
    /* 206A3C 801DBEDC 00220821 */  addu       $at, $at, $v0
    /* 206A40 801DBEE0 AC20EF90 */  sw         $zero, %lo(D_800DEF90)($at)
    /* 206A44 801DBEE4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 206A48 801DBEE8 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 206A4C 801DBEEC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5)
    /* 206A50 801DBEF0 000E7880 */  sll        $t7, $t6, 2
    /* 206A54 801DBEF4 002F0821 */  addu       $at, $at, $t7
    /* 206A58 801DBEF8 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
    /* 206A5C 801DBEFC 8C780000 */  lw         $t8, 0x0($v1)
    /* 206A60 801DBF00 02028021 */  addu       $s0, $s0, $v0
    /* 206A64 801DBF04 3C05800B */  lui        $a1, %hi(procMainStub)
    /* 206A68 801DBF08 0018C880 */  sll        $t9, $t8, 2
    /* 206A6C 801DBF0C 00992021 */  addu       $a0, $a0, $t9
    /* 206A70 801DBF10 8E100D50 */  lw         $s0, %lo(D_800E0D50)($s0)
    /* 206A74 801DBF14 8C84EC10 */  lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
    /* 206A78 801DBF18 0C02C7DA */  jal        setProcessMain
    /* 206A7C 801DBF1C 24A51434 */   addiu     $a1, $a1, %lo(procMainStub)
    /* 206A80 801DBF20 8E280000 */  lw         $t0, 0x0($s1)
    /* 206A84 801DBF24 2404007D */  addiu      $a0, $zero, 0x7D
    /* 206A88 801DBF28 0C02C67D */  jal        func_800B19F4
    /* 206A8C 801DBF2C 8D050000 */   lw        $a1, 0x0($t0)
    /* 206A90 801DBF30 00002025 */  or         $a0, $zero, $zero
    /* 206A94 801DBF34 0C02BEED */  jal        func_800AFBB4
    /* 206A98 801DBF38 8E250000 */   lw        $a1, 0x0($s1)
    /* 206A9C 801DBF3C 0C029D9E */  jal        play_sound
    /* 206AA0 801DBF40 24040198 */   addiu     $a0, $zero, 0x198
    /* 206AA4 801DBF44 8E230000 */  lw         $v1, 0x0($s1)
    /* 206AA8 801DBF48 3C0B800D */  lui        $t3, %hi(D_800D7098 + 0x3C)
    /* 206AAC 801DBF4C 8D6B70D4 */  lw         $t3, %lo(D_800D7098 + 0x3C)($t3)
    /* 206AB0 801DBF50 8C690000 */  lw         $t1, 0x0($v1)
    /* 206AB4 801DBF54 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 206AB8 801DBF58 24040002 */  addiu      $a0, $zero, 0x2
    /* 206ABC 801DBF5C 00095080 */  sll        $t2, $t1, 2
    /* 206AC0 801DBF60 002A0821 */  addu       $at, $at, $t2
    /* 206AC4 801DBF64 AC2498E0 */  sw         $a0, %lo(D_800E98E0)($at)
    /* 206AC8 801DBF68 29610004 */  slti       $at, $t3, 0x4
    /* 206ACC 801DBF6C 10200024 */  beqz       $at, .L801DC000_ovl15
    /* 206AD0 801DBF70 02002825 */   or        $a1, $s0, $zero
    /* 206AD4 801DBF74 00103880 */  sll        $a3, $s0, 2
    /* 206AD8 801DBF78 3C02800E */  lui        $v0, %hi(D_800DFF50)
    /* 206ADC 801DBF7C 00471021 */  addu       $v0, $v0, $a3
    /* 206AE0 801DBF80 8C42FF50 */  lw         $v0, %lo(D_800DFF50)($v0)
    /* 206AE4 801DBF84 3C010001 */  lui        $at, (0x103BD >> 16)
    /* 206AE8 801DBF88 342103BD */  ori        $at, $at, (0x103BD & 0xFFFF)
    /* 206AEC 801DBF8C 10410009 */  beq        $v0, $at, .L801DBFB4_ovl15
    /* 206AF0 801DBF90 3C010001 */   lui       $at, (0x103BF >> 16)
    /* 206AF4 801DBF94 342103BF */  ori        $at, $at, (0x103BF & 0xFFFF)
    /* 206AF8 801DBF98 1041000C */  beq        $v0, $at, .L801DBFCC_ovl15
    /* 206AFC 801DBF9C 3C010001 */   lui       $at, (0x103C1 >> 16)
    /* 206B00 801DBFA0 342103C1 */  ori        $at, $at, (0x103C1 & 0xFFFF)
    /* 206B04 801DBFA4 50410011 */  beql       $v0, $at, .L801DBFEC_ovl15
    /* 206B08 801DBFA8 8C790000 */   lw        $t9, 0x0($v1)
    /* 206B0C 801DBFAC 1000000F */  b          .L801DBFEC_ovl15
    /* 206B10 801DBFB0 8C790000 */   lw        $t9, 0x0($v1)
  .L801DBFB4_ovl15:
    /* 206B14 801DBFB4 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 206B18 801DBFB8 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 206B1C 801DBFBC 000C6880 */  sll        $t5, $t4, 2
    /* 206B20 801DBFC0 002D0821 */  addu       $at, $at, $t5
    /* 206B24 801DBFC4 10000015 */  b          .L801DC01C_ovl15
    /* 206B28 801DBFC8 AC209AA0 */   sw        $zero, %lo(D_800E9AA0)($at)
  .L801DBFCC_ovl15:
    /* 206B2C 801DBFCC 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 206B30 801DBFD0 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 206B34 801DBFD4 240E0001 */  addiu      $t6, $zero, 0x1
    /* 206B38 801DBFD8 000FC080 */  sll        $t8, $t7, 2
    /* 206B3C 801DBFDC 00380821 */  addu       $at, $at, $t8
    /* 206B40 801DBFE0 1000000E */  b          .L801DC01C_ovl15
    /* 206B44 801DBFE4 AC2E9AA0 */   sw        $t6, %lo(D_800E9AA0)($at)
    /* 206B48 801DBFE8 8C790000 */  lw         $t9, 0x0($v1)
  .L801DBFEC_ovl15:
    /* 206B4C 801DBFEC 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 206B50 801DBFF0 00194080 */  sll        $t0, $t9, 2
    /* 206B54 801DBFF4 00280821 */  addu       $at, $at, $t0
    /* 206B58 801DBFF8 10000008 */  b          .L801DC01C_ovl15
    /* 206B5C 801DBFFC AC249AA0 */   sw        $a0, %lo(D_800E9AA0)($at)
  .L801DC000_ovl15:
    /* 206B60 801DC000 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 206B64 801DC004 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 206B68 801DC008 24090003 */  addiu      $t1, $zero, 0x3
    /* 206B6C 801DC00C 000A5880 */  sll        $t3, $t2, 2
    /* 206B70 801DC010 002B0821 */  addu       $at, $at, $t3
    /* 206B74 801DC014 AC299AA0 */  sw         $t1, %lo(D_800E9AA0)($at)
    /* 206B78 801DC018 00103880 */  sll        $a3, $s0, 2
  .L801DC01C_ovl15:
    /* 206B7C 801DC01C 3C01800D */  lui        $at, %hi(gameTicksPerDraw)
    /* 206B80 801DC020 C42C6B10 */  lwc1       $f12, %lo(gameTicksPerDraw)($at)
    /* 206B84 801DC024 0C02BB74 */  jal        func_800AEDD0
    /* 206B88 801DC028 AFA70024 */   sw        $a3, 0x24($sp)
    /* 206B8C 801DC02C 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 206B90 801DC030 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
    /* 206B94 801DC034 3C04801E */  lui        $a0, %hi(D_801E64F0_ovl15)
    /* 206B98 801DC038 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 206B9C 801DC03C 24050000 */  addiu      $a1, $zero, 0x0
    /* 206BA0 801DC040 02003025 */  or         $a2, $s0, $zero
    /* 206BA4 801DC044 000D7880 */  sll        $t7, $t5, 2
    /* 206BA8 801DC048 01CF7021 */  addu       $t6, $t6, $t7
    /* 206BAC 801DC04C 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
    /* 206BB0 801DC050 000EC080 */  sll        $t8, $t6, 2
    /* 206BB4 801DC054 00982021 */  addu       $a0, $a0, $t8
    /* 206BB8 801DC058 0C02A80E */  jal        func_800AA038
    /* 206BBC 801DC05C 8C8464F0 */   lw        $a0, %lo(D_801E64F0_ovl15)($a0)
    /* 206BC0 801DC060 0C002DAF */  jal        ohSleep
    /* 206BC4 801DC064 2404002A */   addiu     $a0, $zero, 0x2A
    /* 206BC8 801DC068 3C040001 */  lui        $a0, (0x103DD >> 16)
    /* 206BCC 801DC06C 348403DD */  ori        $a0, $a0, (0x103DD & 0xFFFF)
    /* 206BD0 801DC070 24050000 */  addiu      $a1, $zero, 0x0
    /* 206BD4 801DC074 0C02A80E */  jal        func_800AA038
    /* 206BD8 801DC078 02003025 */   or        $a2, $s0, $zero
    /* 206BDC 801DC07C 8E390000 */  lw         $t9, 0x0($s1)
    /* 206BE0 801DC080 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 206BE4 801DC084 8FA70024 */  lw         $a3, 0x24($sp)
    /* 206BE8 801DC088 8F280000 */  lw         $t0, 0x0($t9)
    /* 206BEC 801DC08C 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 206BF0 801DC090 24040002 */  addiu      $a0, $zero, 0x2
    /* 206BF4 801DC094 00085080 */  sll        $t2, $t0, 2
    /* 206BF8 801DC098 002A0821 */  addu       $at, $at, $t2
    /* 206BFC 801DC09C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 206C00 801DC0A0 3C01800F */  lui        $at, %hi(D_800EBDA0)
    /* 206C04 801DC0A4 00270821 */  addu       $at, $at, $a3
    /* 206C08 801DC0A8 AC29BDA0 */  sw         $t1, %lo(D_800EBDA0)($at)
    /* 206C0C 801DC0AC 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 206C10 801DC0B0 00270821 */  addu       $at, $at, $a3
    /* 206C14 801DC0B4 0C002DAF */  jal        ohSleep
    /* 206C18 801DC0B8 AC20A1A0 */   sw        $zero, %lo(D_800EA1A0)($at)
    /* 206C1C 801DC0BC 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 206C20 801DC0C0 0C067656 */  jal        func_8019D958_ovl7
    /* 206C24 801DC0C4 95640002 */   lhu       $a0, 0x2($t3)
    /* 206C28 801DC0C8 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 206C2C 801DC0CC 8FB00014 */  lw         $s0, 0x14($sp)
    /* 206C30 801DC0D0 8FB10018 */  lw         $s1, 0x18($sp)
    /* 206C34 801DC0D4 03E00008 */  jr         $ra
    /* 206C38 801DC0D8 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_801DBEAC_ovl15
.size func_801DBEAC_ovl15, . - func_801DBEAC_ovl15
