glabel func_80157738_ovl3
/* B8178 80157738 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B817C 8015773C AFA40020 */  sw         $a0, 0x20($sp)
/* B8180 80157740 3C048013 */  lui        $a0, %hi(D_8012E7C5 + 0x6)
/* B8184 80157744 9084E7CB */  lbu        $a0, %lo(D_8012E7C5 + 0x6)($a0)
/* B8188 80157748 24010001 */  addiu      $at, $zero, 0x1
/* B818C 8015774C AFBF0014 */  sw         $ra, 0x14($sp)
/* B8190 80157750 1081000A */  beq        $a0, $at, .L8015777C_ovl3
/* B8194 80157754 00003825 */   or        $a3, $zero, $zero
/* B8198 80157758 24010002 */  addiu      $at, $zero, 0x2
/* B819C 8015775C 1081005E */  beq        $a0, $at, .L801578D8_ovl3
/* B81A0 80157760 24010005 */   addiu     $at, $zero, 0x5
/* B81A4 80157764 108100DF */  beq        $a0, $at, .L80157AE4_ovl3
/* B81A8 80157768 24010006 */   addiu     $at, $zero, 0x6
/* B81AC 8015776C 108100ED */  beq        $a0, $at, .L80157B24_ovl3
/* B81B0 80157770 3C088005 */   lui       $t0, %hi(D_8004A7C4)
/* B81B4 80157774 100000FC */  b          .L80157B68_ovl3
/* B81B8 80157778 2508A7C4 */   addiu     $t0, $t0, %lo(D_8004A7C4)
.L8015777C_ovl3:
/* B81BC 8015777C 0C054E61 */  jal        func_80153984_ovl3
/* B81C0 80157780 00000000 */   nop
/* B81C4 80157784 3C038013 */  lui        $v1, %hi(D_8012E7E8 + 0x4)
/* B81C8 80157788 8C63E7EC */  lw         $v1, %lo(D_8012E7E8 + 0x4)($v1)
/* B81CC 8015778C 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x4)
/* B81D0 80157790 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B81D4 80157794 2C640001 */  sltiu      $a0, $v1, 0x1
/* B81D8 80157798 246EFFFF */  addiu      $t6, $v1, -0x1
/* B81DC 8015779C 10800016 */  beqz       $a0, .L801577F8_ovl3
/* B81E0 801577A0 AC2EE7EC */   sw        $t6, %lo(D_8012E7E8 + 0x4)($at)
/* B81E4 801577A4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B81E8 801577A8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* B81EC 801577AC 8D0F0000 */  lw         $t7, 0x0($t0)
/* B81F0 801577B0 3C09800F */  lui        $t1, %hi(D_800E8AE0)
/* B81F4 801577B4 2405001B */  addiu      $a1, $zero, 0x1B
/* B81F8 801577B8 8DF80000 */  lw         $t8, 0x0($t7)
/* B81FC 801577BC 24040006 */  addiu      $a0, $zero, 0x6
/* B8200 801577C0 0018C880 */  sll        $t9, $t8, 2
/* B8204 801577C4 01394821 */  addu       $t1, $t1, $t9
/* B8208 801577C8 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
/* B820C 801577CC 312A0006 */  andi       $t2, $t1, 0x6
.L801577D0_ovl4:
/* B8210 801577D0 11400005 */  beqz       $t2, .L801577E8_ovl3
/* B8214 801577D4 00000000 */   nop
/* B8218 801577D8 0C048BDB */  jal        set_kirby_action_1
/* B821C 801577DC 24040017 */   addiu     $a0, $zero, 0x17
/* B8220 801577E0 1000010C */  b          .L80157C14_ovl3
/* B8224 801577E4 24070001 */   addiu     $a3, $zero, 0x1
.L801577E8_ovl3:
/* B8228 801577E8 0C048BDB */  jal        set_kirby_action_1
/* B822C 801577EC 24050006 */   addiu     $a1, $zero, 0x6
/* B8230 801577F0 10000108 */  b          .L80157C14_ovl3
/* B8234 801577F4 24070001 */   addiu     $a3, $zero, 0x1
.L801577F8_ovl3:
/* B8238 801577F8 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
.L801577FC_ovl4:
/* B823C 801577FC 8D0B0000 */  lw         $t3, 0x0($t0)
/* B8240 80157800 3C0C800F */  lui        $t4, %hi(D_800E8920)
.L80157804_ovl4:
/* B8244 80157804 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* B8248 80157808 8D630000 */  lw         $v1, 0x0($t3)
/* B824C 8015780C 24040006 */  addiu      $a0, $zero, 0x6
/* B8250 80157810 00031880 */  sll        $v1, $v1, 2
/* B8254 80157814 01836021 */  addu       $t4, $t4, $v1
/* B8258 80157818 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* B825C 8015781C 01A36821 */  addu       $t5, $t5, $v1
/* B8260 80157820 11800029 */  beqz       $t4, .L801578C8_ovl3
/* B8264 80157824 00000000 */   nop
/* B8268 80157828 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* B826C 8015782C 00002025 */  or         $a0, $zero, $zero
/* B8270 80157830 31AE0006 */  andi       $t6, $t5, 0x6
/* B8274 80157834 11C00005 */  beqz       $t6, .L8015784C_ovl3
/* B8278 80157838 00000000 */   nop
/* B827C 8015783C 0C048BDB */  jal        set_kirby_action_1
glabel func_80157840_ovl4
/* B8280 80157840 24050001 */   addiu     $a1, $zero, 0x1
/* B8284 80157844 100000F3 */  b          .L80157C14_ovl3
/* B8288 80157848 24070001 */   addiu     $a3, $zero, 0x1
.L8015784C_ovl3:
/* B828C 8015784C 0C029D9E */  jal        play_sound
/* B8290 80157850 24040149 */   addiu     $a0, $zero, 0x149
/* B8294 80157854 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B8298 80157858 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* B829C 8015785C 8D060000 */  lw         $a2, 0x0($t0)
/* B82A0 80157860 44800000 */  mtc1       $zero, $f0
/* B82A4 80157864 3C02800E */  lui        $v0, %hi(D_800E3750)
/* B82A8 80157868 8CCF0000 */  lw         $t7, 0x0($a2)
/* B82AC 8015786C 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* B82B0 80157870 3C018019 */  lui        $at, %hi(D_80196F48_ovl3)
/* B82B4 80157874 000FC080 */  sll        $t8, $t7, 2
/* B82B8 80157878 C4226F48 */  lwc1       $f2, %lo(D_80196F48_ovl3)($at)
/* B82BC 8015787C 0058C821 */  addu       $t9, $v0, $t8
/* B82C0 80157880 E7200000 */  swc1       $f0, 0x0($t9)
/* B82C4 80157884 8CC30000 */  lw         $v1, 0x0($a2)
/* B82C8 80157888 3C01800E */  lui        $at, %hi(D_800E3210)
/* B82CC 8015788C 24040007 */  addiu      $a0, $zero, 0x7
/* B82D0 80157890 00031880 */  sll        $v1, $v1, 2
/* B82D4 80157894 00434821 */  addu       $t1, $v0, $v1
/* B82D8 80157898 C5240000 */  lwc1       $f4, 0x0($t1)
/* B82DC 8015789C 00230821 */  addu       $at, $at, $v1
/* B82E0 801578A0 24050007 */  addiu      $a1, $zero, 0x7
/* B82E4 801578A4 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* B82E8 801578A8 8CCA0000 */  lw         $t2, 0x0($a2)
/* B82EC 801578AC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* B82F0 801578B0 000A5880 */  sll        $t3, $t2, 2
/* B82F4 801578B4 002B0821 */  addu       $at, $at, $t3
/* B82F8 801578B8 0C048BDB */  jal        set_kirby_action_1
/* B82FC 801578BC E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* B8300 801578C0 100000D4 */  b          .L80157C14_ovl3
/* B8304 801578C4 24070001 */   addiu     $a3, $zero, 0x1
.L801578C8_ovl3:
/* B8308 801578C8 0C048BDB */  jal        set_kirby_action_1
/* B830C 801578CC 24050006 */   addiu     $a1, $zero, 0x6
/* B8310 801578D0 100000D0 */  b          .L80157C14_ovl3
/* B8314 801578D4 24070001 */   addiu     $a3, $zero, 0x1
.L801578D8_ovl3:
/* B8318 801578D8 0C054E61 */  jal        func_80153984_ovl3
/* B831C 801578DC AFA7001C */   sw        $a3, 0x1C($sp)
/* B8320 801578E0 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B8324 801578E4 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* B8328 801578E8 8D060000 */  lw         $a2, 0x0($t0)
/* B832C 801578EC 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* B8330 801578F0 8FA7001C */  lw         $a3, 0x1C($sp)
/* B8334 801578F4 8CCC0000 */  lw         $t4, 0x0($a2)
/* B8338 801578F8 3C038013 */  lui        $v1, %hi(D_8012E7E8 + 0x4)
/* B833C 801578FC 000C6880 */  sll        $t5, $t4, 2
/* B8340 80157900 01CD7021 */  addu       $t6, $t6, $t5
/* B8344 80157904 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* B8348 80157908 31CF0006 */  andi       $t7, $t6, 0x6
/* B834C 8015790C 11E0002A */  beqz       $t7, .L801579B8_ovl3
/* B8350 80157910 00000000 */   nop
/* B8354 80157914 8C63E7EC */  lw         $v1, %lo(D_8012E7E8 + 0x4)($v1)
/* B8358 80157918 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x4)
/* B835C 8015791C 3C198013 */  lui        $t9, %hi(D_8012E894 + 0x10)
/* B8360 80157920 2C640001 */  sltiu      $a0, $v1, 0x1
/* B8364 80157924 2478FFFF */  addiu      $t8, $v1, -0x1
/* B8368 80157928 10800007 */  beqz       $a0, .L80157948_ovl3
.L8015792C_ovl4:
/* B836C 8015792C AC38E7EC */   sw        $t8, %lo(D_8012E7E8 + 0x4)($at)
/* B8370 80157930 24040017 */  addiu      $a0, $zero, 0x17
/* B8374 80157934 2405001B */  addiu      $a1, $zero, 0x1B
/* B8378 80157938 0C048BDB */  jal        set_kirby_action_1
/* B837C 8015793C AFA7001C */   sw        $a3, 0x1C($sp)
/* B8380 80157940 100000B4 */  b          .L80157C14_ovl3
/* B8384 80157944 8FA7001C */   lw        $a3, 0x1C($sp)
.L80157948_ovl3:
/* B8388 80157948 8F39E8A4 */  lw         $t9, %lo(D_8012E894 + 0x10)($t9)
/* B838C 8015794C 3C02800E */  lui        $v0, %hi(D_800E3750)
/* B8390 80157950 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* B8394 80157954 132000AF */  beqz       $t9, .L80157C14_ovl3
/* B8398 80157958 3C018019 */   lui       $at, %hi(D_80196F4C_ovl3)
/* B839C 8015795C 8CC90000 */  lw         $t1, 0x0($a2)
/* B83A0 80157960 44800000 */  mtc1       $zero, $f0
/* B83A4 80157964 C4226F4C */  lwc1       $f2, %lo(D_80196F4C_ovl3)($at)
/* B83A8 80157968 00095080 */  sll        $t2, $t1, 2
/* B83AC 8015796C 004A5821 */  addu       $t3, $v0, $t2
.L80157970_ovl4:
/* B83B0 80157970 E5600000 */  swc1       $f0, 0x0($t3)
/* B83B4 80157974 8CC30000 */  lw         $v1, 0x0($a2)
/* B83B8 80157978 3C01800E */  lui        $at, %hi(D_800E3210)
/* B83BC 8015797C 24040017 */  addiu      $a0, $zero, 0x17
/* B83C0 80157980 00031880 */  sll        $v1, $v1, 2
/* B83C4 80157984 00436021 */  addu       $t4, $v0, $v1
/* B83C8 80157988 C5860000 */  lwc1       $f6, 0x0($t4)
/* B83CC 8015798C 00230821 */  addu       $at, $at, $v1
/* B83D0 80157990 2405001B */  addiu      $a1, $zero, 0x1B
/* B83D4 80157994 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
.L80157998_ovl4:
/* B83D8 80157998 8CCD0000 */  lw         $t5, 0x0($a2)
/* B83DC 8015799C 3C01800E */  lui        $at, %hi(D_800E3C90)
/* B83E0 801579A0 000D7080 */  sll        $t6, $t5, 2
/* B83E4 801579A4 002E0821 */  addu       $at, $at, $t6
/* B83E8 801579A8 0C048BDB */  jal        set_kirby_action_1
/* B83EC 801579AC E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* B83F0 801579B0 10000098 */  b          .L80157C14_ovl3
/* B83F4 801579B4 24070001 */   addiu     $a3, $zero, 0x1
.L801579B8_ovl3:
/* B83F8 801579B8 3C0F8013 */  lui        $t7, %hi(D_8012E894 + 0x10)
/* B83FC 801579BC 8DEFE8A4 */  lw         $t7, %lo(D_8012E894 + 0x10)($t7)
/* B8400 801579C0 3C0D8013 */  lui        $t5, %hi(D_8012E7E8 + 0x8)
/* B8404 801579C4 11E0003F */  beqz       $t7, .L80157AC4_ovl3
/* B8408 801579C8 00000000 */   nop
/* B840C 801579CC 0C048918 */  jal        func_80122460
/* B8410 801579D0 00000000 */   nop
/* B8414 801579D4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B8418 801579D8 1040002E */  beqz       $v0, .L80157A94_ovl3
/* B841C 801579DC 2508A7C4 */   addiu     $t0, $t0, %lo(D_8004A7C4)
/* B8420 801579E0 8D060000 */  lw         $a2, 0x0($t0)
/* B8424 801579E4 44800000 */  mtc1       $zero, $f0
/* B8428 801579E8 3C07800E */  lui        $a3, %hi(D_800E6690)
/* B842C 801579EC 8CD80000 */  lw         $t8, 0x0($a2)
/* B8430 801579F0 24E76690 */  addiu      $a3, $a3, %lo(D_800E6690)
/* B8434 801579F4 3C018019 */  lui        $at, %hi(D_80196F50_ovl3)
/* B8438 801579F8 0018C880 */  sll        $t9, $t8, 2
/* B843C 801579FC C4226F50 */  lwc1       $f2, %lo(D_80196F50_ovl3)($at)
/* B8440 80157A00 00F94821 */  addu       $t1, $a3, $t9
.L80157A04_ovl4:
/* B8444 80157A04 E5200000 */  swc1       $f0, 0x0($t1)
/* B8448 80157A08 8CC30000 */  lw         $v1, 0x0($a2)
/* B844C 80157A0C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* B8450 80157A10 3C02800E */  lui        $v0, %hi(D_800E3750)
/* B8454 80157A14 00031880 */  sll        $v1, $v1, 2
/* B8458 80157A18 00E35021 */  addu       $t2, $a3, $v1
/* B845C 80157A1C C5480000 */  lwc1       $f8, 0x0($t2)
/* B8460 80157A20 00230821 */  addu       $at, $at, $v1
/* B8464 80157A24 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
/* B8468 80157A28 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* B846C 80157A2C 8CCB0000 */  lw         $t3, 0x0($a2)
/* B8470 80157A30 3C01800E */  lui        $at, %hi(D_800E6850)
/* B8474 80157A34 2404000A */  addiu      $a0, $zero, 0xA
/* B8478 80157A38 000B6080 */  sll        $t4, $t3, 2
/* B847C 80157A3C 002C0821 */  addu       $at, $at, $t4
/* B8480 80157A40 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
/* B8484 80157A44 8CCD0000 */  lw         $t5, 0x0($a2)
/* B8488 80157A48 3C01800E */  lui        $at, %hi(D_800E3210)
/* B848C 80157A4C 2405000D */  addiu      $a1, $zero, 0xD
/* B8490 80157A50 000D7080 */  sll        $t6, $t5, 2
/* B8494 80157A54 004E7821 */  addu       $t7, $v0, $t6
/* B8498 80157A58 E5E00000 */  swc1       $f0, 0x0($t7)
/* B849C 80157A5C 8CC30000 */  lw         $v1, 0x0($a2)
/* B84A0 80157A60 00031880 */  sll        $v1, $v1, 2
/* B84A4 80157A64 0043C021 */  addu       $t8, $v0, $v1
/* B84A8 80157A68 C70A0000 */  lwc1       $f10, 0x0($t8)
/* B84AC 80157A6C 00230821 */  addu       $at, $at, $v1
/* B84B0 80157A70 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* B84B4 80157A74 8CD90000 */  lw         $t9, 0x0($a2)
.L80157A78_ovl4:
/* B84B8 80157A78 3C01800E */  lui        $at, %hi(D_800E3C90)
/* B84BC 80157A7C 00194880 */  sll        $t1, $t9, 2
/* B84C0 80157A80 00290821 */  addu       $at, $at, $t1
/* B84C4 80157A84 0C048BDB */  jal        set_kirby_action_1
/* B84C8 80157A88 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
/* B84CC 80157A8C 10000061 */  b          .L80157C14_ovl3
/* B84D0 80157A90 24070001 */   addiu     $a3, $zero, 0x1
.L80157A94_ovl3:
/* B84D4 80157A94 8D0A0000 */  lw         $t2, 0x0($t0)
/* B84D8 80157A98 44800000 */  mtc1       $zero, $f0
/* B84DC 80157A9C 3C01800E */  lui        $at, %hi(D_800E3210)
/* B84E0 80157AA0 8D4B0000 */  lw         $t3, 0x0($t2)
/* B84E4 80157AA4 24040006 */  addiu      $a0, $zero, 0x6
/* B84E8 80157AA8 24050006 */  addiu      $a1, $zero, 0x6
/* B84EC 80157AAC 000B6080 */  sll        $t4, $t3, 2
/* B84F0 80157AB0 002C0821 */  addu       $at, $at, $t4
/* B84F4 80157AB4 0C048BDB */  jal        set_kirby_action_1
/* B84F8 80157AB8 E4203210 */   swc1      $f0, %lo(D_800E3210)($at)
/* B84FC 80157ABC 10000055 */  b          .L80157C14_ovl3
/* B8500 80157AC0 24070001 */   addiu     $a3, $zero, 0x1
.L80157AC4_ovl3:
/* B8504 80157AC4 8DADE7F0 */  lw         $t5, %lo(D_8012E7E8 + 0x8)($t5)
/* B8508 80157AC8 24040006 */  addiu      $a0, $zero, 0x6
/* B850C 80157ACC 11A00051 */  beqz       $t5, .L80157C14_ovl3
/* B8510 80157AD0 00000000 */   nop
/* B8514 80157AD4 0C048BDB */  jal        set_kirby_action_1
/* B8518 80157AD8 24050006 */   addiu     $a1, $zero, 0x6
/* B851C 80157ADC 1000004D */  b          .L80157C14_ovl3
/* B8520 80157AE0 24070001 */   addiu     $a3, $zero, 0x1
.L80157AE4_ovl3:
/* B8524 80157AE4 0C054E61 */  jal        func_80153984_ovl3
/* B8528 80157AE8 AFA7001C */   sw        $a3, 0x1C($sp)
/* B852C 80157AEC 3C068013 */  lui        $a2, %hi(gKirbyState)
/* B8530 80157AF0 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
/* B8534 80157AF4 8CC3002C */  lw         $v1, 0x2C($a2)
/* B8538 80157AF8 8FA7001C */  lw         $a3, 0x1C($sp)
/* B853C 80157AFC 2405000A */  addiu      $a1, $zero, 0xA
/* B8540 80157B00 2C640001 */  sltiu      $a0, $v1, 0x1
/* B8544 80157B04 246EFFFF */  addiu      $t6, $v1, -0x1
/* B8548 80157B08 10800042 */  beqz       $a0, .L80157C14_ovl3
/* B854C 80157B0C ACCE002C */   sw        $t6, 0x2C($a2)
/* B8550 80157B10 ACC00030 */  sw         $zero, 0x30($a2)
/* B8554 80157B14 0C048BDB */  jal        set_kirby_action_1
/* B8558 80157B18 2404000D */   addiu     $a0, $zero, 0xD
glabel func_80157B1C_ovl4
/* B855C 80157B1C 1000003D */  b          .L80157C14_ovl3
/* B8560 80157B20 24070001 */   addiu     $a3, $zero, 0x1
.L80157B24_ovl3:
/* B8564 80157B24 0C054EE6 */  jal        func_80153B98_ovl3
/* B8568 80157B28 AFA7001C */   sw        $a3, 0x1C($sp)
/* B856C 80157B2C 3C038013 */  lui        $v1, %hi(D_8012E7E8 + 0x4)
/* B8570 80157B30 8C63E7EC */  lw         $v1, %lo(D_8012E7E8 + 0x4)($v1)
/* B8574 80157B34 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x4)
/* B8578 80157B38 8FA7001C */  lw         $a3, 0x1C($sp)
/* B857C 80157B3C 2C640001 */  sltiu      $a0, $v1, 0x1
/* B8580 80157B40 246FFFFF */  addiu      $t7, $v1, -0x1
/* B8584 80157B44 10800033 */  beqz       $a0, .L80157C14_ovl3
/* B8588 80157B48 AC2FE7EC */   sw        $t7, %lo(D_8012E7E8 + 0x4)($at)
/* B858C 80157B4C 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x8)
/* B8590 80157B50 AC20E7F0 */  sw         $zero, %lo(D_8012E7E8 + 0x8)($at)
/* B8594 80157B54 2404000E */  addiu      $a0, $zero, 0xE
/* B8598 80157B58 0C048BDB */  jal        set_kirby_action_1
/* B859C 80157B5C 2405000B */   addiu     $a1, $zero, 0xB
/* B85A0 80157B60 1000002C */  b          .L80157C14_ovl3
/* B85A4 80157B64 24070001 */   addiu     $a3, $zero, 0x1
.L80157B68_ovl3:
/* B85A8 80157B68 8D180000 */  lw         $t8, 0x0($t0)
/* B85AC 80157B6C 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* B85B0 80157B70 3C01800F */  lui        $at, %hi(D_800E8920)
/* B85B4 80157B74 8F030000 */  lw         $v1, 0x0($t8)
/* B85B8 80157B78 00031880 */  sll        $v1, $v1, 2
/* B85BC 80157B7C 0323C821 */  addu       $t9, $t9, $v1
/* B85C0 80157B80 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* B85C4 80157B84 00230821 */  addu       $at, $at, $v1
/* B85C8 80157B88 33290006 */  andi       $t1, $t9, 0x6
/* B85CC 80157B8C 11200002 */  beqz       $t1, .L80157B98_ovl3
/* B85D0 80157B90 00000000 */   nop
/* B85D4 80157B94 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
.L80157B98_ovl3:
/* B85D8 80157B98 0C054E61 */  jal        func_80153984_ovl3
/* B85DC 80157B9C AFA7001C */   sw        $a3, 0x1C($sp)
/* B85E0 80157BA0 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* B85E4 80157BA4 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* B85E8 80157BA8 8D0A0000 */  lw         $t2, 0x0($t0)
/* B85EC 80157BAC 3C0B800E */  lui        $t3, %hi(D_800E5F90)
/* B85F0 80157BB0 3C0C800E */  lui        $t4, %hi(D_800E6150)
/* B85F4 80157BB4 8D430000 */  lw         $v1, 0x0($t2)
/* B85F8 80157BB8 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
/* B85FC 80157BBC 8FA7001C */  lw         $a3, 0x1C($sp)
/* B8600 80157BC0 00031880 */  sll        $v1, $v1, 2
/* B8604 80157BC4 01635821 */  addu       $t3, $t3, $v1
/* B8608 80157BC8 01836021 */  addu       $t4, $t4, $v1
/* B860C 80157BCC 8D8C6150 */  lw         $t4, %lo(D_800E6150)($t4)
/* B8610 80157BD0 8D6B5F90 */  lw         $t3, %lo(D_800E5F90)($t3)
/* B8614 80157BD4 01A36821 */  addu       $t5, $t5, $v1
/* B8618 80157BD8 116C000E */  beq        $t3, $t4, .L80157C14_ovl3
/* B861C 80157BDC 00000000 */   nop
/* B8620 80157BE0 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
/* B8624 80157BE4 2405001B */  addiu      $a1, $zero, 0x1B
/* B8628 80157BE8 00002025 */  or         $a0, $zero, $zero
/* B862C 80157BEC 31AE0006 */  andi       $t6, $t5, 0x6
/* B8630 80157BF0 11C00005 */  beqz       $t6, .L80157C08_ovl3
/* B8634 80157BF4 00000000 */   nop
/* B8638 80157BF8 0C048BDB */  jal        set_kirby_action_1
/* B863C 80157BFC 24040017 */   addiu     $a0, $zero, 0x17
/* B8640 80157C00 10000004 */  b          .L80157C14_ovl3
/* B8644 80157C04 24070001 */   addiu     $a3, $zero, 0x1
.L80157C08_ovl3:
/* B8648 80157C08 0C048BDB */  jal        set_kirby_action_1
/* B864C 80157C0C 24050001 */   addiu     $a1, $zero, 0x1
/* B8650 80157C10 24070001 */  addiu      $a3, $zero, 0x1
.L80157C14_ovl3:
/* B8654 80157C14 10E0000D */  beqz       $a3, .L80157C4C_ovl3
/* B8658 80157C18 3C028013 */   lui       $v0, %hi(gKirbyState)
/* B865C 80157C1C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
.L80157C20_ovl4:
/* B8660 80157C20 A0400017 */  sb         $zero, 0x17($v0)
/* B8664 80157C24 A040000B */  sb         $zero, 0xB($v0)
/* B8668 80157C28 3C01800C */  lui        $at, %hi(D_800BE4FC)
/* B866C 80157C2C AC20E4FC */  sw         $zero, %lo(D_800BE4FC)($at)
/* B8670 80157C30 9044000C */  lbu        $a0, 0xC($v0)
/* B8674 80157C34 240F0001 */  addiu      $t7, $zero, 0x1
glabel func_80157C38_ovl4
/* B8678 80157C38 2405001C */  addiu      $a1, $zero, 0x1C
/* B867C 80157C3C 50800004 */  beql       $a0, $zero, .L80157C50_ovl3
/* B8680 80157C40 8FBF0014 */   lw        $ra, 0x14($sp)
/* B8684 80157C44 0C048BDB */  jal        set_kirby_action_1
/* B8688 80157C48 A04F0017 */   sb        $t7, 0x17($v0)
.L80157C4C_ovl3:
/* B868C 80157C4C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80157C50_ovl3:
/* B8690 80157C50 27BD0020 */  addiu      $sp, $sp, 0x20
/* B8694 80157C54 03E00008 */  jr         $ra
/* B8698 80157C58 00000000 */   nop
