nonmatching func_80161078_ovl5, 0x130

glabel func_80161078_ovl5
    /* 1084E8 80161078 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1084EC 8016107C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1084F0 80161080 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* 1084F4 80161084 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1084F8 80161088 AFA40040 */  sw         $a0, 0x40($sp)
    /* 1084FC 8016108C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 108500 80161090 3C02800F */  lui        $v0, %hi(D_800E98E0)
    /* 108504 80161094 3C088019 */  lui        $t0, %hi(D_8018E040_ovl5)
    /* 108508 80161098 000FC080 */  sll        $t8, $t7, 2
    /* 10850C 8016109C 00581021 */  addu       $v0, $v0, $t8
    /* 108510 801610A0 8C4298E0 */  lw         $v0, %lo(D_800E98E0)($v0)
    /* 108514 801610A4 2508E040 */  addiu      $t0, $t0, %lo(D_8018E040_ovl5)
    /* 108518 801610A8 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* 10851C 801610AC 0002C880 */  sll        $t9, $v0, 2
    /* 108520 801610B0 03281821 */  addu       $v1, $t9, $t0
    /* 108524 801610B4 8C660000 */  lw         $a2, 0x0($v1)
    /* 108528 801610B8 3C0B8018 */  lui        $t3, %hi(D_801868FC_ovl5)
    /* 10852C 801610BC 8D6B68FC */  lw         $t3, %lo(D_801868FC_ovl5)($t3)
    /* 108530 801610C0 00064880 */  sll        $t1, $a2, 2
    /* 108534 801610C4 01495021 */  addu       $t2, $t2, $t1
    /* 108538 801610C8 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* 10853C 801610CC 000B6080 */  sll        $t4, $t3, 2
    /* 108540 801610D0 27A40030 */  addiu      $a0, $sp, 0x30
    /* 108544 801610D4 014C6821 */  addu       $t5, $t2, $t4
    /* 108548 801610D8 8DA50000 */  lw         $a1, 0x0($t5)
    /* 10854C 801610DC AFA3001C */  sw         $v1, 0x1C($sp)
    /* 108550 801610E0 0C02C8D0 */  jal        func_800B2340
    /* 108554 801610E4 AFA50020 */   sw        $a1, 0x20($sp)
    /* 108558 801610E8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 10855C 801610EC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 108560 801610F0 C7A40030 */  lwc1       $f4, 0x30($sp)
    /* 108564 801610F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 108568 801610F8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 10856C 801610FC C7A60034 */  lwc1       $f6, 0x34($sp)
    /* 108570 80161100 C7A80038 */  lwc1       $f8, 0x38($sp)
    /* 108574 80161104 000E7880 */  sll        $t7, $t6, 2
    /* 108578 80161108 002F0821 */  addu       $at, $at, $t7
    /* 10857C 8016110C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* 108580 80161110 8C580000 */  lw         $t8, 0x0($v0)
    /* 108584 80161114 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 108588 80161118 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 10858C 8016111C 0018C880 */  sll        $t9, $t8, 2
    /* 108590 80161120 00390821 */  addu       $at, $at, $t9
    /* 108594 80161124 E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 108598 80161128 8C480000 */  lw         $t0, 0x0($v0)
    /* 10859C 8016112C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1085A0 80161130 8FA50020 */  lw         $a1, 0x20($sp)
    /* 1085A4 80161134 00084880 */  sll        $t1, $t0, 2
    /* 1085A8 80161138 00290821 */  addu       $at, $at, $t1
    /* 1085AC 8016113C E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* 1085B0 80161140 27A40024 */  addiu      $a0, $sp, 0x24
    /* 1085B4 80161144 0C02C9B6 */  jal        func_800B26D8
    /* 1085B8 80161148 8C660000 */   lw        $a2, 0x0($v1)
    /* 1085BC 8016114C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1085C0 80161150 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1085C4 80161154 C7AA0024 */  lwc1       $f10, 0x24($sp)
    /* 1085C8 80161158 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* 1085CC 8016115C 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 1085D0 80161160 C7B00028 */  lwc1       $f16, 0x28($sp)
    /* 1085D4 80161164 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1085D8 80161168 000B5080 */  sll        $t2, $t3, 2
    /* 1085DC 8016116C 002A0821 */  addu       $at, $at, $t2
    /* 1085E0 80161170 E42A4010 */  swc1       $f10, %lo(gEntitiesAngleXArray)($at)
    /* 1085E4 80161174 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1085E8 80161178 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* 1085EC 8016117C C7B2002C */  lwc1       $f18, 0x2C($sp)
    /* 1085F0 80161180 000C6880 */  sll        $t5, $t4, 2
    /* 1085F4 80161184 002D0821 */  addu       $at, $at, $t5
    /* 1085F8 80161188 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* 1085FC 8016118C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 108600 80161190 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* 108604 80161194 27BD0040 */  addiu      $sp, $sp, 0x40
    /* 108608 80161198 000E7880 */  sll        $t7, $t6, 2
    /* 10860C 8016119C 002F0821 */  addu       $at, $at, $t7
    /* 108610 801611A0 03E00008 */  jr         $ra
    /* 108614 801611A4 E4324390 */   swc1      $f18, %lo(gEntitiesAngleZArray)($at)
endlabel func_80161078_ovl5
.size func_80161078_ovl5, . - func_80161078_ovl5
