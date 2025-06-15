glabel func_801DE608_ovl14 # 42
/* 2011F8 801DE608 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 2011FC 801DE60C AFBF002C */  sw          $ra, 0x2C($sp)
/* 201200 801DE610 AFB30028 */  sw          $s3, 0x28($sp)
/* 201204 801DE614 AFB20024 */  sw          $s2, 0x24($sp)
/* 201208 801DE618 AFB10020 */  sw          $s1, 0x20($sp)
/* 20120C 801DE61C AFB0001C */  sw          $s0, 0x1C($sp)
/* 201210 801DE620 F7B40010 */  sdc1        $f20, 0x10($sp)
/* 201214 801DE624 8C90003C */  lw          $s0, 0x3C($a0)
/* 201218 801DE628 4485A000 */  mtc1        $a1, $f20
/* 20121C 801DE62C 3C138005 */  lui         $s3, %hi(D_8004A7C4)
/* 201220 801DE630 1200001D */  beqz        $s0, .L801DE6A8
/* 201224 801DE634 2673A7C4 */   addiu      $s3, $s3, %lo(D_8004A7C4)
/* 201228 801DE638 3C12800E */  lui         $s2, %hi(D_800DFBD0)
/* 20122C 801DE63C 3C11800D */  lui         $s1, %hi(D_800D7098)
/* 201230 801DE640 26317098 */  addiu       $s1, $s1, %lo(D_800D7098)
/* 201234 801DE644 2652FBD0 */  addiu       $s2, $s2, %lo(D_800DFBD0)
/* 201238 801DE648 8E020080 */  lw          $v0, 0x80($s0)
.L801DE64C:
/* 20123C 801DE64C 10400005 */  beqz        $v0, .L801DE664
/* 201240 801DE650 00000000 */   nop
/* 201244 801DE654 E4540084 */  swc1        $f20, 0x84($v0)
.L801DE658:
/* 201248 801DE658 8C420000 */  lw          $v0, 0x0($v0)
/* 20124C 801DE65C 5440FFFE */  bnel        $v0, $zero, .L801DE658
/* 201250 801DE660 E4540084 */   swc1       $f20, 0x84($v0)
.L801DE664:
/* 201254 801DE664 0C002FA4 */  jal         func_8000BE90
/* 201258 801DE668 02002025 */   move       $a0, $s0
/* 20125C 801DE66C 8E2E0010 */  lw          $t6, 0x10($s1)
/* 201260 801DE670 00408025 */  move        $s0, $v0
/* 201264 801DE674 15C0000A */  bnez        $t6, .L801DE6A0
/* 201268 801DE678 00000000 */   nop
/* 20126C 801DE67C 8E6F0000 */  lw          $t7, 0x0($s3)
/* 201270 801DE680 8DF80000 */  lw          $t8, 0x0($t7)
/* 201274 801DE684 0018C880 */  sll         $t9, $t8, 2
/* 201278 801DE688 02594021 */  addu        $t0, $s2, $t9
/* 20127C 801DE68C 8D090000 */  lw          $t1, 0x0($t0)
/* 201280 801DE690 8D2A002C */  lw          $t2, 0x2C($t1)
/* 201284 801DE694 004A082B */  sltu        $at, $v0, $t2
/* 201288 801DE698 50200004 */  beql        $at, $zero, .L801DE6AC
/* 20128C 801DE69C 8FBF002C */   lw         $ra, 0x2C($sp)
.L801DE6A0:
/* 201290 801DE6A0 5600FFEA */  bnel        $s0, $zero, .L801DE64C
/* 201294 801DE6A4 8E020080 */   lw         $v0, 0x80($s0)
.L801DE6A8:
/* 201298 801DE6A8 8FBF002C */  lw          $ra, 0x2C($sp)
.L801DE6AC:
/* 20129C 801DE6AC D7B40010 */  ldc1        $f20, 0x10($sp)
/* 2012A0 801DE6B0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 2012A4 801DE6B4 8FB10020 */  lw          $s1, 0x20($sp)
/* 2012A8 801DE6B8 8FB20024 */  lw          $s2, 0x24($sp)
/* 2012AC 801DE6BC 8FB30028 */  lw          $s3, 0x28($sp)
/* 2012B0 801DE6C0 03E00008 */  jr          $ra
/* 2012B4 801DE6C4 27BD0030 */   addiu      $sp, $sp, 0x30
.type func_801DE608_ovl14, @function
.size func_801DE608_ovl14, . - func_801DE608_ovl14
