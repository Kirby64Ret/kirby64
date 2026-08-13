nonmatching func_80120E74, 0x240

glabel func_80120E74
    /* A98E4 80120E74 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* A98E8 80120E78 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* A98EC 80120E7C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* A98F0 80120E80 AFBF0014 */  sw         $ra, 0x14($sp)
    /* A98F4 80120E84 AFA40018 */  sw         $a0, 0x18($sp)
    /* A98F8 80120E88 3C05800D */  lui        $a1, %hi(D_800D7010 + 0x48)
    /* A98FC 80120E8C 24A57058 */  addiu      $a1, $a1, %lo(D_800D7010 + 0x48)
    /* A9900 80120E90 0C03E430 */  jal        func_800F90C0
    /* A9904 80120E94 8DC40000 */   lw        $a0, 0x0($t6)
    /* A9908 80120E98 3C04800D */  lui        $a0, %hi(D_800D7B80 + 0x18)
    /* A990C 80120E9C 3C05800D */  lui        $a1, %hi(D_800D7010 + 0x48)
    /* A9910 80120EA0 24A57058 */  addiu      $a1, $a1, %lo(D_800D7010 + 0x48)
    /* A9914 80120EA4 0C029EFD */  jal        func_800A7BF4
    /* A9918 80120EA8 24847B98 */   addiu     $a0, $a0, %lo(D_800D7B80 + 0x18)
    /* A991C 80120EAC 3C028013 */  lui        $v0, %hi(gKirbyState)
    /* A9920 80120EB0 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* A9924 80120EB4 844300D6 */  lh         $v1, 0xD6($v0)
    /* A9928 80120EB8 2405FFFF */  addiu      $a1, $zero, -0x1
    /* A992C 80120EBC 2401FFFE */  addiu      $at, $zero, -0x2
    /* A9930 80120EC0 14A30032 */  bne        $a1, $v1, .L80120F8C
    /* A9934 80120EC4 00000000 */   nop
    /* A9938 80120EC8 844F00D4 */  lh         $t7, 0xD4($v0)
    /* A993C 80120ECC 2418FFFE */  addiu      $t8, $zero, -0x2
    /* A9940 80120ED0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* A9944 80120ED4 11E00004 */  beqz       $t7, .L80120EE8
    /* A9948 80120ED8 00000000 */   nop
    /* A994C 80120EDC A45800D6 */  sh         $t8, 0xD6($v0)
    /* A9950 80120EE0 1000002A */  b          .L80120F8C
    /* A9954 80120EE4 844300D6 */   lh        $v1, 0xD6($v0)
  .L80120EE8:
    /* A9958 80120EE8 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* A995C 80120EEC 3C09800E */  lui        $t1, %hi(D_800E7CE0)
    /* A9960 80120EF0 3C04800D */  lui        $a0, %hi(D_800D7010)
    /* A9964 80120EF4 8F230000 */  lw         $v1, 0x0($t9)
    /* A9968 80120EF8 3C0D8013 */  lui        $t5, %hi(D_80128370)
    /* A996C 80120EFC 3C0A800C */  lui        $t2, %hi(D_800BE4EC)
    /* A9970 80120F00 00034080 */  sll        $t0, $v1, 2
    /* A9974 80120F04 01284821 */  addu       $t1, $t1, $t0
    /* A9978 80120F08 8D297CE0 */  lw         $t1, %lo(D_800E7CE0)($t1)
    /* A997C 80120F0C 25AD8370 */  addiu      $t5, $t5, %lo(D_80128370)
    /* A9980 80120F10 24847010 */  addiu      $a0, $a0, %lo(D_800D7010)
    /* A9984 80120F14 1520000F */  bnez       $t1, .L80120F54
    /* A9988 80120F18 00000000 */   nop
    /* A998C 80120F1C 8C450010 */  lw         $a1, 0x10($v0)
    /* A9990 80120F20 3C04800D */  lui        $a0, %hi(D_800D7010)
    /* A9994 80120F24 14A00007 */  bnez       $a1, .L80120F44
    /* A9998 80120F28 00000000 */   nop
    /* A999C 80120F2C 3C05800D */  lui        $a1, %hi(D_800D7010)
    /* A99A0 80120F30 24A57010 */  addiu      $a1, $a1, %lo(D_800D7010)
    /* A99A4 80120F34 0C03E430 */  jal        func_800F90C0
    /* A99A8 80120F38 00602025 */   or        $a0, $v1, $zero
    /* A99AC 80120F3C 1000005A */  b          .L801210A8
    /* A99B0 80120F40 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80120F44:
    /* A99B4 80120F44 0C029501 */  jal        func_800A5404
    /* A99B8 80120F48 24847010 */   addiu     $a0, $a0, %lo(D_800D7010)
    /* A99BC 80120F4C 10000056 */  b          .L801210A8
    /* A99C0 80120F50 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80120F54:
    /* A99C4 80120F54 8D4AE4EC */  lw         $t2, %lo(D_800BE4EC)($t2)
    /* A99C8 80120F58 24020001 */  addiu      $v0, $zero, 0x1
    /* A99CC 80120F5C 314B0002 */  andi       $t3, $t2, 0x2
    /* A99D0 80120F60 11600003 */  beqz       $t3, .L80120F70
    /* A99D4 80120F64 00000000 */   nop
    /* A99D8 80120F68 10000001 */  b          .L80120F70
    /* A99DC 80120F6C 00001025 */   or        $v0, $zero, $zero
  .L80120F70:
    /* A99E0 80120F70 00026080 */  sll        $t4, $v0, 2
    /* A99E4 80120F74 01826023 */  subu       $t4, $t4, $v0
    /* A99E8 80120F78 000C6080 */  sll        $t4, $t4, 2
    /* A99EC 80120F7C 0C02951A */  jal        func_800A5468
    /* A99F0 80120F80 018D2821 */   addu      $a1, $t4, $t5
    /* A99F4 80120F84 10000048 */  b          .L801210A8
    /* A99F8 80120F88 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80120F8C:
    /* A99FC 80120F8C 14610015 */  bne        $v1, $at, .L80120FE4
    /* A9A00 80120F90 2C640001 */   sltiu     $a0, $v1, 0x1
    /* A9A04 80120F94 340EFFFF */  ori        $t6, $zero, 0xFFFF
    /* A9A08 80120F98 A44E00DA */  sh         $t6, 0xDA($v0)
    /* A9A0C 80120F9C 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* A9A10 80120FA0 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* A9A14 80120FA4 3C01800E */  lui        $at, %hi(D_800E7CE0)
    /* A9A18 80120FA8 24080001 */  addiu      $t0, $zero, 0x1
    /* A9A1C 80120FAC 8DF80000 */  lw         $t8, 0x0($t7)
    /* A9A20 80120FB0 3C0B8013 */  lui        $t3, %hi(D_801283F0)
    /* A9A24 80120FB4 0018C880 */  sll        $t9, $t8, 2
    /* A9A28 80120FB8 00390821 */  addu       $at, $at, $t9
    /* A9A2C 80120FBC AC207CE0 */  sw         $zero, %lo(D_800E7CE0)($at)
    /* A9A30 80120FC0 844900D4 */  lh         $t1, 0xD4($v0)
    /* A9A34 80120FC4 A44800D8 */  sh         $t0, 0xD8($v0)
    /* A9A38 80120FC8 00095080 */  sll        $t2, $t1, 2
    /* A9A3C 80120FCC 01495023 */  subu       $t2, $t2, $t1
    /* A9A40 80120FD0 000A5080 */  sll        $t2, $t2, 2
    /* A9A44 80120FD4 016A5821 */  addu       $t3, $t3, $t2
    /* A9A48 80120FD8 8D6B83F0 */  lw         $t3, %lo(D_801283F0)($t3)
    /* A9A4C 80120FDC 10000007 */  b          .L80120FFC
    /* A9A50 80120FE0 A44B00D6 */   sh        $t3, 0xD6($v0)
  .L80120FE4:
    /* A9A54 80120FE4 246CFFFF */  addiu      $t4, $v1, -0x1
    /* A9A58 80120FE8 10800004 */  beqz       $a0, .L80120FFC
    /* A9A5C 80120FEC A44C00D6 */   sh        $t4, 0xD6($v0)
    /* A9A60 80120FF0 A44000D4 */  sh         $zero, 0xD4($v0)
    /* A9A64 80120FF4 1000002B */  b          .L801210A4
    /* A9A68 80120FF8 A44500D6 */   sh        $a1, 0xD6($v0)
  .L80120FFC:
    /* A9A6C 80120FFC 844D00D4 */  lh         $t5, 0xD4($v0)
    /* A9A70 80121000 3C0F8013 */  lui        $t7, %hi(D_801283E8)
    /* A9A74 80121004 25EF83E8 */  addiu      $t7, $t7, %lo(D_801283E8)
    /* A9A78 80121008 000D7080 */  sll        $t6, $t5, 2
    /* A9A7C 8012100C 01CD7023 */  subu       $t6, $t6, $t5
    /* A9A80 80121010 000E7080 */  sll        $t6, $t6, 2
    /* A9A84 80121014 01CF1821 */  addu       $v1, $t6, $t7
    /* A9A88 80121018 8C640004 */  lw         $a0, 0x4($v1)
    /* A9A8C 8012101C 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* A9A90 80121020 54A40009 */  bnel       $a1, $a0, .L80121048
    /* A9A94 80121024 845900D8 */   lh        $t9, 0xD8($v0)
    /* A9A98 80121028 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* A9A9C 8012102C 3C05800D */  lui        $a1, %hi(D_800D7010)
    /* A9AA0 80121030 24A57010 */  addiu      $a1, $a1, %lo(D_800D7010)
    /* A9AA4 80121034 0C03E430 */  jal        func_800F90C0
    /* A9AA8 80121038 8F040000 */   lw        $a0, 0x0($t8)
    /* A9AAC 8012103C 1000001A */  b          .L801210A8
    /* A9AB0 80121040 8FBF0014 */   lw        $ra, 0x14($sp)
    /* A9AB4 80121044 845900D8 */  lh         $t9, 0xD8($v0)
  .L80121048:
    /* A9AB8 80121048 8C660000 */  lw         $a2, 0x0($v1)
    /* A9ABC 8012104C 2728FFFF */  addiu      $t0, $t9, -0x1
    /* A9AC0 80121050 A44800D8 */  sh         $t0, 0xD8($v0)
    /* A9AC4 80121054 844900D8 */  lh         $t1, 0xD8($v0)
    /* A9AC8 80121058 5520000D */  bnel       $t1, $zero, .L80121090
    /* A9ACC 8012105C 944F00DA */   lhu       $t7, 0xDA($v0)
    /* A9AD0 80121060 944A00DA */  lhu        $t2, 0xDA($v0)
    /* A9AD4 80121064 254B0001 */  addiu      $t3, $t2, 0x1
    /* A9AD8 80121068 3163FFFF */  andi       $v1, $t3, 0xFFFF
    /* A9ADC 8012106C 14640003 */  bne        $v1, $a0, .L8012107C
    /* A9AE0 80121070 A44B00DA */   sh        $t3, 0xDA($v0)
    /* A9AE4 80121074 A44000DA */  sh         $zero, 0xDA($v0)
    /* A9AE8 80121078 3003FFFF */  andi       $v1, $zero, 0xFFFF
  .L8012107C:
    /* A9AEC 8012107C 00036100 */  sll        $t4, $v1, 4
    /* A9AF0 80121080 00CC6821 */  addu       $t5, $a2, $t4
    /* A9AF4 80121084 8DAE000C */  lw         $t6, 0xC($t5)
    /* A9AF8 80121088 A44E00D8 */  sh         $t6, 0xD8($v0)
    /* A9AFC 8012108C 944F00DA */  lhu        $t7, 0xDA($v0)
  .L80121090:
    /* A9B00 80121090 3C04800D */  lui        $a0, %hi(D_800D7010)
    /* A9B04 80121094 24847010 */  addiu      $a0, $a0, %lo(D_800D7010)
    /* A9B08 80121098 000FC100 */  sll        $t8, $t7, 4
    /* A9B0C 8012109C 0C029501 */  jal        func_800A5404
    /* A9B10 801210A0 03062821 */   addu      $a1, $t8, $a2
  .L801210A4:
    /* A9B14 801210A4 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801210A8:
    /* A9B18 801210A8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* A9B1C 801210AC 03E00008 */  jr         $ra
    /* A9B20 801210B0 00000000 */   nop
endlabel func_80120E74
.size func_80120E74, . - func_80120E74
