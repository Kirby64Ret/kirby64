glabel func_800BD460
/* 0656B0 800BD460 3C0E800D */  lui   $t6, %hi(gHudDisplayMode) # $t6, 0x800d
/* 0656B4 800BD464 8DCE6BB0 */  lw    $t6, %lo(gHudDisplayMode)($t6)
/* 0656B8 800BD468 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0656BC 800BD46C AFA40018 */  sw    $a0, 0x18($sp)
/* 0656C0 800BD470 000E7880 */  sll   $t7, $t6, 2
/* 0656C4 800BD474 01EE7821 */  addu  $t7, $t7, $t6
/* 0656C8 800BD478 000F7840 */  sll   $t7, $t7, 1
/* 0656CC 800BD47C 000FC080 */  sll   $t8, $t7, 2
/* 0656D0 800BD480 0005C880 */  sll   $t9, $a1, 2
/* 0656D4 800BD484 03194021 */  addu  $t0, $t8, $t9
/* 0656D8 800BD488 3C04800D */ lui $a0, %hi(D_800D5310)
/* 0656DC 800BD48C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0656E0 800BD490 00882021 */  addu  $a0, $a0, $t0
/* 0656E4 800BD494 0C02A2EB */  jal   func_800A8BAC
/* 0656E8 800BD498 8C845310 */ lw $a0, %lo(D_800D5310)($a0)
/* 0656EC 800BD49C 8FA90018 */  lw    $t1, 0x18($sp)
/* 0656F0 800BD4A0 3C0C800F */  lui   $t4, %hi(D_800ED510) # $t4, 0x800f
/* 0656F4 800BD4A4 24430010 */  addiu $v1, $v0, 0x10
/* 0656F8 800BD4A8 00095040 */  sll   $t2, $t1, 1
/* 0656FC 800BD4AC 254B1180 */  addiu $t3, $t2, 0x1180
/* 065700 800BD4B0 258CD510 */  addiu $t4, %lo(D_800ED510) # addiu $t4, $t4, -0x2af0
/* 065704 800BD4B4 016C2021 */  addu  $a0, $t3, $t4
/* 065708 800BD4B8 24020020 */  li    $v0, 32
/* 06570C 800BD4BC 00002825 */  move  $a1, $zero
.L800BD4C0_ovl1:
/* 065710 800BD4C0 8C6E0000 */  lw    $t6, ($v1)
/* 065714 800BD4C4 8C6F0004 */  lw    $t7, 4($v1)
/* 065718 800BD4C8 24A50004 */  addiu $a1, $a1, 4
/* 06571C 800BD4CC AC8E0000 */  sw    $t6, ($a0)
/* 065720 800BD4D0 AC8F0004 */  sw    $t7, 4($a0)
/* 065724 800BD4D4 8C79000C */  lw    $t9, 0xc($v1)
/* 065728 800BD4D8 8C780008 */  lw    $t8, 8($v1)
/* 06572C 800BD4DC 246300C0 */  addiu $v1, $v1, 0xc0
/* 065730 800BD4E0 AC99000C */  sw    $t9, 0xc($a0)
/* 065734 800BD4E4 AC980008 */  sw    $t8, 8($a0)
/* 065738 800BD4E8 8C69FF54 */  lw    $t1, -0xac($v1)
/* 06573C 800BD4EC 8C68FF50 */  lw    $t0, -0xb0($v1)
/* 065740 800BD4F0 24840A00 */  addiu $a0, $a0, 0xa00
/* 065744 800BD4F4 AC89F614 */  sw    $t1, -0x9ec($a0)
/* 065748 800BD4F8 AC88F610 */  sw    $t0, -0x9f0($a0)
/* 06574C 800BD4FC 8C6BFF5C */  lw    $t3, -0xa4($v1)
/* 065750 800BD500 8C6AFF58 */  lw    $t2, -0xa8($v1)
/* 065754 800BD504 AC8BF61C */  sw    $t3, -0x9e4($a0)
/* 065758 800BD508 AC8AF618 */  sw    $t2, -0x9e8($a0)
/* 06575C 800BD50C 8C6DFF64 */  lw    $t5, -0x9c($v1)
/* 065760 800BD510 8C6CFF60 */  lw    $t4, -0xa0($v1)
/* 065764 800BD514 AC8DF624 */  sw    $t5, -0x9dc($a0)
/* 065768 800BD518 AC8CF620 */  sw    $t4, -0x9e0($a0)
/* 06576C 800BD51C 8C6FFF6C */  lw    $t7, -0x94($v1)
/* 065770 800BD520 8C6EFF68 */  lw    $t6, -0x98($v1)
/* 065774 800BD524 AC8FF62C */  sw    $t7, -0x9d4($a0)
/* 065778 800BD528 AC8EF628 */  sw    $t6, -0x9d8($a0)
/* 06577C 800BD52C 8C79FF74 */  lw    $t9, -0x8c($v1)
/* 065780 800BD530 8C78FF70 */  lw    $t8, -0x90($v1)
/* 065784 800BD534 AC99F884 */  sw    $t9, -0x77c($a0)
/* 065788 800BD538 AC98F880 */  sw    $t8, -0x780($a0)
/* 06578C 800BD53C 8C69FF7C */  lw    $t1, -0x84($v1)
/* 065790 800BD540 8C68FF78 */  lw    $t0, -0x88($v1)
/* 065794 800BD544 AC89F88C */  sw    $t1, -0x774($a0)
/* 065798 800BD548 AC88F888 */  sw    $t0, -0x778($a0)
/* 06579C 800BD54C 8C6BFF84 */  lw    $t3, -0x7c($v1)
/* 0657A0 800BD550 8C6AFF80 */  lw    $t2, -0x80($v1)
/* 0657A4 800BD554 AC8BF894 */  sw    $t3, -0x76c($a0)
/* 0657A8 800BD558 AC8AF890 */  sw    $t2, -0x770($a0)
/* 0657AC 800BD55C 8C6DFF8C */  lw    $t5, -0x74($v1)
/* 0657B0 800BD560 8C6CFF88 */  lw    $t4, -0x78($v1)
/* 0657B4 800BD564 AC8DF89C */  sw    $t5, -0x764($a0)
/* 0657B8 800BD568 AC8CF898 */  sw    $t4, -0x768($a0)
/* 0657BC 800BD56C 8C6FFF94 */  lw    $t7, -0x6c($v1)
/* 0657C0 800BD570 8C6EFF90 */  lw    $t6, -0x70($v1)
/* 0657C4 800BD574 AC8FF8A4 */  sw    $t7, -0x75c($a0)
/* 0657C8 800BD578 AC8EF8A0 */  sw    $t6, -0x760($a0)
/* 0657CC 800BD57C 8C79FF9C */  lw    $t9, -0x64($v1)
/* 0657D0 800BD580 8C78FF98 */  lw    $t8, -0x68($v1)
/* 0657D4 800BD584 AC99F8AC */  sw    $t9, -0x754($a0)
/* 0657D8 800BD588 AC98F8A8 */  sw    $t8, -0x758($a0)
/* 0657DC 800BD58C 8C69FFA4 */  lw    $t1, -0x5c($v1)
/* 0657E0 800BD590 8C68FFA0 */  lw    $t0, -0x60($v1)
/* 0657E4 800BD594 AC89FB04 */  sw    $t1, -0x4fc($a0)
/* 0657E8 800BD598 AC88FB00 */  sw    $t0, -0x500($a0)
/* 0657EC 800BD59C 8C6BFFAC */  lw    $t3, -0x54($v1)
/* 0657F0 800BD5A0 8C6AFFA8 */  lw    $t2, -0x58($v1)
/* 0657F4 800BD5A4 AC8BFB0C */  sw    $t3, -0x4f4($a0)
/* 0657F8 800BD5A8 AC8AFB08 */  sw    $t2, -0x4f8($a0)
/* 0657FC 800BD5AC 8C6DFFB4 */  lw    $t5, -0x4c($v1)
/* 065800 800BD5B0 8C6CFFB0 */  lw    $t4, -0x50($v1)
/* 065804 800BD5B4 AC8DFB14 */  sw    $t5, -0x4ec($a0)
/* 065808 800BD5B8 AC8CFB10 */  sw    $t4, -0x4f0($a0)
/* 06580C 800BD5BC 8C6FFFBC */  lw    $t7, -0x44($v1)
/* 065810 800BD5C0 8C6EFFB8 */  lw    $t6, -0x48($v1)
/* 065814 800BD5C4 AC8FFB1C */  sw    $t7, -0x4e4($a0)
/* 065818 800BD5C8 AC8EFB18 */  sw    $t6, -0x4e8($a0)
/* 06581C 800BD5CC 8C79FFC4 */  lw    $t9, -0x3c($v1)
/* 065820 800BD5D0 8C78FFC0 */  lw    $t8, -0x40($v1)
/* 065824 800BD5D4 AC99FB24 */  sw    $t9, -0x4dc($a0)
/* 065828 800BD5D8 AC98FB20 */  sw    $t8, -0x4e0($a0)
/* 06582C 800BD5DC 8C69FFCC */  lw    $t1, -0x34($v1)
/* 065830 800BD5E0 8C68FFC8 */  lw    $t0, -0x38($v1)
/* 065834 800BD5E4 AC89FB2C */  sw    $t1, -0x4d4($a0)
/* 065838 800BD5E8 AC88FB28 */  sw    $t0, -0x4d8($a0)
/* 06583C 800BD5EC 8C6BFFD4 */  lw    $t3, -0x2c($v1)
/* 065840 800BD5F0 8C6AFFD0 */  lw    $t2, -0x30($v1)
/* 065844 800BD5F4 AC8BFD84 */  sw    $t3, -0x27c($a0)
/* 065848 800BD5F8 AC8AFD80 */  sw    $t2, -0x280($a0)
/* 06584C 800BD5FC 8C6DFFDC */  lw    $t5, -0x24($v1)
/* 065850 800BD600 8C6CFFD8 */  lw    $t4, -0x28($v1)
/* 065854 800BD604 AC8DFD8C */  sw    $t5, -0x274($a0)
/* 065858 800BD608 AC8CFD88 */  sw    $t4, -0x278($a0)
/* 06585C 800BD60C 8C6FFFE4 */  lw    $t7, -0x1c($v1)
/* 065860 800BD610 8C6EFFE0 */  lw    $t6, -0x20($v1)
/* 065864 800BD614 AC8FFD94 */  sw    $t7, -0x26c($a0)
/* 065868 800BD618 AC8EFD90 */  sw    $t6, -0x270($a0)
/* 06586C 800BD61C 8C79FFEC */  lw    $t9, -0x14($v1)
/* 065870 800BD620 8C78FFE8 */  lw    $t8, -0x18($v1)
/* 065874 800BD624 AC99FD9C */  sw    $t9, -0x264($a0)
/* 065878 800BD628 AC98FD98 */  sw    $t8, -0x268($a0)
/* 06587C 800BD62C 8C69FFF4 */  lw    $t1, -0xc($v1)
/* 065880 800BD630 8C68FFF0 */  lw    $t0, -0x10($v1)
/* 065884 800BD634 AC89FDA4 */  sw    $t1, -0x25c($a0)
/* 065888 800BD638 AC88FDA0 */  sw    $t0, -0x260($a0)
/* 06588C 800BD63C 8C6BFFFC */  lw    $t3, -4($v1)
/* 065890 800BD640 8C6AFFF8 */  lw    $t2, -8($v1)
/* 065894 800BD644 AC8BFDAC */  sw    $t3, -0x254($a0)
/* 065898 800BD648 14A2FF9D */  bne   $a1, $v0, .L800BD4C0_ovl1
/* 06589C 800BD64C AC8AFDA8 */   sw    $t2, -0x258($a0)
/* 0658A0 800BD650 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0658A4 800BD654 27BD0018 */  addiu $sp, $sp, 0x18
/* 0658A8 800BD658 03E00008 */  jr    $ra
/* 0658AC 800BD65C 00000000 */   nop   
.type func_800BD460, @function
.size func_800BD460, . - func_800BD460
