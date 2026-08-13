nonmatching func_801DD7C8_ovl15, 0x188

glabel func_801DD7C8_ovl15
    /* 208328 801DD7C8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 20832C 801DD7CC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 208330 801DD7D0 AFA40028 */  sw         $a0, 0x28($sp)
    /* 208334 801DD7D4 AFB20020 */  sw         $s2, 0x20($sp)
    /* 208338 801DD7D8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 20833C 801DD7DC AFB00018 */  sw         $s0, 0x18($sp)
    /* 208340 801DD7E0 0C006291 */  jal        random_soft_s32_range
    /* 208344 801DD7E4 24040009 */   addiu     $a0, $zero, 0x9
    /* 208348 801DD7E8 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 20834C 801DD7EC 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 208350 801DD7F0 8E050000 */  lw         $a1, 0x0($s0)
    /* 208354 801DD7F4 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* 208358 801DD7F8 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
    /* 20835C 801DD7FC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 208360 801DD800 3C11801E */  lui        $s1, %hi(D_801E6520_ovl15)
    /* 208364 801DD804 26316520 */  addiu      $s1, $s1, %lo(D_801E6520_ovl15)
    /* 208368 801DD808 000E7880 */  sll        $t7, $t6, 2
    /* 20836C 801DD80C 024F2021 */  addu       $a0, $s2, $t7
    /* 208370 801DD810 8C880000 */  lw         $t0, 0x0($a0)
    /* 208374 801DD814 0002C080 */  sll        $t8, $v0, 2
    /* 208378 801DD818 0238C821 */  addu       $t9, $s1, $t8
    /* 20837C 801DD81C 00084880 */  sll        $t1, $t0, 2
    /* 208380 801DD820 02295021 */  addu       $t2, $s1, $t1
    /* 208384 801DD824 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 208388 801DD828 8F230000 */  lw         $v1, 0x0($t9)
    /* 20838C 801DD82C 00403025 */  or         $a2, $v0, $zero
    /* 208390 801DD830 55630012 */  bnel       $t3, $v1, .L801DD87C_ovl15
    /* 208394 801DD834 24010003 */   addiu     $at, $zero, 0x3
  .L801DD838_ovl15:
    /* 208398 801DD838 0C006291 */  jal        random_soft_s32_range
    /* 20839C 801DD83C 24040009 */   addiu     $a0, $zero, 0x9
    /* 2083A0 801DD840 8E050000 */  lw         $a1, 0x0($s0)
    /* 2083A4 801DD844 00027080 */  sll        $t6, $v0, 2
    /* 2083A8 801DD848 022E7821 */  addu       $t7, $s1, $t6
    /* 2083AC 801DD84C 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 2083B0 801DD850 8DE30000 */  lw         $v1, 0x0($t7)
    /* 2083B4 801DD854 00403025 */  or         $a2, $v0, $zero
    /* 2083B8 801DD858 000C6880 */  sll        $t5, $t4, 2
    /* 2083BC 801DD85C 024D2021 */  addu       $a0, $s2, $t5
    /* 2083C0 801DD860 8C980000 */  lw         $t8, 0x0($a0)
    /* 2083C4 801DD864 0018C880 */  sll        $t9, $t8, 2
    /* 2083C8 801DD868 02394021 */  addu       $t0, $s1, $t9
    /* 2083CC 801DD86C 8D090000 */  lw         $t1, 0x0($t0)
    /* 2083D0 801DD870 1123FFF1 */  beq        $t1, $v1, .L801DD838_ovl15
    /* 2083D4 801DD874 00000000 */   nop
    /* 2083D8 801DD878 24010003 */  addiu      $at, $zero, 0x3
  .L801DD87C_ovl15:
    /* 2083DC 801DD87C 10610009 */  beq        $v1, $at, .L801DD8A4_ovl15
    /* 2083E0 801DD880 24010004 */   addiu     $at, $zero, 0x4
    /* 2083E4 801DD884 10610007 */  beq        $v1, $at, .L801DD8A4_ovl15
    /* 2083E8 801DD888 24010005 */   addiu     $at, $zero, 0x5
    /* 2083EC 801DD88C 1061000C */  beq        $v1, $at, .L801DD8C0_ovl15
    /* 2083F0 801DD890 24010006 */   addiu     $at, $zero, 0x6
    /* 2083F4 801DD894 1061000A */  beq        $v1, $at, .L801DD8C0_ovl15
    /* 2083F8 801DD898 00000000 */   nop
    /* 2083FC 801DD89C 1000001C */  b          .L801DD910_ovl15
    /* 208400 801DD8A0 AC860000 */   sw        $a2, 0x0($a0)
  .L801DD8A4_ovl15:
    /* 208404 801DD8A4 3C10800D */  lui        $s0, %hi(D_800D7098)
    /* 208408 801DD8A8 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
    /* 20840C 801DD8AC AE000004 */  sw         $zero, 0x4($s0)
    /* 208410 801DD8B0 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 208414 801DD8B4 000A5880 */  sll        $t3, $t2, 2
    /* 208418 801DD8B8 10000014 */  b          .L801DD90C_ovl15
    /* 20841C 801DD8BC 024B2021 */   addu      $a0, $s2, $t3
  .L801DD8C0_ovl15:
    /* 208420 801DD8C0 3C10800D */  lui        $s0, %hi(D_800D7098)
    /* 208424 801DD8C4 26107098 */  addiu      $s0, $s0, %lo(D_800D7098)
    /* 208428 801DD8C8 8E0C0004 */  lw         $t4, 0x4($s0)
    /* 20842C 801DD8CC 258D0001 */  addiu      $t5, $t4, 0x1
    /* 208430 801DD8D0 29A10005 */  slti       $at, $t5, 0x5
    /* 208434 801DD8D4 1420000A */  bnez       $at, .L801DD900_ovl15
    /* 208438 801DD8D8 AE0D0004 */   sw        $t5, 0x4($s0)
    /* 20843C 801DD8DC 0C006291 */  jal        random_soft_s32_range
    /* 208440 801DD8E0 24040002 */   addiu     $a0, $zero, 0x2
    /* 208444 801DD8E4 10400003 */  beqz       $v0, .L801DD8F4_ovl15
    /* 208448 801DD8E8 3C058005 */   lui       $a1, %hi(omCurrentObj)
    /* 20844C 801DD8EC 10000002 */  b          .L801DD8F8_ovl15
    /* 208450 801DD8F0 00003025 */   or        $a2, $zero, $zero
  .L801DD8F4_ovl15:
    /* 208454 801DD8F4 24060002 */  addiu      $a2, $zero, 0x2
  .L801DD8F8_ovl15:
    /* 208458 801DD8F8 AE000004 */  sw         $zero, 0x4($s0)
    /* 20845C 801DD8FC 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
  .L801DD900_ovl15:
    /* 208460 801DD900 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 208464 801DD904 000FC080 */  sll        $t8, $t7, 2
    /* 208468 801DD908 02582021 */  addu       $a0, $s2, $t8
  .L801DD90C_ovl15:
    /* 20846C 801DD90C AC860000 */  sw         $a2, 0x0($a0)
  .L801DD910_ovl15:
    /* 208470 801DD910 8CA20000 */  lw         $v0, 0x0($a1)
    /* 208474 801DD914 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 208478 801DD918 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 20847C 801DD91C 00021080 */  sll        $v0, $v0, 2
    /* 208480 801DD920 0242C821 */  addu       $t9, $s2, $v0
    /* 208484 801DD924 8F280000 */  lw         $t0, 0x0($t9)
    /* 208488 801DD928 00220821 */  addu       $at, $at, $v0
    /* 20848C 801DD92C 8FB20020 */  lw         $s2, 0x20($sp)
    /* 208490 801DD930 00084880 */  sll        $t1, $t0, 2
    /* 208494 801DD934 02295021 */  addu       $t2, $s1, $t1
    /* 208498 801DD938 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 20849C 801DD93C 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 2084A0 801DD940 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2084A4 801DD944 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 2084A8 801DD948 03E00008 */  jr         $ra
    /* 2084AC 801DD94C AC2BDC50 */   sw        $t3, %lo(gEntityFuncListIDArray)($at)
endlabel func_801DD7C8_ovl15
.size func_801DD7C8_ovl15, . - func_801DD7C8_ovl15
