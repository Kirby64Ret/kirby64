glabel func_800BB24C # 14
/* 06349C 800BB24C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0634A0 800BB250 3C09800F */  lui         $t1, %hi(D_800ED4A0)
/* 0634A4 800BB254 3C08800F */  lui         $t0, %hi(D_800ED410)
/* 0634A8 800BB258 3C07800F */  lui         $a3, %hi(D_800ED320)
/* 0634AC 800BB25C 3C0A800F */  lui         $t2, %hi(D_800ED410)
/* 0634B0 800BB260 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0634B4 800BB264 254AD410 */  addiu       $t2, $t2, %lo(D_800ED410)
/* 0634B8 800BB268 24E7D320 */  addiu       $a3, $a3, %lo(D_800ED320)
/* 0634BC 800BB26C 2508D410 */  addiu       $t0, $t0, %lo(D_800ED410)
/* 0634C0 800BB270 2529D4A0 */  addiu       $t1, $t1, %lo(D_800ED4A0)
/* 0634C4 800BB274 24060003 */  addiu       $a2, $zero, 0x3
glabel L800BB278
/* 0634C8 800BB278 A1200000 */  sb          $zero, 0x0($t1)
/* 0634CC 800BB27C AD280004 */  sw          $t0, 0x4($t1)
/* 0634D0 800BB280 01001025 */  move        $v0, $t0
/* 0634D4 800BB284 AD070000 */  sw          $a3, 0x0($t0)
/* 0634D8 800BB288 00E01825 */  move        $v1, $a3
/* 0634DC 800BB28C ACE0000C */  sw          $zero, 0xC($a3)
/* 0634E0 800BB290 ACE00010 */  sw          $zero, 0x10($a3)
/* 0634E4 800BB294 01002025 */  move        $a0, $t0
/* 0634E8 800BB298 24050001 */  addiu       $a1, $zero, 0x1
glabel L800BB29C
/* 0634EC 800BB29C 2442000C */  addiu       $v0, $v0, 0xC
/* 0634F0 800BB2A0 AC820004 */  sw          $v0, 0x4($a0)
/* 0634F4 800BB2A4 24630014 */  addiu       $v1, $v1, 0x14
/* 0634F8 800BB2A8 AC430000 */  sw          $v1, 0x0($v0)
/* 0634FC 800BB2AC AC60000C */  sw          $zero, 0xC($v1)
/* 063500 800BB2B0 AC600010 */  sw          $zero, 0x10($v1)
/* 063504 800BB2B4 24A50001 */  addiu       $a1, $a1, 0x1
/* 063508 800BB2B8 AC440008 */  sw          $a0, 0x8($v0)
/* 06350C 800BB2BC 14A6FFF7 */  bne         $a1, $a2, L800BB29C
/* 063510 800BB2C0 00402025 */   move       $a0, $v0
/* 063514 800BB2C4 AC400004 */  sw          $zero, 0x4($v0)
/* 063518 800BB2C8 8D2E0004 */  lw          $t6, 0x4($t1)
/* 06351C 800BB2CC 24E7003C */  addiu       $a3, $a3, 0x3C
/* 063520 800BB2D0 25080024 */  addiu       $t0, $t0, 0x24
/* 063524 800BB2D4 25290008 */  addiu       $t1, $t1, 0x8
/* 063528 800BB2D8 14EAFFE7 */  bne         $a3, $t2, L800BB278
/* 06352C 800BB2DC ADC20008 */   sw         $v0, 0x8($t6)
/* 063530 800BB2E0 240F0001 */  addiu       $t7, $zero, 0x1
/* 063534 800BB2E4 3C01800F */  lui         $at, %hi(D_800ED4C0)
/* 063538 800BB2E8 3C188005 */  lui         $t8, %hi(D_80048E9C)
/* 06353C 800BB2EC 83188E9C */  lb          $t8, %lo(D_80048E9C)($t8)
/* 063540 800BB2F0 AC2FD4C0 */  sw          $t7, %lo(D_800ED4C0)($at)
/* 063544 800BB2F4 3C19800F */  lui         $t9, %hi(D_800ED320)
/* 063548 800BB2F8 3C01800F */  lui         $at, %hi(D_800ED4C4)
/* 06354C 800BB2FC 2739D320 */  addiu       $t9, $t9, %lo(D_800ED320)
/* 063550 800BB300 3C04800F */  lui         $a0, %hi(D_800ECD70)
/* 063554 800BB304 3C0505F5 */  lui         $a1, (0x5F5E100 >> 16)
/* 063558 800BB308 3C06800C */  lui         $a2, %hi(func_800BAD0C)
/* 06355C 800BB30C 240B0034 */  addiu       $t3, $zero, 0x34
/* 063560 800BB310 AFAB0014 */  sw          $t3, 0x14($sp)
/* 063564 800BB314 24C6AD0C */  addiu       $a2, $a2, %lo(func_800BAD0C)
/* 063568 800BB318 34A5E100 */  ori         $a1, $a1, (0x5F5E100 & 0xFFFF)
/* 06356C 800BB31C 2484CD70 */  addiu       $a0, $a0, %lo(D_800ECD70)
/* 063570 800BB320 AFB90010 */  sw          $t9, 0x10($sp)
/* 063574 800BB324 00003825 */  move        $a3, $zero
/* 063578 800BB328 0C00BEF8 */  jal         osCreateThread
/* 06357C 800BB32C AC38D4C4 */   sw         $t8, %lo(D_800ED4C4)($at)
/* 063580 800BB330 3C0DFEDC */  lui         $t5, (0xFEDCBA98 >> 16)
/* 063584 800BB334 35ADBA98 */  ori         $t5, $t5, (0xFEDCBA98 & 0xFFFF)
/* 063588 800BB338 240C0000 */  addiu       $t4, $zero, 0x0
/* 06358C 800BB33C 3C01800F */  lui         $at, %hi(D_800ECF58)
/* 063590 800BB340 3C04800F */  lui         $a0, %hi(D_800ECD70)
/* 063594 800BB344 AC2CCF58 */  sw          $t4, %lo(D_800ECF58)($at)
/* 063598 800BB348 AC2DCF5C */  sw          $t5, %lo(D_800ECF5C)($at)
/* 06359C 800BB34C 0C00E334 */  jal         osStartThread
/* 0635A0 800BB350 2484CD70 */   addiu      $a0, $a0, %lo(D_800ECD70)
/* 0635A4 800BB354 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0635A8 800BB358 27BD0020 */  addiu       $sp, $sp, 0x20
/* 0635AC 800BB35C 03E00008 */  jr          $ra
/* 0635B0 800BB360 00000000 */   nop
.size func_800BB24C, . - func_800BB24C
