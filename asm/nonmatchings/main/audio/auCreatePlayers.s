nonmatching auCreatePlayers, 0x548

glabel auCreatePlayers
    /* 2041C 8001F81C 27BDFEF8 */  addiu      $sp, $sp, -0x108
    /* 20420 8001F820 3C038009 */  lui        $v1, %hi(auHeap)
    /* 20424 8001F824 24635DC8 */  addiu      $v1, $v1, %lo(auHeap)
    /* 20428 8001F828 8C6E0004 */  lw         $t6, 0x4($v1)
    /* 2042C 8001F82C 3C018009 */  lui        $at, %hi(auHeapBase)
    /* 20430 8001F830 3C028009 */  lui        $v0, %hi(auCurrentSettings)
    /* 20434 8001F834 AC2E5DD8 */  sw         $t6, %lo(auHeapBase)($at)
    /* 20438 8001F838 8C6F000C */  lw         $t7, 0xC($v1)
    /* 2043C 8001F83C 3C018009 */  lui        $at, %hi(auHeapSize)
    /* 20440 8001F840 244264A0 */  addiu      $v0, $v0, %lo(auCurrentSettings)
    /* 20444 8001F844 AC2F5DDC */  sw         $t7, %lo(auHeapSize)($at)
    /* 20448 8001F848 9058000B */  lbu        $t8, 0xB($v0)
    /* 2044C 8001F84C 9059000A */  lbu        $t9, 0xA($v0)
    /* 20450 8001F850 9049000C */  lbu        $t1, 0xC($v0)
    /* 20454 8001F854 3C0A8002 */  lui        $t2, %hi(auDMANew)
    /* 20458 8001F858 AFBF0054 */  sw         $ra, 0x54($sp)
    /* 2045C 8001F85C 254AE8D0 */  addiu      $t2, $t2, %lo(auDMANew)
    /* 20460 8001F860 AFBE0050 */  sw         $fp, 0x50($sp)
    /* 20464 8001F864 AFB7004C */  sw         $s7, 0x4C($sp)
    /* 20468 8001F868 AFB60048 */  sw         $s6, 0x48($sp)
    /* 2046C 8001F86C AFB50044 */  sw         $s5, 0x44($sp)
    /* 20470 8001F870 AFB40040 */  sw         $s4, 0x40($sp)
    /* 20474 8001F874 AFB3003C */  sw         $s3, 0x3C($sp)
    /* 20478 8001F878 AFB20038 */  sw         $s2, 0x38($sp)
    /* 2047C 8001F87C AFB10034 */  sw         $s1, 0x34($sp)
    /* 20480 8001F880 AFB00030 */  sw         $s0, 0x30($sp)
    /* 20484 8001F884 F7B60028 */  sdc1       $f22, 0x28($sp)
    /* 20488 8001F888 F7B40020 */  sdc1       $f20, 0x20($sp)
    /* 2048C 8001F88C AFAA00F4 */  sw         $t2, 0xF4($sp)
    /* 20490 8001F890 94440008 */  lhu        $a0, 0x8($v0)
    /* 20494 8001F894 AFB800E4 */  sw         $t8, 0xE4($sp)
    /* 20498 8001F898 AFB900E8 */  sw         $t9, 0xE8($sp)
    /* 2049C 8001F89C 0C00D2BC */  jal        osAiSetFrequency
    /* 204A0 8001F8A0 AFA900EC */   sw        $t1, 0xEC($sp)
    /* 204A4 8001F8A4 3C0C8009 */  lui        $t4, %hi(D_800964D0)
    /* 204A8 8001F8A8 918C64D0 */  lbu        $t4, %lo(D_800964D0)($t4)
    /* 204AC 8001F8AC 3C038004 */  lui        $v1, %hi(auCurrentFxType)
    /* 204B0 8001F8B0 3C0B8009 */  lui        $t3, %hi(auHeap)
    /* 204B4 8001F8B4 2463F33C */  addiu      $v1, $v1, %lo(auCurrentFxType)
    /* 204B8 8001F8B8 256B5DC8 */  addiu      $t3, $t3, %lo(auHeap)
    /* 204BC 8001F8BC 3C048009 */  lui        $a0, %hi(auGlobals)
    /* 204C0 8001F8C0 AFA200FC */  sw         $v0, 0xFC($sp)
    /* 204C4 8001F8C4 AFAB00F8 */  sw         $t3, 0xF8($sp)
    /* 204C8 8001F8C8 248463D0 */  addiu      $a0, $a0, %lo(auGlobals)
    /* 204CC 8001F8CC 27A500E4 */  addiu      $a1, $sp, 0xE4
    /* 204D0 8001F8D0 AC6C0000 */  sw         $t4, 0x0($v1)
    /* 204D4 8001F8D4 0C00A85E */  jal        n_alInit
    /* 204D8 8001F8D8 A3AC0100 */   sb        $t4, 0x100($sp)
    /* 204DC 8001F8DC 8FAF00FC */  lw         $t7, 0xFC($sp)
    /* 204E0 8001F8E0 3C0E8000 */  lui        $t6, %hi(osTvType)
    /* 204E4 8001F8E4 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
    /* 204E8 8001F8E8 448F2000 */  mtc1       $t7, $f4
    /* 204EC 8001F8EC 3C058009 */  lui        $a1, %hi(D_80096438)
    /* 204F0 8001F8F0 15C00005 */  bnez       $t6, .L8001F908
    /* 204F4 8001F8F4 468021A0 */   cvt.s.w   $f6, $f4
    /* 204F8 8001F8F8 3C014248 */  lui        $at, (0x42480000 >> 16)
    /* 204FC 8001F8FC 44811000 */  mtc1       $at, $f2
    /* 20500 8001F900 10000005 */  b          .L8001F918
    /* 20504 8001F904 46023003 */   div.s     $f0, $f6, $f2
  .L8001F908:
    /* 20508 8001F908 3C014270 */  lui        $at, (0x42700000 >> 16)
    /* 2050C 8001F90C 44811000 */  mtc1       $at, $f2
    /* 20510 8001F910 00000000 */  nop
    /* 20514 8001F914 46023003 */  div.s      $f0, $f6, $f2
  .L8001F918:
    /* 20518 8001F918 3C028009 */  lui        $v0, %hi(D_8009642C)
    /* 2051C 8001F91C 2442642C */  addiu      $v0, $v0, %lo(D_8009642C)
    /* 20520 8001F920 3C068009 */  lui        $a2, %hi(D_80096434)
    /* 20524 8001F924 24C66434 */  addiu      $a2, $a2, %lo(D_80096434)
    /* 20528 8001F928 24A56438 */  addiu      $a1, $a1, %lo(D_80096438)
    /* 2052C 8001F92C 3C018009 */  lui        $at, %hi(D_80096430)
    /* 20530 8001F930 4600020D */  trunc.w.s  $f8, $f0
    /* 20534 8001F934 44194000 */  mfc1       $t9, $f8
    /* 20538 8001F938 00000000 */  nop
    /* 2053C 8001F93C 03201825 */  or         $v1, $t9, $zero
    /* 20540 8001F940 44835000 */  mtc1       $v1, $f10
    /* 20544 8001F944 AC590000 */  sw         $t9, 0x0($v0)
    /* 20548 8001F948 46805420 */  cvt.s.w    $f16, $f10
    /* 2054C 8001F94C 4600803C */  c.lt.s     $f16, $f0
    /* 20550 8001F950 00000000 */  nop
    /* 20554 8001F954 45000003 */  bc1f       .L8001F964
    /* 20558 8001F958 00000000 */   nop
    /* 2055C 8001F95C 27230001 */  addiu      $v1, $t9, 0x1
    /* 20560 8001F960 AC430000 */  sw         $v1, 0x0($v0)
  .L8001F964:
    /* 20564 8001F964 3C028009 */  lui        $v0, %hi(auCurrentSettings)
    /* 20568 8001F968 ACA30000 */  sw         $v1, 0x0($a1)
    /* 2056C 8001F96C ACC30000 */  sw         $v1, 0x0($a2)
    /* 20570 8001F970 244264A0 */  addiu      $v0, $v0, %lo(auCurrentSettings)
    /* 20574 8001F974 AC236430 */  sw         $v1, %lo(D_80096430)($at)
    /* 20578 8001F978 94440034 */  lhu        $a0, 0x34($v0)
    /* 2057C 8001F97C 904C0031 */  lbu        $t4, 0x31($v0)
    /* 20580 8001F980 904D0032 */  lbu        $t5, 0x32($v0)
    /* 20584 8001F984 904E0033 */  lbu        $t6, 0x33($v0)
    /* 20588 8001F988 A7AC0094 */  sh         $t4, 0x94($sp)
    /* 2058C 8001F98C A7AD0096 */  sh         $t5, 0x96($sp)
    /* 20590 8001F990 10800005 */  beqz       $a0, .L8001F9A8
    /* 20594 8001F994 A7AE0098 */   sh        $t6, 0x98($sp)
    /* 20598 8001F998 8C4F0038 */  lw         $t7, 0x38($v0)
    /* 2059C 8001F99C A7A4009A */  sh         $a0, 0x9A($sp)
    /* 205A0 8001F9A0 10000009 */  b          .L8001F9C8
    /* 205A4 8001F9A4 AFAF00A4 */   sw        $t7, 0xA4($sp)
  .L8001F9A8:
    /* 205A8 8001F9A8 3C038009 */  lui        $v1, %hi(D_80096468)
    /* 205AC 8001F9AC 8C636468 */  lw         $v1, %lo(D_80096468)($v1)
    /* 205B0 8001F9B0 8C78000C */  lw         $t8, 0xC($v1)
    /* 205B4 8001F9B4 8719000E */  lh         $t9, 0xE($t8)
    /* 205B8 8001F9B8 A7B9009A */  sh         $t9, 0x9A($sp)
    /* 205BC 8001F9BC 8C69000C */  lw         $t1, 0xC($v1)
    /* 205C0 8001F9C0 252A0010 */  addiu      $t2, $t1, 0x10
    /* 205C4 8001F9C4 AFAA00A4 */  sw         $t2, 0xA4($sp)
  .L8001F9C8:
    /* 205C8 8001F9C8 8C4B003C */  lw         $t3, 0x3C($v0)
    /* 205CC 8001F9CC 8C4C0040 */  lw         $t4, 0x40($v0)
    /* 205D0 8001F9D0 8C4D0044 */  lw         $t5, 0x44($v0)
    /* 205D4 8001F9D4 944E0048 */  lhu        $t6, 0x48($v0)
    /* 205D8 8001F9D8 944F004A */  lhu        $t7, 0x4A($v0)
    /* 205DC 8001F9DC 9458004C */  lhu        $t8, 0x4C($v0)
    /* 205E0 8001F9E0 90490012 */  lbu        $t1, 0x12($v0)
    /* 205E4 8001F9E4 3C198009 */  lui        $t9, %hi(auHeap)
    /* 205E8 8001F9E8 AFAB00A8 */  sw         $t3, 0xA8($sp)
    /* 205EC 8001F9EC AFAC00AC */  sw         $t4, 0xAC($sp)
    /* 205F0 8001F9F0 AFAD00B0 */  sw         $t5, 0xB0($sp)
    /* 205F4 8001F9F4 A7AE009C */  sh         $t6, 0x9C($sp)
    /* 205F8 8001F9F8 A7AF009E */  sh         $t7, 0x9E($sp)
    /* 205FC 8001F9FC 27395DC8 */  addiu      $t9, $t9, %lo(auHeap)
    /* 20600 8001FA00 240A000A */  addiu      $t2, $zero, 0xA
    /* 20604 8001FA04 240B0014 */  addiu      $t3, $zero, 0x14
    /* 20608 8001FA08 240C001E */  addiu      $t4, $zero, 0x1E
    /* 2060C 8001FA0C 240D0028 */  addiu      $t5, $zero, 0x28
    /* 20610 8001FA10 240E0032 */  addiu      $t6, $zero, 0x32
    /* 20614 8001FA14 240F003C */  addiu      $t7, $zero, 0x3C
    /* 20618 8001FA18 AFB900B4 */  sw         $t9, 0xB4($sp)
    /* 2061C 8001FA1C A7AA00BA */  sh         $t2, 0xBA($sp)
    /* 20620 8001FA20 A7AB00BC */  sh         $t3, 0xBC($sp)
    /* 20624 8001FA24 A7AC00BE */  sh         $t4, 0xBE($sp)
    /* 20628 8001FA28 A7AD00C0 */  sh         $t5, 0xC0($sp)
    /* 2062C 8001FA2C A7AE00C2 */  sh         $t6, 0xC2($sp)
    /* 20630 8001FA30 A7AF00C4 */  sh         $t7, 0xC4($sp)
    /* 20634 8001FA34 27A40094 */  addiu      $a0, $sp, 0x94
    /* 20638 8001FA38 A7B800A0 */  sh         $t8, 0xA0($sp)
    /* 2063C 8001FA3C 0C008D3D */  jal        func_800234F4
    /* 20640 8001FA40 A3A900B8 */   sb        $t1, 0xB8($sp)
    /* 20644 8001FA44 3C188009 */  lui        $t8, %hi(D_800964D3)
    /* 20648 8001FA48 931864D3 */  lbu        $t8, %lo(D_800964D3)($t8)
    /* 2064C 8001FA4C 3C068009 */  lui        $a2, %hi(auHeap)
    /* 20650 8001FA50 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 20654 8001FA54 0018C880 */  sll        $t9, $t8, 2
    /* 20658 8001FA58 AFB90010 */  sw         $t9, 0x10($sp)
    /* 2065C 8001FA5C 00002025 */  or         $a0, $zero, $zero
    /* 20660 8001FA60 00002825 */  or         $a1, $zero, $zero
    /* 20664 8001FA64 0C0078F5 */  jal        alHeapDBAlloc
    /* 20668 8001FA68 24070001 */   addiu     $a3, $zero, 0x1
    /* 2066C 8001FA6C 3C088009 */  lui        $t0, %hi(auCurrentSettings)
    /* 20670 8001FA70 250864A0 */  addiu      $t0, $t0, %lo(auCurrentSettings)
    /* 20674 8001FA74 91090033 */  lbu        $t1, 0x33($t0)
    /* 20678 8001FA78 3C038009 */  lui        $v1, %hi(D_8009646C)
    /* 2067C 8001FA7C 2463646C */  addiu      $v1, $v1, %lo(D_8009646C)
    /* 20680 8001FA80 AC620000 */  sw         $v0, 0x0($v1)
    /* 20684 8001FA84 1920000C */  blez       $t1, .L8001FAB8
    /* 20688 8001FA88 00008825 */   or        $s1, $zero, $zero
    /* 2068C 8001FA8C 00008025 */  or         $s0, $zero, $zero
    /* 20690 8001FA90 8C6A0000 */  lw         $t2, 0x0($v1)
  .L8001FA94:
    /* 20694 8001FA94 26310001 */  addiu      $s1, $s1, 0x1
    /* 20698 8001FA98 01505821 */  addu       $t3, $t2, $s0
    /* 2069C 8001FA9C AD600000 */  sw         $zero, 0x0($t3)
    /* 206A0 8001FAA0 910C0033 */  lbu        $t4, 0x33($t0)
    /* 206A4 8001FAA4 26100004 */  addiu      $s0, $s0, 0x4
    /* 206A8 8001FAA8 022C082A */  slt        $at, $s1, $t4
    /* 206AC 8001FAAC 5420FFF9 */  bnel       $at, $zero, .L8001FA94
    /* 206B0 8001FAB0 8C6A0000 */   lw        $t2, 0x0($v1)
    /* 206B4 8001FAB4 00008825 */  or         $s1, $zero, $zero
  .L8001FAB8:
    /* 206B8 8001FAB8 3C068009 */  lui        $a2, %hi(auHeap)
    /* 206BC 8001FABC 240D0001 */  addiu      $t5, $zero, 0x1
    /* 206C0 8001FAC0 AFAD0010 */  sw         $t5, 0x10($sp)
    /* 206C4 8001FAC4 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 206C8 8001FAC8 00002025 */  or         $a0, $zero, $zero
    /* 206CC 8001FACC 00002825 */  or         $a1, $zero, $zero
    /* 206D0 8001FAD0 0C0078F5 */  jal        alHeapDBAlloc
    /* 206D4 8001FAD4 24070001 */   addiu     $a3, $zero, 0x1
    /* 206D8 8001FAD8 3C018009 */  lui        $at, %hi(auBGMPlayerStatus)
    /* 206DC 8001FADC 3C068009 */  lui        $a2, %hi(auHeap)
    /* 206E0 8001FAE0 240E0004 */  addiu      $t6, $zero, 0x4
    /* 206E4 8001FAE4 AC226488 */  sw         $v0, %lo(auBGMPlayerStatus)($at)
    /* 206E8 8001FAE8 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 206EC 8001FAEC 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 206F0 8001FAF0 00002025 */  or         $a0, $zero, $zero
    /* 206F4 8001FAF4 00002825 */  or         $a1, $zero, $zero
    /* 206F8 8001FAF8 0C0078F5 */  jal        alHeapDBAlloc
    /* 206FC 8001FAFC 24070001 */   addiu     $a3, $zero, 0x1
    /* 20700 8001FB00 3C018009 */  lui        $at, %hi(auBGMSongId)
    /* 20704 8001FB04 3C0F8009 */  lui        $t7, %hi(D_800964B3)
    /* 20708 8001FB08 91EF64B3 */  lbu        $t7, %lo(D_800964B3)($t7)
    /* 2070C 8001FB0C AC22648C */  sw         $v0, %lo(auBGMSongId)($at)
    /* 20710 8001FB10 3C018009 */  lui        $at, %hi(auGlobalSongPriority)
    /* 20714 8001FB14 3C068009 */  lui        $a2, %hi(auHeap)
    /* 20718 8001FB18 24180020 */  addiu      $t8, $zero, 0x20
    /* 2071C 8001FB1C AFB80010 */  sw         $t8, 0x10($sp)
    /* 20720 8001FB20 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 20724 8001FB24 00002025 */  or         $a0, $zero, $zero
    /* 20728 8001FB28 00002825 */  or         $a1, $zero, $zero
    /* 2072C 8001FB2C 24070014 */  addiu      $a3, $zero, 0x14
    /* 20730 8001FB30 0C0078F5 */  jal        alHeapDBAlloc
    /* 20734 8001FB34 A02F6480 */   sb        $t7, %lo(auGlobalSongPriority)($at)
    /* 20738 8001FB38 3C048009 */  lui        $a0, %hi(freeOscStateList)
    /* 2073C 8001FB3C 24846510 */  addiu      $a0, $a0, %lo(freeOscStateList)
    /* 20740 8001FB40 AC820000 */  sw         $v0, 0x0($a0)
    /* 20744 8001FB44 24590014 */  addiu      $t9, $v0, 0x14
    /* 20748 8001FB48 AC590000 */  sw         $t9, 0x0($v0)
    /* 2074C 8001FB4C 8C820000 */  lw         $v0, 0x0($a0)
    /* 20750 8001FB50 2403003C */  addiu      $v1, $zero, 0x3C
    /* 20754 8001FB54 2405026C */  addiu      $a1, $zero, 0x26C
    /* 20758 8001FB58 24490028 */  addiu      $t1, $v0, 0x28
    /* 2075C 8001FB5C AC490014 */  sw         $t1, 0x14($v0)
    /* 20760 8001FB60 8C820000 */  lw         $v0, 0x0($a0)
    /* 20764 8001FB64 00008025 */  or         $s0, $zero, $zero
    /* 20768 8001FB68 3C138009 */  lui        $s3, %hi(auCurrentSettings)
    /* 2076C 8001FB6C 244A003C */  addiu      $t2, $v0, 0x3C
    /* 20770 8001FB70 AC4A0028 */  sw         $t2, 0x28($v0)
  .L8001FB74:
    /* 20774 8001FB74 8C820000 */  lw         $v0, 0x0($a0)
    /* 20778 8001FB78 00625821 */  addu       $t3, $v1, $v0
    /* 2077C 8001FB7C 256C0014 */  addiu      $t4, $t3, 0x14
    /* 20780 8001FB80 00436821 */  addu       $t5, $v0, $v1
    /* 20784 8001FB84 ADAC0000 */  sw         $t4, 0x0($t5)
    /* 20788 8001FB88 8C820000 */  lw         $v0, 0x0($a0)
    /* 2078C 8001FB8C 00627021 */  addu       $t6, $v1, $v0
    /* 20790 8001FB90 25CF0028 */  addiu      $t7, $t6, 0x28
    /* 20794 8001FB94 0043C021 */  addu       $t8, $v0, $v1
    /* 20798 8001FB98 AF0F0014 */  sw         $t7, 0x14($t8)
    /* 2079C 8001FB9C 8C820000 */  lw         $v0, 0x0($a0)
    /* 207A0 8001FBA0 0062C821 */  addu       $t9, $v1, $v0
    /* 207A4 8001FBA4 2729003C */  addiu      $t1, $t9, 0x3C
    /* 207A8 8001FBA8 00435021 */  addu       $t2, $v0, $v1
    /* 207AC 8001FBAC AD490028 */  sw         $t1, 0x28($t2)
    /* 207B0 8001FBB0 8C820000 */  lw         $v0, 0x0($a0)
    /* 207B4 8001FBB4 00625821 */  addu       $t3, $v1, $v0
    /* 207B8 8001FBB8 00436821 */  addu       $t5, $v0, $v1
    /* 207BC 8001FBBC 24630050 */  addiu      $v1, $v1, 0x50
    /* 207C0 8001FBC0 256C0050 */  addiu      $t4, $t3, 0x50
    /* 207C4 8001FBC4 1465FFEB */  bne        $v1, $a1, .L8001FB74
    /* 207C8 8001FBC8 ADAC003C */   sw        $t4, 0x3C($t5)
    /* 207CC 8001FBCC 8C8E0000 */  lw         $t6, 0x0($a0)
    /* 207D0 8001FBD0 3C188002 */  lui        $t8, %hi(initOsc)
    /* 207D4 8001FBD4 3C028002 */  lui        $v0, %hi(updateOsc)
    /* 207D8 8001FBD8 01C37821 */  addu       $t7, $t6, $v1
    /* 207DC 8001FBDC ADE00000 */  sw         $zero, 0x0($t7)
    /* 207E0 8001FBE0 3C198002 */  lui        $t9, %hi(stopOsc)
    /* 207E4 8001FBE4 3C0146F0 */  lui        $at, (0x46F00000 >> 16)
    /* 207E8 8001FBE8 2739F234 */  addiu      $t9, $t9, %lo(stopOsc)
    /* 207EC 8001FBEC 2442ECC0 */  addiu      $v0, $v0, %lo(updateOsc)
    /* 207F0 8001FBF0 2718E9EC */  addiu      $t8, $t8, %lo(initOsc)
    /* 207F4 8001FBF4 3C128009 */  lui        $s2, %hi(auBGMPlayers)
    /* 207F8 8001FBF8 3C148009 */  lui        $s4, %hi(D_8009647C)
    /* 207FC 8001FBFC 3C158009 */  lui        $s5, %hi(auBGMVolumeTimer)
    /* 20800 8001FC00 3C168009 */  lui        $s6, %hi(auBGMVolume)
    /* 20804 8001FC04 3C178009 */  lui        $s7, %hi(auSongVolumeRate)
    /* 20808 8001FC08 4481A000 */  mtc1       $at, $f20
    /* 2080C 8001FC0C 4480B000 */  mtc1       $zero, $f22
    /* 20810 8001FC10 26F76498 */  addiu      $s7, $s7, %lo(auSongVolumeRate)
    /* 20814 8001FC14 26D66494 */  addiu      $s6, $s6, %lo(auBGMVolume)
    /* 20818 8001FC18 26B56490 */  addiu      $s5, $s5, %lo(auBGMVolumeTimer)
    /* 2081C 8001FC1C 2694647C */  addiu      $s4, $s4, %lo(D_8009647C)
    /* 20820 8001FC20 26526478 */  addiu      $s2, $s2, %lo(auBGMPlayers)
    /* 20824 8001FC24 AFB80074 */  sw         $t8, 0x74($sp)
    /* 20828 8001FC28 AFA20070 */  sw         $v0, 0x70($sp)
    /* 2082C 8001FC2C AFB9006C */  sw         $t9, 0x6C($sp)
    /* 20830 8001FC30 267364A0 */  addiu      $s3, $s3, %lo(auCurrentSettings)
    /* 20834 8001FC34 27BE00C8 */  addiu      $fp, $sp, 0xC8
  .L8001FC38:
    /* 20838 8001FC38 3C0A8009 */  lui        $t2, %hi(D_800964AD)
    /* 2083C 8001FC3C 8FA20070 */  lw         $v0, 0x70($sp)
    /* 20840 8001FC40 9269000F */  lbu        $t1, 0xF($s3)
    /* 20844 8001FC44 914A64AD */  lbu        $t2, %lo(D_800964AD)($t2)
    /* 20848 8001FC48 8FAC0074 */  lw         $t4, 0x74($sp)
    /* 2084C 8001FC4C 8FAD006C */  lw         $t5, 0x6C($sp)
    /* 20850 8001FC50 3C068009 */  lui        $a2, %hi(auHeap)
    /* 20854 8001FC54 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 20858 8001FC58 240B0010 */  addiu      $t3, $zero, 0x10
    /* 2085C 8001FC5C 240E0088 */  addiu      $t6, $zero, 0x88
    /* 20860 8001FC60 A3AB00D0 */  sb         $t3, 0xD0($sp)
    /* 20864 8001FC64 AFA600D4 */  sw         $a2, 0xD4($sp)
    /* 20868 8001FC68 AFAE0010 */  sw         $t6, 0x10($sp)
    /* 2086C 8001FC6C 00002025 */  or         $a0, $zero, $zero
    /* 20870 8001FC70 00002825 */  or         $a1, $zero, $zero
    /* 20874 8001FC74 24070001 */  addiu      $a3, $zero, 0x1
    /* 20878 8001FC78 AFA200DC */  sw         $v0, 0xDC($sp)
    /* 2087C 8001FC7C AFA900C8 */  sw         $t1, 0xC8($sp)
    /* 20880 8001FC80 AFAA00CC */  sw         $t2, 0xCC($sp)
    /* 20884 8001FC84 AFAC00D8 */  sw         $t4, 0xD8($sp)
    /* 20888 8001FC88 0C0078F5 */  jal        alHeapDBAlloc
    /* 2088C 8001FC8C AFAD00E0 */   sw        $t5, 0xE0($sp)
    /* 20890 8001FC90 AE420000 */  sw         $v0, 0x0($s2)
    /* 20894 8001FC94 00402025 */  or         $a0, $v0, $zero
    /* 20898 8001FC98 0C00A5B0 */  jal        func_800296C0
    /* 2089C 8001FC9C 03C02825 */   or        $a1, $fp, $zero
    /* 208A0 8001FCA0 3C058009 */  lui        $a1, %hi(auSeqBank)
    /* 208A4 8001FCA4 8CA56470 */  lw         $a1, %lo(auSeqBank)($a1)
    /* 208A8 8001FCA8 0C00B3B0 */  jal        func_8002CEC0
    /* 208AC 8001FCAC 8E440000 */   lw        $a0, 0x0($s2)
    /* 208B0 8001FCB0 3C068009 */  lui        $a2, %hi(auHeap)
    /* 208B4 8001FCB4 240F00F8 */  addiu      $t7, $zero, 0xF8
    /* 208B8 8001FCB8 AFAF0010 */  sw         $t7, 0x10($sp)
    /* 208BC 8001FCBC 24C65DC8 */  addiu      $a2, $a2, %lo(auHeap)
    /* 208C0 8001FCC0 00002025 */  or         $a0, $zero, $zero
    /* 208C4 8001FCC4 00002825 */  or         $a1, $zero, $zero
    /* 208C8 8001FCC8 0C0078F5 */  jal        alHeapDBAlloc
    /* 208CC 8001FCCC 24070001 */   addiu     $a3, $zero, 0x1
    /* 208D0 8001FCD0 AE820000 */  sw         $v0, 0x0($s4)
    /* 208D4 8001FCD4 3C188009 */  lui        $t8, %hi(auBGMPlayerStatus)
    /* 208D8 8001FCD8 8F186488 */  lw         $t8, %lo(auBGMPlayerStatus)($t8)
    /* 208DC 8001FCDC 3C0A8009 */  lui        $t2, %hi(auBGMSongId)
    /* 208E0 8001FCE0 2409FFFF */  addiu      $t1, $zero, -0x1
    /* 208E4 8001FCE4 0311C821 */  addu       $t9, $t8, $s1
    /* 208E8 8001FCE8 A3200000 */  sb         $zero, 0x0($t9)
    /* 208EC 8001FCEC 8D4A648C */  lw         $t2, %lo(auBGMSongId)($t2)
    /* 208F0 8001FCF0 26310001 */  addiu      $s1, $s1, 0x1
    /* 208F4 8001FCF4 24010001 */  addiu      $at, $zero, 0x1
    /* 208F8 8001FCF8 01505821 */  addu       $t3, $t2, $s0
    /* 208FC 8001FCFC AD690000 */  sw         $t1, 0x0($t3)
    /* 20900 8001FD00 26100004 */  addiu      $s0, $s0, 0x4
    /* 20904 8001FD04 26730001 */  addiu      $s3, $s3, 0x1
    /* 20908 8001FD08 26520004 */  addiu      $s2, $s2, 0x4
    /* 2090C 8001FD0C 26940004 */  addiu      $s4, $s4, 0x4
    /* 20910 8001FD10 26B50004 */  addiu      $s5, $s5, 0x4
    /* 20914 8001FD14 26D60004 */  addiu      $s6, $s6, 0x4
    /* 20918 8001FD18 26F70004 */  addiu      $s7, $s7, 0x4
    /* 2091C 8001FD1C AEA0FFFC */  sw         $zero, -0x4($s5)
    /* 20920 8001FD20 E6D4FFFC */  swc1       $f20, -0x4($s6)
    /* 20924 8001FD24 1621FFC4 */  bne        $s1, $at, .L8001FC38
    /* 20928 8001FD28 E6F6FFFC */   swc1      $f22, -0x4($s7)
    /* 2092C 8001FD2C 8FBF0054 */  lw         $ra, 0x54($sp)
    /* 20930 8001FD30 D7B40020 */  ldc1       $f20, 0x20($sp)
    /* 20934 8001FD34 D7B60028 */  ldc1       $f22, 0x28($sp)
    /* 20938 8001FD38 8FB00030 */  lw         $s0, 0x30($sp)
    /* 2093C 8001FD3C 8FB10034 */  lw         $s1, 0x34($sp)
    /* 20940 8001FD40 8FB20038 */  lw         $s2, 0x38($sp)
    /* 20944 8001FD44 8FB3003C */  lw         $s3, 0x3C($sp)
    /* 20948 8001FD48 8FB40040 */  lw         $s4, 0x40($sp)
    /* 2094C 8001FD4C 8FB50044 */  lw         $s5, 0x44($sp)
    /* 20950 8001FD50 8FB60048 */  lw         $s6, 0x48($sp)
    /* 20954 8001FD54 8FB7004C */  lw         $s7, 0x4C($sp)
    /* 20958 8001FD58 8FBE0050 */  lw         $fp, 0x50($sp)
    /* 2095C 8001FD5C 03E00008 */  jr         $ra
    /* 20960 8001FD60 27BD0108 */   addiu     $sp, $sp, 0x108
endlabel auCreatePlayers
.size auCreatePlayers, . - auCreatePlayers
