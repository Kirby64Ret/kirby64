glabel func_801DD400_ovl12 # 44
/* 002200 801DD400 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 002204 801DD404 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 002208 801DD408 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00220C 801DD40C AFBF0014 */  sw          $ra, 0x14($sp)
/* 002210 801DD410 AFA40018 */  sw          $a0, 0x18($sp)
/* 002214 801DD414 8C620000 */  lw          $v0, 0x0($v1)
/* 002218 801DD418 3C05800D */  lui         $a1, %hi(D_800D7098)
/* 00221C 801DD41C 3C09800E */  lui         $t1, %hi(gEntityVtableIndexArray)
/* 002220 801DD420 3C0E800F */  lui         $t6, %hi(D_800E9560)
/* 002224 801DD424 00021080 */  sll         $v0, $v0, 2
/* 002228 801DD428 2529DC50 */  addiu       $t1, $t1, %lo(gEntityVtableIndexArray)
/* 00222C 801DD42C 24A57098 */  addiu       $a1, $a1, %lo(D_800D7098)
/* 002230 801DD430 25CE9560 */  addiu       $t6, $t6, %lo(D_800E9560)
/* 002234 801DD434 8CB90008 */  lw          $t9, 0x8($a1)
/* 002238 801DD438 004E3021 */  addu        $a2, $v0, $t6
/* 00223C 801DD43C 01227821 */  addu        $t7, $t1, $v0
/* 002240 801DD440 8DF80000 */  lw          $t8, 0x0($t7)
/* 002244 801DD444 8CC70000 */  lw          $a3, 0x0($a2)
/* 002248 801DD448 24040001 */  addiu       $a0, $zero, 0x1
/* 00224C 801DD44C 10990003 */  beq         $a0, $t9, .L801DD45C
/* 002250 801DD450 00F84021 */   addu       $t0, $a3, $t8
/* 002254 801DD454 8CA20010 */  lw          $v0, 0x10($a1)
/* 002258 801DD458 14400010 */  bnez        $v0, .L801DD49C
.L801DD45C:
/* 00225C 801DD45C 24EA0001 */   addiu      $t2, $a3, 0x1
/* 002260 801DD460 ACCA0000 */  sw          $t2, 0x0($a2)
/* 002264 801DD464 8C6B0000 */  lw          $t3, 0x0($v1)
/* 002268 801DD468 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 00226C 801DD46C 3C05801E */  lui         $a1, %hi(func_801DCFE4_ovl12)
/* 002270 801DD470 000B6080 */  sll         $t4, $t3, 2
/* 002274 801DD474 012C6821 */  addu        $t5, $t1, $t4
/* 002278 801DD478 ADA80000 */  sw          $t0, 0x0($t5)
/* 00227C 801DD47C 8C6E0000 */  lw          $t6, 0x0($v1)
/* 002280 801DD480 24A5CFE4 */  addiu       $a1, $a1, %lo(func_801DCFE4_ovl12)
/* 002284 801DD484 000E7880 */  sll         $t7, $t6, 2
/* 002288 801DD488 008F2021 */  addu        $a0, $a0, $t7
/* 00228C 801DD48C 0C02C7B2 */  jal         assign_new_process_entry
/* 002290 801DD490 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 002294 801DD494 10000019 */  b           .L801DD4FC
/* 002298 801DD498 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DD49C:
/* 00229C 801DD49C 54400007 */  bnel        $v0, $zero, .L801DD4BC
/* 0022A0 801DD4A0 8CB8000C */   lw         $t8, 0xC($a1)
/* 0022A4 801DD4A4 0C07737F */  jal         func_801DCDFC_ovl12
/* 0022A8 801DD4A8 00000000 */   nop
/* 0022AC 801DD4AC 3C05800D */  lui         $a1, %hi(D_800D7098)
/* 0022B0 801DD4B0 24A57098 */  addiu       $a1, $a1, %lo(D_800D7098)
/* 0022B4 801DD4B4 24040001 */  addiu       $a0, $zero, 0x1
/* 0022B8 801DD4B8 8CB8000C */  lw          $t8, 0xC($a1)
.L801DD4BC:
/* 0022BC 801DD4BC 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 0022C0 801DD4C0 5498000E */  bnel        $a0, $t8, .L801DD4FC
/* 0022C4 801DD4C4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0022C8 801DD4C8 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 0022CC 801DD4CC 3C0C800F */  lui         $t4, %hi(D_800E9AA0)
/* 0022D0 801DD4D0 8F2A0000 */  lw          $t2, 0x0($t9)
/* 0022D4 801DD4D4 000A5880 */  sll         $t3, $t2, 2
/* 0022D8 801DD4D8 018B6021 */  addu        $t4, $t4, $t3
/* 0022DC 801DD4DC 8D8C9AA0 */  lw          $t4, %lo(D_800E9AA0)($t4)
/* 0022E0 801DD4E0 548C0006 */  bnel        $a0, $t4, .L801DD4FC
/* 0022E4 801DD4E4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0022E8 801DD4E8 0C077331 */  jal         func_801DCCC4_ovl12
/* 0022EC 801DD4EC 00000000 */   nop
/* 0022F0 801DD4F0 0C07735C */  jal         func_801DCD70_ovl12
/* 0022F4 801DD4F4 00000000 */   nop
/* 0022F8 801DD4F8 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DD4FC:
/* 0022FC 801DD4FC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 002300 801DD500 03E00008 */  jr          $ra
/* 002304 801DD504 00000000 */   nop
.type func_801DD400_ovl12, @function
.size func_801DD400_ovl12, . - func_801DD400_ovl12
