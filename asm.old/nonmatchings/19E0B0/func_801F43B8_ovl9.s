glabel func_801F43B8_ovl9
/* 1A2408 801F43B8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A240C 801F43BC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A2410 801F43C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A2414 801F43C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A2418 801F43C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 1A241C 801F43CC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1A2420 801F43D0 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 1A2424 801F43D4 240E0001 */  addiu      $t6, $zero, 0x1
/* 1A2428 801F43D8 000FC080 */  sll        $t8, $t7, 2
/* 1A242C 801F43DC 00380821 */  addu       $at, $at, $t8
/* 1A2430 801F43E0 AC2E9FE0 */  sw         $t6, %lo(D_800E9FE0)($at)
/* 1A2434 801F43E4 8C590000 */  lw         $t9, 0x0($v0)
/* 1A2438 801F43E8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1A243C 801F43EC 3C040001 */  lui        $a0, (0x10011 >> 16)
/* 1A2440 801F43F0 00194080 */  sll        $t0, $t9, 2
/* 1A2444 801F43F4 00280821 */  addu       $at, $at, $t0
/* 1A2448 801F43F8 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1A244C 801F43FC 8C490000 */  lw         $t1, 0x0($v0)
/* 1A2450 801F4400 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1A2454 801F4404 34840011 */  ori        $a0, $a0, (0x10011 & 0xFFFF)
/* 1A2458 801F4408 00095080 */  sll        $t2, $t1, 2
/* 1A245C 801F440C 002A0821 */  addu       $at, $at, $t2
/* 1A2460 801F4410 0C02A7A9 */  jal        func_800A9EA4
/* 1A2464 801F4414 AC20DFD0 */   sw        $zero, %lo(D_800DDFD0)($at)
/* 1A2468 801F4418 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A246C 801F441C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A2470 801F4420 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1A2474 801F4424 44810000 */  mtc1       $at, $f0
/* 1A2478 801F4428 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1A247C 801F442C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1A2480 801F4430 000B6080 */  sll        $t4, $t3, 2
/* 1A2484 801F4434 002C0821 */  addu       $at, $at, $t4
/* 1A2488 801F4438 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1A248C 801F443C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1A2490 801F4440 3C01BE00 */  lui        $at, (0xBE000000 >> 16)
/* 1A2494 801F4444 44812000 */  mtc1       $at, $f4
/* 1A2498 801F4448 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1A249C 801F444C 000D7880 */  sll        $t7, $t5, 2
/* 1A24A0 801F4450 002F0821 */  addu       $at, $at, $t7
/* 1A24A4 801F4454 E4243750 */  swc1       $f4, %lo(D_800E3750)($at)
/* 1A24A8 801F4458 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1A24AC 801F445C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1A24B0 801F4460 000EC080 */  sll        $t8, $t6, 2
/* 1A24B4 801F4464 00380821 */  addu       $at, $at, $t8
/* 1A24B8 801F4468 0C02BE85 */  jal        func_800AFA14
/* 1A24BC 801F446C E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
/* 1A24C0 801F4470 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A24C4 801F4474 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A24C8 801F4478 03E00008 */  jr         $ra
/* 1A24CC 801F447C 00000000 */   nop
