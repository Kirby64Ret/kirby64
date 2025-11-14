glabel func_801E3958_ovl13 # 49
/* 1FB8D8 801E3958 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FB8DC 801E395C 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FB8E0 801E3960 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FB8E4 801E3964 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FB8E8 801E3968 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FB8EC 801E396C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FB8F0 801E3970 3C04800F */  lui         $a0, %hi(D_800E9C60)
/* 1FB8F4 801E3974 24849C60 */  addiu       $a0, $a0, %lo(D_800E9C60)
/* 1FB8F8 801E3978 000E7880 */  sll         $t7, $t6, 2
/* 1FB8FC 801E397C 008F1021 */  addu        $v0, $a0, $t7
/* 1FB900 801E3980 8C580000 */  lw          $t8, 0x0($v0)
/* 1FB904 801E3984 24010006 */  addiu       $at, $zero, 0x6
/* 1FB908 801E3988 3C0F800E */  lui         $t7, %hi(D_800DFBD0)
/* 1FB90C 801E398C 27190001 */  addiu       $t9, $t8, 0x1
/* 1FB910 801E3990 AC590000 */  sw          $t9, 0x0($v0)
/* 1FB914 801E3994 8C690000 */  lw          $t1, 0x0($v1)
/* 1FB918 801E3998 24050002 */  addiu       $a1, $zero, 0x2
/* 1FB91C 801E399C 00095080 */  sll         $t2, $t1, 2
/* 1FB920 801E39A0 008A1021 */  addu        $v0, $a0, $t2
/* 1FB924 801E39A4 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1FB928 801E39A8 0161001A */  div         $zero, $t3, $at
/* 1FB92C 801E39AC 00006010 */  mfhi        $t4
/* 1FB930 801E39B0 AC4C0000 */  sw          $t4, 0x0($v0)
/* 1FB934 801E39B4 8C680000 */  lw          $t0, 0x0($v1)
/* 1FB938 801E39B8 00084080 */  sll         $t0, $t0, 2
/* 1FB93C 801E39BC 00886821 */  addu        $t5, $a0, $t0
/* 1FB940 801E39C0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1FB944 801E39C4 24040006 */  addiu       $a0, $zero, 0x6
/* 1FB948 801E39C8 01E87821 */  addu        $t7, $t7, $t0
/* 1FB94C 801E39CC 55C0002A */  bnel        $t6, $zero, L801E3A78_ovl13
/* 1FB950 801E39D0 8FBF0014 */   lw         $ra, 0x14($sp)
/* 1FB954 801E39D4 8DEFFBD0 */  lw          $t7, %lo(D_800DFBD0)($t7)
/* 1FB958 801E39D8 00003025 */  move        $a2, $zero
/* 1FB95C 801E39DC 0C02A040 */  jal         func_800A8100
/* 1FB960 801E39E0 8DE70030 */   lw         $a3, 0x30($t7)
/* 1FB964 801E39E4 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 1FB968 801E39E8 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 1FB96C 801E39EC 3C0A800E */  lui         $t2, %hi(D_800DFBD0)
/* 1FB970 801E39F0 24040006 */  addiu       $a0, $zero, 0x6
/* 1FB974 801E39F4 8F190000 */  lw          $t9, 0x0($t8)
/* 1FB978 801E39F8 24050002 */  addiu       $a1, $zero, 0x2
/* 1FB97C 801E39FC 00003025 */  move        $a2, $zero
/* 1FB980 801E3A00 00194880 */  sll         $t1, $t9, 2
/* 1FB984 801E3A04 01495021 */  addu        $t2, $t2, $t1
/* 1FB988 801E3A08 8D4AFBD0 */  lw          $t2, %lo(D_800DFBD0)($t2)
/* 1FB98C 801E3A0C 0C02A040 */  jal         func_800A8100
/* 1FB990 801E3A10 8D470038 */   lw         $a3, 0x38($t2)
/* 1FB994 801E3A14 3C0B8005 */  lui         $t3, %hi(D_8004A7C4)
/* 1FB998 801E3A18 8D6BA7C4 */  lw          $t3, %lo(D_8004A7C4)($t3)
/* 1FB99C 801E3A1C 3C0E800E */  lui         $t6, %hi(D_800DFBD0)
/* 1FB9A0 801E3A20 24040006 */  addiu       $a0, $zero, 0x6
/* 1FB9A4 801E3A24 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FB9A8 801E3A28 24050002 */  addiu       $a1, $zero, 0x2
/* 1FB9AC 801E3A2C 00003025 */  move        $a2, $zero
/* 1FB9B0 801E3A30 000C6880 */  sll         $t5, $t4, 2
/* 1FB9B4 801E3A34 01CD7021 */  addu        $t6, $t6, $t5
/* 1FB9B8 801E3A38 8DCEFBD0 */  lw          $t6, %lo(D_800DFBD0)($t6)
/* 1FB9BC 801E3A3C 0C02A040 */  jal         func_800A8100
/* 1FB9C0 801E3A40 8DC70040 */   lw         $a3, 0x40($t6)
/* 1FB9C4 801E3A44 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 1FB9C8 801E3A48 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 1FB9CC 801E3A4C 3C09800E */  lui         $t1, %hi(D_800DFBD0)
/* 1FB9D0 801E3A50 24040006 */  addiu       $a0, $zero, 0x6
/* 1FB9D4 801E3A54 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FB9D8 801E3A58 24050002 */  addiu       $a1, $zero, 0x2
/* 1FB9DC 801E3A5C 00003025 */  move        $a2, $zero
/* 1FB9E0 801E3A60 0018C880 */  sll         $t9, $t8, 2
/* 1FB9E4 801E3A64 01394821 */  addu        $t1, $t1, $t9
/* 1FB9E8 801E3A68 8D29FBD0 */  lw          $t1, %lo(D_800DFBD0)($t1)
/* 1FB9EC 801E3A6C 0C02A040 */  jal         func_800A8100
/* 1FB9F0 801E3A70 8D270020 */   lw         $a3, 0x20($t1)
/* 1FB9F4 801E3A74 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L801E3A78_ovl13
/* 1FB9F8 801E3A78 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FB9FC 801E3A7C 03E00008 */  jr          $ra
/* 1FBA00 801E3A80 00000000 */   nop
.type func_801E3958_ovl13, @function
.size func_801E3958_ovl13, . - func_801E3958_ovl13

