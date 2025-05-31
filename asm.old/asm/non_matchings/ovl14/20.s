.late_rodata
 glabel jtbl_801E308C
 /* 205C7C 801E308C */ .word L801DC738_ovl14
 /* 205C80 801E3090 */ .word L801DC760_ovl14
 /* 205C84 801E3094 */ .word L801DC788_ovl14
 /* 205C88 801E3098 */ .word L801DC7AC_ovl14
 /* 205C8C 801E309C */ .word L801DC7D4_ovl14

.text
glabel func_801DC674_ovl14 # 20
/* 1FF264 801DC674 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 1FF268 801DC678 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FF26C 801DC67C AFA40020 */  sw          $a0, 0x20($sp)
/* 1FF270 801DC680 00A03825 */  move        $a3, $a1
/* 1FF274 801DC684 AFA70024 */  sw          $a3, 0x24($sp)
/* 1FF278 801DC688 2405001E */  addiu       $a1, $zero, 0x1E
/* 1FF27C 801DC68C 2404001A */  addiu       $a0, $zero, 0x1A
/* 1FF280 801DC690 0C02BB02 */  jal         request_track_general
/* 1FF284 801DC694 24060050 */   addiu      $a2, $zero, 0x50
/* 1FF288 801DC698 2841003C */  slti        $at, $v0, 0x3C
/* 1FF28C 801DC69C 8FA30020 */  lw          $v1, 0x20($sp)
/* 1FF290 801DC6A0 8FA70024 */  lw          $a3, 0x24($sp)
/* 1FF294 801DC6A4 10200004 */  beqz        $at, .L801DC6B8
/* 1FF298 801DC6A8 AFA2001C */   sw         $v0, 0x1C($sp)
/* 1FF29C 801DC6AC 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FF2A0 801DC6B0 14410009 */  bne         $v0, $at, .L801DC6D8
/* 1FF2A4 801DC6B4 240E00FF */   addiu      $t6, $zero, 0xFF
.L801DC6B8:
/* 1FF2A8 801DC6B8 3C04801E */  lui         $a0, %hi(D_801E2FC4_ovl14)
/* 1FF2AC 801DC6BC 24842FC4 */  addiu       $a0, $a0, %lo(D_801E2FC4_ovl14)
/* 1FF2B0 801DC6C0 0C02909C */  jal         print_error_stub
/* 1FF2B4 801DC6C4 8FA5001C */   lw         $a1, 0x1C($sp)
/* 1FF2B8 801DC6C8 0C02C640 */  jal         func_800B1900
/* 1FF2BC 801DC6CC 97A4001E */   lhu        $a0, 0x1E($sp)
/* 1FF2C0 801DC6D0 1000009C */  b           .L801DC944
/* 1FF2C4 801DC6D4 2402FFFF */   addiu      $v0, $zero, -0x1
.L801DC6D8:
/* 1FF2C8 801DC6D8 3C01800E */  lui         $at, %hi(D_800E76C0)
/* 1FF2CC 801DC6DC 00220821 */  addu        $at, $at, $v0
/* 1FF2D0 801DC6E0 A02E76C0 */  sb          $t6, %lo(D_800E76C0)($at)
/* 1FF2D4 801DC6E4 3C01800E */  lui         $at, %hi(D_800E7730)
/* 1FF2D8 801DC6E8 00220821 */  addu        $at, $at, $v0
/* 1FF2DC 801DC6EC 240F0004 */  addiu       $t7, $zero, 0x4
/* 1FF2E0 801DC6F0 A02F7730 */  sb          $t7, %lo(D_800E7730)($at)
/* 1FF2E4 801DC6F4 3C01800E */  lui         $at, %hi(D_800E77A0)
/* 1FF2E8 801DC6F8 0002C840 */  sll         $t9, $v0, 1
/* 1FF2EC 801DC6FC 00390821 */  addu        $at, $at, $t9
/* 1FF2F0 801DC700 2418002B */  addiu       $t8, $zero, 0x2B
/* 1FF2F4 801DC704 A43877A0 */  sh          $t8, %lo(D_800E77A0)($at)
/* 1FF2F8 801DC708 3C01800E */  lui         $at, %hi(D_800E7880)
/* 1FF2FC 801DC70C 00220821 */  addu        $at, $at, $v0
/* 1FF300 801DC710 1460003A */  bnez        $v1, .L801DC7FC
/* 1FF304 801DC714 A0237880 */   sb         $v1, %lo(D_800E7880)($at)
/* 1FF308 801DC718 2CE10005 */  sltiu       $at, $a3, 0x5
/* 1FF30C 801DC71C 10200067 */  beqz        $at, .L801DC8BC
/* 1FF310 801DC720 00074080 */   sll        $t0, $a3, 2
/* 1FF314 801DC724 3C01801E */  lui         $at, %hi(jtbl_801E308C)
/* 1FF318 801DC728 00280821 */  addu        $at, $at, $t0
/* 1FF31C 801DC72C 8C28308C */  lw          $t0, %lo(jtbl_801E308C)($at)
/* 1FF320 801DC730 01000008 */  jr          $t0
/* 1FF324 801DC734 00000000 */   nop
glabel L801DC738_ovl14
/* 1FF328 801DC738 3C01C3A0 */  lui         $at, (0xC3A00000 >> 16)
/* 1FF32C 801DC73C 44810000 */  mtc1        $at, $f0
/* 1FF330 801DC740 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF334 801DC744 00021880 */  sll         $v1, $v0, 2
/* 1FF338 801DC748 00230821 */  addu        $at, $at, $v1
/* 1FF33C 801DC74C E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF340 801DC750 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF344 801DC754 00230821 */  addu        $at, $at, $v1
/* 1FF348 801DC758 10000058 */  b           .L801DC8BC
/* 1FF34C 801DC75C E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
glabel L801DC760_ovl14
/* 1FF350 801DC760 3C01C320 */  lui         $at, (0xC3200000 >> 16)
/* 1FF354 801DC764 44810000 */  mtc1        $at, $f0
/* 1FF358 801DC768 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF35C 801DC76C 00021880 */  sll         $v1, $v0, 2
/* 1FF360 801DC770 00230821 */  addu        $at, $at, $v1
/* 1FF364 801DC774 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF368 801DC778 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF36C 801DC77C 00230821 */  addu        $at, $at, $v1
/* 1FF370 801DC780 1000004E */  b           .L801DC8BC
/* 1FF374 801DC784 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
glabel L801DC788_ovl14
/* 1FF378 801DC788 44800000 */  mtc1        $zero, $f0
/* 1FF37C 801DC78C 00021880 */  sll         $v1, $v0, 2
/* 1FF380 801DC790 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF384 801DC794 00230821 */  addu        $at, $at, $v1
/* 1FF388 801DC798 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF38C 801DC79C 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF390 801DC7A0 00230821 */  addu        $at, $at, $v1
/* 1FF394 801DC7A4 10000045 */  b           .L801DC8BC
/* 1FF398 801DC7A8 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
glabel L801DC7AC_ovl14
/* 1FF39C 801DC7AC 3C014320 */  lui         $at, (0x43200000 >> 16)
/* 1FF3A0 801DC7B0 44810000 */  mtc1        $at, $f0
/* 1FF3A4 801DC7B4 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF3A8 801DC7B8 00021880 */  sll         $v1, $v0, 2
/* 1FF3AC 801DC7BC 00230821 */  addu        $at, $at, $v1
/* 1FF3B0 801DC7C0 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF3B4 801DC7C4 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF3B8 801DC7C8 00230821 */  addu        $at, $at, $v1
/* 1FF3BC 801DC7CC 1000003B */  b           .L801DC8BC
/* 1FF3C0 801DC7D0 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
glabel L801DC7D4_ovl14
/* 1FF3C4 801DC7D4 3C0143A0 */  lui         $at, (0x43A00000 >> 16)
/* 1FF3C8 801DC7D8 44810000 */  mtc1        $at, $f0
/* 1FF3CC 801DC7DC 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF3D0 801DC7E0 00021880 */  sll         $v1, $v0, 2
/* 1FF3D4 801DC7E4 00230821 */  addu        $at, $at, $v1
/* 1FF3D8 801DC7E8 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF3DC 801DC7EC 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF3E0 801DC7F0 00230821 */  addu        $at, $at, $v1
/* 1FF3E4 801DC7F4 10000031 */  b           .L801DC8BC
/* 1FF3E8 801DC7F8 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
.L801DC7FC:
/* 1FF3EC 801DC7FC 10E0000C */  beqz        $a3, .L801DC830
/* 1FF3F0 801DC800 3C01C370 */   lui        $at, (0xC3700000 >> 16)
/* 1FF3F4 801DC804 24010001 */  addiu       $at, $zero, 0x1
/* 1FF3F8 801DC808 10E10012 */  beq         $a3, $at, .L801DC854
/* 1FF3FC 801DC80C 00021880 */   sll        $v1, $v0, 2
/* 1FF400 801DC810 24010002 */  addiu       $at, $zero, 0x2
/* 1FF404 801DC814 10E10018 */  beq         $a3, $at, .L801DC878
/* 1FF408 801DC818 00021880 */   sll        $v1, $v0, 2
/* 1FF40C 801DC81C 24010003 */  addiu       $at, $zero, 0x3
/* 1FF410 801DC820 10E1001E */  beq         $a3, $at, .L801DC89C
/* 1FF414 801DC824 00021880 */   sll        $v1, $v0, 2
/* 1FF418 801DC828 10000024 */  b           .L801DC8BC
/* 1FF41C 801DC82C 00000000 */   nop
.L801DC830:
/* 1FF420 801DC830 44810000 */  mtc1        $at, $f0
/* 1FF424 801DC834 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF428 801DC838 00021880 */  sll         $v1, $v0, 2
/* 1FF42C 801DC83C 00230821 */  addu        $at, $at, $v1
/* 1FF430 801DC840 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF434 801DC844 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF438 801DC848 00230821 */  addu        $at, $at, $v1
/* 1FF43C 801DC84C 1000001B */  b           .L801DC8BC
/* 1FF440 801DC850 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
.L801DC854:
/* 1FF444 801DC854 3C01C2A0 */  lui         $at, (0xC2A00000 >> 16)
/* 1FF448 801DC858 44810000 */  mtc1        $at, $f0
/* 1FF44C 801DC85C 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF450 801DC860 00230821 */  addu        $at, $at, $v1
/* 1FF454 801DC864 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF458 801DC868 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF45C 801DC86C 00230821 */  addu        $at, $at, $v1
/* 1FF460 801DC870 10000012 */  b           .L801DC8BC
/* 1FF464 801DC874 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
.L801DC878:
/* 1FF468 801DC878 3C0142A0 */  lui         $at, (0x42A00000 >> 16)
/* 1FF46C 801DC87C 44810000 */  mtc1        $at, $f0
/* 1FF470 801DC880 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF474 801DC884 00230821 */  addu        $at, $at, $v1
/* 1FF478 801DC888 E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF47C 801DC88C 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF480 801DC890 00230821 */  addu        $at, $at, $v1
/* 1FF484 801DC894 10000009 */  b           .L801DC8BC
/* 1FF488 801DC898 E42025D0 */   swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
.L801DC89C:
/* 1FF48C 801DC89C 3C014370 */  lui         $at, (0x43700000 >> 16)
/* 1FF490 801DC8A0 44810000 */  mtc1        $at, $f0
/* 1FF494 801DC8A4 3C01800E */  lui         $at, %hi(gEntitiesPosXArray)
/* 1FF498 801DC8A8 00230821 */  addu        $at, $at, $v1
/* 1FF49C 801DC8AC E4202B10 */  swc1        $f0, %lo(gEntitiesPosXArray)($at)
/* 1FF4A0 801DC8B0 3C01800E */  lui         $at, %hi(gEntitiesNextPosXArray)
/* 1FF4A4 801DC8B4 00230821 */  addu        $at, $at, $v1
/* 1FF4A8 801DC8B8 E42025D0 */  swc1        $f0, %lo(gEntitiesNextPosXArray)($at)
.L801DC8BC:
/* 1FF4AC 801DC8BC 3C048005 */  lui         $a0, %hi(D_8004A7C4)
/* 1FF4B0 801DC8C0 8C84A7C4 */  lw          $a0, %lo(D_8004A7C4)($a0)
/* 1FF4B4 801DC8C4 3C05800E */  lui         $a1, %hi(gEntitiesNextPosYArray)
/* 1FF4B8 801DC8C8 8FA3001C */  lw          $v1, 0x1C($sp)
/* 1FF4BC 801DC8CC 8C890000 */  lw          $t1, 0x0($a0)
/* 1FF4C0 801DC8D0 24A52790 */  addiu       $a1, $a1, %lo(gEntitiesNextPosYArray)
/* 1FF4C4 801DC8D4 3C01800E */  lui         $at, %hi(gEntitiesPosYArray)
/* 1FF4C8 801DC8D8 00095080 */  sll         $t2, $t1, 2
/* 1FF4CC 801DC8DC 00AA5821 */  addu        $t3, $a1, $t2
/* 1FF4D0 801DC8E0 C5600000 */  lwc1        $f0, 0x0($t3)
/* 1FF4D4 801DC8E4 00031880 */  sll         $v1, $v1, 2
/* 1FF4D8 801DC8E8 00230821 */  addu        $at, $at, $v1
/* 1FF4DC 801DC8EC 00A36021 */  addu        $t4, $a1, $v1
/* 1FF4E0 801DC8F0 E4202CD0 */  swc1        $f0, %lo(gEntitiesPosYArray)($at)
/* 1FF4E4 801DC8F4 E5800000 */  swc1        $f0, 0x0($t4)
/* 1FF4E8 801DC8F8 8C8D0000 */  lw          $t5, 0x0($a0)
/* 1FF4EC 801DC8FC 3C06800E */  lui         $a2, %hi(gEntitiesNextPosZArray)
/* 1FF4F0 801DC900 24C62950 */  addiu       $a2, $a2, %lo(gEntitiesNextPosZArray)
/* 1FF4F4 801DC904 000D7080 */  sll         $t6, $t5, 2
/* 1FF4F8 801DC908 00CE7821 */  addu        $t7, $a2, $t6
/* 1FF4FC 801DC90C C5E00000 */  lwc1        $f0, 0x0($t7)
/* 1FF500 801DC910 3C01800E */  lui         $at, %hi(gEntitiesPosZArray)
/* 1FF504 801DC914 00230821 */  addu        $at, $at, $v1
/* 1FF508 801DC918 E4202E90 */  swc1        $f0, %lo(gEntitiesPosZArray)($at)
/* 1FF50C 801DC91C 00C3C021 */  addu        $t8, $a2, $v1
/* 1FF510 801DC920 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1FF514 801DC924 00230821 */  addu        $at, $at, $v1
/* 1FF518 801DC928 24190001 */  addiu       $t9, $zero, 0x1
/* 1FF51C 801DC92C E7000000 */  swc1        $f0, 0x0($t8)
/* 1FF520 801DC930 AC398E60 */  sw          $t9, %lo(D_800E8E60)($at)
/* 1FF524 801DC934 3C01800F */  lui         $at, %hi(D_800EC2E0)
/* 1FF528 801DC938 00230821 */  addu        $at, $at, $v1
/* 1FF52C 801DC93C AC27C2E0 */  sw          $a3, %lo(D_800EC2E0)($at)
/* 1FF530 801DC940 8FA2001C */  lw          $v0, 0x1C($sp)
.L801DC944:
/* 1FF534 801DC944 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FF538 801DC948 27BD0020 */  addiu       $sp, $sp, 0x20
/* 1FF53C 801DC94C 03E00008 */  jr          $ra
/* 1FF540 801DC950 00000000 */   nop
.type func_801DC674_ovl14, @function
.size func_801DC674_ovl14, . - func_801DC674_ovl14
