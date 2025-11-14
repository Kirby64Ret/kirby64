glabel func_801DE9C4_ovl12 # 80
/* 0037C4 801DE9C4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0037C8 801DE9C8 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 0037CC 801DE9CC 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 0037D0 801DE9D0 AFBF0024 */  sw          $ra, 0x24($sp)
/* 0037D4 801DE9D4 AFB10020 */  sw          $s1, 0x20($sp)
/* 0037D8 801DE9D8 AFB0001C */  sw          $s0, 0x1C($sp)
/* 0037DC 801DE9DC F7B40010 */  sdc1        $f20, 0x10($sp)
/* 0037E0 801DE9E0 AFA40028 */  sw          $a0, 0x28($sp)
/* 0037E4 801DE9E4 8DF80000 */  lw          $t8, 0x0($t7)
/* 0037E8 801DE9E8 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 0037EC 801DE9EC 3C11800D */  lui         $s1, %hi(D_800D7098)
/* 0037F0 801DE9F0 0018C880 */  sll         $t9, $t8, 2
/* 0037F4 801DE9F4 00390821 */  addu        $at, $at, $t9
/* 0037F8 801DE9F8 240E0004 */  addiu       $t6, $zero, 0x4
/* 0037FC 801DE9FC 26317098 */  addiu       $s1, $s1, %lo(D_800D7098)
/* 003800 801DEA00 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 003804 801DEA04 8E290000 */  lw          $t1, 0x0($s1)
/* 003808 801DEA08 3C10800E */  lui         $s0, %hi(D_800E3210)
/* 00380C 801DEA0C 26103210 */  addiu       $s0, $s0, %lo(D_800E3210)
/* 003810 801DEA10 00095080 */  sll         $t2, $t1, 2
/* 003814 801DEA14 020A5821 */  addu        $t3, $s0, $t2
/* 003818 801DEA18 4480A000 */  mtc1        $zero, $f20
/* 00381C 801DEA1C C5640000 */  lwc1        $f4, 0x0($t3)
/* 003820 801DEA20 4604A032 */  c.eq.s      $f20, $f4
/* 003824 801DEA24 00000000 */  nop
/* 003828 801DEA28 4501000B */  bc1t        .L801DEA58
/* 00382C 801DEA2C 00000000 */   nop
.L801DEA30:
/* 003830 801DEA30 0C002DAF */  jal         finish_current_thread
/* 003834 801DEA34 24040001 */   addiu      $a0, $zero, 0x1
/* 003838 801DEA38 8E2C0000 */  lw          $t4, 0x0($s1)
/* 00383C 801DEA3C 000C6880 */  sll         $t5, $t4, 2
/* 003840 801DEA40 020D7821 */  addu        $t7, $s0, $t5
/* 003844 801DEA44 C5E60000 */  lwc1        $f6, 0x0($t7)
/* 003848 801DEA48 4606A032 */  c.eq.s      $f20, $f6
/* 00384C 801DEA4C 00000000 */  nop
/* 003850 801DEA50 4500FFF7 */  bc1f        .L801DEA30
/* 003854 801DEA54 00000000 */   nop
.L801DEA58:
/* 003858 801DEA58 0C002DAF */  jal         finish_current_thread
/* 00385C 801DEA5C 2404003C */   addiu      $a0, $zero, 0x3C
/* 003860 801DEA60 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 003864 801DEA64 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 003868 801DEA68 44804000 */  mtc1        $zero, $f8
/* 00386C 801DEA6C 3C07800F */  lui         $a3, %hi(D_800EA8A0)
/* 003870 801DEA70 8C580000 */  lw          $t8, 0x0($v0)
/* 003874 801DEA74 24E7A8A0 */  addiu       $a3, $a3, %lo(D_800EA8A0)
/* 003878 801DEA78 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 00387C 801DEA7C 00187080 */  sll         $t6, $t8, 2
/* 003880 801DEA80 00EEC821 */  addu        $t9, $a3, $t6
/* 003884 801DEA84 E7280000 */  swc1        $f8, 0x0($t9)
/* 003888 801DEA88 8C430000 */  lw          $v1, 0x0($v0)
/* 00388C 801DEA8C 3C08800E */  lui         $t0, %hi(D_800E7880)
/* 003890 801DEA90 25087880 */  addiu       $t0, $t0, %lo(D_800E7880)
/* 003894 801DEA94 00031880 */  sll         $v1, $v1, 2
/* 003898 801DEA98 00E34821 */  addu        $t1, $a3, $v1
/* 00389C 801DEA9C C52A0000 */  lwc1        $f10, 0x0($t1)
/* 0038A0 801DEAA0 00230821 */  addu        $at, $at, $v1
/* 0038A4 801DEAA4 240A0004 */  addiu       $t2, $zero, 0x4
/* 0038A8 801DEAA8 E42AA6E0 */  swc1        $f10, %lo(D_800EA6E0)($at)
/* 0038AC 801DEAAC 8C4B0000 */  lw          $t3, 0x0($v0)
/* 0038B0 801DEAB0 3C06801E */  lui         $a2, %hi(D_801E2AC0_ovl12)
/* 0038B4 801DEAB4 24C62AC0 */  addiu       $a2, $a2, %lo(D_801E2AC0_ovl12)
/* 0038B8 801DEAB8 010B6021 */  addu        $t4, $t0, $t3
/* 0038BC 801DEABC A18A0000 */  sb          $t2, 0x0($t4)
/* 0038C0 801DEAC0 8C4D0000 */  lw          $t5, 0x0($v0)
/* 0038C4 801DEAC4 24050005 */  addiu       $a1, $zero, 0x5
/* 0038C8 801DEAC8 010D7821 */  addu        $t7, $t0, $t5
/* 0038CC 801DEACC 0C02911F */  jal         call_virtual_function
/* 0038D0 801DEAD0 91E40000 */   lbu        $a0, 0x0($t7)
/* 0038D4 801DEAD4 0C02BE85 */  jal         func_800AFA14
/* 0038D8 801DEAD8 00000000 */   nop
/* 0038DC 801DEADC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 0038E0 801DEAE0 D7B40010 */  ldc1        $f20, 0x10($sp)
/* 0038E4 801DEAE4 8FB0001C */  lw          $s0, 0x1C($sp)
/* 0038E8 801DEAE8 8FB10020 */  lw          $s1, 0x20($sp)
/* 0038EC 801DEAEC 03E00008 */  jr          $ra
/* 0038F0 801DEAF0 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DE9C4_ovl12, @function
.size func_801DE9C4_ovl12, . - func_801DE9C4_ovl12
