nonmatching func_801A0880_ovl7, 0x290

glabel func_801A0880_ovl7
    /* 1468F0 801A0880 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1468F4 801A0884 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1468F8 801A0888 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 1468FC 801A088C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 146900 801A0890 8DC20000 */  lw         $v0, 0x0($t6)
    /* 146904 801A0894 3C03800E */  lui        $v1, %hi(D_800E1B50)
    /* 146908 801A0898 00027880 */  sll        $t7, $v0, 2
    /* 14690C 801A089C 006F1821 */  addu       $v1, $v1, $t7
    /* 146910 801A08A0 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
    /* 146914 801A08A4 00402025 */  or         $a0, $v0, $zero
    /* 146918 801A08A8 8C78008C */  lw         $t8, 0x8C($v1)
    /* 14691C 801A08AC 17000003 */  bnez       $t8, .L801A08BC_ovl7
    /* 146920 801A08B0 00000000 */   nop
    /* 146924 801A08B4 10000092 */  b          .L801A0B00_ovl7
    /* 146928 801A08B8 00001025 */   or        $v0, $zero, $zero
  .L801A08BC_ovl7:
    /* 14692C 801A08BC 0C044554 */  jal        func_80111550
    /* 146930 801A08C0 AFA30048 */   sw        $v1, 0x48($sp)
    /* 146934 801A08C4 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 146938 801A08C8 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 14693C 801A08CC 8FB90048 */  lw         $t9, 0x48($sp)
    /* 146940 801A08D0 8D050000 */  lw         $a1, 0x0($t0)
    /* 146944 801A08D4 0C044722 */  jal        func_80111C88
    /* 146948 801A08D8 8F24008C */   lw        $a0, 0x8C($t9)
    /* 14694C 801A08DC 0C0447B3 */  jal        func_80111ECC
    /* 146950 801A08E0 00402025 */   or        $a0, $v0, $zero
    /* 146954 801A08E4 0C044054 */  jal        func_80110150
    /* 146958 801A08E8 27A40028 */   addiu     $a0, $sp, 0x28
    /* 14695C 801A08EC 1040000C */  beqz       $v0, .L801A0920_ovl7
    /* 146960 801A08F0 3C0A8005 */   lui       $t2, %hi(omCurrentObj)
    /* 146964 801A08F4 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 146968 801A08F8 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 14696C 801A08FC 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 146970 801A0900 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 146974 801A0904 24090001 */  addiu      $t1, $zero, 0x1
    /* 146978 801A0908 000B6080 */  sll        $t4, $t3, 2
    /* 14697C 801A090C 00AC6821 */  addu       $t5, $a1, $t4
    /* 146980 801A0910 ADA90000 */  sw         $t1, 0x0($t5)
    /* 146984 801A0914 8FAE0048 */  lw         $t6, 0x48($sp)
    /* 146988 801A0918 1000001B */  b          .L801A0988_ovl7
    /* 14698C 801A091C A1C00043 */   sb        $zero, 0x43($t6)
  .L801A0920_ovl7:
    /* 146990 801A0920 0C0443F5 */  jal        func_80110FD4
    /* 146994 801A0924 27A40028 */   addiu     $a0, $sp, 0x28
    /* 146998 801A0928 1040000D */  beqz       $v0, .L801A0960_ovl7
    /* 14699C 801A092C 3C188005 */   lui       $t8, %hi(omCurrentObj)
    /* 1469A0 801A0930 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1469A4 801A0934 93AF002A */  lbu        $t7, 0x2A($sp)
    /* 1469A8 801A0938 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 1469AC 801A093C 8F190000 */  lw         $t9, 0x0($t8)
    /* 1469B0 801A0940 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 1469B4 801A0944 00194080 */  sll        $t0, $t9, 2
    /* 1469B8 801A0948 00A85021 */  addu       $t2, $a1, $t0
    /* 1469BC 801A094C AD4F0000 */  sw         $t7, 0x0($t2)
    /* 1469C0 801A0950 8FAC0048 */  lw         $t4, 0x48($sp)
    /* 1469C4 801A0954 93AB002B */  lbu        $t3, 0x2B($sp)
    /* 1469C8 801A0958 1000000B */  b          .L801A0988_ovl7
    /* 1469CC 801A095C A18B0043 */   sb        $t3, 0x43($t4)
  .L801A0960_ovl7:
    /* 1469D0 801A0960 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 1469D4 801A0964 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 1469D8 801A0968 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 1469DC 801A096C 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 1469E0 801A0970 8D2D0000 */  lw         $t5, 0x0($t1)
    /* 1469E4 801A0974 000D7080 */  sll        $t6, $t5, 2
    /* 1469E8 801A0978 00AEC021 */  addu       $t8, $a1, $t6
    /* 1469EC 801A097C AF000000 */  sw         $zero, 0x0($t8)
    /* 1469F0 801A0980 8FB90048 */  lw         $t9, 0x48($sp)
    /* 1469F4 801A0984 A3200043 */  sb         $zero, 0x43($t9)
  .L801A0988_ovl7:
    /* 1469F8 801A0988 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1469FC 801A098C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 146A00 801A0990 24010001 */  addiu      $at, $zero, 0x1
    /* 146A04 801A0994 8C640000 */  lw         $a0, 0x0($v1)
    /* 146A08 801A0998 00042080 */  sll        $a0, $a0, 2
    /* 146A0C 801A099C 00A44021 */  addu       $t0, $a1, $a0
    /* 146A10 801A09A0 8D020000 */  lw         $v0, 0x0($t0)
    /* 146A14 801A09A4 10410007 */  beq        $v0, $at, .L801A09C4_ovl7
    /* 146A18 801A09A8 24010003 */   addiu     $at, $zero, 0x3
    /* 146A1C 801A09AC 10410019 */  beq        $v0, $at, .L801A0A14_ovl7
    /* 146A20 801A09B0 24010004 */   addiu     $at, $zero, 0x4
    /* 146A24 801A09B4 10410034 */  beq        $v0, $at, .L801A0A88_ovl7
    /* 146A28 801A09B8 00000000 */   nop
    /* 146A2C 801A09BC 10000050 */  b          .L801A0B00_ovl7
    /* 146A30 801A09C0 00001025 */   or        $v0, $zero, $zero
  .L801A09C4_ovl7:
    /* 146A34 801A09C4 8FAF0034 */  lw         $t7, 0x34($sp)
    /* 146A38 801A09C8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 146A3C 801A09CC 11E10003 */  beq        $t7, $at, .L801A09DC_ovl7
    /* 146A40 801A09D0 3C01800E */   lui       $at, %hi(D_800E0D50)
    /* 146A44 801A09D4 00240821 */  addu       $at, $at, $a0
    /* 146A48 801A09D8 AC2F0D50 */  sw         $t7, %lo(D_800E0D50)($at)
  .L801A09DC_ovl7:
    /* 146A4C 801A09DC 0C03DD4F */  jal        func_800F753C
    /* 146A50 801A09E0 00000000 */   nop
    /* 146A54 801A09E4 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 146A58 801A09E8 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 146A5C 801A09EC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146A60 801A09F0 3C05801C */  lui        $a1, %hi(func_801BD510_ovl7)
    /* 146A64 801A09F4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 146A68 801A09F8 24A5D510 */  addiu      $a1, $a1, %lo(func_801BD510_ovl7)
    /* 146A6C 801A09FC 000B6080 */  sll        $t4, $t3, 2
    /* 146A70 801A0A00 008C2021 */  addu       $a0, $a0, $t4
    /* 146A74 801A0A04 0C02C7B2 */  jal        assign_new_process_entry
    /* 146A78 801A0A08 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 146A7C 801A0A0C 1000003C */  b          .L801A0B00_ovl7
    /* 146A80 801A0A10 24020001 */   addiu     $v0, $zero, 0x1
  .L801A0A14_ovl7:
    /* 146A84 801A0A14 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 146A88 801A0A18 8FA90034 */  lw         $t1, 0x34($sp)
    /* 146A8C 801A0A1C 00240821 */  addu       $at, $at, $a0
    /* 146A90 801A0A20 AC208220 */  sw         $zero, %lo(D_800E8220)($at)
    /* 146A94 801A0A24 2401FFFF */  addiu      $at, $zero, -0x1
    /* 146A98 801A0A28 11210006 */  beq        $t1, $at, .L801A0A44_ovl7
    /* 146A9C 801A0A2C 3C028013 */   lui       $v0, %hi(gKirbyState)
    /* 146AA0 801A0A30 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 146AA4 801A0A34 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 146AA8 801A0A38 000D7080 */  sll        $t6, $t5, 2
    /* 146AAC 801A0A3C 002E0821 */  addu       $at, $at, $t6
    /* 146AB0 801A0A40 AC290D50 */  sw         $t1, %lo(D_800E0D50)($at)
  .L801A0A44_ovl7:
    /* 146AB4 801A0A44 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 146AB8 801A0A48 845800B2 */  lh         $t8, 0xB2($v0)
    /* 146ABC 801A0A4C 27190001 */  addiu      $t9, $t8, 0x1
    /* 146AC0 801A0A50 0C03DD4F */  jal        func_800F753C
    /* 146AC4 801A0A54 A45900B2 */   sh        $t9, 0xB2($v0)
    /* 146AC8 801A0A58 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 146ACC 801A0A5C 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 146AD0 801A0A60 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146AD4 801A0A64 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 146AD8 801A0A68 8D0F0000 */  lw         $t7, 0x0($t0)
    /* 146ADC 801A0A6C 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 146AE0 801A0A70 000F5080 */  sll        $t2, $t7, 2
    /* 146AE4 801A0A74 008A2021 */  addu       $a0, $a0, $t2
    /* 146AE8 801A0A78 0C02C7B2 */  jal        assign_new_process_entry
    /* 146AEC 801A0A7C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 146AF0 801A0A80 1000001F */  b          .L801A0B00_ovl7
    /* 146AF4 801A0A84 24020001 */   addiu     $v0, $zero, 0x1
  .L801A0A88_ovl7:
    /* 146AF8 801A0A88 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* 146AFC 801A0A8C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 146B00 801A0A90 904B0004 */  lbu        $t3, 0x4($v0)
    /* 146B04 801A0A94 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 146B08 801A0A98 00240821 */  addu       $at, $at, $a0
    /* 146B0C 801A0A9C 15600016 */  bnez       $t3, .L801A0AF8_ovl7
    /* 146B10 801A0AA0 240C0001 */   addiu     $t4, $zero, 0x1
    /* 146B14 801A0AA4 8FA90034 */  lw         $t1, 0x34($sp)
    /* 146B18 801A0AA8 AC2C8220 */  sw         $t4, %lo(D_800E8220)($at)
    /* 146B1C 801A0AAC 240D0002 */  addiu      $t5, $zero, 0x2
    /* 146B20 801A0AB0 2401FFFF */  addiu      $at, $zero, -0x1
    /* 146B24 801A0AB4 11210006 */  beq        $t1, $at, .L801A0AD0_ovl7
    /* 146B28 801A0AB8 A04D0004 */   sb        $t5, 0x4($v0)
    /* 146B2C 801A0ABC 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 146B30 801A0AC0 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 146B34 801A0AC4 000EC080 */  sll        $t8, $t6, 2
    /* 146B38 801A0AC8 00380821 */  addu       $at, $at, $t8
    /* 146B3C 801A0ACC AC290D50 */  sw         $t1, %lo(D_800E0D50)($at)
  .L801A0AD0_ovl7:
    /* 146B40 801A0AD0 8C790000 */  lw         $t9, 0x0($v1)
    /* 146B44 801A0AD4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 146B48 801A0AD8 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 146B4C 801A0ADC 00194080 */  sll        $t0, $t9, 2
    /* 146B50 801A0AE0 00882021 */  addu       $a0, $a0, $t0
    /* 146B54 801A0AE4 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 146B58 801A0AE8 0C02C7B2 */  jal        assign_new_process_entry
    /* 146B5C 801A0AEC 24A57000 */   addiu     $a1, $a1, %lo(func_801A7000_ovl7)
    /* 146B60 801A0AF0 10000003 */  b          .L801A0B00_ovl7
    /* 146B64 801A0AF4 24020001 */   addiu     $v0, $zero, 0x1
  .L801A0AF8_ovl7:
    /* 146B68 801A0AF8 10000001 */  b          .L801A0B00_ovl7
    /* 146B6C 801A0AFC 00001025 */   or        $v0, $zero, $zero
  .L801A0B00_ovl7:
    /* 146B70 801A0B00 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 146B74 801A0B04 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 146B78 801A0B08 03E00008 */  jr         $ra
    /* 146B7C 801A0B0C 00000000 */   nop
endlabel func_801A0880_ovl7
.size func_801A0880_ovl7, . - func_801A0880_ovl7
