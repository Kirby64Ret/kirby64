nonmatching func_801DC594_ovl15, 0x2FC

glabel func_801DC594_ovl15
    /* 2070F4 801DC594 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 2070F8 801DC598 AFB00018 */  sw         $s0, 0x18($sp)
    /* 2070FC 801DC59C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* 207100 801DC5A0 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* 207104 801DC5A4 8E020000 */  lw         $v0, 0x0($s0)
    /* 207108 801DC5A8 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 20710C 801DC5AC AFA40020 */  sw         $a0, 0x20($sp)
    /* 207110 801DC5B0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 207114 801DC5B4 3C0E800B */  lui        $t6, %hi(func_800B7560)
    /* 207118 801DC5B8 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 20711C 801DC5BC 000FC080 */  sll        $t8, $t7, 2
    /* 207120 801DC5C0 00380821 */  addu       $at, $at, $t8
    /* 207124 801DC5C4 25CE7560 */  addiu      $t6, $t6, %lo(func_800B7560)
    /* 207128 801DC5C8 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
    /* 20712C 801DC5CC 8C480000 */  lw         $t0, 0x0($v0)
    /* 207130 801DC5D0 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 207134 801DC5D4 3C19801E */  lui        $t9, %hi(func_801DC890_ovl15)
    /* 207138 801DC5D8 00084880 */  sll        $t1, $t0, 2
    /* 20713C 801DC5DC 00290821 */  addu       $at, $at, $t1
    /* 207140 801DC5E0 2739C890 */  addiu      $t9, $t9, %lo(func_801DC890_ovl15)
    /* 207144 801DC5E4 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* 207148 801DC5E8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 20714C 801DC5EC 3C0D800E */  lui        $t5, %hi(D_800E1B50)
    /* 207150 801DC5F0 3C0A801E */  lui        $t2, %hi(D_801D8E08)
    /* 207154 801DC5F4 000B6080 */  sll        $t4, $t3, 2
    /* 207158 801DC5F8 01AC6821 */  addu       $t5, $t5, $t4
    /* 20715C 801DC5FC 8DAD1B50 */  lw         $t5, %lo(D_800E1B50)($t5)
    /* 207160 801DC600 254A8E08 */  addiu      $t2, $t2, %lo(D_801D8E08)
    /* 207164 801DC604 3C0F800E */  lui        $t7, %hi(D_800E0D50)
    /* 207168 801DC608 ADAA008C */  sw         $t2, 0x8C($t5)
    /* 20716C 801DC60C 8E020000 */  lw         $v0, 0x0($s0)
    /* 207170 801DC610 3C05800E */  lui        $a1, %hi(gEntitiesNextPosXArray)
    /* 207174 801DC614 24A525D0 */  addiu      $a1, $a1, %lo(gEntitiesNextPosXArray)
    /* 207178 801DC618 8C430000 */  lw         $v1, 0x0($v0)
    /* 20717C 801DC61C 44803000 */  mtc1       $zero, $f6
    /* 207180 801DC620 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
    /* 207184 801DC624 00031880 */  sll        $v1, $v1, 2
    /* 207188 801DC628 01E37821 */  addu       $t7, $t7, $v1
    /* 20718C 801DC62C 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
    /* 207190 801DC630 00A34021 */  addu       $t0, $a1, $v1
    /* 207194 801DC634 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
    /* 207198 801DC638 000F7080 */  sll        $t6, $t7, 2
    /* 20719C 801DC63C 00AEC021 */  addu       $t8, $a1, $t6
    /* 2071A0 801DC640 C7040000 */  lwc1       $f4, 0x0($t8)
    /* 2071A4 801DC644 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 2071A8 801DC648 24040002 */  addiu      $a0, $zero, 0x2
    /* 2071AC 801DC64C E5040000 */  swc1       $f4, 0x0($t0)
    /* 2071B0 801DC650 8C590000 */  lw         $t9, 0x0($v0)
    /* 2071B4 801DC654 00194880 */  sll        $t1, $t9, 2
    /* 2071B8 801DC658 00C95821 */  addu       $t3, $a2, $t1
    /* 2071BC 801DC65C E5660000 */  swc1       $f6, 0x0($t3)
    /* 2071C0 801DC660 8C430000 */  lw         $v1, 0x0($v0)
    /* 2071C4 801DC664 00031880 */  sll        $v1, $v1, 2
    /* 2071C8 801DC668 00C36021 */  addu       $t4, $a2, $v1
    /* 2071CC 801DC66C C5880000 */  lwc1       $f8, 0x0($t4)
    /* 2071D0 801DC670 00230821 */  addu       $at, $at, $v1
    /* 2071D4 801DC674 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 2071D8 801DC678 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 2071DC 801DC67C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 2071E0 801DC680 000A6880 */  sll        $t5, $t2, 2
    /* 2071E4 801DC684 002D0821 */  addu       $at, $at, $t5
    /* 2071E8 801DC688 AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
    /* 2071EC 801DC68C 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 2071F0 801DC690 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 2071F4 801DC694 000F7080 */  sll        $t6, $t7, 2
    /* 2071F8 801DC698 002E0821 */  addu       $at, $at, $t6
    /* 2071FC 801DC69C AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
    /* 207200 801DC6A0 8C580000 */  lw         $t8, 0x0($v0)
    /* 207204 801DC6A4 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 207208 801DC6A8 00184080 */  sll        $t0, $t8, 2
    /* 20720C 801DC6AC 00280821 */  addu       $at, $at, $t0
    /* 207210 801DC6B0 0C006291 */  jal        random_soft_s32_range
    /* 207214 801DC6B4 AC20A1A0 */   sw        $zero, %lo(D_800EA1A0)($at)
    /* 207218 801DC6B8 5040000B */  beql       $v0, $zero, .L801DC6E8_ovl15
    /* 20721C 801DC6BC 8E020000 */   lw        $v0, 0x0($s0)
    /* 207220 801DC6C0 8E020000 */  lw         $v0, 0x0($s0)
    /* 207224 801DC6C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 207228 801DC6C8 44815000 */  mtc1       $at, $f10
    /* 20722C 801DC6CC 8C590000 */  lw         $t9, 0x0($v0)
    /* 207230 801DC6D0 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 207234 801DC6D4 00194880 */  sll        $t1, $t9, 2
    /* 207238 801DC6D8 00290821 */  addu       $at, $at, $t1
    /* 20723C 801DC6DC 10000009 */  b          .L801DC704_ovl15
    /* 207240 801DC6E0 E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
    /* 207244 801DC6E4 8E020000 */  lw         $v0, 0x0($s0)
  .L801DC6E8_ovl15:
    /* 207248 801DC6E8 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 20724C 801DC6EC 44818000 */  mtc1       $at, $f16
    /* 207250 801DC6F0 8C4B0000 */  lw         $t3, 0x0($v0)
    /* 207254 801DC6F4 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 207258 801DC6F8 000B6080 */  sll        $t4, $t3, 2
    /* 20725C 801DC6FC 002C0821 */  addu       $at, $at, $t4
    /* 207260 801DC700 E4306A10 */  swc1       $f16, %lo(D_800E6A10)($at)
  .L801DC704_ovl15:
    /* 207264 801DC704 8C430000 */  lw         $v1, 0x0($v0)
    /* 207268 801DC708 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 20726C 801DC70C 24040010 */  addiu      $a0, $zero, 0x10
    /* 207270 801DC710 00031880 */  sll        $v1, $v1, 2
    /* 207274 801DC714 00230821 */  addu       $at, $at, $v1
    /* 207278 801DC718 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* 20727C 801DC71C 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* 207280 801DC720 44812000 */  mtc1       $at, $f4
    /* 207284 801DC724 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 207288 801DC728 00230821 */  addu       $at, $at, $v1
    /* 20728C 801DC72C 46049182 */  mul.s      $f6, $f18, $f4
    /* 207290 801DC730 0C002DAF */  jal        ohSleep
    /* 207294 801DC734 E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
    /* 207298 801DC738 8E0D0000 */  lw         $t5, 0x0($s0)
    /* 20729C 801DC73C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 2072A0 801DC740 240A0001 */  addiu      $t2, $zero, 0x1
    /* 2072A4 801DC744 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 2072A8 801DC748 24040006 */  addiu      $a0, $zero, 0x6
    /* 2072AC 801DC74C 24050002 */  addiu      $a1, $zero, 0x2
    /* 2072B0 801DC750 000F7080 */  sll        $t6, $t7, 2
    /* 2072B4 801DC754 002E0821 */  addu       $at, $at, $t6
    /* 2072B8 801DC758 AC2A98E0 */  sw         $t2, %lo(D_800E98E0)($at)
    /* 2072BC 801DC75C 0C02A08D */  jal        func_800A8234
    /* 2072C0 801DC760 2406000A */   addiu     $a2, $zero, 0xA
    /* 2072C4 801DC764 8E180000 */  lw         $t8, 0x0($s0)
    /* 2072C8 801DC768 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 2072CC 801DC76C 24040195 */  addiu      $a0, $zero, 0x195
    /* 2072D0 801DC770 8F080000 */  lw         $t0, 0x0($t8)
    /* 2072D4 801DC774 0008C880 */  sll        $t9, $t0, 2
    /* 2072D8 801DC778 00390821 */  addu       $at, $at, $t9
    /* 2072DC 801DC77C 0C029D9E */  jal        play_sound
    /* 2072E0 801DC780 AC22A360 */   sw        $v0, %lo(D_800EA360)($at)
    /* 2072E4 801DC784 8E090000 */  lw         $t1, 0x0($s0)
    /* 2072E8 801DC788 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 2072EC 801DC78C 24040020 */  addiu      $a0, $zero, 0x20
    /* 2072F0 801DC790 8D230000 */  lw         $v1, 0x0($t1)
    /* 2072F4 801DC794 00031880 */  sll        $v1, $v1, 2
    /* 2072F8 801DC798 00230821 */  addu       $at, $at, $v1
    /* 2072FC 801DC79C C4286A10 */  lwc1       $f8, %lo(D_800E6A10)($at)
    /* 207300 801DC7A0 3C01C220 */  lui        $at, (0xC2200000 >> 16)
    /* 207304 801DC7A4 44815000 */  mtc1       $at, $f10
    /* 207308 801DC7A8 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 20730C 801DC7AC 00230821 */  addu       $at, $at, $v1
    /* 207310 801DC7B0 460A4402 */  mul.s      $f16, $f8, $f10
    /* 207314 801DC7B4 0C002DAF */  jal        ohSleep
    /* 207318 801DC7B8 E4303050 */   swc1      $f16, %lo(D_800E3050)($at)
    /* 20731C 801DC7BC 8E020000 */  lw         $v0, 0x0($s0)
    /* 207320 801DC7C0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 207324 801DC7C4 240B0002 */  addiu      $t3, $zero, 0x2
    /* 207328 801DC7C8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 20732C 801DC7CC 3C05800F */  lui        $a1, %hi(D_800EA360)
    /* 207330 801DC7D0 000C6880 */  sll        $t5, $t4, 2
    /* 207334 801DC7D4 002D0821 */  addu       $at, $at, $t5
    /* 207338 801DC7D8 AC2B98E0 */  sw         $t3, %lo(D_800E98E0)($at)
    /* 20733C 801DC7DC 8C430000 */  lw         $v1, 0x0($v0)
    /* 207340 801DC7E0 00031880 */  sll        $v1, $v1, 2
    /* 207344 801DC7E4 00A32821 */  addu       $a1, $a1, $v1
    /* 207348 801DC7E8 8CA5A360 */  lw         $a1, %lo(D_800EA360)($a1)
    /* 20734C 801DC7EC 10A0000B */  beqz       $a1, .L801DC81C_ovl15
    /* 207350 801DC7F0 00000000 */   nop
    /* 207354 801DC7F4 0C0287CC */  jal        func_800A1F30
    /* 207358 801DC7F8 00A02025 */   or        $a0, $a1, $zero
    /* 20735C 801DC7FC 8E020000 */  lw         $v0, 0x0($s0)
    /* 207360 801DC800 3C01800F */  lui        $at, %hi(D_800EA360)
    /* 207364 801DC804 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 207368 801DC808 000F5080 */  sll        $t2, $t7, 2
    /* 20736C 801DC80C 002A0821 */  addu       $at, $at, $t2
    /* 207370 801DC810 AC20A360 */  sw         $zero, %lo(D_800EA360)($at)
    /* 207374 801DC814 8C430000 */  lw         $v1, 0x0($v0)
    /* 207378 801DC818 00031880 */  sll        $v1, $v1, 2
  .L801DC81C_ovl15:
    /* 20737C 801DC81C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* 207380 801DC820 00230821 */  addu       $at, $at, $v1
    /* 207384 801DC824 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* 207388 801DC828 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* 20738C 801DC82C 44812000 */  mtc1       $at, $f4
    /* 207390 801DC830 3C01800E */  lui        $at, %hi(D_800E3050)
    /* 207394 801DC834 00230821 */  addu       $at, $at, $v1
    /* 207398 801DC838 46049182 */  mul.s      $f6, $f18, $f4
    /* 20739C 801DC83C 24040010 */  addiu      $a0, $zero, 0x10
    /* 2073A0 801DC840 0C002DAF */  jal        ohSleep
    /* 2073A4 801DC844 E4263050 */   swc1      $f6, %lo(D_800E3050)($at)
    /* 2073A8 801DC848 8E180000 */  lw         $t8, 0x0($s0)
    /* 2073AC 801DC84C 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 2073B0 801DC850 240E0003 */  addiu      $t6, $zero, 0x3
    /* 2073B4 801DC854 8F080000 */  lw         $t0, 0x0($t8)
    /* 2073B8 801DC858 0008C880 */  sll        $t9, $t0, 2
    /* 2073BC 801DC85C 00390821 */  addu       $at, $at, $t9
    /* 2073C0 801DC860 0C02CCFD */  jal        func_800B33F4
    /* 2073C4 801DC864 AC2E98E0 */   sw        $t6, %lo(D_800E98E0)($at)
    /* 2073C8 801DC868 0C002DAF */  jal        ohSleep
    /* 2073CC 801DC86C 2404000A */   addiu     $a0, $zero, 0xA
    /* 2073D0 801DC870 8E090000 */  lw         $t1, 0x0($s0)
    /* 2073D4 801DC874 0C067656 */  jal        func_8019D958_ovl7
    /* 2073D8 801DC878 95240002 */   lhu       $a0, 0x2($t1)
    /* 2073DC 801DC87C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 2073E0 801DC880 8FB00018 */  lw         $s0, 0x18($sp)
    /* 2073E4 801DC884 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 2073E8 801DC888 03E00008 */  jr         $ra
    /* 2073EC 801DC88C 00000000 */   nop
endlabel func_801DC594_ovl15
.size func_801DC594_ovl15, . - func_801DC594_ovl15
