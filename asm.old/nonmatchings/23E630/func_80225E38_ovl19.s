glabel func_80225E38_ovl19
/* 246548 80225E38 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 24654C 80225E3C 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
glabel func_80225E40_ovl18
/* 246550 80225E40 8CEE0000 */  lw         $t6, 0x0($a3)
/* 246554 80225E44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 246558 80225E48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24655C 80225E4C AFA40018 */  sw         $a0, 0x18($sp)
/* 246560 80225E50 8DCF0000 */  lw         $t7, 0x0($t6)
/* 246564 80225E54 3C04800F */  lui        $a0, %hi(D_800E83E0)
/* 246568 80225E58 248483E0 */  addiu      $a0, $a0, %lo(D_800E83E0)
/* 24656C 80225E5C 000FC080 */  sll        $t8, $t7, 2
/* 246570 80225E60 0098C821 */  addu       $t9, $a0, $t8
/* 246574 80225E64 8F280000 */  lw         $t0, 0x0($t9)
/* 246578 80225E68 3C068013 */  lui        $a2, %hi(gKirbyState)
/* 24657C 80225E6C 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
/* 246580 80225E70 5100004D */  beql       $t0, $zero, func_80225FA8_ovl19
.L80225E74_ovl18:
/* 246584 80225E74 8FBF0014 */   lw        $ra, 0x14($sp)
/* 246588 80225E78 8CC90044 */  lw         $t1, 0x44($a2)
/* 24658C 80225E7C 24010007 */  addiu      $at, $zero, 0x7
/* 246590 80225E80 51210049 */  beql       $t1, $at, func_80225FA8_ovl19
/* 246594 80225E84 8FBF0014 */   lw        $ra, 0x14($sp)
/* 246598 80225E88 94CA0068 */  lhu        $t2, 0x68($a2)
/* 24659C 80225E8C 24010003 */  addiu      $at, $zero, 0x3
/* 2465A0 80225E90 3C02800D */  lui        $v0, %hi(gKirbyHp)
/* 2465A4 80225E94 15410006 */  bne        $t2, $at, .L80225EB0_ovl19
/* 2465A8 80225E98 24426E50 */   addiu     $v0, $v0, %lo(gKirbyHp)
/* 2465AC 80225E9C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 2465B0 80225EA0 44813000 */  mtc1       $at, $f6
/* 2465B4 80225EA4 C4440000 */  lwc1       $f4, 0x0($v0)
/* 2465B8 80225EA8 46062200 */  add.s      $f8, $f4, $f6
/* 2465BC 80225EAC E4480000 */  swc1       $f8, 0x0($v0)
.L80225EB0_ovl19:
/* 2465C0 80225EB0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 2465C4 80225EB4 44816000 */  mtc1       $at, $f12
glabel func_80225EB8_ovl18
/* 2465C8 80225EB8 0C02EFF8 */  jal        change_kirby_hp
/* 2465CC 80225EBC 00000000 */   nop
/* 2465D0 80225EC0 3C04800F */  lui        $a0, %hi(D_800E83E0)
/* 2465D4 80225EC4 3C068013 */  lui        $a2, %hi(gKirbyState)
/* 2465D8 80225EC8 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 2465DC 80225ECC 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 2465E0 80225ED0 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
/* 2465E4 80225ED4 14400008 */  bnez       $v0, .L80225EF8_ovl19
/* 2465E8 80225ED8 248483E0 */   addiu     $a0, $a0, %lo(D_800E83E0)
/* 2465EC 80225EDC 8CE20000 */  lw         $v0, 0x0($a3)
/* 2465F0 80225EE0 240B0001 */  addiu      $t3, $zero, 0x1
/* 2465F4 80225EE4 8C4C0000 */  lw         $t4, 0x0($v0)
/* 2465F8 80225EE8 000C6880 */  sll        $t5, $t4, 2
/* 2465FC 80225EEC 008D7021 */  addu       $t6, $a0, $t5
/* 246600 80225EF0 10000009 */  b          .L80225F18_ovl19
/* 246604 80225EF4 ADCB0000 */   sw        $t3, 0x0($t6)
.L80225EF8_ovl19:
/* 246608 80225EF8 8CE20000 */  lw         $v0, 0x0($a3)
/* 24660C 80225EFC 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* 246610 80225F00 44815000 */  mtc1       $at, $f10
/* 246614 80225F04 8C4F0000 */  lw         $t7, 0x0($v0)
/* 246618 80225F08 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24661C 80225F0C 000FC080 */  sll        $t8, $t7, 2
/* 246620 80225F10 00380821 */  addu       $at, $at, $t8
/* 246624 80225F14 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
.L80225F18_ovl19:
/* 246628 80225F18 8C590000 */  lw         $t9, 0x0($v0)
/* 24662C 80225F1C 24010001 */  addiu      $at, $zero, 0x1
/* 246630 80225F20 240A0005 */  addiu      $t2, $zero, 0x5
/* 246634 80225F24 00194080 */  sll        $t0, $t9, 2
/* 246638 80225F28 00884821 */  addu       $t1, $a0, $t0
/* 24663C 80225F2C 8D230000 */  lw         $v1, 0x0($t1)
/* 246640 80225F30 240C0004 */  addiu      $t4, $zero, 0x4
/* 246644 80225F34 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 246648 80225F38 10610005 */  beq        $v1, $at, .L80225F50_ovl19
/* 24664C 80225F3C 24010003 */   addiu     $at, $zero, 0x3
/* 246650 80225F40 50610006 */  beql       $v1, $at, .L80225F5C_ovl19
/* 246654 80225F44 ACCC0044 */   sw        $t4, 0x44($a2)
/* 246658 80225F48 10000004 */  b          .L80225F5C_ovl19
/* 24665C 80225F4C ACCC0044 */   sw        $t4, 0x44($a2)
.L80225F50_ovl19:
/* 246660 80225F50 10000002 */  b          .L80225F5C_ovl19
/* 246664 80225F54 ACCA0044 */   sw        $t2, 0x44($a2)
/* 246668 80225F58 ACCC0044 */  sw         $t4, 0x44($a2)
.L80225F5C_ovl19:
/* 24666C 80225F5C 8C4D0000 */  lw         $t5, 0x0($v0)
/* 246670 80225F60 3C058022 */  lui        $a1, %hi(func_802248C0_ovl19)
/* 246674 80225F64 24A548C0 */  addiu      $a1, $a1, %lo(func_802248C0_ovl19)
/* 246678 80225F68 000D5880 */  sll        $t3, $t5, 2
/* 24667C 80225F6C 008B2021 */  addu       $a0, $a0, $t3
/* 246680 80225F70 0C02C7B2 */  jal        assign_new_process_entry
/* 246684 80225F74 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 246688 80225F78 3C078005 */  lui        $a3, %hi(D_8004A7C4)
/* 24668C 80225F7C 24E7A7C4 */  addiu      $a3, $a3, %lo(D_8004A7C4)
/* 246690 80225F80 8CEF0000 */  lw         $t7, 0x0($a3)
/* 246694 80225F84 3C068013 */  lui        $a2, %hi(gKirbyState)
/* 246698 80225F88 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
/* 24669C 80225F8C 8DF80000 */  lw         $t8, 0x0($t7)
/* 2466A0 80225F90 8CCE0044 */  lw         $t6, 0x44($a2)
/* 2466A4 80225F94 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 2466A8 80225F98 0018C880 */  sll        $t9, $t8, 2
/* 2466AC 80225F9C 00390821 */  addu       $at, $at, $t9
/* 2466B0 80225FA0 AC2E98E0 */  sw         $t6, %lo(D_800E98E0)($at)
/* 2466B4 80225FA4 8FBF0014 */  lw         $ra, 0x14($sp)
glabel func_80225FA8_ovl19
/* 2466B8 80225FA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2466BC 80225FAC 03E00008 */  jr         $ra
/* 2466C0 80225FB0 00000000 */   nop
