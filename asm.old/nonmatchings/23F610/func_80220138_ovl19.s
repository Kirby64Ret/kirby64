glabel func_80220138_ovl19
/* 240848 80220138 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 24084C 8022013C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L80220140_ovl18:
/* 240850 80220140 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 240854 80220144 AFBF0014 */  sw         $ra, 0x14($sp)
/* 240858 80220148 AFA40040 */  sw         $a0, 0x40($sp)
/* 24085C 8022014C 8C430000 */  lw         $v1, 0x0($v0)
/* 240860 80220150 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 240864 80220154 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 240868 80220158 00031880 */  sll        $v1, $v1, 2
/* 24086C 8022015C 01C37021 */  addu       $t6, $t6, $v1
/* 240870 80220160 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
/* 240874 80220164 00230821 */  addu       $at, $at, $v1
/* 240878 80220168 51C00031 */  beql       $t6, $zero, .L80220230_ovl19
/* 24087C 8022016C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 240880 80220170 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 240884 80220174 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 240888 80220178 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 24088C 8022017C E7A4002C */  swc1       $f4, 0x2C($sp)
/* 240890 80220180 C7A6002C */  lwc1       $f6, 0x2C($sp)
glabel func_80220184_ovl18
/* 240894 80220184 3C014370 */  lui        $at, (0x43700000 >> 16)
/* 240898 80220188 44815000 */  mtc1       $at, $f10
/* 24089C 8022018C E7A60020 */  swc1       $f6, 0x20($sp)
/* 2408A0 80220190 8C4F0000 */  lw         $t7, 0x0($v0)
/* 2408A4 80220194 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 2408A8 80220198 3C0D8019 */  lui        $t5, %hi(D_801964E8)
/* 2408AC 8022019C 000FC080 */  sll        $t8, $t7, 2
/* 2408B0 802201A0 00D8C821 */  addu       $t9, $a2, $t8
/* 2408B4 802201A4 C7280000 */  lwc1       $f8, 0x0($t9)
/* 2408B8 802201A8 25AD64E8 */  addiu      $t5, $t5, %lo(D_801964E8)
/* 2408BC 802201AC 3C058015 */  lui        $a1, %hi(func_80155ED8_ovl3)
/* 2408C0 802201B0 460A4400 */  add.s      $f16, $f8, $f10
/* 2408C4 802201B4 24A55ED8 */  addiu      $a1, $a1, %lo(func_80155ED8_ovl3)
/* 2408C8 802201B8 27A40020 */  addiu      $a0, $sp, 0x20
/* 2408CC 802201BC E7B00024 */  swc1       $f16, 0x24($sp)
glabel func_802201C0_ovl18
/* 2408D0 802201C0 8C480000 */  lw         $t0, 0x0($v0)
/* 2408D4 802201C4 00084880 */  sll        $t1, $t0, 2
/* 2408D8 802201C8 00290821 */  addu       $at, $at, $t1
/* 2408DC 802201CC C4322950 */  lwc1       $f18, %lo(gEntitiesNextPosZArray)($at)
/* 2408E0 802201D0 3C01436F */  lui        $at, (0x436F0000 >> 16)
/* 2408E4 802201D4 44814000 */  mtc1       $at, $f8
/* 2408E8 802201D8 E7B20034 */  swc1       $f18, 0x34($sp)
/* 2408EC 802201DC C7A40034 */  lwc1       $f4, 0x34($sp)
/* 2408F0 802201E0 3C018023 */  lui        $at, %hi(D_8022F76C_ovl19)
/* 2408F4 802201E4 C430F76C */  lwc1       $f16, %lo(D_8022F76C_ovl19)($at)
/* 2408F8 802201E8 E7A40028 */  swc1       $f4, 0x28($sp)
/* 2408FC 802201EC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 240900 802201F0 000A5880 */  sll        $t3, $t2, 2
/* 240904 802201F4 00CB6021 */  addu       $t4, $a2, $t3
/* 240908 802201F8 C5860000 */  lwc1       $f6, 0x0($t4)
/* 24090C 802201FC AFAD003C */  sw         $t5, 0x3C($sp)
/* 240910 80220200 E7B00038 */  swc1       $f16, 0x38($sp)
/* 240914 80220204 46083280 */  add.s      $f10, $f6, $f8
/* 240918 80220208 0C046FD3 */  jal        func_8011BF4C
/* 24091C 8022020C E7AA0030 */   swc1      $f10, 0x30($sp)
/* 240920 80220210 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 240924 80220214 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 240928 80220218 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 24092C 8022021C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 240930 80220220 000FC080 */  sll        $t8, $t7, 2
/* 240934 80220224 00380821 */  addu       $at, $at, $t8
/* 240938 80220228 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
/* 24093C 8022022C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80220230_ovl19:
/* 240940 80220230 27BD0040 */  addiu      $sp, $sp, 0x40
/* 240944 80220234 03E00008 */  jr         $ra
/* 240948 80220238 00000000 */   nop
