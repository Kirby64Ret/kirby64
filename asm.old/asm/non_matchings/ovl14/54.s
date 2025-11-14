glabel func_801DF8FC_ovl14 # 54
/* 2024EC 801DF8FC 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 2024F0 801DF900 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 2024F4 801DF904 4485A000 */  mtc1        $a1, $f20
/* 2024F8 801DF908 AFBF002C */  sw          $ra, 0x2C($sp)
/* 2024FC 801DF90C AFB30028 */  sw          $s3, 0x28($sp)
/* 202500 801DF910 AFB20024 */  sw          $s2, 0x24($sp)
/* 202504 801DF914 AFB10020 */  sw          $s1, 0x20($sp)
/* 202508 801DF918 0C02A6D2 */  jal         func_800A9B48
/* 20250C 801DF91C AFB0001C */   sw         $s0, 0x1C($sp)
/* 202510 801DF920 1040002A */  beqz        $v0, .L801DF9CC
/* 202514 801DF924 3C028005 */   lui        $v0, %hi(D_8004A7C4)
/* 202518 801DF928 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 20251C 801DF92C 3C18800E */  lui         $t8, %hi(D_800DF850)
/* 202520 801DF930 00008025 */  move        $s0, $zero
/* 202524 801DF934 8C4E0000 */  lw          $t6, 0x0($v0)
/* 202528 801DF938 2411000A */  addiu       $s1, $zero, 0xA
/* 20252C 801DF93C 8C53003C */  lw          $s3, 0x3C($v0)
/* 202530 801DF940 000E7880 */  sll         $t7, $t6, 2
/* 202534 801DF944 030FC021 */  addu        $t8, $t8, $t7
/* 202538 801DF948 8F18F850 */  lw          $t8, %lo(D_800DF850)($t8)
/* 20253C 801DF94C 8F120000 */  lw          $s2, 0x0($t8)
.L801DF950:
/* 202540 801DF950 0C002FA4 */  jal         func_8000BE90
/* 202544 801DF954 02602025 */   move       $a0, $s3
/* 202548 801DF958 26100001 */  addiu       $s0, $s0, 0x1
/* 20254C 801DF95C 1611FFFC */  bne         $s0, $s1, .L801DF950
/* 202550 801DF960 00409825 */   move       $s3, $v0
/* 202554 801DF964 5040001A */  beql        $v0, $zero, .L801DF9D0
/* 202558 801DF968 8FBF002C */   lw         $ra, 0x2C($sp)
.L801DF96C:
/* 20255C 801DF96C 12400013 */  beqz        $s2, .L801DF9BC
/* 202560 801DF970 00000000 */   nop
/* 202564 801DF974 8E430000 */  lw          $v1, 0x0($s2)
/* 202568 801DF978 50600010 */  beql        $v1, $zero, .L801DF9BC
/* 20256C 801DF97C 26520004 */   addiu      $s2, $s2, 0x4
/* 202570 801DF980 8C500080 */  lw          $s0, 0x80($v0)
/* 202574 801DF984 00608825 */  move        $s1, $v1
/* 202578 801DF988 5200000C */  beql        $s0, $zero, .L801DF9BC
/* 20257C 801DF98C 26520004 */   addiu      $s2, $s2, 0x4
/* 202580 801DF990 8E250000 */  lw          $a1, 0x0($s1)
.L801DF994:
/* 202584 801DF994 50A00005 */  beql        $a1, $zero, .L801DF9AC
/* 202588 801DF998 8E100000 */   lw         $s0, 0x0($s0)
/* 20258C 801DF99C 4406A000 */  mfc1        $a2, $f20
/* 202590 801DF9A0 0C003051 */  jal         func_8000C144
/* 202594 801DF9A4 02002025 */   move       $a0, $s0
/* 202598 801DF9A8 8E100000 */  lw          $s0, 0x0($s0)
.L801DF9AC:
/* 20259C 801DF9AC 26310004 */  addiu       $s1, $s1, 0x4
/* 2025A0 801DF9B0 5600FFF8 */  bnel        $s0, $zero, .L801DF994
/* 2025A4 801DF9B4 8E250000 */   lw         $a1, 0x0($s1)
/* 2025A8 801DF9B8 26520004 */  addiu       $s2, $s2, 0x4
.L801DF9BC:
/* 2025AC 801DF9BC 0C002FA4 */  jal         func_8000BE90
/* 2025B0 801DF9C0 02602025 */   move       $a0, $s3
/* 2025B4 801DF9C4 1440FFE9 */  bnez        $v0, .L801DF96C
/* 2025B8 801DF9C8 00409825 */   move       $s3, $v0
.L801DF9CC:
/* 2025BC 801DF9CC 8FBF002C */  lw          $ra, 0x2C($sp)
.L801DF9D0:
/* 2025C0 801DF9D0 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 2025C4 801DF9D4 8FB0001C */  lw          $s0, 0x1C($sp)
/* 2025C8 801DF9D8 8FB10020 */  lw          $s1, 0x20($sp)
/* 2025CC 801DF9DC 8FB20024 */  lw          $s2, 0x24($sp)
/* 2025D0 801DF9E0 8FB30028 */  lw          $s3, 0x28($sp)
/* 2025D4 801DF9E4 03E00008 */  jr          $ra
/* 2025D8 801DF9E8 27BD0030 */   addiu      $sp, $sp, 0x30
.type func_801DF8FC_ovl14, @function
.size func_801DF8FC_ovl14, . - func_801DF8FC_ovl14
