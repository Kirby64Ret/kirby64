glabel func_801BE79C_ovl7
/* 16480C 801BE79C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164810 801BE7A0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164814 801BE7A4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 164818 801BE7A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16481C 801BE7AC AFA40040 */  sw         $a0, 0x40($sp)
/* 164820 801BE7B0 8C430000 */  lw         $v1, 0x0($v0)
/* 164824 801BE7B4 3C0E800E */  lui        $t6, %hi(D_800E1B50)
/* 164828 801BE7B8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 16482C 801BE7BC 00031880 */  sll        $v1, $v1, 2
/* 164830 801BE7C0 01C37021 */  addu       $t6, $t6, $v1
/* 164834 801BE7C4 44810000 */  mtc1       $at, $f0
/* 164838 801BE7C8 8DCE1B50 */  lw         $t6, %lo(D_800E1B50)($t6)
/* 16483C 801BE7CC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 164840 801BE7D0 3C0F800B */  lui        $t7, %hi(func_800B7138)
/* 164844 801BE7D4 25EF7138 */  addiu      $t7, $t7, %lo(func_800B7138)
/* 164848 801BE7D8 00230821 */  addu       $at, $at, $v1
/* 16484C 801BE7DC AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
/* 164850 801BE7E0 AFAE0028 */  sw         $t6, 0x28($sp)
/* 164854 801BE7E4 8C590000 */  lw         $t9, 0x0($v0)
/* 164858 801BE7E8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 16485C 801BE7EC 3C18801C */  lui        $t8, %hi(func_801BEE54_ovl7)
/* 164860 801BE7F0 00194080 */  sll        $t0, $t9, 2
/* 164864 801BE7F4 00280821 */  addu       $at, $at, $t0
/* 164868 801BE7F8 2718EE54 */  addiu      $t8, $t8, %lo(func_801BEE54_ovl7)
/* 16486C 801BE7FC AC38F150 */  sw         $t8, %lo(D_800DF150)($at)
/* 164870 801BE800 8C490000 */  lw         $t1, 0x0($v0)
/* 164874 801BE804 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
/* 164878 801BE808 00095080 */  sll        $t2, $t1, 2
/* 16487C 801BE80C 002A0821 */  addu       $at, $at, $t2
/* 164880 801BE810 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
/* 164884 801BE814 8C4B0000 */  lw         $t3, 0x0($v0)
/* 164888 801BE818 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
/* 16488C 801BE81C 000B6080 */  sll        $t4, $t3, 2
/* 164890 801BE820 002C0821 */  addu       $at, $at, $t4
/* 164894 801BE824 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
/* 164898 801BE828 8C4D0000 */  lw         $t5, 0x0($v0)
/* 16489C 801BE82C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
/* 1648A0 801BE830 000D7080 */  sll        $t6, $t5, 2
/* 1648A4 801BE834 002E0821 */  addu       $at, $at, $t6
/* 1648A8 801BE838 0C066ED6 */  jal        func_8019BB58_ovl7
/* 1648AC 801BE83C E42048D0 */   swc1      $f0, %lo(gEntitiesScaleZArray)($at)
/* 1648B0 801BE840 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1648B4 801BE844 8DE20034 */  lw         $v0, 0x34($t7)
/* 1648B8 801BE848 10400003 */  beqz       $v0, .L801BE858_ovl7
/* 1648BC 801BE84C 00000000 */   nop
/* 1648C0 801BE850 0C0288B5 */  jal        func_800A22D4
/* 1648C4 801BE854 00402025 */   or        $a0, $v0, $zero
.L801BE858_ovl7:
/* 1648C8 801BE858 0C0288C0 */  jal        func_800A2300
/* 1648CC 801BE85C 8FA40040 */   lw        $a0, 0x40($sp)
/* 1648D0 801BE860 8FB90028 */  lw         $t9, 0x28($sp)
/* 1648D4 801BE864 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1648D8 801BE868 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 1648DC 801BE86C AF200034 */  sw         $zero, 0x34($t9)
/* 1648E0 801BE870 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1648E4 801BE874 24010007 */  addiu      $at, $zero, 0x7
/* 1648E8 801BE878 3C05800F */  lui        $a1, %hi(D_800E9020 + 0x1C0)
/* 1648EC 801BE87C 8C460000 */  lw         $a2, 0x0($v0)
/* 1648F0 801BE880 3C04800D */  lui        $a0, %hi(D_800D6B88)
/* 1648F4 801BE884 0006C040 */  sll        $t8, $a2, 1
/* 1648F8 801BE888 00781821 */  addu       $v1, $v1, $t8
/* 1648FC 801BE88C 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 164900 801BE890 00064080 */  sll        $t0, $a2, 2
/* 164904 801BE894 00A82821 */  addu       $a1, $a1, $t0
/* 164908 801BE898 54610016 */  bnel       $v1, $at, .L801BE8F4_ovl7
/* 16490C 801BE89C 24010008 */   addiu     $at, $zero, 0x8
/* 164910 801BE8A0 8C846B88 */  lw         $a0, %lo(D_800D6B88)($a0)
/* 164914 801BE8A4 0C02E72D */  jal        func_800B9CB4
/* 164918 801BE8A8 8CA591E0 */   lw        $a1, %lo(D_800E9020 + 0x1C0)($a1)
/* 16491C 801BE8AC 3C09800C */  lui        $t1, %hi(D_800BE508)
/* 164920 801BE8B0 8D29E508 */  lw         $t1, %lo(D_800BE508)($t1)
/* 164924 801BE8B4 3C0A800D */  lui        $t2, %hi(D_800D6E30)
/* 164928 801BE8B8 254A6E30 */  addiu      $t2, $t2, %lo(D_800D6E30)
/* 16492C 801BE8BC 012A1021 */  addu       $v0, $t1, $t2
/* 164930 801BE8C0 904B0000 */  lbu        $t3, 0x0($v0)
/* 164934 801BE8C4 240400CB */  addiu      $a0, $zero, 0xCB
/* 164938 801BE8C8 256C0001 */  addiu      $t4, $t3, 0x1
/* 16493C 801BE8CC 0C029D9E */  jal        play_sound
/* 164940 801BE8D0 A04C0000 */   sb        $t4, 0x0($v0)
/* 164944 801BE8D4 2404000C */  addiu      $a0, $zero, 0xC
/* 164948 801BE8D8 0C02ED1A */  jal        func_800BB468
/* 16494C 801BE8DC 00002825 */   or        $a1, $zero, $zero
/* 164950 801BE8E0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164954 801BE8E4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164958 801BE8E8 10000040 */  b          .L801BE9EC_ovl7
/* 16495C 801BE8EC 8C460000 */   lw        $a2, 0x0($v0)
/* 164960 801BE8F0 24010008 */  addiu      $at, $zero, 0x8
.L801BE8F4_ovl7:
/* 164964 801BE8F4 1461003D */  bne        $v1, $at, .L801BE9EC_ovl7
/* 164968 801BE8F8 3C0D800E */   lui       $t5, %hi(D_800E7880)
/* 16496C 801BE8FC 01A66821 */  addu       $t5, $t5, $a2
/* 164970 801BE900 91AD7880 */  lbu        $t5, %lo(D_800E7880)($t5)
/* 164974 801BE904 00067080 */  sll        $t6, $a2, 2
/* 164978 801BE908 3C03800F */  lui        $v1, %hi(D_800EA520)
/* 16497C 801BE90C 29A10006 */  slti       $at, $t5, 0x6
/* 164980 801BE910 1020002B */  beqz       $at, .L801BE9C0_ovl7
/* 164984 801BE914 006E1821 */   addu      $v1, $v1, $t6
/* 164988 801BE918 8C63A520 */  lw         $v1, %lo(D_800EA520)($v1)
/* 16498C 801BE91C 24010001 */  addiu      $at, $zero, 0x1
/* 164990 801BE920 240F0001 */  addiu      $t7, $zero, 0x1
/* 164994 801BE924 10600007 */  beqz       $v1, .L801BE944_ovl7
/* 164998 801BE928 3C19800C */   lui       $t9, %hi(D_800BE500)
/* 16499C 801BE92C 10610012 */  beq        $v1, $at, .L801BE978_ovl7
/* 1649A0 801BE930 24010002 */   addiu     $at, $zero, 0x2
/* 1649A4 801BE934 50610019 */  beql       $v1, $at, .L801BE99C_ovl7
/* 1649A8 801BE938 3C0140C0 */   lui       $at, (0x40C00000 >> 16)
/* 1649AC 801BE93C 1000002C */  b          .L801BE9F0_ovl7
/* 1649B0 801BE940 00061880 */   sll       $v1, $a2, 2
.L801BE944_ovl7:
/* 1649B4 801BE944 8F39E500 */  lw         $t9, %lo(D_800BE500)($t9)
/* 1649B8 801BE948 3C01800D */  lui        $at, %hi(D_800D6BC0)
/* 1649BC 801BE94C 240400CE */  addiu      $a0, $zero, 0xCE
/* 1649C0 801BE950 00390821 */  addu       $at, $at, $t9
/* 1649C4 801BE954 0C029D9E */  jal        play_sound
/* 1649C8 801BE958 A02F6BC0 */   sb        $t7, %lo(D_800D6BC0)($at)
/* 1649CC 801BE95C 2404000C */  addiu      $a0, $zero, 0xC
/* 1649D0 801BE960 0C02ED1A */  jal        func_800BB468
/* 1649D4 801BE964 00002825 */   or        $a1, $zero, $zero
/* 1649D8 801BE968 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1649DC 801BE96C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1649E0 801BE970 1000001E */  b          .L801BE9EC_ovl7
/* 1649E4 801BE974 8C460000 */   lw        $a2, 0x0($v0)
.L801BE978_ovl7:
/* 1649E8 801BE978 0C02F096 */  jal        change_kirby_lives
/* 1649EC 801BE97C 24040001 */   addiu     $a0, $zero, 0x1
/* 1649F0 801BE980 0C029D9E */  jal        play_sound
/* 1649F4 801BE984 24040001 */   addiu     $a0, $zero, 0x1
/* 1649F8 801BE988 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1649FC 801BE98C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164A00 801BE990 10000016 */  b          .L801BE9EC_ovl7
/* 164A04 801BE994 8C460000 */   lw        $a2, 0x0($v0)
/* 164A08 801BE998 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
.L801BE99C_ovl7:
/* 164A0C 801BE99C 44816000 */  mtc1       $at, $f12
/* 164A10 801BE9A0 0C02EFF8 */  jal        change_kirby_hp
/* 164A14 801BE9A4 00000000 */   nop
/* 164A18 801BE9A8 0C029D9E */  jal        play_sound
/* 164A1C 801BE9AC 240400CA */   addiu     $a0, $zero, 0xCA
/* 164A20 801BE9B0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164A24 801BE9B4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164A28 801BE9B8 1000000C */  b          .L801BE9EC_ovl7
/* 164A2C 801BE9BC 8C460000 */   lw        $a2, 0x0($v0)
.L801BE9C0_ovl7:
/* 164A30 801BE9C0 0C029D9E */  jal        play_sound
/* 164A34 801BE9C4 240400CB */   addiu     $a0, $zero, 0xCB
/* 164A38 801BE9C8 2404000C */  addiu      $a0, $zero, 0xC
/* 164A3C 801BE9CC 0C02ED1A */  jal        func_800BB468
/* 164A40 801BE9D0 00002825 */   or        $a1, $zero, $zero
/* 164A44 801BE9D4 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164A48 801BE9D8 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164A4C 801BE9DC 24180001 */  addiu      $t8, $zero, 0x1
/* 164A50 801BE9E0 3C018013 */  lui        $at, %hi(D_8012E828)
/* 164A54 801BE9E4 A438E828 */  sh         $t8, %lo(D_8012E828)($at)
/* 164A58 801BE9E8 8C460000 */  lw         $a2, 0x0($v0)
.L801BE9EC_ovl7:
/* 164A5C 801BE9EC 00061880 */  sll        $v1, $a2, 2
.L801BE9F0_ovl7:
/* 164A60 801BE9F0 3C08800F */  lui        $t0, %hi(D_800EA520)
/* 164A64 801BE9F4 01034021 */  addu       $t0, $t0, $v1
/* 164A68 801BE9F8 8D08A520 */  lw         $t0, %lo(D_800EA520)($t0)
/* 164A6C 801BE9FC 11000021 */  beqz       $t0, .L801BEA84_ovl7
/* 164A70 801BEA00 00000000 */   nop
/* 164A74 801BEA04 0C066ED6 */  jal        func_8019BB58_ovl7
/* 164A78 801BEA08 00000000 */   nop
/* 164A7C 801BEA0C 8FA90028 */  lw         $t1, 0x28($sp)
/* 164A80 801BEA10 8D220034 */  lw         $v0, 0x34($t1)
/* 164A84 801BEA14 10400003 */  beqz       $v0, .L801BEA24_ovl7
/* 164A88 801BEA18 00000000 */   nop
/* 164A8C 801BEA1C 0C0288B5 */  jal        func_800A22D4
/* 164A90 801BEA20 00402025 */   or        $a0, $v0, $zero
.L801BEA24_ovl7:
/* 164A94 801BEA24 0C0288C0 */  jal        func_800A2300
/* 164A98 801BEA28 8FA40040 */   lw        $a0, 0x40($sp)
/* 164A9C 801BEA2C 8FAA0028 */  lw         $t2, 0x28($sp)
/* 164AA0 801BEA30 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164AA4 801BEA34 3C01800E */  lui        $at, %hi(D_800DF150)
/* 164AA8 801BEA38 AD400034 */  sw         $zero, 0x34($t2)
/* 164AAC 801BEA3C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164AB0 801BEA40 2404007D */  addiu      $a0, $zero, 0x7D
/* 164AB4 801BEA44 8C4B0000 */  lw         $t3, 0x0($v0)
/* 164AB8 801BEA48 000B6080 */  sll        $t4, $t3, 2
/* 164ABC 801BEA4C 002C0821 */  addu       $at, $at, $t4
/* 164AC0 801BEA50 AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
/* 164AC4 801BEA54 0C02C67D */  jal        func_800B19F4
/* 164AC8 801BEA58 8C450000 */   lw        $a1, 0x0($v0)
/* 164ACC 801BEA5C 0C002DAF */  jal        finish_current_thread
/* 164AD0 801BEA60 2404001E */   addiu     $a0, $zero, 0x1E
/* 164AD4 801BEA64 240D0002 */  addiu      $t5, $zero, 0x2
/* 164AD8 801BEA68 3C018013 */  lui        $at, %hi(D_8012E7C5 + 0xF)
/* 164ADC 801BEA6C 0C02BE85 */  jal        func_800AFA14
/* 164AE0 801BEA70 A02DE7D4 */   sb        $t5, %lo(D_8012E7C5 + 0xF)($at)
/* 164AE4 801BEA74 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164AE8 801BEA78 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164AEC 801BEA7C 8C430000 */  lw         $v1, 0x0($v0)
/* 164AF0 801BEA80 00031880 */  sll        $v1, $v1, 2
.L801BEA84_ovl7:
/* 164AF4 801BEA84 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 164AF8 801BEA88 00230821 */  addu       $at, $at, $v1
/* 164AFC 801BEA8C AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
/* 164B00 801BEA90 8C4F0000 */  lw         $t7, 0x0($v0)
/* 164B04 801BEA94 3C05800E */  lui        $a1, %hi(D_800E5F90)
/* 164B08 801BEA98 24A55F90 */  addiu      $a1, $a1, %lo(D_800E5F90)
/* 164B0C 801BEA9C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 164B10 801BEAA0 000FC880 */  sll        $t9, $t7, 2
/* 164B14 801BEAA4 00B9C021 */  addu       $t8, $a1, $t9
/* 164B18 801BEAA8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 164B1C 801BEAAC 8C480000 */  lw         $t0, 0x0($v0)
/* 164B20 801BEAB0 3C06800E */  lui        $a2, %hi(D_800E6BD0)
/* 164B24 801BEAB4 24C66BD0 */  addiu      $a2, $a2, %lo(D_800E6BD0)
/* 164B28 801BEAB8 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 164B2C 801BEABC 00084880 */  sll        $t1, $t0, 2
/* 164B30 801BEAC0 00C95021 */  addu       $t2, $a2, $t1
/* 164B34 801BEAC4 E5440000 */  swc1       $f4, 0x0($t2)
/* 164B38 801BEAC8 8C4B0000 */  lw         $t3, 0x0($v0)
/* 164B3C 801BEACC 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
/* 164B40 801BEAD0 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
/* 164B44 801BEAD4 C4E60000 */  lwc1       $f6, 0x0($a3)
/* 164B48 801BEAD8 000B6080 */  sll        $t4, $t3, 2
/* 164B4C 801BEADC 00EC6821 */  addu       $t5, $a3, $t4
/* 164B50 801BEAE0 3C040001 */  lui        $a0, (0x100C3 >> 16)
/* 164B54 801BEAE4 348400C3 */  ori        $a0, $a0, (0x100C3 & 0xFFFF)
/* 164B58 801BEAE8 0C02A5D8 */  jal        func_800A9760
/* 164B5C 801BEAEC E5A60000 */   swc1      $f6, 0x0($t5)
/* 164B60 801BEAF0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 164B64 801BEAF4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 164B68 801BEAF8 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* 164B6C 801BEAFC 00002025 */  or         $a0, $zero, $zero
/* 164B70 801BEB00 8DF90000 */  lw         $t9, 0x0($t7)
/* 164B74 801BEB04 24050002 */  addiu      $a1, $zero, 0x2
/* 164B78 801BEB08 24060032 */  addiu      $a2, $zero, 0x32
/* 164B7C 801BEB0C 00197080 */  sll        $t6, $t9, 2
/* 164B80 801BEB10 030EC021 */  addu       $t8, $t8, $t6
/* 164B84 801BEB14 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 164B88 801BEB18 0C02A040 */  jal        func_800A8100
/* 164B8C 801BEB1C 8F070004 */   lw        $a3, 0x4($t8)
/* 164B90 801BEB20 0C02E793 */  jal        func_800B9E4C
/* 164B94 801BEB24 00000000 */   nop
/* 164B98 801BEB28 1040000A */  beqz       $v0, .L801BEB54_ovl7
/* 164B9C 801BEB2C 3C040001 */   lui       $a0, (0x105EB >> 16)
/* 164BA0 801BEB30 3C040001 */  lui        $a0, (0x105EC >> 16)
/* 164BA4 801BEB34 0C02A806 */  jal        func_800AA018
/* 164BA8 801BEB38 348405EC */   ori       $a0, $a0, (0x105EC & 0xFFFF)
/* 164BAC 801BEB3C 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 164BB0 801BEB40 2404000B */   addiu     $a0, $zero, 0xB
/* 164BB4 801BEB44 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 164BB8 801BEB48 2404000C */   addiu     $a0, $zero, 0xC
/* 164BBC 801BEB4C 10000005 */  b          .L801BEB64_ovl7
/* 164BC0 801BEB50 00000000 */   nop
.L801BEB54_ovl7:
/* 164BC4 801BEB54 0C02A806 */  jal        func_800AA018
/* 164BC8 801BEB58 348405EB */   ori       $a0, $a0, (0x105EB & 0xFFFF)
/* 164BCC 801BEB5C 0C06B9F8 */  jal        func_801AE7E0_ovl7
/* 164BD0 801BEB60 2404000A */   addiu     $a0, $zero, 0xA
.L801BEB64_ovl7:
/* 164BD4 801BEB64 0C02CD48 */  jal        func_800B3520
/* 164BD8 801BEB68 00000000 */   nop
/* 164BDC 801BEB6C 0C02BC9F */  jal        func_800AF27C
/* 164BE0 801BEB70 00000000 */   nop
/* 164BE4 801BEB74 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 164BE8 801BEB78 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 164BEC 801BEB7C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 164BF0 801BEB80 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 164BF4 801BEB84 8D2A0000 */  lw         $t2, 0x0($t1)
/* 164BF8 801BEB88 24080001 */  addiu      $t0, $zero, 0x1
/* 164BFC 801BEB8C 000A5880 */  sll        $t3, $t2, 2
/* 164C00 801BEB90 002B0821 */  addu       $at, $at, $t3
/* 164C04 801BEB94 AC2898E0 */  sw         $t0, %lo(D_800E98E0)($at)
/* 164C08 801BEB98 8D820034 */  lw         $v0, 0x34($t4)
/* 164C0C 801BEB9C 10400003 */  beqz       $v0, .L801BEBAC_ovl7
/* 164C10 801BEBA0 00000000 */   nop
/* 164C14 801BEBA4 0C0288B5 */  jal        func_800A22D4
/* 164C18 801BEBA8 00402025 */   or        $a0, $v0, $zero
.L801BEBAC_ovl7:
/* 164C1C 801BEBAC 0C0288C0 */  jal        func_800A2300
/* 164C20 801BEBB0 8FA40040 */   lw        $a0, 0x40($sp)
/* 164C24 801BEBB4 8FAD0028 */  lw         $t5, 0x28($sp)
/* 164C28 801BEBB8 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 164C2C 801BEBBC 3C18800E */  lui        $t8, %hi(D_800DFBD0)
/* 164C30 801BEBC0 ADA00034 */  sw         $zero, 0x34($t5)
/* 164C34 801BEBC4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 164C38 801BEBC8 27A40034 */  addiu      $a0, $sp, 0x34
/* 164C3C 801BEBCC 8DF90000 */  lw         $t9, 0x0($t7)
/* 164C40 801BEBD0 00197080 */  sll        $t6, $t9, 2
/* 164C44 801BEBD4 030EC021 */  addu       $t8, $t8, $t6
/* 164C48 801BEBD8 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
/* 164C4C 801BEBDC 0C0291E5 */  jal        func_800A4794
/* 164C50 801BEBE0 8F050004 */   lw        $a1, 0x4($t8)
/* 164C54 801BEBE4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 164C58 801BEBE8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 164C5C 801BEBEC C7A80038 */  lwc1       $f8, 0x38($sp)
/* 164C60 801BEBF0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* 164C64 801BEBF4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 164C68 801BEBF8 3C040001 */  lui        $a0, (0x100C4 >> 16)
/* 164C6C 801BEBFC 348400C4 */  ori        $a0, $a0, (0x100C4 & 0xFFFF)
/* 164C70 801BEC00 000A4080 */  sll        $t0, $t2, 2
/* 164C74 801BEC04 00280821 */  addu       $at, $at, $t0
/* 164C78 801BEC08 0C02A5D8 */  jal        func_800A9760
/* 164C7C 801BEC0C E4282790 */   swc1      $f8, %lo(gEntitiesNextPosYArray)($at)
/* 164C80 801BEC10 3C040001 */  lui        $a0, (0x105EE >> 16)
/* 164C84 801BEC14 0C02A806 */  jal        func_800AA018
/* 164C88 801BEC18 348405EE */   ori       $a0, $a0, (0x105EE & 0xFFFF)
/* 164C8C 801BEC1C 0C066C59 */  jal        func_8019B164_ovl7
/* 164C90 801BEC20 00000000 */   nop
/* 164C94 801BEC24 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 164C98 801BEC28 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 164C9C 801BEC2C 3C0F800E */  lui        $t7, %hi(D_800DFBD0)
/* 164CA0 801BEC30 00002025 */  or         $a0, $zero, $zero
/* 164CA4 801BEC34 8D6C0000 */  lw         $t4, 0x0($t3)
/* 164CA8 801BEC38 24050002 */  addiu      $a1, $zero, 0x2
/* 164CAC 801BEC3C 24060032 */  addiu      $a2, $zero, 0x32
/* 164CB0 801BEC40 000C6880 */  sll        $t5, $t4, 2
/* 164CB4 801BEC44 01ED7821 */  addu       $t7, $t7, $t5
/* 164CB8 801BEC48 8DEFFBD0 */  lw         $t7, %lo(D_800DFBD0)($t7)
/* 164CBC 801BEC4C 0C02A040 */  jal        func_800A8100
/* 164CC0 801BEC50 8DE70004 */   lw        $a3, 0x4($t7)
.L801BEC54_ovl7:
/* 164CC4 801BEC54 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 164CC8 801BEC58 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 164CCC 801BEC5C 3C09800F */  lui        $t1, %hi(D_800E98E0)
/* 164CD0 801BEC60 252998E0 */  addiu      $t1, $t1, %lo(D_800E98E0)
/* 164CD4 801BEC64 8F2E0000 */  lw         $t6, 0x0($t9)
/* 164CD8 801BEC68 24030002 */  addiu      $v1, $zero, 0x2
/* 164CDC 801BEC6C 000EC080 */  sll        $t8, $t6, 2
/* 164CE0 801BEC70 03091021 */  addu       $v0, $t8, $t1
/* 164CE4 801BEC74 8C4A0000 */  lw         $t2, 0x0($v0)
/* 164CE8 801BEC78 506A0006 */  beql       $v1, $t2, .L801BEC94_ovl7
/* 164CEC 801BEC7C 3C040001 */   lui       $a0, (0x105ED >> 16)
/* 164CF0 801BEC80 0C002DAF */  jal        finish_current_thread
/* 164CF4 801BEC84 24040001 */   addiu     $a0, $zero, 0x1
/* 164CF8 801BEC88 1000FFF2 */  b          .L801BEC54_ovl7
/* 164CFC 801BEC8C 00000000 */   nop
/* 164D00 801BEC90 3C040001 */  lui        $a0, (0x105ED >> 16)
.L801BEC94_ovl7:
/* 164D04 801BEC94 AC430000 */  sw         $v1, 0x0($v0)
/* 164D08 801BEC98 0C02A806 */  jal        func_800AA018
/* 164D0C 801BEC9C 348405ED */   ori       $a0, $a0, (0x105ED & 0xFFFF)
/* 164D10 801BECA0 8FA80028 */  lw         $t0, 0x28($sp)
/* 164D14 801BECA4 8D020034 */  lw         $v0, 0x34($t0)
/* 164D18 801BECA8 10400003 */  beqz       $v0, .L801BECB8_ovl7
/* 164D1C 801BECAC 00000000 */   nop
/* 164D20 801BECB0 0C0288B5 */  jal        func_800A22D4
/* 164D24 801BECB4 00402025 */   or        $a0, $v0, $zero
.L801BECB8_ovl7:
/* 164D28 801BECB8 0C0288C0 */  jal        func_800A2300
/* 164D2C 801BECBC 8FA40040 */   lw        $a0, 0x40($sp)
/* 164D30 801BECC0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 164D34 801BECC4 0C02BC9F */  jal        func_800AF27C
/* 164D38 801BECC8 AD600034 */   sw        $zero, 0x34($t3)
/* 164D3C 801BECCC 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 164D40 801BECD0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 164D44 801BECD4 3C01800F */  lui        $at, %hi(D_800E98E0)
/* 164D48 801BECD8 240C0003 */  addiu      $t4, $zero, 0x3
/* 164D4C 801BECDC 8DAF0000 */  lw         $t7, 0x0($t5)
/* 164D50 801BECE0 000FC880 */  sll        $t9, $t7, 2
/* 164D54 801BECE4 00390821 */  addu       $at, $at, $t9
/* 164D58 801BECE8 0C02CD48 */  jal        func_800B3520
/* 164D5C 801BECEC AC2C98E0 */   sw        $t4, %lo(D_800E98E0)($at)
/* 164D60 801BECF0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164D64 801BECF4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164D68 801BECF8 3C01800E */  lui        $at, %hi(D_800DF150)
/* 164D6C 801BECFC 2404007D */  addiu      $a0, $zero, 0x7D
/* 164D70 801BED00 8C4E0000 */  lw         $t6, 0x0($v0)
/* 164D74 801BED04 000EC080 */  sll        $t8, $t6, 2
/* 164D78 801BED08 00380821 */  addu       $at, $at, $t8
/* 164D7C 801BED0C AC20F150 */  sw         $zero, %lo(D_800DF150)($at)
/* 164D80 801BED10 0C02C67D */  jal        func_800B19F4
/* 164D84 801BED14 8C450000 */   lw        $a1, 0x0($v0)
/* 164D88 801BED18 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 164D8C 801BED1C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 164D90 801BED20 3C03800E */  lui        $v1, %hi(D_800E77A0)
/* 164D94 801BED24 24010007 */  addiu      $at, $zero, 0x7
/* 164D98 801BED28 8C460000 */  lw         $a2, 0x0($v0)
/* 164D9C 801BED2C 3C08800E */  lui        $t0, %hi(D_800E7880)
/* 164DA0 801BED30 00064840 */  sll        $t1, $a2, 1
/* 164DA4 801BED34 00691821 */  addu       $v1, $v1, $t1
/* 164DA8 801BED38 946377A0 */  lhu        $v1, %lo(D_800E77A0)($v1)
/* 164DAC 801BED3C 01064021 */  addu       $t0, $t0, $a2
/* 164DB0 801BED40 54610008 */  bnel       $v1, $at, .L801BED64_ovl7
/* 164DB4 801BED44 24010008 */   addiu     $at, $zero, 0x8
/* 164DB8 801BED48 0C002DAF */  jal        finish_current_thread
/* 164DBC 801BED4C 2404000F */   addiu     $a0, $zero, 0xF
/* 164DC0 801BED50 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 164DC4 801BED54 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 164DC8 801BED58 10000038 */  b          .L801BEE3C_ovl7
/* 164DCC 801BED5C 8D460000 */   lw        $a2, 0x0($t2)
/* 164DD0 801BED60 24010008 */  addiu      $at, $zero, 0x8
.L801BED64_ovl7:
/* 164DD4 801BED64 14610035 */  bne        $v1, $at, .L801BEE3C_ovl7
/* 164DD8 801BED68 00000000 */   nop
/* 164DDC 801BED6C 91087880 */  lbu        $t0, %lo(D_800E7880)($t0)
/* 164DE0 801BED70 2D010009 */  sltiu      $at, $t0, 0x9
/* 164DE4 801BED74 1020002D */  beqz       $at, .L801BEE2C_ovl7
/* 164DE8 801BED78 00084080 */   sll       $t0, $t0, 2
/* 164DEC 801BED7C 3C01801D */  lui        $at, %hi(jtbl_801CE5B0_ovl7)
/* 164DF0 801BED80 00280821 */  addu       $at, $at, $t0
/* 164DF4 801BED84 8C28E5B0 */  lw         $t0, %lo(jtbl_801CE5B0_ovl7)($at)
/* 164DF8 801BED88 01000008 */  jr         $t0
/* 164DFC 801BED8C 00000000 */   nop
/* 164E00 801BED90 3C04800C */  lui        $a0, %hi(D_800BE508)
/* 164E04 801BED94 8C84E508 */  lw         $a0, %lo(D_800BE508)($a0)
/* 164E08 801BED98 00002825 */  or         $a1, $zero, $zero
/* 164E0C 801BED9C 0C03DB10 */  jal        func_800F6C40
/* 164E10 801BEDA0 24840001 */   addiu     $a0, $a0, 0x1
/* 164E14 801BEDA4 3C04800D */  lui        $a0, %hi(D_800D6B88)
/* 164E18 801BEDA8 8C846B88 */  lw         $a0, %lo(D_800D6B88)($a0)
/* 164E1C 801BEDAC 0C02E72D */  jal        func_800B9CB4
/* 164E20 801BEDB0 24050002 */   addiu     $a1, $zero, 0x2
/* 164E24 801BEDB4 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 164E28 801BEDB8 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 164E2C 801BEDBC 1000001F */  b          .L801BEE3C_ovl7
/* 164E30 801BEDC0 8D660000 */   lw        $a2, 0x0($t3)
/* 164E34 801BEDC4 3C04800C */  lui        $a0, %hi(D_800BE508)
/* 164E38 801BEDC8 8C84E508 */  lw         $a0, %lo(D_800BE508)($a0)
/* 164E3C 801BEDCC 00002825 */  or         $a1, $zero, $zero
/* 164E40 801BEDD0 0C03DB10 */  jal        func_800F6C40
/* 164E44 801BEDD4 24840001 */   addiu     $a0, $a0, 0x1
/* 164E48 801BEDD8 3C04800D */  lui        $a0, %hi(D_800D6B88)
/* 164E4C 801BEDDC 8C846B88 */  lw         $a0, %lo(D_800D6B88)($a0)
/* 164E50 801BEDE0 0C02E72D */  jal        func_800B9CB4
/* 164E54 801BEDE4 24050005 */   addiu     $a1, $zero, 0x5
/* 164E58 801BEDE8 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* 164E5C 801BEDEC 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* 164E60 801BEDF0 10000012 */  b          .L801BEE3C_ovl7
/* 164E64 801BEDF4 8DA60000 */   lw        $a2, 0x0($t5)
/* 164E68 801BEDF8 3C04800C */  lui        $a0, %hi(D_800BE508)
/* 164E6C 801BEDFC 8C84E508 */  lw         $a0, %lo(D_800BE508)($a0)
/* 164E70 801BEE00 00002825 */  or         $a1, $zero, $zero
/* 164E74 801BEE04 0C03DB10 */  jal        func_800F6C40
/* 164E78 801BEE08 24840001 */   addiu     $a0, $a0, 0x1
/* 164E7C 801BEE0C 3C04800D */  lui        $a0, %hi(D_800D6B88)
/* 164E80 801BEE10 8C846B88 */  lw         $a0, %lo(D_800D6B88)($a0)
/* 164E84 801BEE14 0C02E72D */  jal        func_800B9CB4
/* 164E88 801BEE18 24050008 */   addiu     $a1, $zero, 0x8
/* 164E8C 801BEE1C 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* 164E90 801BEE20 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 164E94 801BEE24 10000005 */  b          .L801BEE3C_ovl7
/* 164E98 801BEE28 8DE60000 */   lw        $a2, 0x0($t7)
.L801BEE2C_ovl7:
/* 164E9C 801BEE2C 240C0002 */  addiu      $t4, $zero, 0x2
/* 164EA0 801BEE30 3C018013 */  lui        $at, %hi(D_8012E7C5 + 0xF)
/* 164EA4 801BEE34 A02CE7D4 */  sb         $t4, %lo(D_8012E7C5 + 0xF)($at)
/* 164EA8 801BEE38 8C460000 */  lw         $a2, 0x0($v0)
.L801BEE3C_ovl7:
/* 164EAC 801BEE3C 0C067656 */  jal        func_8019D958_ovl7
/* 164EB0 801BEE40 30C4FFFF */   andi      $a0, $a2, 0xFFFF
/* 164EB4 801BEE44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 164EB8 801BEE48 27BD0040 */  addiu      $sp, $sp, 0x40
/* 164EBC 801BEE4C 03E00008 */  jr         $ra
/* 164EC0 801BEE50 00000000 */   nop
