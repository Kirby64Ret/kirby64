glabel func_8022785C_ovl19
/* 247F6C 8022785C 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 247F70 80227860 2508A7C4 */  addiu      $t0, $t0, %lo(D_8004A7C4)
/* 247F74 80227864 8D180000 */  lw         $t8, 0x0($t0)
/* 247F78 80227868 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 247F7C 8022786C 3C038013 */  lui        $v1, %hi(gKirbyState)
/* 247F80 80227870 2463E7C0 */  addiu      $v1, $v1, %lo(gKirbyState)
/* 247F84 80227874 240EFFFF */  addiu      $t6, $zero, -0x1
/* 247F88 80227878 AFBF0014 */  sw         $ra, 0x14($sp)
/* 247F8C 8022787C AFA40018 */  sw         $a0, 0x18($sp)
/* 247F90 80227880 AC6E0044 */  sw         $t6, 0x44($v1)
/* 247F94 80227884 8F190000 */  lw         $t9, 0x0($t8)
/* 247F98 80227888 3C0F8022 */  lui        $t7, %hi(func_80227938_ovl19)
/* 247F9C 8022788C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 247FA0 80227890 00195080 */  sll        $t2, $t9, 2
/* 247FA4 80227894 002A0821 */  addu       $at, $at, $t2
/* 247FA8 80227898 25EF7938 */  addiu      $t7, $t7, %lo(func_80227938_ovl19)
/* 247FAC 8022789C 3C078013 */  lui        $a3, %hi(D_8012E922 + 0x22)
/* 247FB0 802278A0 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
/* 247FB4 802278A4 24E7E944 */  addiu      $a3, $a3, %lo(D_8012E922 + 0x22)
/* 247FB8 802278A8 3C0141C0 */  lui        $at, (0x41C00000 >> 16)
/* 247FBC 802278AC 44812000 */  mtc1       $at, $f4
/* 247FC0 802278B0 8CEB0000 */  lw         $t3, 0x0($a3)
/* 247FC4 802278B4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 247FC8 802278B8 44813000 */  mtc1       $at, $f6
/* 247FCC 802278BC E5640010 */  swc1       $f4, 0x10($t3)
/* 247FD0 802278C0 8CEC0000 */  lw         $t4, 0x0($a3)
/* 247FD4 802278C4 3C01C370 */  lui        $at, (0xC3700000 >> 16)
/* 247FD8 802278C8 44814000 */  mtc1       $at, $f8
/* 247FDC 802278CC E5860014 */  swc1       $f6, 0x14($t4)
/* 247FE0 802278D0 8CED0000 */  lw         $t5, 0x0($a3)
/* 247FE4 802278D4 3C0E800D */  lui        $t6, %hi(D_800D6F58 + 0x58)
/* 247FE8 802278D8 3C09800E */  lui        $t1, %hi(gEntityVtableIndexArray)
/* 247FEC 802278DC E5A80018 */  swc1       $f8, 0x18($t5)
/* 247FF0 802278E0 8D020000 */  lw         $v0, 0x0($t0)
/* 247FF4 802278E4 AC600024 */  sw         $zero, 0x24($v1)
/* 247FF8 802278E8 A4600068 */  sh         $zero, 0x68($v1)
/* 247FFC 802278EC 8C590000 */  lw         $t9, 0x0($v0)
/* 248000 802278F0 95CE6FB0 */  lhu        $t6, %lo(D_800D6F58 + 0x58)($t6)
/* 248004 802278F4 2529DC50 */  addiu      $t1, $t1, %lo(gEntityVtableIndexArray)
/* 248008 802278F8 00197880 */  sll        $t7, $t9, 2
/* 24800C 802278FC 012F5021 */  addu       $t2, $t1, $t7
/* 248010 80227900 31D800FF */  andi       $t8, $t6, 0xFF
/* 248014 80227904 AD580000 */  sw         $t8, 0x0($t2)
/* 248018 80227908 8C4B0000 */  lw         $t3, 0x0($v0)
/* 24801C 8022790C 3C068023 */  lui        $a2, %hi(D_8022F518_ovl19)
/* 248020 80227910 24C6F518 */  addiu      $a2, $a2, %lo(D_8022F518_ovl19)
/* 248024 80227914 000B6080 */  sll        $t4, $t3, 2
/* 248028 80227918 012C6821 */  addu       $t5, $t1, $t4
/* 24802C 8022791C 8DA40000 */  lw         $a0, 0x0($t5)
/* 248030 80227920 0C02911F */  jal        call_virtual_function
/* 248034 80227924 24050003 */   addiu     $a1, $zero, 0x3
/* 248038 80227928 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24803C 8022792C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 248040 80227930 03E00008 */  jr         $ra
/* 248044 80227934 00000000 */   nop
