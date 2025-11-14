glabel func_800BAC0C # 6
/* 062E5C 800BAC0C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 062E60 800BAC10 AFBF0024 */  sw          $ra, 0x24($sp)
/* 062E64 800BAC14 AFB20020 */  sw          $s2, 0x20($sp)
/* 062E68 800BAC18 AFB1001C */  sw          $s1, 0x1C($sp)
/* 062E6C 800BAC1C AFB00018 */  sw          $s0, 0x18($sp)
/* 062E70 800BAC20 8C8E0000 */  lw          $t6, 0x0($a0)
/* 062E74 800BAC24 00809025 */  move        $s2, $a0
/* 062E78 800BAC28 2DC10006 */  sltiu       $at, $t6, 0x6
/* 062E7C 800BAC2C 1020002B */  beqz        $at, L800BACDC
/* 062E80 800BAC30 000E7080 */   sll        $t6, $t6, 2
/* 062E84 800BAC34 3C01800D */  lui         $at, %hi(jtbl_800D691C)
/* 062E88 800BAC38 002E0821 */  addu        $at, $at, $t6
/* 062E8C 800BAC3C 8C2E691C */  lw          $t6, %lo(jtbl_800D691C)($at)
/* 062E90 800BAC40 01C00008 */  jr          $t6
/* 062E94 800BAC44 00000000 */   nop
glabel L800BAC48
/* 062E98 800BAC48 8E44000C */  lw          $a0, 0xC($s2)
/* 062E9C 800BAC4C 8E450010 */  lw          $a1, 0x10($s2)
/* 062EA0 800BAC50 0C02EC23 */  jal         func_800BB08C
/* 062EA4 800BAC54 8E460014 */   lw         $a2, 0x14($s2)
/* 062EA8 800BAC58 10000021 */  b           L800BACE0
/* 062EAC 800BAC5C 8E440008 */   lw         $a0, 0x8($s2)
glabel L800BAC60
/* 062EB0 800BAC60 8E44000C */  lw          $a0, 0xC($s2)
/* 062EB4 800BAC64 0C02EC66 */  jal         func_800BB198
/* 062EB8 800BAC68 8E450010 */   lw         $a1, 0x10($s2)
/* 062EBC 800BAC6C 1000001C */  b           L800BACE0
/* 062EC0 800BAC70 8E440008 */   lw         $a0, 0x8($s2)
glabel L800BAC74
/* 062EC4 800BAC74 0C02EC4B */  jal         func_800BB12C
/* 062EC8 800BAC78 8E44000C */   lw         $a0, 0xC($s2)
/* 062ECC 800BAC7C 10000018 */  b           L800BACE0
/* 062ED0 800BAC80 8E440008 */   lw         $a0, 0x8($s2)
glabel L800BAC84
/* 062ED4 800BAC84 00008025 */  move        $s0, $zero
/* 062ED8 800BAC88 24110004 */  addiu       $s1, $zero, 0x4
glabel L800BAC8C
/* 062EDC 800BAC8C 0C02EC4B */  jal         func_800BB12C
/* 062EE0 800BAC90 02002025 */   move       $a0, $s0
/* 062EE4 800BAC94 26100001 */  addiu       $s0, $s0, 0x1
/* 062EE8 800BAC98 1611FFFC */  bne         $s0, $s1, L800BAC8C
/* 062EEC 800BAC9C 00000000 */   nop
/* 062EF0 800BACA0 1000000F */  b           L800BACE0
/* 062EF4 800BACA4 8E440008 */   lw         $a0, 0x8($s2)
glabel L800BACA8
/* 062EF8 800BACA8 240F0001 */  addiu       $t7, $zero, 0x1
/* 062EFC 800BACAC 3C01800F */  lui         $at, %hi(D_800ED4C0)
/* 062F00 800BACB0 1000000A */  b           L800BACDC
/* 062F04 800BACB4 AC2FD4C0 */   sw         $t7, %lo(D_800ED4C0)($at)
glabel L800BACB8
/* 062F08 800BACB8 3C01800F */  lui         $at, %hi(D_800ED4C0)
/* 062F0C 800BACBC AC20D4C0 */  sw          $zero, %lo(D_800ED4C0)($at)
/* 062F10 800BACC0 00008025 */  move        $s0, $zero
/* 062F14 800BACC4 24110004 */  addiu       $s1, $zero, 0x4
glabel L800BACC8
/* 062F18 800BACC8 0C02EC4B */  jal         func_800BB12C
/* 062F1C 800BACCC 02002025 */   move       $a0, $s0
/* 062F20 800BACD0 26100001 */  addiu       $s0, $s0, 0x1
/* 062F24 800BACD4 1611FFFC */  bne         $s0, $s1, L800BACC8
/* 062F28 800BACD8 00000000 */   nop
glabel L800BACDC
/* 062F2C 800BACDC 8E440008 */  lw          $a0, 0x8($s2)
glabel L800BACE0
/* 062F30 800BACE0 00003025 */  move        $a2, $zero
/* 062F34 800BACE4 50800004 */  beql        $a0, $zero, L800BACF8
/* 062F38 800BACE8 8FBF0024 */   lw         $ra, 0x24($sp)
/* 062F3C 800BACEC 0C00B4BC */  jal         osSendMesg
/* 062F40 800BACF0 8E450004 */   lw         $a1, 0x4($s2)
/* 062F44 800BACF4 8FBF0024 */  lw          $ra, 0x24($sp)
glabel L800BACF8
/* 062F48 800BACF8 8FB00018 */  lw          $s0, 0x18($sp)
/* 062F4C 800BACFC 8FB1001C */  lw          $s1, 0x1C($sp)
/* 062F50 800BAD00 8FB20020 */  lw          $s2, 0x20($sp)
/* 062F54 800BAD04 03E00008 */  jr          $ra
/* 062F58 800BAD08 27BD0028 */   addiu      $sp, $sp, 0x28
.size func_800BAC0C, . - func_800BAC0C

.late_rodata
glabel jtbl_800D691C
.word L800BAC48
.word L800BAC74
.word L800BAC60
.word L800BAC84
.word L800BACA8
.word L800BACB8
