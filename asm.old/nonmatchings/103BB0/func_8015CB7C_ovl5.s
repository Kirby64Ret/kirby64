glabel func_8015CB7C_ovl5
/* 103FEC 8015CB7C 3C0E800D */  lui        $t6, %hi(D_800D6B24)
/* 103FF0 8015CB80 8DCE6B24 */  lw         $t6, %lo(D_800D6B24)($t6)
/* 103FF4 8015CB84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 103FF8 8015CB88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 103FFC 8015CB8C 15C00032 */  bnez       $t6, .L8015CC58_ovl5
/* 104000 8015CB90 3C03800D */   lui       $v1, %hi(D_800D7158 + 0x20)
/* 104004 8015CB94 24637178 */  addiu      $v1, $v1, %lo(D_800D7158 + 0x20)
/* 104008 8015CB98 8C6F0074 */  lw         $t7, 0x74($v1)
/* 10400C 8015CB9C 3C188005 */  lui        $t8, %hi(gPlayerControllers + 0x2)
/* 104010 8015CBA0 15E0002D */  bnez       $t7, .L8015CC58_ovl5
/* 104014 8015CBA4 00000000 */   nop
/* 104018 8015CBA8 97188F22 */  lhu        $t8, %lo(gPlayerControllers + 0x2)($t8)
/* 10401C 8015CBAC 33191000 */  andi       $t9, $t8, 0x1000
/* 104020 8015CBB0 13200037 */  beqz       $t9, .L8015CC90_ovl5
/* 104024 8015CBB4 00000000 */   nop
/* 104028 8015CBB8 0C029D9E */  jal        play_sound
/* 10402C 8015CBBC 2404024C */   addiu     $a0, $zero, 0x24C
/* 104030 8015CBC0 0C029A67 */  jal        func_800A699C
/* 104034 8015CBC4 00000000 */   nop
/* 104038 8015CBC8 3C03800D */  lui        $v1, %hi(D_800D7158 + 0x20)
/* 10403C 8015CBCC 24637178 */  addiu      $v1, $v1, %lo(D_800D7158 + 0x20)
/* 104040 8015CBD0 8C620044 */  lw         $v0, 0x44($v1)
.L8015CBD4_ovl3:
/* 104044 8015CBD4 24080001 */  addiu      $t0, $zero, 0x1
.L8015CBD8_ovl3:
/* 104048 8015CBD8 2401001D */  addiu      $at, $zero, 0x1D
/* 10404C 8015CBDC 10410009 */  beq        $v0, $at, .L8015CC04_ovl5
/* 104050 8015CBE0 AC680074 */   sw        $t0, 0x74($v1)
/* 104054 8015CBE4 2401001E */  addiu      $at, $zero, 0x1E
/* 104058 8015CBE8 10410011 */  beq        $v0, $at, .L8015CC30_ovl5
/* 10405C 8015CBEC 24040007 */   addiu     $a0, $zero, 0x7
/* 104060 8015CBF0 2401001F */  addiu      $at, $zero, 0x1F
/* 104064 8015CBF4 10410009 */  beq        $v0, $at, .L8015CC1C_ovl5
/* 104068 8015CBF8 24040006 */   addiu     $a0, $zero, 0x6
/* 10406C 8015CBFC 10000011 */  b          .L8015CC44_ovl5
/* 104070 8015CC00 8FA9001C */   lw        $t1, 0x1C($sp)
.L8015CC04_ovl5:
/* 104074 8015CC04 24040008 */  addiu      $a0, $zero, 0x8
/* 104078 8015CC08 00002825 */  or         $a1, $zero, $zero
/* 10407C 8015CC0C 0C02BB1C */  jal        func_800AEC70
/* 104080 8015CC10 24060070 */   addiu     $a2, $zero, 0x70
/* 104084 8015CC14 1000000A */  b          .L8015CC40_ovl5
/* 104088 8015CC18 AFA2001C */   sw        $v0, 0x1C($sp)
.L8015CC1C_ovl5:
/* 10408C 8015CC1C 00002825 */  or         $a1, $zero, $zero
/* 104090 8015CC20 0C02BB1C */  jal        func_800AEC70
/* 104094 8015CC24 24060070 */   addiu     $a2, $zero, 0x70
/* 104098 8015CC28 10000005 */  b          .L8015CC40_ovl5
/* 10409C 8015CC2C AFA2001C */   sw        $v0, 0x1C($sp)
.L8015CC30_ovl5:
/* 1040A0 8015CC30 00002825 */  or         $a1, $zero, $zero
/* 1040A4 8015CC34 0C02BB1C */  jal        func_800AEC70
/* 1040A8 8015CC38 24060070 */   addiu     $a2, $zero, 0x70
/* 1040AC 8015CC3C AFA2001C */  sw         $v0, 0x1C($sp)
.L8015CC40_ovl5:
/* 1040B0 8015CC40 8FA9001C */  lw         $t1, 0x1C($sp)
.L8015CC44_ovl5:
/* 1040B4 8015CC44 3C01800F */  lui        $at, %hi(D_800E98E0)
.L8015CC48_ovl3:
/* 1040B8 8015CC48 00095080 */  sll        $t2, $t1, 2
.L8015CC4C_ovl3:
/* 1040BC 8015CC4C 002A0821 */  addu       $at, $at, $t2
/* 1040C0 8015CC50 1000000F */  b          .L8015CC90_ovl5
/* 1040C4 8015CC54 AC2098E0 */   sw        $zero, %lo(D_800E98E0)($at)
.L8015CC58_ovl5:
/* 1040C8 8015CC58 3C03800D */  lui        $v1, %hi(D_800D7158 + 0x20)
/* 1040CC 8015CC5C 24637178 */  addiu      $v1, $v1, %lo(D_800D7158 + 0x20)
/* 1040D0 8015CC60 8C620078 */  lw         $v0, 0x78($v1)
/* 1040D4 8015CC64 24010002 */  addiu      $at, $zero, 0x2
/* 1040D8 8015CC68 10400009 */  beqz       $v0, .L8015CC90_ovl5
/* 1040DC 8015CC6C 00000000 */   nop
/* 1040E0 8015CC70 54410006 */  bnel       $v0, $at, .L8015CC8C_ovl5
/* 1040E4 8015CC74 AC600074 */   sw        $zero, 0x74($v1)
/* 1040E8 8015CC78 0C029A86 */  jal        func_800A6A18
/* 1040EC 8015CC7C 00000000 */   nop
/* 1040F0 8015CC80 3C03800D */  lui        $v1, %hi(D_800D7158 + 0x20)
glabel func_8015CC84_ovl3
/* 1040F4 8015CC84 24637178 */  addiu      $v1, $v1, %lo(D_800D7158 + 0x20)
/* 1040F8 8015CC88 AC600074 */  sw         $zero, 0x74($v1)
.L8015CC8C_ovl5:
/* 1040FC 8015CC8C AC600078 */  sw         $zero, 0x78($v1)
.L8015CC90_ovl5:
/* 104100 8015CC90 0C002B62 */  jal        func_8000AD88
/* 104104 8015CC94 00000000 */   nop
/* 104108 8015CC98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10410C 8015CC9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 104110 8015CCA0 03E00008 */  jr         $ra
/* 104114 8015CCA4 00000000 */   nop
