glabel func_802271A8_ovl19
/* 2478B8 802271A8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 2478BC 802271AC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 2478C0 802271B0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2478C4 802271B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2478C8 802271B8 8C430000 */  lw         $v1, 0x0($v0)
/* 2478CC 802271BC 3C09800E */  lui        $t1, %hi(D_800E0490)
/* 2478D0 802271C0 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 2478D4 802271C4 00031880 */  sll        $v1, $v1, 2
/* 2478D8 802271C8 01234821 */  addu       $t1, $t1, $v1
/* 2478DC 802271CC 8D290490 */  lw         $t1, %lo(D_800E0490)($t1)
/* 2478E0 802271D0 00230821 */  addu       $at, $at, $v1
/* 2478E4 802271D4 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
/* 2478E8 802271D8 8D280004 */  lw         $t0, 0x4($t1)
/* 2478EC 802271DC 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
/* 2478F0 802271E0 E7A40044 */  swc1       $f4, 0x44($sp)
/* 2478F4 802271E4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 2478F8 802271E8 C5080000 */  lwc1       $f8, 0x0($t0)
/* 2478FC 802271EC 27A40044 */  addiu      $a0, $sp, 0x44
/* 247900 802271F0 000E7880 */  sll        $t7, $t6, 2
/* 247904 802271F4 002F0821 */  addu       $at, $at, $t7
/* 247908 802271F8 C4262CD0 */  lwc1       $f6, %lo(gEntitiesPosYArray)($at)
/* 24790C 802271FC 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 247910 80227200 27A50038 */  addiu      $a1, $sp, 0x38
/* 247914 80227204 46083280 */  add.s      $f10, $f6, $f8
/* 247918 80227208 24060001 */  addiu      $a2, $zero, 0x1
/* 24791C 8022720C 24070013 */  addiu      $a3, $zero, 0x13
/* 247920 80227210 E7AA0048 */  swc1       $f10, 0x48($sp)
/* 247924 80227214 8C580000 */  lw         $t8, 0x0($v0)
/* 247928 80227218 0018C880 */  sll        $t9, $t8, 2
/* 24792C 8022721C 00390821 */  addu       $at, $at, $t9
/* 247930 80227220 C4302E90 */  lwc1       $f16, %lo(gEntitiesPosZArray)($at)
/* 247934 80227224 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 247938 80227228 3C188013 */  lui        $t8, %hi(D_8012BCC0)
/* 24793C 8022722C E7B0004C */  swc1       $f16, 0x4C($sp)
/* 247940 80227230 8C4A0000 */  lw         $t2, 0x0($v0)
/* 247944 80227234 8F18BCC0 */  lw         $t8, %lo(D_8012BCC0)($t8)
/* 247948 80227238 27B90034 */  addiu      $t9, $sp, 0x34
/* 24794C 8022723C 000A5880 */  sll        $t3, $t2, 2
/* 247950 80227240 002B0821 */  addu       $at, $at, $t3
/* 247954 80227244 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
/* 247958 80227248 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 24795C 8022724C E7B20038 */  swc1       $f18, 0x38($sp)
/* 247960 80227250 8C4C0000 */  lw         $t4, 0x0($v0)
/* 247964 80227254 C5060000 */  lwc1       $f6, 0x0($t0)
/* 247968 80227258 000C6880 */  sll        $t5, $t4, 2
/* 24796C 8022725C 002D0821 */  addu       $at, $at, $t5
/* 247970 80227260 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
/* 247974 80227264 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 247978 80227268 46062200 */  add.s      $f8, $f4, $f6
/* 24797C 8022726C E7A8003C */  swc1       $f8, 0x3C($sp)
/* 247980 80227270 8C4E0000 */  lw         $t6, 0x0($v0)
/* 247984 80227274 AFB90010 */  sw         $t9, 0x10($sp)
/* 247988 80227278 AFB80034 */  sw         $t8, 0x34($sp)
/* 24798C 8022727C 000E7880 */  sll        $t7, $t6, 2
.L80227280_ovl18:
/* 247990 80227280 002F0821 */  addu       $at, $at, $t7
/* 247994 80227284 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
/* 247998 80227288 0C0412AD */  jal        func_80104AB4
/* 24799C 8022728C E7AA0040 */   swc1      $f10, 0x40($sp)
/* 2479A0 80227290 1040000F */  beqz       $v0, .L802272D0_ovl19
/* 2479A4 80227294 8FAA0034 */   lw        $t2, 0x34($sp)
/* 2479A8 80227298 954B0010 */  lhu        $t3, 0x10($t2)
/* 2479AC 8022729C 3C048013 */  lui        $a0, %hi(gKirbyState)
/* 2479B0 802272A0 2484E7C0 */  addiu      $a0, $a0, %lo(gKirbyState)
/* 2479B4 802272A4 448B8000 */  mtc1       $t3, $f16
/* 2479B8 802272A8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 2479BC 802272AC 05610004 */  bgez       $t3, .L802272C0_ovl19
/* 2479C0 802272B0 468084A0 */   cvt.s.w   $f18, $f16
/* 2479C4 802272B4 44812000 */  mtc1       $at, $f4
/* 2479C8 802272B8 00000000 */  nop
/* 2479CC 802272BC 46049480 */  add.s      $f18, $f18, $f4
.L802272C0_ovl19:
/* 2479D0 802272C0 3C018023 */  lui        $at, %hi(D_8022F930_ovl19)
/* 2479D4 802272C4 C426F930 */  lwc1       $f6, %lo(D_8022F930_ovl19)($at)
/* 2479D8 802272C8 46069202 */  mul.s      $f8, $f18, $f6
/* 2479DC 802272CC E4880040 */  swc1       $f8, 0x40($a0)
.L802272D0_ovl19:
/* 2479E0 802272D0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 2479E4 802272D4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 2479E8 802272D8 3C0C800F */  lui        $t4, %hi(D_800E8920)
/* 2479EC 802272DC 3C048013 */  lui        $a0, %hi(gKirbyState)
/* 2479F0 802272E0 8C430000 */  lw         $v1, 0x0($v0)
/* 2479F4 802272E4 2484E7C0 */  addiu      $a0, $a0, %lo(gKirbyState)
/* 2479F8 802272E8 00031880 */  sll        $v1, $v1, 2
/* 2479FC 802272EC 01836021 */  addu       $t4, $t4, $v1
/* 247A00 802272F0 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* 247A04 802272F4 51800019 */  beql       $t4, $zero, .L8022735C_ovl19
/* 247A08 802272F8 8C990044 */   lw        $t9, 0x44($a0)
/* 247A0C 802272FC C4800040 */  lwc1       $f0, 0x40($a0)
/* 247A10 80227300 44808000 */  mtc1       $zero, $f16
/* 247A14 80227304 3C018023 */  lui        $at, %hi(D_8022F934_ovl19)
glabel func_80227308_ovl18
/* 247A18 80227308 C42AF934 */  lwc1       $f10, %lo(D_8022F934_ovl19)($at)
/* 247A1C 8022730C 4610003C */  c.lt.s     $f0, $f16
/* 247A20 80227310 3C01800E */  lui        $at, %hi(D_800E6690)
/* 247A24 80227314 00230821 */  addu       $at, $at, $v1
/* 247A28 80227318 E42A6690 */  swc1       $f10, %lo(D_800E6690)($at)
/* 247A2C 8022731C 45020009 */  bc1fl      .L80227344_ovl19
/* 247A30 80227320 8C4F0000 */   lw        $t7, 0x0($v0)
/* 247A34 80227324 8C4D0000 */  lw         $t5, 0x0($v0)
/* 247A38 80227328 3C01800E */  lui        $at, %hi(D_800E6850)
/* 247A3C 8022732C 46000107 */  neg.s      $f4, $f0
/* 247A40 80227330 000D7080 */  sll        $t6, $t5, 2
/* 247A44 80227334 002E0821 */  addu       $at, $at, $t6
/* 247A48 80227338 10000015 */  b          .L80227390_ovl19
/* 247A4C 8022733C E4246850 */   swc1      $f4, %lo(D_800E6850)($at)
/* 247A50 80227340 8C4F0000 */  lw         $t7, 0x0($v0)
.L80227344_ovl19:
/* 247A54 80227344 3C01800E */  lui        $at, %hi(D_800E6850)
/* 247A58 80227348 000FC080 */  sll        $t8, $t7, 2
/* 247A5C 8022734C 00380821 */  addu       $at, $at, $t8
/* 247A60 80227350 1000000F */  b          .L80227390_ovl19
/* 247A64 80227354 E4206850 */   swc1      $f0, %lo(D_800E6850)($at)
/* 247A68 80227358 8C990044 */  lw         $t9, 0x44($a0)
.L8022735C_ovl19:
/* 247A6C 8022735C 24010001 */  addiu      $at, $zero, 0x1
/* 247A70 80227360 1321000B */  beq        $t9, $at, .L80227390_ovl19
/* 247A74 80227364 3C018023 */   lui       $at, %hi(D_8022F938_ovl19)
/* 247A78 80227368 C432F938 */  lwc1       $f18, %lo(D_8022F938_ovl19)($at)
/* 247A7C 8022736C 3C01800E */  lui        $at, %hi(D_800E6690)
/* 247A80 80227370 00230821 */  addu       $at, $at, $v1
/* 247A84 80227374 E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
/* 247A88 80227378 8C4A0000 */  lw         $t2, 0x0($v0)
/* 247A8C 8022737C 44803000 */  mtc1       $zero, $f6
/* 247A90 80227380 3C01800E */  lui        $at, %hi(D_800E6850)
/* 247A94 80227384 000A5880 */  sll        $t3, $t2, 2
/* 247A98 80227388 002B0821 */  addu       $at, $at, $t3
/* 247A9C 8022738C E4266850 */  swc1       $f6, %lo(D_800E6850)($at)
.L80227390_ovl19:
/* 247AA0 80227390 8FBF001C */  lw         $ra, 0x1C($sp)
/* 247AA4 80227394 27BD0058 */  addiu      $sp, $sp, 0x58
/* 247AA8 80227398 03E00008 */  jr         $ra
/* 247AAC 8022739C 00000000 */   nop
