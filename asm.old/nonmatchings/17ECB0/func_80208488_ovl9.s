glabel func_80208488_ovl9
/* 1B64D8 80208488 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B64DC 8020848C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1B64E0 80208490 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B64E4 80208494 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B64E8 80208498 AFA40040 */  sw         $a0, 0x40($sp)
/* 1B64EC 8020849C 8C620000 */  lw         $v0, 0x0($v1)
/* 1B64F0 802084A0 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B64F4 802084A4 44801000 */  mtc1       $zero, $f2
/* 1B64F8 802084A8 00021080 */  sll        $v0, $v0, 2
/* 1B64FC 802084AC 00220821 */  addu       $at, $at, $v0
/* 1B6500 802084B0 C42064D0 */  lwc1       $f0, %lo(D_800E64D0)($at)
/* 1B6504 802084B4 3C01800E */  lui        $at, %hi(D_800E6690)
/* 1B6508 802084B8 3C19800F */  lui        $t9, %hi(D_800E8AE0)
/* 1B650C 802084BC 4602003C */  c.lt.s     $f0, $f2
/* 1B6510 802084C0 00220821 */  addu       $at, $at, $v0
/* 1B6514 802084C4 240E0003 */  addiu      $t6, $zero, 0x3
/* 1B6518 802084C8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1B651C 802084CC 45000003 */  bc1f       .L802084DC_ovl9
/* 1B6520 802084D0 0322C821 */   addu      $t9, $t9, $v0
/* 1B6524 802084D4 10000002 */  b          .L802084E0_ovl9
/* 1B6528 802084D8 46000307 */   neg.s     $f12, $f0
.L802084DC_ovl9:
/* 1B652C 802084DC 46000306 */  mov.s      $f12, $f0
.L802084E0_ovl9:
/* 1B6530 802084E0 C4206690 */  lwc1       $f0, %lo(D_800E6690)($at)
/* 1B6534 802084E4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B6538 802084E8 00220821 */  addu       $at, $at, $v0
/* 1B653C 802084EC 4602003C */  c.lt.s     $f0, $f2
/* 1B6540 802084F0 00000000 */  nop
/* 1B6544 802084F4 45020004 */  bc1fl      .L80208508_ovl9
/* 1B6548 802084F8 46000086 */   mov.s     $f2, $f0
/* 1B654C 802084FC 10000002 */  b          .L80208508_ovl9
/* 1B6550 80208500 46000087 */   neg.s     $f2, $f0
/* 1B6554 80208504 46000086 */  mov.s      $f2, $f0
.L80208508_ovl9:
/* 1B6558 80208508 4602603C */  c.lt.s     $f12, $f2
/* 1B655C 8020850C 00000000 */  nop
/* 1B6560 80208510 4500000B */  bc1f       .L80208540_ovl9
/* 1B6564 80208514 00000000 */   nop
/* 1B6568 80208518 AC2EDC50 */  sw         $t6, %lo(gEntityVtableIndexArray)($at)
/* 1B656C 8020851C 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1B6570 80208520 3C058020 */  lui        $a1, %hi(func_80207F0C_ovl9)
/* 1B6574 80208524 24A57F0C */  addiu      $a1, $a1, %lo(func_80207F0C_ovl9)
/* 1B6578 80208528 000FC080 */  sll        $t8, $t7, 2
/* 1B657C 8020852C 00982021 */  addu       $a0, $a0, $t8
/* 1B6580 80208530 0C02C7B2 */  jal        assign_new_process_entry
/* 1B6584 80208534 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1B6588 80208538 10000010 */  b          .L8020857C_ovl9
/* 1B658C 8020853C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80208540_ovl9:
/* 1B6590 80208540 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
/* 1B6594 80208544 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 1B6598 80208548 27A4002C */  addiu      $a0, $sp, 0x2C
/* 1B659C 8020854C 33280001 */  andi       $t0, $t9, 0x1
/* 1B65A0 80208550 5500000A */  bnel       $t0, $zero, .L8020857C_ovl9
/* 1B65A4 80208554 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1B65A8 80208558 44813000 */  mtc1       $at, $f6
/* 1B65AC 8020855C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1B65B0 80208560 44802000 */  mtc1       $zero, $f4
/* 1B65B4 80208564 44814000 */  mtc1       $at, $f8
/* 1B65B8 80208568 E7A60030 */  swc1       $f6, 0x30($sp)
/* 1B65BC 8020856C E7A4002C */  swc1       $f4, 0x2C($sp)
/* 1B65C0 80208570 0C082181 */  jal        func_80208604_ovl9
/* 1B65C4 80208574 E7A80034 */   swc1      $f8, 0x34($sp)
/* 1B65C8 80208578 8FBF0014 */  lw         $ra, 0x14($sp)
.L8020857C_ovl9:
/* 1B65CC 8020857C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1B65D0 80208580 03E00008 */  jr         $ra
/* 1B65D4 80208584 00000000 */   nop
