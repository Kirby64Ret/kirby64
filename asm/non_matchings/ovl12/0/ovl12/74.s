glabel func_801DE678_ovl12 # 74
/* 003478 801DE678 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00347C 801DE67C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 003480 801DE680 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 003484 801DE684 AFBF001C */  sw          $ra, 0x1C($sp)
/* 003488 801DE688 AFB00018 */  sw          $s0, 0x18($sp)
/* 00348C 801DE68C AFA40020 */  sw          $a0, 0x20($sp)
/* 003490 801DE690 8C4F0000 */  lw          $t7, 0x0($v0)
/* 003494 801DE694 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 003498 801DE698 240E0001 */  addiu       $t6, $zero, 0x1
/* 00349C 801DE69C 000FC080 */  sll         $t8, $t7, 2
/* 0034A0 801DE6A0 00380821 */  addu        $at, $at, $t8
/* 0034A4 801DE6A4 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 0034A8 801DE6A8 8C590000 */  lw          $t9, 0x0($v0)
/* 0034AC 801DE6AC 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 0034B0 801DE6B0 3C10800D */  lui         $s0, %hi(D_800D7098)
/* 0034B4 801DE6B4 00194080 */  sll         $t0, $t9, 2
/* 0034B8 801DE6B8 00280821 */  addu        $at, $at, $t0
/* 0034BC 801DE6BC 26107098 */  addiu       $s0, $s0, %lo(D_800D7098)
/* 0034C0 801DE6C0 AC209E20 */  sw          $zero, %lo(D_800E9E20)($at)
/* 0034C4 801DE6C4 8E09000C */  lw          $t1, 0xC($s0)
/* 0034C8 801DE6C8 11200006 */  beqz        $t1, .L801DE6E4
/* 0034CC 801DE6CC 00000000 */   nop
.L801DE6D0:
/* 0034D0 801DE6D0 0C002DAF */  jal         finish_current_thread
/* 0034D4 801DE6D4 24040001 */   addiu      $a0, $zero, 0x1
/* 0034D8 801DE6D8 8E0A000C */  lw          $t2, 0xC($s0)
/* 0034DC 801DE6DC 1540FFFC */  bnez        $t2, .L801DE6D0
/* 0034E0 801DE6E0 00000000 */   nop
.L801DE6E4:
/* 0034E4 801DE6E4 0C002DAF */  jal         finish_current_thread
/* 0034E8 801DE6E8 2404001E */   addiu      $a0, $zero, 0x1E
/* 0034EC 801DE6EC 3C0C8005 */  lui         $t4, %hi(D_8004A7C4)
/* 0034F0 801DE6F0 8D8CA7C4 */  lw          $t4, %lo(D_8004A7C4)($t4)
/* 0034F4 801DE6F4 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 0034F8 801DE6F8 240B0001 */  addiu       $t3, $zero, 0x1
/* 0034FC 801DE6FC 8D8D0000 */  lw          $t5, 0x0($t4)
/* 003500 801DE700 000D7880 */  sll         $t7, $t5, 2
/* 003504 801DE704 002F0821 */  addu        $at, $at, $t7
/* 003508 801DE708 0C02BE85 */  jal         func_800AFA14
/* 00350C 801DE70C AC2B9E20 */   sw         $t3, %lo(D_800E9E20)($at)
/* 003510 801DE710 8FBF001C */  lw          $ra, 0x1C($sp)
/* 003514 801DE714 8FB00018 */  lw          $s0, 0x18($sp)
/* 003518 801DE718 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00351C 801DE71C 03E00008 */  jr          $ra
/* 003520 801DE720 00000000 */   nop