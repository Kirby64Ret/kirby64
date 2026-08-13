nonmatching func_801DD400_ovl12, 0x108

glabel func_801DD400_ovl12
    /* 1ED740 801DD400 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 1ED744 801DD404 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1ED748 801DD408 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1ED74C 801DD40C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1ED750 801DD410 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1ED754 801DD414 8C620000 */  lw         $v0, 0x0($v1)
    /* 1ED758 801DD418 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 1ED75C 801DD41C 3C09800E */  lui        $t1, %hi(gEntityFuncListIDArray)
    /* 1ED760 801DD420 3C0E800F */  lui        $t6, %hi(D_800E9560)
    /* 1ED764 801DD424 00021080 */  sll        $v0, $v0, 2
    /* 1ED768 801DD428 2529DC50 */  addiu      $t1, $t1, %lo(gEntityFuncListIDArray)
    /* 1ED76C 801DD42C 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
    /* 1ED770 801DD430 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
    /* 1ED774 801DD434 8CB90008 */  lw         $t9, 0x8($a1)
    /* 1ED778 801DD438 004E3021 */  addu       $a2, $v0, $t6
    /* 1ED77C 801DD43C 01227821 */  addu       $t7, $t1, $v0
    /* 1ED780 801DD440 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1ED784 801DD444 8CC70000 */  lw         $a3, 0x0($a2)
    /* 1ED788 801DD448 24040001 */  addiu      $a0, $zero, 0x1
    /* 1ED78C 801DD44C 10990003 */  beq        $a0, $t9, .L801DD45C_ovl12
    /* 1ED790 801DD450 00F84021 */   addu      $t0, $a3, $t8
    /* 1ED794 801DD454 8CA20010 */  lw         $v0, 0x10($a1)
    /* 1ED798 801DD458 14400010 */  bnez       $v0, .L801DD49C_ovl12
  .L801DD45C_ovl12:
    /* 1ED79C 801DD45C 24EA0001 */   addiu     $t2, $a3, 0x1
    /* 1ED7A0 801DD460 ACCA0000 */  sw         $t2, 0x0($a2)
    /* 1ED7A4 801DD464 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 1ED7A8 801DD468 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1ED7AC 801DD46C 3C05801E */  lui        $a1, %hi(func_801DCFE4_ovl12)
    /* 1ED7B0 801DD470 000B6080 */  sll        $t4, $t3, 2
    /* 1ED7B4 801DD474 012C6821 */  addu       $t5, $t1, $t4
    /* 1ED7B8 801DD478 ADA80000 */  sw         $t0, 0x0($t5)
    /* 1ED7BC 801DD47C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 1ED7C0 801DD480 24A5CFE4 */  addiu      $a1, $a1, %lo(func_801DCFE4_ovl12)
    /* 1ED7C4 801DD484 000E7880 */  sll        $t7, $t6, 2
    /* 1ED7C8 801DD488 008F2021 */  addu       $a0, $a0, $t7
    /* 1ED7CC 801DD48C 0C02C7B2 */  jal        assign_new_process_entry
    /* 1ED7D0 801DD490 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1ED7D4 801DD494 10000019 */  b          .L801DD4FC_ovl12
    /* 1ED7D8 801DD498 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DD49C_ovl12:
    /* 1ED7DC 801DD49C 54400007 */  bnel       $v0, $zero, .L801DD4BC_ovl12
    /* 1ED7E0 801DD4A0 8CB8000C */   lw        $t8, 0xC($a1)
    /* 1ED7E4 801DD4A4 0C07737F */  jal        func_801DCDFC_ovl12
    /* 1ED7E8 801DD4A8 00000000 */   nop
    /* 1ED7EC 801DD4AC 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 1ED7F0 801DD4B0 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
    /* 1ED7F4 801DD4B4 24040001 */  addiu      $a0, $zero, 0x1
    /* 1ED7F8 801DD4B8 8CB8000C */  lw         $t8, 0xC($a1)
  .L801DD4BC_ovl12:
    /* 1ED7FC 801DD4BC 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 1ED800 801DD4C0 5498000E */  bnel       $a0, $t8, .L801DD4FC_ovl12
    /* 1ED804 801DD4C4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1ED808 801DD4C8 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 1ED80C 801DD4CC 3C0C800F */  lui        $t4, %hi(D_800E9AA0)
    /* 1ED810 801DD4D0 8F2A0000 */  lw         $t2, 0x0($t9)
    /* 1ED814 801DD4D4 000A5880 */  sll        $t3, $t2, 2
    /* 1ED818 801DD4D8 018B6021 */  addu       $t4, $t4, $t3
    /* 1ED81C 801DD4DC 8D8C9AA0 */  lw         $t4, %lo(D_800E9AA0)($t4)
    /* 1ED820 801DD4E0 548C0006 */  bnel       $a0, $t4, .L801DD4FC_ovl12
    /* 1ED824 801DD4E4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1ED828 801DD4E8 0C077331 */  jal        func_801DCCC4_ovl12
    /* 1ED82C 801DD4EC 00000000 */   nop
    /* 1ED830 801DD4F0 0C07735C */  jal        func_801DCD70_ovl12
    /* 1ED834 801DD4F4 00000000 */   nop
    /* 1ED838 801DD4F8 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DD4FC_ovl12:
    /* 1ED83C 801DD4FC 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1ED840 801DD500 03E00008 */  jr         $ra
    /* 1ED844 801DD504 00000000 */   nop
endlabel func_801DD400_ovl12
.size func_801DD400_ovl12, . - func_801DD400_ovl12
