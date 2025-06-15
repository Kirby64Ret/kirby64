glabel func_800BB08C # 11
/* 0632DC 800BB08C 3C0E800F */  lui         $t6, %hi(D_800ED4C0)
/* 0632E0 800BB090 8DCED4C0 */  lw          $t6, %lo(D_800ED4C0)($t6)
/* 0632E4 800BB094 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0632E8 800BB098 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0632EC 800BB09C AFA5002C */  sw          $a1, 0x2C($sp)
/* 0632F0 800BB0A0 11C0001E */  beqz        $t6, L800BB11C
/* 0632F4 800BB0A4 AFA60030 */   sw         $a2, 0x30($sp)
/* 0632F8 800BB0A8 3C18800F */  lui         $t8, %hi(D_800ED4A0)
/* 0632FC 800BB0AC 2718D4A0 */  addiu       $t8, $t8, %lo(D_800ED4A0)
/* 063300 800BB0B0 000478C0 */  sll         $t7, $a0, 3
/* 063304 800BB0B4 01F82021 */  addu        $a0, $t7, $t8
/* 063308 800BB0B8 0C02EBAC */  jal         func_800BAEB0
/* 06330C 800BB0BC AFA4001C */   sw         $a0, 0x1C($sp)
/* 063310 800BB0C0 14400016 */  bnez        $v0, L800BB11C
/* 063314 800BB0C4 8FA4001C */   lw         $a0, 0x1C($sp)
/* 063318 800BB0C8 0C02EBD4 */  jal         func_800BAF50
/* 06331C 800BB0CC 8FA5002C */   lw         $a1, 0x2C($sp)
/* 063320 800BB0D0 10400012 */  beqz        $v0, L800BB11C
/* 063324 800BB0D4 8FA30030 */   lw         $v1, 0x30($sp)
/* 063328 800BB0D8 14600003 */  bnez        $v1, L800BB0E8
/* 06332C 800BB0DC 2419FFFF */   addiu      $t9, $zero, -0x1
/* 063330 800BB0E0 10000002 */  b           L800BB0EC
/* 063334 800BB0E4 AC590008 */   sw         $t9, 0x8($v0)
glabel L800BB0E8
/* 063338 800BB0E8 AC430008 */  sw          $v1, 0x8($v0)
glabel L800BB0EC
/* 06333C 800BB0EC 8FA8002C */  lw          $t0, 0x2C($sp)
/* 063340 800BB0F0 A0400001 */  sb          $zero, 0x1($v0)
/* 063344 800BB0F4 A4400002 */  sh          $zero, 0x2($v0)
/* 063348 800BB0F8 A4400004 */  sh          $zero, 0x4($v0)
/* 06334C 800BB0FC AC40000C */  sw          $zero, 0xC($v0)
/* 063350 800BB100 A0480000 */  sb          $t0, 0x0($v0)
/* 063354 800BB104 8FAA002C */  lw          $t2, 0x2C($sp)
/* 063358 800BB108 3C0C800D */  lui         $t4, %hi(D_800D5238)
/* 06335C 800BB10C 000A5880 */  sll         $t3, $t2, 2
/* 063360 800BB110 018B6021 */  addu        $t4, $t4, $t3
/* 063364 800BB114 8D8C5238 */  lw          $t4, %lo(D_800D5238)($t4)
/* 063368 800BB118 AC4C0010 */  sw          $t4, 0x10($v0)
glabel L800BB11C
/* 06336C 800BB11C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 063370 800BB120 27BD0028 */  addiu       $sp, $sp, 0x28
/* 063374 800BB124 03E00008 */  jr          $ra
/* 063378 800BB128 00000000 */   nop
.size func_800BB08C, . - func_800BB08C
