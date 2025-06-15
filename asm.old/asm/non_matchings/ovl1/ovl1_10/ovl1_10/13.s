glabel func_800BB198 # 13
/* 0633E8 800BB198 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0633EC 800BB19C 3C18800F */  lui         $t8, %hi(D_800ED4A0)
/* 0633F0 800BB1A0 AFB1001C */  sw          $s1, 0x1C($sp)
/* 0633F4 800BB1A4 2718D4A0 */  addiu       $t8, $t8, %lo(D_800ED4A0)
/* 0633F8 800BB1A8 000478C0 */  sll         $t7, $a0, 3
/* 0633FC 800BB1AC 01F88821 */  addu        $s1, $t7, $t8
/* 063400 800BB1B0 8E230004 */  lw          $v1, 0x4($s1)
/* 063404 800BB1B4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 063408 800BB1B8 AFB20020 */  sw          $s2, 0x20($sp)
/* 06340C 800BB1BC AFB00018 */  sw          $s0, 0x18($sp)
/* 063410 800BB1C0 AFA40028 */  sw          $a0, 0x28($sp)
/* 063414 800BB1C4 8C790000 */  lw          $t9, 0x0($v1)
/* 063418 800BB1C8 00A09025 */  move        $s2, $a1
/* 06341C 800BB1CC 00608025 */  move        $s0, $v1
/* 063420 800BB1D0 8F280010 */  lw          $t0, 0x10($t9)
/* 063424 800BB1D4 51000018 */  beql        $t0, $zero, L800BB238
/* 063428 800BB1D8 8FBF0024 */   lw         $ra, 0x24($sp)
/* 06342C 800BB1DC 50600012 */  beql        $v1, $zero, L800BB228
/* 063430 800BB1E0 02202025 */   move       $a0, $s1
/* 063434 800BB1E4 8E020000 */  lw          $v0, 0x0($s0)
glabel L800BB1E8
/* 063438 800BB1E8 02202025 */  move        $a0, $s1
/* 06343C 800BB1EC 8C490010 */  lw          $t1, 0x10($v0)
/* 063440 800BB1F0 5120000D */  beql        $t1, $zero, L800BB228
/* 063444 800BB1F4 02202025 */   move       $a0, $s1
/* 063448 800BB1F8 904A0000 */  lbu         $t2, 0x0($v0)
/* 06344C 800BB1FC 564A0007 */  bnel        $s2, $t2, L800BB21C
/* 063450 800BB200 8E100004 */   lw         $s0, 0x4($s0)
/* 063454 800BB204 0C02EA81 */  jal         func_800BAA04
/* 063458 800BB208 02002825 */   move       $a1, $s0
/* 06345C 800BB20C 8E230004 */  lw          $v1, 0x4($s1)
/* 063460 800BB210 10000002 */  b           L800BB21C
/* 063464 800BB214 00608025 */   move       $s0, $v1
/* 063468 800BB218 8E100004 */  lw          $s0, 0x4($s0)
glabel L800BB21C
/* 06346C 800BB21C 5600FFF2 */  bnel        $s0, $zero, L800BB1E8
/* 063470 800BB220 8E020000 */   lw         $v0, 0x0($s0)
/* 063474 800BB224 02202025 */  move        $a0, $s1
glabel L800BB228
/* 063478 800BB228 8C650000 */  lw          $a1, 0x0($v1)
/* 06347C 800BB22C 0C02EADA */  jal         func_800BAB68
/* 063480 800BB230 8FA60028 */   lw         $a2, 0x28($sp)
/* 063484 800BB234 8FBF0024 */  lw          $ra, 0x24($sp)
glabel L800BB238
/* 063488 800BB238 8FB00018 */  lw          $s0, 0x18($sp)
/* 06348C 800BB23C 8FB1001C */  lw          $s1, 0x1C($sp)
/* 063490 800BB240 8FB20020 */  lw          $s2, 0x20($sp)
/* 063494 800BB244 03E00008 */  jr          $ra
/* 063498 800BB248 27BD0028 */   addiu      $sp, $sp, 0x28
.size func_800BB198, . - func_800BB198
