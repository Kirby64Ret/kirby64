nonmatching func_801DF790_ovl15, 0x238

glabel func_801DF790_ovl15
    /* 20A2F0 801DF790 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 20A2F4 801DF794 AFB00018 */  sw         $s0, 0x18($sp)
    /* 20A2F8 801DF798 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 20A2FC 801DF79C 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 20A300 801DF7A0 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 20A304 801DF7A4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20A308 801DF7A8 AFA40020 */  sw         $a0, 0x20($sp)
    /* 20A30C 801DF7AC 8DC20000 */  lw         $v0, 0x0($t6)
    /* 20A310 801DF7B0 3C0F800E */  lui        $t7, %hi(D_800E0D50)
    /* 20A314 801DF7B4 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 20A318 801DF7B8 00021080 */  sll        $v0, $v0, 2
    /* 20A31C 801DF7BC 01E27821 */  addu       $t7, $t7, $v0
    /* 20A320 801DF7C0 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
    /* 20A324 801DF7C4 00220821 */  addu       $at, $at, $v0
    /* 20A328 801DF7C8 C4243050 */  lwc1       $f4, %lo(D_800E3050)($at)
    /* 20A32C 801DF7CC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* 20A330 801DF7D0 000FC080 */  sll        $t8, $t7, 2
    /* 20A334 801DF7D4 00380821 */  addu       $at, $at, $t8
    /* 20A338 801DF7D8 0C0787A2 */  jal        func_801E1E88_ovl15
    /* 20A33C 801DF7DC E424A6E0 */   swc1      $f4, %lo(D_800EA6E0)($at)
    /* 20A340 801DF7E0 8E080000 */  lw         $t0, 0x0($s0)
    /* 20A344 801DF7E4 3C0B800E */  lui        $t3, %hi(D_800E1B50)
    /* 20A348 801DF7E8 3C19801E */  lui        $t9, %hi(D_801D92AC)
    /* 20A34C 801DF7EC 8D090000 */  lw         $t1, 0x0($t0)
    /* 20A350 801DF7F0 273992AC */  addiu      $t9, $t9, %lo(D_801D92AC)
    /* 20A354 801DF7F4 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* 20A358 801DF7F8 00095080 */  sll        $t2, $t1, 2
    /* 20A35C 801DF7FC 016A5821 */  addu       $t3, $t3, $t2
    /* 20A360 801DF800 8D6B1B50 */  lw         $t3, %lo(D_800E1B50)($t3)
    /* 20A364 801DF804 00003025 */  or         $a2, $zero, $zero
    /* 20A368 801DF808 AD79008C */  sw         $t9, 0x8C($t3)
    /* 20A36C 801DF80C 8E0C0000 */  lw         $t4, 0x0($s0)
    /* 20A370 801DF810 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 20A374 801DF814 000D7080 */  sll        $t6, $t5, 2
    /* 20A378 801DF818 006E1821 */  addu       $v1, $v1, $t6
    /* 20A37C 801DF81C 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
    /* 20A380 801DF820 8C640010 */  lw         $a0, 0x10($v1)
    /* 20A384 801DF824 0C078674 */  jal        func_801E19D0_ovl15
    /* 20A388 801DF828 8C650058 */   lw        $a1, 0x58($v1)
    /* 20A38C 801DF82C 8E180000 */  lw         $t8, 0x0($s0)
    /* 20A390 801DF830 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 20A394 801DF834 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
    /* 20A398 801DF838 8F080000 */  lw         $t0, 0x0($t8)
    /* 20A39C 801DF83C 3C0F801E */  lui        $t7, %hi(D_801D906C)
    /* 20A3A0 801DF840 25EF906C */  addiu      $t7, $t7, %lo(D_801D906C)
    /* 20A3A4 801DF844 00084880 */  sll        $t1, $t0, 2
    /* 20A3A8 801DF848 00E95021 */  addu       $t2, $a3, $t1
    /* 20A3AC 801DF84C 8D590000 */  lw         $t9, 0x0($t2)
    /* 20A3B0 801DF850 3C0C800F */  lui        $t4, %hi(D_800E9C60)
    /* 20A3B4 801DF854 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* 20A3B8 801DF858 AF2F008C */  sw         $t7, 0x8C($t9)
    /* 20A3BC 801DF85C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* 20A3C0 801DF860 8D620000 */  lw         $v0, 0x0($t3)
    /* 20A3C4 801DF864 00021080 */  sll        $v0, $v0, 2
    /* 20A3C8 801DF868 01826021 */  addu       $t4, $t4, $v0
    /* 20A3CC 801DF86C 8D8C9C60 */  lw         $t4, %lo(D_800E9C60)($t4)
    /* 20A3D0 801DF870 00621821 */  addu       $v1, $v1, $v0
    /* 20A3D4 801DF874 1180000B */  beqz       $t4, .L801DF8A4_ovl15
    /* 20A3D8 801DF878 00000000 */   nop
    /* 20A3DC 801DF87C 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* 20A3E0 801DF880 00621821 */  addu       $v1, $v1, $v0
    /* 20A3E4 801DF884 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
    /* 20A3E8 801DF888 00003025 */  or         $a2, $zero, $zero
    /* 20A3EC 801DF88C 8C640030 */  lw         $a0, 0x30($v1)
    /* 20A3F0 801DF890 0C078674 */  jal        func_801E19D0_ovl15
    /* 20A3F4 801DF894 8C650034 */   lw        $a1, 0x34($v1)
    /* 20A3F8 801DF898 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 20A3FC 801DF89C 10000008 */  b          .L801DF8C0_ovl15
    /* 20A400 801DF8A0 24E71B50 */   addiu     $a3, $a3, %lo(D_800E1B50)
  .L801DF8A4_ovl15:
    /* 20A404 801DF8A4 8C63FBD0 */  lw         $v1, %lo(D_800DFBD0)($v1)
    /* 20A408 801DF8A8 00003025 */  or         $a2, $zero, $zero
    /* 20A40C 801DF8AC 8C640048 */  lw         $a0, 0x48($v1)
    /* 20A410 801DF8B0 0C078674 */  jal        func_801E19D0_ovl15
    /* 20A414 801DF8B4 8C65004C */   lw        $a1, 0x4C($v1)
    /* 20A418 801DF8B8 3C07800E */  lui        $a3, %hi(D_800E1B50)
    /* 20A41C 801DF8BC 24E71B50 */  addiu      $a3, $a3, %lo(D_800E1B50)
  .L801DF8C0_ovl15:
    /* 20A420 801DF8C0 3C0D800D */  lui        $t5, %hi(D_800D7098)
    /* 20A424 801DF8C4 8DAD7098 */  lw         $t5, %lo(D_800D7098)($t5)
    /* 20A428 801DF8C8 51A0000B */  beql       $t5, $zero, .L801DF8F8_ovl15
    /* 20A42C 801DF8CC 8E190000 */   lw        $t9, 0x0($s0)
    /* 20A430 801DF8D0 8E180000 */  lw         $t8, 0x0($s0)
    /* 20A434 801DF8D4 3C0E801E */  lui        $t6, %hi(D_801D9120)
    /* 20A438 801DF8D8 25CE9120 */  addiu      $t6, $t6, %lo(D_801D9120)
    /* 20A43C 801DF8DC 8F080000 */  lw         $t0, 0x0($t8)
    /* 20A440 801DF8E0 00084880 */  sll        $t1, $t0, 2
    /* 20A444 801DF8E4 00E95021 */  addu       $t2, $a3, $t1
    /* 20A448 801DF8E8 8D4F0000 */  lw         $t7, 0x0($t2)
    /* 20A44C 801DF8EC 10000014 */  b          .L801DF940_ovl15
    /* 20A450 801DF8F0 ADEE008C */   sw        $t6, 0x8C($t7)
    /* 20A454 801DF8F4 8E190000 */  lw         $t9, 0x0($s0)
  .L801DF8F8_ovl15:
    /* 20A458 801DF8F8 3C0B800F */  lui        $t3, %hi(D_800EA1A0)
    /* 20A45C 801DF8FC 3C0C801E */  lui        $t4, %hi(D_801D9120)
    /* 20A460 801DF900 8F220000 */  lw         $v0, 0x0($t9)
    /* 20A464 801DF904 00021080 */  sll        $v0, $v0, 2
    /* 20A468 801DF908 01625821 */  addu       $t3, $t3, $v0
    /* 20A46C 801DF90C 8D6BA1A0 */  lw         $t3, %lo(D_800EA1A0)($t3)
    /* 20A470 801DF910 00E24821 */  addu       $t1, $a3, $v0
    /* 20A474 801DF914 00E26821 */  addu       $t5, $a3, $v0
    /* 20A478 801DF918 51600006 */  beql       $t3, $zero, .L801DF934_ovl15
    /* 20A47C 801DF91C 8D2A0000 */   lw        $t2, 0x0($t1)
    /* 20A480 801DF920 8DB80000 */  lw         $t8, 0x0($t5)
    /* 20A484 801DF924 258C9120 */  addiu      $t4, $t4, %lo(D_801D9120)
    /* 20A488 801DF928 10000005 */  b          .L801DF940_ovl15
    /* 20A48C 801DF92C AF0C008C */   sw        $t4, 0x8C($t8)
    /* 20A490 801DF930 8D2A0000 */  lw         $t2, 0x0($t1)
  .L801DF934_ovl15:
    /* 20A494 801DF934 3C08801E */  lui        $t0, %hi(D_801D90D8)
    /* 20A498 801DF938 250890D8 */  addiu      $t0, $t0, %lo(D_801D90D8)
    /* 20A49C 801DF93C AD48008C */  sw         $t0, 0x8C($t2)
  .L801DF940_ovl15:
    /* 20A4A0 801DF940 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 20A4A4 801DF944 3C0B800E */  lui        $t3, %hi(D_800DFBD0)
    /* 20A4A8 801DF948 00002825 */  or         $a1, $zero, $zero
    /* 20A4AC 801DF94C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 20A4B0 801DF950 00003025 */  or         $a2, $zero, $zero
    /* 20A4B4 801DF954 000FC880 */  sll        $t9, $t7, 2
    /* 20A4B8 801DF958 01795821 */  addu       $t3, $t3, $t9
    /* 20A4BC 801DF95C 8D6BFBD0 */  lw         $t3, %lo(D_800DFBD0)($t3)
    /* 20A4C0 801DF960 0C07861A */  jal        func_801E1868_ovl15
    /* 20A4C4 801DF964 8D640018 */   lw        $a0, 0x18($t3)
    /* 20A4C8 801DF968 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 20A4CC 801DF96C 3C0C800F */  lui        $t4, %hi(D_800E83E0)
    /* 20A4D0 801DF970 24010001 */  addiu      $at, $zero, 0x1
    /* 20A4D4 801DF974 8DA20000 */  lw         $v0, 0x0($t5)
    /* 20A4D8 801DF978 3C18800E */  lui        $t8, %hi(gEntityFuncListIDArray)
    /* 20A4DC 801DF97C 00021080 */  sll        $v0, $v0, 2
    /* 20A4E0 801DF980 01826021 */  addu       $t4, $t4, $v0
    /* 20A4E4 801DF984 8D8C83E0 */  lw         $t4, %lo(D_800E83E0)($t4)
    /* 20A4E8 801DF988 0302C021 */  addu       $t8, $t8, $v0
    /* 20A4EC 801DF98C 15810007 */  bne        $t4, $at, .L801DF9AC_ovl15
    /* 20A4F0 801DF990 00000000 */   nop
    /* 20A4F4 801DF994 8F18DC50 */  lw         $t8, %lo(gEntityFuncListIDArray)($t8)
    /* 20A4F8 801DF998 24010010 */  addiu      $at, $zero, 0x10
    /* 20A4FC 801DF99C 13010003 */  beq        $t8, $at, .L801DF9AC_ovl15
    /* 20A500 801DF9A0 00000000 */   nop
    /* 20A504 801DF9A4 0C077D04 */  jal        func_801DF410_ovl15
    /* 20A508 801DF9A8 8FA40020 */   lw        $a0, 0x20($sp)
  .L801DF9AC_ovl15:
    /* 20A50C 801DF9AC 0C078708 */  jal        func_801E1C20_ovl15
    /* 20A510 801DF9B0 8FA40020 */   lw        $a0, 0x20($sp)
    /* 20A514 801DF9B4 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 20A518 801DF9B8 8FB00018 */  lw         $s0, 0x18($sp)
    /* 20A51C 801DF9BC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 20A520 801DF9C0 03E00008 */  jr         $ra
    /* 20A524 801DF9C4 00000000 */   nop
endlabel func_801DF790_ovl15
.size func_801DF790_ovl15, . - func_801DF790_ovl15
