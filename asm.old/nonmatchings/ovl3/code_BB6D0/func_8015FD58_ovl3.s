glabel func_8015FD58_ovl3
/* C0798 8015FD58 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C079C 8015FD5C AFBF0014 */  sw         $ra, 0x14($sp)
/* C07A0 8015FD60 0C02CC56 */  jal        func_800B3158
/* C07A4 8015FD64 AFA40068 */   sw        $a0, 0x68($sp)
/* C07A8 8015FD68 1040016C */  beqz       $v0, .L8016031C_ovl5
/* C07AC 8015FD6C 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* C07B0 8015FD70 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C07B4 8015FD74 3C04800F */  lui        $a0, %hi(D_800EC2E0)
/* C07B8 8015FD78 2401FFFF */  addiu      $at, $zero, -0x1
/* C07BC 8015FD7C 8C480000 */  lw         $t0, 0x0($v0)
/* C07C0 8015FD80 00081880 */  sll        $v1, $t0, 2
.L8015FD84_ovl5:
/* C07C4 8015FD84 00832021 */  addu       $a0, $a0, $v1
/* C07C8 8015FD88 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
/* C07CC 8015FD8C 10810017 */  beq        $a0, $at, .L8015FDEC_ovl3
/* C07D0 8015FD90 00000000 */   nop
/* C07D4 8015FD94 1480000B */  bnez       $a0, .L8015FDC4_ovl3
/* C07D8 8015FD98 00087140 */   sll       $t6, $t0, 5
/* C07DC 8015FD9C 3C18801A */  lui        $t8, %hi(D_801982F8_ovl3)
/* C07E0 8015FDA0 271882F8 */  addiu      $t8, $t8, %lo(D_801982F8_ovl3)
/* C07E4 8015FDA4 25CFFF80 */  addiu      $t7, $t6, -0x80
/* C07E8 8015FDA8 3C058019 */  lui        $a1, %hi(D_80193728_ovl3)
/* C07EC 8015FDAC 24A53728 */  addiu      $a1, $a1, %lo(D_80193728_ovl3)
/* C07F0 8015FDB0 01F82021 */  addu       $a0, $t7, $t8
.L8015FDB4_ovl5:
/* C07F4 8015FDB4 00003025 */  or         $a2, $zero, $zero
.L8015FDB8_ovl5:
/* C07F8 8015FDB8 0C055754 */  jal        func_80155D50_ovl3
/* C07FC 8015FDBC 01003825 */   or        $a3, $t0, $zero
/* C0800 8015FDC0 14400144 */  bnez       $v0, .L801602D4_ovl3
.L8015FDC4_ovl3:
/* C0804 8015FDC4 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* C0808 8015FDC8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C080C 8015FDCC 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* C0810 8015FDD0 2419FFFF */  addiu      $t9, $zero, -0x1
/* C0814 8015FDD4 8C490000 */  lw         $t1, 0x0($v0)
/* C0818 8015FDD8 00095080 */  sll        $t2, $t1, 2
/* C081C 8015FDDC 002A0821 */  addu       $at, $at, $t2
/* C0820 8015FDE0 AC39C2E0 */  sw         $t9, %lo(D_800EC2E0)($at)
/* C0824 8015FDE4 8C480000 */  lw         $t0, 0x0($v0)
/* C0828 8015FDE8 00081880 */  sll        $v1, $t0, 2
.L8015FDEC_ovl3:
/* C082C 8015FDEC 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
.L8015FDF0_ovl5:
/* C0830 8015FDF0 01635821 */  addu       $t3, $t3, $v1
/* C0834 8015FDF4 8D6B9AA0 */  lw         $t3, %lo(D_800E9AA0)($t3)
/* C0838 8015FDF8 3C048019 */  lui        $a0, %hi(D_80190D90_ovl3)
/* C083C 8015FDFC 24840D90 */  addiu      $a0, $a0, %lo(D_80190D90_ovl3)
glabel func_8015FE00_ovl5
/* C0840 8015FE00 1160001B */  beqz       $t3, .L8015FE70_ovl5
/* C0844 8015FE04 00000000 */   nop
/* C0848 8015FE08 0C0445EF */  jal        func_801117BC
/* C084C 8015FE0C 01002825 */   or        $a1, $t0, $zero
/* C0850 8015FE10 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* C0854 8015FE14 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* C0858 8015FE18 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* C085C 8015FE1C 8C490020 */  lw         $t1, 0x20($v0)
/* C0860 8015FE20 8D8D0000 */  lw         $t5, 0x0($t4)
/* C0864 8015FE24 00402025 */  or         $a0, $v0, $zero
/* C0868 8015FE28 000D7080 */  sll        $t6, $t5, 2
/* C086C 8015FE2C 01EE7821 */  addu       $t7, $t7, $t6
/* C0870 8015FE30 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* C0874 8015FE34 8DF80004 */  lw         $t8, 0x4($t7)
/* C0878 8015FE38 0C044713 */  jal        func_80111C4C
/* C087C 8015FE3C AD380008 */   sw        $t8, 0x8($t1)
/* C0880 8015FE40 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0884 8015FE44 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L8015FE48_ovl5:
/* C0888 8015FE48 3C0B800F */  lui        $t3, %hi(D_800E9AA0)
/* C088C 8015FE4C 256B9AA0 */  addiu      $t3, $t3, %lo(D_800E9AA0)
/* C0890 8015FE50 8C590000 */  lw         $t9, 0x0($v0)
/* C0894 8015FE54 00195080 */  sll        $t2, $t9, 2
/* C0898 8015FE58 014B2021 */  addu       $a0, $t2, $t3
/* C089C 8015FE5C 8C8C0000 */  lw         $t4, 0x0($a0)
/* C08A0 8015FE60 258DFFFF */  addiu      $t5, $t4, -0x1
/* C08A4 8015FE64 AC8D0000 */  sw         $t5, 0x0($a0)
/* C08A8 8015FE68 8C430000 */  lw         $v1, 0x0($v0)
/* C08AC 8015FE6C 00031880 */  sll        $v1, $v1, 2
.L8015FE70_ovl5:
/* C08B0 8015FE70 3C01800E */  lui        $at, %hi(D_800E17D0)
.L8015FE74_ovl5:
/* C08B4 8015FE74 00230821 */  addu       $at, $at, $v1
/* C08B8 8015FE78 C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
/* C08BC 8015FE7C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* C08C0 8015FE80 00230821 */  addu       $at, $at, $v1
/* C08C4 8015FE84 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
/* C08C8 8015FE88 8C430000 */  lw         $v1, 0x0($v0)
/* C08CC 8015FE8C 3C0E800E */  lui        $t6, %hi(D_800E6310)
/* C08D0 8015FE90 3C0F800F */  lui        $t7, %hi(D_800E83E0)
/* C08D4 8015FE94 00031880 */  sll        $v1, $v1, 2
/* C08D8 8015FE98 01C37021 */  addu       $t6, $t6, $v1
/* C08DC 8015FE9C 8DCE6310 */  lw         $t6, %lo(D_800E6310)($t6)
/* C08E0 8015FEA0 01E37821 */  addu       $t7, $t7, $v1
/* C08E4 8015FEA4 15C0010B */  bnez       $t6, .L801602D4_ovl3
/* C08E8 8015FEA8 00000000 */   nop
/* C08EC 8015FEAC 8DEF83E0 */  lw         $t7, %lo(D_800E83E0)($t7)
/* C08F0 8015FEB0 3C18800F */  lui        $t8, %hi(D_800E9720)
/* C08F4 8015FEB4 27189720 */  addiu      $t8, $t8, %lo(D_800E9720)
/* C08F8 8015FEB8 15E00106 */  bnez       $t7, .L801602D4_ovl3
/* C08FC 8015FEBC 00782021 */   addu      $a0, $v1, $t8
/* C0900 8015FEC0 8C850000 */  lw         $a1, 0x0($a0)
/* C0904 8015FEC4 3C0A8019 */  lui        $t2, %hi(D_80197F60_ovl3)
/* C0908 8015FEC8 254A7F60 */  addiu      $t2, $t2, %lo(D_80197F60_ovl3)
/* C090C 8015FECC 24A9FFFF */  addiu      $t1, $a1, -0x1
/* C0910 8015FED0 10A00100 */  beqz       $a1, .L801602D4_ovl3
/* C0914 8015FED4 AC890000 */   sw        $t1, 0x0($a0)
/* C0918 8015FED8 8C430000 */  lw         $v1, 0x0($v0)
/* C091C 8015FEDC 3C0C801A */  lui        $t4, %hi(D_801982F8_ovl3)
/* C0920 8015FEE0 258C82F8 */  addiu      $t4, $t4, %lo(D_801982F8_ovl3)
/* C0924 8015FEE4 2463FFFC */  addiu      $v1, $v1, -0x4
/* C0928 8015FEE8 0003C880 */  sll        $t9, $v1, 2
/* C092C 8015FEEC 0323C823 */  subu       $t9, $t9, $v1
/* C0930 8015FEF0 0019C8C0 */  sll        $t9, $t9, 3
/* C0934 8015FEF4 0323C823 */  subu       $t9, $t9, $v1
/* C0938 8015FEF8 0019C880 */  sll        $t9, $t9, 2
.L8015FEFC_ovl5:
/* C093C 8015FEFC 00035940 */  sll        $t3, $v1, 5
.L8015FF00_ovl5:
/* C0940 8015FF00 016C2821 */  addu       $a1, $t3, $t4
/* C0944 8015FF04 0C05556C */  jal        func_801555B0_ovl3
/* C0948 8015FF08 032A2021 */   addu      $a0, $t9, $t2
/* C094C 8015FF0C 144000F1 */  bnez       $v0, .L801602D4_ovl3
/* C0950 8015FF10 00000000 */   nop
/* C0954 8015FF14 0C058854 */  jal        func_80162150_ovl3
/* C0958 8015FF18 00000000 */   nop
/* C095C 8015FF1C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0960 8015FF20 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C0964 8015FF24 3C0D800F */  lui        $t5, %hi(D_800E8920)
/* C0968 8015FF28 3C0E800F */  lui        $t6, %hi(D_800E9560)
/* C096C 8015FF2C 8C480000 */  lw         $t0, 0x0($v0)
/* C0970 8015FF30 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
/* C0974 8015FF34 00081880 */  sll        $v1, $t0, 2
.L8015FF38_ovl5:
/* C0978 8015FF38 01A36821 */  addu       $t5, $t5, $v1
/* C097C 8015FF3C 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
/* C0980 8015FF40 006E2021 */  addu       $a0, $v1, $t6
/* C0984 8015FF44 15A000E3 */  bnez       $t5, .L801602D4_ovl3
/* C0988 8015FF48 00000000 */   nop
/* C098C 8015FF4C 8C850000 */  lw         $a1, 0x0($a0)
/* C0990 8015FF50 10A00005 */  beqz       $a1, .L8015FF68_ovl5
/* C0994 8015FF54 24AFFFFF */   addiu     $t7, $a1, -0x1
/* C0998 8015FF58 AC8F0000 */  sw         $t7, 0x0($a0)
/* C099C 8015FF5C 8C430000 */  lw         $v1, 0x0($v0)
/* C09A0 8015FF60 100000C5 */  b          .L80160278_ovl3
/* C09A4 8015FF64 00031880 */   sll       $v1, $v1, 2
.L8015FF68_ovl5:
/* C09A8 8015FF68 3C18800E */  lui        $t8, %hi(D_800E1B50 + 0x1C0)
.L8015FF6C_ovl5:
/* C09AC 8015FF6C 27181D10 */  addiu      $t8, $t8, %lo(D_800E1B50 + 0x1C0)
/* C09B0 8015FF70 00782021 */  addu       $a0, $v1, $t8
/* C09B4 8015FF74 8C850000 */  lw         $a1, 0x0($a0)
/* C09B8 8015FF78 10A000BF */  beqz       $a1, .L80160278_ovl3
/* C09BC 8015FF7C 00054880 */   sll       $t1, $a1, 2
/* C09C0 8015FF80 3C19800E */  lui        $t9, %hi(D_800DD710)
/* C09C4 8015FF84 0329C821 */  addu       $t9, $t9, $t1
/* C09C8 8015FF88 8F39D710 */  lw         $t9, %lo(D_800DD710)($t9)
/* C09CC 8015FF8C 2401FFFF */  addiu      $at, $zero, -0x1
/* C09D0 8015FF90 532100B7 */  beql       $t9, $at, .L80160270_ovl3
/* C09D4 8015FF94 AC800000 */   sw        $zero, 0x0($a0)
/* C09D8 8015FF98 0C03E60A */  jal        func_800F9828
/* C09DC 8015FF9C 01002025 */   or        $a0, $t0, $zero
.L8015FFA0_ovl5:
/* C09E0 8015FFA0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C09E4 8015FFA4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C09E8 8015FFA8 E7A0004C */  swc1       $f0, 0x4C($sp)
/* C09EC 8015FFAC 3C0A800E */  lui        $t2, %hi(D_800E1B50 + 0x1C0)
/* C09F0 8015FFB0 8C430000 */  lw         $v1, 0x0($v0)
/* C09F4 8015FFB4 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* C09F8 8015FFB8 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* C09FC 8015FFBC 00031880 */  sll        $v1, $v1, 2
/* C0A00 8015FFC0 01435021 */  addu       $t2, $t2, $v1
/* C0A04 8015FFC4 8D4A1D10 */  lw         $t2, %lo(D_800E1B50 + 0x1C0)($t2)
/* C0A08 8015FFC8 01036821 */  addu       $t5, $t0, $v1
/* C0A0C 8015FFCC C5A80000 */  lwc1       $f8, 0x0($t5)
.L8015FFD0_ovl5:
/* C0A10 8015FFD0 000A5880 */  sll        $t3, $t2, 2
.L8015FFD4_ovl5:
/* C0A14 8015FFD4 010B6021 */  addu       $t4, $t0, $t3
/* C0A18 8015FFD8 C5860000 */  lwc1       $f6, 0x0($t4)
/* C0A1C 8015FFDC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C0A20 8015FFE0 44801000 */  mtc1       $zero, $f2
/* C0A24 8015FFE4 46083281 */  sub.s      $f10, $f6, $f8
/* C0A28 8015FFE8 27A40040 */  addiu      $a0, $sp, 0x40
/* C0A2C 8015FFEC 27A5004C */  addiu      $a1, $sp, 0x4C
/* C0A30 8015FFF0 E7AA0050 */  swc1       $f10, 0x50($sp)
/* C0A34 8015FFF4 8C4E0000 */  lw         $t6, 0x0($v0)
/* C0A38 8015FFF8 000E7880 */  sll        $t7, $t6, 2
/* C0A3C 8015FFFC 002F0821 */  addu       $at, $at, $t7
/* C0A40 80160000 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
/* C0A44 80160004 3C01800E */  lui        $at, %hi(D_800E3210)
/* C0A48 80160008 E7B00040 */  swc1       $f16, 0x40($sp)
.L8016000C_ovl5:
/* C0A4C 8016000C 8C580000 */  lw         $t8, 0x0($v0)
/* C0A50 80160010 E7A20054 */  swc1       $f2, 0x54($sp)
/* C0A54 80160014 E7A20048 */  swc1       $f2, 0x48($sp)
/* C0A58 80160018 00184880 */  sll        $t1, $t8, 2
/* C0A5C 8016001C 00290821 */  addu       $at, $at, $t1
/* C0A60 80160020 C4323210 */  lwc1       $f18, %lo(D_800E3210)($at)
/* C0A64 80160024 0C0063EF */  jal        lbvector_Angle
/* C0A68 80160028 E7B20044 */   swc1      $f18, 0x44($sp)
/* C0A6C 8016002C 3C018019 */  lui        $at, %hi(D_801970B8_ovl3)
/* C0A70 80160030 C42470B8 */  lwc1       $f4, %lo(D_801970B8_ovl3)($at)
/* C0A74 80160034 27A5004C */  addiu      $a1, $sp, 0x4C
/* C0A78 80160038 3C028005 */  lui        $v0, %hi(D_8004A7C4)
.L8016003C_ovl5:
/* C0A7C 8016003C 46040032 */  c.eq.s     $f0, $f4
.L80160040_ovl5:
/* C0A80 80160040 3C018019 */  lui        $at, %hi(D_801970C4_ovl3)
/* C0A84 80160044 45000012 */  bc1f       .L80160090_ovl3
/* C0A88 80160048 00000000 */   nop
/* C0A8C 8016004C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C0A90 80160050 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C0A94 80160054 44803000 */  mtc1       $zero, $f6
/* C0A98 80160058 8C430000 */  lw         $v1, 0x0($v0)
/* C0A9C 8016005C 00031880 */  sll        $v1, $v1, 2
/* C0AA0 80160060 00230821 */  addu       $at, $at, $v1
/* C0AA4 80160064 C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
/* C0AA8 80160068 3C018019 */  lui        $at, %hi(D_801970C0_ovl3)
/* C0AAC 8016006C 4608303C */  c.lt.s     $f6, $f8
/* C0AB0 80160070 00000000 */  nop
/* C0AB4 80160074 45000004 */  bc1f       func_80160088_ovl5
.L80160078_ovl5:
/* C0AB8 80160078 00000000 */   nop
/* C0ABC 8016007C 3C018019 */  lui        $at, %hi(D_801970BC_ovl3)
/* C0AC0 80160080 10000020 */  b          .L80160104_ovl3
/* C0AC4 80160084 C42C70BC */   lwc1      $f12, %lo(D_801970BC_ovl3)($at)
glabel func_80160088_ovl5
/* C0AC8 80160088 1000001E */  b          .L80160104_ovl3
/* C0ACC 8016008C C42C70C0 */   lwc1      $f12, %lo(D_801970C0_ovl3)($at)
.L80160090_ovl3:
/* C0AD0 80160090 C42A70C4 */  lwc1       $f10, %lo(D_801970C4_ovl3)($at)
/* C0AD4 80160094 27A40040 */  addiu      $a0, $sp, 0x40
/* C0AD8 80160098 460A003C */  c.lt.s     $f0, $f10
/* C0ADC 8016009C 00000000 */  nop
/* C0AE0 801600A0 45000009 */  bc1f       .L801600C8_ovl3
/* C0AE4 801600A4 00000000 */   nop
glabel func_801600A8_ovl5
/* C0AE8 801600A8 8CAB0000 */  lw         $t3, 0x0($a1)
/* C0AEC 801600AC 27B90040 */  addiu      $t9, $sp, 0x40
/* C0AF0 801600B0 AF2B0000 */  sw         $t3, 0x0($t9)
/* C0AF4 801600B4 8CAA0004 */  lw         $t2, 0x4($a1)
/* C0AF8 801600B8 AF2A0004 */  sw         $t2, 0x4($t9)
/* C0AFC 801600BC 8CAB0008 */  lw         $t3, 0x8($a1)
/* C0B00 801600C0 10000008 */  b          .L801600E4_ovl3
/* C0B04 801600C4 AF2B0008 */   sw        $t3, 0x8($t9)
.L801600C8_ovl3:
/* C0B08 801600C8 0C0065D0 */  jal        vec3_normalized_cross_product
/* C0B0C 801600CC 27A60034 */   addiu     $a2, $sp, 0x34
/* C0B10 801600D0 3C063DB2 */  lui        $a2, (0x3DB2B8C3 >> 16)
/* C0B14 801600D4 34C6B8C3 */  ori        $a2, $a2, (0x3DB2B8C3 & 0xFFFF)
/* C0B18 801600D8 27A40040 */  addiu      $a0, $sp, 0x40
.L801600DC_ovl5:
/* C0B1C 801600DC 0C00647E */  jal        func_800191F8
/* C0B20 801600E0 27A50034 */   addiu     $a1, $sp, 0x34
.L801600E4_ovl3:
/* C0B24 801600E4 C7AC0044 */  lwc1       $f12, 0x44($sp)
/* C0B28 801600E8 0C0061C3 */  jal        atan2f
/* C0B2C 801600EC C7AE0040 */   lwc1      $f14, 0x40($sp)
/* C0B30 801600F0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0B34 801600F4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
.L801600F8_ovl5:
/* C0B38 801600F8 46000306 */  mov.s      $f12, $f0
/* C0B3C 801600FC 8C430000 */  lw         $v1, 0x0($v0)
/* C0B40 80160100 00031880 */  sll        $v1, $v1, 2
.L80160104_ovl3:
/* C0B44 80160104 3C01800F */  lui        $at, %hi(D_800E9560)
/* C0B48 80160108 00230821 */  addu       $at, $at, $v1
/* C0B4C 8016010C AC209560 */  sw         $zero, %lo(D_800E9560)($at)
/* C0B50 80160110 8C4C0000 */  lw         $t4, 0x0($v0)
.L80160114_ovl5:
/* C0B54 80160114 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
.L80160118_ovl5:
/* C0B58 80160118 3C0140F0 */  lui        $at, (0x40F00000 >> 16)
/* C0B5C 8016011C 000C6880 */  sll        $t5, $t4, 2
glabel func_80160120_ovl5
/* C0B60 80160120 01CD7021 */  addu       $t6, $t6, $t5
/* C0B64 80160124 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
/* C0B68 80160128 31CF0004 */  andi       $t7, $t6, 0x4
/* C0B6C 8016012C 55E00007 */  bnel       $t7, $zero, .L8016014C_ovl3
/* C0B70 80160130 44819000 */   mtc1      $at, $f18
/* C0B74 80160134 3C014170 */  lui        $at, (0x41700000 >> 16)
/* C0B78 80160138 44818000 */  mtc1       $at, $f16
/* C0B7C 8016013C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C0B80 80160140 10000004 */  b          .L80160154_ovl3
/* C0B84 80160144 E4307238 */   swc1      $f16, %lo(D_800D71E8 + 0x50)($at)
/* C0B88 80160148 44819000 */  mtc1       $at, $f18
.L8016014C_ovl3:
/* C0B8C 8016014C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C0B90 80160150 E4327238 */  swc1       $f18, %lo(D_800D71E8 + 0x50)($at)
.L80160154_ovl3:
/* C0B94 80160154 0C00D604 */  jal        cosf
/* C0B98 80160158 E7AC0058 */   swc1      $f12, 0x58($sp)
/* C0B9C 8016015C 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C0BA0 80160160 C4227238 */  lwc1       $f2, %lo(D_800D71E8 + 0x50)($at)
/* C0BA4 80160164 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0BA8 80160168 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C0BAC 8016016C 46020102 */  mul.s      $f4, $f0, $f2
/* C0BB0 80160170 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C0BB4 80160174 8C580000 */  lw         $t8, 0x0($v0)
/* C0BB8 80160178 44804000 */  mtc1       $zero, $f8
/* C0BBC 8016017C 44803000 */  mtc1       $zero, $f6
/* C0BC0 80160180 00184880 */  sll        $t1, $t8, 2
/* C0BC4 80160184 00290821 */  addu       $at, $at, $t1
/* C0BC8 80160188 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
/* C0BCC 8016018C 8C590000 */  lw         $t9, 0x0($v0)
/* C0BD0 80160190 4608103C */  c.lt.s     $f2, $f8
/* C0BD4 80160194 3C01800E */  lui        $at, %hi(D_800E6690)
/* C0BD8 80160198 00195080 */  sll        $t2, $t9, 2
/* C0BDC 8016019C 002A0821 */  addu       $at, $at, $t2
/* C0BE0 801601A0 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* C0BE4 801601A4 45000008 */  bc1f       .L801601C8_ovl3
/* C0BE8 801601A8 E4266690 */   swc1      $f6, %lo(D_800E6690)($at)
/* C0BEC 801601AC 8C4B0000 */  lw         $t3, 0x0($v0)
/* C0BF0 801601B0 3C01800E */  lui        $at, %hi(D_800E6850)
/* C0BF4 801601B4 46001287 */  neg.s      $f10, $f2
/* C0BF8 801601B8 000B6080 */  sll        $t4, $t3, 2
/* C0BFC 801601BC 002C0821 */  addu       $at, $at, $t4
/* C0C00 801601C0 10000006 */  b          .L801601DC_ovl3
/* C0C04 801601C4 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
.L801601C8_ovl3:
/* C0C08 801601C8 8C4D0000 */  lw         $t5, 0x0($v0)
/* C0C0C 801601CC 3C01800E */  lui        $at, %hi(D_800E6850)
/* C0C10 801601D0 000D7080 */  sll        $t6, $t5, 2
/* C0C14 801601D4 002E0821 */  addu       $at, $at, $t6
/* C0C18 801601D8 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
.L801601DC_ovl3:
/* C0C1C 801601DC 0C00B5B8 */  jal        sinf
/* C0C20 801601E0 00000000 */   nop
.L801601E4_ovl5:
/* C0C24 801601E4 3C01800D */  lui        $at, %hi(D_800D71E8 + 0x50)
/* C0C28 801601E8 C4227238 */  lwc1       $f2, %lo(D_800D71E8 + 0x50)($at)
/* C0C2C 801601EC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0C30 801601F0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C0C34 801601F4 46020402 */  mul.s      $f16, $f0, $f2
/* C0C38 801601F8 3C01800E */  lui        $at, %hi(D_800E3210)
/* C0C3C 801601FC 8C4F0000 */  lw         $t7, 0x0($v0)
/* C0C40 80160200 44802000 */  mtc1       $zero, $f4
/* C0C44 80160204 44809000 */  mtc1       $zero, $f18
/* C0C48 80160208 000FC080 */  sll        $t8, $t7, 2
/* C0C4C 8016020C 00380821 */  addu       $at, $at, $t8
/* C0C50 80160210 E4303210 */  swc1       $f16, %lo(D_800E3210)($at)
/* C0C54 80160214 8C490000 */  lw         $t1, 0x0($v0)
/* C0C58 80160218 4604103C */  c.lt.s     $f2, $f4
/* C0C5C 8016021C 3C01800E */  lui        $at, %hi(D_800E3750)
/* C0C60 80160220 0009C880 */  sll        $t9, $t1, 2
/* C0C64 80160224 00390821 */  addu       $at, $at, $t9
/* C0C68 80160228 45000008 */  bc1f       .L8016024C_ovl3
/* C0C6C 8016022C E4323750 */   swc1      $f18, %lo(D_800E3750)($at)
/* C0C70 80160230 8C4A0000 */  lw         $t2, 0x0($v0)
/* C0C74 80160234 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C0C78 80160238 46001187 */  neg.s      $f6, $f2
/* C0C7C 8016023C 000A5880 */  sll        $t3, $t2, 2
/* C0C80 80160240 002B0821 */  addu       $at, $at, $t3
/* C0C84 80160244 10000006 */  b          .L80160260_ovl3
/* C0C88 80160248 E4263C90 */   swc1      $f6, %lo(D_800E3C90)($at)
.L8016024C_ovl3:
/* C0C8C 8016024C 8C4C0000 */  lw         $t4, 0x0($v0)
/* C0C90 80160250 3C01800E */  lui        $at, %hi(D_800E3C90)
/* C0C94 80160254 000C6880 */  sll        $t5, $t4, 2
/* C0C98 80160258 002D0821 */  addu       $at, $at, $t5
/* C0C9C 8016025C E4223C90 */  swc1       $f2, %lo(D_800E3C90)($at)
.L80160260_ovl3:
/* C0CA0 80160260 8C430000 */  lw         $v1, 0x0($v0)
/* C0CA4 80160264 10000004 */  b          .L80160278_ovl3
/* C0CA8 80160268 00031880 */   sll       $v1, $v1, 2
/* C0CAC 8016026C AC800000 */  sw         $zero, 0x0($a0)
.L80160270_ovl3:
/* C0CB0 80160270 8C430000 */  lw         $v1, 0x0($v0)
/* C0CB4 80160274 00031880 */  sll        $v1, $v1, 2
.L80160278_ovl3:
/* C0CB8 80160278 3C01800E */  lui        $at, %hi(D_800E3210)
/* C0CBC 8016027C 00230821 */  addu       $at, $at, $v1
/* C0CC0 80160280 C42C3210 */  lwc1       $f12, %lo(D_800E3210)($at)
/* C0CC4 80160284 3C01800E */  lui        $at, %hi(D_800E64D0)
/* C0CC8 80160288 00230821 */  addu       $at, $at, $v1
/* C0CCC 8016028C 0C0061C3 */  jal        atan2f
/* C0CD0 80160290 C42E64D0 */   lwc1      $f14, %lo(D_800E64D0)($at)
/* C0CD4 80160294 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* C0CD8 80160298 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* C0CDC 8016029C 46000207 */  neg.s      $f8, $f0
/* C0CE0 801602A0 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
/* C0CE4 801602A4 8C4E0000 */  lw         $t6, 0x0($v0)
/* C0CE8 801602A8 3C048019 */  lui        $a0, %hi(D_80190D90_ovl3)
/* C0CEC 801602AC 24840D90 */  addiu      $a0, $a0, %lo(D_80190D90_ovl3)
/* C0CF0 801602B0 000E7880 */  sll        $t7, $t6, 2
/* C0CF4 801602B4 002F0821 */  addu       $at, $at, $t7
.L801602B8_ovl5:
/* C0CF8 801602B8 E4284010 */  swc1       $f8, %lo(gEntitiesAngleXArray)($at)
/* C0CFC 801602BC 0C0445EF */  jal        func_801117BC
.L801602C0_ovl5:
/* C0D00 801602C0 8C450000 */   lw        $a1, 0x0($v0)
/* C0D04 801602C4 0C044713 */  jal        func_80111C4C
/* C0D08 801602C8 00402025 */   or        $a0, $v0, $zero
/* C0D0C 801602CC 10000027 */  b          .L8016036C_ovl3
/* C0D10 801602D0 8FBF0014 */   lw        $ra, 0x14($sp)
.L801602D4_ovl3:
/* C0D14 801602D4 0C029D9E */  jal        play_sound
/* C0D18 801602D8 2404000E */   addiu     $a0, $zero, 0xE
/* C0D1C 801602DC 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* C0D20 801602E0 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* C0D24 801602E4 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* C0D28 801602E8 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* C0D2C 801602EC 8F030000 */  lw         $v1, 0x0($t8)
/* C0D30 801602F0 3C05800E */  lui        $a1, %hi(gEntitiesNextPosXArray)
/* C0D34 801602F4 3C07800E */  lui        $a3, %hi(gEntitiesNextPosZArray)
/* C0D38 801602F8 00031880 */  sll        $v1, $v1, 2
/* C0D3C 801602FC 00A32821 */  addu       $a1, $a1, $v1
/* C0D40 80160300 01034821 */  addu       $t1, $t0, $v1
/* C0D44 80160304 00E33821 */  addu       $a3, $a3, $v1
/* C0D48 80160308 8CE72950 */  lw         $a3, %lo(gEntitiesNextPosZArray)($a3)
/* C0D4C 8016030C 8D260000 */  lw         $a2, 0x0($t1)
/* C0D50 80160310 8CA525D0 */  lw         $a1, %lo(gEntitiesNextPosXArray)($a1)
.L80160314_ovl5:
/* C0D54 80160314 0C03F5D5 */  jal        func_800FD754
/* C0D58 80160318 00002025 */   or        $a0, $zero, $zero
.L8016031C_ovl5:
/* C0D5C 8016031C 3C02801A */  lui        $v0, %hi(D_80198830_ovl3)
/* C0D60 80160320 24428830 */  addiu      $v0, $v0, %lo(D_80198830_ovl3)
.L80160324_ovl5:
/* C0D64 80160324 8C59000C */  lw         $t9, 0xC($v0)
/* C0D68 80160328 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* C0D6C 8016032C 272AFFFF */  addiu      $t2, $t9, -0x1
/* C0D70 80160330 15400009 */  bnez       $t2, .L80160358_ovl3
/* C0D74 80160334 AC4A000C */   sw        $t2, 0xC($v0)
/* C0D78 80160338 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* C0D7C 8016033C 3C04800F */  lui        $a0, %hi(D_800EA360)
/* C0D80 80160340 8D8D0000 */  lw         $t5, 0x0($t4)
/* C0D84 80160344 000D7080 */  sll        $t6, $t5, 2
/* C0D88 80160348 008E2021 */  addu       $a0, $a0, $t6
/* C0D8C 8016034C 8C84A360 */  lw         $a0, %lo(D_800EA360)($a0)
/* C0D90 80160350 0C029E1C */  jal        func_800A7870
/* C0D94 80160354 24850004 */   addiu     $a1, $a0, 0x4
.L80160358_ovl3:
/* C0D98 80160358 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* C0D9C 8016035C 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* C0DA0 80160360 0C02C640 */  jal        func_800B1900
/* C0DA4 80160364 95E40002 */   lhu       $a0, 0x2($t7)
/* C0DA8 80160368 8FBF0014 */  lw         $ra, 0x14($sp)
.L8016036C_ovl3:
/* C0DAC 8016036C 27BD0068 */  addiu      $sp, $sp, 0x68
/* C0DB0 80160370 03E00008 */  jr         $ra
/* C0DB4 80160374 00000000 */   nop
