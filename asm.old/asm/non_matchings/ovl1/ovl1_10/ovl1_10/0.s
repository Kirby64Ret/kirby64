glabel func_800BA7A0 # 0
/* 0629F0 800BA7A0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 0629F4 800BA7A4 AFBF002C */  sw          $ra, 0x2C($sp)
/* 0629F8 800BA7A8 AFB40028 */  sw          $s4, 0x28($sp)
/* 0629FC 800BA7AC AFB30024 */  sw          $s3, 0x24($sp)
/* 062A00 800BA7B0 AFB20020 */  sw          $s2, 0x20($sp)
/* 062A04 800BA7B4 AFB1001C */  sw          $s1, 0x1C($sp)
/* 062A08 800BA7B8 AFB00018 */  sw          $s0, 0x18($sp)
/* 062A0C 800BA7BC 94A70002 */  lhu         $a3, 0x2($a1)
/* 062A10 800BA7C0 00A08025 */  move        $s0, $a1
/* 062A14 800BA7C4 00808825 */  move        $s1, $a0
/* 062A18 800BA7C8 14E00048 */  bnez        $a3, L800BA8EC
/* 062A1C 800BA7CC 00C09025 */   move       $s2, $a2
/* 062A20 800BA7D0 3C13800D */  lui         $s3, %hi(D_800D5238)
/* 062A24 800BA7D4 26735238 */  addiu       $s3, $s3, %lo(D_800D5238)
/* 062A28 800BA7D8 24140001 */  addiu       $s4, $zero, 0x1
/* 062A2C 800BA7DC 8E020010 */  lw          $v0, 0x10($s0)
glabel L800BA7E0
/* 062A30 800BA7E0 94430000 */  lhu         $v1, 0x0($v0)
/* 062A34 800BA7E4 00037342 */  srl         $t6, $v1, 13
/* 062A38 800BA7E8 2DC10005 */  sltiu       $at, $t6, 0x5
/* 062A3C 800BA7EC 1020003D */  beqz        $at, L800BA8E4
/* 062A40 800BA7F0 000E7080 */   sll        $t6, $t6, 2
/* 062A44 800BA7F4 3C01800D */  lui         $at, %hi(jtbl_800D68E0)
/* 062A48 800BA7F8 002E0821 */  addu        $at, $at, $t6
/* 062A4C 800BA7FC 8C2E68E0 */  lw          $t6, %lo(jtbl_800D68E0)($at)
/* 062A50 800BA800 01C00008 */  jr          $t6
/* 062A54 800BA804 00000000 */   nop
glabel L800BA808
/* 062A58 800BA808 920F0000 */  lbu         $t7, 0x0($s0)
/* 062A5C 800BA80C 96070002 */  lhu         $a3, 0x2($s0)
/* 062A60 800BA810 000FC080 */  sll         $t8, $t7, 2
/* 062A64 800BA814 0278C821 */  addu        $t9, $s3, $t8
/* 062A68 800BA818 8F280000 */  lw          $t0, 0x0($t9)
/* 062A6C 800BA81C 10000031 */  b           L800BA8E4
/* 062A70 800BA820 AE080010 */   sw         $t0, 0x10($s0)
glabel L800BA824
/* 062A74 800BA824 30691FFF */  andi        $t1, $v1, 0x1FFF
/* 062A78 800BA828 244A0002 */  addiu       $t2, $v0, 0x2
/* 062A7C 800BA82C A6090002 */  sh          $t1, 0x2($s0)
/* 062A80 800BA830 AE0A0010 */  sw          $t2, 0x10($s0)
/* 062A84 800BA834 922B0000 */  lbu         $t3, 0x0($s1)
/* 062A88 800BA838 15600007 */  bnez        $t3, L800BA858
/* 062A8C 800BA83C 00000000 */   nop
/* 062A90 800BA840 0C0011FC */  jal         func_800047F0
/* 062A94 800BA844 02402025 */   move       $a0, $s2
/* 062A98 800BA848 0C0011EC */  jal         func_800047B0
/* 062A9C 800BA84C 02402025 */   move       $a0, $s2
/* 062AA0 800BA850 A2140001 */  sb          $s4, 0x1($s0)
/* 062AA4 800BA854 A2340000 */  sb          $s4, 0x0($s1)
glabel L800BA858
/* 062AA8 800BA858 10000022 */  b           L800BA8E4
/* 062AAC 800BA85C 96070002 */   lhu        $a3, 0x2($s0)
glabel L800BA860
/* 062AB0 800BA860 306D1FFF */  andi        $t5, $v1, 0x1FFF
/* 062AB4 800BA864 244E0002 */  addiu       $t6, $v0, 0x2
/* 062AB8 800BA868 A60D0002 */  sh          $t5, 0x2($s0)
/* 062ABC 800BA86C AE0E0010 */  sw          $t6, 0x10($s0)
/* 062AC0 800BA870 922F0000 */  lbu         $t7, 0x0($s1)
/* 062AC4 800BA874 11E00005 */  beqz        $t7, L800BA88C
/* 062AC8 800BA878 00000000 */   nop
/* 062ACC 800BA87C 0C0011F4 */  jal         func_800047D0
/* 062AD0 800BA880 02402025 */   move       $a0, $s2
/* 062AD4 800BA884 A2000001 */  sb          $zero, 0x1($s0)
/* 062AD8 800BA888 A2200000 */  sb          $zero, 0x0($s1)
glabel L800BA88C
/* 062ADC 800BA88C 10000015 */  b           L800BA8E4
/* 062AE0 800BA890 96070002 */   lhu        $a3, 0x2($s0)
glabel L800BA894
/* 062AE4 800BA894 30791FFF */  andi        $t9, $v1, 0x1FFF
/* 062AE8 800BA898 24480002 */  addiu       $t0, $v0, 0x2
/* 062AEC 800BA89C A6190004 */  sh          $t9, 0x4($s0)
/* 062AF0 800BA8A0 AE080010 */  sw          $t0, 0x10($s0)
/* 062AF4 800BA8A4 AE08000C */  sw          $t0, 0xC($s0)
/* 062AF8 800BA8A8 1000000E */  b           L800BA8E4
/* 062AFC 800BA8AC 96070002 */   lhu        $a3, 0x2($s0)
glabel L800BA8B0
/* 062B00 800BA8B0 960A0004 */  lhu         $t2, 0x4($s0)
/* 062B04 800BA8B4 254BFFFF */  addiu       $t3, $t2, -0x1
/* 062B08 800BA8B8 316CFFFF */  andi        $t4, $t3, 0xFFFF
/* 062B0C 800BA8BC 11800005 */  beqz        $t4, L800BA8D4
/* 062B10 800BA8C0 A60B0004 */   sh         $t3, 0x4($s0)
/* 062B14 800BA8C4 8E0D000C */  lw          $t5, 0xC($s0)
/* 062B18 800BA8C8 96070002 */  lhu         $a3, 0x2($s0)
/* 062B1C 800BA8CC 10000005 */  b           L800BA8E4
/* 062B20 800BA8D0 AE0D0010 */   sw         $t5, 0x10($s0)
glabel L800BA8D4
/* 062B24 800BA8D4 8E0E0010 */  lw          $t6, 0x10($s0)
/* 062B28 800BA8D8 96070002 */  lhu         $a3, 0x2($s0)
/* 062B2C 800BA8DC 25CF0002 */  addiu       $t7, $t6, 0x2
/* 062B30 800BA8E0 AE0F0010 */  sw          $t7, 0x10($s0)
glabel L800BA8E4
/* 062B34 800BA8E4 50E0FFBE */  beql        $a3, $zero, L800BA7E0
/* 062B38 800BA8E8 8E020010 */   lw         $v0, 0x10($s0)
glabel L800BA8EC
/* 062B3C 800BA8EC 8FBF002C */  lw          $ra, 0x2C($sp)
/* 062B40 800BA8F0 8FB00018 */  lw          $s0, 0x18($sp)
/* 062B44 800BA8F4 8FB1001C */  lw          $s1, 0x1C($sp)
/* 062B48 800BA8F8 8FB20020 */  lw          $s2, 0x20($sp)
/* 062B4C 800BA8FC 8FB30024 */  lw          $s3, 0x24($sp)
/* 062B50 800BA900 8FB40028 */  lw          $s4, 0x28($sp)
/* 062B54 800BA904 03E00008 */  jr          $ra
/* 062B58 800BA908 27BD0030 */   addiu      $sp, $sp, 0x30
.size func_800BA7A0, . - func_800BA7A0

.late_rodata
glabel jtbl_800D68E0
.word L800BA808
.word L800BA824
.word L800BA860
.word L800BA894
.word L800BA8B0
