.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_8015AC90_ovl3
/* 0BB6D0 8015AC90 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BB6D4 8015AC94 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BB6D8 8015AC98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0BB6DC 8015AC9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BB6E0 8015ACA0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0BB6E4 8015ACA4 8C6E0000 */  lw    $t6, ($v1)
/* 0BB6E8 8015ACA8 3C01800E */  lui   $at, 0x800e
/* 0BB6EC 8015ACAC 3C08800E */  lui   $t0, %hi(D_800E0D50) # $t0, 0x800e
/* 0BB6F0 8015ACB0 000E7880 */  sll   $t7, $t6, 2
/* 0BB6F4 8015ACB4 002F0821 */  addu  $at, $at, $t7
/* 0BB6F8 8015ACB8 AC200650 */  sw    $zero, 0x650($at)
/* 0BB6FC 8015ACBC 8C780000 */  lw    $t8, ($v1)
/* 0BB700 8015ACC0 3C0E8019 */  lui   $t6, %hi(D_80197BF0) # $t6, 0x8019
/* 0BB704 8015ACC4 25CE7BF0 */  addiu $t6, %lo(D_80197BF0) # addiu $t6, $t6, 0x7bf0
/* 0BB708 8015ACC8 0018C880 */  sll   $t9, $t8, 2
/* 0BB70C 8015ACCC 0338C823 */  subu  $t9, $t9, $t8
/* 0BB710 8015ACD0 0019C880 */  sll   $t9, $t9, 2
/* 0BB714 8015ACD4 0338C823 */  subu  $t9, $t9, $t8
/* 0BB718 8015ACD8 0019C8C0 */  sll   $t9, $t9, 3
/* 0BB71C 8015ACDC 272DFEA0 */  addiu $t5, $t9, -0x160
/* 0BB720 8015ACE0 01AE3821 */  addu  $a3, $t5, $t6
/* 0BB724 8015ACE4 94EF0000 */  lhu   $t7, ($a3)
/* 0BB728 8015ACE8 25080D50 */  addiu $t0, %lo(D_800E0D50) # addiu $t0, $t0, 0xd50
/* 0BB72C 8015ACEC 3C09800E */  lui   $t1, %hi(D_800E10D0) # $t1, 0x800e
/* 0BB730 8015ACF0 31F80007 */  andi  $t8, $t7, 7
/* 0BB734 8015ACF4 37197FF8 */  ori   $t9, $t8, 0x7ff8
/* 0BB738 8015ACF8 A4F90000 */  sh    $t9, ($a3)
/* 0BB73C 8015ACFC 8C620000 */  lw    $v0, ($v1)
/* 0BB740 8015AD00 252910D0 */  addiu $t1, %lo(D_800E10D0) # addiu $t1, $t1, 0x10d0
/* 0BB744 8015AD04 3C0A800E */  lui   $t2, %hi(D_800E1290) # $t2, 0x800e
/* 0BB748 8015AD08 00021080 */  sll   $v0, $v0, 2
/* 0BB74C 8015AD0C 01026821 */  addu  $t5, $t0, $v0
/* 0BB750 8015AD10 8DAE0000 */  lw    $t6, ($t5)
/* 0BB754 8015AD14 0122C821 */  addu  $t9, $t1, $v0
/* 0BB758 8015AD18 254A1290 */  addiu $t2, %lo(D_800E1290) # addiu $t2, $t2, 0x1290
/* 0BB75C 8015AD1C 000E7880 */  sll   $t7, $t6, 2
/* 0BB760 8015AD20 012FC021 */  addu  $t8, $t1, $t7
/* 0BB764 8015AD24 C7040000 */  lwc1  $f4, ($t8)
/* 0BB768 8015AD28 3C0B800E */  lui   $t3, %hi(D_800E1450) # $t3, 0x800e
/* 0BB76C 8015AD2C 256B1450 */  addiu $t3, %lo(D_800E1450) # addiu $t3, $t3, 0x1450
/* 0BB770 8015AD30 E7240000 */  swc1  $f4, ($t9)
/* 0BB774 8015AD34 8C620000 */  lw    $v0, ($v1)
/* 0BB778 8015AD38 3C01800F */  lui   $at, 0x800f
/* 0BB77C 8015AD3C 3C0C800F */  lui   $t4, %hi(D_800E8760) # $t4, 0x800f
/* 0BB780 8015AD40 00021080 */  sll   $v0, $v0, 2
/* 0BB784 8015AD44 01026821 */  addu  $t5, $t0, $v0
/* 0BB788 8015AD48 8DAE0000 */  lw    $t6, ($t5)
/* 0BB78C 8015AD4C 0142C821 */  addu  $t9, $t2, $v0
/* 0BB790 8015AD50 258C8760 */  addiu $t4, %lo(D_800E8760) # addiu $t4, $t4, -0x78a0
/* 0BB794 8015AD54 000E7880 */  sll   $t7, $t6, 2
/* 0BB798 8015AD58 014FC021 */  addu  $t8, $t2, $t7
/* 0BB79C 8015AD5C C7060000 */  lwc1  $f6, ($t8)
/* 0BB7A0 8015AD60 3C04800E */  lui   $a0, 0x800e
/* 0BB7A4 8015AD64 3C068019 */  lui   $a2, %hi(D_801966F0) # $a2, 0x8019
/* 0BB7A8 8015AD68 E7260000 */  swc1  $f6, ($t9)
/* 0BB7AC 8015AD6C 8C620000 */  lw    $v0, ($v1)
/* 0BB7B0 8015AD70 24C666F0 */  addiu $a2, %lo(D_801966F0) # addiu $a2, $a2, 0x66f0
/* 0BB7B4 8015AD74 2405000C */  li    $a1, 12
/* 0BB7B8 8015AD78 00021080 */  sll   $v0, $v0, 2
/* 0BB7BC 8015AD7C 01026821 */  addu  $t5, $t0, $v0
/* 0BB7C0 8015AD80 8DAE0000 */  lw    $t6, ($t5)
/* 0BB7C4 8015AD84 0162C821 */  addu  $t9, $t3, $v0
/* 0BB7C8 8015AD88 000E7880 */  sll   $t7, $t6, 2
/* 0BB7CC 8015AD8C 016FC021 */  addu  $t8, $t3, $t7
/* 0BB7D0 8015AD90 C7080000 */  lwc1  $f8, ($t8)
/* 0BB7D4 8015AD94 E7280000 */  swc1  $f8, ($t9)
/* 0BB7D8 8015AD98 8C6D0000 */  lw    $t5, ($v1)
/* 0BB7DC 8015AD9C 000D7080 */  sll   $t6, $t5, 2
/* 0BB7E0 8015ADA0 002E0821 */  addu  $at, $at, $t6
/* 0BB7E4 8015ADA4 AC208920 */  sw    $zero, -0x76e0($at)
/* 0BB7E8 8015ADA8 8C6F0000 */  lw    $t7, ($v1)
/* 0BB7EC 8015ADAC 3C01800F */  lui   $at, 0x800f
/* 0BB7F0 8015ADB0 000FC080 */  sll   $t8, $t7, 2
/* 0BB7F4 8015ADB4 0198C821 */  addu  $t9, $t4, $t8
/* 0BB7F8 8015ADB8 AF200000 */  sw    $zero, ($t9)
/* 0BB7FC 8015ADBC 8C620000 */  lw    $v0, ($v1)
/* 0BB800 8015ADC0 00021080 */  sll   $v0, $v0, 2
/* 0BB804 8015ADC4 01826821 */  addu  $t5, $t4, $v0
/* 0BB808 8015ADC8 8DAE0000 */  lw    $t6, ($t5)
/* 0BB80C 8015ADCC 00220821 */  addu  $at, $at, $v0
/* 0BB810 8015ADD0 AC2E83E0 */  sw    $t6, -0x7c20($at)
/* 0BB814 8015ADD4 8C6F0000 */  lw    $t7, ($v1)
/* 0BB818 8015ADD8 000FC080 */  sll   $t8, $t7, 2
/* 0BB81C 8015ADDC 00982021 */  addu  $a0, $a0, $t8
/* 0BB820 8015ADE0 0C02911F */  jal   call_virtual_function
/* 0BB824 8015ADE4 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 0BB828 8015ADE8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BB82C 8015ADEC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0BB830 8015ADF0 03E00008 */  jr    $ra
/* 0BB834 8015ADF4 00000000 */   nop   

.type func_8015AC90_ovl3, @function
.size func_8015AC90_ovl3, . - func_8015AC90_ovl3

glabel func_8015ADF8_ovl3
/* 0BB838 8015ADF8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BB83C 8015ADFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BB840 8015AE00 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BB844 8015AE04 0C058738 */  jal   func_80161CE0_ovl3
/* 0BB848 8015AE08 AFB00014 */   sw    $s0, 0x14($sp)
/* 0BB84C 8015AE0C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0BB850 8015AE10 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0BB854 8015AE14 8E2E0000 */  lw    $t6, ($s1)
/* 0BB858 8015AE18 3C04800F */  lui   $a0, 0x800f
/* 0BB85C 8015AE1C 3C0541A0 */  lui   $a1, 0x41a0
/* 0BB860 8015AE20 8DCF0000 */  lw    $t7, ($t6)
/* 0BB864 8015AE24 24060000 */  li    $a2, 0
/* 0BB868 8015AE28 000FC080 */  sll   $t8, $t7, 2
/* 0BB86C 8015AE2C 00982021 */  addu  $a0, $a0, $t8
/* 0BB870 8015AE30 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BB874 8015AE34 8C84C2E0 */   lw    $a0, -0x3d20($a0)
/* 0BB878 8015AE38 8E220000 */  lw    $v0, ($s1)
/* 0BB87C 8015AE3C 3C19800B */  lui   $t9, %hi(D_800B49F8) # $t9, 0x800b
/* 0BB880 8015AE40 3C01800E */  lui   $at, 0x800e
/* 0BB884 8015AE44 8C480000 */  lw    $t0, ($v0)
/* 0BB888 8015AE48 273949F8 */  addiu $t9, %lo(D_800B49F8) # addiu $t9, $t9, 0x49f8
/* 0BB88C 8015AE4C 3C0A8016 */  lui   $t2, %hi(D_8015B060) # $t2, 0x8016
/* 0BB890 8015AE50 00084880 */  sll   $t1, $t0, 2
/* 0BB894 8015AE54 00290821 */  addu  $at, $at, $t1
/* 0BB898 8015AE58 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0BB89C 8015AE5C 8C4B0000 */  lw    $t3, ($v0)
/* 0BB8A0 8015AE60 3C01800E */  lui   $at, 0x800e
/* 0BB8A4 8015AE64 254AB060 */  addiu $t2, %lo(D_8015B060) # addiu $t2, $t2, -0x4fa0
/* 0BB8A8 8015AE68 000B6080 */  sll   $t4, $t3, 2
/* 0BB8AC 8015AE6C 002C0821 */  addu  $at, $at, $t4
/* 0BB8B0 8015AE70 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 0BB8B4 8015AE74 8C4E0000 */  lw    $t6, ($v0)
/* 0BB8B8 8015AE78 3C01800E */  lui   $at, 0x800e
/* 0BB8BC 8015AE7C 3C0D8019 */  lui   $t5, %hi(D_80192B5C) # $t5, 0x8019
/* 0BB8C0 8015AE80 000E7880 */  sll   $t7, $t6, 2
/* 0BB8C4 8015AE84 002F0821 */  addu  $at, $at, $t7
/* 0BB8C8 8015AE88 25AD2B5C */  addiu $t5, %lo(D_80192B5C) # addiu $t5, $t5, 0x2b5c
/* 0BB8CC 8015AE8C AC2D0490 */  sw    $t5, 0x0490($at)
/* 0BB8D0 8015AE90 8C430000 */  lw    $v1, ($v0)
/* 0BB8D4 8015AE94 3C0B801A */  lui   $t3, %hi(D_801982F8) # $t3, 0x801a
/* 0BB8D8 8015AE98 3C198019 */  lui   $t9, %hi(D_80197F60) # $t9, 0x8019
/* 0BB8DC 8015AE9C 2467FFFC */  addiu $a3, $v1, -4
/* 0BB8E0 8015AEA0 00074080 */  sll   $t0, $a3, 2
/* 0BB8E4 8015AEA4 01074023 */  subu  $t0, $t0, $a3
/* 0BB8E8 8015AEA8 000840C0 */  sll   $t0, $t0, 3
/* 0BB8EC 8015AEAC 01074023 */  subu  $t0, $t0, $a3
/* 0BB8F0 8015AEB0 3C04800E */  lui   $a0, 0x800e
/* 0BB8F4 8015AEB4 0003C080 */  sll   $t8, $v1, 2
/* 0BB8F8 8015AEB8 00982021 */  addu  $a0, $a0, $t8
/* 0BB8FC 8015AEBC 00084080 */  sll   $t0, $t0, 2
/* 0BB900 8015AEC0 00074940 */  sll   $t1, $a3, 5
/* 0BB904 8015AEC4 27397F60 */  addiu $t9, %lo(D_80197F60) # addiu $t9, $t9, 0x7f60
/* 0BB908 8015AEC8 256B82F8 */  addiu $t3, %lo(D_801982F8) # addiu $t3, $t3, -0x7d08
/* 0BB90C 8015AECC 012B3021 */  addu  $a2, $t1, $t3
/* 0BB910 8015AED0 01192821 */  addu  $a1, $t0, $t9
/* 0BB914 8015AED4 0C055192 */  jal   func_80154648_ovl3
/* 0BB918 8015AED8 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0BB91C 8015AEDC 0C029D9E */  jal   play_sound
/* 0BB920 8015AEE0 24040004 */   li    $a0, 4
/* 0BB924 8015AEE4 8E220000 */  lw    $v0, ($s1)
/* 0BB928 8015AEE8 3C018019 */  lui   $at, %hi(D_80197050) # $at, 0x8019
/* 0BB92C 8015AEEC C4207050 */  lwc1  $f0, %lo(D_80197050)($at)
/* 0BB930 8015AEF0 8C4A0000 */  lw    $t2, ($v0)
/* 0BB934 8015AEF4 3C01800E */  lui   $at, 0x800e
/* 0BB938 8015AEF8 3C100002 */  lui   $s0, (0x00020001 >> 16) # lui $s0, 2
/* 0BB93C 8015AEFC 000A6080 */  sll   $t4, $t2, 2
/* 0BB940 8015AF00 002C0821 */  addu  $at, $at, $t4
/* 0BB944 8015AF04 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BB948 8015AF08 8C4E0000 */  lw    $t6, ($v0)
/* 0BB94C 8015AF0C 3C01800E */  lui   $at, 0x800e
/* 0BB950 8015AF10 36100001 */  ori   $s0, (0x00020001 & 0xFFFF) # ori $s0, $s0, 1
/* 0BB954 8015AF14 000E6880 */  sll   $t5, $t6, 2
/* 0BB958 8015AF18 002D0821 */  addu  $at, $at, $t5
/* 0BB95C 8015AF1C E4204710 */  swc1  $f0, 0x4710($at)
/* 0BB960 8015AF20 8C4F0000 */  lw    $t7, ($v0)
/* 0BB964 8015AF24 3C01800E */  lui   $at, 0x800e
/* 0BB968 8015AF28 02002025 */  move  $a0, $s0
/* 0BB96C 8015AF2C 000FC080 */  sll   $t8, $t7, 2
/* 0BB970 8015AF30 00380821 */  addu  $at, $at, $t8
/* 0BB974 8015AF34 24050021 */  li    $a1, 33
/* 0BB978 8015AF38 24060010 */  li    $a2, 16
/* 0BB97C 8015AF3C 0C02A619 */  jal   func_800A9864
/* 0BB980 8015AF40 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BB984 8015AF44 0C02A806 */  jal   func_800AA018
/* 0BB988 8015AF48 02002025 */   move  $a0, $s0
/* 0BB98C 8015AF4C 8E220000 */  lw    $v0, ($s1)
/* 0BB990 8015AF50 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 0BB994 8015AF54 44810000 */  mtc1  $at, $f0
/* 0BB998 8015AF58 8C500000 */  lw    $s0, ($v0)
/* 0BB99C 8015AF5C 3C01800E */  lui   $at, 0x800e
/* 0BB9A0 8015AF60 24040002 */  li    $a0, 2
/* 0BB9A4 8015AF64 00108080 */  sll   $s0, $s0, 2
/* 0BB9A8 8015AF68 00300821 */  addu  $at, $at, $s0
/* 0BB9AC 8015AF6C C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0BB9B0 8015AF70 3C01800E */  lui   $at, 0x800e
/* 0BB9B4 8015AF74 00300821 */  addu  $at, $at, $s0
/* 0BB9B8 8015AF78 46002182 */  mul.s $f6, $f4, $f0
/* 0BB9BC 8015AF7C E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BB9C0 8015AF80 8C480000 */  lw    $t0, ($v0)
/* 0BB9C4 8015AF84 3C01800E */  lui   $at, 0x800e
/* 0BB9C8 8015AF88 0008C880 */  sll   $t9, $t0, 2
/* 0BB9CC 8015AF8C 00390821 */  addu  $at, $at, $t9
/* 0BB9D0 8015AF90 0C002DAF */  jal   finish_current_thread
/* 0BB9D4 8015AF94 E4206850 */   swc1  $f0, 0x6850($at)
/* 0BB9D8 8015AF98 8E290000 */  lw    $t1, ($s1)
/* 0BB9DC 8015AF9C 3C01800E */  lui   $at, 0x800e
/* 0BB9E0 8015AFA0 24040002 */  li    $a0, 2
/* 0BB9E4 8015AFA4 8D300000 */  lw    $s0, ($t1)
/* 0BB9E8 8015AFA8 00108080 */  sll   $s0, $s0, 2
/* 0BB9EC 8015AFAC 00300821 */  addu  $at, $at, $s0
/* 0BB9F0 8015AFB0 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0BB9F4 8015AFB4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BB9F8 8015AFB8 44815000 */  mtc1  $at, $f10
/* 0BB9FC 8015AFBC 3C01800E */  lui   $at, 0x800e
/* 0BBA00 8015AFC0 00300821 */  addu  $at, $at, $s0
/* 0BBA04 8015AFC4 460A4402 */  mul.s $f16, $f8, $f10
/* 0BBA08 8015AFC8 0C002DAF */  jal   finish_current_thread
/* 0BBA0C 8015AFCC E43064D0 */   swc1  $f16, 0x64d0($at)
/* 0BBA10 8015AFD0 8E2B0000 */  lw    $t3, ($s1)
/* 0BBA14 8015AFD4 3C01800E */  lui   $at, 0x800e
/* 0BBA18 8015AFD8 24040002 */  li    $a0, 2
/* 0BBA1C 8015AFDC 8D700000 */  lw    $s0, ($t3)
/* 0BBA20 8015AFE0 00108080 */  sll   $s0, $s0, 2
/* 0BBA24 8015AFE4 00300821 */  addu  $at, $at, $s0
/* 0BBA28 8015AFE8 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 0BBA2C 8015AFEC 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0BBA30 8015AFF0 44812000 */  mtc1  $at, $f4
/* 0BBA34 8015AFF4 3C01800E */  lui   $at, 0x800e
/* 0BBA38 8015AFF8 00300821 */  addu  $at, $at, $s0
/* 0BBA3C 8015AFFC 46049182 */  mul.s $f6, $f18, $f4
/* 0BBA40 8015B000 0C002DAF */  jal   finish_current_thread
/* 0BBA44 8015B004 E42664D0 */   swc1  $f6, 0x64d0($at)
/* 0BBA48 8015B008 8E2A0000 */  lw    $t2, ($s1)
/* 0BBA4C 8015B00C 3C01800E */  lui   $at, 0x800e
/* 0BBA50 8015B010 24040002 */  li    $a0, 2
/* 0BBA54 8015B014 8D500000 */  lw    $s0, ($t2)
/* 0BBA58 8015B018 00108080 */  sll   $s0, $s0, 2
/* 0BBA5C 8015B01C 00300821 */  addu  $at, $at, $s0
/* 0BBA60 8015B020 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0BBA64 8015B024 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0BBA68 8015B028 44815000 */  mtc1  $at, $f10
/* 0BBA6C 8015B02C 3C01800E */  lui   $at, 0x800e
/* 0BBA70 8015B030 00300821 */  addu  $at, $at, $s0
/* 0BBA74 8015B034 460A4402 */  mul.s $f16, $f8, $f10
/* 0BBA78 8015B038 0C002DAF */  jal   finish_current_thread
/* 0BBA7C 8015B03C E43064D0 */   swc1  $f16, 0x64d0($at)
/* 0BBA80 8015B040 8E2C0000 */  lw    $t4, ($s1)
/* 0BBA84 8015B044 0C02C640 */  jal   func_800B1900
/* 0BBA88 8015B048 95840002 */   lhu   $a0, 2($t4)
/* 0BBA8C 8015B04C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0BBA90 8015B050 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BBA94 8015B054 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BBA98 8015B058 03E00008 */  jr    $ra
/* 0BBA9C 8015B05C 27BD0020 */   addiu $sp, $sp, 0x20

.type func_8015ADF8_ovl3, @function
.size func_8015ADF8_ovl3, . - func_8015ADF8_ovl3

glabel func_8015B060_ovl3
/* 0BBAA0 8015B060 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BBAA4 8015B064 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BBAA8 8015B068 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0BBAAC 8015B06C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BBAB0 8015B070 AFA40018 */  sw    $a0, 0x18($sp)
/* 0BBAB4 8015B074 8C430000 */  lw    $v1, ($v0)
/* 0BBAB8 8015B078 3C01800E */  lui   $at, 0x800e
/* 0BBABC 8015B07C 3C0E800E */  lui   $t6, 0x800e
/* 0BBAC0 8015B080 00031880 */  sll   $v1, $v1, 2
/* 0BBAC4 8015B084 00230821 */  addu  $at, $at, $v1
/* 0BBAC8 8015B088 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BBACC 8015B08C 3C01800E */  lui   $at, 0x800e
/* 0BBAD0 8015B090 00230821 */  addu  $at, $at, $v1
/* 0BBAD4 8015B094 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BBAD8 8015B098 8C460000 */  lw    $a2, ($v0)
/* 0BBADC 8015B09C 3C0F800F */  lui   $t7, 0x800f
/* 0BBAE0 8015B0A0 00061880 */  sll   $v1, $a2, 2
/* 0BBAE4 8015B0A4 01C37021 */  addu  $t6, $t6, $v1
/* 0BBAE8 8015B0A8 8DCE6310 */  lw    $t6, 0x6310($t6)
/* 0BBAEC 8015B0AC 01E37821 */  addu  $t7, $t7, $v1
/* 0BBAF0 8015B0B0 15C00031 */  bnez  $t6, .L8015B178_ovl3
/* 0BBAF4 8015B0B4 00000000 */   nop   
/* 0BBAF8 8015B0B8 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 0BBAFC 8015B0BC 24C2FFFC */  addiu $v0, $a2, -4
/* 0BBB00 8015B0C0 0002C080 */  sll   $t8, $v0, 2
/* 0BBB04 8015B0C4 15E0001E */  bnez  $t7, .L8015B140_ovl3
/* 0BBB08 8015B0C8 0302C023 */   subu  $t8, $t8, $v0
/* 0BBB0C 8015B0CC 0018C0C0 */  sll   $t8, $t8, 3
/* 0BBB10 8015B0D0 0302C023 */  subu  $t8, $t8, $v0
/* 0BBB14 8015B0D4 3C198019 */  lui   $t9, %hi(D_80197F60) # $t9, 0x8019
/* 0BBB18 8015B0D8 3C09801A */  lui   $t1, %hi(D_801982F8) # $t1, 0x801a
/* 0BBB1C 8015B0DC 252982F8 */  addiu $t1, %lo(D_801982F8) # addiu $t1, $t1, -0x7d08
/* 0BBB20 8015B0E0 27397F60 */  addiu $t9, %lo(D_80197F60) # addiu $t9, $t9, 0x7f60
/* 0BBB24 8015B0E4 0018C080 */  sll   $t8, $t8, 2
/* 0BBB28 8015B0E8 00024140 */  sll   $t0, $v0, 5
/* 0BBB2C 8015B0EC 01092821 */  addu  $a1, $t0, $t1
/* 0BBB30 8015B0F0 0C055543 */  jal   func_8015550C_ovl3
/* 0BBB34 8015B0F4 03192021 */   addu  $a0, $t8, $t9
/* 0BBB38 8015B0F8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0BBB3C 8015B0FC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0BBB40 8015B100 3C0B800F */  lui   $t3, 0x800f
/* 0BBB44 8015B104 8D460000 */  lw    $a2, ($t2)
/* 0BBB48 8015B108 00061880 */  sll   $v1, $a2, 2
/* 0BBB4C 8015B10C 01635821 */  addu  $t3, $t3, $v1
/* 0BBB50 8015B110 8D6B8920 */  lw    $t3, -0x76e0($t3)
/* 0BBB54 8015B114 1560000A */  bnez  $t3, .L8015B140_ovl3
/* 0BBB58 8015B118 00000000 */   nop   
/* 0BBB5C 8015B11C 14400008 */  bnez  $v0, .L8015B140_ovl3
/* 0BBB60 8015B120 3C048019 */   lui   $a0, %hi(D_80190B28) # $a0, 0x8019
/* 0BBB64 8015B124 24840B28 */  addiu $a0, %lo(D_80190B28) # addiu $a0, $a0, 0xb28
/* 0BBB68 8015B128 0C0445EF */  jal   func_801117BC
/* 0BBB6C 8015B12C 00C02825 */   move  $a1, $a2
/* 0BBB70 8015B130 0C044713 */  jal   func_80111C4C
/* 0BBB74 8015B134 00402025 */   move  $a0, $v0
/* 0BBB78 8015B138 10000012 */  b     .L8015B184_ovl3
/* 0BBB7C 8015B13C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8015B140_ovl3:
/* 0BBB80 8015B140 3C05800E */  lui   $a1, 0x800e
/* 0BBB84 8015B144 3C06800E */  lui   $a2, 0x800e
/* 0BBB88 8015B148 3C07800E */  lui   $a3, 0x800e
/* 0BBB8C 8015B14C 00E33821 */  addu  $a3, $a3, $v1
/* 0BBB90 8015B150 00C33021 */  addu  $a2, $a2, $v1
/* 0BBB94 8015B154 00A32821 */  addu  $a1, $a1, $v1
/* 0BBB98 8015B158 8CA525D0 */  lw    $a1, 0x25d0($a1)
/* 0BBB9C 8015B15C 8CC62790 */  lw    $a2, 0x2790($a2)
/* 0BBBA0 8015B160 8CE72950 */  lw    $a3, 0x2950($a3)
/* 0BBBA4 8015B164 0C03F5D5 */  jal   func_800FD754
/* 0BBBA8 8015B168 24040005 */   li    $a0, 5
/* 0BBBAC 8015B16C 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0BBBB0 8015B170 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0BBBB4 8015B174 8D860000 */  lw    $a2, ($t4)
.L8015B178_ovl3:
/* 0BBBB8 8015B178 0C02C640 */  jal   func_800B1900
/* 0BBBBC 8015B17C 30C4FFFF */   andi  $a0, $a2, 0xffff
/* 0BBBC0 8015B180 8FBF0014 */  lw    $ra, 0x14($sp)
.L8015B184_ovl3:
/* 0BBBC4 8015B184 27BD0018 */  addiu $sp, $sp, 0x18
/* 0BBBC8 8015B188 03E00008 */  jr    $ra
/* 0BBBCC 8015B18C 00000000 */   nop   

.type func_8015B060_ovl3, @function
.size func_8015B060_ovl3, . - func_8015B060_ovl3

glabel func_8015B190_ovl3
/* 0BBBD0 8015B190 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BBBD4 8015B194 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BBBD8 8015B198 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BBBDC 8015B19C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BBBE0 8015B1A0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0BBBE4 8015B1A4 8C6F0000 */  lw    $t7, ($v1)
/* 0BBBE8 8015B1A8 3C018019 */  lui   $at, %hi(D_80197054) # $at, 0x8019
/* 0BBBEC 8015B1AC C4207054 */  lwc1  $f0, %lo(D_80197054)($at)
/* 0BBBF0 8015B1B0 3C01800E */  lui   $at, 0x800e
/* 0BBBF4 8015B1B4 3C0E800B */  lui   $t6, %hi(func_800B5064) # $t6, 0x800b
/* 0BBBF8 8015B1B8 000FC080 */  sll   $t8, $t7, 2
/* 0BBBFC 8015B1BC 00380821 */  addu  $at, $at, $t8
/* 0BBC00 8015B1C0 25CE5064 */  addiu $t6, %lo(func_800B5064) # addiu $t6, $t6, 0x5064
/* 0BBC04 8015B1C4 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0BBC08 8015B1C8 8C6A0000 */  lw    $t2, ($v1)
/* 0BBC0C 8015B1CC 3C01800E */  lui   $at, 0x800e
/* 0BBC10 8015B1D0 3C198016 */  lui   $t9, %hi(D_8015B75C) # $t9, 0x8016
/* 0BBC14 8015B1D4 000A5880 */  sll   $t3, $t2, 2
/* 0BBC18 8015B1D8 002B0821 */  addu  $at, $at, $t3
/* 0BBC1C 8015B1DC 2739B75C */  addiu $t9, %lo(D_8015B75C) # addiu $t9, $t9, -0x48a4
/* 0BBC20 8015B1E0 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0BBC24 8015B1E4 8C6D0000 */  lw    $t5, ($v1)
/* 0BBC28 8015B1E8 3C01800E */  lui   $at, 0x800e
/* 0BBC2C 8015B1EC 240C000E */  li    $t4, 14
/* 0BBC30 8015B1F0 000D7880 */  sll   $t7, $t5, 2
/* 0BBC34 8015B1F4 002F0821 */  addu  $at, $at, $t7
/* 0BBC38 8015B1F8 AC2C0F10 */  sw    $t4, 0xf10($at)
/* 0BBC3C 8015B1FC 8C6E0000 */  lw    $t6, ($v1)
/* 0BBC40 8015B200 3C01800E */  lui   $at, 0x800e
/* 0BBC44 8015B204 3C040002 */  lui   $a0, (0x0002002D >> 16) # lui $a0, 2
/* 0BBC48 8015B208 000EC080 */  sll   $t8, $t6, 2
/* 0BBC4C 8015B20C 00380821 */  addu  $at, $at, $t8
/* 0BBC50 8015B210 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BBC54 8015B214 8C6A0000 */  lw    $t2, ($v1)
/* 0BBC58 8015B218 3C01800E */  lui   $at, 0x800e
/* 0BBC5C 8015B21C 3484002D */  ori   $a0, (0x0002002D & 0xFFFF) # ori $a0, $a0, 0x2d
/* 0BBC60 8015B220 000AC880 */  sll   $t9, $t2, 2
/* 0BBC64 8015B224 00390821 */  addu  $at, $at, $t9
/* 0BBC68 8015B228 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BBC6C 8015B22C 8C6B0000 */  lw    $t3, ($v1)
/* 0BBC70 8015B230 3C01800E */  lui   $at, 0x800e
/* 0BBC74 8015B234 24050021 */  li    $a1, 33
/* 0BBC78 8015B238 000B6880 */  sll   $t5, $t3, 2
/* 0BBC7C 8015B23C 002D0821 */  addu  $at, $at, $t5
/* 0BBC80 8015B240 24060010 */  li    $a2, 16
/* 0BBC84 8015B244 0C02A619 */  jal   func_800A9864
/* 0BBC88 8015B248 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BBC8C 8015B24C 3C040002 */  lui   $a0, (0x0002027D >> 16) # lui $a0, 2
/* 0BBC90 8015B250 0C02A806 */  jal   func_800AA018
/* 0BBC94 8015B254 3484027D */   ori   $a0, (0x0002027D & 0xFFFF) # ori $a0, $a0, 0x27d
/* 0BBC98 8015B258 24040001 */  li    $a0, 1
/* 0BBC9C 8015B25C 24050001 */  li    $a1, 1
/* 0BBCA0 8015B260 0C02A08D */  jal   func_800A8234
/* 0BBCA4 8015B264 2406000C */   li    $a2, 12
/* 0BBCA8 8015B268 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BBCAC 8015B26C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BBCB0 8015B270 3C01800F */  lui   $at, 0x800f
/* 0BBCB4 8015B274 3C0A8013 */  lui   $t2, %hi(D_8012E7FC) # $t2, 0x8013
/* 0BBCB8 8015B278 8C6C0000 */  lw    $t4, ($v1)
/* 0BBCBC 8015B27C 8D4AE7FC */  lw    $t2, %lo(D_8012E7FC)($t2)
/* 0BBCC0 8015B280 000C7880 */  sll   $t7, $t4, 2
/* 0BBCC4 8015B284 002F0821 */  addu  $at, $at, $t7
/* 0BBCC8 8015B288 AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0BBCCC 8015B28C 8C6E0000 */  lw    $t6, ($v1)
/* 0BBCD0 8015B290 3C01800F */  lui   $at, 0x800f
/* 0BBCD4 8015B294 000EC080 */  sll   $t8, $t6, 2
/* 0BBCD8 8015B298 00380821 */  addu  $at, $at, $t8
/* 0BBCDC 8015B29C 15400009 */  bnez  $t2, .L8015B2C4_ovl3
/* 0BBCE0 8015B2A0 AC209AA0 */   sw    $zero, -0x6560($at)
.L8015B2A4_ovl3:
/* 0BBCE4 8015B2A4 0C002DAF */  jal   finish_current_thread
/* 0BBCE8 8015B2A8 24040001 */   li    $a0, 1
/* 0BBCEC 8015B2AC 3C198013 */  lui   $t9, %hi(D_8012E7FC) # $t9, 0x8013
/* 0BBCF0 8015B2B0 8F39E7FC */  lw    $t9, %lo(D_8012E7FC)($t9)
/* 0BBCF4 8015B2B4 1320FFFB */  beqz  $t9, .L8015B2A4_ovl3
/* 0BBCF8 8015B2B8 00000000 */   nop   
/* 0BBCFC 8015B2BC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BBD00 8015B2C0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
.L8015B2C4_ovl3:
/* 0BBD04 8015B2C4 8C6D0000 */  lw    $t5, ($v1)
/* 0BBD08 8015B2C8 3C0B800B */  lui   $t3, %hi(func_800B4954) # $t3, 0x800b
/* 0BBD0C 8015B2CC 3C01800E */  lui   $at, 0x800e
/* 0BBD10 8015B2D0 000D6080 */  sll   $t4, $t5, 2
/* 0BBD14 8015B2D4 002C0821 */  addu  $at, $at, $t4
/* 0BBD18 8015B2D8 256B4954 */  addiu $t3, %lo(func_800B4954) # addiu $t3, $t3, 0x4954
/* 0BBD1C 8015B2DC AC2BEF90 */  sw    $t3, -0x1070($at)
/* 0BBD20 8015B2E0 8C6F0000 */  lw    $t7, ($v1)
/* 0BBD24 8015B2E4 3C01800F */  lui   $at, 0x800f
/* 0BBD28 8015B2E8 24050001 */  li    $a1, 1
/* 0BBD2C 8015B2EC 000F7080 */  sll   $t6, $t7, 2
/* 0BBD30 8015B2F0 002E0821 */  addu  $at, $at, $t6
/* 0BBD34 8015B2F4 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 0BBD38 8015B2F8 8C780000 */  lw    $t8, ($v1)
/* 0BBD3C 8015B2FC 3C01800F */  lui   $at, 0x800f
/* 0BBD40 8015B300 3C19800E */  lui   $t9, 0x800e
/* 0BBD44 8015B304 00185080 */  sll   $t2, $t8, 2
/* 0BBD48 8015B308 002A0821 */  addu  $at, $at, $t2
/* 0BBD4C 8015B30C AC259AA0 */  sw    $a1, -0x6560($at)
/* 0BBD50 8015B310 8C620000 */  lw    $v0, ($v1)
/* 0BBD54 8015B314 3C04800F */  lui   $a0, 0x800f
/* 0BBD58 8015B318 00021080 */  sll   $v0, $v0, 2
/* 0BBD5C 8015B31C 0322C821 */  addu  $t9, $t9, $v0
/* 0BBD60 8015B320 8F390D50 */  lw    $t9, 0xd50($t9)
/* 0BBD64 8015B324 00196880 */  sll   $t5, $t9, 2
/* 0BBD68 8015B328 008D2021 */  addu  $a0, $a0, $t5
/* 0BBD6C 8015B32C 8C849720 */  lw    $a0, -0x68e0($a0)
/* 0BBD70 8015B330 28810005 */  slti  $at, $a0, 5
/* 0BBD74 8015B334 10200004 */  beqz  $at, .L8015B348_ovl3
/* 0BBD78 8015B338 3C01800F */   lui   $at, 0x800f
/* 0BBD7C 8015B33C 00220821 */  addu  $at, $at, $v0
/* 0BBD80 8015B340 1000000B */  b     .L8015B370_ovl3
/* 0BBD84 8015B344 AC2098E0 */   sw    $zero, -0x6720($at)
.L8015B348_ovl3:
/* 0BBD88 8015B348 2881000A */  slti  $at, $a0, 0xa
/* 0BBD8C 8015B34C 10200005 */  beqz  $at, .L8015B364_ovl3
/* 0BBD90 8015B350 240B0002 */   li    $t3, 2
/* 0BBD94 8015B354 3C01800F */  lui   $at, 0x800f
/* 0BBD98 8015B358 00220821 */  addu  $at, $at, $v0
/* 0BBD9C 8015B35C 10000004 */  b     .L8015B370_ovl3
/* 0BBDA0 8015B360 AC2598E0 */   sw    $a1, -0x6720($at)
.L8015B364_ovl3:
/* 0BBDA4 8015B364 3C01800F */  lui   $at, 0x800f
/* 0BBDA8 8015B368 00220821 */  addu  $at, $at, $v0
/* 0BBDAC 8015B36C AC2B98E0 */  sw    $t3, -0x6720($at)
.L8015B370_ovl3:
/* 0BBDB0 8015B370 0C058738 */  jal   func_80161CE0_ovl3
/* 0BBDB4 8015B374 8FA40030 */   lw    $a0, 0x30($sp)
/* 0BBDB8 8015B378 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0BBDBC 8015B37C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0BBDC0 8015B380 3C18800F */  lui   $t8, 0x800f
/* 0BBDC4 8015B384 3C198019 */  lui   $t9, %hi(D_80196720) # $t9, 0x8019
/* 0BBDC8 8015B388 8D8F0000 */  lw    $t7, ($t4)
/* 0BBDCC 8015B38C 27396720 */  addiu $t9, %lo(D_80196720) # addiu $t9, $t9, 0x6720
/* 0BBDD0 8015B390 00002025 */  move  $a0, $zero
/* 0BBDD4 8015B394 000F7080 */  sll   $t6, $t7, 2
/* 0BBDD8 8015B398 030EC021 */  addu  $t8, $t8, $t6
/* 0BBDDC 8015B39C 8F1898E0 */  lw    $t8, -0x6720($t8)
/* 0BBDE0 8015B3A0 00185100 */  sll   $t2, $t8, 4
/* 0BBDE4 8015B3A4 01591021 */  addu  $v0, $t2, $t9
/* 0BBDE8 8015B3A8 8C450000 */  lw    $a1, ($v0)
/* 0BBDEC 8015B3AC 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BBDF0 8015B3B0 8C460004 */   lw    $a2, 4($v0)
/* 0BBDF4 8015B3B4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BBDF8 8015B3B8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BBDFC 8015B3BC 3C0D8019 */  lui   $t5, %hi(D_80192B78) # $t5, 0x8019
/* 0BBE00 8015B3C0 3C01800E */  lui   $at, 0x800e
/* 0BBE04 8015B3C4 8C6B0000 */  lw    $t3, ($v1)
/* 0BBE08 8015B3C8 25AD2B78 */  addiu $t5, %lo(D_80192B78) # addiu $t5, $t5, 0x2b78
/* 0BBE0C 8015B3CC 3C04800E */  lui   $a0, 0x800e
/* 0BBE10 8015B3D0 000B6080 */  sll   $t4, $t3, 2
/* 0BBE14 8015B3D4 002C0821 */  addu  $at, $at, $t4
/* 0BBE18 8015B3D8 AC2D0490 */  sw    $t5, 0x0490($at)
/* 0BBE1C 8015B3DC 8C670000 */  lw    $a3, ($v1)
/* 0BBE20 8015B3E0 3C188019 */  lui   $t8, %hi(D_80197F60) # $t8, 0x8019
/* 0BBE24 8015B3E4 3C19801A */  lui   $t9, %hi(D_801982F8) # $t9, 0x801a
/* 0BBE28 8015B3E8 24E8FFFC */  addiu $t0, $a3, -4
/* 0BBE2C 8015B3EC 00087080 */  sll   $t6, $t0, 2
/* 0BBE30 8015B3F0 01C87023 */  subu  $t6, $t6, $t0
/* 0BBE34 8015B3F4 000E70C0 */  sll   $t6, $t6, 3
/* 0BBE38 8015B3F8 01C87023 */  subu  $t6, $t6, $t0
/* 0BBE3C 8015B3FC 00077880 */  sll   $t7, $a3, 2
/* 0BBE40 8015B400 008F2021 */  addu  $a0, $a0, $t7
/* 0BBE44 8015B404 000E7080 */  sll   $t6, $t6, 2
/* 0BBE48 8015B408 00085140 */  sll   $t2, $t0, 5
/* 0BBE4C 8015B40C 273982F8 */  addiu $t9, %lo(D_801982F8) # addiu $t9, $t9, -0x7d08
/* 0BBE50 8015B410 27187F60 */  addiu $t8, %lo(D_80197F60) # addiu $t8, $t8, 0x7f60
/* 0BBE54 8015B414 01D82821 */  addu  $a1, $t6, $t8
/* 0BBE58 8015B418 01593021 */  addu  $a2, $t2, $t9
/* 0BBE5C 8015B41C 0C055192 */  jal   func_80154648_ovl3
/* 0BBE60 8015B420 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0BBE64 8015B424 0C02BCC5 */  jal   func_800AF314
/* 0BBE68 8015B428 00000000 */   nop   
/* 0BBE6C 8015B42C 3C040002 */  lui   $a0, (0x0002002D >> 16) # lui $a0, 2
/* 0BBE70 8015B430 0C02A5D8 */  jal   func_800A9760
/* 0BBE74 8015B434 3484002D */   ori   $a0, (0x0002002D & 0xFFFF) # ori $a0, $a0, 0x2d
/* 0BBE78 8015B438 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BBE7C 8015B43C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BBE80 8015B440 3C0E8019 */  lui   $t6, %hi(D_80197F60) # $t6, 0x8019
/* 0BBE84 8015B444 25CE7F60 */  addiu $t6, %lo(D_80197F60) # addiu $t6, $t6, 0x7f60
/* 0BBE88 8015B448 8D6D0000 */  lw    $t5, ($t3)
/* 0BBE8C 8015B44C 000D6080 */  sll   $t4, $t5, 2
/* 0BBE90 8015B450 018D6023 */  subu  $t4, $t4, $t5
/* 0BBE94 8015B454 000C60C0 */  sll   $t4, $t4, 3
/* 0BBE98 8015B458 018D6023 */  subu  $t4, $t4, $t5
/* 0BBE9C 8015B45C 000C6080 */  sll   $t4, $t4, 2
/* 0BBEA0 8015B460 258FFE90 */  addiu $t7, $t4, -0x170
/* 0BBEA4 8015B464 0C055509 */  jal   func_80155424_ovl3
/* 0BBEA8 8015B468 01EE2021 */   addu  $a0, $t7, $t6
/* 0BBEAC 8015B46C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BBEB0 8015B470 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BBEB4 8015B474 3C01800F */  lui   $at, 0x800f
/* 0BBEB8 8015B478 27A50028 */  addiu $a1, $sp, 0x28
/* 0BBEBC 8015B47C 8F0A0000 */  lw    $t2, ($t8)
/* 0BBEC0 8015B480 2404001E */  li    $a0, 30
/* 0BBEC4 8015B484 27A6002C */  addiu $a2, $sp, 0x2c
/* 0BBEC8 8015B488 000AC880 */  sll   $t9, $t2, 2
/* 0BBECC 8015B48C 00390821 */  addu  $at, $at, $t9
/* 0BBED0 8015B490 0C029DFA */  jal   func_800A77E8
/* 0BBED4 8015B494 AC25A360 */   sw    $a1, -0x5ca0($at)
/* 0BBED8 8015B498 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BBEDC 8015B49C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BBEE0 8015B4A0 3C04800F */  lui   $a0, %hi(D_800E8AE0) # $a0, 0x800f
/* 0BBEE4 8015B4A4 24848AE0 */  addiu $a0, %lo(D_800E8AE0) # addiu $a0, $a0, -0x7520
/* 0BBEE8 8015B4A8 8C620000 */  lw    $v0, ($v1)
/* 0BBEEC 8015B4AC 3C01800F */  lui   $at, 0x800f
/* 0BBEF0 8015B4B0 3C09800D */  lui   $t1, %hi(D_800D7244) # $t1, 0x800d
/* 0BBEF4 8015B4B4 00021080 */  sll   $v0, $v0, 2
/* 0BBEF8 8015B4B8 00825821 */  addu  $t3, $a0, $v0
/* 0BBEFC 8015B4BC 8D6D0000 */  lw    $t5, ($t3)
/* 0BBF00 8015B4C0 240F003C */  li    $t7, 60
/* 0BBF04 8015B4C4 00220821 */  addu  $at, $at, $v0
/* 0BBF08 8015B4C8 31AC0004 */  andi  $t4, $t5, 4
/* 0BBF0C 8015B4CC 11800009 */  beqz  $t4, .L8015B4F4_ovl3
/* 0BBF10 8015B4D0 240E001E */   li    $t6, 30
/* 0BBF14 8015B4D4 3C01800F */  lui   $at, 0x800f
/* 0BBF18 8015B4D8 00220821 */  addu  $at, $at, $v0
/* 0BBF1C 8015B4DC AC2F9720 */  sw    $t7, -0x68e0($at)
/* 0BBF20 8015B4E0 3C018019 */  lui   $at, %hi(D_80189720) # $at, 0x8019
/* 0BBF24 8015B4E4 C4247058 */  lwc1  $f4, %lo(D_80197058)($at)
/* 0BBF28 8015B4E8 25297244 */  addiu $t1, %lo(D_800D7244) # addiu $t1, $t1, 0x7244
/* 0BBF2C 8015B4EC 10000007 */  b     .L8015B50C_ovl3
/* 0BBF30 8015B4F0 E5240000 */   swc1  $f4, ($t1)
.L8015B4F4_ovl3:
/* 0BBF34 8015B4F4 AC2E9720 */  sw    $t6, %lo(D_80189720)($at)
/* 0BBF38 8015B4F8 3C018019 */  lui   $at, %hi(D_8019705C) # $at, 0x8019
/* 0BBF3C 8015B4FC C426705C */  lwc1  $f6, %lo(D_8019705C)($at)
/* 0BBF40 8015B500 3C09800D */  lui   $t1, %hi(D_800D7244) # $t1, 0x800d
/* 0BBF44 8015B504 25297244 */  addiu $t1, %lo(D_800D7244) # addiu $t1, $t1, 0x7244
/* 0BBF48 8015B508 E5260000 */  swc1  $f6, ($t1)
.L8015B50C_ovl3:
/* 0BBF4C 8015B50C 8C620000 */  lw    $v0, ($v1)
/* 0BBF50 8015B510 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 0BBF54 8015B514 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 0BBF58 8015B518 00021080 */  sll   $v0, $v0, 2
/* 0BBF5C 8015B51C 0082C021 */  addu  $t8, $a0, $v0
/* 0BBF60 8015B520 8F0A0000 */  lw    $t2, ($t8)
/* 0BBF64 8015B524 00C25821 */  addu  $t3, $a2, $v0
/* 0BBF68 8015B528 3C058019 */  lui   $a1, %hi(D_80196720) # $a1, 0x8019
/* 0BBF6C 8015B52C 31590004 */  andi  $t9, $t2, 4
/* 0BBF70 8015B530 1720000A */  bnez  $t9, .L8015B55C_ovl3
/* 0BBF74 8015B534 00000000 */   nop   
/* 0BBF78 8015B538 8D6D0000 */  lw    $t5, ($t3)
/* 0BBF7C 8015B53C 24A56720 */  addiu $a1, %lo(D_80196720) # addiu $a1, $a1, 0x6720
/* 0BBF80 8015B540 3C07800D */  lui   $a3, %hi(D_800D7238) # $a3, 0x800d
/* 0BBF84 8015B544 000D6100 */  sll   $t4, $t5, 4
/* 0BBF88 8015B548 00AC7821 */  addu  $t7, $a1, $t4
/* 0BBF8C 8015B54C C5E80008 */  lwc1  $f8, 8($t7)
/* 0BBF90 8015B550 24E77238 */  addiu $a3, %lo(D_800D7238) # addiu $a3, $a3, 0x7238
/* 0BBF94 8015B554 10000012 */  b     .L8015B5A0_ovl3
/* 0BBF98 8015B558 E4E80000 */   swc1  $f8, ($a3)
.L8015B55C_ovl3:
/* 0BBF9C 8015B55C 3C0E800F */  lui   $t6, 0x800f
/* 0BBFA0 8015B560 01C27021 */  addu  $t6, $t6, $v0
/* 0BBFA4 8015B564 8DCE98E0 */  lw    $t6, -0x6720($t6)
/* 0BBFA8 8015B568 3C018019 */  li    $at, 0x80190000 # -0.000000
/* 0BBFAC 8015B56C 3C07800D */  lui   $a3, %hi(D_800D7238) # $a3, 0x800d
/* 0BBFB0 8015B570 000EC100 */  sll   $t8, $t6, 4
/* 0BBFB4 8015B574 00380821 */  addu  $at, $at, $t8
/* 0BBFB8 8015B578 C42A6728 */  lwc1  $f10, 0x6728($at)
/* 0BBFBC 8015B57C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0BBFC0 8015B580 44818000 */  mtc1  $at, $f16
/* 0BBFC4 8015B584 24E77238 */  addiu $a3, %lo(D_800D7238) # addiu $a3, $a3, 0x7238
/* 0BBFC8 8015B588 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 0BBFCC 8015B58C 46105482 */  mul.s $f18, $f10, $f16
/* 0BBFD0 8015B590 3C058019 */  lui   $a1, %hi(D_80196720) # $a1, 0x8019
/* 0BBFD4 8015B594 24A56720 */  addiu $a1, %lo(D_80196720) # addiu $a1, $a1, 0x6720
/* 0BBFD8 8015B598 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 0BBFDC 8015B59C E4F20000 */  swc1  $f18, ($a3)
.L8015B5A0_ovl3:
/* 0BBFE0 8015B5A0 8C620000 */  lw    $v0, ($v1)
/* 0BBFE4 8015B5A4 00021080 */  sll   $v0, $v0, 2
/* 0BBFE8 8015B5A8 00825021 */  addu  $t2, $a0, $v0
/* 0BBFEC 8015B5AC 8D590000 */  lw    $t9, ($t2)
/* 0BBFF0 8015B5B0 00C2C021 */  addu  $t8, $a2, $v0
/* 0BBFF4 8015B5B4 00C26821 */  addu  $t5, $a2, $v0
/* 0BBFF8 8015B5B8 332B0004 */  andi  $t3, $t9, 4
/* 0BBFFC 8015B5BC 5560000A */  bnezl $t3, .L8015B5E8_ovl3
/* 0BC000 8015B5C0 8F0A0000 */   lw    $t2, ($t8)
/* 0BC004 8015B5C4 8DAC0000 */  lw    $t4, ($t5)
/* 0BC008 8015B5C8 3C08800D */  lui   $t0, %hi(D_800D723C) # $t0, 0x800d
/* 0BC00C 8015B5CC 2508723C */  addiu $t0, %lo(D_800D723C) # addiu $t0, $t0, 0x723c
/* 0BC010 8015B5D0 000C7900 */  sll   $t7, $t4, 4
/* 0BC014 8015B5D4 00AF7021 */  addu  $t6, $a1, $t7
/* 0BC018 8015B5D8 C5C4000C */  lwc1  $f4, 0xc($t6)
/* 0BC01C 8015B5DC 1000000B */  b     .L8015B60C_ovl3
/* 0BC020 8015B5E0 E5040000 */   swc1  $f4, ($t0)
/* 0BC024 8015B5E4 8F0A0000 */  lw    $t2, ($t8)
.L8015B5E8_ovl3:
/* 0BC028 8015B5E8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0BC02C 8015B5EC 44814000 */  mtc1  $at, $f8
/* 0BC030 8015B5F0 000AC900 */  sll   $t9, $t2, 4
/* 0BC034 8015B5F4 00B95821 */  addu  $t3, $a1, $t9
/* 0BC038 8015B5F8 C566000C */  lwc1  $f6, 0xc($t3)
/* 0BC03C 8015B5FC 3C08800D */  lui   $t0, %hi(D_800D723C) # $t0, 0x800d
/* 0BC040 8015B600 2508723C */  addiu $t0, %lo(D_800D723C) # addiu $t0, $t0, 0x723c
/* 0BC044 8015B604 46083282 */  mul.s $f10, $f6, $f8
/* 0BC048 8015B608 E50A0000 */  swc1  $f10, ($t0)
.L8015B60C_ovl3:
/* 0BC04C 8015B60C 8C6D0000 */  lw    $t5, ($v1)
/* 0BC050 8015B610 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BC054 8015B614 000D6080 */  sll   $t4, $t5, 2
/* 0BC058 8015B618 008C7821 */  addu  $t7, $a0, $t4
/* 0BC05C 8015B61C 8DEE0000 */  lw    $t6, ($t7)
/* 0BC060 8015B620 3C04800D */  lui   $a0, %hi(D_800D7240) # $a0, 0x800d
/* 0BC064 8015B624 31D80004 */  andi  $t8, $t6, 4
/* 0BC068 8015B628 57000007 */  bnezl $t8, .L8015B648_ovl3
/* 0BC06C 8015B62C 44819000 */   mtc1  $at, $f18
/* 0BC070 8015B630 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BC074 8015B634 44818000 */  mtc1  $at, $f16
/* 0BC078 8015B638 24847240 */  addiu $a0, %lo(D_800D7240) # addiu $a0, $a0, 0x7240
/* 0BC07C 8015B63C 10000005 */  b     .L8015B654_ovl3
/* 0BC080 8015B640 E4900000 */   swc1  $f16, ($a0)
/* 0BC084 8015B644 44819000 */  mtc1  $at, $f18
.L8015B648_ovl3:
/* 0BC088 8015B648 3C04800D */  lui   $a0, %hi(D_800D7240) # $a0, 0x800d
/* 0BC08C 8015B64C 24847240 */  addiu $a0, %lo(D_800D7240) # addiu $a0, $a0, 0x7240
/* 0BC090 8015B650 E4920000 */  swc1  $f18, ($a0)
.L8015B654_ovl3:
/* 0BC094 8015B654 8C620000 */  lw    $v0, ($v1)
/* 0BC098 8015B658 3C01800E */  lui   $at, 0x800e
/* 0BC09C 8015B65C C4E00000 */  lwc1  $f0, ($a3)
/* 0BC0A0 8015B660 00021080 */  sll   $v0, $v0, 2
/* 0BC0A4 8015B664 00220821 */  addu  $at, $at, $v0
/* 0BC0A8 8015B668 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0BC0AC 8015B66C 3C01800E */  lui   $at, 0x800e
/* 0BC0B0 8015B670 44801000 */  mtc1  $zero, $f2
/* 0BC0B4 8015B674 46002182 */  mul.s $f6, $f4, $f0
/* 0BC0B8 8015B678 00220821 */  addu  $at, $at, $v0
/* 0BC0BC 8015B67C 4602003C */  c.lt.s $f0, $f2
/* 0BC0C0 8015B680 44804000 */  mtc1  $zero, $f8
/* 0BC0C4 8015B684 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BC0C8 8015B688 8C6A0000 */  lw    $t2, ($v1)
/* 0BC0CC 8015B68C 3C01800E */  lui   $at, 0x800e
/* 0BC0D0 8015B690 000AC880 */  sll   $t9, $t2, 2
/* 0BC0D4 8015B694 00390821 */  addu  $at, $at, $t9
/* 0BC0D8 8015B698 45000008 */  bc1f  .L8015B6BC_ovl3
/* 0BC0DC 8015B69C E4286690 */   swc1  $f8, 0x6690($at)
/* 0BC0E0 8015B6A0 8C6B0000 */  lw    $t3, ($v1)
/* 0BC0E4 8015B6A4 3C01800E */  lui   $at, 0x800e
/* 0BC0E8 8015B6A8 46000287 */  neg.s $f10, $f0
/* 0BC0EC 8015B6AC 000B6880 */  sll   $t5, $t3, 2
/* 0BC0F0 8015B6B0 002D0821 */  addu  $at, $at, $t5
/* 0BC0F4 8015B6B4 10000006 */  b     .L8015B6D0_ovl3
/* 0BC0F8 8015B6B8 E42A6850 */   swc1  $f10, 0x6850($at)
.L8015B6BC_ovl3:
/* 0BC0FC 8015B6BC 8C6C0000 */  lw    $t4, ($v1)
/* 0BC100 8015B6C0 3C01800E */  lui   $at, 0x800e
/* 0BC104 8015B6C4 000C7880 */  sll   $t7, $t4, 2
/* 0BC108 8015B6C8 002F0821 */  addu  $at, $at, $t7
/* 0BC10C 8015B6CC E4206850 */  swc1  $f0, 0x6850($at)
.L8015B6D0_ovl3:
/* 0BC110 8015B6D0 8C6E0000 */  lw    $t6, ($v1)
/* 0BC114 8015B6D4 C5100000 */  lwc1  $f16, ($t0)
/* 0BC118 8015B6D8 3C01800E */  lui   $at, 0x800e
/* 0BC11C 8015B6DC 000EC080 */  sll   $t8, $t6, 2
/* 0BC120 8015B6E0 00380821 */  addu  $at, $at, $t8
/* 0BC124 8015B6E4 E4303210 */  swc1  $f16, 0x3210($at)
/* 0BC128 8015B6E8 8C6A0000 */  lw    $t2, ($v1)
/* 0BC12C 8015B6EC C5320000 */  lwc1  $f18, ($t1)
/* 0BC130 8015B6F0 3C01800E */  lui   $at, 0x800e
/* 0BC134 8015B6F4 000AC880 */  sll   $t9, $t2, 2
/* 0BC138 8015B6F8 00390821 */  addu  $at, $at, $t9
/* 0BC13C 8015B6FC E4323750 */  swc1  $f18, 0x3750($at)
/* 0BC140 8015B700 C4800000 */  lwc1  $f0, ($a0)
/* 0BC144 8015B704 4602003C */  c.lt.s $f0, $f2
/* 0BC148 8015B708 00000000 */  nop   
/* 0BC14C 8015B70C 45020009 */  bc1fl .L8015B734_ovl3
/* 0BC150 8015B710 8C6C0000 */   lw    $t4, ($v1)
/* 0BC154 8015B714 8C6B0000 */  lw    $t3, ($v1)
/* 0BC158 8015B718 3C01800E */  lui   $at, 0x800e
/* 0BC15C 8015B71C 46000107 */  neg.s $f4, $f0
/* 0BC160 8015B720 000B6880 */  sll   $t5, $t3, 2
/* 0BC164 8015B724 002D0821 */  addu  $at, $at, $t5
/* 0BC168 8015B728 10000006 */  b     .L8015B744_ovl3
/* 0BC16C 8015B72C E4243C90 */   swc1  $f4, 0x3c90($at)
/* 0BC170 8015B730 8C6C0000 */  lw    $t4, ($v1)
.L8015B734_ovl3:
/* 0BC174 8015B734 3C01800E */  lui   $at, 0x800e
/* 0BC178 8015B738 000C7880 */  sll   $t7, $t4, 2
/* 0BC17C 8015B73C 002F0821 */  addu  $at, $at, $t7
/* 0BC180 8015B740 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8015B744_ovl3:
/* 0BC184 8015B744 0C02BE85 */  jal   func_800AFA14
/* 0BC188 8015B748 00000000 */   nop   
/* 0BC18C 8015B74C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BC190 8015B750 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BC194 8015B754 03E00008 */  jr    $ra
/* 0BC198 8015B758 00000000 */   nop   

.type func_8015B190_ovl3, @function
.size func_8015B190_ovl3, . - func_8015B190_ovl3

glabel func_8015B75C_ovl3
/* 0BC19C 8015B75C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0BC1A0 8015B760 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0BC1A4 8015B764 8C4E003C */  lw    $t6, 0x3c($v0)
/* 0BC1A8 8015B768 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0BC1AC 8015B76C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BC1B0 8015B770 15C0001A */  bnez  $t6, .L8015B7DC_ovl3
/* 0BC1B4 8015B774 AFA40050 */   sw    $a0, 0x50($sp)
/* 0BC1B8 8015B778 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0BC1BC 8015B77C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0BC1C0 8015B780 3C18800F */  lui   $t8, 0x800f
/* 0BC1C4 8015B784 8DE70000 */  lw    $a3, ($t7)
/* 0BC1C8 8015B788 00073880 */  sll   $a3, $a3, 2
/* 0BC1CC 8015B78C 0307C021 */  addu  $t8, $t8, $a3
/* 0BC1D0 8015B790 8F189AA0 */  lw    $t8, -0x6560($t8)
/* 0BC1D4 8015B794 17000011 */  bnez  $t8, .L8015B7DC_ovl3
/* 0BC1D8 8015B798 00000000 */   nop   
/* 0BC1DC 8015B79C 90590005 */  lbu   $t9, 5($v0)
/* 0BC1E0 8015B7A0 24010015 */  li    $at, 21
/* 0BC1E4 8015B7A4 3C04800F */  lui   $a0, 0x800f
/* 0BC1E8 8015B7A8 13210004 */  beq   $t9, $at, .L8015B7BC_ovl3
/* 0BC1EC 8015B7AC 00872021 */   addu  $a0, $a0, $a3
/* 0BC1F0 8015B7B0 8C4800A0 */  lw    $t0, 0xa0($v0)
/* 0BC1F4 8015B7B4 150000DD */  bnez  $t0, .L8015BB2C_ovl3
/* 0BC1F8 8015B7B8 00000000 */   nop   
.L8015B7BC_ovl3:
/* 0BC1FC 8015B7BC 0C0288B5 */  jal   func_800A22D4
/* 0BC200 8015B7C0 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BC204 8015B7C4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0BC208 8015B7C8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0BC20C 8015B7CC 0C02C640 */  jal   func_800B1900
/* 0BC210 8015B7D0 95240002 */   lhu   $a0, 2($t1)
/* 0BC214 8015B7D4 10000100 */  b     .L8015BBD8_ovl3
/* 0BC218 8015B7D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L8015B7DC_ovl3:
/* 0BC21C 8015B7DC 0C02CC56 */  jal   func_800B3158
/* 0BC220 8015B7E0 00000000 */   nop   
/* 0BC224 8015B7E4 14400004 */  bnez  $v0, .L8015B7F8_ovl3
/* 0BC228 8015B7E8 3C068005 */   lui   $a2, 0x8005
/* 0BC22C 8015B7EC 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0BC230 8015B7F0 100000B9 */  b     .L8015BAD8_ovl3
/* 0BC234 8015B7F4 8CC6A7C4 */   lw    $a2, %lo(D_8004A7C4)($a2)
.L8015B7F8_ovl3:
/* 0BC238 8015B7F8 8CC6A7C4 */  lw    $a2, -0x583c($a2)
/* 0BC23C 8015B7FC 3C01800E */  lui   $at, 0x800e
/* 0BC240 8015B800 3C0A800E */  lui   $t2, 0x800e
/* 0BC244 8015B804 8CC70000 */  lw    $a3, ($a2)
/* 0BC248 8015B808 3C0B800F */  lui   $t3, %hi(D_800E9720) # $t3, 0x800f
/* 0BC24C 8015B80C 256B9720 */  addiu $t3, %lo(D_800E9720) # addiu $t3, $t3, -0x68e0
/* 0BC250 8015B810 00073880 */  sll   $a3, $a3, 2
/* 0BC254 8015B814 00270821 */  addu  $at, $at, $a3
/* 0BC258 8015B818 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BC25C 8015B81C 3C01800E */  lui   $at, 0x800e
/* 0BC260 8015B820 00270821 */  addu  $at, $at, $a3
/* 0BC264 8015B824 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BC268 8015B828 8CC70000 */  lw    $a3, ($a2)
/* 0BC26C 8015B82C 00073880 */  sll   $a3, $a3, 2
/* 0BC270 8015B830 01475021 */  addu  $t2, $t2, $a3
/* 0BC274 8015B834 8D4A6310 */  lw    $t2, 0x6310($t2)
/* 0BC278 8015B838 00EB1021 */  addu  $v0, $a3, $t3
/* 0BC27C 8015B83C 15400077 */  bnez  $t2, .L8015BA1C_ovl3
/* 0BC280 8015B840 00000000 */   nop   
/* 0BC284 8015B844 8C430000 */  lw    $v1, ($v0)
/* 0BC288 8015B848 246CFFFF */  addiu $t4, $v1, -1
/* 0BC28C 8015B84C 10600073 */  beqz  $v1, .L8015BA1C_ovl3
/* 0BC290 8015B850 AC4C0000 */   sw    $t4, ($v0)
/* 0BC294 8015B854 8CC20000 */  lw    $v0, ($a2)
/* 0BC298 8015B858 3C0E800F */  lui   $t6, 0x800f
/* 0BC29C 8015B85C 3C198019 */  lui   $t9, %hi(D_80197F60) # $t9, 0x8019
/* 0BC2A0 8015B860 00026880 */  sll   $t5, $v0, 2
/* 0BC2A4 8015B864 01CD7021 */  addu  $t6, $t6, $t5
/* 0BC2A8 8015B868 8DCE83E0 */  lw    $t6, -0x7c20($t6)
/* 0BC2AC 8015B86C 00027880 */  sll   $t7, $v0, 2
/* 0BC2B0 8015B870 01E27823 */  subu  $t7, $t7, $v0
/* 0BC2B4 8015B874 15C00069 */  bnez  $t6, .L8015BA1C_ovl3
/* 0BC2B8 8015B878 000F78C0 */   sll   $t7, $t7, 3
/* 0BC2BC 8015B87C 01E27823 */  subu  $t7, $t7, $v0
/* 0BC2C0 8015B880 000F7880 */  sll   $t7, $t7, 2
/* 0BC2C4 8015B884 25F8FE90 */  addiu $t8, $t7, -0x170
/* 0BC2C8 8015B888 27397F60 */  addiu $t9, %lo(D_80197F60) # addiu $t9, $t9, 0x7f60
/* 0BC2CC 8015B88C 0C055509 */  jal   func_80155424_ovl3
/* 0BC2D0 8015B890 03192021 */   addu  $a0, $t8, $t9
/* 0BC2D4 8015B894 14400061 */  bnez  $v0, .L8015BA1C_ovl3
/* 0BC2D8 8015B898 3C068005 */   lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0BC2DC 8015B89C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 0BC2E0 8015B8A0 3C08800F */  lui   $t0, 0x800f
/* 0BC2E4 8015B8A4 3C02800F */  lui   $v0, 0x800f
/* 0BC2E8 8015B8A8 8CC70000 */  lw    $a3, ($a2)
/* 0BC2EC 8015B8AC 00073880 */  sll   $a3, $a3, 2
/* 0BC2F0 8015B8B0 01074021 */  addu  $t0, $t0, $a3
/* 0BC2F4 8015B8B4 8D088920 */  lw    $t0, -0x76e0($t0)
/* 0BC2F8 8015B8B8 00471021 */  addu  $v0, $v0, $a3
/* 0BC2FC 8015B8BC 15000057 */  bnez  $t0, .L8015BA1C_ovl3
/* 0BC300 8015B8C0 00000000 */   nop   
/* 0BC304 8015B8C4 8C428AE0 */  lw    $v0, -0x7520($v0)
/* 0BC308 8015B8C8 44807000 */  mtc1  $zero, $f14
/* 0BC30C 8015B8CC 3C018019 */  lui   $at, 0x8019
/* 0BC310 8015B8D0 30430004 */  andi  $v1, $v0, 4
/* 0BC314 8015B8D4 10600006 */  beqz  $v1, .L8015B8F0_ovl3
/* 0BC318 8015B8D8 30490002 */   andi  $t1, $v0, 2
/* 0BC31C 8015B8DC 15200004 */  bnez  $t1, .L8015B8F0_ovl3
/* 0BC320 8015B8E0 00000000 */   nop   
/* 0BC324 8015B8E4 3C018019 */  lui   $at, %hi(D_80197064) # $at, 0x8019
/* 0BC328 8015B8E8 10000002 */  b     .L8015B8F4_ovl3
/* 0BC32C 8015B8EC C42C7060 */   lwc1  $f12, %lo(D_80197060)($at)
.L8015B8F0_ovl3:
/* 0BC330 8015B8F0 C42C7064 */  lwc1  $f12, %lo(D_80197064)($at)
.L8015B8F4_ovl3:
/* 0BC334 8015B8F4 14600009 */  bnez  $v1, .L8015B91C_ovl3
/* 0BC338 8015B8F8 3C0C800F */   lui   $t4, 0x800f
/* 0BC33C 8015B8FC 3C0A800F */  lui   $t2, 0x800f
/* 0BC340 8015B900 01475021 */  addu  $t2, $t2, $a3
/* 0BC344 8015B904 8D4A98E0 */  lw    $t2, -0x6720($t2)
/* 0BC348 8015B908 3C018019 */  lui   $at, 0x8019
/* 0BC34C 8015B90C 000A5900 */  sll   $t3, $t2, 4
/* 0BC350 8015B910 002B0821 */  addu  $at, $at, $t3
/* 0BC354 8015B914 1000000C */  b     .L8015B948_ovl3
/* 0BC358 8015B918 C4206728 */   lwc1  $f0, 0x6728($at)
.L8015B91C_ovl3:
/* 0BC35C 8015B91C 01876021 */  addu  $t4, $t4, $a3
/* 0BC360 8015B920 8D8C98E0 */  lw    $t4, -0x6720($t4)
/* 0BC364 8015B924 3C018019 */  lui   $at, 0x8019
/* 0BC368 8015B928 000C6900 */  sll   $t5, $t4, 4
/* 0BC36C 8015B92C 002D0821 */  addu  $at, $at, $t5
/* 0BC370 8015B930 C4266728 */  lwc1  $f6, 0x6728($at)
/* 0BC374 8015B934 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0BC378 8015B938 44814000 */  mtc1  $at, $f8
/* 0BC37C 8015B93C 00000000 */  nop   
/* 0BC380 8015B940 46083002 */  mul.s $f0, $f6, $f8
/* 0BC384 8015B944 00000000 */  nop   
.L8015B948_ovl3:
/* 0BC388 8015B948 14600005 */  bnez  $v1, .L8015B960_ovl3
/* 0BC38C 8015B94C 3C014100 */   li    $at, 0x41000000 # 8.000000
/* 0BC390 8015B950 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BC394 8015B954 44811000 */  mtc1  $at, $f2
/* 0BC398 8015B958 10000004 */  b     .L8015B96C_ovl3
/* 0BC39C 8015B95C 460E003C */   c.lt.s $f0, $f14
.L8015B960_ovl3:
/* 0BC3A0 8015B960 44811000 */  mtc1  $at, $f2
/* 0BC3A4 8015B964 00000000 */  nop   
/* 0BC3A8 8015B968 460E003C */  c.lt.s $f0, $f14
.L8015B96C_ovl3:
/* 0BC3AC 8015B96C 3C01800E */  lui   $at, 0x800e
/* 0BC3B0 8015B970 00270821 */  addu  $at, $at, $a3
/* 0BC3B4 8015B974 45000006 */  bc1f  .L8015B990_ovl3
/* 0BC3B8 8015B978 00000000 */   nop   
/* 0BC3BC 8015B97C 3C01800E */  lui   $at, 0x800e
/* 0BC3C0 8015B980 46000287 */  neg.s $f10, $f0
/* 0BC3C4 8015B984 00270821 */  addu  $at, $at, $a3
/* 0BC3C8 8015B988 10000002 */  b     .L8015B994_ovl3
/* 0BC3CC 8015B98C E42A6850 */   swc1  $f10, 0x6850($at)
.L8015B990_ovl3:
/* 0BC3D0 8015B990 E4206850 */  swc1  $f0, 0x6850($at)
.L8015B994_ovl3:
/* 0BC3D4 8015B994 8CCE0000 */  lw    $t6, ($a2)
/* 0BC3D8 8015B998 460E103C */  c.lt.s $f2, $f14
/* 0BC3DC 8015B99C 3C01800E */  lui   $at, 0x800e
/* 0BC3E0 8015B9A0 000E7880 */  sll   $t7, $t6, 2
/* 0BC3E4 8015B9A4 002F0821 */  addu  $at, $at, $t7
/* 0BC3E8 8015B9A8 45000008 */  bc1f  .L8015B9CC_ovl3
/* 0BC3EC 8015B9AC E42C3750 */   swc1  $f12, 0x3750($at)
/* 0BC3F0 8015B9B0 8CD80000 */  lw    $t8, ($a2)
/* 0BC3F4 8015B9B4 3C01800E */  lui   $at, 0x800e
/* 0BC3F8 8015B9B8 46001407 */  neg.s $f16, $f2
/* 0BC3FC 8015B9BC 0018C880 */  sll   $t9, $t8, 2
/* 0BC400 8015B9C0 00390821 */  addu  $at, $at, $t9
/* 0BC404 8015B9C4 10000006 */  b     .L8015B9E0_ovl3
/* 0BC408 8015B9C8 E4303C90 */   swc1  $f16, 0x3c90($at)
.L8015B9CC_ovl3:
/* 0BC40C 8015B9CC 8CC80000 */  lw    $t0, ($a2)
/* 0BC410 8015B9D0 3C01800E */  lui   $at, 0x800e
/* 0BC414 8015B9D4 00084880 */  sll   $t1, $t0, 2
/* 0BC418 8015B9D8 00290821 */  addu  $at, $at, $t1
/* 0BC41C 8015B9DC E4223C90 */  swc1  $f2, 0x3c90($at)
.L8015B9E0_ovl3:
/* 0BC420 8015B9E0 0C058854 */  jal   func_80162150_ovl3
/* 0BC424 8015B9E4 00000000 */   nop   
/* 0BC428 8015B9E8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0BC42C 8015B9EC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0BC430 8015B9F0 3C048019 */  lui   $a0, %hi(D_80190B6C) # $a0, 0x8019
/* 0BC434 8015B9F4 24840B6C */  addiu $a0, %lo(D_80190B6C) # addiu $a0, $a0, 0xb6c
/* 0BC438 8015B9F8 0C0445EF */  jal   func_801117BC
/* 0BC43C 8015B9FC 8D450000 */   lw    $a1, ($t2)
/* 0BC440 8015BA00 0C044713 */  jal   func_80111C4C
/* 0BC444 8015BA04 00402025 */   move  $a0, $v0
/* 0BC448 8015BA08 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BC44C 8015BA0C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BC450 8015BA10 8D670000 */  lw    $a3, ($t3)
/* 0BC454 8015BA14 10000045 */  b     .L8015BB2C_ovl3
/* 0BC458 8015BA18 00073880 */   sll   $a3, $a3, 2
.L8015BA1C_ovl3:
/* 0BC45C 8015BA1C 0C029D9E */  jal   play_sound
/* 0BC460 8015BA20 2404000E */   li    $a0, 14
/* 0BC464 8015BA24 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0BC468 8015BA28 24040005 */   li    $a0, 5
/* 0BC46C 8015BA2C 2401FFFF */  li    $at, -1
/* 0BC470 8015BA30 10410027 */  beq   $v0, $at, .L8015BAD0_ovl3
/* 0BC474 8015BA34 3C068005 */   lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0BC478 8015BA38 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 0BC47C 8015BA3C 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 0BC480 8015BA40 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 0BC484 8015BA44 8CCC0000 */  lw    $t4, ($a2)
/* 0BC488 8015BA48 00021880 */  sll   $v1, $v0, 2
/* 0BC48C 8015BA4C 00837821 */  addu  $t7, $a0, $v1
/* 0BC490 8015BA50 000C6880 */  sll   $t5, $t4, 2
/* 0BC494 8015BA54 008D7021 */  addu  $t6, $a0, $t5
/* 0BC498 8015BA58 C5D20000 */  lwc1  $f18, ($t6)
/* 0BC49C 8015BA5C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 0BC4A0 8015BA60 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 0BC4A4 8015BA64 E5F20000 */  swc1  $f18, ($t7)
/* 0BC4A8 8015BA68 8CD80000 */  lw    $t8, ($a2)
/* 0BC4AC 8015BA6C 00A34821 */  addu  $t1, $a1, $v1
/* 0BC4B0 8015BA70 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 0BC4B4 8015BA74 0018C880 */  sll   $t9, $t8, 2
/* 0BC4B8 8015BA78 00B94021 */  addu  $t0, $a1, $t9
/* 0BC4BC 8015BA7C C5040000 */  lwc1  $f4, ($t0)
/* 0BC4C0 8015BA80 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 0BC4C4 8015BA84 00E36821 */  addu  $t5, $a3, $v1
/* 0BC4C8 8015BA88 E5240000 */  swc1  $f4, ($t1)
/* 0BC4CC 8015BA8C 8CCA0000 */  lw    $t2, ($a2)
/* 0BC4D0 8015BA90 3C01800E */  lui   $at, 0x800e
/* 0BC4D4 8015BA94 24180005 */  li    $t8, 5
/* 0BC4D8 8015BA98 000A5880 */  sll   $t3, $t2, 2
/* 0BC4DC 8015BA9C 00EB6021 */  addu  $t4, $a3, $t3
/* 0BC4E0 8015BAA0 C5860000 */  lwc1  $f6, ($t4)
/* 0BC4E4 8015BAA4 E5A60000 */  swc1  $f6, ($t5)
/* 0BC4E8 8015BAA8 8CCE0000 */  lw    $t6, ($a2)
/* 0BC4EC 8015BAAC 000E7880 */  sll   $t7, $t6, 2
/* 0BC4F0 8015BAB0 002F0821 */  addu  $at, $at, $t7
/* 0BC4F4 8015BAB4 C42817D0 */  lwc1  $f8, 0x17d0($at)
/* 0BC4F8 8015BAB8 3C01800F */  lui   $at, 0x800f
/* 0BC4FC 8015BABC 00230821 */  addu  $at, $at, $v1
/* 0BC500 8015BAC0 E428A6E0 */  swc1  $f8, -0x5920($at)
/* 0BC504 8015BAC4 3C01800F */  lui   $at, 0x800f
/* 0BC508 8015BAC8 00230821 */  addu  $at, $at, $v1
/* 0BC50C 8015BACC AC38C2E0 */  sw    $t8, -0x3d20($at)
.L8015BAD0_ovl3:
/* 0BC510 8015BAD0 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0BC514 8015BAD4 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
.L8015BAD8_ovl3:
/* 0BC518 8015BAD8 8CD90000 */  lw    $t9, ($a2)
/* 0BC51C 8015BADC 3C04800F */  lui   $a0, 0x800f
/* 0BC520 8015BAE0 00194080 */  sll   $t0, $t9, 2
/* 0BC524 8015BAE4 00882021 */  addu  $a0, $a0, $t0
/* 0BC528 8015BAE8 8C84A360 */  lw    $a0, -0x5ca0($a0)
/* 0BC52C 8015BAEC 0C029E1C */  jal   func_800A7870
/* 0BC530 8015BAF0 24850004 */   addiu $a1, $a0, 4
/* 0BC534 8015BAF4 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0BC538 8015BAF8 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0BC53C 8015BAFC 3C04800F */  lui   $a0, 0x800f
/* 0BC540 8015BB00 8D2A0000 */  lw    $t2, ($t1)
/* 0BC544 8015BB04 000A5880 */  sll   $t3, $t2, 2
/* 0BC548 8015BB08 008B2021 */  addu  $a0, $a0, $t3
/* 0BC54C 8015BB0C 0C0288B5 */  jal   func_800A22D4
/* 0BC550 8015BB10 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BC554 8015BB14 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0BC558 8015BB18 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0BC55C 8015BB1C 0C02C640 */  jal   func_800B1900
/* 0BC560 8015BB20 95840002 */   lhu   $a0, 2($t4)
/* 0BC564 8015BB24 1000002C */  b     .L8015BBD8_ovl3
/* 0BC568 8015BB28 8FBF0014 */   lw    $ra, 0x14($sp)
.L8015BB2C_ovl3:
/* 0BC56C 8015BB2C 3C0D800E */  lui   $t5, 0x800e
/* 0BC570 8015BB30 01A76821 */  addu  $t5, $t5, $a3
/* 0BC574 8015BB34 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 0BC578 8015BB38 3C02800F */  lui   $v0, 0x800f
/* 0BC57C 8015BB3C 00471021 */  addu  $v0, $v0, $a3
/* 0BC580 8015BB40 8C42A520 */  lw    $v0, -0x5ae0($v0)
/* 0BC584 8015BB44 8DA5000C */  lw    $a1, 0xc($t5)
/* 0BC588 8015BB48 27A40044 */  addiu $a0, $sp, 0x44
/* 0BC58C 8015BB4C 3406FFFF */  li    $a2, 65535
/* 0BC590 8015BB50 0C02C8D0 */  jal   func_800B2340
/* 0BC594 8015BB54 AFA20038 */   sw    $v0, 0x38($sp)
/* 0BC598 8015BB58 8FA20038 */  lw    $v0, 0x38($sp)
/* 0BC59C 8015BB5C C7AA0044 */  lwc1  $f10, 0x44($sp)
/* 0BC5A0 8015BB60 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0BC5A4 8015BB64 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0BC5A8 8015BB68 3C0A800E */  lui   $t2, 0x800e
/* 0BC5AC 8015BB6C 27A40044 */  addiu $a0, $sp, 0x44
/* 0BC5B0 8015BB70 E5CA0004 */  swc1  $f10, 4($t6)
/* 0BC5B4 8015BB74 C7B00048 */  lwc1  $f16, 0x48($sp)
/* 0BC5B8 8015BB78 8C4F004C */  lw    $t7, 0x4c($v0)
/* 0BC5BC 8015BB7C 3406FFFF */  li    $a2, 65535
/* 0BC5C0 8015BB80 E5F00008 */  swc1  $f16, 8($t7)
/* 0BC5C4 8015BB84 C7B2004C */  lwc1  $f18, 0x4c($sp)
/* 0BC5C8 8015BB88 8C58004C */  lw    $t8, 0x4c($v0)
/* 0BC5CC 8015BB8C E712000C */  swc1  $f18, 0xc($t8)
/* 0BC5D0 8015BB90 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0BC5D4 8015BB94 8F280000 */  lw    $t0, ($t9)
/* 0BC5D8 8015BB98 00084880 */  sll   $t1, $t0, 2
/* 0BC5DC 8015BB9C 01495021 */  addu  $t2, $t2, $t1
/* 0BC5E0 8015BBA0 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 0BC5E4 8015BBA4 0C02C9B6 */  jal   func_800B26D8
/* 0BC5E8 8015BBA8 8D45000C */   lw    $a1, 0xc($t2)
/* 0BC5EC 8015BBAC 8FA20038 */  lw    $v0, 0x38($sp)
/* 0BC5F0 8015BBB0 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 0BC5F4 8015BBB4 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0BC5F8 8015BBB8 E5640010 */  swc1  $f4, 0x10($t3)
/* 0BC5FC 8015BBBC C7A60048 */  lwc1  $f6, 0x48($sp)
/* 0BC600 8015BBC0 8C4C004C */  lw    $t4, 0x4c($v0)
/* 0BC604 8015BBC4 E5860014 */  swc1  $f6, 0x14($t4)
/* 0BC608 8015BBC8 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 0BC60C 8015BBCC 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0BC610 8015BBD0 E5A80018 */  swc1  $f8, 0x18($t5)
/* 0BC614 8015BBD4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8015BBD8_ovl3:
/* 0BC618 8015BBD8 27BD0050 */  addiu $sp, $sp, 0x50
/* 0BC61C 8015BBDC 03E00008 */  jr    $ra
/* 0BC620 8015BBE0 00000000 */   nop   

.type func_8015B75C_ovl3, @function
.size func_8015B75C_ovl3, . - func_8015B75C_ovl3

glabel func_8015BBE4_ovl3
/* 0BC624 8015BBE4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0BC628 8015BBE8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BC62C 8015BBEC AFB20020 */  sw    $s2, 0x20($sp)
/* 0BC630 8015BBF0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BC634 8015BBF4 0C058738 */  jal   func_80161CE0_ovl3
/* 0BC638 8015BBF8 AFB00018 */   sw    $s0, 0x18($sp)
/* 0BC63C 8015BBFC 00002025 */  move  $a0, $zero
/* 0BC640 8015BC00 24050000 */  li    $a1, 0
/* 0BC644 8015BC04 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BC648 8015BC08 3C0641A0 */   lui   $a2, 0x41a0
/* 0BC64C 8015BC0C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0BC650 8015BC10 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0BC654 8015BC14 8E430000 */  lw    $v1, ($s2)
/* 0BC658 8015BC18 3C01800E */  lui   $at, 0x800e
/* 0BC65C 8015BC1C 240E0001 */  li    $t6, 1
/* 0BC660 8015BC20 8C6F0000 */  lw    $t7, ($v1)
/* 0BC664 8015BC24 3C19800B */  lui   $t9, %hi(func_800B4954) # $t9, 0x800b
/* 0BC668 8015BC28 27394954 */  addiu $t9, %lo(func_800B4954) # addiu $t9, $t9, 0x4954
/* 0BC66C 8015BC2C 000FC080 */  sll   $t8, $t7, 2
/* 0BC670 8015BC30 00380821 */  addu  $at, $at, $t8
/* 0BC674 8015BC34 AC2E0650 */  sw    $t6, 0x650($at)
/* 0BC678 8015BC38 8C690000 */  lw    $t1, ($v1)
/* 0BC67C 8015BC3C 3C01800E */  lui   $at, 0x800e
/* 0BC680 8015BC40 3C0B8016 */  lui   $t3, %hi(D_8015C00C) # $t3, 0x8016
/* 0BC684 8015BC44 00095080 */  sll   $t2, $t1, 2
/* 0BC688 8015BC48 002A0821 */  addu  $at, $at, $t2
/* 0BC68C 8015BC4C AC39EF90 */  sw    $t9, -0x1070($at)
/* 0BC690 8015BC50 8C6C0000 */  lw    $t4, ($v1)
/* 0BC694 8015BC54 3C01800E */  lui   $at, 0x800e
/* 0BC698 8015BC58 256BC00C */  addiu $t3, %lo(D_8015C00C) # addiu $t3, $t3, -0x3ff4
/* 0BC69C 8015BC5C 000C6880 */  sll   $t5, $t4, 2
/* 0BC6A0 8015BC60 002D0821 */  addu  $at, $at, $t5
/* 0BC6A4 8015BC64 AC2BF150 */  sw    $t3, -0xeb0($at)
/* 0BC6A8 8015BC68 8C6E0000 */  lw    $t6, ($v1)
/* 0BC6AC 8015BC6C 3C01800E */  lui   $at, 0x800e
/* 0BC6B0 8015BC70 3C0F8019 */  lui   $t7, %hi(D_80192B94) # $t7, 0x8019
/* 0BC6B4 8015BC74 000EC080 */  sll   $t8, $t6, 2
/* 0BC6B8 8015BC78 00380821 */  addu  $at, $at, $t8
/* 0BC6BC 8015BC7C 25EF2B94 */  addiu $t7, %lo(D_80192B94) # addiu $t7, $t7, 0x2b94
/* 0BC6C0 8015BC80 AC2F0490 */  sw    $t7, 0x0490($at)
/* 0BC6C4 8015BC84 8C670000 */  lw    $a3, ($v1)
/* 0BC6C8 8015BC88 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0BC6CC 8015BC8C 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0BC6D0 8015BC90 24E8FFFC */  addiu $t0, $a3, -4
/* 0BC6D4 8015BC94 00085080 */  sll   $t2, $t0, 2
/* 0BC6D8 8015BC98 01485023 */  subu  $t2, $t2, $t0
/* 0BC6DC 8015BC9C 000A50C0 */  sll   $t2, $t2, 3
/* 0BC6E0 8015BCA0 01485023 */  subu  $t2, $t2, $t0
/* 0BC6E4 8015BCA4 3C0D801A */  lui   $t5, %hi(D_801982F8) # $t5, 0x801a
/* 0BC6E8 8015BCA8 3C0C8019 */  lui   $t4, %hi(D_80197F60) # $t4, 0x8019
/* 0BC6EC 8015BCAC 00074880 */  sll   $t1, $a3, 2
/* 0BC6F0 8015BCB0 0209C821 */  addu  $t9, $s0, $t1
/* 0BC6F4 8015BCB4 258C7F60 */  addiu $t4, %lo(D_80197F60) # addiu $t4, $t4, 0x7f60
/* 0BC6F8 8015BCB8 25AD82F8 */  addiu $t5, %lo(D_801982F8) # addiu $t5, $t5, -0x7d08
/* 0BC6FC 8015BCBC 000A5080 */  sll   $t2, $t2, 2
/* 0BC700 8015BCC0 00085940 */  sll   $t3, $t0, 5
/* 0BC704 8015BCC4 016D3021 */  addu  $a2, $t3, $t5
/* 0BC708 8015BCC8 014C2821 */  addu  $a1, $t2, $t4
/* 0BC70C 8015BCCC 0C055192 */  jal   func_80154648_ovl3
/* 0BC710 8015BCD0 8F240000 */   lw    $a0, ($t9)
/* 0BC714 8015BCD4 8E430000 */  lw    $v1, ($s2)
/* 0BC718 8015BCD8 3C02800F */  lui   $v0, %hi(D_800E8920) # $v0, 0x800f
/* 0BC71C 8015BCDC 24428920 */  addiu $v0, %lo(D_800E8920) # addiu $v0, $v0, -0x76e0
/* 0BC720 8015BCE0 8C670000 */  lw    $a3, ($v1)
/* 0BC724 8015BCE4 3C018019 */  lui   $at, %hi(D_80197068) # $at, 0x8019
/* 0BC728 8015BCE8 C4207068 */  lwc1  $f0, %lo(D_80197068)($at)
/* 0BC72C 8015BCEC 00073880 */  sll   $a3, $a3, 2
/* 0BC730 8015BCF0 02077021 */  addu  $t6, $s0, $a3
/* 0BC734 8015BCF4 8DCF0000 */  lw    $t7, ($t6)
/* 0BC738 8015BCF8 00475021 */  addu  $t2, $v0, $a3
/* 0BC73C 8015BCFC 3C11800F */  lui   $s1, %hi(D_800E8AE0) # $s1, 0x800f
/* 0BC740 8015BD00 000FC080 */  sll   $t8, $t7, 2
/* 0BC744 8015BD04 00584821 */  addu  $t1, $v0, $t8
/* 0BC748 8015BD08 8D390000 */  lw    $t9, ($t1)
/* 0BC74C 8015BD0C 26318AE0 */  addiu $s1, %lo(D_800E8AE0) # addiu $s1, $s1, -0x7520
/* 0BC750 8015BD10 3C01800E */  lui   $at, 0x800e
/* 0BC754 8015BD14 AD590000 */  sw    $t9, ($t2)
/* 0BC758 8015BD18 8C670000 */  lw    $a3, ($v1)
/* 0BC75C 8015BD1C 3C040002 */  lui   $a0, (0x0002002E >> 16) # lui $a0, 2
/* 0BC760 8015BD20 3484002E */  ori   $a0, (0x0002002E & 0xFFFF) # ori $a0, $a0, 0x2e
/* 0BC764 8015BD24 00073880 */  sll   $a3, $a3, 2
/* 0BC768 8015BD28 02076021 */  addu  $t4, $s0, $a3
/* 0BC76C 8015BD2C 8D8B0000 */  lw    $t3, ($t4)
/* 0BC770 8015BD30 0227C021 */  addu  $t8, $s1, $a3
/* 0BC774 8015BD34 24050021 */  li    $a1, 33
/* 0BC778 8015BD38 000B6880 */  sll   $t5, $t3, 2
/* 0BC77C 8015BD3C 022D7021 */  addu  $t6, $s1, $t5
/* 0BC780 8015BD40 8DCF0000 */  lw    $t7, ($t6)
/* 0BC784 8015BD44 24060010 */  li    $a2, 16
/* 0BC788 8015BD48 AF0F0000 */  sw    $t7, ($t8)
/* 0BC78C 8015BD4C 8C690000 */  lw    $t1, ($v1)
/* 0BC790 8015BD50 0009C880 */  sll   $t9, $t1, 2
/* 0BC794 8015BD54 00390821 */  addu  $at, $at, $t9
/* 0BC798 8015BD58 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BC79C 8015BD5C 8C6A0000 */  lw    $t2, ($v1)
/* 0BC7A0 8015BD60 3C01800E */  lui   $at, 0x800e
/* 0BC7A4 8015BD64 000A6080 */  sll   $t4, $t2, 2
/* 0BC7A8 8015BD68 002C0821 */  addu  $at, $at, $t4
/* 0BC7AC 8015BD6C E4204710 */  swc1  $f0, 0x4710($at)
/* 0BC7B0 8015BD70 8C6B0000 */  lw    $t3, ($v1)
/* 0BC7B4 8015BD74 3C01800E */  lui   $at, 0x800e
/* 0BC7B8 8015BD78 000B6880 */  sll   $t5, $t3, 2
/* 0BC7BC 8015BD7C 002D0821 */  addu  $at, $at, $t5
/* 0BC7C0 8015BD80 0C02A619 */  jal   func_800A9864
/* 0BC7C4 8015BD84 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BC7C8 8015BD88 3C040002 */  lui   $a0, (0x0002027E >> 16) # lui $a0, 2
/* 0BC7CC 8015BD8C 0C02A806 */  jal   func_800AA018
/* 0BC7D0 8015BD90 3484027E */   ori   $a0, (0x0002027E & 0xFFFF) # ori $a0, $a0, 0x27e
/* 0BC7D4 8015BD94 8E430000 */  lw    $v1, ($s2)
/* 0BC7D8 8015BD98 3C01800F */  lui   $at, 0x800f
/* 0BC7DC 8015BD9C 2418000A */  li    $t8, 10
/* 0BC7E0 8015BDA0 8C6E0000 */  lw    $t6, ($v1)
/* 0BC7E4 8015BDA4 2404022D */  li    $a0, 557
/* 0BC7E8 8015BDA8 000E7880 */  sll   $t7, $t6, 2
/* 0BC7EC 8015BDAC 002F0821 */  addu  $at, $at, $t7
/* 0BC7F0 8015BDB0 AC2098E0 */  sw    $zero, -0x6720($at)
/* 0BC7F4 8015BDB4 8C690000 */  lw    $t1, ($v1)
/* 0BC7F8 8015BDB8 3C01800F */  lui   $at, 0x800f
/* 0BC7FC 8015BDBC 0009C880 */  sll   $t9, $t1, 2
/* 0BC800 8015BDC0 00390821 */  addu  $at, $at, $t9
/* 0BC804 8015BDC4 AC389560 */  sw    $t8, -0x6aa0($at)
/* 0BC808 8015BDC8 8C670000 */  lw    $a3, ($v1)
/* 0BC80C 8015BDCC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BC810 8015BDD0 00073880 */  sll   $a3, $a3, 2
/* 0BC814 8015BDD4 02275021 */  addu  $t2, $s1, $a3
/* 0BC818 8015BDD8 8D4C0000 */  lw    $t4, ($t2)
/* 0BC81C 8015BDDC 318B0004 */  andi  $t3, $t4, 4
/* 0BC820 8015BDE0 51600011 */  beql  $t3, $zero, .L8015BE28_ovl3
/* 0BC824 8015BDE4 44810000 */   mtc1  $at, $f0
/* 0BC828 8015BDE8 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0BC82C 8015BDEC 44810000 */  mtc1  $at, $f0
/* 0BC830 8015BDF0 3C01800E */  lui   $at, 0x800e
/* 0BC834 8015BDF4 00270821 */  addu  $at, $at, $a3
/* 0BC838 8015BDF8 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0BC83C 8015BDFC 3C01800E */  lui   $at, 0x800e
/* 0BC840 8015BE00 00270821 */  addu  $at, $at, $a3
/* 0BC844 8015BE04 46002182 */  mul.s $f6, $f4, $f0
/* 0BC848 8015BE08 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BC84C 8015BE0C 8C6D0000 */  lw    $t5, ($v1)
/* 0BC850 8015BE10 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BC854 8015BE14 000D7080 */  sll   $t6, $t5, 2
/* 0BC858 8015BE18 002E0821 */  addu  $at, $at, $t6
/* 0BC85C 8015BE1C 1000000E */  b     .L8015BE58_ovl3
/* 0BC860 8015BE20 E4206850 */   swc1  $f0, 0x6850($at)
/* 0BC864 8015BE24 44810000 */  mtc1  $at, $f0
.L8015BE28_ovl3:
/* 0BC868 8015BE28 3C01800E */  lui   $at, 0x800e
/* 0BC86C 8015BE2C 00270821 */  addu  $at, $at, $a3
/* 0BC870 8015BE30 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0BC874 8015BE34 3C01800E */  lui   $at, 0x800e
/* 0BC878 8015BE38 00270821 */  addu  $at, $at, $a3
/* 0BC87C 8015BE3C 46004282 */  mul.s $f10, $f8, $f0
/* 0BC880 8015BE40 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0BC884 8015BE44 8C6F0000 */  lw    $t7, ($v1)
/* 0BC888 8015BE48 3C01800E */  lui   $at, 0x800e
/* 0BC88C 8015BE4C 000F4880 */  sll   $t1, $t7, 2
/* 0BC890 8015BE50 00290821 */  addu  $at, $at, $t1
/* 0BC894 8015BE54 E4206850 */  swc1  $f0, 0x6850($at)
.L8015BE58_ovl3:
/* 0BC898 8015BE58 8C780000 */  lw    $t8, ($v1)
/* 0BC89C 8015BE5C 3C01800F */  lui   $at, 0x800f
/* 0BC8A0 8015BE60 27A50030 */  addiu $a1, $sp, 0x30
/* 0BC8A4 8015BE64 0018C880 */  sll   $t9, $t8, 2
/* 0BC8A8 8015BE68 00390821 */  addu  $at, $at, $t9
/* 0BC8AC 8015BE6C AC25A360 */  sw    $a1, -0x5ca0($at)
/* 0BC8B0 8015BE70 8C6A0000 */  lw    $t2, ($v1)
/* 0BC8B4 8015BE74 3C0B800F */  lui   $t3, 0x800f
/* 0BC8B8 8015BE78 000A6080 */  sll   $t4, $t2, 2
/* 0BC8BC 8015BE7C 016C5821 */  addu  $t3, $t3, $t4
/* 0BC8C0 8015BE80 8D6B8920 */  lw    $t3, -0x76e0($t3)
/* 0BC8C4 8015BE84 5160001A */  beql  $t3, $zero, .L8015BEF0_ovl3
/* 0BC8C8 8015BE88 AFA00030 */   sw    $zero, 0x30($sp)
/* 0BC8CC 8015BE8C 0C029DFA */  jal   func_800A77E8
/* 0BC8D0 8015BE90 27A60034 */   addiu $a2, $sp, 0x34
/* 0BC8D4 8015BE94 24040002 */  li    $a0, 2
/* 0BC8D8 8015BE98 24050001 */  li    $a1, 1
/* 0BC8DC 8015BE9C 0C02A08D */  jal   func_800A8234
/* 0BC8E0 8015BEA0 24060050 */   li    $a2, 80
/* 0BC8E4 8015BEA4 8E4D0000 */  lw    $t5, ($s2)
/* 0BC8E8 8015BEA8 3C01800F */  lui   $at, 0x800f
/* 0BC8EC 8015BEAC 24040001 */  li    $a0, 1
/* 0BC8F0 8015BEB0 8DAE0000 */  lw    $t6, ($t5)
/* 0BC8F4 8015BEB4 24050001 */  li    $a1, 1
/* 0BC8F8 8015BEB8 24060051 */  li    $a2, 81
/* 0BC8FC 8015BEBC 000E7880 */  sll   $t7, $t6, 2
/* 0BC900 8015BEC0 002F0821 */  addu  $at, $at, $t7
/* 0BC904 8015BEC4 0C02A08D */  jal   func_800A8234
/* 0BC908 8015BEC8 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0BC90C 8015BECC 8E430000 */  lw    $v1, ($s2)
/* 0BC910 8015BED0 3C04800F */  lui   $a0, %hi(D_800EB4E0) # $a0, 0x800f
/* 0BC914 8015BED4 2484B4E0 */  addiu $a0, %lo(D_800EB4E0) # addiu $a0, $a0, -0x4b20
/* 0BC918 8015BED8 8C690000 */  lw    $t1, ($v1)
/* 0BC91C 8015BEDC 0009C080 */  sll   $t8, $t1, 2
/* 0BC920 8015BEE0 0098C821 */  addu  $t9, $a0, $t8
/* 0BC924 8015BEE4 1000000F */  b     .L8015BF24_ovl3
/* 0BC928 8015BEE8 AF220000 */   sw    $v0, ($t9)
/* 0BC92C 8015BEEC AFA00030 */  sw    $zero, 0x30($sp)
.L8015BEF0_ovl3:
/* 0BC930 8015BEF0 8C6A0000 */  lw    $t2, ($v1)
/* 0BC934 8015BEF4 3C04800F */  lui   $a0, %hi(D_800EB4E0) # $a0, 0x800f
/* 0BC938 8015BEF8 2484B4E0 */  addiu $a0, %lo(D_800EB4E0) # addiu $a0, $a0, -0x4b20
/* 0BC93C 8015BEFC 000A6080 */  sll   $t4, $t2, 2
/* 0BC940 8015BF00 008C5821 */  addu  $t3, $a0, $t4
/* 0BC944 8015BF04 AD600000 */  sw    $zero, ($t3)
/* 0BC948 8015BF08 8C670000 */  lw    $a3, ($v1)
/* 0BC94C 8015BF0C 3C01800F */  lui   $at, 0x800f
/* 0BC950 8015BF10 00073880 */  sll   $a3, $a3, 2
/* 0BC954 8015BF14 00876821 */  addu  $t5, $a0, $a3
/* 0BC958 8015BF18 8DAE0000 */  lw    $t6, ($t5)
/* 0BC95C 8015BF1C 00270821 */  addu  $at, $at, $a3
/* 0BC960 8015BF20 AC2EA520 */  sw    $t6, -0x5ae0($at)
.L8015BF24_ovl3:
/* 0BC964 8015BF24 8C6F0000 */  lw    $t7, ($v1)
/* 0BC968 8015BF28 3C10800F */  lui   $s0, %hi(D_800E9720) # $s0, 0x800f
/* 0BC96C 8015BF2C 26109720 */  addiu $s0, %lo(D_800E9720) # addiu $s0, $s0, -0x68e0
/* 0BC970 8015BF30 000F4880 */  sll   $t1, $t7, 2
/* 0BC974 8015BF34 0209C021 */  addu  $t8, $s0, $t1
/* 0BC978 8015BF38 AF000000 */  sw    $zero, ($t8)
/* 0BC97C 8015BF3C 8C670000 */  lw    $a3, ($v1)
/* 0BC980 8015BF40 3C11800E */  lui   $s1, %hi(D_800E6310) # $s1, 0x800e
/* 0BC984 8015BF44 26316310 */  addiu $s1, %lo(D_800E6310) # addiu $s1, $s1, 0x6310
/* 0BC988 8015BF48 00073880 */  sll   $a3, $a3, 2
/* 0BC98C 8015BF4C 0207C821 */  addu  $t9, $s0, $a3
/* 0BC990 8015BF50 8F2A0000 */  lw    $t2, ($t9)
/* 0BC994 8015BF54 2941001E */  slti  $at, $t2, 0x1e
/* 0BC998 8015BF58 1020001C */  beqz  $at, .L8015BFCC_ovl3
/* 0BC99C 8015BF5C 02276021 */   addu  $t4, $s1, $a3
.L8015BF60_ovl3:
/* 0BC9A0 8015BF60 8D8B0000 */  lw    $t3, ($t4)
/* 0BC9A4 8015BF64 3C0D800E */  lui   $t5, %hi(D_800E64D0) # $t5, 0x800e
/* 0BC9A8 8015BF68 25AD64D0 */  addiu $t5, %lo(D_800E64D0) # addiu $t5, $t5, 0x64d0
/* 0BC9AC 8015BF6C 11600007 */  beqz  $t3, .L8015BF8C_ovl3
/* 0BC9B0 8015BF70 00ED1021 */   addu  $v0, $a3, $t5
/* 0BC9B4 8015BF74 C4500000 */  lwc1  $f16, ($v0)
/* 0BC9B8 8015BF78 46008487 */  neg.s $f18, $f16
/* 0BC9BC 8015BF7C E4520000 */  swc1  $f18, ($v0)
/* 0BC9C0 8015BF80 8C670000 */  lw    $a3, ($v1)
/* 0BC9C4 8015BF84 10000011 */  b     .L8015BFCC_ovl3
/* 0BC9C8 8015BF88 00073880 */   sll   $a3, $a3, 2
.L8015BF8C_ovl3:
/* 0BC9CC 8015BF8C 0C002DAF */  jal   finish_current_thread
/* 0BC9D0 8015BF90 24040001 */   li    $a0, 1
/* 0BC9D4 8015BF94 8E430000 */  lw    $v1, ($s2)
/* 0BC9D8 8015BF98 8C6E0000 */  lw    $t6, ($v1)
/* 0BC9DC 8015BF9C 000E7880 */  sll   $t7, $t6, 2
/* 0BC9E0 8015BFA0 020F1021 */  addu  $v0, $s0, $t7
/* 0BC9E4 8015BFA4 8C490000 */  lw    $t1, ($v0)
/* 0BC9E8 8015BFA8 25380001 */  addiu $t8, $t1, 1
/* 0BC9EC 8015BFAC AC580000 */  sw    $t8, ($v0)
/* 0BC9F0 8015BFB0 8C670000 */  lw    $a3, ($v1)
/* 0BC9F4 8015BFB4 00073880 */  sll   $a3, $a3, 2
/* 0BC9F8 8015BFB8 0207C821 */  addu  $t9, $s0, $a3
/* 0BC9FC 8015BFBC 8F2A0000 */  lw    $t2, ($t9)
/* 0BCA00 8015BFC0 2941001E */  slti  $at, $t2, 0x1e
/* 0BCA04 8015BFC4 5420FFE6 */  bnezl $at, .L8015BF60_ovl3
/* 0BCA08 8015BFC8 02276021 */   addu  $t4, $s1, $a3
.L8015BFCC_ovl3:
/* 0BCA0C 8015BFCC 3C01800E */  lui   $at, 0x800e
/* 0BCA10 8015BFD0 00270821 */  addu  $at, $at, $a3
/* 0BCA14 8015BFD4 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0BCA18 8015BFD8 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0BCA1C 8015BFDC 44813000 */  mtc1  $at, $f6
/* 0BCA20 8015BFE0 3C01800E */  lui   $at, 0x800e
/* 0BCA24 8015BFE4 00270821 */  addu  $at, $at, $a3
/* 0BCA28 8015BFE8 46062202 */  mul.s $f8, $f4, $f6
/* 0BCA2C 8015BFEC 0C02BE85 */  jal   func_800AFA14
/* 0BCA30 8015BFF0 E4286690 */   swc1  $f8, 0x6690($at)
/* 0BCA34 8015BFF4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BCA38 8015BFF8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BCA3C 8015BFFC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BCA40 8015C000 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BCA44 8015C004 03E00008 */  jr    $ra
/* 0BCA48 8015C008 27BD0038 */   addiu $sp, $sp, 0x38

.type func_8015BBE4_ovl3, @function
.size func_8015BBE4_ovl3, . - func_8015BBE4_ovl3

glabel func_8015C00C_ovl3
/* 0BCA4C 8015C00C 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0BCA50 8015C010 AFB00020 */  sw    $s0, 0x20($sp)
/* 0BCA54 8015C014 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BCA58 8015C018 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0BCA5C 8015C01C 8E080000 */  lw    $t0, ($s0)
/* 0BCA60 8015C020 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BCA64 8015C024 AFA40068 */  sw    $a0, 0x68($sp)
/* 0BCA68 8015C028 8D030000 */  lw    $v1, ($t0)
/* 0BCA6C 8015C02C 3C01800E */  lui   $at, 0x800e
/* 0BCA70 8015C030 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0BCA74 8015C034 00031880 */  sll   $v1, $v1, 2
/* 0BCA78 8015C038 00230821 */  addu  $at, $at, $v1
/* 0BCA7C 8015C03C C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BCA80 8015C040 3C01800E */  lui   $at, 0x800e
/* 0BCA84 8015C044 00230821 */  addu  $at, $at, $v1
/* 0BCA88 8015C048 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0BCA8C 8015C04C 3C0E800F */  lui   $t6, 0x800f
/* 0BCA90 8015C050 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BCA94 8015C054 8C4F00A0 */  lw    $t7, 0xa0($v0)
/* 0BCA98 8015C058 01C37021 */  addu  $t6, $t6, $v1
/* 0BCA9C 8015C05C 8DCEA360 */  lw    $t6, -0x5ca0($t6)
/* 0BCAA0 8015C060 15E00033 */  bnez  $t7, .L8015C130_ovl3
/* 0BCAA4 8015C064 AFAE0064 */   sw    $t6, 0x64($sp)
/* 0BCAA8 8015C068 0C029D9E */  jal   play_sound
/* 0BCAAC 8015C06C 24040159 */   li    $a0, 345
/* 0BCAB0 8015C070 8E180000 */  lw    $t8, ($s0)
/* 0BCAB4 8015C074 3C01800E */  lui   $at, 0x800e
/* 0BCAB8 8015C078 3C07800E */  lui   $a3, 0x800e
/* 0BCABC 8015C07C 8F030000 */  lw    $v1, ($t8)
/* 0BCAC0 8015C080 24040002 */  li    $a0, 2
/* 0BCAC4 8015C084 24050001 */  li    $a1, 1
/* 0BCAC8 8015C088 00031880 */  sll   $v1, $v1, 2
/* 0BCACC 8015C08C 00230821 */  addu  $at, $at, $v1
/* 0BCAD0 8015C090 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0BCAD4 8015C094 3C01800E */  lui   $at, 0x800e
/* 0BCAD8 8015C098 00230821 */  addu  $at, $at, $v1
/* 0BCADC 8015C09C C4282950 */  lwc1  $f8, 0x2950($at)
/* 0BCAE0 8015C0A0 00E33821 */  addu  $a3, $a3, $v1
/* 0BCAE4 8015C0A4 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 0BCAE8 8015C0A8 24060010 */  li    $a2, 16
/* 0BCAEC 8015C0AC E7A60010 */  swc1  $f6, 0x10($sp)
/* 0BCAF0 8015C0B0 0C029FDD */  jal   func_800A7F74
/* 0BCAF4 8015C0B4 E7A80014 */   swc1  $f8, 0x14($sp)
/* 0BCAF8 8015C0B8 8FA40064 */  lw    $a0, 0x64($sp)
/* 0BCAFC 8015C0BC 8C990000 */  lw    $t9, ($a0)
/* 0BCB00 8015C0C0 53200004 */  beql  $t9, $zero, .L8015C0D4_ovl3
/* 0BCB04 8015C0C4 8E090000 */   lw    $t1, ($s0)
/* 0BCB08 8015C0C8 0C029E1C */  jal   func_800A7870
/* 0BCB0C 8015C0CC 24850004 */   addiu $a1, $a0, 4
/* 0BCB10 8015C0D0 8E090000 */  lw    $t1, ($s0)
.L8015C0D4_ovl3:
/* 0BCB14 8015C0D4 3C04800F */  lui   $a0, 0x800f
/* 0BCB18 8015C0D8 8D220000 */  lw    $v0, ($t1)
/* 0BCB1C 8015C0DC 00025080 */  sll   $t2, $v0, 2
/* 0BCB20 8015C0E0 008A2021 */  addu  $a0, $a0, $t2
/* 0BCB24 8015C0E4 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0BCB28 8015C0E8 1080000D */  beqz  $a0, .L8015C120_ovl3
/* 0BCB2C 8015C0EC 00000000 */   nop   
/* 0BCB30 8015C0F0 0C0288B5 */  jal   func_800A22D4
/* 0BCB34 8015C0F4 00000000 */   nop   
/* 0BCB38 8015C0F8 8E0B0000 */  lw    $t3, ($s0)
/* 0BCB3C 8015C0FC 3C04800F */  lui   $a0, 0x800f
/* 0BCB40 8015C100 8D6C0000 */  lw    $t4, ($t3)
/* 0BCB44 8015C104 000C6880 */  sll   $t5, $t4, 2
/* 0BCB48 8015C108 008D2021 */  addu  $a0, $a0, $t5
/* 0BCB4C 8015C10C 0C0288B5 */  jal   func_800A22D4
/* 0BCB50 8015C110 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0BCB54 8015C114 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BCB58 8015C118 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BCB5C 8015C11C 8DC20000 */  lw    $v0, ($t6)
.L8015C120_ovl3:
/* 0BCB60 8015C120 0C02C640 */  jal   func_800B1900
/* 0BCB64 8015C124 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0BCB68 8015C128 100001AE */  b     .L8015C7E4_ovl3
/* 0BCB6C 8015C12C 8FBF0024 */   lw    $ra, 0x24($sp)
.L8015C130_ovl3:
/* 0BCB70 8015C130 8C4F0044 */  lw    $t7, 0x44($v0)
/* 0BCB74 8015C134 24010001 */  li    $at, 1
/* 0BCB78 8015C138 3C19801A */  lui   $t9, %hi(D_801982F8) # $t9, 0x801a
/* 0BCB7C 8015C13C 15E10020 */  bne   $t7, $at, .L8015C1C0_ovl3
/* 0BCB80 8015C140 273982F8 */   addiu $t9, %lo(D_801982F8) # addiu $t9, $t9, -0x7d08
/* 0BCB84 8015C144 8FB80064 */  lw    $t8, 0x64($sp)
/* 0BCB88 8015C148 8F190000 */  lw    $t9, ($t8)
/* 0BCB8C 8015C14C 03002025 */  move  $a0, $t8
/* 0BCB90 8015C150 53200005 */  beql  $t9, $zero, .L8015C168_ovl3
/* 0BCB94 8015C154 8D020000 */   lw    $v0, ($t0)
/* 0BCB98 8015C158 0C029E1C */  jal   func_800A7870
/* 0BCB9C 8015C15C 27050004 */   addiu $a1, $t8, 4
/* 0BCBA0 8015C160 8E080000 */  lw    $t0, ($s0)
/* 0BCBA4 8015C164 8D020000 */  lw    $v0, ($t0)
.L8015C168_ovl3:
/* 0BCBA8 8015C168 3C04800F */  lui   $a0, 0x800f
/* 0BCBAC 8015C16C 00024880 */  sll   $t1, $v0, 2
/* 0BCBB0 8015C170 00892021 */  addu  $a0, $a0, $t1
/* 0BCBB4 8015C174 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0BCBB8 8015C178 1080000D */  beqz  $a0, .L8015C1B0_ovl3
/* 0BCBBC 8015C17C 00000000 */   nop   
/* 0BCBC0 8015C180 0C0287CC */  jal   func_800A1F30
/* 0BCBC4 8015C184 00000000 */   nop   
/* 0BCBC8 8015C188 8E0A0000 */  lw    $t2, ($s0)
/* 0BCBCC 8015C18C 3C04800F */  lui   $a0, 0x800f
/* 0BCBD0 8015C190 8D4B0000 */  lw    $t3, ($t2)
/* 0BCBD4 8015C194 000B6080 */  sll   $t4, $t3, 2
/* 0BCBD8 8015C198 008C2021 */  addu  $a0, $a0, $t4
/* 0BCBDC 8015C19C 0C0287CC */  jal   func_800A1F30
/* 0BCBE0 8015C1A0 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0BCBE4 8015C1A4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0BCBE8 8015C1A8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0BCBEC 8015C1AC 8DA20000 */  lw    $v0, ($t5)
.L8015C1B0_ovl3:
/* 0BCBF0 8015C1B0 0C02C640 */  jal   func_800B1900
/* 0BCBF4 8015C1B4 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0BCBF8 8015C1B8 1000018A */  b     .L8015C7E4_ovl3
/* 0BCBFC 8015C1BC 8FBF0024 */   lw    $ra, 0x24($sp)
.L8015C1C0_ovl3:
/* 0BCC00 8015C1C0 8D020000 */  lw    $v0, ($t0)
/* 0BCC04 8015C1C4 3C058019 */  lui   $a1, %hi(D_8019356C) # $a1, 0x8019
/* 0BCC08 8015C1C8 24A5356C */  addiu $a1, %lo(D_8019356C) # addiu $a1, $a1, 0x356c
/* 0BCC0C 8015C1CC 00027140 */  sll   $t6, $v0, 5
/* 0BCC10 8015C1D0 25CFFF80 */  addiu $t7, $t6, -0x80
/* 0BCC14 8015C1D4 01F92021 */  addu  $a0, $t7, $t9
/* 0BCC18 8015C1D8 00003025 */  move  $a2, $zero
/* 0BCC1C 8015C1DC 0C055754 */  jal   func_80155D50_ovl3
/* 0BCC20 8015C1E0 00403825 */   move  $a3, $v0
/* 0BCC24 8015C1E4 8E180000 */  lw    $t8, ($s0)
/* 0BCC28 8015C1E8 3C0C8019 */  lui   $t4, %hi(D_80197F60) # $t4, 0x8019
/* 0BCC2C 8015C1EC 258C7F60 */  addiu $t4, %lo(D_80197F60) # addiu $t4, $t4, 0x7f60
/* 0BCC30 8015C1F0 8F090000 */  lw    $t1, ($t8)
/* 0BCC34 8015C1F4 00095080 */  sll   $t2, $t1, 2
/* 0BCC38 8015C1F8 01495023 */  subu  $t2, $t2, $t1
/* 0BCC3C 8015C1FC 000A50C0 */  sll   $t2, $t2, 3
/* 0BCC40 8015C200 01495023 */  subu  $t2, $t2, $t1
/* 0BCC44 8015C204 000A5080 */  sll   $t2, $t2, 2
/* 0BCC48 8015C208 254BFE90 */  addiu $t3, $t2, -0x170
/* 0BCC4C 8015C20C 0C055599 */  jal   func_80155664_ovl3
/* 0BCC50 8015C210 016C2021 */   addu  $a0, $t3, $t4
/* 0BCC54 8015C214 8E080000 */  lw    $t0, ($s0)
/* 0BCC58 8015C218 3C01800F */  lui   $at, 0x800f
/* 0BCC5C 8015C21C 27A40058 */  addiu $a0, $sp, 0x58
/* 0BCC60 8015C220 8D0D0000 */  lw    $t5, ($t0)
/* 0BCC64 8015C224 3C0541A0 */  lui   $a1, 0x41a0
/* 0BCC68 8015C228 24060006 */  li    $a2, 6
/* 0BCC6C 8015C22C 000D7080 */  sll   $t6, $t5, 2
/* 0BCC70 8015C230 002E0821 */  addu  $at, $at, $t6
/* 0BCC74 8015C234 AC208920 */  sw    $zero, -0x76e0($at)
/* 0BCC78 8015C238 8D0F0000 */  lw    $t7, ($t0)
/* 0BCC7C 8015C23C 3C01800E */  lui   $at, 0x800e
/* 0BCC80 8015C240 000FC880 */  sll   $t9, $t7, 2
/* 0BCC84 8015C244 00390821 */  addu  $at, $at, $t9
/* 0BCC88 8015C248 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0BCC8C 8015C24C 3C01800E */  lui   $at, 0x800e
/* 0BCC90 8015C250 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 0BCC94 8015C254 8D180000 */  lw    $t8, ($t0)
/* 0BCC98 8015C258 00184880 */  sll   $t1, $t8, 2
/* 0BCC9C 8015C25C 00290821 */  addu  $at, $at, $t1
/* 0BCCA0 8015C260 C4302790 */  lwc1  $f16, 0x2790($at)
/* 0BCCA4 8015C264 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BCCA8 8015C268 E7B0005C */  swc1  $f16, 0x5c($sp)
/* 0BCCAC 8015C26C 8D0A0000 */  lw    $t2, ($t0)
/* 0BCCB0 8015C270 000A5880 */  sll   $t3, $t2, 2
/* 0BCCB4 8015C274 002B0821 */  addu  $at, $at, $t3
/* 0BCCB8 8015C278 C4322950 */  lwc1  $f18, 0x2950($at)
/* 0BCCBC 8015C27C 0C05560E */  jal   func_80155838_ovl3
/* 0BCCC0 8015C280 E7B20060 */   swc1  $f18, 0x60($sp)
/* 0BCCC4 8015C284 8E0C0000 */  lw    $t4, ($s0)
/* 0BCCC8 8015C288 AFA20054 */  sw    $v0, 0x54($sp)
/* 0BCCCC 8015C28C 3C0F800F */  lui   $t7, 0x800f
/* 0BCCD0 8015C290 8D8D0000 */  lw    $t5, ($t4)
/* 0BCCD4 8015C294 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0BCCD8 8015C298 000D7080 */  sll   $t6, $t5, 2
/* 0BCCDC 8015C29C 01EE7821 */  addu  $t7, $t7, $t6
/* 0BCCE0 8015C2A0 8DEF8AE0 */  lw    $t7, -0x7520($t7)
/* 0BCCE4 8015C2A4 31F90004 */  andi  $t9, $t7, 4
/* 0BCCE8 8015C2A8 5320000E */  beql  $t9, $zero, .L8015C2E4_ovl3
/* 0BCCEC 8015C2AC 44816000 */   mtc1  $at, $f12
/* 0BCCF0 8015C2B0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BCCF4 8015C2B4 44816000 */  mtc1  $at, $f12
/* 0BCCF8 8015C2B8 0C02BB30 */  jal   func_800AECC0
/* 0BCCFC 8015C2BC 00000000 */   nop   
/* 0BCD00 8015C2C0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BCD04 8015C2C4 44816000 */  mtc1  $at, $f12
/* 0BCD08 8015C2C8 0C02BB48 */  jal   func_800AED20
/* 0BCD0C 8015C2CC 00000000 */   nop   
/* 0BCD10 8015C2D0 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0BCD14 8015C2D4 44811000 */  mtc1  $at, $f2
/* 0BCD18 8015C2D8 1000000C */  b     .L8015C30C_ovl3
/* 0BCD1C 8015C2DC 8E080000 */   lw    $t0, ($s0)
/* 0BCD20 8015C2E0 44816000 */  mtc1  $at, $f12
.L8015C2E4_ovl3:
/* 0BCD24 8015C2E4 0C02BB30 */  jal   func_800AECC0
/* 0BCD28 8015C2E8 00000000 */   nop   
/* 0BCD2C 8015C2EC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0BCD30 8015C2F0 44816000 */  mtc1  $at, $f12
/* 0BCD34 8015C2F4 0C02BB48 */  jal   func_800AED20
/* 0BCD38 8015C2F8 00000000 */   nop   
/* 0BCD3C 8015C2FC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BCD40 8015C300 44811000 */  mtc1  $at, $f2
/* 0BCD44 8015C304 00000000 */  nop   
/* 0BCD48 8015C308 8E080000 */  lw    $t0, ($s0)
.L8015C30C_ovl3:
/* 0BCD4C 8015C30C 3C04800F */  lui   $a0, %hi(D_800E98E0) # $a0, 0x800f
/* 0BCD50 8015C310 248498E0 */  addiu $a0, %lo(D_800E98E0) # addiu $a0, $a0, -0x6720
/* 0BCD54 8015C314 8D020000 */  lw    $v0, ($t0)
/* 0BCD58 8015C318 3C05800E */  lui   $a1, 0x800e
/* 0BCD5C 8015C31C 00021880 */  sll   $v1, $v0, 2
/* 0BCD60 8015C320 0083C021 */  addu  $t8, $a0, $v1
/* 0BCD64 8015C324 8F090000 */  lw    $t1, ($t8)
/* 0BCD68 8015C328 00A32821 */  addu  $a1, $a1, $v1
/* 0BCD6C 8015C32C 5120005B */  beql  $t1, $zero, .L8015C49C_ovl3
/* 0BCD70 8015C330 44802000 */   mtc1  $zero, $f4
/* 0BCD74 8015C334 00402025 */  move  $a0, $v0
/* 0BCD78 8015C338 8CA50D50 */  lw    $a1, 0xd50($a1)
/* 0BCD7C 8015C33C 0C03E60A */  jal   func_800F9828
/* 0BCD80 8015C340 E7A20050 */   swc1  $f2, 0x50($sp)
/* 0BCD84 8015C344 8E0A0000 */  lw    $t2, ($s0)
/* 0BCD88 8015C348 3C0B800E */  lui   $t3, 0x800e
/* 0BCD8C 8015C34C 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 0BCD90 8015C350 8D430000 */  lw    $v1, ($t2)
/* 0BCD94 8015C354 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 0BCD98 8015C358 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0BCD9C 8015C35C 00031880 */  sll   $v1, $v1, 2
/* 0BCDA0 8015C360 01635821 */  addu  $t3, $t3, $v1
/* 0BCDA4 8015C364 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 0BCDA8 8015C368 00437021 */  addu  $t6, $v0, $v1
/* 0BCDAC 8015C36C C5C60000 */  lwc1  $f6, ($t6)
/* 0BCDB0 8015C370 000B6080 */  sll   $t4, $t3, 2
/* 0BCDB4 8015C374 004C6821 */  addu  $t5, $v0, $t4
/* 0BCDB8 8015C378 C5A40000 */  lwc1  $f4, ($t5)
/* 0BCDBC 8015C37C 44815000 */  mtc1  $at, $f10
/* 0BCDC0 8015C380 46000386 */  mov.s $f14, $f0
/* 0BCDC4 8015C384 46062201 */  sub.s $f8, $f4, $f6
/* 0BCDC8 8015C388 0C0061C3 */  jal   atan2f
/* 0BCDCC 8015C38C 460A4300 */   add.s $f12, $f8, $f10
/* 0BCDD0 8015C390 E7A00044 */  swc1  $f0, 0x44($sp)
/* 0BCDD4 8015C394 0C00B5B8 */  jal   sinf
/* 0BCDD8 8015C398 46000306 */   mov.s $f12, $f0
/* 0BCDDC 8015C39C C7A20050 */  lwc1  $f2, 0x50($sp)
/* 0BCDE0 8015C3A0 8E080000 */  lw    $t0, ($s0)
/* 0BCDE4 8015C3A4 3C01800E */  lui   $at, 0x800e
/* 0BCDE8 8015C3A8 46020402 */  mul.s $f16, $f0, $f2
/* 0BCDEC 8015C3AC 8D0F0000 */  lw    $t7, ($t0)
/* 0BCDF0 8015C3B0 44802000 */  mtc1  $zero, $f4
/* 0BCDF4 8015C3B4 44809000 */  mtc1  $zero, $f18
/* 0BCDF8 8015C3B8 000FC880 */  sll   $t9, $t7, 2
/* 0BCDFC 8015C3BC 00390821 */  addu  $at, $at, $t9
/* 0BCE00 8015C3C0 4604103C */  c.lt.s $f2, $f4
/* 0BCE04 8015C3C4 E4303210 */  swc1  $f16, 0x3210($at)
/* 0BCE08 8015C3C8 8D180000 */  lw    $t8, ($t0)
/* 0BCE0C 8015C3CC 3C01800E */  lui   $at, 0x800e
/* 0BCE10 8015C3D0 00184880 */  sll   $t1, $t8, 2
/* 0BCE14 8015C3D4 00290821 */  addu  $at, $at, $t1
/* 0BCE18 8015C3D8 45000008 */  bc1f  .L8015C3FC_ovl3
/* 0BCE1C 8015C3DC E4323750 */   swc1  $f18, 0x3750($at)
/* 0BCE20 8015C3E0 8D0A0000 */  lw    $t2, ($t0)
/* 0BCE24 8015C3E4 3C01800E */  lui   $at, 0x800e
/* 0BCE28 8015C3E8 46001187 */  neg.s $f6, $f2
/* 0BCE2C 8015C3EC 000A5880 */  sll   $t3, $t2, 2
/* 0BCE30 8015C3F0 002B0821 */  addu  $at, $at, $t3
/* 0BCE34 8015C3F4 10000006 */  b     .L8015C410_ovl3
/* 0BCE38 8015C3F8 E4263C90 */   swc1  $f6, 0x3c90($at)
.L8015C3FC_ovl3:
/* 0BCE3C 8015C3FC 8D0C0000 */  lw    $t4, ($t0)
/* 0BCE40 8015C400 3C01800E */  lui   $at, 0x800e
/* 0BCE44 8015C404 000C6880 */  sll   $t5, $t4, 2
/* 0BCE48 8015C408 002D0821 */  addu  $at, $at, $t5
/* 0BCE4C 8015C40C E4223C90 */  swc1  $f2, 0x3c90($at)
.L8015C410_ovl3:
/* 0BCE50 8015C410 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* 0BCE54 8015C414 0C00D604 */  jal   cosf
/* 0BCE58 8015C418 E7A20050 */   swc1  $f2, 0x50($sp)
/* 0BCE5C 8015C41C C7A20050 */  lwc1  $f2, 0x50($sp)
/* 0BCE60 8015C420 8E080000 */  lw    $t0, ($s0)
/* 0BCE64 8015C424 3C01800E */  lui   $at, 0x800e
/* 0BCE68 8015C428 46020202 */  mul.s $f8, $f0, $f2
/* 0BCE6C 8015C42C 8D0E0000 */  lw    $t6, ($t0)
/* 0BCE70 8015C430 44808000 */  mtc1  $zero, $f16
/* 0BCE74 8015C434 44805000 */  mtc1  $zero, $f10
/* 0BCE78 8015C438 000E7880 */  sll   $t7, $t6, 2
/* 0BCE7C 8015C43C 002F0821 */  addu  $at, $at, $t7
/* 0BCE80 8015C440 4610103C */  c.lt.s $f2, $f16
/* 0BCE84 8015C444 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 0BCE88 8015C448 8D190000 */  lw    $t9, ($t0)
/* 0BCE8C 8015C44C 3C01800E */  lui   $at, 0x800e
/* 0BCE90 8015C450 0019C080 */  sll   $t8, $t9, 2
/* 0BCE94 8015C454 00380821 */  addu  $at, $at, $t8
/* 0BCE98 8015C458 45000008 */  bc1f  .L8015C47C_ovl3
/* 0BCE9C 8015C45C E42A6690 */   swc1  $f10, 0x6690($at)
/* 0BCEA0 8015C460 8D090000 */  lw    $t1, ($t0)
/* 0BCEA4 8015C464 3C01800E */  lui   $at, 0x800e
/* 0BCEA8 8015C468 46001487 */  neg.s $f18, $f2
/* 0BCEAC 8015C46C 00095080 */  sll   $t2, $t1, 2
/* 0BCEB0 8015C470 002A0821 */  addu  $at, $at, $t2
/* 0BCEB4 8015C474 10000006 */  b     .L8015C490_ovl3
/* 0BCEB8 8015C478 E4326850 */   swc1  $f18, 0x6850($at)
.L8015C47C_ovl3:
/* 0BCEBC 8015C47C 8D0B0000 */  lw    $t3, ($t0)
/* 0BCEC0 8015C480 3C01800E */  lui   $at, 0x800e
/* 0BCEC4 8015C484 000B6080 */  sll   $t4, $t3, 2
/* 0BCEC8 8015C488 002C0821 */  addu  $at, $at, $t4
/* 0BCECC 8015C48C E4226850 */  swc1  $f2, 0x6850($at)
.L8015C490_ovl3:
/* 0BCED0 8015C490 10000032 */  b     .L8015C55C_ovl3
/* 0BCED4 8015C494 8D020000 */   lw    $v0, ($t0)
/* 0BCED8 8015C498 44802000 */  mtc1  $zero, $f4
.L8015C49C_ovl3:
/* 0BCEDC 8015C49C 3C01800E */  lui   $at, 0x800e
/* 0BCEE0 8015C4A0 00230821 */  addu  $at, $at, $v1
/* 0BCEE4 8015C4A4 4604103C */  c.lt.s $f2, $f4
/* 0BCEE8 8015C4A8 00000000 */  nop   
/* 0BCEEC 8015C4AC 45000006 */  bc1f  .L8015C4C8_ovl3
/* 0BCEF0 8015C4B0 00000000 */   nop   
/* 0BCEF4 8015C4B4 3C01800E */  lui   $at, 0x800e
/* 0BCEF8 8015C4B8 46001187 */  neg.s $f6, $f2
/* 0BCEFC 8015C4BC 00230821 */  addu  $at, $at, $v1
/* 0BCF00 8015C4C0 10000002 */  b     .L8015C4CC_ovl3
/* 0BCF04 8015C4C4 E4266850 */   swc1  $f6, 0x6850($at)
.L8015C4C8_ovl3:
/* 0BCF08 8015C4C8 E4226850 */  swc1  $f2, 0x6850($at)
.L8015C4CC_ovl3:
/* 0BCF0C 8015C4CC 8D020000 */  lw    $v0, ($t0)
/* 0BCF10 8015C4D0 3C01800E */  lui   $at, 0x800e
/* 0BCF14 8015C4D4 00021880 */  sll   $v1, $v0, 2
/* 0BCF18 8015C4D8 00230821 */  addu  $at, $at, $v1
/* 0BCF1C 8015C4DC C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 0BCF20 8015C4E0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BCF24 8015C4E4 44814000 */  mtc1  $at, $f8
/* 0BCF28 8015C4E8 3C01800E */  lui   $at, 0x800e
/* 0BCF2C 8015C4EC 00230821 */  addu  $at, $at, $v1
/* 0BCF30 8015C4F0 46004032 */  c.eq.s $f8, $f0
/* 0BCF34 8015C4F4 00000000 */  nop   
/* 0BCF38 8015C4F8 45020008 */  bc1fl .L8015C51C_ovl3
/* 0BCF3C 8015C4FC 3C01BF80 */   lui   $at, %hi(D_BF8064D0) # $at, 0xbf80
/* 0BCF40 8015C500 C42A64D0 */  lwc1  $f10, %lo(D_BF8064D0)($at)
/* 0BCF44 8015C504 44808000 */  mtc1  $zero, $f16
/* 0BCF48 8015C508 00000000 */  nop   
/* 0BCF4C 8015C50C 4610503C */  c.lt.s $f10, $f16
/* 0BCF50 8015C510 00000000 */  nop   
/* 0BCF54 8015C514 4501000D */  bc1t  .L8015C54C_ovl3
/* 0BCF58 8015C518 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
.L8015C51C_ovl3:
/* 0BCF5C 8015C51C 44819000 */  mtc1  $at, $f18
/* 0BCF60 8015C520 3C01800E */  lui   $at, 0x800e
/* 0BCF64 8015C524 00230821 */  addu  $at, $at, $v1
/* 0BCF68 8015C528 46009032 */  c.eq.s $f18, $f0
/* 0BCF6C 8015C52C 00000000 */  nop   
/* 0BCF70 8015C530 4500000A */  bc1f  .L8015C55C_ovl3
/* 0BCF74 8015C534 00000000 */   nop   
/* 0BCF78 8015C538 44802000 */  mtc1  $zero, $f4
/* 0BCF7C 8015C53C C42664D0 */  lwc1  $f6, 0x64d0($at)
/* 0BCF80 8015C540 4606203C */  c.lt.s $f4, $f6
/* 0BCF84 8015C544 00000000 */  nop   
/* 0BCF88 8015C548 45000004 */  bc1f  .L8015C55C_ovl3
.L8015C54C_ovl3:
/* 0BCF8C 8015C54C 240D0001 */   li    $t5, 1
/* 0BCF90 8015C550 00837021 */  addu  $t6, $a0, $v1
/* 0BCF94 8015C554 ADCD0000 */  sw    $t5, ($t6)
/* 0BCF98 8015C558 8D020000 */  lw    $v0, ($t0)
.L8015C55C_ovl3:
/* 0BCF9C 8015C55C 3C05801A */  lui   $a1, %hi(D_80198830) # $a1, 0x801a
/* 0BCFA0 8015C560 24A58830 */  addiu $a1, %lo(D_80198830) # addiu $a1, $a1, -0x77d0
/* 0BCFA4 8015C564 8CAF0004 */  lw    $t7, 4($a1)
/* 0BCFA8 8015C568 3C04800F */  lui   $a0, %hi(D_800E9560) # $a0, 0x800f
/* 0BCFAC 8015C56C 24849560 */  addiu $a0, %lo(D_800E9560) # addiu $a0, $a0, -0x6aa0
/* 0BCFB0 8015C570 15E0000E */  bnez  $t7, .L8015C5AC_ovl3
/* 0BCFB4 8015C574 0002C880 */   sll   $t9, $v0, 2
/* 0BCFB8 8015C578 00991821 */  addu  $v1, $a0, $t9
/* 0BCFBC 8015C57C 8C780000 */  lw    $t8, ($v1)
/* 0BCFC0 8015C580 240D0001 */  li    $t5, 1
/* 0BCFC4 8015C584 2709FFFF */  addiu $t1, $t8, -1
/* 0BCFC8 8015C588 AC690000 */  sw    $t1, ($v1)
/* 0BCFCC 8015C58C 8D020000 */  lw    $v0, ($t0)
/* 0BCFD0 8015C590 00025080 */  sll   $t2, $v0, 2
/* 0BCFD4 8015C594 008A5821 */  addu  $t3, $a0, $t2
/* 0BCFD8 8015C598 8D6C0000 */  lw    $t4, ($t3)
/* 0BCFDC 8015C59C 15800003 */  bnez  $t4, .L8015C5AC_ovl3
/* 0BCFE0 8015C5A0 00000000 */   nop   
/* 0BCFE4 8015C5A4 ACAD0004 */  sw    $t5, 4($a1)
/* 0BCFE8 8015C5A8 8D020000 */  lw    $v0, ($t0)
.L8015C5AC_ovl3:
/* 0BCFEC 8015C5AC 3C048019 */  lui   $a0, %hi(D_80190BB0) # $a0, 0x8019
/* 0BCFF0 8015C5B0 24840BB0 */  addiu $a0, %lo(D_80190BB0) # addiu $a0, $a0, 0xbb0
/* 0BCFF4 8015C5B4 0C0445EF */  jal   func_801117BC
/* 0BCFF8 8015C5B8 00402825 */   move  $a1, $v0
/* 0BCFFC 8015C5BC 0C044713 */  jal   func_80111C4C
/* 0BD000 8015C5C0 00402025 */   move  $a0, $v0
/* 0BD004 8015C5C4 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0BD008 8015C5C8 8FA40064 */  lw    $a0, 0x64($sp)
/* 0BD00C 8015C5CC 8FA50064 */  lw    $a1, 0x64($sp)
/* 0BD010 8015C5D0 55C0002C */  bnezl $t6, .L8015C684_ovl3
/* 0BD014 8015C5D4 8CAE0000 */   lw    $t6, ($a1)
/* 0BD018 8015C5D8 8C8F0000 */  lw    $t7, ($a0)
/* 0BD01C 8015C5DC 51E00004 */  beql  $t7, $zero, .L8015C5F0_ovl3
/* 0BD020 8015C5E0 8E190000 */   lw    $t9, ($s0)
/* 0BD024 8015C5E4 0C029E1C */  jal   func_800A7870
/* 0BD028 8015C5E8 24850004 */   addiu $a1, $a0, 4
/* 0BD02C 8015C5EC 8E190000 */  lw    $t9, ($s0)
.L8015C5F0_ovl3:
/* 0BD030 8015C5F0 3C04800F */  lui   $a0, 0x800f
/* 0BD034 8015C5F4 8F230000 */  lw    $v1, ($t9)
/* 0BD038 8015C5F8 00031880 */  sll   $v1, $v1, 2
/* 0BD03C 8015C5FC 00832021 */  addu  $a0, $a0, $v1
/* 0BD040 8015C600 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0BD044 8015C604 10800045 */  beqz  $a0, .L8015C71C_ovl3
/* 0BD048 8015C608 00000000 */   nop   
/* 0BD04C 8015C60C 0C0287CC */  jal   func_800A1F30
/* 0BD050 8015C610 00000000 */   nop   
/* 0BD054 8015C614 8E180000 */  lw    $t8, ($s0)
/* 0BD058 8015C618 3C04800F */  lui   $a0, 0x800f
/* 0BD05C 8015C61C 8F090000 */  lw    $t1, ($t8)
/* 0BD060 8015C620 00095080 */  sll   $t2, $t1, 2
/* 0BD064 8015C624 008A2021 */  addu  $a0, $a0, $t2
/* 0BD068 8015C628 0C0287CC */  jal   func_800A1F30
/* 0BD06C 8015C62C 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0BD070 8015C630 8E080000 */  lw    $t0, ($s0)
/* 0BD074 8015C634 3C01800F */  lui   $at, 0x800f
/* 0BD078 8015C638 3C0D800F */  lui   $t5, 0x800f
/* 0BD07C 8015C63C 8D0B0000 */  lw    $t3, ($t0)
/* 0BD080 8015C640 3C04800F */  lui   $a0, 0x800f
/* 0BD084 8015C644 000B6080 */  sll   $t4, $t3, 2
/* 0BD088 8015C648 002C0821 */  addu  $at, $at, $t4
/* 0BD08C 8015C64C AC20B4E0 */  sw    $zero, -0x4b20($at)
/* 0BD090 8015C650 8D030000 */  lw    $v1, ($t0)
/* 0BD094 8015C654 3C01800F */  lui   $at, 0x800f
/* 0BD098 8015C658 00031880 */  sll   $v1, $v1, 2
/* 0BD09C 8015C65C 01A36821 */  addu  $t5, $t5, $v1
/* 0BD0A0 8015C660 8DADB4E0 */  lw    $t5, -0x4b20($t5)
/* 0BD0A4 8015C664 00230821 */  addu  $at, $at, $v1
/* 0BD0A8 8015C668 AC2DA520 */  sw    $t5, -0x5ae0($at)
/* 0BD0AC 8015C66C 8D030000 */  lw    $v1, ($t0)
/* 0BD0B0 8015C670 00031880 */  sll   $v1, $v1, 2
/* 0BD0B4 8015C674 00832021 */  addu  $a0, $a0, $v1
/* 0BD0B8 8015C678 10000028 */  b     .L8015C71C_ovl3
/* 0BD0BC 8015C67C 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BD0C0 8015C680 8CAE0000 */  lw    $t6, ($a1)
.L8015C684_ovl3:
/* 0BD0C4 8015C684 2404022D */  li    $a0, 557
/* 0BD0C8 8015C688 55C00004 */  bnezl $t6, .L8015C69C_ovl3
/* 0BD0CC 8015C68C 8E0F0000 */   lw    $t7, ($s0)
/* 0BD0D0 8015C690 0C029DFA */  jal   func_800A77E8
/* 0BD0D4 8015C694 24A60004 */   addiu $a2, $a1, 4
/* 0BD0D8 8015C698 8E0F0000 */  lw    $t7, ($s0)
.L8015C69C_ovl3:
/* 0BD0DC 8015C69C 3C04800F */  lui   $a0, 0x800f
/* 0BD0E0 8015C6A0 24050001 */  li    $a1, 1
/* 0BD0E4 8015C6A4 8DE30000 */  lw    $v1, ($t7)
/* 0BD0E8 8015C6A8 24060050 */  li    $a2, 80
/* 0BD0EC 8015C6AC 00031880 */  sll   $v1, $v1, 2
/* 0BD0F0 8015C6B0 00832021 */  addu  $a0, $a0, $v1
/* 0BD0F4 8015C6B4 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0BD0F8 8015C6B8 14800018 */  bnez  $a0, .L8015C71C_ovl3
/* 0BD0FC 8015C6BC 00000000 */   nop   
/* 0BD100 8015C6C0 0C02A08D */  jal   func_800A8234
/* 0BD104 8015C6C4 24040002 */   li    $a0, 2
/* 0BD108 8015C6C8 8E190000 */  lw    $t9, ($s0)
/* 0BD10C 8015C6CC 3C01800F */  lui   $at, 0x800f
/* 0BD110 8015C6D0 24040001 */  li    $a0, 1
/* 0BD114 8015C6D4 8F380000 */  lw    $t8, ($t9)
/* 0BD118 8015C6D8 24050001 */  li    $a1, 1
/* 0BD11C 8015C6DC 24060051 */  li    $a2, 81
/* 0BD120 8015C6E0 00184880 */  sll   $t1, $t8, 2
/* 0BD124 8015C6E4 00290821 */  addu  $at, $at, $t1
/* 0BD128 8015C6E8 0C02A08D */  jal   func_800A8234
/* 0BD12C 8015C6EC AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0BD130 8015C6F0 8E080000 */  lw    $t0, ($s0)
/* 0BD134 8015C6F4 3C01800F */  lui   $at, 0x800f
/* 0BD138 8015C6F8 3C04800F */  lui   $a0, 0x800f
/* 0BD13C 8015C6FC 8D0A0000 */  lw    $t2, ($t0)
/* 0BD140 8015C700 000A5880 */  sll   $t3, $t2, 2
/* 0BD144 8015C704 002B0821 */  addu  $at, $at, $t3
/* 0BD148 8015C708 AC22B4E0 */  sw    $v0, -0x4b20($at)
/* 0BD14C 8015C70C 8D030000 */  lw    $v1, ($t0)
/* 0BD150 8015C710 00031880 */  sll   $v1, $v1, 2
/* 0BD154 8015C714 00832021 */  addu  $a0, $a0, $v1
/* 0BD158 8015C718 8C84A520 */  lw    $a0, -0x5ae0($a0)
.L8015C71C_ovl3:
/* 0BD15C 8015C71C 10800030 */  beqz  $a0, .L8015C7E0_ovl3
/* 0BD160 8015C720 3C05800E */   lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0BD164 8015C724 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0BD168 8015C728 00A36021 */  addu  $t4, $a1, $v1
/* 0BD16C 8015C72C C5880000 */  lwc1  $f8, ($t4)
/* 0BD170 8015C730 8C8D004C */  lw    $t5, 0x4c($a0)
/* 0BD174 8015C734 3C01800E */  lui   $at, 0x800e
/* 0BD178 8015C738 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0BD17C 8015C73C E5A80004 */  swc1  $f8, 4($t5)
/* 0BD180 8015C740 8E0E0000 */  lw    $t6, ($s0)
/* 0BD184 8015C744 8C98004C */  lw    $t8, 0x4c($a0)
/* 0BD188 8015C748 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0BD18C 8015C74C 8DCF0000 */  lw    $t7, ($t6)
/* 0BD190 8015C750 3C02800F */  lui   $v0, 0x800f
/* 0BD194 8015C754 000FC880 */  sll   $t9, $t7, 2
/* 0BD198 8015C758 00390821 */  addu  $at, $at, $t9
/* 0BD19C 8015C75C C42A2790 */  lwc1  $f10, 0x2790($at)
/* 0BD1A0 8015C760 3C01800E */  lui   $at, 0x800e
/* 0BD1A4 8015C764 E70A0008 */  swc1  $f10, 8($t8)
/* 0BD1A8 8015C768 8E090000 */  lw    $t1, ($s0)
/* 0BD1AC 8015C76C 8C8D004C */  lw    $t5, 0x4c($a0)
/* 0BD1B0 8015C770 8D2A0000 */  lw    $t2, ($t1)
/* 0BD1B4 8015C774 000A5880 */  sll   $t3, $t2, 2
/* 0BD1B8 8015C778 00CB6021 */  addu  $t4, $a2, $t3
/* 0BD1BC 8015C77C C5900000 */  lwc1  $f16, ($t4)
/* 0BD1C0 8015C780 E5B0000C */  swc1  $f16, 0xc($t5)
/* 0BD1C4 8015C784 8E0E0000 */  lw    $t6, ($s0)
/* 0BD1C8 8015C788 8DC30000 */  lw    $v1, ($t6)
/* 0BD1CC 8015C78C 00031880 */  sll   $v1, $v1, 2
/* 0BD1D0 8015C790 00431021 */  addu  $v0, $v0, $v1
/* 0BD1D4 8015C794 8C42B4E0 */  lw    $v0, -0x4b20($v0)
/* 0BD1D8 8015C798 00A37821 */  addu  $t7, $a1, $v1
/* 0BD1DC 8015C79C C5F20000 */  lwc1  $f18, ($t7)
/* 0BD1E0 8015C7A0 8C59004C */  lw    $t9, 0x4c($v0)
/* 0BD1E4 8015C7A4 E7320004 */  swc1  $f18, 4($t9)
/* 0BD1E8 8015C7A8 8E180000 */  lw    $t8, ($s0)
/* 0BD1EC 8015C7AC 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0BD1F0 8015C7B0 8F090000 */  lw    $t1, ($t8)
/* 0BD1F4 8015C7B4 00095080 */  sll   $t2, $t1, 2
/* 0BD1F8 8015C7B8 002A0821 */  addu  $at, $at, $t2
/* 0BD1FC 8015C7BC C4242790 */  lwc1  $f4, 0x2790($at)
/* 0BD200 8015C7C0 E5640008 */  swc1  $f4, 8($t3)
/* 0BD204 8015C7C4 8E0C0000 */  lw    $t4, ($s0)
/* 0BD208 8015C7C8 8C59004C */  lw    $t9, 0x4c($v0)
/* 0BD20C 8015C7CC 8D8D0000 */  lw    $t5, ($t4)
/* 0BD210 8015C7D0 000D7080 */  sll   $t6, $t5, 2
/* 0BD214 8015C7D4 00CE7821 */  addu  $t7, $a2, $t6
/* 0BD218 8015C7D8 C5E60000 */  lwc1  $f6, ($t7)
/* 0BD21C 8015C7DC E726000C */  swc1  $f6, 0xc($t9)
.L8015C7E0_ovl3:
/* 0BD220 8015C7E0 8FBF0024 */  lw    $ra, 0x24($sp)
.L8015C7E4_ovl3:
/* 0BD224 8015C7E4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0BD228 8015C7E8 27BD0068 */  addiu $sp, $sp, 0x68
/* 0BD22C 8015C7EC 03E00008 */  jr    $ra
/* 0BD230 8015C7F0 00000000 */   nop   

.type func_8015C00C_ovl3, @function
.size func_8015C00C_ovl3, . - func_8015C00C_ovl3

glabel func_8015C7F4_ovl3
/* 0BD234 8015C7F4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BD238 8015C7F8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BD23C 8015C7FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BD240 8015C800 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BD244 8015C804 8DC70000 */  lw    $a3, ($t6)
/* 0BD248 8015C808 3C0F800F */  lui   $t7, 0x800f
/* 0BD24C 8015C80C 3C01800F */  lui   $at, 0x800f
/* 0BD250 8015C810 00073880 */  sll   $a3, $a3, 2
/* 0BD254 8015C814 01E77821 */  addu  $t7, $t7, $a3
/* 0BD258 8015C818 8DEFC2E0 */  lw    $t7, -0x3d20($t7)
/* 0BD25C 8015C81C 00270821 */  addu  $at, $at, $a3
/* 0BD260 8015C820 AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0BD264 8015C824 0C058738 */  jal   func_80161CE0_ovl3
/* 0BD268 8015C828 AFAF0028 */   sw    $t7, 0x28($sp)
/* 0BD26C 8015C82C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BD270 8015C830 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BD274 8015C834 44800000 */  mtc1  $zero, $f0
/* 0BD278 8015C838 3C04800E */  lui   $a0, 0x800e
/* 0BD27C 8015C83C 8F190000 */  lw    $t9, ($t8)
/* 0BD280 8015C840 44050000 */  mfc1  $a1, $f0
/* 0BD284 8015C844 44060000 */  mfc1  $a2, $f0
/* 0BD288 8015C848 00196080 */  sll   $t4, $t9, 2
/* 0BD28C 8015C84C 008C2021 */  addu  $a0, $a0, $t4
/* 0BD290 8015C850 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BD294 8015C854 8C841D10 */   lw    $a0, 0x1d10($a0)
/* 0BD298 8015C858 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BD29C 8015C85C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BD2A0 8015C860 3C0B800E */  lui   $t3, %hi(D_800E0D50) # $t3, 0x800e
/* 0BD2A4 8015C864 256B0D50 */  addiu $t3, %lo(D_800E0D50) # addiu $t3, $t3, 0xd50
/* 0BD2A8 8015C868 8C670000 */  lw    $a3, ($v1)
/* 0BD2AC 8015C86C 3C0A800E */  lui   $t2, %hi(D_800E17D0) # $t2, 0x800e
/* 0BD2B0 8015C870 254A17D0 */  addiu $t2, %lo(D_800E17D0) # addiu $t2, $t2, 0x17d0
/* 0BD2B4 8015C874 00073880 */  sll   $a3, $a3, 2
/* 0BD2B8 8015C878 01676821 */  addu  $t5, $t3, $a3
/* 0BD2BC 8015C87C 8DAE0000 */  lw    $t6, ($t5)
/* 0BD2C0 8015C880 0147C821 */  addu  $t9, $t2, $a3
/* 0BD2C4 8015C884 3C0C800B */  lui   $t4, %hi(func_800B4954) # $t4, 0x800b
/* 0BD2C8 8015C888 000E7880 */  sll   $t7, $t6, 2
/* 0BD2CC 8015C88C 014FC021 */  addu  $t8, $t2, $t7
/* 0BD2D0 8015C890 C7040000 */  lwc1  $f4, ($t8)
/* 0BD2D4 8015C894 3C01800E */  lui   $at, 0x800e
/* 0BD2D8 8015C898 258C4954 */  addiu $t4, %lo(func_800B4954) # addiu $t4, $t4, 0x4954
/* 0BD2DC 8015C89C E7240000 */  swc1  $f4, ($t9)
/* 0BD2E0 8015C8A0 8C6D0000 */  lw    $t5, ($v1)
/* 0BD2E4 8015C8A4 3C0F8016 */  lui   $t7, %hi(D_8015CC84) # $t7, 0x8016
/* 0BD2E8 8015C8A8 25EFCC84 */  addiu $t7, %lo(D_8015CC84) # addiu $t7, $t7, -0x337c
/* 0BD2EC 8015C8AC 000D7080 */  sll   $t6, $t5, 2
/* 0BD2F0 8015C8B0 002E0821 */  addu  $at, $at, $t6
/* 0BD2F4 8015C8B4 AC2CEF90 */  sw    $t4, -0x1070($at)
/* 0BD2F8 8015C8B8 8C780000 */  lw    $t8, ($v1)
/* 0BD2FC 8015C8BC 3C01800E */  lui   $at, 0x800e
/* 0BD300 8015C8C0 3C0D8019 */  lui   $t5, %hi(D_80192C3C) # $t5, 0x8019
/* 0BD304 8015C8C4 0018C880 */  sll   $t9, $t8, 2
/* 0BD308 8015C8C8 00390821 */  addu  $at, $at, $t9
/* 0BD30C 8015C8CC AC2FF150 */  sw    $t7, -0xeb0($at)
/* 0BD310 8015C8D0 8C6C0000 */  lw    $t4, ($v1)
/* 0BD314 8015C8D4 3C01800E */  lui   $at, 0x800e
/* 0BD318 8015C8D8 25AD2C3C */  addiu $t5, %lo(D_80192C3C) # addiu $t5, $t5, 0x2c3c
/* 0BD31C 8015C8DC 000C7080 */  sll   $t6, $t4, 2
/* 0BD320 8015C8E0 002E0821 */  addu  $at, $at, $t6
/* 0BD324 8015C8E4 AC2D0490 */  sw    $t5, 0x0490($at)
/* 0BD328 8015C8E8 8C680000 */  lw    $t0, ($v1)
/* 0BD32C 8015C8EC 3C0E801A */  lui   $t6, %hi(D_801982F8) # $t6, 0x801a
/* 0BD330 8015C8F0 3C0C8019 */  lui   $t4, %hi(D_80197F60) # $t4, 0x8019
/* 0BD334 8015C8F4 2509FFFC */  addiu $t1, $t0, -4
/* 0BD338 8015C8F8 0009C880 */  sll   $t9, $t1, 2
/* 0BD33C 8015C8FC 0329C823 */  subu  $t9, $t9, $t1
/* 0BD340 8015C900 0019C8C0 */  sll   $t9, $t9, 3
/* 0BD344 8015C904 0329C823 */  subu  $t9, $t9, $t1
/* 0BD348 8015C908 0008C080 */  sll   $t8, $t0, 2
/* 0BD34C 8015C90C 01787821 */  addu  $t7, $t3, $t8
/* 0BD350 8015C910 0019C880 */  sll   $t9, $t9, 2
/* 0BD354 8015C914 00096940 */  sll   $t5, $t1, 5
/* 0BD358 8015C918 258C7F60 */  addiu $t4, %lo(D_80197F60) # addiu $t4, $t4, 0x7f60
/* 0BD35C 8015C91C 25CE82F8 */  addiu $t6, %lo(D_801982F8) # addiu $t6, $t6, -0x7d08
/* 0BD360 8015C920 01AE3021 */  addu  $a2, $t5, $t6
/* 0BD364 8015C924 032C2821 */  addu  $a1, $t9, $t4
/* 0BD368 8015C928 0C055192 */  jal   func_80154648_ovl3
/* 0BD36C 8015C92C 8DE40000 */   lw    $a0, ($t7)
/* 0BD370 8015C930 0C029D9E */  jal   play_sound
/* 0BD374 8015C934 240400B4 */   li    $a0, 180
/* 0BD378 8015C938 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BD37C 8015C93C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BD380 8015C940 3C018019 */  lui   $at, %hi(D_8019706C) # $at, 0x8019
/* 0BD384 8015C944 C420706C */  lwc1  $f0, %lo(D_8019706C)($at)
/* 0BD388 8015C948 8C780000 */  lw    $t8, ($v1)
/* 0BD38C 8015C94C 3C01800E */  lui   $at, 0x800e
/* 0BD390 8015C950 3C040002 */  lui   $a0, (0x0002002F >> 16) # lui $a0, 2
/* 0BD394 8015C954 00187880 */  sll   $t7, $t8, 2
/* 0BD398 8015C958 002F0821 */  addu  $at, $at, $t7
/* 0BD39C 8015C95C E4204550 */  swc1  $f0, 0x4550($at)
/* 0BD3A0 8015C960 8C790000 */  lw    $t9, ($v1)
/* 0BD3A4 8015C964 3C01800E */  lui   $at, 0x800e
/* 0BD3A8 8015C968 3484002F */  ori   $a0, (0x0002002F & 0xFFFF) # ori $a0, $a0, 0x2f
/* 0BD3AC 8015C96C 00196080 */  sll   $t4, $t9, 2
/* 0BD3B0 8015C970 002C0821 */  addu  $at, $at, $t4
/* 0BD3B4 8015C974 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BD3B8 8015C978 8C6D0000 */  lw    $t5, ($v1)
/* 0BD3BC 8015C97C 3C01800E */  lui   $at, 0x800e
/* 0BD3C0 8015C980 24050021 */  li    $a1, 33
/* 0BD3C4 8015C984 000D7080 */  sll   $t6, $t5, 2
/* 0BD3C8 8015C988 002E0821 */  addu  $at, $at, $t6
/* 0BD3CC 8015C98C 24060010 */  li    $a2, 16
/* 0BD3D0 8015C990 0C02A619 */  jal   func_800A9864
/* 0BD3D4 8015C994 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BD3D8 8015C998 0C006291 */  jal   random_soft_s32_range
/* 0BD3DC 8015C99C 24040008 */   li    $a0, 8
/* 0BD3E0 8015C9A0 8FB80028 */  lw    $t8, 0x28($sp)
/* 0BD3E4 8015C9A4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BD3E8 8015C9A8 44810000 */  mtc1  $at, $f0
/* 0BD3EC 8015C9AC 3C018019 */  lui   $at, 0x8019
/* 0BD3F0 8015C9B0 00187880 */  sll   $t7, $t8, 2
/* 0BD3F4 8015C9B4 002F0821 */  addu  $at, $at, $t7
/* 0BD3F8 8015C9B8 C4286750 */  lwc1  $f8, 0x6750($at)
/* 0BD3FC 8015C9BC 44803000 */  mtc1  $zero, $f6
/* 0BD400 8015C9C0 24010002 */  li    $at, 2
/* 0BD404 8015C9C4 E7A00038 */  swc1  $f0, 0x38($sp)
/* 0BD408 8015C9C8 E7A80034 */  swc1  $f8, 0x34($sp)
/* 0BD40C 8015C9CC 10410003 */  beq   $v0, $at, .L8015C9DC_ovl3
/* 0BD410 8015C9D0 E7A6003C */   swc1  $f6, 0x3c($sp)
/* 0BD414 8015C9D4 24010007 */  li    $at, 7
/* 0BD418 8015C9D8 14410004 */  bne   $v0, $at, .L8015C9EC_ovl3
.L8015C9DC_ovl3:
/* 0BD41C 8015C9DC 3C018019 */   lui   $at, %hi(D_80197070) # $at, 0x8019
/* 0BD420 8015C9E0 C42A7070 */  lwc1  $f10, %lo(D_80197070)($at)
/* 0BD424 8015C9E4 460A0402 */  mul.s $f16, $f0, $f10
/* 0BD428 8015C9E8 E7B00038 */  swc1  $f16, 0x38($sp)
.L8015C9EC_ovl3:
/* 0BD42C 8015C9EC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BD430 8015C9F0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BD434 8015C9F4 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0BD438 8015C9F8 44819000 */  mtc1  $at, $f18
/* 0BD43C 8015C9FC 8C670000 */  lw    $a3, ($v1)
/* 0BD440 8015CA00 3C01800F */  lui   $at, 0x800f
/* 0BD444 8015CA04 3C08800F */  lui   $t0, %hi(D_800EA6E0) # $t0, 0x800f
/* 0BD448 8015CA08 00073880 */  sll   $a3, $a3, 2
/* 0BD44C 8015CA0C 00270821 */  addu  $at, $at, $a3
/* 0BD450 8015CA10 C424C660 */  lwc1  $f4, -0x39a0($at)
/* 0BD454 8015CA14 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 0BD458 8015CA18 2508A6E0 */  addiu $t0, %lo(D_800EA6E0) # addiu $t0, $t0, -0x5920
/* 0BD45C 8015CA1C 46049032 */  c.eq.s $f18, $f4
/* 0BD460 8015CA20 3C198013 */  lui   $t9, %hi(D_8012E804) # $t9, 0x8013
/* 0BD464 8015CA24 3C0C800E */  lui   $t4, 0x800e
/* 0BD468 8015CA28 3C0E800E */  lui   $t6, 0x800e
/* 0BD46C 8015CA2C 45000005 */  bc1f  .L8015CA44_ovl3
/* 0BD470 8015CA30 00000000 */   nop   
/* 0BD474 8015CA34 46003207 */  neg.s $f8, $f6
/* 0BD478 8015CA38 E7A80034 */  swc1  $f8, 0x34($sp)
/* 0BD47C 8015CA3C 8C670000 */  lw    $a3, ($v1)
/* 0BD480 8015CA40 00073880 */  sll   $a3, $a3, 2
.L8015CA44_ovl3:
/* 0BD484 8015CA44 8F39E804 */  lw    $t9, %lo(D_8012E804)($t9)
/* 0BD488 8015CA48 24010001 */  li    $at, 1
/* 0BD48C 8015CA4C 01876021 */  addu  $t4, $t4, $a3
/* 0BD490 8015CA50 1721000F */  bne   $t9, $at, .L8015CA90_ovl3
/* 0BD494 8015CA54 01C77021 */   addu  $t6, $t6, $a3
/* 0BD498 8015CA58 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0BD49C 8015CA5C 3C01800F */  lui   $at, 0x800f
/* 0BD4A0 8015CA60 27A40034 */  addiu $a0, $sp, 0x34
/* 0BD4A4 8015CA64 000C6880 */  sll   $t5, $t4, 2
/* 0BD4A8 8015CA68 002D0821 */  addu  $at, $at, $t5
/* 0BD4AC 8015CA6C C42AA6E0 */  lwc1  $f10, -0x5920($at)
/* 0BD4B0 8015CA70 24050004 */  li    $a1, 4
/* 0BD4B4 8015CA74 46005407 */  neg.s $f16, $f10
/* 0BD4B8 8015CA78 44068000 */  mfc1  $a2, $f16
/* 0BD4BC 8015CA7C 0C006424 */  jal   lbvector_Rotate
/* 0BD4C0 8015CA80 00000000 */   nop   
/* 0BD4C4 8015CA84 3C08800F */  lui   $t0, %hi(D_800EA6E0) # $t0, 0x800f
/* 0BD4C8 8015CA88 1000000A */  b     .L8015CAB4_ovl3
/* 0BD4CC 8015CA8C 2508A6E0 */   addiu $t0, %lo(D_800EA6E0) # addiu $t0, $t0, -0x5920
.L8015CA90_ovl3:
/* 0BD4D0 8015CA90 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 0BD4D4 8015CA94 27A40034 */  addiu $a0, $sp, 0x34
/* 0BD4D8 8015CA98 24050004 */  li    $a1, 4
/* 0BD4DC 8015CA9C 000EC080 */  sll   $t8, $t6, 2
/* 0BD4E0 8015CAA0 01187821 */  addu  $t7, $t0, $t8
/* 0BD4E4 8015CAA4 0C006424 */  jal   lbvector_Rotate
/* 0BD4E8 8015CAA8 8DE60000 */   lw    $a2, ($t7)
/* 0BD4EC 8015CAAC 3C08800F */  lui   $t0, %hi(D_800EA6E0) # $t0, 0x800f
/* 0BD4F0 8015CAB0 2508A6E0 */  addiu $t0, %lo(D_800EA6E0) # addiu $t0, $t0, -0x5920
.L8015CAB4_ovl3:
/* 0BD4F4 8015CAB4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BD4F8 8015CAB8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BD4FC 8015CABC 3C19800F */  lui   $t9, 0x800f
/* 0BD500 8015CAC0 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0BD504 8015CAC4 8C670000 */  lw    $a3, ($v1)
/* 0BD508 8015CAC8 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 0BD50C 8015CACC 24040001 */  li    $a0, 1
/* 0BD510 8015CAD0 00073880 */  sll   $a3, $a3, 2
/* 0BD514 8015CAD4 0327C821 */  addu  $t9, $t9, $a3
/* 0BD518 8015CAD8 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 0BD51C 8015CADC 24050001 */  li    $a1, 1
/* 0BD520 8015CAE0 24060029 */  li    $a2, 41
/* 0BD524 8015CAE4 332C0004 */  andi  $t4, $t9, 4
/* 0BD528 8015CAE8 1180000F */  beqz  $t4, .L8015CB28_ovl3
/* 0BD52C 8015CAEC 0107C821 */   addu  $t9, $t0, $a3
/* 0BD530 8015CAF0 44810000 */  mtc1  $at, $f0
/* 0BD534 8015CAF4 C7B20038 */  lwc1  $f18, 0x38($sp)
/* 0BD538 8015CAF8 01076821 */  addu  $t5, $t0, $a3
/* 0BD53C 8015CAFC 3C02800F */  lui   $v0, %hi(D_800EA8A0) # $v0, 0x800f
/* 0BD540 8015CB00 46009102 */  mul.s $f4, $f18, $f0
/* 0BD544 8015CB04 2442A8A0 */  addiu $v0, %lo(D_800EA8A0) # addiu $v0, $v0, -0x5760
/* 0BD548 8015CB08 E5A40000 */  swc1  $f4, ($t5)
/* 0BD54C 8015CB0C C7A60034 */  lwc1  $f6, 0x34($sp)
/* 0BD550 8015CB10 8C6E0000 */  lw    $t6, ($v1)
/* 0BD554 8015CB14 46003202 */  mul.s $f8, $f6, $f0
/* 0BD558 8015CB18 000EC080 */  sll   $t8, $t6, 2
/* 0BD55C 8015CB1C 00587821 */  addu  $t7, $v0, $t8
/* 0BD560 8015CB20 10000009 */  b     .L8015CB48_ovl3
/* 0BD564 8015CB24 E5E80000 */   swc1  $f8, ($t7)
.L8015CB28_ovl3:
/* 0BD568 8015CB28 E72A0000 */  swc1  $f10, ($t9)
/* 0BD56C 8015CB2C 8C6C0000 */  lw    $t4, ($v1)
/* 0BD570 8015CB30 C7B00034 */  lwc1  $f16, 0x34($sp)
/* 0BD574 8015CB34 3C02800F */  lui   $v0, %hi(D_800EA8A0) # $v0, 0x800f
/* 0BD578 8015CB38 2442A8A0 */  addiu $v0, %lo(D_800EA8A0) # addiu $v0, $v0, -0x5760
/* 0BD57C 8015CB3C 000C6880 */  sll   $t5, $t4, 2
/* 0BD580 8015CB40 004D7021 */  addu  $t6, $v0, $t5
/* 0BD584 8015CB44 E5D00000 */  swc1  $f16, ($t6)
.L8015CB48_ovl3:
/* 0BD588 8015CB48 8C6F0000 */  lw    $t7, ($v1)
/* 0BD58C 8015CB4C 3C01800F */  lui   $at, 0x800f
/* 0BD590 8015CB50 24180014 */  li    $t8, 20
/* 0BD594 8015CB54 000FC880 */  sll   $t9, $t7, 2
/* 0BD598 8015CB58 00390821 */  addu  $at, $at, $t9
/* 0BD59C 8015CB5C AC389720 */  sw    $t8, -0x68e0($at)
/* 0BD5A0 8015CB60 8C670000 */  lw    $a3, ($v1)
/* 0BD5A4 8015CB64 3C01800E */  lui   $at, 0x800e
/* 0BD5A8 8015CB68 44802000 */  mtc1  $zero, $f4
/* 0BD5AC 8015CB6C 00073880 */  sll   $a3, $a3, 2
/* 0BD5B0 8015CB70 00476021 */  addu  $t4, $v0, $a3
/* 0BD5B4 8015CB74 C5920000 */  lwc1  $f18, ($t4)
/* 0BD5B8 8015CB78 00270821 */  addu  $at, $at, $a3
/* 0BD5BC 8015CB7C 44801000 */  mtc1  $zero, $f2
/* 0BD5C0 8015CB80 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 0BD5C4 8015CB84 8C6D0000 */  lw    $t5, ($v1)
/* 0BD5C8 8015CB88 3C01800E */  lui   $at, 0x800e
/* 0BD5CC 8015CB8C 000D7080 */  sll   $t6, $t5, 2
/* 0BD5D0 8015CB90 002E0821 */  addu  $at, $at, $t6
/* 0BD5D4 8015CB94 E4246690 */  swc1  $f4, 0x6690($at)
/* 0BD5D8 8015CB98 8C670000 */  lw    $a3, ($v1)
/* 0BD5DC 8015CB9C 3C01800E */  lui   $at, 0x800e
/* 0BD5E0 8015CBA0 00073880 */  sll   $a3, $a3, 2
/* 0BD5E4 8015CBA4 00477821 */  addu  $t7, $v0, $a3
/* 0BD5E8 8015CBA8 C5E00000 */  lwc1  $f0, ($t7)
/* 0BD5EC 8015CBAC 00270821 */  addu  $at, $at, $a3
/* 0BD5F0 8015CBB0 4602003C */  c.lt.s $f0, $f2
/* 0BD5F4 8015CBB4 00000000 */  nop   
/* 0BD5F8 8015CBB8 45000006 */  bc1f  .L8015CBD4_ovl3
/* 0BD5FC 8015CBBC 00000000 */   nop   
/* 0BD600 8015CBC0 3C01800E */  lui   $at, 0x800e
/* 0BD604 8015CBC4 46000187 */  neg.s $f6, $f0
/* 0BD608 8015CBC8 00270821 */  addu  $at, $at, $a3
/* 0BD60C 8015CBCC 10000002 */  b     .L8015CBD8_ovl3
/* 0BD610 8015CBD0 E4266850 */   swc1  $f6, 0x6850($at)
.L8015CBD4_ovl3:
/* 0BD614 8015CBD4 E4206850 */  swc1  $f0, 0x6850($at)
.L8015CBD8_ovl3:
/* 0BD618 8015CBD8 8C670000 */  lw    $a3, ($v1)
/* 0BD61C 8015CBDC 3C01800E */  lui   $at, 0x800e
/* 0BD620 8015CBE0 44805000 */  mtc1  $zero, $f10
/* 0BD624 8015CBE4 00073880 */  sll   $a3, $a3, 2
/* 0BD628 8015CBE8 0107C021 */  addu  $t8, $t0, $a3
/* 0BD62C 8015CBEC C7080000 */  lwc1  $f8, ($t8)
/* 0BD630 8015CBF0 00270821 */  addu  $at, $at, $a3
/* 0BD634 8015CBF4 E4283210 */  swc1  $f8, 0x3210($at)
/* 0BD638 8015CBF8 8C790000 */  lw    $t9, ($v1)
/* 0BD63C 8015CBFC 3C01800E */  lui   $at, 0x800e
/* 0BD640 8015CC00 00196080 */  sll   $t4, $t9, 2
/* 0BD644 8015CC04 002C0821 */  addu  $at, $at, $t4
/* 0BD648 8015CC08 E42A3750 */  swc1  $f10, 0x3750($at)
/* 0BD64C 8015CC0C 8C670000 */  lw    $a3, ($v1)
/* 0BD650 8015CC10 3C01800E */  lui   $at, 0x800e
/* 0BD654 8015CC14 00073880 */  sll   $a3, $a3, 2
/* 0BD658 8015CC18 01076821 */  addu  $t5, $t0, $a3
/* 0BD65C 8015CC1C C5A00000 */  lwc1  $f0, ($t5)
/* 0BD660 8015CC20 00270821 */  addu  $at, $at, $a3
/* 0BD664 8015CC24 4602003C */  c.lt.s $f0, $f2
/* 0BD668 8015CC28 00000000 */  nop   
/* 0BD66C 8015CC2C 45000006 */  bc1f  .L8015CC48_ovl3
/* 0BD670 8015CC30 00000000 */   nop   
/* 0BD674 8015CC34 3C01800E */  lui   $at, 0x800e
/* 0BD678 8015CC38 46000407 */  neg.s $f16, $f0
/* 0BD67C 8015CC3C 00270821 */  addu  $at, $at, $a3
/* 0BD680 8015CC40 10000002 */  b     .L8015CC4C_ovl3
/* 0BD684 8015CC44 E4303C90 */   swc1  $f16, 0x3c90($at)
.L8015CC48_ovl3:
/* 0BD688 8015CC48 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8015CC4C_ovl3:
/* 0BD68C 8015CC4C 0C02A040 */  jal   func_800A8100
/* 0BD690 8015CC50 00003825 */   move  $a3, $zero
/* 0BD694 8015CC54 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BD698 8015CC58 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BD69C 8015CC5C 3C01800F */  lui   $at, 0x800f
/* 0BD6A0 8015CC60 8DCF0000 */  lw    $t7, ($t6)
/* 0BD6A4 8015CC64 000FC080 */  sll   $t8, $t7, 2
/* 0BD6A8 8015CC68 00380821 */  addu  $at, $at, $t8
/* 0BD6AC 8015CC6C 0C02BE85 */  jal   func_800AFA14
/* 0BD6B0 8015CC70 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0BD6B4 8015CC74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BD6B8 8015CC78 27BD0040 */  addiu $sp, $sp, 0x40
/* 0BD6BC 8015CC7C 03E00008 */  jr    $ra
/* 0BD6C0 8015CC80 00000000 */   nop   

.type func_8015C7F4_ovl3, @function
.size func_8015C7F4_ovl3, . - func_8015C7F4_ovl3

glabel func_8015CC84_ovl3
/* 0BD6C4 8015CC84 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 0BD6C8 8015CC88 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 0BD6CC 8015CC8C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BD6D0 8015CC90 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BD6D4 8015CC94 AFA40020 */  sw    $a0, 0x20($sp)
/* 0BD6D8 8015CC98 8CA20000 */  lw    $v0, ($a1)
/* 0BD6DC 8015CC9C 3C01800E */  lui   $at, 0x800e
/* 0BD6E0 8015CCA0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0BD6E4 8015CCA4 00021080 */  sll   $v0, $v0, 2
/* 0BD6E8 8015CCA8 00220821 */  addu  $at, $at, $v0
/* 0BD6EC 8015CCAC C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BD6F0 8015CCB0 3C01800E */  lui   $at, 0x800e
/* 0BD6F4 8015CCB4 00220821 */  addu  $at, $at, $v0
/* 0BD6F8 8015CCB8 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BD6FC 8015CCBC 8CAE0000 */  lw    $t6, ($a1)
/* 0BD700 8015CCC0 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0BD704 8015CCC4 000E7880 */  sll   $t7, $t6, 2
/* 0BD708 8015CCC8 01F81821 */  addu  $v1, $t7, $t8
/* 0BD70C 8015CCCC 8C640000 */  lw    $a0, ($v1)
/* 0BD710 8015CCD0 2499FFFF */  addiu $t9, $a0, -1
/* 0BD714 8015CCD4 1080008C */  beqz  $a0, .L8015CF08_ovl3
/* 0BD718 8015CCD8 AC790000 */   sw    $t9, ($v1)
/* 0BD71C 8015CCDC 8CA30000 */  lw    $v1, ($a1)
/* 0BD720 8015CCE0 3C08800E */  lui   $t0, 0x800e
/* 0BD724 8015CCE4 3C09800F */  lui   $t1, 0x800f
/* 0BD728 8015CCE8 00031080 */  sll   $v0, $v1, 2
/* 0BD72C 8015CCEC 01024021 */  addu  $t0, $t0, $v0
/* 0BD730 8015CCF0 8D086310 */  lw    $t0, 0x6310($t0)
/* 0BD734 8015CCF4 01224821 */  addu  $t1, $t1, $v0
/* 0BD738 8015CCF8 15000083 */  bnez  $t0, .L8015CF08_ovl3
/* 0BD73C 8015CCFC 00000000 */   nop   
/* 0BD740 8015CD00 8D2983E0 */  lw    $t1, -0x7c20($t1)
/* 0BD744 8015CD04 2462FFFC */  addiu $v0, $v1, -4
/* 0BD748 8015CD08 00025080 */  sll   $t2, $v0, 2
/* 0BD74C 8015CD0C 1520007E */  bnez  $t1, .L8015CF08_ovl3
/* 0BD750 8015CD10 01425023 */   subu  $t2, $t2, $v0
/* 0BD754 8015CD14 000A50C0 */  sll   $t2, $t2, 3
/* 0BD758 8015CD18 01425023 */  subu  $t2, $t2, $v0
/* 0BD75C 8015CD1C 3C0B8019 */  lui   $t3, %hi(D_80197F60) # $t3, 0x8019
/* 0BD760 8015CD20 3C0D801A */  lui   $t5, %hi(D_801982F8) # $t5, 0x801a
/* 0BD764 8015CD24 25AD82F8 */  addiu $t5, %lo(D_801982F8) # addiu $t5, $t5, -0x7d08
/* 0BD768 8015CD28 256B7F60 */  addiu $t3, %lo(D_80197F60) # addiu $t3, $t3, 0x7f60
/* 0BD76C 8015CD2C 000A5080 */  sll   $t2, $t2, 2
/* 0BD770 8015CD30 00026140 */  sll   $t4, $v0, 5
/* 0BD774 8015CD34 018D2821 */  addu  $a1, $t4, $t5
/* 0BD778 8015CD38 0C055543 */  jal   func_8015550C_ovl3
/* 0BD77C 8015CD3C 014B2021 */   addu  $a0, $t2, $t3
/* 0BD780 8015CD40 14400071 */  bnez  $v0, .L8015CF08_ovl3
/* 0BD784 8015CD44 3C058005 */   lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 0BD788 8015CD48 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 0BD78C 8015CD4C 3C0E800F */  lui   $t6, 0x800f
/* 0BD790 8015CD50 3C04800F */  lui   $a0, %hi(D_800E8AE0) # $a0, 0x800f
/* 0BD794 8015CD54 8CA20000 */  lw    $v0, ($a1)
/* 0BD798 8015CD58 24848AE0 */  addiu $a0, %lo(D_800E8AE0) # addiu $a0, $a0, -0x7520
/* 0BD79C 8015CD5C 00021080 */  sll   $v0, $v0, 2
/* 0BD7A0 8015CD60 01C27021 */  addu  $t6, $t6, $v0
/* 0BD7A4 8015CD64 8DCE8920 */  lw    $t6, -0x76e0($t6)
/* 0BD7A8 8015CD68 00827821 */  addu  $t7, $a0, $v0
/* 0BD7AC 8015CD6C 15C00066 */  bnez  $t6, .L8015CF08_ovl3
/* 0BD7B0 8015CD70 00000000 */   nop   
/* 0BD7B4 8015CD74 8DF80000 */  lw    $t8, ($t7)
/* 0BD7B8 8015CD78 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 0BD7BC 8015CD7C 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 0BD7C0 8015CD80 33190004 */  andi  $t9, $t8, 4
/* 0BD7C4 8015CD84 17200009 */  bnez  $t9, .L8015CDAC_ovl3
/* 0BD7C8 8015CD88 00624821 */   addu  $t1, $v1, $v0
/* 0BD7CC 8015CD8C 3C03800F */  lui   $v1, %hi(D_800EA8A0) # $v1, 0x800f
/* 0BD7D0 8015CD90 2463A8A0 */  addiu $v1, %lo(D_800EA8A0) # addiu $v1, $v1, -0x5760
/* 0BD7D4 8015CD94 00624021 */  addu  $t0, $v1, $v0
/* 0BD7D8 8015CD98 C5060000 */  lwc1  $f6, ($t0)
/* 0BD7DC 8015CD9C 3C01800E */  lui   $at, 0x800e
/* 0BD7E0 8015CDA0 00220821 */  addu  $at, $at, $v0
/* 0BD7E4 8015CDA4 10000008 */  b     .L8015CDC8_ovl3
/* 0BD7E8 8015CDA8 E42664D0 */   swc1  $f6, 0x64d0($at)
.L8015CDAC_ovl3:
/* 0BD7EC 8015CDAC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0BD7F0 8015CDB0 44815000 */  mtc1  $at, $f10
/* 0BD7F4 8015CDB4 C5280000 */  lwc1  $f8, ($t1)
/* 0BD7F8 8015CDB8 3C01800E */  lui   $at, 0x800e
/* 0BD7FC 8015CDBC 00220821 */  addu  $at, $at, $v0
/* 0BD800 8015CDC0 460A4402 */  mul.s $f16, $f8, $f10
/* 0BD804 8015CDC4 E43064D0 */  swc1  $f16, 0x64d0($at)
.L8015CDC8_ovl3:
/* 0BD808 8015CDC8 8CAA0000 */  lw    $t2, ($a1)
/* 0BD80C 8015CDCC 44801000 */  mtc1  $zero, $f2
/* 0BD810 8015CDD0 3C01800E */  lui   $at, 0x800e
/* 0BD814 8015CDD4 000A5880 */  sll   $t3, $t2, 2
/* 0BD818 8015CDD8 002B0821 */  addu  $at, $at, $t3
/* 0BD81C 8015CDDC E4226690 */  swc1  $f2, 0x6690($at)
/* 0BD820 8015CDE0 8CA20000 */  lw    $v0, ($a1)
/* 0BD824 8015CDE4 44806000 */  mtc1  $zero, $f12
/* 0BD828 8015CDE8 3C01800E */  lui   $at, 0x800e
/* 0BD82C 8015CDEC 00021080 */  sll   $v0, $v0, 2
/* 0BD830 8015CDF0 00626021 */  addu  $t4, $v1, $v0
/* 0BD834 8015CDF4 C5800000 */  lwc1  $f0, ($t4)
/* 0BD838 8015CDF8 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 0BD83C 8015CDFC 00220821 */  addu  $at, $at, $v0
/* 0BD840 8015CE00 460C003C */  c.lt.s $f0, $f12
/* 0BD844 8015CE04 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 0BD848 8015CE08 45000006 */  bc1f  .L8015CE24_ovl3
/* 0BD84C 8015CE0C 00000000 */   nop   
/* 0BD850 8015CE10 3C01800E */  lui   $at, 0x800e
/* 0BD854 8015CE14 46000487 */  neg.s $f18, $f0
/* 0BD858 8015CE18 00220821 */  addu  $at, $at, $v0
/* 0BD85C 8015CE1C 10000002 */  b     .L8015CE28_ovl3
/* 0BD860 8015CE20 E4326850 */   swc1  $f18, 0x6850($at)
.L8015CE24_ovl3:
/* 0BD864 8015CE24 E4206850 */  swc1  $f0, 0x6850($at)
.L8015CE28_ovl3:
/* 0BD868 8015CE28 8CA20000 */  lw    $v0, ($a1)
/* 0BD86C 8015CE2C 3C013F00 */  lui   $at, 0x3f00
/* 0BD870 8015CE30 00021080 */  sll   $v0, $v0, 2
/* 0BD874 8015CE34 00826821 */  addu  $t5, $a0, $v0
/* 0BD878 8015CE38 8DAE0000 */  lw    $t6, ($t5)
/* 0BD87C 8015CE3C 0062C821 */  addu  $t9, $v1, $v0
/* 0BD880 8015CE40 31CF0004 */  andi  $t7, $t6, 4
/* 0BD884 8015CE44 55E0000A */  bnezl $t7, .L8015CE70_ovl3
/* 0BD888 8015CE48 C7260000 */   lwc1  $f6, ($t9)
/* 0BD88C 8015CE4C 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 0BD890 8015CE50 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 0BD894 8015CE54 0062C021 */  addu  $t8, $v1, $v0
/* 0BD898 8015CE58 C7040000 */  lwc1  $f4, ($t8)
/* 0BD89C 8015CE5C 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BD8A0 8015CE60 00220821 */  addu  $at, $at, $v0
/* 0BD8A4 8015CE64 10000007 */  b     .L8015CE84_ovl3
/* 0BD8A8 8015CE68 E4243210 */   swc1  $f4, 0x3210($at)
/* 0BD8AC 8015CE6C C7260000 */  lwc1  $f6, ($t9)
.L8015CE70_ovl3:
/* 0BD8B0 8015CE70 44814000 */  mtc1  $at, $f8
/* 0BD8B4 8015CE74 3C01800E */  lui   $at, 0x800e
/* 0BD8B8 8015CE78 00220821 */  addu  $at, $at, $v0
/* 0BD8BC 8015CE7C 46083282 */  mul.s $f10, $f6, $f8
/* 0BD8C0 8015CE80 E42A3210 */  swc1  $f10, 0x3210($at)
.L8015CE84_ovl3:
/* 0BD8C4 8015CE84 8CA80000 */  lw    $t0, ($a1)
/* 0BD8C8 8015CE88 3C01800E */  lui   $at, 0x800e
/* 0BD8CC 8015CE8C 00084880 */  sll   $t1, $t0, 2
/* 0BD8D0 8015CE90 00290821 */  addu  $at, $at, $t1
/* 0BD8D4 8015CE94 E4223750 */  swc1  $f2, 0x3750($at)
/* 0BD8D8 8015CE98 8CA20000 */  lw    $v0, ($a1)
/* 0BD8DC 8015CE9C 3C01800E */  lui   $at, 0x800e
/* 0BD8E0 8015CEA0 00021080 */  sll   $v0, $v0, 2
/* 0BD8E4 8015CEA4 00625021 */  addu  $t2, $v1, $v0
/* 0BD8E8 8015CEA8 C5400000 */  lwc1  $f0, ($t2)
/* 0BD8EC 8015CEAC 00220821 */  addu  $at, $at, $v0
/* 0BD8F0 8015CEB0 460C003C */  c.lt.s $f0, $f12
/* 0BD8F4 8015CEB4 00000000 */  nop   
/* 0BD8F8 8015CEB8 45000006 */  bc1f  .L8015CED4_ovl3
/* 0BD8FC 8015CEBC 00000000 */   nop   
/* 0BD900 8015CEC0 3C01800E */  lui   $at, 0x800e
/* 0BD904 8015CEC4 46000407 */  neg.s $f16, $f0
/* 0BD908 8015CEC8 00220821 */  addu  $at, $at, $v0
/* 0BD90C 8015CECC 10000002 */  b     .L8015CED8_ovl3
/* 0BD910 8015CED0 E4303C90 */   swc1  $f16, 0x3c90($at)
.L8015CED4_ovl3:
/* 0BD914 8015CED4 E4203C90 */  swc1  $f0, 0x3c90($at)
.L8015CED8_ovl3:
/* 0BD918 8015CED8 0C058854 */  jal   func_80162150_ovl3
/* 0BD91C 8015CEDC 00000000 */   nop   
/* 0BD920 8015CEE0 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BD924 8015CEE4 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BD928 8015CEE8 3C048019 */  lui   $a0, %hi(D_80190BF4) # $a0, 0x8019
/* 0BD92C 8015CEEC 24840BF4 */  addiu $a0, %lo(D_80190BF4) # addiu $a0, $a0, 0xbf4
/* 0BD930 8015CEF0 0C0445EF */  jal   func_801117BC
/* 0BD934 8015CEF4 8D650000 */   lw    $a1, ($t3)
/* 0BD938 8015CEF8 0C044713 */  jal   func_80111C4C
/* 0BD93C 8015CEFC 00402025 */   move  $a0, $v0
/* 0BD940 8015CF00 10000023 */  b     .L8015CF90_ovl3
/* 0BD944 8015CF04 8FBF001C */   lw    $ra, 0x1c($sp)
.L8015CF08_ovl3:
/* 0BD948 8015CF08 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0BD94C 8015CF0C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0BD950 8015CF10 3C04800F */  lui   $a0, 0x800f
/* 0BD954 8015CF14 8D8D0000 */  lw    $t5, ($t4)
/* 0BD958 8015CF18 000D7080 */  sll   $t6, $t5, 2
/* 0BD95C 8015CF1C 008E2021 */  addu  $a0, $a0, $t6
/* 0BD960 8015CF20 0C0288B5 */  jal   func_800A22D4
/* 0BD964 8015CF24 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BD968 8015CF28 0C029D9E */  jal   play_sound
/* 0BD96C 8015CF2C 24040228 */   li    $a0, 552
/* 0BD970 8015CF30 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0BD974 8015CF34 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0BD978 8015CF38 3C01800E */  lui   $at, 0x800e
/* 0BD97C 8015CF3C 3C07800E */  lui   $a3, 0x800e
/* 0BD980 8015CF40 8DE20000 */  lw    $v0, ($t7)
/* 0BD984 8015CF44 24040001 */  li    $a0, 1
/* 0BD988 8015CF48 24050001 */  li    $a1, 1
/* 0BD98C 8015CF4C 00021080 */  sll   $v0, $v0, 2
/* 0BD990 8015CF50 00220821 */  addu  $at, $at, $v0
/* 0BD994 8015CF54 C4322790 */  lwc1  $f18, 0x2790($at)
/* 0BD998 8015CF58 3C01800E */  lui   $at, 0x800e
/* 0BD99C 8015CF5C 00220821 */  addu  $at, $at, $v0
/* 0BD9A0 8015CF60 C4242950 */  lwc1  $f4, 0x2950($at)
/* 0BD9A4 8015CF64 00E23821 */  addu  $a3, $a3, $v0
/* 0BD9A8 8015CF68 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 0BD9AC 8015CF6C 2406002D */  li    $a2, 45
/* 0BD9B0 8015CF70 E7B20010 */  swc1  $f18, 0x10($sp)
/* 0BD9B4 8015CF74 0C029FDD */  jal   func_800A7F74
/* 0BD9B8 8015CF78 E7A40014 */   swc1  $f4, 0x14($sp)
/* 0BD9BC 8015CF7C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BD9C0 8015CF80 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BD9C4 8015CF84 0C02C640 */  jal   func_800B1900
/* 0BD9C8 8015CF88 97040002 */   lhu   $a0, 2($t8)
/* 0BD9CC 8015CF8C 8FBF001C */  lw    $ra, 0x1c($sp)
.L8015CF90_ovl3:
/* 0BD9D0 8015CF90 27BD0020 */  addiu $sp, $sp, 0x20
/* 0BD9D4 8015CF94 03E00008 */  jr    $ra
/* 0BD9D8 8015CF98 00000000 */   nop   

.type func_8015CC84_ovl3, @function
.size func_8015CC84_ovl3, . - func_8015CC84_ovl3

glabel func_8015CF9C_ovl3
/* 0BD9DC 8015CF9C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0BD9E0 8015CFA0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0BD9E4 8015CFA4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BD9E8 8015CFA8 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0BD9EC 8015CFAC 8E070000 */  lw    $a3, ($s0)
/* 0BD9F0 8015CFB0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BD9F4 8015CFB4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0BD9F8 8015CFB8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0BD9FC 8015CFBC 8CEE0000 */  lw    $t6, ($a3)
/* 0BDA00 8015CFC0 3C01800F */  lui   $at, 0x800f
/* 0BDA04 8015CFC4 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 0BDA08 8015CFC8 000E7880 */  sll   $t7, $t6, 2
/* 0BDA0C 8015CFCC 002F0821 */  addu  $at, $at, $t7
/* 0BDA10 8015CFD0 AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0BDA14 8015CFD4 8CF80000 */  lw    $t8, ($a3)
/* 0BDA18 8015CFD8 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 0BDA1C 8015CFDC 0018C880 */  sll   $t9, $t8, 2
/* 0BDA20 8015CFE0 02394821 */  addu  $t1, $s1, $t9
/* 0BDA24 8015CFE4 0C058738 */  jal   func_80161CE0_ovl3
/* 0BDA28 8015CFE8 AD200000 */   sw    $zero, ($t1)
/* 0BDA2C 8015CFEC 8E0A0000 */  lw    $t2, ($s0)
/* 0BDA30 8015CFF0 3C01800F */  lui   $at, 0x800f
/* 0BDA34 8015CFF4 8D4B0000 */  lw    $t3, ($t2)
/* 0BDA38 8015CFF8 000B6080 */  sll   $t4, $t3, 2
/* 0BDA3C 8015CFFC 002C0821 */  addu  $at, $at, $t4
/* 0BDA40 8015D000 0C00B5B8 */  jal   sinf
/* 0BDA44 8015D004 C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0BDA48 8015D008 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0BDA4C 8015D00C 44812000 */  mtc1  $at, $f4
/* 0BDA50 8015D010 3C018019 */  lui   $at, %hi(D_80197074) # $at, 0x8019
/* 0BDA54 8015D014 C4267074 */  lwc1  $f6, %lo(D_80197074)($at)
/* 0BDA58 8015D018 8E0D0000 */  lw    $t5, ($s0)
/* 0BDA5C 8015D01C 3C12800D */  lui   $s2, %hi(D_800D7238) # $s2, 0x800d
/* 0BDA60 8015D020 46060202 */  mul.s $f8, $f0, $f6
/* 0BDA64 8015D024 26527238 */  addiu $s2, %lo(D_800D7238) # addiu $s2, $s2, 0x7238
/* 0BDA68 8015D028 3C01800F */  lui   $at, 0x800f
/* 0BDA6C 8015D02C 46082281 */  sub.s $f10, $f4, $f8
/* 0BDA70 8015D030 E64A0000 */  swc1  $f10, ($s2)
/* 0BDA74 8015D034 8DAE0000 */  lw    $t6, ($t5)
/* 0BDA78 8015D038 000E7880 */  sll   $t7, $t6, 2
/* 0BDA7C 8015D03C 002F0821 */  addu  $at, $at, $t7
/* 0BDA80 8015D040 0C00B5B8 */  jal   sinf
/* 0BDA84 8015D044 C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0BDA88 8015D048 3C01C282 */  li    $at, 0xC2820000 # -65.000000
/* 0BDA8C 8015D04C 44818000 */  mtc1  $at, $f16
/* 0BDA90 8015D050 8E180000 */  lw    $t8, ($s0)
/* 0BDA94 8015D054 3C04800E */  lui   $a0, 0x800e
/* 0BDA98 8015D058 46100482 */  mul.s $f18, $f0, $f16
/* 0BDA9C 8015D05C 8F190000 */  lw    $t9, ($t8)
/* 0BDAA0 8015D060 8E450000 */  lw    $a1, ($s2)
/* 0BDAA4 8015D064 00194880 */  sll   $t1, $t9, 2
/* 0BDAA8 8015D068 00892021 */  addu  $a0, $a0, $t1
/* 0BDAAC 8015D06C 8C841D10 */  lw    $a0, 0x1d10($a0)
/* 0BDAB0 8015D070 44069000 */  mfc1  $a2, $f18
/* 0BDAB4 8015D074 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BDAB8 8015D078 00000000 */   nop   
/* 0BDABC 8015D07C 8E070000 */  lw    $a3, ($s0)
/* 0BDAC0 8015D080 3C0A800B */  lui   $t2, %hi(func_800B4954) # $t2, 0x800b
/* 0BDAC4 8015D084 3C01800E */  lui   $at, 0x800e
/* 0BDAC8 8015D088 8CEB0000 */  lw    $t3, ($a3)
/* 0BDACC 8015D08C 254A4954 */  addiu $t2, %lo(func_800B4954) # addiu $t2, $t2, 0x4954
/* 0BDAD0 8015D090 3C0D8016 */  lui   $t5, %hi(D_8015D3C8) # $t5, 0x8016
/* 0BDAD4 8015D094 000B6080 */  sll   $t4, $t3, 2
/* 0BDAD8 8015D098 002C0821 */  addu  $at, $at, $t4
/* 0BDADC 8015D09C AC2AEF90 */  sw    $t2, -0x1070($at)
/* 0BDAE0 8015D0A0 8CEE0000 */  lw    $t6, ($a3)
/* 0BDAE4 8015D0A4 3C01800E */  lui   $at, 0x800e
/* 0BDAE8 8015D0A8 25ADD3C8 */  addiu $t5, %lo(D_8015D3C8) # addiu $t5, $t5, -0x2c38
/* 0BDAEC 8015D0AC 000E7880 */  sll   $t7, $t6, 2
/* 0BDAF0 8015D0B0 002F0821 */  addu  $at, $at, $t7
/* 0BDAF4 8015D0B4 AC2DF150 */  sw    $t5, -0xeb0($at)
/* 0BDAF8 8015D0B8 8CF90000 */  lw    $t9, ($a3)
/* 0BDAFC 8015D0BC 3C01800E */  lui   $at, 0x800e
/* 0BDB00 8015D0C0 3C188019 */  lui   $t8, %hi(D_80192CA4) # $t8, 0x8019
/* 0BDB04 8015D0C4 00194880 */  sll   $t1, $t9, 2
/* 0BDB08 8015D0C8 00290821 */  addu  $at, $at, $t1
/* 0BDB0C 8015D0CC 27182CA4 */  addiu $t8, %lo(D_80192CA4) # addiu $t8, $t8, 0x2ca4
/* 0BDB10 8015D0D0 AC380490 */  sw    $t8, 0x0490($at)
/* 0BDB14 8015D0D4 8CE30000 */  lw    $v1, ($a3)
/* 0BDB18 8015D0D8 3C0D801A */  lui   $t5, %hi(D_801982F8) # $t5, 0x801a
/* 0BDB1C 8015D0DC 3C0C8019 */  lui   $t4, %hi(D_80197F60) # $t4, 0x8019
/* 0BDB20 8015D0E0 2468FFFC */  addiu $t0, $v1, -4
/* 0BDB24 8015D0E4 00085080 */  sll   $t2, $t0, 2
/* 0BDB28 8015D0E8 01485023 */  subu  $t2, $t2, $t0
/* 0BDB2C 8015D0EC 000A50C0 */  sll   $t2, $t2, 3
/* 0BDB30 8015D0F0 01485023 */  subu  $t2, $t2, $t0
/* 0BDB34 8015D0F4 3C04800E */  lui   $a0, 0x800e
/* 0BDB38 8015D0F8 00035880 */  sll   $t3, $v1, 2
/* 0BDB3C 8015D0FC 008B2021 */  addu  $a0, $a0, $t3
/* 0BDB40 8015D100 000A5080 */  sll   $t2, $t2, 2
/* 0BDB44 8015D104 00087140 */  sll   $t6, $t0, 5
/* 0BDB48 8015D108 258C7F60 */  addiu $t4, %lo(D_80197F60) # addiu $t4, $t4, 0x7f60
/* 0BDB4C 8015D10C 25AD82F8 */  addiu $t5, %lo(D_801982F8) # addiu $t5, $t5, -0x7d08
/* 0BDB50 8015D110 01CD3021 */  addu  $a2, $t6, $t5
/* 0BDB54 8015D114 014C2821 */  addu  $a1, $t2, $t4
/* 0BDB58 8015D118 0C055192 */  jal   func_80154648_ovl3
/* 0BDB5C 8015D11C 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0BDB60 8015D120 24040001 */  li    $a0, 1
/* 0BDB64 8015D124 24050001 */  li    $a1, 1
/* 0BDB68 8015D128 0C02A08D */  jal   func_800A8234
/* 0BDB6C 8015D12C 2406002A */   li    $a2, 42
/* 0BDB70 8015D130 8E070000 */  lw    $a3, ($s0)
/* 0BDB74 8015D134 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BDB78 8015D138 44811000 */  mtc1  $at, $f2
/* 0BDB7C 8015D13C 8CEF0000 */  lw    $t7, ($a3)
/* 0BDB80 8015D140 3C01800F */  lui   $at, 0x800f
/* 0BDB84 8015D144 3C0B800E */  lui   $t3, 0x800e
/* 0BDB88 8015D148 000FC880 */  sll   $t9, $t7, 2
/* 0BDB8C 8015D14C 00390821 */  addu  $at, $at, $t9
/* 0BDB90 8015D150 AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0BDB94 8015D154 8CF80000 */  lw    $t8, ($a3)
/* 0BDB98 8015D158 3C0C800F */  lui   $t4, 0x800f
/* 0BDB9C 8015D15C 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 0BDBA0 8015D160 00184880 */  sll   $t1, $t8, 2
/* 0BDBA4 8015D164 01695821 */  addu  $t3, $t3, $t1
/* 0BDBA8 8015D168 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 0BDBAC 8015D16C 44814000 */  mtc1  $at, $f8
/* 0BDBB0 8015D170 000B5080 */  sll   $t2, $t3, 2
/* 0BDBB4 8015D174 018A6021 */  addu  $t4, $t4, $t2
/* 0BDBB8 8015D178 8D8C9720 */  lw    $t4, -0x68e0($t4)
/* 0BDBBC 8015D17C 448C3000 */  mtc1  $t4, $f6
/* 0BDBC0 8015D180 00000000 */  nop   
/* 0BDBC4 8015D184 46803120 */  cvt.s.w $f4, $f6
/* 0BDBC8 8015D188 46082282 */  mul.s $f10, $f4, $f8
/* 0BDBCC 8015D18C E64A0000 */  swc1  $f10, ($s2)
/* 0BDBD0 8015D190 C6400000 */  lwc1  $f0, ($s2)
/* 0BDBD4 8015D194 4602003C */  c.lt.s $f0, $f2
/* 0BDBD8 8015D198 00000000 */  nop   
/* 0BDBDC 8015D19C 45020004 */  bc1fl .L8015D1B0_ovl3
/* 0BDBE0 8015D1A0 3C014190 */   lui   $at, 0x4190
/* 0BDBE4 8015D1A4 1000000B */  b     .L8015D1D4_ovl3
/* 0BDBE8 8015D1A8 E6420000 */   swc1  $f2, ($s2)
/* 0BDBEC 8015D1AC 3C014190 */  li    $at, 0x41900000 # 18.000000
.L8015D1B0_ovl3:
/* 0BDBF0 8015D1B0 44818000 */  mtc1  $at, $f16
/* 0BDBF4 8015D1B4 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0BDBF8 8015D1B8 4600803C */  c.lt.s $f16, $f0
/* 0BDBFC 8015D1BC 00000000 */  nop   
/* 0BDC00 8015D1C0 45020005 */  bc1fl .L8015D1D8_ovl3
/* 0BDC04 8015D1C4 8CEE0000 */   lw    $t6, ($a3)
/* 0BDC08 8015D1C8 44819000 */  mtc1  $at, $f18
/* 0BDC0C 8015D1CC 00000000 */  nop   
/* 0BDC10 8015D1D0 E6520000 */  swc1  $f18, ($s2)
.L8015D1D4_ovl3:
/* 0BDC14 8015D1D4 8CEE0000 */  lw    $t6, ($a3)
.L8015D1D8_ovl3:
/* 0BDC18 8015D1D8 3C01800F */  lui   $at, 0x800f
/* 0BDC1C 8015D1DC 000E6880 */  sll   $t5, $t6, 2
/* 0BDC20 8015D1E0 002D0821 */  addu  $at, $at, $t5
/* 0BDC24 8015D1E4 0C00D604 */  jal   cosf
/* 0BDC28 8015D1E8 C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0BDC2C 8015D1EC 8E070000 */  lw    $a3, ($s0)
/* 0BDC30 8015D1F0 C6460000 */  lwc1  $f6, ($s2)
/* 0BDC34 8015D1F4 3C01800E */  lui   $at, 0x800e
/* 0BDC38 8015D1F8 8CE30000 */  lw    $v1, ($a3)
/* 0BDC3C 8015D1FC 46060102 */  mul.s $f4, $f0, $f6
/* 0BDC40 8015D200 44808000 */  mtc1  $zero, $f16
/* 0BDC44 8015D204 00031880 */  sll   $v1, $v1, 2
/* 0BDC48 8015D208 00230821 */  addu  $at, $at, $v1
/* 0BDC4C 8015D20C C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0BDC50 8015D210 3C01800E */  lui   $at, 0x800e
/* 0BDC54 8015D214 00230821 */  addu  $at, $at, $v1
/* 0BDC58 8015D218 46082282 */  mul.s $f10, $f4, $f8
/* 0BDC5C 8015D21C E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0BDC60 8015D220 8CEF0000 */  lw    $t7, ($a3)
/* 0BDC64 8015D224 3C01800E */  lui   $at, 0x800e
/* 0BDC68 8015D228 000FC880 */  sll   $t9, $t7, 2
/* 0BDC6C 8015D22C 00390821 */  addu  $at, $at, $t9
/* 0BDC70 8015D230 E4306690 */  swc1  $f16, 0x6690($at)
/* 0BDC74 8015D234 8CF80000 */  lw    $t8, ($a3)
/* 0BDC78 8015D238 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0BDC7C 8015D23C 44819000 */  mtc1  $at, $f18
/* 0BDC80 8015D240 3C01800E */  lui   $at, 0x800e
/* 0BDC84 8015D244 00184880 */  sll   $t1, $t8, 2
/* 0BDC88 8015D248 00290821 */  addu  $at, $at, $t1
/* 0BDC8C 8015D24C E4326850 */  swc1  $f18, 0x6850($at)
/* 0BDC90 8015D250 8CEB0000 */  lw    $t3, ($a3)
/* 0BDC94 8015D254 3C01800F */  lui   $at, 0x800f
/* 0BDC98 8015D258 000B5080 */  sll   $t2, $t3, 2
/* 0BDC9C 8015D25C 002A0821 */  addu  $at, $at, $t2
/* 0BDCA0 8015D260 0C00B5B8 */  jal   sinf
/* 0BDCA4 8015D264 C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0BDCA8 8015D268 C6460000 */  lwc1  $f6, ($s2)
/* 0BDCAC 8015D26C 8E070000 */  lw    $a3, ($s0)
/* 0BDCB0 8015D270 3C018019 */  lui   $at, %hi(D_80197078) # $at, 0x8019
/* 0BDCB4 8015D274 46060102 */  mul.s $f4, $f0, $f6
/* 0BDCB8 8015D278 8CEC0000 */  lw    $t4, ($a3)
/* 0BDCBC 8015D27C C4227078 */  lwc1  $f2, %lo(D_80197078)($at)
/* 0BDCC0 8015D280 3C01800E */  lui   $at, 0x800e
/* 0BDCC4 8015D284 000C7080 */  sll   $t6, $t4, 2
/* 0BDCC8 8015D288 002E0821 */  addu  $at, $at, $t6
/* 0BDCCC 8015D28C 3C040002 */  lui   $a0, (0x00020030 >> 16) # lui $a0, 2
/* 0BDCD0 8015D290 E4243210 */  swc1  $f4, 0x3210($at)
/* 0BDCD4 8015D294 8CED0000 */  lw    $t5, ($a3)
/* 0BDCD8 8015D298 3C018019 */  lui   $at, %hi(D_8019707C) # $at, 0x8019
/* 0BDCDC 8015D29C C428707C */  lwc1  $f8, %lo(D_8019707C)($at)
/* 0BDCE0 8015D2A0 3C01800E */  lui   $at, 0x800e
/* 0BDCE4 8015D2A4 000D7880 */  sll   $t7, $t5, 2
/* 0BDCE8 8015D2A8 002F0821 */  addu  $at, $at, $t7
/* 0BDCEC 8015D2AC E4283750 */  swc1  $f8, 0x3750($at)
/* 0BDCF0 8015D2B0 8CF90000 */  lw    $t9, ($a3)
/* 0BDCF4 8015D2B4 3C0141C0 */  li    $at, 0x41C00000 # 24.000000
/* 0BDCF8 8015D2B8 44815000 */  mtc1  $at, $f10
/* 0BDCFC 8015D2BC 3C01800E */  lui   $at, 0x800e
/* 0BDD00 8015D2C0 0019C080 */  sll   $t8, $t9, 2
/* 0BDD04 8015D2C4 00380821 */  addu  $at, $at, $t8
/* 0BDD08 8015D2C8 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 0BDD0C 8015D2CC 8CE90000 */  lw    $t1, ($a3)
/* 0BDD10 8015D2D0 3C01800E */  lui   $at, 0x800e
/* 0BDD14 8015D2D4 34840030 */  ori   $a0, (0x00020030 & 0xFFFF) # ori $a0, $a0, 0x30
/* 0BDD18 8015D2D8 00095880 */  sll   $t3, $t1, 2
/* 0BDD1C 8015D2DC 002B0821 */  addu  $at, $at, $t3
/* 0BDD20 8015D2E0 E4224550 */  swc1  $f2, 0x4550($at)
/* 0BDD24 8015D2E4 8CEA0000 */  lw    $t2, ($a3)
/* 0BDD28 8015D2E8 3C01800E */  lui   $at, 0x800e
/* 0BDD2C 8015D2EC 24050021 */  li    $a1, 33
/* 0BDD30 8015D2F0 000A6080 */  sll   $t4, $t2, 2
/* 0BDD34 8015D2F4 002C0821 */  addu  $at, $at, $t4
/* 0BDD38 8015D2F8 E4224710 */  swc1  $f2, 0x4710($at)
/* 0BDD3C 8015D2FC 8CEE0000 */  lw    $t6, ($a3)
/* 0BDD40 8015D300 3C01800E */  lui   $at, 0x800e
/* 0BDD44 8015D304 24060010 */  li    $a2, 16
/* 0BDD48 8015D308 000E6880 */  sll   $t5, $t6, 2
/* 0BDD4C 8015D30C 002D0821 */  addu  $at, $at, $t5
/* 0BDD50 8015D310 0C02A619 */  jal   func_800A9864
/* 0BDD54 8015D314 E42248D0 */   swc1  $f2, 0x48d0($at)
/* 0BDD58 8015D318 8E0F0000 */  lw    $t7, ($s0)
/* 0BDD5C 8015D31C 8DE30000 */  lw    $v1, ($t7)
/* 0BDD60 8015D320 00031880 */  sll   $v1, $v1, 2
/* 0BDD64 8015D324 0223C821 */  addu  $t9, $s1, $v1
/* 0BDD68 8015D328 8F380000 */  lw    $t8, ($t9)
/* 0BDD6C 8015D32C 1700000A */  bnez  $t8, .L8015D358_ovl3
/* 0BDD70 8015D330 00000000 */   nop   
.L8015D334_ovl3:
/* 0BDD74 8015D334 0C002DAF */  jal   finish_current_thread
/* 0BDD78 8015D338 24040001 */   li    $a0, 1
/* 0BDD7C 8015D33C 8E090000 */  lw    $t1, ($s0)
/* 0BDD80 8015D340 8D230000 */  lw    $v1, ($t1)
/* 0BDD84 8015D344 00031880 */  sll   $v1, $v1, 2
/* 0BDD88 8015D348 02235821 */  addu  $t3, $s1, $v1
/* 0BDD8C 8015D34C 8D6A0000 */  lw    $t2, ($t3)
/* 0BDD90 8015D350 1140FFF8 */  beqz  $t2, .L8015D334_ovl3
/* 0BDD94 8015D354 00000000 */   nop   
.L8015D358_ovl3:
/* 0BDD98 8015D358 3C01800E */  lui   $at, 0x800e
/* 0BDD9C 8015D35C 00230821 */  addu  $at, $at, $v1
/* 0BDDA0 8015D360 240CFFFF */  li    $t4, -1
/* 0BDDA4 8015D364 3C040002 */  lui   $a0, (0x00020047 >> 16) # lui $a0, 2
/* 0BDDA8 8015D368 AC2C0D50 */  sw    $t4, 0xd50($at)
/* 0BDDAC 8015D36C 0C02A5D8 */  jal   func_800A9760
/* 0BDDB0 8015D370 34840047 */   ori   $a0, (0x00020047 & 0xFFFF) # ori $a0, $a0, 0x47
/* 0BDDB4 8015D374 27B10038 */  addiu $s1, $sp, 0x38
/* 0BDDB8 8015D378 27B2003C */  addiu $s2, $sp, 0x3c
/* 0BDDBC 8015D37C 02403025 */  move  $a2, $s2
/* 0BDDC0 8015D380 02202825 */  move  $a1, $s1
/* 0BDDC4 8015D384 0C029DFA */  jal   func_800A77E8
/* 0BDDC8 8015D388 240400B7 */   li    $a0, 183
/* 0BDDCC 8015D38C 3C040002 */  lui   $a0, (0x000202A0 >> 16) # lui $a0, 2
/* 0BDDD0 8015D390 0C02A855 */  jal   func_800AA154
/* 0BDDD4 8015D394 348402A0 */   ori   $a0, (0x000202A0 & 0xFFFF) # ori $a0, $a0, 0x2a0
/* 0BDDD8 8015D398 02202025 */  move  $a0, $s1
/* 0BDDDC 8015D39C 0C029E1C */  jal   func_800A7870
/* 0BDDE0 8015D3A0 02402825 */   move  $a1, $s2
/* 0BDDE4 8015D3A4 8E0E0000 */  lw    $t6, ($s0)
/* 0BDDE8 8015D3A8 0C02C640 */  jal   func_800B1900
/* 0BDDEC 8015D3AC 95C40002 */   lhu   $a0, 2($t6)
/* 0BDDF0 8015D3B0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BDDF4 8015D3B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BDDF8 8015D3B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0BDDFC 8015D3BC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0BDE00 8015D3C0 03E00008 */  jr    $ra
/* 0BDE04 8015D3C4 27BD0040 */   addiu $sp, $sp, 0x40

.type func_8015CF9C_ovl3, @function
.size func_8015CF9C_ovl3, . - func_8015CF9C_ovl3

glabel func_8015D3C8_ovl3
/* 0BDE08 8015D3C8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BDE0C 8015D3CC AFB00018 */  sw    $s0, 0x18($sp)
/* 0BDE10 8015D3D0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BDE14 8015D3D4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0BDE18 8015D3D8 8E0E0000 */  lw    $t6, ($s0)
/* 0BDE1C 8015D3DC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BDE20 8015D3E0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0BDE24 8015D3E4 8DC30000 */  lw    $v1, ($t6)
/* 0BDE28 8015D3E8 3C0F800F */  lui   $t7, 0x800f
/* 0BDE2C 8015D3EC 00031880 */  sll   $v1, $v1, 2
/* 0BDE30 8015D3F0 01E37821 */  addu  $t7, $t7, $v1
/* 0BDE34 8015D3F4 8DEF98E0 */  lw    $t7, -0x6720($t7)
/* 0BDE38 8015D3F8 15E000C5 */  bnez  $t7, .L8015D710_ovl3
/* 0BDE3C 8015D3FC 00000000 */   nop   
/* 0BDE40 8015D400 0C02CC56 */  jal   func_800B3158
/* 0BDE44 8015D404 00000000 */   nop   
/* 0BDE48 8015D408 5440000E */  bnezl $v0, .L8015D444_ovl3
/* 0BDE4C 8015D40C 8E020000 */   lw    $v0, ($s0)
/* 0BDE50 8015D410 8E180000 */  lw    $t8, ($s0)
/* 0BDE54 8015D414 3C04800F */  lui   $a0, 0x800f
/* 0BDE58 8015D418 8F190000 */  lw    $t9, ($t8)
/* 0BDE5C 8015D41C 00194880 */  sll   $t1, $t9, 2
/* 0BDE60 8015D420 00892021 */  addu  $a0, $a0, $t1
/* 0BDE64 8015D424 0C0288B5 */  jal   func_800A22D4
/* 0BDE68 8015D428 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BDE6C 8015D42C 8E0A0000 */  lw    $t2, ($s0)
/* 0BDE70 8015D430 0C02C640 */  jal   func_800B1900
/* 0BDE74 8015D434 95440002 */   lhu   $a0, 2($t2)
/* 0BDE78 8015D438 100000D5 */  b     .L8015D790_ovl3
/* 0BDE7C 8015D43C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0BDE80 8015D440 8E020000 */  lw    $v0, ($s0)
.L8015D444_ovl3:
/* 0BDE84 8015D444 3C01800E */  lui   $at, 0x800e
/* 0BDE88 8015D448 44803000 */  mtc1  $zero, $f6
/* 0BDE8C 8015D44C 8C430000 */  lw    $v1, ($v0)
/* 0BDE90 8015D450 00031880 */  sll   $v1, $v1, 2
/* 0BDE94 8015D454 00230821 */  addu  $at, $at, $v1
/* 0BDE98 8015D458 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BDE9C 8015D45C 3C01800E */  lui   $at, 0x800e
/* 0BDEA0 8015D460 00230821 */  addu  $at, $at, $v1
/* 0BDEA4 8015D464 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BDEA8 8015D468 8C430000 */  lw    $v1, ($v0)
/* 0BDEAC 8015D46C 3C01800E */  lui   $at, 0x800e
/* 0BDEB0 8015D470 00031880 */  sll   $v1, $v1, 2
/* 0BDEB4 8015D474 00230821 */  addu  $at, $at, $v1
/* 0BDEB8 8015D478 C42064D0 */  lwc1  $f0, 0x64d0($at)
/* 0BDEBC 8015D47C 3C01800E */  lui   $at, 0x800e
/* 0BDEC0 8015D480 00230821 */  addu  $at, $at, $v1
/* 0BDEC4 8015D484 4606003C */  c.lt.s $f0, $f6
/* 0BDEC8 8015D488 00000000 */  nop   
/* 0BDECC 8015D48C 45020004 */  bc1fl .L8015D4A0_ovl3
/* 0BDED0 8015D490 46000386 */   mov.s $f14, $f0
/* 0BDED4 8015D494 10000002 */  b     .L8015D4A0_ovl3
/* 0BDED8 8015D498 46000387 */   neg.s $f14, $f0
/* 0BDEDC 8015D49C 46000386 */  mov.s $f14, $f0
.L8015D4A0_ovl3:
/* 0BDEE0 8015D4A0 0C0061C3 */  jal   atan2f
/* 0BDEE4 8015D4A4 C42C3210 */   lwc1  $f12, 0x3210($at)
/* 0BDEE8 8015D4A8 8E020000 */  lw    $v0, ($s0)
/* 0BDEEC 8015D4AC 46000207 */  neg.s $f8, $f0
/* 0BDEF0 8015D4B0 3C01800E */  lui   $at, 0x800e
/* 0BDEF4 8015D4B4 8C4B0000 */  lw    $t3, ($v0)
/* 0BDEF8 8015D4B8 3C0D800E */  lui   $t5, 0x800e
/* 0BDEFC 8015D4BC 3C0E800F */  lui   $t6, 0x800f
/* 0BDF00 8015D4C0 000B6080 */  sll   $t4, $t3, 2
/* 0BDF04 8015D4C4 002C0821 */  addu  $at, $at, $t4
/* 0BDF08 8015D4C8 E4284010 */  swc1  $f8, 0x4010($at)
/* 0BDF0C 8015D4CC 8C480000 */  lw    $t0, ($v0)
/* 0BDF10 8015D4D0 00081880 */  sll   $v1, $t0, 2
/* 0BDF14 8015D4D4 01A36821 */  addu  $t5, $t5, $v1
/* 0BDF18 8015D4D8 8DAD6310 */  lw    $t5, 0x6310($t5)
/* 0BDF1C 8015D4DC 01C37021 */  addu  $t6, $t6, $v1
/* 0BDF20 8015D4E0 55A00056 */  bnezl $t5, .L8015D63C_ovl3
/* 0BDF24 8015D4E4 8E020000 */   lw    $v0, ($s0)
/* 0BDF28 8015D4E8 8DCE83E0 */  lw    $t6, -0x7c20($t6)
/* 0BDF2C 8015D4EC 2502FFFC */  addiu $v0, $t0, -4
/* 0BDF30 8015D4F0 00027880 */  sll   $t7, $v0, 2
/* 0BDF34 8015D4F4 15C00050 */  bnez  $t6, .L8015D638_ovl3
/* 0BDF38 8015D4F8 01E27823 */   subu  $t7, $t7, $v0
/* 0BDF3C 8015D4FC 000F78C0 */  sll   $t7, $t7, 3
/* 0BDF40 8015D500 01E27823 */  subu  $t7, $t7, $v0
/* 0BDF44 8015D504 3C188019 */  lui   $t8, %hi(D_80197F60) # $t8, 0x8019
/* 0BDF48 8015D508 3C09801A */  lui   $t1, %hi(D_801982F8) # $t1, 0x801a
/* 0BDF4C 8015D50C 252982F8 */  addiu $t1, %lo(D_801982F8) # addiu $t1, $t1, -0x7d08
/* 0BDF50 8015D510 27187F60 */  addiu $t8, %lo(D_80197F60) # addiu $t8, $t8, 0x7f60
/* 0BDF54 8015D514 000F7880 */  sll   $t7, $t7, 2
/* 0BDF58 8015D518 0002C940 */  sll   $t9, $v0, 5
/* 0BDF5C 8015D51C 03292821 */  addu  $a1, $t9, $t1
/* 0BDF60 8015D520 0C055543 */  jal   func_8015550C_ovl3
/* 0BDF64 8015D524 01F82021 */   addu  $a0, $t7, $t8
/* 0BDF68 8015D528 54400044 */  bnezl $v0, .L8015D63C_ovl3
/* 0BDF6C 8015D52C 8E020000 */   lw    $v0, ($s0)
/* 0BDF70 8015D530 8E0A0000 */  lw    $t2, ($s0)
/* 0BDF74 8015D534 3C0B800F */  lui   $t3, 0x800f
/* 0BDF78 8015D538 3C02800F */  lui   $v0, 0x800f
/* 0BDF7C 8015D53C 8D430000 */  lw    $v1, ($t2)
/* 0BDF80 8015D540 3C01800E */  lui   $at, 0x800e
/* 0BDF84 8015D544 00031880 */  sll   $v1, $v1, 2
/* 0BDF88 8015D548 01635821 */  addu  $t3, $t3, $v1
/* 0BDF8C 8015D54C 8D6B8920 */  lw    $t3, -0x76e0($t3)
/* 0BDF90 8015D550 00431021 */  addu  $v0, $v0, $v1
/* 0BDF94 8015D554 55600039 */  bnezl $t3, .L8015D63C_ovl3
/* 0BDF98 8015D558 8E020000 */   lw    $v0, ($s0)
/* 0BDF9C 8015D55C 8C42A520 */  lw    $v0, -0x5ae0($v0)
/* 0BDFA0 8015D560 00230821 */  addu  $at, $at, $v1
/* 0BDFA4 8015D564 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0BDFA8 8015D568 8C4C004C */  lw    $t4, 0x4c($v0)
/* 0BDFAC 8015D56C 3C01800E */  lui   $at, 0x800e
/* 0BDFB0 8015D570 E58A0004 */  swc1  $f10, 4($t4)
/* 0BDFB4 8015D574 8E0D0000 */  lw    $t5, ($s0)
/* 0BDFB8 8015D578 8C58004C */  lw    $t8, 0x4c($v0)
/* 0BDFBC 8015D57C 8DAE0000 */  lw    $t6, ($t5)
/* 0BDFC0 8015D580 000E7880 */  sll   $t7, $t6, 2
/* 0BDFC4 8015D584 002F0821 */  addu  $at, $at, $t7
/* 0BDFC8 8015D588 C4302790 */  lwc1  $f16, 0x2790($at)
/* 0BDFCC 8015D58C 3C01800E */  lui   $at, 0x800e
/* 0BDFD0 8015D590 E7100008 */  swc1  $f16, 8($t8)
/* 0BDFD4 8015D594 8E190000 */  lw    $t9, ($s0)
/* 0BDFD8 8015D598 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0BDFDC 8015D59C 8F290000 */  lw    $t1, ($t9)
/* 0BDFE0 8015D5A0 00095080 */  sll   $t2, $t1, 2
/* 0BDFE4 8015D5A4 002A0821 */  addu  $at, $at, $t2
/* 0BDFE8 8015D5A8 C4322950 */  lwc1  $f18, 0x2950($at)
/* 0BDFEC 8015D5AC 3C01800E */  lui   $at, 0x800e
/* 0BDFF0 8015D5B0 E572000C */  swc1  $f18, 0xc($t3)
/* 0BDFF4 8015D5B4 8E0C0000 */  lw    $t4, ($s0)
/* 0BDFF8 8015D5B8 8C4F004C */  lw    $t7, 0x4c($v0)
/* 0BDFFC 8015D5BC 8D8D0000 */  lw    $t5, ($t4)
/* 0BE000 8015D5C0 000D7080 */  sll   $t6, $t5, 2
/* 0BE004 8015D5C4 002E0821 */  addu  $at, $at, $t6
/* 0BE008 8015D5C8 C4244010 */  lwc1  $f4, 0x4010($at)
/* 0BE00C 8015D5CC 3C01800E */  lui   $at, 0x800e
/* 0BE010 8015D5D0 E5E40010 */  swc1  $f4, 0x10($t7)
/* 0BE014 8015D5D4 8E180000 */  lw    $t8, ($s0)
/* 0BE018 8015D5D8 8C4A004C */  lw    $t2, 0x4c($v0)
/* 0BE01C 8015D5DC 8F190000 */  lw    $t9, ($t8)
/* 0BE020 8015D5E0 00194880 */  sll   $t1, $t9, 2
/* 0BE024 8015D5E4 00290821 */  addu  $at, $at, $t1
/* 0BE028 8015D5E8 C42641D0 */  lwc1  $f6, 0x41d0($at)
/* 0BE02C 8015D5EC 3C01800E */  lui   $at, 0x800e
/* 0BE030 8015D5F0 E5460014 */  swc1  $f6, 0x14($t2)
/* 0BE034 8015D5F4 8E0B0000 */  lw    $t3, ($s0)
/* 0BE038 8015D5F8 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0BE03C 8015D5FC 8D6C0000 */  lw    $t4, ($t3)
/* 0BE040 8015D600 000C6880 */  sll   $t5, $t4, 2
/* 0BE044 8015D604 002D0821 */  addu  $at, $at, $t5
/* 0BE048 8015D608 C4284390 */  lwc1  $f8, 0x4390($at)
/* 0BE04C 8015D60C 0C058854 */  jal   func_80162150_ovl3
/* 0BE050 8015D610 E5C80018 */   swc1  $f8, 0x18($t6)
/* 0BE054 8015D614 8E0F0000 */  lw    $t7, ($s0)
/* 0BE058 8015D618 3C048019 */  lui   $a0, %hi(D_80190C38) # $a0, 0x8019
/* 0BE05C 8015D61C 24840C38 */  addiu $a0, %lo(D_80190C38) # addiu $a0, $a0, 0xc38
/* 0BE060 8015D620 0C0445EF */  jal   func_801117BC
/* 0BE064 8015D624 8DE50000 */   lw    $a1, ($t7)
/* 0BE068 8015D628 0C044713 */  jal   func_80111C4C
/* 0BE06C 8015D62C 00402025 */   move  $a0, $v0
/* 0BE070 8015D630 10000057 */  b     .L8015D790_ovl3
/* 0BE074 8015D634 8FBF001C */   lw    $ra, 0x1c($sp)
.L8015D638_ovl3:
/* 0BE078 8015D638 8E020000 */  lw    $v0, ($s0)
.L8015D63C_ovl3:
/* 0BE07C 8015D63C 44800000 */  mtc1  $zero, $f0
/* 0BE080 8015D640 3C05800E */  lui   $a1, %hi(D_800E6690) # $a1, 0x800e
/* 0BE084 8015D644 8C580000 */  lw    $t8, ($v0)
/* 0BE088 8015D648 24A56690 */  addiu $a1, %lo(D_800E6690) # addiu $a1, $a1, 0x6690
/* 0BE08C 8015D64C 3C018019 */  lui   $at, %hi(D_80197080) # $at, 0x8019
/* 0BE090 8015D650 0018C880 */  sll   $t9, $t8, 2
/* 0BE094 8015D654 C4227080 */  lwc1  $f2, %lo(D_80197080)($at)
/* 0BE098 8015D658 00B94821 */  addu  $t1, $a1, $t9
/* 0BE09C 8015D65C E5200000 */  swc1  $f0, ($t1)
/* 0BE0A0 8015D660 8C430000 */  lw    $v1, ($v0)
/* 0BE0A4 8015D664 3C01800E */  lui   $at, 0x800e
/* 0BE0A8 8015D668 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0BE0AC 8015D66C 00031880 */  sll   $v1, $v1, 2
/* 0BE0B0 8015D670 00A35021 */  addu  $t2, $a1, $v1
/* 0BE0B4 8015D674 C54A0000 */  lwc1  $f10, ($t2)
/* 0BE0B8 8015D678 00230821 */  addu  $at, $at, $v1
/* 0BE0BC 8015D67C 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0BE0C0 8015D680 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0BE0C4 8015D684 8C4B0000 */  lw    $t3, ($v0)
/* 0BE0C8 8015D688 3C01800E */  lui   $at, 0x800e
/* 0BE0CC 8015D68C 240A0001 */  li    $t2, 1
/* 0BE0D0 8015D690 000B6080 */  sll   $t4, $t3, 2
/* 0BE0D4 8015D694 002C0821 */  addu  $at, $at, $t4
/* 0BE0D8 8015D698 E4226850 */  swc1  $f2, 0x6850($at)
/* 0BE0DC 8015D69C 8C4D0000 */  lw    $t5, ($v0)
/* 0BE0E0 8015D6A0 3C01800E */  lui   $at, 0x800e
/* 0BE0E4 8015D6A4 3C04800F */  lui   $a0, 0x800f
/* 0BE0E8 8015D6A8 000D7080 */  sll   $t6, $t5, 2
/* 0BE0EC 8015D6AC 00CE7821 */  addu  $t7, $a2, $t6
/* 0BE0F0 8015D6B0 E5E00000 */  swc1  $f0, ($t7)
/* 0BE0F4 8015D6B4 8C430000 */  lw    $v1, ($v0)
/* 0BE0F8 8015D6B8 00031880 */  sll   $v1, $v1, 2
/* 0BE0FC 8015D6BC 00C3C021 */  addu  $t8, $a2, $v1
/* 0BE100 8015D6C0 C7100000 */  lwc1  $f16, ($t8)
/* 0BE104 8015D6C4 00230821 */  addu  $at, $at, $v1
/* 0BE108 8015D6C8 E4303210 */  swc1  $f16, 0x3210($at)
/* 0BE10C 8015D6CC 8C590000 */  lw    $t9, ($v0)
/* 0BE110 8015D6D0 3C01800E */  lui   $at, 0x800e
/* 0BE114 8015D6D4 00194880 */  sll   $t1, $t9, 2
/* 0BE118 8015D6D8 00290821 */  addu  $at, $at, $t1
/* 0BE11C 8015D6DC E4223C90 */  swc1  $f2, 0x3c90($at)
/* 0BE120 8015D6E0 8C4B0000 */  lw    $t3, ($v0)
/* 0BE124 8015D6E4 3C01800F */  lui   $at, 0x800f
/* 0BE128 8015D6E8 000B6080 */  sll   $t4, $t3, 2
/* 0BE12C 8015D6EC 002C0821 */  addu  $at, $at, $t4
/* 0BE130 8015D6F0 AC2A98E0 */  sw    $t2, -0x6720($at)
/* 0BE134 8015D6F4 8C4D0000 */  lw    $t5, ($v0)
/* 0BE138 8015D6F8 000D7080 */  sll   $t6, $t5, 2
/* 0BE13C 8015D6FC 008E2021 */  addu  $a0, $a0, $t6
/* 0BE140 8015D700 0C0288B5 */  jal   func_800A22D4
/* 0BE144 8015D704 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0BE148 8015D708 10000021 */  b     .L8015D790_ovl3
/* 0BE14C 8015D70C 8FBF001C */   lw    $ra, 0x1c($sp)
.L8015D710_ovl3:
/* 0BE150 8015D710 3C0F800E */  lui   $t7, 0x800e
/* 0BE154 8015D714 01E37821 */  addu  $t7, $t7, $v1
/* 0BE158 8015D718 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 0BE15C 8015D71C 3C048019 */  lui   $a0, %hi(D_801915B4) # $a0, 0x8019
/* 0BE160 8015D720 248415B4 */  addiu $a0, %lo(D_801915B4) # addiu $a0, $a0, 0x15b4
/* 0BE164 8015D724 8DF80004 */  lw    $t8, 4($t7)
/* 0BE168 8015D728 00002825 */  move  $a1, $zero
/* 0BE16C 8015D72C C7000040 */  lwc1  $f0, 0x40($t8)
/* 0BE170 8015D730 44060000 */  mfc1  $a2, $f0
/* 0BE174 8015D734 0C05A153 */  jal   func_8016854C_ovl3
/* 0BE178 8015D738 E7A00024 */   swc1  $f0, 0x24($sp)
/* 0BE17C 8015D73C C7A00024 */  lwc1  $f0, 0x24($sp)
/* 0BE180 8015D740 3C048019 */  lui   $a0, %hi(D_801943A8) # $a0, 0x8019
/* 0BE184 8015D744 3C05801A */  lui   $a1, %hi(D_80198438) # $a1, 0x801a
/* 0BE188 8015D748 44070000 */  mfc1  $a3, $f0
/* 0BE18C 8015D74C 24A58438 */  addiu $a1, %lo(D_80198438) # addiu $a1, $a1, -0x7bc8
/* 0BE190 8015D750 248443A8 */  addiu $a0, %lo(D_801943A8) # addiu $a0, $a0, 0x43a8
/* 0BE194 8015D754 0C05481C */  jal   func_80152070_ovl3
/* 0BE198 8015D758 2406000B */   li    $a2, 11
/* 0BE19C 8015D75C 8E190000 */  lw    $t9, ($s0)
/* 0BE1A0 8015D760 3C0A801A */  lui   $t2, %hi(D_801982F8) # $t2, 0x801a
/* 0BE1A4 8015D764 254A82F8 */  addiu $t2, %lo(D_801982F8) # addiu $t2, $t2, -0x7d08
/* 0BE1A8 8015D768 8F280000 */  lw    $t0, ($t9)
/* 0BE1AC 8015D76C 3C058019 */  lui   $a1, %hi(D_80194458) # $a1, 0x8019
/* 0BE1B0 8015D770 24A54458 */  addiu $a1, %lo(D_80194458) # addiu $a1, $a1, 0x4458
/* 0BE1B4 8015D774 00084940 */  sll   $t1, $t0, 5
/* 0BE1B8 8015D778 252BFF80 */  addiu $t3, $t1, -0x80
/* 0BE1BC 8015D77C 016A2021 */  addu  $a0, $t3, $t2
/* 0BE1C0 8015D780 00003025 */  move  $a2, $zero
/* 0BE1C4 8015D784 0C055754 */  jal   func_80155D50_ovl3
/* 0BE1C8 8015D788 01003825 */   move  $a3, $t0
/* 0BE1CC 8015D78C 8FBF001C */  lw    $ra, 0x1c($sp)
.L8015D790_ovl3:
/* 0BE1D0 8015D790 8FB00018 */  lw    $s0, 0x18($sp)
/* 0BE1D4 8015D794 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BE1D8 8015D798 03E00008 */  jr    $ra
/* 0BE1DC 8015D79C 00000000 */   nop   

.type func_8015D3C8_ovl3, @function
.size func_8015D3C8_ovl3, . - func_8015D3C8_ovl3

glabel func_8015D7A0_ovl3
/* 0BE1E0 8015D7A0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BE1E4 8015D7A4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BE1E8 8015D7A8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0BE1EC 8015D7AC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0BE1F0 8015D7B0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BE1F4 8015D7B4 8E300000 */  lw    $s0, ($s1)
/* 0BE1F8 8015D7B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BE1FC 8015D7BC 3C01800F */  lui   $at, 0x800f
/* 0BE200 8015D7C0 8E0E0000 */  lw    $t6, ($s0)
/* 0BE204 8015D7C4 24180001 */  li    $t8, 1
/* 0BE208 8015D7C8 000E7880 */  sll   $t7, $t6, 2
/* 0BE20C 8015D7CC 002F0821 */  addu  $at, $at, $t7
/* 0BE210 8015D7D0 AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0BE214 8015D7D4 8E190000 */  lw    $t9, ($s0)
/* 0BE218 8015D7D8 3C01800E */  lui   $at, 0x800e
/* 0BE21C 8015D7DC 00194080 */  sll   $t0, $t9, 2
/* 0BE220 8015D7E0 00280821 */  addu  $at, $at, $t0
/* 0BE224 8015D7E4 0C058738 */  jal   func_80161CE0_ovl3
/* 0BE228 8015D7E8 AC380650 */   sw    $t8, 0x650($at)
/* 0BE22C 8015D7EC 8E290000 */  lw    $t1, ($s1)
/* 0BE230 8015D7F0 3C0C800F */  lui   $t4, 0x800f
/* 0BE234 8015D7F4 24010001 */  li    $at, 1
/* 0BE238 8015D7F8 8D2A0000 */  lw    $t2, ($t1)
/* 0BE23C 8015D7FC 3C02800D */  lui   $v0, %hi(D_800D7238) # $v0, 0x800d
/* 0BE240 8015D800 24427238 */  addiu $v0, %lo(D_800D7238) # addiu $v0, $v0, 0x7238
/* 0BE244 8015D804 000A5880 */  sll   $t3, $t2, 2
/* 0BE248 8015D808 018B6021 */  addu  $t4, $t4, $t3
/* 0BE24C 8015D80C 8D8CC2E0 */  lw    $t4, -0x3d20($t4)
/* 0BE250 8015D810 3C03800D */  lui   $v1, %hi(D_800D723C) # $v1, 0x800d
/* 0BE254 8015D814 00002025 */  move  $a0, $zero
/* 0BE258 8015D818 15810009 */  bne   $t4, $at, .L8015D840_ovl3
/* 0BE25C 8015D81C 3C0141F0 */   li    $at, 0x41F00000 # 30.000000
/* 0BE260 8015D820 44812000 */  mtc1  $at, $f4
/* 0BE264 8015D824 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0BE268 8015D828 44813000 */  mtc1  $at, $f6
/* 0BE26C 8015D82C 2463723C */  addiu $v1, %lo(D_800D723C) # addiu $v1, $v1, 0x723c
/* 0BE270 8015D830 E4440000 */  swc1  $f4, ($v0)
/* 0BE274 8015D834 E4660000 */  swc1  $f6, ($v1)
/* 0BE278 8015D838 10000009 */  b     .L8015D860_ovl3
/* 0BE27C 8015D83C C4600000 */   lwc1  $f0, ($v1)
.L8015D840_ovl3:
/* 0BE280 8015D840 44804000 */  mtc1  $zero, $f8
/* 0BE284 8015D844 3C03800D */  lui   $v1, %hi(D_800D723C) # $v1, 0x800d
/* 0BE288 8015D848 2463723C */  addiu $v1, %lo(D_800D723C) # addiu $v1, $v1, 0x723c
/* 0BE28C 8015D84C E4680000 */  swc1  $f8, ($v1)
/* 0BE290 8015D850 C4600000 */  lwc1  $f0, ($v1)
/* 0BE294 8015D854 3C02800D */  lui   $v0, %hi(D_800D7238) # $v0, 0x800d
/* 0BE298 8015D858 24427238 */  addiu $v0, %lo(D_800D7238) # addiu $v0, $v0, 0x7238
/* 0BE29C 8015D85C E4400000 */  swc1  $f0, ($v0)
.L8015D860_ovl3:
/* 0BE2A0 8015D860 44060000 */  mfc1  $a2, $f0
/* 0BE2A4 8015D864 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BE2A8 8015D868 8C450000 */   lw    $a1, ($v0)
/* 0BE2AC 8015D86C 8E300000 */  lw    $s0, ($s1)
/* 0BE2B0 8015D870 3C0D800B */  lui   $t5, %hi(func_800B4954) # $t5, 0x800b
/* 0BE2B4 8015D874 3C01800E */  lui   $at, 0x800e
/* 0BE2B8 8015D878 8E0E0000 */  lw    $t6, ($s0)
/* 0BE2BC 8015D87C 25AD4954 */  addiu $t5, %lo(func_800B4954) # addiu $t5, $t5, 0x4954
/* 0BE2C0 8015D880 3C198016 */  lui   $t9, %hi(D_8015DBE4) # $t9, 0x8016
/* 0BE2C4 8015D884 000E7880 */  sll   $t7, $t6, 2
/* 0BE2C8 8015D888 002F0821 */  addu  $at, $at, $t7
/* 0BE2CC 8015D88C AC2DEF90 */  sw    $t5, -0x1070($at)
/* 0BE2D0 8015D890 8E180000 */  lw    $t8, ($s0)
/* 0BE2D4 8015D894 3C01800E */  lui   $at, 0x800e
/* 0BE2D8 8015D898 2739DBE4 */  addiu $t9, %lo(D_8015DBE4) # addiu $t9, $t9, -0x241c
/* 0BE2DC 8015D89C 00184080 */  sll   $t0, $t8, 2
/* 0BE2E0 8015D8A0 00280821 */  addu  $at, $at, $t0
/* 0BE2E4 8015D8A4 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0BE2E8 8015D8A8 8E0A0000 */  lw    $t2, ($s0)
/* 0BE2EC 8015D8AC 3C01800E */  lui   $at, 0x800e
/* 0BE2F0 8015D8B0 3C098019 */  lui   $t1, %hi(D_80192E9C) # $t1, 0x8019
/* 0BE2F4 8015D8B4 000A5880 */  sll   $t3, $t2, 2
/* 0BE2F8 8015D8B8 002B0821 */  addu  $at, $at, $t3
/* 0BE2FC 8015D8BC 25292E9C */  addiu $t1, %lo(D_80192E9C) # addiu $t1, $t1, 0x2e9c
/* 0BE300 8015D8C0 AC290490 */  sw    $t1, 0x0490($at)
/* 0BE304 8015D8C4 8E030000 */  lw    $v1, ($s0)
/* 0BE308 8015D8C8 3C18801A */  lui   $t8, %hi(D_801982F8) # $t8, 0x801a
/* 0BE30C 8015D8CC 3C0D8019 */  lui   $t5, %hi(D_80197F60) # $t5, 0x8019
/* 0BE310 8015D8D0 2467FFFC */  addiu $a3, $v1, -4
/* 0BE314 8015D8D4 00077080 */  sll   $t6, $a3, 2
/* 0BE318 8015D8D8 01C77023 */  subu  $t6, $t6, $a3
/* 0BE31C 8015D8DC 000E70C0 */  sll   $t6, $t6, 3
/* 0BE320 8015D8E0 01C77023 */  subu  $t6, $t6, $a3
/* 0BE324 8015D8E4 3C04800E */  lui   $a0, 0x800e
/* 0BE328 8015D8E8 00036080 */  sll   $t4, $v1, 2
/* 0BE32C 8015D8EC 008C2021 */  addu  $a0, $a0, $t4
/* 0BE330 8015D8F0 000E7080 */  sll   $t6, $t6, 2
/* 0BE334 8015D8F4 00077940 */  sll   $t7, $a3, 5
/* 0BE338 8015D8F8 25AD7F60 */  addiu $t5, %lo(D_80197F60) # addiu $t5, $t5, 0x7f60
/* 0BE33C 8015D8FC 271882F8 */  addiu $t8, %lo(D_801982F8) # addiu $t8, $t8, -0x7d08
/* 0BE340 8015D900 01F83021 */  addu  $a2, $t7, $t8
/* 0BE344 8015D904 01CD2821 */  addu  $a1, $t6, $t5
/* 0BE348 8015D908 0C055192 */  jal   func_80154648_ovl3
/* 0BE34C 8015D90C 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0BE350 8015D910 8E300000 */  lw    $s0, ($s1)
/* 0BE354 8015D914 3C018019 */  lui   $at, %hi(D_80197084) # $at, 0x8019
/* 0BE358 8015D918 C4207084 */  lwc1  $f0, %lo(D_80197084)($at)
/* 0BE35C 8015D91C 8E190000 */  lw    $t9, ($s0)
/* 0BE360 8015D920 3C01800F */  lui   $at, 0x800f
/* 0BE364 8015D924 3C0A800E */  lui   $t2, 0x800e
/* 0BE368 8015D928 00194080 */  sll   $t0, $t9, 2
/* 0BE36C 8015D92C 00280821 */  addu  $at, $at, $t0
/* 0BE370 8015D930 AC208920 */  sw    $zero, -0x76e0($at)
/* 0BE374 8015D934 8E030000 */  lw    $v1, ($s0)
/* 0BE378 8015D938 3C02800F */  lui   $v0, %hi(D_800E8AE0) # $v0, 0x800f
/* 0BE37C 8015D93C 24428AE0 */  addiu $v0, %lo(D_800E8AE0) # addiu $v0, $v0, -0x7520
/* 0BE380 8015D940 00031880 */  sll   $v1, $v1, 2
/* 0BE384 8015D944 01435021 */  addu  $t2, $t2, $v1
/* 0BE388 8015D948 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 0BE38C 8015D94C 00437021 */  addu  $t6, $v0, $v1
/* 0BE390 8015D950 3C01800E */  lui   $at, 0x800e
/* 0BE394 8015D954 000A4880 */  sll   $t1, $t2, 2
/* 0BE398 8015D958 00495821 */  addu  $t3, $v0, $t1
/* 0BE39C 8015D95C 8D6C0000 */  lw    $t4, ($t3)
/* 0BE3A0 8015D960 3C040002 */  lui   $a0, (0x00020032 >> 16) # lui $a0, 2
/* 0BE3A4 8015D964 34840032 */  ori   $a0, (0x00020032 & 0xFFFF) # ori $a0, $a0, 0x32
/* 0BE3A8 8015D968 ADCC0000 */  sw    $t4, ($t6)
/* 0BE3AC 8015D96C 8E0D0000 */  lw    $t5, ($s0)
/* 0BE3B0 8015D970 24050021 */  li    $a1, 33
/* 0BE3B4 8015D974 24060010 */  li    $a2, 16
/* 0BE3B8 8015D978 000D7880 */  sll   $t7, $t5, 2
/* 0BE3BC 8015D97C 002F0821 */  addu  $at, $at, $t7
/* 0BE3C0 8015D980 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BE3C4 8015D984 8E180000 */  lw    $t8, ($s0)
/* 0BE3C8 8015D988 3C01800E */  lui   $at, 0x800e
/* 0BE3CC 8015D98C 0018C880 */  sll   $t9, $t8, 2
/* 0BE3D0 8015D990 00390821 */  addu  $at, $at, $t9
/* 0BE3D4 8015D994 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BE3D8 8015D998 8E080000 */  lw    $t0, ($s0)
/* 0BE3DC 8015D99C 3C01800E */  lui   $at, 0x800e
/* 0BE3E0 8015D9A0 00085080 */  sll   $t2, $t0, 2
/* 0BE3E4 8015D9A4 002A0821 */  addu  $at, $at, $t2
/* 0BE3E8 8015D9A8 0C02A619 */  jal   func_800A9864
/* 0BE3EC 8015D9AC E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BE3F0 8015D9B0 8E300000 */  lw    $s0, ($s1)
/* 0BE3F4 8015D9B4 3C01800F */  lui   $at, 0x800f
/* 0BE3F8 8015D9B8 24090046 */  li    $t1, 70
/* 0BE3FC 8015D9BC 8E0B0000 */  lw    $t3, ($s0)
/* 0BE400 8015D9C0 3C05800F */  lui   $a1, %hi(D_800EA8A0) # $a1, 0x800f
/* 0BE404 8015D9C4 24A5A8A0 */  addiu $a1, %lo(D_800EA8A0) # addiu $a1, $a1, -0x5760
/* 0BE408 8015D9C8 000B6080 */  sll   $t4, $t3, 2
/* 0BE40C 8015D9CC 002C0821 */  addu  $at, $at, $t4
/* 0BE410 8015D9D0 AC299720 */  sw    $t1, -0x68e0($at)
/* 0BE414 8015D9D4 8E0E0000 */  lw    $t6, ($s0)
/* 0BE418 8015D9D8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BE41C 8015D9DC 44815000 */  mtc1  $at, $f10
/* 0BE420 8015D9E0 000E6880 */  sll   $t5, $t6, 2
/* 0BE424 8015D9E4 00AD7821 */  addu  $t7, $a1, $t5
/* 0BE428 8015D9E8 E5EA0000 */  swc1  $f10, ($t7)
/* 0BE42C 8015D9EC 8E030000 */  lw    $v1, ($s0)
/* 0BE430 8015D9F0 3C01800F */  lui   $at, 0x800f
/* 0BE434 8015D9F4 3C040002 */  lui   $a0, (0x00020280 >> 16) # lui $a0, 2
/* 0BE438 8015D9F8 00031880 */  sll   $v1, $v1, 2
/* 0BE43C 8015D9FC 00A3C021 */  addu  $t8, $a1, $v1
/* 0BE440 8015DA00 C7100000 */  lwc1  $f16, ($t8)
/* 0BE444 8015DA04 00230821 */  addu  $at, $at, $v1
/* 0BE448 8015DA08 34840280 */  ori   $a0, (0x00020280 & 0xFFFF) # ori $a0, $a0, 0x280
/* 0BE44C 8015DA0C 0C02A806 */  jal   func_800AA018
/* 0BE450 8015DA10 E430A6E0 */   swc1  $f16, -0x5920($at)
/* 0BE454 8015DA14 8E300000 */  lw    $s0, ($s1)
/* 0BE458 8015DA18 3C19800F */  lui   $t9, 0x800f
/* 0BE45C 8015DA1C 24010001 */  li    $at, 1
/* 0BE460 8015DA20 8E030000 */  lw    $v1, ($s0)
/* 0BE464 8015DA24 24040002 */  li    $a0, 2
/* 0BE468 8015DA28 24050001 */  li    $a1, 1
/* 0BE46C 8015DA2C 00031880 */  sll   $v1, $v1, 2
/* 0BE470 8015DA30 0323C821 */  addu  $t9, $t9, $v1
/* 0BE474 8015DA34 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0BE478 8015DA38 17210028 */  bne   $t9, $at, .L8015DADC_ovl3
/* 0BE47C 8015DA3C 00000000 */   nop   
/* 0BE480 8015DA40 44801000 */  mtc1  $zero, $f2
/* 0BE484 8015DA44 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BE488 8015DA48 00230821 */  addu  $at, $at, $v1
/* 0BE48C 8015DA4C E4224010 */  swc1  $f2, 0x4010($at)
/* 0BE490 8015DA50 8E030000 */  lw    $v1, ($s0)
/* 0BE494 8015DA54 3C08800F */  lui   $t0, 0x800f
/* 0BE498 8015DA58 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0BE49C 8015DA5C 00031880 */  sll   $v1, $v1, 2
/* 0BE4A0 8015DA60 01034021 */  addu  $t0, $t0, $v1
/* 0BE4A4 8015DA64 8D088AE0 */  lw    $t0, -0x7520($t0)
/* 0BE4A8 8015DA68 310A0004 */  andi  $t2, $t0, 4
/* 0BE4AC 8015DA6C 55400006 */  bnezl $t2, .L8015DA88_ovl3
/* 0BE4B0 8015DA70 44810000 */   mtc1  $at, $f0
/* 0BE4B4 8015DA74 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BE4B8 8015DA78 44810000 */  mtc1  $at, $f0
/* 0BE4BC 8015DA7C 10000003 */  b     .L8015DA8C_ovl3
/* 0BE4C0 8015DA80 00000000 */   nop   
/* 0BE4C4 8015DA84 44810000 */  mtc1  $at, $f0
.L8015DA88_ovl3:
/* 0BE4C8 8015DA88 00000000 */  nop   
.L8015DA8C_ovl3:
/* 0BE4CC 8015DA8C 3C01800E */  lui   $at, 0x800e
/* 0BE4D0 8015DA90 00230821 */  addu  $at, $at, $v1
/* 0BE4D4 8015DA94 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 0BE4D8 8015DA98 3C01800E */  lui   $at, 0x800e
/* 0BE4DC 8015DA9C 00230821 */  addu  $at, $at, $v1
/* 0BE4E0 8015DAA0 46120102 */  mul.s $f4, $f0, $f18
/* 0BE4E4 8015DAA4 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0BE4E8 8015DAA8 8E0B0000 */  lw    $t3, ($s0)
/* 0BE4EC 8015DAAC 3C01800E */  lui   $at, 0x800e
/* 0BE4F0 8015DAB0 000B4880 */  sll   $t1, $t3, 2
/* 0BE4F4 8015DAB4 00290821 */  addu  $at, $at, $t1
/* 0BE4F8 8015DAB8 E4226690 */  swc1  $f2, 0x6690($at)
/* 0BE4FC 8015DABC 8E0C0000 */  lw    $t4, ($s0)
/* 0BE500 8015DAC0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BE504 8015DAC4 44813000 */  mtc1  $at, $f6
/* 0BE508 8015DAC8 3C01800E */  lui   $at, 0x800e
/* 0BE50C 8015DACC 000C7080 */  sll   $t6, $t4, 2
/* 0BE510 8015DAD0 002E0821 */  addu  $at, $at, $t6
/* 0BE514 8015DAD4 10000026 */  b     .L8015DB70_ovl3
/* 0BE518 8015DAD8 E4266850 */   swc1  $f6, 0x6850($at)
.L8015DADC_ovl3:
/* 0BE51C 8015DADC 3C018019 */  lui   $at, %hi(D_80197088) # $at, 0x8019
/* 0BE520 8015DAE0 C4287088 */  lwc1  $f8, %lo(D_80197088)($at)
/* 0BE524 8015DAE4 3C01800E */  lui   $at, 0x800e
/* 0BE528 8015DAE8 00230821 */  addu  $at, $at, $v1
/* 0BE52C 8015DAEC E4284010 */  swc1  $f8, 0x4010($at)
/* 0BE530 8015DAF0 8E030000 */  lw    $v1, ($s0)
/* 0BE534 8015DAF4 3C0D800F */  lui   $t5, 0x800f
/* 0BE538 8015DAF8 3C01C108 */  li    $at, 0xC1080000 # -8.500000
/* 0BE53C 8015DAFC 00031880 */  sll   $v1, $v1, 2
/* 0BE540 8015DB00 01A36821 */  addu  $t5, $t5, $v1
/* 0BE544 8015DB04 8DAD8AE0 */  lw    $t5, -0x7520($t5)
/* 0BE548 8015DB08 31AF0004 */  andi  $t7, $t5, 4
/* 0BE54C 8015DB0C 55E00008 */  bnezl $t7, .L8015DB30_ovl3
/* 0BE550 8015DB10 44818000 */   mtc1  $at, $f16
/* 0BE554 8015DB14 3C01C188 */  li    $at, 0xC1880000 # -17.000000
/* 0BE558 8015DB18 44815000 */  mtc1  $at, $f10
/* 0BE55C 8015DB1C 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BE560 8015DB20 00230821 */  addu  $at, $at, $v1
/* 0BE564 8015DB24 10000005 */  b     .L8015DB3C_ovl3
/* 0BE568 8015DB28 E42A3210 */   swc1  $f10, 0x3210($at)
/* 0BE56C 8015DB2C 44818000 */  mtc1  $at, $f16
.L8015DB30_ovl3:
/* 0BE570 8015DB30 3C01800E */  lui   $at, 0x800e
/* 0BE574 8015DB34 00230821 */  addu  $at, $at, $v1
/* 0BE578 8015DB38 E4303210 */  swc1  $f16, 0x3210($at)
.L8015DB3C_ovl3:
/* 0BE57C 8015DB3C 8E180000 */  lw    $t8, ($s0)
/* 0BE580 8015DB40 44809000 */  mtc1  $zero, $f18
/* 0BE584 8015DB44 3C01800E */  lui   $at, 0x800e
/* 0BE588 8015DB48 0018C880 */  sll   $t9, $t8, 2
/* 0BE58C 8015DB4C 00390821 */  addu  $at, $at, $t9
/* 0BE590 8015DB50 E4323750 */  swc1  $f18, 0x3750($at)
/* 0BE594 8015DB54 8E080000 */  lw    $t0, ($s0)
/* 0BE598 8015DB58 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 0BE59C 8015DB5C 44812000 */  mtc1  $at, $f4
/* 0BE5A0 8015DB60 3C01800E */  lui   $at, 0x800e
/* 0BE5A4 8015DB64 00085080 */  sll   $t2, $t0, 2
/* 0BE5A8 8015DB68 002A0821 */  addu  $at, $at, $t2
/* 0BE5AC 8015DB6C E4243C90 */  swc1  $f4, 0x3c90($at)
.L8015DB70_ovl3:
/* 0BE5B0 8015DB70 0C02A08D */  jal   func_800A8234
/* 0BE5B4 8015DB74 24060049 */   li    $a2, 73
/* 0BE5B8 8015DB78 8E2B0000 */  lw    $t3, ($s1)
/* 0BE5BC 8015DB7C 3C01800F */  lui   $at, 0x800f
/* 0BE5C0 8015DB80 24040001 */  li    $a0, 1
/* 0BE5C4 8015DB84 8D690000 */  lw    $t1, ($t3)
/* 0BE5C8 8015DB88 24050001 */  li    $a1, 1
/* 0BE5CC 8015DB8C 2406004E */  li    $a2, 78
/* 0BE5D0 8015DB90 00096080 */  sll   $t4, $t1, 2
/* 0BE5D4 8015DB94 002C0821 */  addu  $at, $at, $t4
/* 0BE5D8 8015DB98 0C02A08D */  jal   func_800A8234
/* 0BE5DC 8015DB9C AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0BE5E0 8015DBA0 8E300000 */  lw    $s0, ($s1)
/* 0BE5E4 8015DBA4 3C01800F */  lui   $at, 0x800f
/* 0BE5E8 8015DBA8 8E0E0000 */  lw    $t6, ($s0)
/* 0BE5EC 8015DBAC 000E6880 */  sll   $t5, $t6, 2
/* 0BE5F0 8015DBB0 002D0821 */  addu  $at, $at, $t5
/* 0BE5F4 8015DBB4 AC22B4E0 */  sw    $v0, -0x4b20($at)
/* 0BE5F8 8015DBB8 8E0F0000 */  lw    $t7, ($s0)
/* 0BE5FC 8015DBBC 3C01800F */  lui   $at, 0x800f
/* 0BE600 8015DBC0 000FC080 */  sll   $t8, $t7, 2
/* 0BE604 8015DBC4 00380821 */  addu  $at, $at, $t8
/* 0BE608 8015DBC8 0C02BE85 */  jal   func_800AFA14
/* 0BE60C 8015DBCC AC20B6A0 */   sw    $zero, -0x4960($at)
/* 0BE610 8015DBD0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0BE614 8015DBD4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BE618 8015DBD8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BE61C 8015DBDC 03E00008 */  jr    $ra
/* 0BE620 8015DBE0 27BD0020 */   addiu $sp, $sp, 0x20

.type func_8015D7A0_ovl3, @function
.size func_8015D7A0_ovl3, . - func_8015D7A0_ovl3

glabel func_8015DBE4_ovl3
/* 0BE624 8015DBE4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0BE628 8015DBE8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BE62C 8015DBEC AFA40048 */  sw    $a0, 0x48($sp)
/* 0BE630 8015DBF0 0C02CC56 */  jal   func_800B3158
/* 0BE634 8015DBF4 AFA00030 */   sw    $zero, 0x30($sp)
/* 0BE638 8015DBF8 14400026 */  bnez  $v0, .L8015DC94_ovl3
/* 0BE63C 8015DBFC 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE640 8015DC00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BE644 8015DC04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BE648 8015DC08 3C07800F */  lui   $a3, 0x800f
/* 0BE64C 8015DC0C 8DC20000 */  lw    $v0, ($t6)
/* 0BE650 8015DC10 00027880 */  sll   $t7, $v0, 2
/* 0BE654 8015DC14 00EF3821 */  addu  $a3, $a3, $t7
/* 0BE658 8015DC18 8CE7A520 */  lw    $a3, -0x5ae0($a3)
/* 0BE65C 8015DC1C 10E00019 */  beqz  $a3, .L8015DC84_ovl3
/* 0BE660 8015DC20 00000000 */   nop   
/* 0BE664 8015DC24 0C0288B5 */  jal   func_800A22D4
/* 0BE668 8015DC28 00E02025 */   move  $a0, $a3
/* 0BE66C 8015DC2C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BE670 8015DC30 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BE674 8015DC34 3C04800F */  lui   $a0, 0x800f
/* 0BE678 8015DC38 8F190000 */  lw    $t9, ($t8)
/* 0BE67C 8015DC3C 00195080 */  sll   $t2, $t9, 2
/* 0BE680 8015DC40 008A2021 */  addu  $a0, $a0, $t2
/* 0BE684 8015DC44 0C0288B5 */  jal   func_800A22D4
/* 0BE688 8015DC48 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0BE68C 8015DC4C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BE690 8015DC50 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BE694 8015DC54 3C04800F */  lui   $a0, 0x800f
/* 0BE698 8015DC58 8D620000 */  lw    $v0, ($t3)
/* 0BE69C 8015DC5C 00026080 */  sll   $t4, $v0, 2
/* 0BE6A0 8015DC60 008C2021 */  addu  $a0, $a0, $t4
/* 0BE6A4 8015DC64 8C84B6A0 */  lw    $a0, -0x4960($a0)
/* 0BE6A8 8015DC68 10800006 */  beqz  $a0, .L8015DC84_ovl3
/* 0BE6AC 8015DC6C 00000000 */   nop   
/* 0BE6B0 8015DC70 0C0288B5 */  jal   func_800A22D4
/* 0BE6B4 8015DC74 00000000 */   nop   
/* 0BE6B8 8015DC78 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0BE6BC 8015DC7C 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0BE6C0 8015DC80 8DA20000 */  lw    $v0, ($t5)
.L8015DC84_ovl3:
/* 0BE6C4 8015DC84 0C02C640 */  jal   func_800B1900
/* 0BE6C8 8015DC88 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0BE6CC 8015DC8C 100001E8 */  b     .L8015E430_ovl3
/* 0BE6D0 8015DC90 8FBF0014 */   lw    $ra, 0x14($sp)
.L8015DC94_ovl3:
/* 0BE6D4 8015DC94 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BE6D8 8015DC98 3C0E800F */  lui   $t6, %hi(D_800E9720) # $t6, 0x800f
/* 0BE6DC 8015DC9C 25CE9720 */  addiu $t6, %lo(D_800E9720) # addiu $t6, $t6, -0x68e0
/* 0BE6E0 8015DCA0 8C680000 */  lw    $t0, ($v1)
/* 0BE6E4 8015DCA4 3C0F800E */  lui   $t7, 0x800e
/* 0BE6E8 8015DCA8 3C07800F */  lui   $a3, 0x800f
/* 0BE6EC 8015DCAC 00084080 */  sll   $t0, $t0, 2
/* 0BE6F0 8015DCB0 010E2021 */  addu  $a0, $t0, $t6
/* 0BE6F4 8015DCB4 8C820000 */  lw    $v0, ($a0)
/* 0BE6F8 8015DCB8 01E87821 */  addu  $t7, $t7, $t0
/* 0BE6FC 8015DCBC 00E83821 */  addu  $a3, $a3, $t0
/* 0BE700 8015DCC0 10400004 */  beqz  $v0, .L8015DCD4_ovl3
/* 0BE704 8015DCC4 00000000 */   nop   
/* 0BE708 8015DCC8 8DEF6310 */  lw    $t7, 0x6310($t7)
/* 0BE70C 8015DCCC 11E0007F */  beqz  $t7, .L8015DECC_ovl3
/* 0BE710 8015DCD0 00000000 */   nop   
.L8015DCD4_ovl3:
/* 0BE714 8015DCD4 8CE7A520 */  lw    $a3, -0x5ae0($a3)
/* 0BE718 8015DCD8 10E00043 */  beqz  $a3, .L8015DDE8_ovl3
/* 0BE71C 8015DCDC 00000000 */   nop   
/* 0BE720 8015DCE0 0C0287CC */  jal   func_800A1F30
/* 0BE724 8015DCE4 00E02025 */   move  $a0, $a3
/* 0BE728 8015DCE8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BE72C 8015DCEC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BE730 8015DCF0 3C04800F */  lui   $a0, 0x800f
/* 0BE734 8015DCF4 8F190000 */  lw    $t9, ($t8)
/* 0BE738 8015DCF8 00195080 */  sll   $t2, $t9, 2
/* 0BE73C 8015DCFC 008A2021 */  addu  $a0, $a0, $t2
/* 0BE740 8015DD00 0C0287CC */  jal   func_800A1F30
/* 0BE744 8015DD04 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0BE748 8015DD08 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE74C 8015DD0C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BE750 8015DD10 3C0D800F */  lui   $t5, %hi(D_800EB6A0) # $t5, 0x800f
/* 0BE754 8015DD14 25ADB6A0 */  addiu $t5, %lo(D_800EB6A0) # addiu $t5, $t5, -0x4960
/* 0BE758 8015DD18 8C6B0000 */  lw    $t3, ($v1)
/* 0BE75C 8015DD1C 000B6080 */  sll   $t4, $t3, 2
/* 0BE760 8015DD20 018D1021 */  addu  $v0, $t4, $t5
/* 0BE764 8015DD24 8C440000 */  lw    $a0, ($v0)
/* 0BE768 8015DD28 5080000B */  beql  $a0, $zero, .L8015DD58_ovl3
/* 0BE76C 8015DD2C AC400000 */   sw    $zero, ($v0)
/* 0BE770 8015DD30 0C0287CC */  jal   func_800A1F30
/* 0BE774 8015DD34 00000000 */   nop   
/* 0BE778 8015DD38 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE77C 8015DD3C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BE780 8015DD40 3C18800F */  lui   $t8, %hi(D_800EB6A0) # $t8, 0x800f
/* 0BE784 8015DD44 2718B6A0 */  addiu $t8, %lo(D_800EB6A0) # addiu $t8, $t8, -0x4960
/* 0BE788 8015DD48 8C6E0000 */  lw    $t6, ($v1)
/* 0BE78C 8015DD4C 000E7880 */  sll   $t7, $t6, 2
/* 0BE790 8015DD50 01F81021 */  addu  $v0, $t7, $t8
/* 0BE794 8015DD54 AC400000 */  sw    $zero, ($v0)
.L8015DD58_ovl3:
/* 0BE798 8015DD58 8C680000 */  lw    $t0, ($v1)
/* 0BE79C 8015DD5C 3C04800F */  lui   $a0, 0x800f
/* 0BE7A0 8015DD60 3C01800F */  lui   $at, 0x800f
/* 0BE7A4 8015DD64 00084080 */  sll   $t0, $t0, 2
/* 0BE7A8 8015DD68 00882021 */  addu  $a0, $a0, $t0
/* 0BE7AC 8015DD6C 8C84B6A0 */  lw    $a0, -0x4960($a0)
/* 0BE7B0 8015DD70 00280821 */  addu  $at, $at, $t0
/* 0BE7B4 8015DD74 44802000 */  mtc1  $zero, $f4
/* 0BE7B8 8015DD78 AC24B4E0 */  sw    $a0, -0x4b20($at)
/* 0BE7BC 8015DD7C 8C790000 */  lw    $t9, ($v1)
/* 0BE7C0 8015DD80 3C01800F */  lui   $at, 0x800f
/* 0BE7C4 8015DD84 3C09800E */  lui   $t1, %hi(D_800E6690) # $t1, 0x800e
/* 0BE7C8 8015DD88 00195080 */  sll   $t2, $t9, 2
/* 0BE7CC 8015DD8C 002A0821 */  addu  $at, $at, $t2
/* 0BE7D0 8015DD90 AC24A520 */  sw    $a0, -0x5ae0($at)
/* 0BE7D4 8015DD94 8C6B0000 */  lw    $t3, ($v1)
/* 0BE7D8 8015DD98 25296690 */  addiu $t1, %lo(D_800E6690) # addiu $t1, $t1, 0x6690
/* 0BE7DC 8015DD9C 3C01800E */  lui   $at, 0x800e
/* 0BE7E0 8015DDA0 000B6080 */  sll   $t4, $t3, 2
/* 0BE7E4 8015DDA4 012C6821 */  addu  $t5, $t1, $t4
/* 0BE7E8 8015DDA8 E5A40000 */  swc1  $f4, ($t5)
/* 0BE7EC 8015DDAC 8C680000 */  lw    $t0, ($v1)
/* 0BE7F0 8015DDB0 00084080 */  sll   $t0, $t0, 2
/* 0BE7F4 8015DDB4 01287021 */  addu  $t6, $t1, $t0
/* 0BE7F8 8015DDB8 C5C60000 */  lwc1  $f6, ($t6)
/* 0BE7FC 8015DDBC 00280821 */  addu  $at, $at, $t0
/* 0BE800 8015DDC0 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BE804 8015DDC4 8C6F0000 */  lw    $t7, ($v1)
/* 0BE808 8015DDC8 3C018019 */  lui   $at, %hi(D_8019708C) # $at, 0x8019
/* 0BE80C 8015DDCC C428708C */  lwc1  $f8, %lo(D_8019708C)($at)
/* 0BE810 8015DDD0 3C01800E */  lui   $at, 0x800e
/* 0BE814 8015DDD4 000FC080 */  sll   $t8, $t7, 2
/* 0BE818 8015DDD8 00380821 */  addu  $at, $at, $t8
/* 0BE81C 8015DDDC E4286850 */  swc1  $f8, 0x6850($at)
/* 0BE820 8015DDE0 8C680000 */  lw    $t0, ($v1)
/* 0BE824 8015DDE4 00084080 */  sll   $t0, $t0, 2
.L8015DDE8_ovl3:
/* 0BE828 8015DDE8 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 0BE82C 8015DDEC 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 0BE830 8015DDF0 00A82021 */  addu  $a0, $a1, $t0
/* 0BE834 8015DDF4 3C013E00 */  li    $at, 0x3E000000 # 0.125000
/* 0BE838 8015DDF8 44818000 */  mtc1  $at, $f16
/* 0BE83C 8015DDFC C48A0000 */  lwc1  $f10, ($a0)
/* 0BE840 8015DE00 44802000 */  mtc1  $zero, $f4
/* 0BE844 8015DE04 46105481 */  sub.s $f18, $f10, $f16
/* 0BE848 8015DE08 E4920000 */  swc1  $f18, ($a0)
/* 0BE84C 8015DE0C 8C620000 */  lw    $v0, ($v1)
/* 0BE850 8015DE10 00024080 */  sll   $t0, $v0, 2
/* 0BE854 8015DE14 00A8C821 */  addu  $t9, $a1, $t0
/* 0BE858 8015DE18 C7260000 */  lwc1  $f6, ($t9)
/* 0BE85C 8015DE1C 46062032 */  c.eq.s $f4, $f6
/* 0BE860 8015DE20 00000000 */  nop   
/* 0BE864 8015DE24 45000009 */  bc1f  .L8015DE4C_ovl3
/* 0BE868 8015DE28 00000000 */   nop   
/* 0BE86C 8015DE2C 0C02C640 */  jal   func_800B1900
/* 0BE870 8015DE30 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0BE874 8015DE34 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE878 8015DE38 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BE87C 8015DE3C 3C05800F */  lui   $a1, %hi(D_800EA6E0) # $a1, 0x800f
/* 0BE880 8015DE40 24A5A6E0 */  addiu $a1, %lo(D_800EA6E0) # addiu $a1, $a1, -0x5920
/* 0BE884 8015DE44 8C680000 */  lw    $t0, ($v1)
/* 0BE888 8015DE48 00084080 */  sll   $t0, $t0, 2
.L8015DE4C_ovl3:
/* 0BE88C 8015DE4C 3C04800F */  lui   $a0, %hi(D_800EA8A0) # $a0, 0x800f
/* 0BE890 8015DE50 3C018019 */  lui   $at, %hi(D_80197090) # $at, 0x8019
/* 0BE894 8015DE54 C4227090 */  lwc1  $f2, %lo(D_80197090)($at)
/* 0BE898 8015DE58 2484A8A0 */  addiu $a0, %lo(D_800EA8A0) # addiu $a0, $a0, -0x5760
/* 0BE89C 8015DE5C 00881021 */  addu  $v0, $a0, $t0
/* 0BE8A0 8015DE60 3C018019 */  lui   $at, %hi(D_80197094) # $at, 0x8019
/* 0BE8A4 8015DE64 C42A7094 */  lwc1  $f10, %lo(D_80197094)($at)
/* 0BE8A8 8015DE68 C4480000 */  lwc1  $f8, ($v0)
/* 0BE8AC 8015DE6C 3C01800E */  lui   $at, 0x800e
/* 0BE8B0 8015DE70 460A4401 */  sub.s $f16, $f8, $f10
/* 0BE8B4 8015DE74 E4500000 */  swc1  $f16, ($v0)
/* 0BE8B8 8015DE78 8C680000 */  lw    $t0, ($v1)
/* 0BE8BC 8015DE7C 00084080 */  sll   $t0, $t0, 2
/* 0BE8C0 8015DE80 00A85021 */  addu  $t2, $a1, $t0
/* 0BE8C4 8015DE84 C5520000 */  lwc1  $f18, ($t2)
/* 0BE8C8 8015DE88 00280821 */  addu  $at, $at, $t0
/* 0BE8CC 8015DE8C 46029002 */  mul.s $f0, $f18, $f2
/* 0BE8D0 8015DE90 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BE8D4 8015DE94 8C6B0000 */  lw    $t3, ($v1)
/* 0BE8D8 8015DE98 3C01800E */  lui   $at, 0x800e
/* 0BE8DC 8015DE9C 000B6080 */  sll   $t4, $t3, 2
/* 0BE8E0 8015DEA0 002C0821 */  addu  $at, $at, $t4
/* 0BE8E4 8015DEA4 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BE8E8 8015DEA8 8C680000 */  lw    $t0, ($v1)
/* 0BE8EC 8015DEAC 3C01800E */  lui   $at, 0x800e
/* 0BE8F0 8015DEB0 00084080 */  sll   $t0, $t0, 2
/* 0BE8F4 8015DEB4 00886821 */  addu  $t5, $a0, $t0
/* 0BE8F8 8015DEB8 C5A40000 */  lwc1  $f4, ($t5)
/* 0BE8FC 8015DEBC 00280821 */  addu  $at, $at, $t0
/* 0BE900 8015DEC0 46022182 */  mul.s $f6, $f4, $f2
/* 0BE904 8015DEC4 10000159 */  b     .L8015E42C_ovl3
/* 0BE908 8015DEC8 E42648D0 */   swc1  $f6, 0x48d0($at)
.L8015DECC_ovl3:
/* 0BE90C 8015DECC 10400005 */  beqz  $v0, .L8015DEE4_ovl3
/* 0BE910 8015DED0 3C01800E */   lui   $at, 0x800e
/* 0BE914 8015DED4 244EFFFF */  addiu $t6, $v0, -1
/* 0BE918 8015DED8 AC8E0000 */  sw    $t6, ($a0)
/* 0BE91C 8015DEDC 8C680000 */  lw    $t0, ($v1)
/* 0BE920 8015DEE0 00084080 */  sll   $t0, $t0, 2
.L8015DEE4_ovl3:
/* 0BE924 8015DEE4 00280821 */  addu  $at, $at, $t0
/* 0BE928 8015DEE8 C42817D0 */  lwc1  $f8, 0x17d0($at)
/* 0BE92C 8015DEEC 3C01800E */  lui   $at, 0x800e
/* 0BE930 8015DEF0 00280821 */  addu  $at, $at, $t0
/* 0BE934 8015DEF4 E42841D0 */  swc1  $f8, 0x41d0($at)
/* 0BE938 8015DEF8 8C6F0000 */  lw    $t7, ($v1)
/* 0BE93C 8015DEFC 3C0A8019 */  lui   $t2, %hi(D_80197F60) # $t2, 0x8019
/* 0BE940 8015DF00 254A7F60 */  addiu $t2, %lo(D_80197F60) # addiu $t2, $t2, 0x7f60
/* 0BE944 8015DF04 000FC080 */  sll   $t8, $t7, 2
/* 0BE948 8015DF08 030FC023 */  subu  $t8, $t8, $t7
/* 0BE94C 8015DF0C 0018C0C0 */  sll   $t8, $t8, 3
/* 0BE950 8015DF10 030FC023 */  subu  $t8, $t8, $t7
/* 0BE954 8015DF14 0018C080 */  sll   $t8, $t8, 2
/* 0BE958 8015DF18 2719FE90 */  addiu $t9, $t8, -0x170
/* 0BE95C 8015DF1C 0C055599 */  jal   func_80155664_ovl3
/* 0BE960 8015DF20 032A2021 */   addu  $a0, $t9, $t2
/* 0BE964 8015DF24 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE968 8015DF28 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BE96C 8015DF2C 3C01800F */  lui   $at, 0x800f
/* 0BE970 8015DF30 3C04800F */  lui   $a0, 0x800f
/* 0BE974 8015DF34 8C6B0000 */  lw    $t3, ($v1)
/* 0BE978 8015DF38 000B6080 */  sll   $t4, $t3, 2
/* 0BE97C 8015DF3C 002C0821 */  addu  $at, $at, $t4
/* 0BE980 8015DF40 AC208920 */  sw    $zero, -0x76e0($at)
/* 0BE984 8015DF44 8C6D0000 */  lw    $t5, ($v1)
/* 0BE988 8015DF48 3C01800E */  lui   $at, 0x800e
/* 0BE98C 8015DF4C 000D7080 */  sll   $t6, $t5, 2
/* 0BE990 8015DF50 002E0821 */  addu  $at, $at, $t6
/* 0BE994 8015DF54 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0BE998 8015DF58 3C01800E */  lui   $at, 0x800e
/* 0BE99C 8015DF5C E7AA003C */  swc1  $f10, 0x3c($sp)
/* 0BE9A0 8015DF60 8C6F0000 */  lw    $t7, ($v1)
/* 0BE9A4 8015DF64 000FC080 */  sll   $t8, $t7, 2
/* 0BE9A8 8015DF68 00380821 */  addu  $at, $at, $t8
/* 0BE9AC 8015DF6C C4302790 */  lwc1  $f16, 0x2790($at)
/* 0BE9B0 8015DF70 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BE9B4 8015DF74 E7B00040 */  swc1  $f16, 0x40($sp)
/* 0BE9B8 8015DF78 8C790000 */  lw    $t9, ($v1)
/* 0BE9BC 8015DF7C 00195080 */  sll   $t2, $t9, 2
/* 0BE9C0 8015DF80 002A0821 */  addu  $at, $at, $t2
/* 0BE9C4 8015DF84 C4322950 */  lwc1  $f18, 0x2950($at)
/* 0BE9C8 8015DF88 E7B20044 */  swc1  $f18, 0x44($sp)
/* 0BE9CC 8015DF8C 8C680000 */  lw    $t0, ($v1)
/* 0BE9D0 8015DF90 00084080 */  sll   $t0, $t0, 2
/* 0BE9D4 8015DF94 00882021 */  addu  $a0, $a0, $t0
/* 0BE9D8 8015DF98 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0BE9DC 8015DF9C 10800049 */  beqz  $a0, .L8015E0C4_ovl3
/* 0BE9E0 8015DFA0 24010001 */   li    $at, 1
/* 0BE9E4 8015DFA4 14810088 */  bne   $a0, $at, .L8015E1C8_ovl3
/* 0BE9E8 8015DFA8 3C054220 */   lui   $a1, 0x4220
/* 0BE9EC 8015DFAC 27A4003C */  addiu $a0, $sp, 0x3c
/* 0BE9F0 8015DFB0 0C05560E */  jal   func_80155838_ovl3
/* 0BE9F4 8015DFB4 24060005 */   li    $a2, 5
/* 0BE9F8 8015DFB8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BE9FC 8015DFBC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BEA00 8015DFC0 AFA20030 */  sw    $v0, 0x30($sp)
/* 0BEA04 8015DFC4 3C0B800F */  lui   $t3, 0x800f
/* 0BEA08 8015DFC8 8C680000 */  lw    $t0, ($v1)
/* 0BEA0C 8015DFCC 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0BEA10 8015DFD0 00084080 */  sll   $t0, $t0, 2
/* 0BEA14 8015DFD4 01685821 */  addu  $t3, $t3, $t0
/* 0BEA18 8015DFD8 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 0BEA1C 8015DFDC 316C0004 */  andi  $t4, $t3, 4
/* 0BEA20 8015DFE0 55800006 */  bnezl $t4, .L8015DFFC_ovl3
/* 0BEA24 8015DFE4 44810000 */   mtc1  $at, $f0
/* 0BEA28 8015DFE8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BEA2C 8015DFEC 44810000 */  mtc1  $at, $f0
/* 0BEA30 8015DFF0 10000003 */  b     .L8015E000_ovl3
/* 0BEA34 8015DFF4 00000000 */   nop   
/* 0BEA38 8015DFF8 44810000 */  mtc1  $at, $f0
.L8015DFFC_ovl3:
/* 0BEA3C 8015DFFC 00000000 */  nop   
.L8015E000_ovl3:
/* 0BEA40 8015E000 3C01800E */  lui   $at, 0x800e
/* 0BEA44 8015E004 00280821 */  addu  $at, $at, $t0
/* 0BEA48 8015E008 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0BEA4C 8015E00C 3C01800E */  lui   $at, 0x800e
/* 0BEA50 8015E010 00280821 */  addu  $at, $at, $t0
/* 0BEA54 8015E014 46040182 */  mul.s $f6, $f0, $f4
/* 0BEA58 8015E018 44804000 */  mtc1  $zero, $f8
/* 0BEA5C 8015E01C 3C09800E */  lui   $t1, %hi(D_800E6690) # $t1, 0x800e
/* 0BEA60 8015E020 25296690 */  addiu $t1, %lo(D_800E6690) # addiu $t1, $t1, 0x6690
/* 0BEA64 8015E024 3C0C801A */  lui   $t4, %hi(D_801982F8) # $t4, 0x801a
/* 0BEA68 8015E028 258C82F8 */  addiu $t4, %lo(D_801982F8) # addiu $t4, $t4, -0x7d08
/* 0BEA6C 8015E02C 3C058019 */  lui   $a1, %hi(D_801935A8) # $a1, 0x8019
/* 0BEA70 8015E030 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0BEA74 8015E034 8C6D0000 */  lw    $t5, ($v1)
/* 0BEA78 8015E038 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0BEA7C 8015E03C 44815000 */  mtc1  $at, $f10
/* 0BEA80 8015E040 000D7080 */  sll   $t6, $t5, 2
/* 0BEA84 8015E044 012E7821 */  addu  $t7, $t1, $t6
/* 0BEA88 8015E048 E5E80000 */  swc1  $f8, ($t7)
/* 0BEA8C 8015E04C 8C780000 */  lw    $t8, ($v1)
/* 0BEA90 8015E050 3C01800E */  lui   $at, 0x800e
/* 0BEA94 8015E054 24A535A8 */  addiu $a1, %lo(D_801935A8) # addiu $a1, $a1, 0x35a8
/* 0BEA98 8015E058 0018C880 */  sll   $t9, $t8, 2
/* 0BEA9C 8015E05C 00390821 */  addu  $at, $at, $t9
/* 0BEAA0 8015E060 E42A6850 */  swc1  $f10, 0x6850($at)
/* 0BEAA4 8015E064 8C620000 */  lw    $v0, ($v1)
/* 0BEAA8 8015E068 00003025 */  move  $a2, $zero
/* 0BEAAC 8015E06C 00025140 */  sll   $t2, $v0, 5
/* 0BEAB0 8015E070 254BFF80 */  addiu $t3, $t2, -0x80
/* 0BEAB4 8015E074 016C2021 */  addu  $a0, $t3, $t4
/* 0BEAB8 8015E078 0C055754 */  jal   func_80155D50_ovl3
/* 0BEABC 8015E07C 00403825 */   move  $a3, $v0
/* 0BEAC0 8015E080 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0BEAC4 8015E084 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0BEAC8 8015E088 3C18800E */  lui   $t8, 0x800e
/* 0BEACC 8015E08C 3C048019 */  lui   $a0, %hi(D_80190CA0) # $a0, 0x8019
/* 0BEAD0 8015E090 8DAE0000 */  lw    $t6, ($t5)
/* 0BEAD4 8015E094 24840CA0 */  addiu $a0, %lo(D_80190CA0) # addiu $a0, $a0, 0xca0
/* 0BEAD8 8015E098 3C063F80 */  lui   $a2, 0x3f80
/* 0BEADC 8015E09C 000E7880 */  sll   $t7, $t6, 2
/* 0BEAE0 8015E0A0 030FC021 */  addu  $t8, $t8, $t7
/* 0BEAE4 8015E0A4 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 0BEAE8 8015E0A8 0C058800 */  jal   func_80162000_ovl3
/* 0BEAEC 8015E0AC 8F050004 */   lw    $a1, 4($t8)
/* 0BEAF0 8015E0B0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0BEAF4 8015E0B4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0BEAF8 8015E0B8 8F280000 */  lw    $t0, ($t9)
/* 0BEAFC 8015E0BC 10000042 */  b     .L8015E1C8_ovl3
/* 0BEB00 8015E0C0 00084080 */   sll   $t0, $t0, 2
.L8015E0C4_ovl3:
/* 0BEB04 8015E0C4 27A4003C */  addiu $a0, $sp, 0x3c
/* 0BEB08 8015E0C8 3C05C220 */  lui   $a1, 0xc220
/* 0BEB0C 8015E0CC 0C05560E */  jal   func_80155838_ovl3
/* 0BEB10 8015E0D0 24060003 */   li    $a2, 3
/* 0BEB14 8015E0D4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BEB18 8015E0D8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BEB1C 8015E0DC AFA20030 */  sw    $v0, 0x30($sp)
/* 0BEB20 8015E0E0 3C0A800F */  lui   $t2, 0x800f
/* 0BEB24 8015E0E4 8C680000 */  lw    $t0, ($v1)
/* 0BEB28 8015E0E8 44802000 */  mtc1  $zero, $f4
/* 0BEB2C 8015E0EC 3C01C108 */  lui   $at, 0xc108
/* 0BEB30 8015E0F0 00084080 */  sll   $t0, $t0, 2
/* 0BEB34 8015E0F4 01485021 */  addu  $t2, $t2, $t0
/* 0BEB38 8015E0F8 8D4A8AE0 */  lw    $t2, -0x7520($t2)
/* 0BEB3C 8015E0FC 3C058019 */  lui   $a1, %hi(D_801935E4) # $a1, 0x8019
/* 0BEB40 8015E100 314B0004 */  andi  $t3, $t2, 4
/* 0BEB44 8015E104 15600007 */  bnez  $t3, .L8015E124_ovl3
/* 0BEB48 8015E108 3C0A801A */   lui   $t2, %hi(D_801982F8) # $t2, 0x801a
/* 0BEB4C 8015E10C 3C01C188 */  li    $at, 0xC1880000 # -17.000000
/* 0BEB50 8015E110 44818000 */  mtc1  $at, $f16
/* 0BEB54 8015E114 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0BEB58 8015E118 00280821 */  addu  $at, $at, $t0
/* 0BEB5C 8015E11C 10000005 */  b     .L8015E134_ovl3
/* 0BEB60 8015E120 E4303210 */   swc1  $f16, 0x3210($at)
.L8015E124_ovl3:
/* 0BEB64 8015E124 44819000 */  mtc1  $at, $f18
/* 0BEB68 8015E128 3C01800E */  lui   $at, 0x800e
/* 0BEB6C 8015E12C 00280821 */  addu  $at, $at, $t0
/* 0BEB70 8015E130 E4323210 */  swc1  $f18, 0x3210($at)
.L8015E134_ovl3:
/* 0BEB74 8015E134 8C6C0000 */  lw    $t4, ($v1)
/* 0BEB78 8015E138 3C01800E */  lui   $at, 0x800e
/* 0BEB7C 8015E13C 254A82F8 */  addiu $t2, %lo(D_801982F8) # addiu $t2, $t2, -0x7d08
/* 0BEB80 8015E140 000C6880 */  sll   $t5, $t4, 2
/* 0BEB84 8015E144 002D0821 */  addu  $at, $at, $t5
/* 0BEB88 8015E148 E4243750 */  swc1  $f4, 0x3750($at)
/* 0BEB8C 8015E14C 8C6E0000 */  lw    $t6, ($v1)
/* 0BEB90 8015E150 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 0BEB94 8015E154 44813000 */  mtc1  $at, $f6
/* 0BEB98 8015E158 3C01800E */  lui   $at, 0x800e
/* 0BEB9C 8015E15C 000E7880 */  sll   $t7, $t6, 2
/* 0BEBA0 8015E160 002F0821 */  addu  $at, $at, $t7
/* 0BEBA4 8015E164 E4263C90 */  swc1  $f6, 0x3c90($at)
/* 0BEBA8 8015E168 8C620000 */  lw    $v0, ($v1)
/* 0BEBAC 8015E16C 24A535E4 */  addiu $a1, %lo(D_801935E4) # addiu $a1, $a1, 0x35e4
/* 0BEBB0 8015E170 00003025 */  move  $a2, $zero
/* 0BEBB4 8015E174 0002C140 */  sll   $t8, $v0, 5
/* 0BEBB8 8015E178 2719FF80 */  addiu $t9, $t8, -0x80
/* 0BEBBC 8015E17C 032A2021 */  addu  $a0, $t9, $t2
/* 0BEBC0 8015E180 0C055754 */  jal   func_80155D50_ovl3
/* 0BEBC4 8015E184 00403825 */   move  $a3, $v0
/* 0BEBC8 8015E188 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BEBCC 8015E18C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BEBD0 8015E190 3C0E800E */  lui   $t6, 0x800e
/* 0BEBD4 8015E194 3C048019 */  lui   $a0, %hi(D_80190CE4) # $a0, 0x8019
/* 0BEBD8 8015E198 8D6C0000 */  lw    $t4, ($t3)
/* 0BEBDC 8015E19C 24840CE4 */  addiu $a0, %lo(D_80190CE4) # addiu $a0, $a0, 0xce4
/* 0BEBE0 8015E1A0 3C063F80 */  lui   $a2, 0x3f80
/* 0BEBE4 8015E1A4 000C6880 */  sll   $t5, $t4, 2
/* 0BEBE8 8015E1A8 01CD7021 */  addu  $t6, $t6, $t5
/* 0BEBEC 8015E1AC 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 0BEBF0 8015E1B0 0C058800 */  jal   func_80162000_ovl3
/* 0BEBF4 8015E1B4 8DC50004 */   lw    $a1, 4($t6)
/* 0BEBF8 8015E1B8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0BEBFC 8015E1BC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0BEC00 8015E1C0 8DE80000 */  lw    $t0, ($t7)
/* 0BEC04 8015E1C4 00084080 */  sll   $t0, $t0, 2
.L8015E1C8_ovl3:
/* 0BEC08 8015E1C8 8FB80030 */  lw    $t8, 0x30($sp)
/* 0BEC0C 8015E1CC 13000012 */  beqz  $t8, .L8015E218_ovl3
/* 0BEC10 8015E1D0 3C19800F */   lui   $t9, 0x800f
/* 0BEC14 8015E1D4 0328C821 */  addu  $t9, $t9, $t0
/* 0BEC18 8015E1D8 8F39B6A0 */  lw    $t9, -0x4960($t9)
/* 0BEC1C 8015E1DC 24040002 */  li    $a0, 2
/* 0BEC20 8015E1E0 24050001 */  li    $a1, 1
/* 0BEC24 8015E1E4 1720000C */  bnez  $t9, .L8015E218_ovl3
/* 0BEC28 8015E1E8 00000000 */   nop   
/* 0BEC2C 8015E1EC 0C02A08D */  jal   func_800A8234
/* 0BEC30 8015E1F0 2406004D */   li    $a2, 77
/* 0BEC34 8015E1F4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BEC38 8015E1F8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BEC3C 8015E1FC 3C01800F */  lui   $at, 0x800f
/* 0BEC40 8015E200 8C6A0000 */  lw    $t2, ($v1)
/* 0BEC44 8015E204 000A5880 */  sll   $t3, $t2, 2
/* 0BEC48 8015E208 002B0821 */  addu  $at, $at, $t3
/* 0BEC4C 8015E20C AC22B6A0 */  sw    $v0, -0x4960($at)
/* 0BEC50 8015E210 8C680000 */  lw    $t0, ($v1)
/* 0BEC54 8015E214 00084080 */  sll   $t0, $t0, 2
.L8015E218_ovl3:
/* 0BEC58 8015E218 3C07800F */  lui   $a3, 0x800f
/* 0BEC5C 8015E21C 00E83821 */  addu  $a3, $a3, $t0
/* 0BEC60 8015E220 8CE7A520 */  lw    $a3, -0x5ae0($a3)
/* 0BEC64 8015E224 10E0006A */  beqz  $a3, .L8015E3D0_ovl3
/* 0BEC68 8015E228 3C0C800E */   lui   $t4, 0x800e
/* 0BEC6C 8015E22C 01886021 */  addu  $t4, $t4, $t0
/* 0BEC70 8015E230 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 0BEC74 8015E234 3C02800F */  lui   $v0, 0x800f
/* 0BEC78 8015E238 00481021 */  addu  $v0, $v0, $t0
/* 0BEC7C 8015E23C 8C42B4E0 */  lw    $v0, -0x4b20($v0)
/* 0BEC80 8015E240 8D850004 */  lw    $a1, 4($t4)
/* 0BEC84 8015E244 AFA70038 */  sw    $a3, 0x38($sp)
/* 0BEC88 8015E248 27A4003C */  addiu $a0, $sp, 0x3c
/* 0BEC8C 8015E24C 3406FFFF */  li    $a2, 65535
/* 0BEC90 8015E250 0C02C8D0 */  jal   func_800B2340
/* 0BEC94 8015E254 AFA20034 */   sw    $v0, 0x34($sp)
/* 0BEC98 8015E258 8FA20034 */  lw    $v0, 0x34($sp)
/* 0BEC9C 8015E25C C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 0BECA0 8015E260 8FA30038 */  lw    $v1, 0x38($sp)
/* 0BECA4 8015E264 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0BECA8 8015E268 27A4003C */  addiu $a0, $sp, 0x3c
/* 0BECAC 8015E26C 3406FFFF */  li    $a2, 65535
/* 0BECB0 8015E270 E5A80004 */  swc1  $f8, 4($t5)
/* 0BECB4 8015E274 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0BECB8 8015E278 8C6F004C */  lw    $t7, 0x4c($v1)
/* 0BECBC 8015E27C C5CA0004 */  lwc1  $f10, 4($t6)
/* 0BECC0 8015E280 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BECC4 8015E284 E5EA0004 */  swc1  $f10, 4($t7)
/* 0BECC8 8015E288 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 0BECCC 8015E28C 8C58004C */  lw    $t8, 0x4c($v0)
/* 0BECD0 8015E290 E7100008 */  swc1  $f16, 8($t8)
/* 0BECD4 8015E294 8C59004C */  lw    $t9, 0x4c($v0)
/* 0BECD8 8015E298 8C6A004C */  lw    $t2, 0x4c($v1)
/* 0BECDC 8015E29C C7320008 */  lwc1  $f18, 8($t9)
/* 0BECE0 8015E2A0 3C19800E */  lui   $t9, 0x800e
/* 0BECE4 8015E2A4 E5520008 */  swc1  $f18, 8($t2)
/* 0BECE8 8015E2A8 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 0BECEC 8015E2AC 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0BECF0 8015E2B0 E564000C */  swc1  $f4, 0xc($t3)
/* 0BECF4 8015E2B4 8C4C004C */  lw    $t4, 0x4c($v0)
/* 0BECF8 8015E2B8 8C6D004C */  lw    $t5, 0x4c($v1)
/* 0BECFC 8015E2BC C586000C */  lwc1  $f6, 0xc($t4)
/* 0BED00 8015E2C0 E5A6000C */  swc1  $f6, 0xc($t5)
/* 0BED04 8015E2C4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BED08 8015E2C8 8DCF0000 */  lw    $t7, ($t6)
/* 0BED0C 8015E2CC 000FC080 */  sll   $t8, $t7, 2
/* 0BED10 8015E2D0 0338C821 */  addu  $t9, $t9, $t8
/* 0BED14 8015E2D4 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 0BED18 8015E2D8 0C02C9B6 */  jal   func_800B26D8
/* 0BED1C 8015E2DC 8F250004 */   lw    $a1, 4($t9)
/* 0BED20 8015E2E0 8FA20034 */  lw    $v0, 0x34($sp)
/* 0BED24 8015E2E4 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 0BED28 8015E2E8 8FA30038 */  lw    $v1, 0x38($sp)
/* 0BED2C 8015E2EC 8C4A004C */  lw    $t2, 0x4c($v0)
/* 0BED30 8015E2F0 3C04800F */  lui   $a0, 0x800f
/* 0BED34 8015E2F4 E5480010 */  swc1  $f8, 0x10($t2)
/* 0BED38 8015E2F8 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0BED3C 8015E2FC 8C6C004C */  lw    $t4, 0x4c($v1)
/* 0BED40 8015E300 C56A0010 */  lwc1  $f10, 0x10($t3)
/* 0BED44 8015E304 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BED48 8015E308 E58A0010 */  swc1  $f10, 0x10($t4)
/* 0BED4C 8015E30C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 0BED50 8015E310 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0BED54 8015E314 E5B00014 */  swc1  $f16, 0x14($t5)
/* 0BED58 8015E318 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0BED5C 8015E31C 8C6F004C */  lw    $t7, 0x4c($v1)
/* 0BED60 8015E320 C5D20014 */  lwc1  $f18, 0x14($t6)
/* 0BED64 8015E324 E5F20014 */  swc1  $f18, 0x14($t7)
/* 0BED68 8015E328 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 0BED6C 8015E32C 8C58004C */  lw    $t8, 0x4c($v0)
/* 0BED70 8015E330 E7040018 */  swc1  $f4, 0x18($t8)
/* 0BED74 8015E334 8C59004C */  lw    $t9, 0x4c($v0)
/* 0BED78 8015E338 8C6A004C */  lw    $t2, 0x4c($v1)
/* 0BED7C 8015E33C C7260018 */  lwc1  $f6, 0x18($t9)
/* 0BED80 8015E340 E5460018 */  swc1  $f6, 0x18($t2)
/* 0BED84 8015E344 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BED88 8015E348 8D680000 */  lw    $t0, ($t3)
/* 0BED8C 8015E34C 00084080 */  sll   $t0, $t0, 2
/* 0BED90 8015E350 00882021 */  addu  $a0, $a0, $t0
/* 0BED94 8015E354 8C84B6A0 */  lw    $a0, -0x4960($a0)
/* 0BED98 8015E358 1080001D */  beqz  $a0, .L8015E3D0_ovl3
/* 0BED9C 8015E35C 00000000 */   nop   
/* 0BEDA0 8015E360 8C6C004C */  lw    $t4, 0x4c($v1)
/* 0BEDA4 8015E364 8C8D004C */  lw    $t5, 0x4c($a0)
/* 0BEDA8 8015E368 C5880004 */  lwc1  $f8, 4($t4)
/* 0BEDAC 8015E36C E5A80004 */  swc1  $f8, 4($t5)
/* 0BEDB0 8015E370 8C6E004C */  lw    $t6, 0x4c($v1)
/* 0BEDB4 8015E374 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0BEDB8 8015E378 C5CA0008 */  lwc1  $f10, 8($t6)
/* 0BEDBC 8015E37C E5EA0008 */  swc1  $f10, 8($t7)
/* 0BEDC0 8015E380 8C78004C */  lw    $t8, 0x4c($v1)
/* 0BEDC4 8015E384 8C99004C */  lw    $t9, 0x4c($a0)
/* 0BEDC8 8015E388 C710000C */  lwc1  $f16, 0xc($t8)
/* 0BEDCC 8015E38C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BEDD0 8015E390 E730000C */  swc1  $f16, 0xc($t9)
/* 0BEDD4 8015E394 8C6A004C */  lw    $t2, 0x4c($v1)
/* 0BEDD8 8015E398 8C8B004C */  lw    $t3, 0x4c($a0)
/* 0BEDDC 8015E39C C5520010 */  lwc1  $f18, 0x10($t2)
/* 0BEDE0 8015E3A0 E5720010 */  swc1  $f18, 0x10($t3)
/* 0BEDE4 8015E3A4 8C6C004C */  lw    $t4, 0x4c($v1)
/* 0BEDE8 8015E3A8 8C8D004C */  lw    $t5, 0x4c($a0)
/* 0BEDEC 8015E3AC C5840014 */  lwc1  $f4, 0x14($t4)
/* 0BEDF0 8015E3B0 E5A40014 */  swc1  $f4, 0x14($t5)
/* 0BEDF4 8015E3B4 8C6E004C */  lw    $t6, 0x4c($v1)
/* 0BEDF8 8015E3B8 8C8F004C */  lw    $t7, 0x4c($a0)
/* 0BEDFC 8015E3BC C5C60018 */  lwc1  $f6, 0x18($t6)
/* 0BEE00 8015E3C0 E5E60018 */  swc1  $f6, 0x18($t7)
/* 0BEE04 8015E3C4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BEE08 8015E3C8 8F080000 */  lw    $t0, ($t8)
/* 0BEE0C 8015E3CC 00084080 */  sll   $t0, $t0, 2
.L8015E3D0_ovl3:
/* 0BEE10 8015E3D0 3C19800F */  lui   $t9, 0x800f
/* 0BEE14 8015E3D4 0328C821 */  addu  $t9, $t9, $t0
/* 0BEE18 8015E3D8 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 0BEE1C 8015E3DC 332A0004 */  andi  $t2, $t9, 4
/* 0BEE20 8015E3E0 1140000A */  beqz  $t2, .L8015E40C_ovl3
/* 0BEE24 8015E3E4 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 0BEE28 8015E3E8 44816000 */  mtc1  $at, $f12
/* 0BEE2C 8015E3EC 0C02BB30 */  jal   func_800AECC0
/* 0BEE30 8015E3F0 00000000 */   nop   
/* 0BEE34 8015E3F4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BEE38 8015E3F8 44816000 */  mtc1  $at, $f12
/* 0BEE3C 8015E3FC 0C02BB48 */  jal   func_800AED20
/* 0BEE40 8015E400 00000000 */   nop   
/* 0BEE44 8015E404 1000000A */  b     .L8015E430_ovl3
/* 0BEE48 8015E408 8FBF0014 */   lw    $ra, 0x14($sp)
.L8015E40C_ovl3:
/* 0BEE4C 8015E40C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0BEE50 8015E410 44816000 */  mtc1  $at, $f12
/* 0BEE54 8015E414 0C02BB30 */  jal   func_800AECC0
/* 0BEE58 8015E418 00000000 */   nop   
/* 0BEE5C 8015E41C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0BEE60 8015E420 44816000 */  mtc1  $at, $f12
/* 0BEE64 8015E424 0C02BB48 */  jal   func_800AED20
/* 0BEE68 8015E428 00000000 */   nop   
.L8015E42C_ovl3:
/* 0BEE6C 8015E42C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8015E430_ovl3:
/* 0BEE70 8015E430 27BD0048 */  addiu $sp, $sp, 0x48
/* 0BEE74 8015E434 03E00008 */  jr    $ra
/* 0BEE78 8015E438 00000000 */   nop   

.type func_8015DBE4_ovl3, @function
.size func_8015DBE4_ovl3, . - func_8015DBE4_ovl3

glabel func_8015E43C_ovl3
/* 0BEE7C 8015E43C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BEE80 8015E440 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BEE84 8015E444 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0BEE88 8015E448 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BEE8C 8015E44C 8DCF0000 */  lw    $t7, ($t6)
/* 0BEE90 8015E450 3C19800F */  lui   $t9, 0x800f
/* 0BEE94 8015E454 000FC080 */  sll   $t8, $t7, 2
/* 0BEE98 8015E458 0338C821 */  addu  $t9, $t9, $t8
/* 0BEE9C 8015E45C 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0BEEA0 8015E460 0C058738 */  jal   func_80161CE0_ovl3
/* 0BEEA4 8015E464 AFB90024 */   sw    $t9, 0x24($sp)
/* 0BEEA8 8015E468 00002025 */  move  $a0, $zero
/* 0BEEAC 8015E46C 24050000 */  li    $a1, 0
/* 0BEEB0 8015E470 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BEEB4 8015E474 3C0641A0 */   lui   $a2, 0x41a0
/* 0BEEB8 8015E478 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BEEBC 8015E47C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BEEC0 8015E480 3C01800E */  lui   $at, 0x800e
/* 0BEEC4 8015E484 24090001 */  li    $t1, 1
/* 0BEEC8 8015E488 8C4A0000 */  lw    $t2, ($v0)
/* 0BEECC 8015E48C 3C0C800B */  lui   $t4, %hi(func_800B4954) # $t4, 0x800b
/* 0BEED0 8015E490 258C4954 */  addiu $t4, %lo(func_800B4954) # addiu $t4, $t4, 0x4954
/* 0BEED4 8015E494 000A5880 */  sll   $t3, $t2, 2
/* 0BEED8 8015E498 002B0821 */  addu  $at, $at, $t3
/* 0BEEDC 8015E49C AC290650 */  sw    $t1, 0x650($at)
/* 0BEEE0 8015E4A0 8C4D0000 */  lw    $t5, ($v0)
/* 0BEEE4 8015E4A4 3C01800E */  lui   $at, 0x800e
/* 0BEEE8 8015E4A8 3C0F8016 */  lui   $t7, %hi(D_8015E754) # $t7, 0x8016
/* 0BEEEC 8015E4AC 000D7080 */  sll   $t6, $t5, 2
/* 0BEEF0 8015E4B0 002E0821 */  addu  $at, $at, $t6
/* 0BEEF4 8015E4B4 AC2CEF90 */  sw    $t4, -0x1070($at)
/* 0BEEF8 8015E4B8 8C580000 */  lw    $t8, ($v0)
/* 0BEEFC 8015E4BC 3C01800E */  lui   $at, 0x800e
/* 0BEF00 8015E4C0 25EFE754 */  addiu $t7, %lo(D_8015E754) # addiu $t7, $t7, -0x18ac
/* 0BEF04 8015E4C4 0018C880 */  sll   $t9, $t8, 2
/* 0BEF08 8015E4C8 00390821 */  addu  $at, $at, $t9
/* 0BEF0C 8015E4CC AC2FF150 */  sw    $t7, -0xeb0($at)
/* 0BEF10 8015E4D0 8C490000 */  lw    $t1, ($v0)
/* 0BEF14 8015E4D4 8FA80024 */  lw    $t0, 0x24($sp)
/* 0BEF18 8015E4D8 3C01800F */  lui   $at, 0x800f
/* 0BEF1C 8015E4DC 00095880 */  sll   $t3, $t1, 2
/* 0BEF20 8015E4E0 002B0821 */  addu  $at, $at, $t3
/* 0BEF24 8015E4E4 240A000A */  li    $t2, 10
/* 0BEF28 8015E4E8 AC2A9720 */  sw    $t2, -0x68e0($at)
/* 0BEF2C 8015E4EC 2D010005 */  sltiu $at, $t0, 5
/* 0BEF30 8015E4F0 14200009 */  bnez  $at, .L8015E518_ovl3
/* 0BEF34 8015E4F4 00087880 */   sll   $t7, $t0, 2
/* 0BEF38 8015E4F8 8C4D0000 */  lw    $t5, ($v0)
/* 0BEF3C 8015E4FC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0BEF40 8015E500 44812000 */  mtc1  $at, $f4
/* 0BEF44 8015E504 3C01800E */  lui   $at, 0x800e
/* 0BEF48 8015E508 000D6080 */  sll   $t4, $t5, 2
/* 0BEF4C 8015E50C 002C0821 */  addu  $at, $at, $t4
/* 0BEF50 8015E510 10000008 */  b     .L8015E534_ovl3
/* 0BEF54 8015E514 E4246A10 */   swc1  $f4, 0x6a10($at)
.L8015E518_ovl3:
/* 0BEF58 8015E518 8C4E0000 */  lw    $t6, ($v0)
/* 0BEF5C 8015E51C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BEF60 8015E520 44813000 */  mtc1  $at, $f6
/* 0BEF64 8015E524 3C01800E */  lui   $at, 0x800e
/* 0BEF68 8015E528 000EC080 */  sll   $t8, $t6, 2
/* 0BEF6C 8015E52C 00380821 */  addu  $at, $at, $t8
/* 0BEF70 8015E530 E4266A10 */  swc1  $f6, 0x6a10($at)
.L8015E534_ovl3:
/* 0BEF74 8015E534 8C490000 */  lw    $t1, ($v0)
/* 0BEF78 8015E538 3C198019 */  lui   $t9, 0x8019
/* 0BEF7C 8015E53C 032FC821 */  addu  $t9, $t9, $t7
/* 0BEF80 8015E540 8F3967A4 */  lw    $t9, 0x67a4($t9)
/* 0BEF84 8015E544 3C01800E */  lui   $at, 0x800e
/* 0BEF88 8015E548 00095080 */  sll   $t2, $t1, 2
/* 0BEF8C 8015E54C 002A0821 */  addu  $at, $at, $t2
/* 0BEF90 8015E550 AC390490 */  sw    $t9, 0x0490($at)
/* 0BEF94 8015E554 8C430000 */  lw    $v1, ($v0)
/* 0BEF98 8015E558 3C04800E */  lui   $a0, 0x800e
/* 0BEF9C 8015E55C 3C0C8019 */  lui   $t4, %hi(D_80197F60) # $t4, 0x8019
/* 0BEFA0 8015E560 2467FFFC */  addiu $a3, $v1, -4
/* 0BEFA4 8015E564 00076880 */  sll   $t5, $a3, 2
/* 0BEFA8 8015E568 01A76823 */  subu  $t5, $t5, $a3
/* 0BEFAC 8015E56C 000D68C0 */  sll   $t5, $t5, 3
/* 0BEFB0 8015E570 01A76823 */  subu  $t5, $t5, $a3
/* 0BEFB4 8015E574 3C18801A */  lui   $t8, %hi(D_801982F8) # $t8, 0x801a
/* 0BEFB8 8015E578 00035880 */  sll   $t3, $v1, 2
/* 0BEFBC 8015E57C 008B2021 */  addu  $a0, $a0, $t3
/* 0BEFC0 8015E580 271882F8 */  addiu $t8, %lo(D_801982F8) # addiu $t8, $t8, -0x7d08
/* 0BEFC4 8015E584 000D6880 */  sll   $t5, $t5, 2
/* 0BEFC8 8015E588 00077140 */  sll   $t6, $a3, 5
/* 0BEFCC 8015E58C 258C7F60 */  addiu $t4, %lo(D_80197F60) # addiu $t4, $t4, 0x7f60
/* 0BEFD0 8015E590 01AC2821 */  addu  $a1, $t5, $t4
/* 0BEFD4 8015E594 01D83021 */  addu  $a2, $t6, $t8
/* 0BEFD8 8015E598 0C055192 */  jal   func_80154648_ovl3
/* 0BEFDC 8015E59C 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0BEFE0 8015E5A0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BEFE4 8015E5A4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BEFE8 8015E5A8 3C018019 */  lui   $at, %hi(D_80197098) # $at, 0x8019
/* 0BEFEC 8015E5AC C4207098 */  lwc1  $f0, %lo(D_80197098)($at)
/* 0BEFF0 8015E5B0 8C4F0000 */  lw    $t7, ($v0)
/* 0BEFF4 8015E5B4 3C01800E */  lui   $at, 0x800e
/* 0BEFF8 8015E5B8 3C040002 */  lui   $a0, (0x0002003C >> 16) # lui $a0, 2
/* 0BEFFC 8015E5BC 000F4880 */  sll   $t1, $t7, 2
/* 0BF000 8015E5C0 00290821 */  addu  $at, $at, $t1
/* 0BF004 8015E5C4 E4204550 */  swc1  $f0, 0x4550($at)
/* 0BF008 8015E5C8 8C590000 */  lw    $t9, ($v0)
/* 0BF00C 8015E5CC 3C01800E */  lui   $at, 0x800e
/* 0BF010 8015E5D0 3484003C */  ori   $a0, (0x0002003C & 0xFFFF) # ori $a0, $a0, 0x3c
/* 0BF014 8015E5D4 00195080 */  sll   $t2, $t9, 2
/* 0BF018 8015E5D8 002A0821 */  addu  $at, $at, $t2
/* 0BF01C 8015E5DC E4204710 */  swc1  $f0, 0x4710($at)
/* 0BF020 8015E5E0 8C4B0000 */  lw    $t3, ($v0)
/* 0BF024 8015E5E4 3C01800E */  lui   $at, 0x800e
/* 0BF028 8015E5E8 24050021 */  li    $a1, 33
/* 0BF02C 8015E5EC 000B6880 */  sll   $t5, $t3, 2
/* 0BF030 8015E5F0 002D0821 */  addu  $at, $at, $t5
/* 0BF034 8015E5F4 24060010 */  li    $a2, 16
/* 0BF038 8015E5F8 0C02A619 */  jal   func_800A9864
/* 0BF03C 8015E5FC E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BF040 8015E600 8FAC0024 */  lw    $t4, 0x24($sp)
/* 0BF044 8015E604 3C188019 */  lui   $t8, %hi(D_80196764) # $t8, 0x8019
/* 0BF048 8015E608 27186764 */  addiu $t8, %lo(D_80196764) # addiu $t8, $t8, 0x6764
/* 0BF04C 8015E60C 000C70C0 */  sll   $t6, $t4, 3
/* 0BF050 8015E610 01D81021 */  addu  $v0, $t6, $t8
/* 0BF054 8015E614 C44C0000 */  lwc1  $f12, ($v0)
/* 0BF058 8015E618 0C00B5B8 */  jal   sinf
/* 0BF05C 8015E61C AFA2001C */   sw    $v0, 0x1c($sp)
/* 0BF060 8015E620 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0BF064 8015E624 44814000 */  mtc1  $at, $f8
/* 0BF068 8015E628 8FAF001C */  lw    $t7, 0x1c($sp)
/* 0BF06C 8015E62C 46080082 */  mul.s $f2, $f0, $f8
/* 0BF070 8015E630 C5EC0000 */  lwc1  $f12, ($t7)
/* 0BF074 8015E634 0C00D604 */  jal   cosf
/* 0BF078 8015E638 E7A2002C */   swc1  $f2, 0x2c($sp)
/* 0BF07C 8015E63C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BF080 8015E640 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BF084 8015E644 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 0BF088 8015E648 3C01800E */  lui   $at, 0x800e
/* 0BF08C 8015E64C 8C490000 */  lw    $t1, ($v0)
/* 0BF090 8015E650 44806000 */  mtc1  $zero, $f12
/* 0BF094 8015E654 44807000 */  mtc1  $zero, $f14
/* 0BF098 8015E658 0009C880 */  sll   $t9, $t1, 2
/* 0BF09C 8015E65C 00390821 */  addu  $at, $at, $t9
/* 0BF0A0 8015E660 E42264D0 */  swc1  $f2, 0x64d0($at)
/* 0BF0A4 8015E664 8C4A0000 */  lw    $t2, ($v0)
/* 0BF0A8 8015E668 460C103C */  c.lt.s $f2, $f12
/* 0BF0AC 8015E66C 3C01800E */  lui   $at, 0x800e
/* 0BF0B0 8015E670 000A5880 */  sll   $t3, $t2, 2
/* 0BF0B4 8015E674 002B0821 */  addu  $at, $at, $t3
/* 0BF0B8 8015E678 45000008 */  bc1f  .L8015E69C_ovl3
/* 0BF0BC 8015E67C E42E6690 */   swc1  $f14, 0x6690($at)
/* 0BF0C0 8015E680 8C4D0000 */  lw    $t5, ($v0)
/* 0BF0C4 8015E684 3C01800E */  lui   $at, 0x800e
/* 0BF0C8 8015E688 46001287 */  neg.s $f10, $f2
/* 0BF0CC 8015E68C 000D6080 */  sll   $t4, $t5, 2
/* 0BF0D0 8015E690 002C0821 */  addu  $at, $at, $t4
/* 0BF0D4 8015E694 10000006 */  b     .L8015E6B0_ovl3
/* 0BF0D8 8015E698 E42A6850 */   swc1  $f10, 0x6850($at)
.L8015E69C_ovl3:
/* 0BF0DC 8015E69C 8C4E0000 */  lw    $t6, ($v0)
/* 0BF0E0 8015E6A0 3C01800E */  lui   $at, 0x800e
/* 0BF0E4 8015E6A4 000EC080 */  sll   $t8, $t6, 2
/* 0BF0E8 8015E6A8 00380821 */  addu  $at, $at, $t8
/* 0BF0EC 8015E6AC E4226850 */  swc1  $f2, 0x6850($at)
.L8015E6B0_ovl3:
/* 0BF0F0 8015E6B0 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0BF0F4 8015E6B4 44818000 */  mtc1  $at, $f16
/* 0BF0F8 8015E6B8 8C4F0000 */  lw    $t7, ($v0)
/* 0BF0FC 8015E6BC 3C01800E */  lui   $at, 0x800e
/* 0BF100 8015E6C0 46100082 */  mul.s $f2, $f0, $f16
/* 0BF104 8015E6C4 000F4880 */  sll   $t1, $t7, 2
/* 0BF108 8015E6C8 00290821 */  addu  $at, $at, $t1
/* 0BF10C 8015E6CC E4223210 */  swc1  $f2, 0x3210($at)
/* 0BF110 8015E6D0 8C590000 */  lw    $t9, ($v0)
/* 0BF114 8015E6D4 460C103C */  c.lt.s $f2, $f12
/* 0BF118 8015E6D8 3C01800E */  lui   $at, 0x800e
/* 0BF11C 8015E6DC 00195080 */  sll   $t2, $t9, 2
/* 0BF120 8015E6E0 002A0821 */  addu  $at, $at, $t2
/* 0BF124 8015E6E4 45000008 */  bc1f  .L8015E708_ovl3
/* 0BF128 8015E6E8 E42E3750 */   swc1  $f14, 0x3750($at)
/* 0BF12C 8015E6EC 8C4B0000 */  lw    $t3, ($v0)
/* 0BF130 8015E6F0 3C01800E */  lui   $at, 0x800e
/* 0BF134 8015E6F4 46001487 */  neg.s $f18, $f2
/* 0BF138 8015E6F8 000B6880 */  sll   $t5, $t3, 2
/* 0BF13C 8015E6FC 002D0821 */  addu  $at, $at, $t5
/* 0BF140 8015E700 10000006 */  b     .L8015E71C_ovl3
/* 0BF144 8015E704 E4323C90 */   swc1  $f18, 0x3c90($at)
.L8015E708_ovl3:
/* 0BF148 8015E708 8C4C0000 */  lw    $t4, ($v0)
/* 0BF14C 8015E70C 3C01800E */  lui   $at, 0x800e
/* 0BF150 8015E710 000C7080 */  sll   $t6, $t4, 2
/* 0BF154 8015E714 002E0821 */  addu  $at, $at, $t6
/* 0BF158 8015E718 E4223C90 */  swc1  $f2, 0x3c90($at)
.L8015E71C_ovl3:
/* 0BF15C 8015E71C 8C4F0000 */  lw    $t7, ($v0)
/* 0BF160 8015E720 3C19800E */  lui   $t9, 0x800e
/* 0BF164 8015E724 8FB8001C */  lw    $t8, 0x1c($sp)
/* 0BF168 8015E728 000F4880 */  sll   $t1, $t7, 2
/* 0BF16C 8015E72C 0329C821 */  addu  $t9, $t9, $t1
/* 0BF170 8015E730 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 0BF174 8015E734 C7040004 */  lwc1  $f4, 4($t8)
/* 0BF178 8015E738 8F2A0004 */  lw    $t2, 4($t9)
/* 0BF17C 8015E73C 0C02BE85 */  jal   func_800AFA14
/* 0BF180 8015E740 E5440030 */   swc1  $f4, 0x30($t2)
/* 0BF184 8015E744 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BF188 8015E748 27BD0030 */  addiu $sp, $sp, 0x30
/* 0BF18C 8015E74C 03E00008 */  jr    $ra
/* 0BF190 8015E750 00000000 */   nop   

.type func_8015E43C_ovl3, @function
.size func_8015E43C_ovl3, . - func_8015E43C_ovl3

glabel func_8015E754_ovl3
/* 0BF194 8015E754 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0BF198 8015E758 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 0BF19C 8015E75C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0BF1A0 8015E760 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0BF1A4 8015E764 AFA40028 */  sw    $a0, 0x28($sp)
/* 0BF1A8 8015E768 8CC20000 */  lw    $v0, ($a2)
/* 0BF1AC 8015E76C 3C01800E */  lui   $at, 0x800e
/* 0BF1B0 8015E770 3C0E800E */  lui   $t6, 0x800e
/* 0BF1B4 8015E774 00021080 */  sll   $v0, $v0, 2
/* 0BF1B8 8015E778 00220821 */  addu  $at, $at, $v0
/* 0BF1BC 8015E77C C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BF1C0 8015E780 3C01800E */  lui   $at, 0x800e
/* 0BF1C4 8015E784 00220821 */  addu  $at, $at, $v0
/* 0BF1C8 8015E788 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BF1CC 8015E78C 8CC20000 */  lw    $v0, ($a2)
/* 0BF1D0 8015E790 3C0F800F */  lui   $t7, 0x800f
/* 0BF1D4 8015E794 00021080 */  sll   $v0, $v0, 2
/* 0BF1D8 8015E798 01C27021 */  addu  $t6, $t6, $v0
/* 0BF1DC 8015E79C 8DCE6310 */  lw    $t6, 0x6310($t6)
/* 0BF1E0 8015E7A0 01E27821 */  addu  $t7, $t7, $v0
/* 0BF1E4 8015E7A4 15C00031 */  bnez  $t6, .L8015E86C_ovl3
/* 0BF1E8 8015E7A8 00000000 */   nop   
/* 0BF1EC 8015E7AC 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 0BF1F0 8015E7B0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0BF1F4 8015E7B4 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0BF1F8 8015E7B8 15E0002C */  bnez  $t7, .L8015E86C_ovl3
/* 0BF1FC 8015E7BC 00581821 */   addu  $v1, $v0, $t8
/* 0BF200 8015E7C0 8C640000 */  lw    $a0, ($v1)
/* 0BF204 8015E7C4 3C098019 */  lui   $t1, %hi(D_80197F60) # $t1, 0x8019
/* 0BF208 8015E7C8 25297F60 */  addiu $t1, %lo(D_80197F60) # addiu $t1, $t1, 0x7f60
/* 0BF20C 8015E7CC 2499FFFF */  addiu $t9, $a0, -1
/* 0BF210 8015E7D0 10800026 */  beqz  $a0, .L8015E86C_ovl3
/* 0BF214 8015E7D4 AC790000 */   sw    $t9, ($v1)
/* 0BF218 8015E7D8 8CC20000 */  lw    $v0, ($a2)
/* 0BF21C 8015E7DC 3C0B801A */  lui   $t3, %hi(D_801982F8) # $t3, 0x801a
/* 0BF220 8015E7E0 256B82F8 */  addiu $t3, %lo(D_801982F8) # addiu $t3, $t3, -0x7d08
/* 0BF224 8015E7E4 2442FFFC */  addiu $v0, $v0, -4
/* 0BF228 8015E7E8 00024080 */  sll   $t0, $v0, 2
/* 0BF22C 8015E7EC 01024023 */  subu  $t0, $t0, $v0
/* 0BF230 8015E7F0 000840C0 */  sll   $t0, $t0, 3
/* 0BF234 8015E7F4 01024023 */  subu  $t0, $t0, $v0
/* 0BF238 8015E7F8 00084080 */  sll   $t0, $t0, 2
/* 0BF23C 8015E7FC 00025140 */  sll   $t2, $v0, 5
/* 0BF240 8015E800 014B2821 */  addu  $a1, $t2, $t3
/* 0BF244 8015E804 0C055543 */  jal   func_8015550C_ovl3
/* 0BF248 8015E808 01092021 */   addu  $a0, $t0, $t1
/* 0BF24C 8015E80C 0C058854 */  jal   func_80162150_ovl3
/* 0BF250 8015E810 AFA20024 */   sw    $v0, 0x24($sp)
/* 0BF254 8015E814 8FAC0024 */  lw    $t4, 0x24($sp)
/* 0BF258 8015E818 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0BF25C 8015E81C 15800013 */  bnez  $t4, .L8015E86C_ovl3
/* 0BF260 8015E820 00000000 */   nop   
/* 0BF264 8015E824 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0BF268 8015E828 3C0E800F */  lui   $t6, 0x800f
/* 0BF26C 8015E82C 3C048019 */  lui   $a0, %hi(D_80190D4C) # $a0, 0x8019
/* 0BF270 8015E830 8DA20000 */  lw    $v0, ($t5)
/* 0BF274 8015E834 3C0F800E */  lui   $t7, 0x800e
/* 0BF278 8015E838 24840D4C */  addiu $a0, %lo(D_80190D4C) # addiu $a0, $a0, 0xd4c
/* 0BF27C 8015E83C 00021080 */  sll   $v0, $v0, 2
/* 0BF280 8015E840 01C27021 */  addu  $t6, $t6, $v0
/* 0BF284 8015E844 8DCE8920 */  lw    $t6, -0x76e0($t6)
/* 0BF288 8015E848 01E27821 */  addu  $t7, $t7, $v0
/* 0BF28C 8015E84C 15C00007 */  bnez  $t6, .L8015E86C_ovl3
/* 0BF290 8015E850 00000000 */   nop   
/* 0BF294 8015E854 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 0BF298 8015E858 3C063F80 */  lui   $a2, 0x3f80
/* 0BF29C 8015E85C 0C058800 */  jal   func_80162000_ovl3
/* 0BF2A0 8015E860 8DE50004 */   lw    $a1, 4($t7)
/* 0BF2A4 8015E864 1000001B */  b     .L8015E8D4_ovl3
/* 0BF2A8 8015E868 8FBF001C */   lw    $ra, 0x1c($sp)
.L8015E86C_ovl3:
/* 0BF2AC 8015E86C 0C029D9E */  jal   play_sound
/* 0BF2B0 8015E870 24040225 */   li    $a0, 549
/* 0BF2B4 8015E874 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BF2B8 8015E878 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BF2BC 8015E87C 3C01800E */  lui   $at, 0x800e
/* 0BF2C0 8015E880 3C07800E */  lui   $a3, 0x800e
/* 0BF2C4 8015E884 8F020000 */  lw    $v0, ($t8)
/* 0BF2C8 8015E888 24040002 */  li    $a0, 2
/* 0BF2CC 8015E88C 24050001 */  li    $a1, 1
/* 0BF2D0 8015E890 00021080 */  sll   $v0, $v0, 2
/* 0BF2D4 8015E894 00220821 */  addu  $at, $at, $v0
/* 0BF2D8 8015E898 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0BF2DC 8015E89C 3C01800E */  lui   $at, 0x800e
/* 0BF2E0 8015E8A0 00220821 */  addu  $at, $at, $v0
/* 0BF2E4 8015E8A4 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0BF2E8 8015E8A8 00E23821 */  addu  $a3, $a3, $v0
/* 0BF2EC 8015E8AC 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 0BF2F0 8015E8B0 24060043 */  li    $a2, 67
/* 0BF2F4 8015E8B4 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0BF2F8 8015E8B8 0C029FDD */  jal   func_800A7F74
/* 0BF2FC 8015E8BC E7A80014 */   swc1  $f8, 0x14($sp)
/* 0BF300 8015E8C0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0BF304 8015E8C4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0BF308 8015E8C8 0C02C640 */  jal   func_800B1900
/* 0BF30C 8015E8CC 97240002 */   lhu   $a0, 2($t9)
/* 0BF310 8015E8D0 8FBF001C */  lw    $ra, 0x1c($sp)
.L8015E8D4_ovl3:
/* 0BF314 8015E8D4 27BD0028 */  addiu $sp, $sp, 0x28
/* 0BF318 8015E8D8 03E00008 */  jr    $ra
/* 0BF31C 8015E8DC 00000000 */   nop   

.type func_8015E754_ovl3, @function
.size func_8015E754_ovl3, . - func_8015E754_ovl3

glabel func_8015E8E0_ovl3
/* 0BF320 8015E8E0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0BF324 8015E8E4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BF328 8015E8E8 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0BF32C 8015E8EC 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0BF330 8015E8F0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BF334 8015E8F4 8E500000 */  lw    $s0, ($s2)
/* 0BF338 8015E8F8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BF33C 8015E8FC AFB30020 */  sw    $s3, 0x20($sp)
/* 0BF340 8015E900 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BF344 8015E904 8E0E0000 */  lw    $t6, ($s0)
/* 0BF348 8015E908 44802000 */  mtc1  $zero, $f4
/* 0BF34C 8015E90C 3C01800F */  lui   $at, 0x800f
/* 0BF350 8015E910 000E7880 */  sll   $t7, $t6, 2
/* 0BF354 8015E914 002F0821 */  addu  $at, $at, $t7
/* 0BF358 8015E918 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 0BF35C 8015E91C 8E180000 */  lw    $t8, ($s0)
/* 0BF360 8015E920 3C05800F */  lui   $a1, %hi(D_800E9FE0) # $a1, 0x800f
/* 0BF364 8015E924 24A59FE0 */  addiu $a1, %lo(D_800E9FE0) # addiu $a1, $a1, -0x6020
/* 0BF368 8015E928 0018C880 */  sll   $t9, $t8, 2
/* 0BF36C 8015E92C 00B95821 */  addu  $t3, $a1, $t9
/* 0BF370 8015E930 AD600000 */  sw    $zero, ($t3)
/* 0BF374 8015E934 8E020000 */  lw    $v0, ($s0)
/* 0BF378 8015E938 3C01800F */  lui   $at, 0x800f
/* 0BF37C 8015E93C 3C13800F */  lui   $s3, %hi(D_800E9AA0) # $s3, 0x800f
/* 0BF380 8015E940 00021080 */  sll   $v0, $v0, 2
/* 0BF384 8015E944 00A26021 */  addu  $t4, $a1, $v0
/* 0BF388 8015E948 8D830000 */  lw    $v1, ($t4)
/* 0BF38C 8015E94C 00220821 */  addu  $at, $at, $v0
/* 0BF390 8015E950 26739AA0 */  addiu $s3, %lo(D_800E9AA0) # addiu $s3, $s3, -0x6560
/* 0BF394 8015E954 AC239C60 */  sw    $v1, -0x63a0($at)
/* 0BF398 8015E958 8E0D0000 */  lw    $t5, ($s0)
/* 0BF39C 8015E95C 3C01800F */  lui   $at, 0x800f
/* 0BF3A0 8015E960 000D7080 */  sll   $t6, $t5, 2
/* 0BF3A4 8015E964 026E7821 */  addu  $t7, $s3, $t6
/* 0BF3A8 8015E968 ADE30000 */  sw    $v1, ($t7)
/* 0BF3AC 8015E96C 8E180000 */  lw    $t8, ($s0)
/* 0BF3B0 8015E970 0018C880 */  sll   $t9, $t8, 2
/* 0BF3B4 8015E974 00390821 */  addu  $at, $at, $t9
/* 0BF3B8 8015E978 0C058738 */  jal   func_80161CE0_ovl3
/* 0BF3BC 8015E97C AC2398E0 */   sw    $v1, -0x6720($at)
/* 0BF3C0 8015E980 00002025 */  move  $a0, $zero
/* 0BF3C4 8015E984 24050000 */  li    $a1, 0
/* 0BF3C8 8015E988 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BF3CC 8015E98C 3C0641A0 */   lui   $a2, 0x41a0
/* 0BF3D0 8015E990 8E500000 */  lw    $s0, ($s2)
/* 0BF3D4 8015E994 3C0B800B */  lui   $t3, %hi(func_800B4954) # $t3, 0x800b
/* 0BF3D8 8015E998 3C01800E */  lui   $at, 0x800e
/* 0BF3DC 8015E99C 8E0C0000 */  lw    $t4, ($s0)
/* 0BF3E0 8015E9A0 256B4954 */  addiu $t3, %lo(func_800B4954) # addiu $t3, $t3, 0x4954
/* 0BF3E4 8015E9A4 3C0E8016 */  lui   $t6, %hi(D_8015ED2C) # $t6, 0x8016
/* 0BF3E8 8015E9A8 000C6880 */  sll   $t5, $t4, 2
/* 0BF3EC 8015E9AC 002D0821 */  addu  $at, $at, $t5
/* 0BF3F0 8015E9B0 AC2BEF90 */  sw    $t3, -0x1070($at)
/* 0BF3F4 8015E9B4 8E0F0000 */  lw    $t7, ($s0)
/* 0BF3F8 8015E9B8 3C01800E */  lui   $at, 0x800e
/* 0BF3FC 8015E9BC 25CEED2C */  addiu $t6, %lo(D_8015ED2C) # addiu $t6, $t6, -0x12d4
/* 0BF400 8015E9C0 000FC080 */  sll   $t8, $t7, 2
/* 0BF404 8015E9C4 00380821 */  addu  $at, $at, $t8
/* 0BF408 8015E9C8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 0BF40C 8015E9CC 8E190000 */  lw    $t9, ($s0)
/* 0BF410 8015E9D0 44803000 */  mtc1  $zero, $f6
/* 0BF414 8015E9D4 3C01800E */  lui   $at, 0x800e
/* 0BF418 8015E9D8 00196080 */  sll   $t4, $t9, 2
/* 0BF41C 8015E9DC 002C0821 */  addu  $at, $at, $t4
/* 0BF420 8015E9E0 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0BF424 8015E9E4 8E0B0000 */  lw    $t3, ($s0)
/* 0BF428 8015E9E8 3C01800F */  lui   $at, 0x800f
/* 0BF42C 8015E9EC 3C0F8019 */  lui   $t7, %hi(D_80192EB8) # $t7, 0x8019
/* 0BF430 8015E9F0 000B6880 */  sll   $t5, $t3, 2
/* 0BF434 8015E9F4 002D0821 */  addu  $at, $at, $t5
/* 0BF438 8015E9F8 AC208760 */  sw    $zero, -0x78a0($at)
/* 0BF43C 8015E9FC 8E0E0000 */  lw    $t6, ($s0)
/* 0BF440 8015EA00 3C01800E */  lui   $at, 0x800e
/* 0BF444 8015EA04 25EF2EB8 */  addiu $t7, %lo(D_80192EB8) # addiu $t7, $t7, 0x2eb8
/* 0BF448 8015EA08 000EC080 */  sll   $t8, $t6, 2
/* 0BF44C 8015EA0C 00380821 */  addu  $at, $at, $t8
/* 0BF450 8015EA10 AC2F0490 */  sw    $t7, 0x0490($at)
/* 0BF454 8015EA14 8E020000 */  lw    $v0, ($s0)
/* 0BF458 8015EA18 3C09800E */  lui   $t1, %hi(D_800E0D50) # $t1, 0x800e
/* 0BF45C 8015EA1C 25290D50 */  addiu $t1, %lo(D_800E0D50) # addiu $t1, $t1, 0xd50
/* 0BF460 8015EA20 00021080 */  sll   $v0, $v0, 2
/* 0BF464 8015EA24 0122C821 */  addu  $t9, $t1, $v0
/* 0BF468 8015EA28 8F2C0000 */  lw    $t4, ($t9)
/* 0BF46C 8015EA2C 3C11800F */  lui   $s1, %hi(D_800E8AE0) # $s1, 0x800f
/* 0BF470 8015EA30 26318AE0 */  addiu $s1, %lo(D_800E8AE0) # addiu $s1, $s1, -0x7520
/* 0BF474 8015EA34 000C5880 */  sll   $t3, $t4, 2
/* 0BF478 8015EA38 022B6821 */  addu  $t5, $s1, $t3
/* 0BF47C 8015EA3C 8DAE0000 */  lw    $t6, ($t5)
/* 0BF480 8015EA40 02227821 */  addu  $t7, $s1, $v0
/* 0BF484 8015EA44 3C0A800F */  lui   $t2, %hi(D_800E8920) # $t2, 0x800f
/* 0BF488 8015EA48 ADEE0000 */  sw    $t6, ($t7)
/* 0BF48C 8015EA4C 8E020000 */  lw    $v0, ($s0)
/* 0BF490 8015EA50 254A8920 */  addiu $t2, %lo(D_800E8920) # addiu $t2, $t2, -0x76e0
/* 0BF494 8015EA54 3C01800F */  lui   $at, 0x800f
/* 0BF498 8015EA58 00021080 */  sll   $v0, $v0, 2
/* 0BF49C 8015EA5C 0122C021 */  addu  $t8, $t1, $v0
/* 0BF4A0 8015EA60 8F190000 */  lw    $t9, ($t8)
/* 0BF4A4 8015EA64 01426821 */  addu  $t5, $t2, $v0
/* 0BF4A8 8015EA68 00196080 */  sll   $t4, $t9, 2
/* 0BF4AC 8015EA6C 014C5821 */  addu  $t3, $t2, $t4
/* 0BF4B0 8015EA70 8D670000 */  lw    $a3, ($t3)
/* 0BF4B4 8015EA74 3C0B8019 */  lui   $t3, %hi(D_80197F60) # $t3, 0x8019
/* 0BF4B8 8015EA78 256B7F60 */  addiu $t3, %lo(D_80197F60) # addiu $t3, $t3, 0x7f60
/* 0BF4BC 8015EA7C ADA70000 */  sw    $a3, ($t5)
/* 0BF4C0 8015EA80 8E0E0000 */  lw    $t6, ($s0)
/* 0BF4C4 8015EA84 000E7880 */  sll   $t7, $t6, 2
/* 0BF4C8 8015EA88 002F0821 */  addu  $at, $at, $t7
/* 0BF4CC 8015EA8C AC279E20 */  sw    $a3, -0x61e0($at)
/* 0BF4D0 8015EA90 8E030000 */  lw    $v1, ($s0)
/* 0BF4D4 8015EA94 3C0E801A */  lui   $t6, %hi(D_801982F8) # $t6, 0x801a
/* 0BF4D8 8015EA98 25CE82F8 */  addiu $t6, %lo(D_801982F8) # addiu $t6, $t6, -0x7d08
/* 0BF4DC 8015EA9C 2468FFFC */  addiu $t0, $v1, -4
/* 0BF4E0 8015EAA0 00086080 */  sll   $t4, $t0, 2
/* 0BF4E4 8015EAA4 01886023 */  subu  $t4, $t4, $t0
/* 0BF4E8 8015EAA8 000C60C0 */  sll   $t4, $t4, 3
/* 0BF4EC 8015EAAC 01886023 */  subu  $t4, $t4, $t0
/* 0BF4F0 8015EAB0 0003C080 */  sll   $t8, $v1, 2
/* 0BF4F4 8015EAB4 0138C821 */  addu  $t9, $t1, $t8
/* 0BF4F8 8015EAB8 000C6080 */  sll   $t4, $t4, 2
/* 0BF4FC 8015EABC 00086940 */  sll   $t5, $t0, 5
/* 0BF500 8015EAC0 01AE3021 */  addu  $a2, $t5, $t6
/* 0BF504 8015EAC4 018B2821 */  addu  $a1, $t4, $t3
/* 0BF508 8015EAC8 0C055192 */  jal   func_80154648_ovl3
/* 0BF50C 8015EACC 8F240000 */   lw    $a0, ($t9)
/* 0BF510 8015EAD0 8E500000 */  lw    $s0, ($s2)
/* 0BF514 8015EAD4 3C01800F */  lui   $at, 0x800f
/* 0BF518 8015EAD8 3C040002 */  lui   $a0, (0x0002003B >> 16) # lui $a0, 2
/* 0BF51C 8015EADC 8E0F0000 */  lw    $t7, ($s0)
/* 0BF520 8015EAE0 3484003B */  ori   $a0, (0x0002003B & 0xFFFF) # ori $a0, $a0, 0x3b
/* 0BF524 8015EAE4 000FC080 */  sll   $t8, $t7, 2
/* 0BF528 8015EAE8 00380821 */  addu  $at, $at, $t8
/* 0BF52C 8015EAEC AC208060 */  sw    $zero, -0x7fa0($at)
/* 0BF530 8015EAF0 8E190000 */  lw    $t9, ($s0)
/* 0BF534 8015EAF4 3C018013 */  lui   $at, 0x8013
/* 0BF538 8015EAF8 24180010 */  li    $t8, 16
/* 0BF53C 8015EAFC 00196080 */  sll   $t4, $t9, 2
/* 0BF540 8015EB00 022C5821 */  addu  $t3, $s1, $t4
/* 0BF544 8015EB04 8D6D0000 */  lw    $t5, ($t3)
/* 0BF548 8015EB08 31AE0004 */  andi  $t6, $t5, 4
/* 0BF54C 8015EB0C 11C00004 */  beqz  $t6, .L8015EB20_ovl3
/* 0BF550 8015EB10 240F0020 */   li    $t7, 32
/* 0BF554 8015EB14 3C018013 */  lui   $at, %hi(D_8012E7D6) # $at, 0x8013
/* 0BF558 8015EB18 10000002 */  b     .L8015EB24_ovl3
/* 0BF55C 8015EB1C A02FE7D6 */   sb    $t7, %lo(D_8012E7D6)($at)
.L8015EB20_ovl3:
/* 0BF560 8015EB20 A038E7D6 */  sb    $t8, %lo(D_8012E7D6)($at)
.L8015EB24_ovl3:
/* 0BF564 8015EB24 8E190000 */  lw    $t9, ($s0)
/* 0BF568 8015EB28 3C018019 */  lui   $at, %hi(D_8019709C) # $at, 0x8019
/* 0BF56C 8015EB2C C420709C */  lwc1  $f0, %lo(D_8019709C)($at)
/* 0BF570 8015EB30 3C01800E */  lui   $at, 0x800e
/* 0BF574 8015EB34 00196080 */  sll   $t4, $t9, 2
/* 0BF578 8015EB38 002C0821 */  addu  $at, $at, $t4
/* 0BF57C 8015EB3C E4204550 */  swc1  $f0, 0x4550($at)
/* 0BF580 8015EB40 8E0B0000 */  lw    $t3, ($s0)
/* 0BF584 8015EB44 3C01800E */  lui   $at, 0x800e
/* 0BF588 8015EB48 24050021 */  li    $a1, 33
/* 0BF58C 8015EB4C 000B6880 */  sll   $t5, $t3, 2
/* 0BF590 8015EB50 002D0821 */  addu  $at, $at, $t5
/* 0BF594 8015EB54 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BF598 8015EB58 8E0E0000 */  lw    $t6, ($s0)
/* 0BF59C 8015EB5C 3C01800E */  lui   $at, 0x800e
/* 0BF5A0 8015EB60 24060010 */  li    $a2, 16
/* 0BF5A4 8015EB64 000E7880 */  sll   $t7, $t6, 2
/* 0BF5A8 8015EB68 002F0821 */  addu  $at, $at, $t7
/* 0BF5AC 8015EB6C 0C02A619 */  jal   func_800A9864
/* 0BF5B0 8015EB70 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BF5B4 8015EB74 8E580000 */  lw    $t8, ($s2)
/* 0BF5B8 8015EB78 3C01800F */  lui   $at, 0x800f
/* 0BF5BC 8015EB7C 27A5004C */  addiu $a1, $sp, 0x4c
/* 0BF5C0 8015EB80 8F190000 */  lw    $t9, ($t8)
/* 0BF5C4 8015EB84 24040058 */  li    $a0, 88
/* 0BF5C8 8015EB88 27A60050 */  addiu $a2, $sp, 0x50
/* 0BF5CC 8015EB8C 00196080 */  sll   $t4, $t9, 2
/* 0BF5D0 8015EB90 002C0821 */  addu  $at, $at, $t4
/* 0BF5D4 8015EB94 0C029DFA */  jal   func_800A77E8
/* 0BF5D8 8015EB98 AC25A360 */   sw    $a1, -0x5ca0($at)
/* 0BF5DC 8015EB9C 8E500000 */  lw    $s0, ($s2)
/* 0BF5E0 8015EBA0 44804000 */  mtc1  $zero, $f8
/* 0BF5E4 8015EBA4 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 0BF5E8 8015EBA8 8E0B0000 */  lw    $t3, ($s0)
/* 0BF5EC 8015EBAC 44809000 */  mtc1  $zero, $f18
/* 0BF5F0 8015EBB0 3C040002 */  lui   $a0, (0x00020283 >> 16) # lui $a0, 2
/* 0BF5F4 8015EBB4 000B6880 */  sll   $t5, $t3, 2
/* 0BF5F8 8015EBB8 002D0821 */  addu  $at, $at, $t5
/* 0BF5FC 8015EBBC E428A8A0 */  swc1  $f8, -0x5760($at)
/* 0BF600 8015EBC0 8E020000 */  lw    $v0, ($s0)
/* 0BF604 8015EBC4 3C050002 */  lui   $a1, (0x00020284 >> 16) # lui $a1, 2
/* 0BF608 8015EBC8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BF60C 8015EBCC 00021080 */  sll   $v0, $v0, 2
/* 0BF610 8015EBD0 02227021 */  addu  $t6, $s1, $v0
/* 0BF614 8015EBD4 8DCF0000 */  lw    $t7, ($t6)
/* 0BF618 8015EBD8 34A50284 */  ori   $a1, (0x00020284 & 0xFFFF) # ori $a1, $a1, 0x284
/* 0BF61C 8015EBDC 34840283 */  ori   $a0, (0x00020283 & 0xFFFF) # ori $a0, $a0, 0x283
/* 0BF620 8015EBE0 31F80004 */  andi  $t8, $t7, 4
/* 0BF624 8015EBE4 57000008 */  bnezl $t8, .L8015EC08_ovl3
/* 0BF628 8015EBE8 44816000 */   mtc1  $at, $f12
/* 0BF62C 8015EBEC 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BF630 8015EBF0 44811000 */  mtc1  $at, $f2
/* 0BF634 8015EBF4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BF638 8015EBF8 44816000 */  mtc1  $at, $f12
/* 0BF63C 8015EBFC 10000005 */  b     .L8015EC14_ovl3
/* 0BF640 8015EC00 46001006 */   mov.s $f0, $f2
/* 0BF644 8015EC04 44816000 */  mtc1  $at, $f12
.L8015EC08_ovl3:
/* 0BF648 8015EC08 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BF64C 8015EC0C 44811000 */  mtc1  $at, $f2
/* 0BF650 8015EC10 46006006 */  mov.s $f0, $f12
.L8015EC14_ovl3:
/* 0BF654 8015EC14 3C01800E */  lui   $at, 0x800e
/* 0BF658 8015EC18 00220821 */  addu  $at, $at, $v0
/* 0BF65C 8015EC1C C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 0BF660 8015EC20 3C01800E */  lui   $at, 0x800e
/* 0BF664 8015EC24 00220821 */  addu  $at, $at, $v0
/* 0BF668 8015EC28 460A0402 */  mul.s $f16, $f0, $f10
/* 0BF66C 8015EC2C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 0BF670 8015EC30 8E020000 */  lw    $v0, ($s0)
/* 0BF674 8015EC34 3C01800E */  lui   $at, 0x800e
/* 0BF678 8015EC38 00021080 */  sll   $v0, $v0, 2
/* 0BF67C 8015EC3C 0222C821 */  addu  $t9, $s1, $v0
/* 0BF680 8015EC40 8F230000 */  lw    $v1, ($t9)
/* 0BF684 8015EC44 00220821 */  addu  $at, $at, $v0
/* 0BF688 8015EC48 30630004 */  andi  $v1, $v1, 4
/* 0BF68C 8015EC4C 54600004 */  bnezl $v1, .L8015EC60_ovl3
/* 0BF690 8015EC50 46006006 */   mov.s $f0, $f12
/* 0BF694 8015EC54 10000002 */  b     .L8015EC60_ovl3
/* 0BF698 8015EC58 46001006 */   mov.s $f0, $f2
/* 0BF69C 8015EC5C 46006006 */  mov.s $f0, $f12
.L8015EC60_ovl3:
/* 0BF6A0 8015EC60 4612003C */  c.lt.s $f0, $f18
/* 0BF6A4 8015EC64 00000000 */  nop   
/* 0BF6A8 8015EC68 4500000A */  bc1f  .L8015EC94_ovl3
/* 0BF6AC 8015EC6C 00000000 */   nop   
/* 0BF6B0 8015EC70 14600003 */  bnez  $v1, .L8015EC80_ovl3
/* 0BF6B4 8015EC74 3C01800E */   lui   $at, 0x800e
/* 0BF6B8 8015EC78 10000002 */  b     .L8015EC84_ovl3
/* 0BF6BC 8015EC7C 46001006 */   mov.s $f0, $f2
.L8015EC80_ovl3:
/* 0BF6C0 8015EC80 46006006 */  mov.s $f0, $f12
.L8015EC84_ovl3:
/* 0BF6C4 8015EC84 46000107 */  neg.s $f4, $f0
/* 0BF6C8 8015EC88 00220821 */  addu  $at, $at, $v0
/* 0BF6CC 8015EC8C 10000007 */  b     .L8015ECAC_ovl3
/* 0BF6D0 8015EC90 E4246850 */   swc1  $f4, 0x6850($at)
.L8015EC94_ovl3:
/* 0BF6D4 8015EC94 54600004 */  bnezl $v1, .L8015ECA8_ovl3
/* 0BF6D8 8015EC98 46006006 */   mov.s $f0, $f12
/* 0BF6DC 8015EC9C 10000002 */  b     .L8015ECA8_ovl3
/* 0BF6E0 8015ECA0 46001006 */   mov.s $f0, $f2
/* 0BF6E4 8015ECA4 46006006 */  mov.s $f0, $f12
.L8015ECA8_ovl3:
/* 0BF6E8 8015ECA8 E4206850 */  swc1  $f0, 0x6850($at)
.L8015ECAC_ovl3:
/* 0BF6EC 8015ECAC 0C048C3A */  jal   func_801230E8
/* 0BF6F0 8015ECB0 00003025 */   move  $a2, $zero
/* 0BF6F4 8015ECB4 00008025 */  move  $s0, $zero
/* 0BF6F8 8015ECB8 2411000F */  li    $s1, 15
/* 0BF6FC 8015ECBC 8E4C0000 */  lw    $t4, ($s2)
.L8015ECC0_ovl3:
/* 0BF700 8015ECC0 8D820000 */  lw    $v0, ($t4)
/* 0BF704 8015ECC4 00021080 */  sll   $v0, $v0, 2
/* 0BF708 8015ECC8 02625821 */  addu  $t3, $s3, $v0
/* 0BF70C 8015ECCC 8D6D0000 */  lw    $t5, ($t3)
/* 0BF710 8015ECD0 15A0000A */  bnez  $t5, .L8015ECFC_ovl3
/* 0BF714 8015ECD4 00000000 */   nop   
/* 0BF718 8015ECD8 0C002DAF */  jal   finish_current_thread
/* 0BF71C 8015ECDC 24040001 */   li    $a0, 1
/* 0BF720 8015ECE0 26100001 */  addiu $s0, $s0, 1
/* 0BF724 8015ECE4 5611FFF6 */  bnel  $s0, $s1, .L8015ECC0_ovl3
/* 0BF728 8015ECE8 8E4C0000 */   lw    $t4, ($s2)
/* 0BF72C 8015ECEC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BF730 8015ECF0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BF734 8015ECF4 8DC20000 */  lw    $v0, ($t6)
/* 0BF738 8015ECF8 00021080 */  sll   $v0, $v0, 2
.L8015ECFC_ovl3:
/* 0BF73C 8015ECFC 3C01800F */  lui   $at, 0x800f
/* 0BF740 8015ED00 00220821 */  addu  $at, $at, $v0
/* 0BF744 8015ED04 240F0001 */  li    $t7, 1
/* 0BF748 8015ED08 0C02BE85 */  jal   func_800AFA14
/* 0BF74C 8015ED0C AC2F98E0 */   sw    $t7, -0x6720($at)
/* 0BF750 8015ED10 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BF754 8015ED14 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BF758 8015ED18 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BF75C 8015ED1C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BF760 8015ED20 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BF764 8015ED24 03E00008 */  jr    $ra
/* 0BF768 8015ED28 27BD0058 */   addiu $sp, $sp, 0x58

.type func_8015E8E0_ovl3, @function
.size func_8015E8E0_ovl3, . - func_8015E8E0_ovl3

glabel func_8015ED2C_ovl3
/* 0BF76C 8015ED2C 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 0BF770 8015ED30 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0BF774 8015ED34 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0BF778 8015ED38 AFB00020 */  sw    $s0, 0x20($sp)
/* 0BF77C 8015ED3C 8D100000 */  lw    $s0, ($t0)
/* 0BF780 8015ED40 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BF784 8015ED44 AFA400A8 */  sw    $a0, 0xa8($sp)
/* 0BF788 8015ED48 8E030000 */  lw    $v1, ($s0)
/* 0BF78C 8015ED4C 3C0E800F */  lui   $t6, 0x800f
/* 0BF790 8015ED50 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 0BF794 8015ED54 00031880 */  sll   $v1, $v1, 2
/* 0BF798 8015ED58 01C37021 */  addu  $t6, $t6, $v1
/* 0BF79C 8015ED5C 8DCE9C60 */  lw    $t6, -0x63a0($t6)
/* 0BF7A0 8015ED60 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 0BF7A4 8015ED64 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0BF7A8 8015ED68 11C00021 */  beqz  $t6, .L8015EDF0_ovl3
/* 0BF7AC 8015ED6C 00831021 */   addu  $v0, $a0, $v1
/* 0BF7B0 8015ED70 3C0F800F */  lui   $t7, %hi(D_800E9560) # $t7, 0x800f
/* 0BF7B4 8015ED74 25EF9560 */  addiu $t7, %lo(D_800E9560) # addiu $t7, $t7, -0x6aa0
/* 0BF7B8 8015ED78 006F1021 */  addu  $v0, $v1, $t7
/* 0BF7BC 8015ED7C 8C440000 */  lw    $a0, ($v0)
/* 0BF7C0 8015ED80 2498FFFF */  addiu $t8, $a0, -1
/* 0BF7C4 8015ED84 10800016 */  beqz  $a0, .L8015EDE0_ovl3
/* 0BF7C8 8015ED88 AC580000 */   sw    $t8, ($v0)
/* 0BF7CC 8015ED8C 3C048019 */  lui   $a0, %hi(D_80191A84) # $a0, 0x8019
/* 0BF7D0 8015ED90 24841A84 */  addiu $a0, %lo(D_80191A84) # addiu $a0, $a0, 0x1a84
/* 0BF7D4 8015ED94 0C0445EF */  jal   func_801117BC
/* 0BF7D8 8015ED98 8E050000 */   lw    $a1, ($s0)
/* 0BF7DC 8015ED9C 0C044713 */  jal   func_80111C4C
/* 0BF7E0 8015EDA0 00402025 */   move  $a0, $v0
/* 0BF7E4 8015EDA4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0BF7E8 8015EDA8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0BF7EC 8015EDAC 3C0D801A */  lui   $t5, %hi(D_801982F8) # $t5, 0x801a
/* 0BF7F0 8015EDB0 25AD82F8 */  addiu $t5, %lo(D_801982F8) # addiu $t5, $t5, -0x7d08
/* 0BF7F4 8015EDB4 8F220000 */  lw    $v0, ($t9)
/* 0BF7F8 8015EDB8 3C058019 */  lui   $a1, %hi(D_80195270) # $a1, 0x8019
/* 0BF7FC 8015EDBC 24A55270 */  addiu $a1, %lo(D_80195270) # addiu $a1, $a1, 0x5270
/* 0BF800 8015EDC0 00025940 */  sll   $t3, $v0, 5
/* 0BF804 8015EDC4 256CFF80 */  addiu $t4, $t3, -0x80
/* 0BF808 8015EDC8 018D2021 */  addu  $a0, $t4, $t5
/* 0BF80C 8015EDCC 00003025 */  move  $a2, $zero
/* 0BF810 8015EDD0 0C055754 */  jal   func_80155D50_ovl3
/* 0BF814 8015EDD4 00403825 */   move  $a3, $v0
/* 0BF818 8015EDD8 100002D9 */  b     .L8015F940_ovl3
/* 0BF81C 8015EDDC 8FBF0024 */   lw    $ra, 0x24($sp)
.L8015EDE0_ovl3:
/* 0BF820 8015EDE0 0C02C640 */  jal   func_800B1900
/* 0BF824 8015EDE4 96040002 */   lhu   $a0, 2($s0)
/* 0BF828 8015EDE8 100002D5 */  b     .L8015F940_ovl3
/* 0BF82C 8015EDEC 8FBF0024 */   lw    $ra, 0x24($sp)
.L8015EDF0_ovl3:
/* 0BF830 8015EDF0 44811000 */  mtc1  $at, $f2
/* 0BF834 8015EDF4 C4400000 */  lwc1  $f0, ($v0)
/* 0BF838 8015EDF8 3C0A800E */  lui   $t2, %hi(D_800DFBD0) # $t2, 0x800e
/* 0BF83C 8015EDFC 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 0BF840 8015EE00 46001032 */  c.eq.s $f2, $f0
/* 0BF844 8015EE04 3C018019 */  lui   $at, %hi(D_801970A0) # $at, 0x8019
/* 0BF848 8015EE08 254AFBD0 */  addiu $t2, %lo(D_800DFBD0) # addiu $t2, $t2, -0x430
/* 0BF84C 8015EE0C 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 0BF850 8015EE10 45030028 */  bc1tl .L8015EEB4_ovl3
/* 0BF854 8015EE14 912E0017 */   lbu   $t6, 0x17($t1)
/* 0BF858 8015EE18 C42470A0 */  lwc1  $f4, %lo(D_801970A0)($at)
/* 0BF85C 8015EE1C 46040180 */  add.s $f6, $f0, $f4
/* 0BF860 8015EE20 E4460000 */  swc1  $f6, ($v0)
/* 0BF864 8015EE24 8E030000 */  lw    $v1, ($s0)
/* 0BF868 8015EE28 00031880 */  sll   $v1, $v1, 2
/* 0BF86C 8015EE2C 00831021 */  addu  $v0, $a0, $v1
/* 0BF870 8015EE30 C4400000 */  lwc1  $f0, ($v0)
/* 0BF874 8015EE34 4600103E */  c.le.s $f2, $f0
/* 0BF878 8015EE38 00000000 */  nop   
/* 0BF87C 8015EE3C 45020007 */  bc1fl .L8015EE5C_ovl3
/* 0BF880 8015EE40 01437821 */   addu  $t7, $t2, $v1
/* 0BF884 8015EE44 E4420000 */  swc1  $f2, ($v0)
/* 0BF888 8015EE48 8E030000 */  lw    $v1, ($s0)
/* 0BF88C 8015EE4C 00031880 */  sll   $v1, $v1, 2
/* 0BF890 8015EE50 00837021 */  addu  $t6, $a0, $v1
/* 0BF894 8015EE54 C5C00000 */  lwc1  $f0, ($t6)
/* 0BF898 8015EE58 01437821 */  addu  $t7, $t2, $v1
.L8015EE5C_ovl3:
/* 0BF89C 8015EE5C 8DF80000 */  lw    $t8, ($t7)
/* 0BF8A0 8015EE60 8F190008 */  lw    $t9, 8($t8)
/* 0BF8A4 8015EE64 E7200040 */  swc1  $f0, 0x40($t9)
/* 0BF8A8 8015EE68 8D0B0000 */  lw    $t3, ($t0)
/* 0BF8AC 8015EE6C 8D630000 */  lw    $v1, ($t3)
/* 0BF8B0 8015EE70 00031880 */  sll   $v1, $v1, 2
/* 0BF8B4 8015EE74 01436821 */  addu  $t5, $t2, $v1
/* 0BF8B8 8015EE78 8DAE0000 */  lw    $t6, ($t5)
/* 0BF8BC 8015EE7C 00836021 */  addu  $t4, $a0, $v1
/* 0BF8C0 8015EE80 C5880000 */  lwc1  $f8, ($t4)
/* 0BF8C4 8015EE84 8DCF0008 */  lw    $t7, 8($t6)
/* 0BF8C8 8015EE88 E5E80044 */  swc1  $f8, 0x44($t7)
/* 0BF8CC 8015EE8C 8D180000 */  lw    $t8, ($t0)
/* 0BF8D0 8015EE90 8F030000 */  lw    $v1, ($t8)
/* 0BF8D4 8015EE94 00031880 */  sll   $v1, $v1, 2
/* 0BF8D8 8015EE98 01435821 */  addu  $t3, $t2, $v1
/* 0BF8DC 8015EE9C 8D6C0000 */  lw    $t4, ($t3)
/* 0BF8E0 8015EEA0 0083C821 */  addu  $t9, $a0, $v1
/* 0BF8E4 8015EEA4 C72A0000 */  lwc1  $f10, ($t9)
/* 0BF8E8 8015EEA8 8D8D0008 */  lw    $t5, 8($t4)
/* 0BF8EC 8015EEAC E5AA0048 */  swc1  $f10, 0x48($t5)
/* 0BF8F0 8015EEB0 912E0017 */  lbu   $t6, 0x17($t1)
.L8015EEB4_ovl3:
/* 0BF8F4 8015EEB4 51C00004 */  beql  $t6, $zero, .L8015EEC8_ovl3
/* 0BF8F8 8015EEB8 912F0016 */   lbu   $t7, 0x16($t1)
/* 0BF8FC 8015EEBC 10000021 */  b     .L8015EF44_ovl3
/* 0BF900 8015EEC0 AD2000A0 */   sw    $zero, 0xa0($t1)
/* 0BF904 8015EEC4 912F0016 */  lbu   $t7, 0x16($t1)
.L8015EEC8_ovl3:
/* 0BF908 8015EEC8 3C188005 */  lui   $t8, %hi(D_80048F22) # $t8, 0x8005
/* 0BF90C 8015EECC 15E00011 */  bnez  $t7, .L8015EF14_ovl3
/* 0BF910 8015EED0 00000000 */   nop   
/* 0BF914 8015EED4 97188F22 */  lhu   $t8, %lo(D_80048F22)($t8)
/* 0BF918 8015EED8 33194000 */  andi  $t9, $t8, 0x4000
/* 0BF91C 8015EEDC 53200004 */  beql  $t9, $zero, .L8015EEF0_ovl3
/* 0BF920 8015EEE0 8D0B0000 */   lw    $t3, ($t0)
/* 0BF924 8015EEE4 10000017 */  b     .L8015EF44_ovl3
/* 0BF928 8015EEE8 AD2000A0 */   sw    $zero, 0xa0($t1)
/* 0BF92C 8015EEEC 8D0B0000 */  lw    $t3, ($t0)
.L8015EEF0_ovl3:
/* 0BF930 8015EEF0 3C0E800F */  lui   $t6, 0x800f
/* 0BF934 8015EEF4 8D6C0000 */  lw    $t4, ($t3)
/* 0BF938 8015EEF8 000C6880 */  sll   $t5, $t4, 2
/* 0BF93C 8015EEFC 01CD7021 */  addu  $t6, $t6, $t5
/* 0BF940 8015EF00 8DCE8060 */  lw    $t6, -0x7fa0($t6)
/* 0BF944 8015EF04 51C00010 */  beql  $t6, $zero, .L8015EF48_ovl3
/* 0BF948 8015EF08 8D2E00A0 */   lw    $t6, 0xa0($t1)
/* 0BF94C 8015EF0C 1000000D */  b     .L8015EF44_ovl3
/* 0BF950 8015EF10 AD2000A0 */   sw    $zero, 0xa0($t1)
.L8015EF14_ovl3:
/* 0BF954 8015EF14 3C0F8005 */  lui   $t7, %hi(D_80048F22) # $t7, 0x8005
/* 0BF958 8015EF18 95EF8F22 */  lhu   $t7, %lo(D_80048F22)($t7)
/* 0BF95C 8015EF1C 31F84000 */  andi  $t8, $t7, 0x4000
/* 0BF960 8015EF20 53000009 */  beql  $t8, $zero, .L8015EF48_ovl3
/* 0BF964 8015EF24 8D2E00A0 */   lw    $t6, 0xa0($t1)
/* 0BF968 8015EF28 8D0B0000 */  lw    $t3, ($t0)
/* 0BF96C 8015EF2C 3C01800F */  lui   $at, 0x800f
/* 0BF970 8015EF30 24190001 */  li    $t9, 1
/* 0BF974 8015EF34 8D6C0000 */  lw    $t4, ($t3)
/* 0BF978 8015EF38 000C6880 */  sll   $t5, $t4, 2
/* 0BF97C 8015EF3C 002D0821 */  addu  $at, $at, $t5
/* 0BF980 8015EF40 AC398060 */  sw    $t9, -0x7fa0($at)
.L8015EF44_ovl3:
/* 0BF984 8015EF44 8D2E00A0 */  lw    $t6, 0xa0($t1)
.L8015EF48_ovl3:
/* 0BF988 8015EF48 11C0023D */  beqz  $t6, .L8015F840_ovl3
/* 0BF98C 8015EF4C 00000000 */   nop   
/* 0BF990 8015EF50 8D100000 */  lw    $s0, ($t0)
/* 0BF994 8015EF54 3C0F800F */  lui   $t7, 0x800f
/* 0BF998 8015EF58 3C01800E */  lui   $at, 0x800e
/* 0BF99C 8015EF5C 8E030000 */  lw    $v1, ($s0)
/* 0BF9A0 8015EF60 3C0C801A */  lui   $t4, %hi(D_801982F8) # $t4, 0x801a
/* 0BF9A4 8015EF64 258C82F8 */  addiu $t4, %lo(D_801982F8) # addiu $t4, $t4, -0x7d08
/* 0BF9A8 8015EF68 00031880 */  sll   $v1, $v1, 2
/* 0BF9AC 8015EF6C 01E37821 */  addu  $t7, $t7, $v1
/* 0BF9B0 8015EF70 8DEF8760 */  lw    $t7, -0x78a0($t7)
/* 0BF9B4 8015EF74 00230821 */  addu  $at, $at, $v1
/* 0BF9B8 8015EF78 3C058019 */  lui   $a1, %hi(D_801936F0) # $a1, 0x8019
/* 0BF9BC 8015EF7C 15E00230 */  bnez  $t7, .L8015F840_ovl3
/* 0BF9C0 8015EF80 00000000 */   nop   
/* 0BF9C4 8015EF84 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0BF9C8 8015EF88 3C01800E */  lui   $at, 0x800e
/* 0BF9CC 8015EF8C 00230821 */  addu  $at, $at, $v1
/* 0BF9D0 8015EF90 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0BF9D4 8015EF94 8E020000 */  lw    $v0, ($s0)
/* 0BF9D8 8015EF98 24A536F0 */  addiu $a1, %lo(D_801936F0) # addiu $a1, $a1, 0x36f0
/* 0BF9DC 8015EF9C 00003025 */  move  $a2, $zero
/* 0BF9E0 8015EFA0 0002C140 */  sll   $t8, $v0, 5
/* 0BF9E4 8015EFA4 270BFF80 */  addiu $t3, $t8, -0x80
/* 0BF9E8 8015EFA8 016C2021 */  addu  $a0, $t3, $t4
/* 0BF9EC 8015EFAC 0C055754 */  jal   func_80155D50_ovl3
/* 0BF9F0 8015EFB0 00403825 */   move  $a3, $v0
/* 0BF9F4 8015EFB4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BF9F8 8015EFB8 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0BF9FC 8015EFBC 44803000 */  mtc1  $zero, $f6
/* 0BFA00 8015EFC0 3C01800E */  lui   $at, 0x800e
/* 0BFA04 8015EFC4 8E190000 */  lw    $t9, ($s0)
/* 0BFA08 8015EFC8 00196880 */  sll   $t5, $t9, 2
/* 0BFA0C 8015EFCC 002D0821 */  addu  $at, $at, $t5
/* 0BFA10 8015EFD0 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0BFA14 8015EFD4 8E0E0000 */  lw    $t6, ($s0)
/* 0BFA18 8015EFD8 3C01800F */  lui   $at, 0x800f
/* 0BFA1C 8015EFDC 3C198019 */  lui   $t9, %hi(D_80197F60) # $t9, 0x8019
/* 0BFA20 8015EFE0 000E7880 */  sll   $t7, $t6, 2
/* 0BFA24 8015EFE4 002F0821 */  addu  $at, $at, $t7
/* 0BFA28 8015EFE8 AC208920 */  sw    $zero, -0x76e0($at)
/* 0BFA2C 8015EFEC 8E180000 */  lw    $t8, ($s0)
/* 0BFA30 8015EFF0 27397F60 */  addiu $t9, %lo(D_80197F60) # addiu $t9, $t9, 0x7f60
/* 0BFA34 8015EFF4 AFA200A4 */  sw    $v0, 0xa4($sp)
/* 0BFA38 8015EFF8 00185880 */  sll   $t3, $t8, 2
/* 0BFA3C 8015EFFC 01785823 */  subu  $t3, $t3, $t8
/* 0BFA40 8015F000 000B58C0 */  sll   $t3, $t3, 3
/* 0BFA44 8015F004 01785823 */  subu  $t3, $t3, $t8
/* 0BFA48 8015F008 000B5880 */  sll   $t3, $t3, 2
/* 0BFA4C 8015F00C 256CFE90 */  addiu $t4, $t3, -0x170
/* 0BFA50 8015F010 0C055526 */  jal   func_80155498_ovl3
/* 0BFA54 8015F014 01992021 */   addu  $a0, $t4, $t9
/* 0BFA58 8015F018 3C0D8013 */  lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 0BFA5C 8015F01C 8DADBCA0 */  lw    $t5, %lo(D_8012BCA0)($t5)
/* 0BFA60 8015F020 8FA300A4 */  lw    $v1, 0xa4($sp)
/* 0BFA64 8015F024 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BFA68 8015F028 000D74C2 */  srl   $t6, $t5, 0x13
/* 0BFA6C 8015F02C 31CF003F */  andi  $t7, $t6, 0x3f
/* 0BFA70 8015F030 006F1825 */  or    $v1, $v1, $t7
/* 0BFA74 8015F034 14600009 */  bnez  $v1, .L8015F05C_ovl3
/* 0BFA78 8015F038 3C108005 */   lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BFA7C 8015F03C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BFA80 8015F040 3C0C800E */  lui   $t4, 0x800e
/* 0BFA84 8015F044 8F020000 */  lw    $v0, ($t8)
/* 0BFA88 8015F048 00025880 */  sll   $t3, $v0, 2
/* 0BFA8C 8015F04C 018B6021 */  addu  $t4, $t4, $t3
/* 0BFA90 8015F050 8D8C6310 */  lw    $t4, 0x6310($t4)
/* 0BFA94 8015F054 11800015 */  beqz  $t4, .L8015F0AC_ovl3
/* 0BFA98 8015F058 00000000 */   nop   
.L8015F05C_ovl3:
/* 0BFA9C 8015F05C 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0BFAA0 8015F060 3C01800F */  lui   $at, 0x800f
/* 0BFAA4 8015F064 24190001 */  li    $t9, 1
/* 0BFAA8 8015F068 8E0D0000 */  lw    $t5, ($s0)
/* 0BFAAC 8015F06C 3C0B800E */  lui   $t3, %hi(D_800E64D0) # $t3, 0x800e
/* 0BFAB0 8015F070 256B64D0 */  addiu $t3, %lo(D_800E64D0) # addiu $t3, $t3, 0x64d0
/* 0BFAB4 8015F074 000D7080 */  sll   $t6, $t5, 2
/* 0BFAB8 8015F078 002E0821 */  addu  $at, $at, $t6
/* 0BFABC 8015F07C AC399AA0 */  sw    $t9, -0x6560($at)
/* 0BFAC0 8015F080 8E0F0000 */  lw    $t7, ($s0)
/* 0BFAC4 8015F084 2404011F */  li    $a0, 287
/* 0BFAC8 8015F088 000FC080 */  sll   $t8, $t7, 2
/* 0BFACC 8015F08C 030B1021 */  addu  $v0, $t8, $t3
/* 0BFAD0 8015F090 C4480000 */  lwc1  $f8, ($v0)
/* 0BFAD4 8015F094 46004287 */  neg.s $f10, $f8
/* 0BFAD8 8015F098 0C029D9E */  jal   play_sound
/* 0BFADC 8015F09C E44A0000 */   swc1  $f10, ($v0)
/* 0BFAE0 8015F0A0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0BFAE4 8015F0A4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0BFAE8 8015F0A8 8D820000 */  lw    $v0, ($t4)
.L8015F0AC_ovl3:
/* 0BFAEC 8015F0AC 3C048019 */  lui   $a0, %hi(D_80190DD4) # $a0, 0x8019
/* 0BFAF0 8015F0B0 24840DD4 */  addiu $a0, %lo(D_80190DD4) # addiu $a0, $a0, 0xdd4
/* 0BFAF4 8015F0B4 0C0445EF */  jal   func_801117BC
/* 0BFAF8 8015F0B8 00402825 */   move  $a1, $v0
/* 0BFAFC 8015F0BC 0C044713 */  jal   func_80111C4C
/* 0BFB00 8015F0C0 00402025 */   move  $a0, $v0
/* 0BFB04 8015F0C4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0BFB08 8015F0C8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0BFB0C 8015F0CC 3C05800E */  lui   $a1, 0x800e
/* 0BFB10 8015F0D0 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 0BFB14 8015F0D4 8DA20000 */  lw    $v0, ($t5)
/* 0BFB18 8015F0D8 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 0BFB1C 8015F0DC 00021880 */  sll   $v1, $v0, 2
/* 0BFB20 8015F0E0 00A32821 */  addu  $a1, $a1, $v1
/* 0BFB24 8015F0E4 8CA50D50 */  lw    $a1, 0xd50($a1)
/* 0BFB28 8015F0E8 00C3C821 */  addu  $t9, $a2, $v1
/* 0BFB2C 8015F0EC C7200000 */  lwc1  $f0, ($t9)
/* 0BFB30 8015F0F0 00057080 */  sll   $t6, $a1, 2
/* 0BFB34 8015F0F4 00CE7821 */  addu  $t7, $a2, $t6
/* 0BFB38 8015F0F8 C5E20000 */  lwc1  $f2, ($t7)
/* 0BFB3C 8015F0FC 00402025 */  move  $a0, $v0
/* 0BFB40 8015F100 4602003C */  c.lt.s $f0, $f2
/* 0BFB44 8015F104 00000000 */  nop   
/* 0BFB48 8015F108 45020005 */  bc1fl .L8015F120_ovl3
/* 0BFB4C 8015F10C 46020301 */   sub.s $f12, $f0, $f2
/* 0BFB50 8015F110 46020301 */  sub.s $f12, $f0, $f2
/* 0BFB54 8015F114 10000002 */  b     .L8015F120_ovl3
/* 0BFB58 8015F118 46006307 */   neg.s $f12, $f12
/* 0BFB5C 8015F11C 46020301 */  sub.s $f12, $f0, $f2
.L8015F120_ovl3:
/* 0BFB60 8015F120 0C03E60A */  jal   func_800F9828
/* 0BFB64 8015F124 E7AC009C */   swc1  $f12, 0x9c($sp)
/* 0BFB68 8015F128 3C018019 */  lui   $at, %hi(D_801970A4) # $at, 0x8019
/* 0BFB6C 8015F12C C42470A4 */  lwc1  $f4, %lo(D_801970A4)($at)
/* 0BFB70 8015F130 C7AC009C */  lwc1  $f12, 0x9c($sp)
/* 0BFB74 8015F134 E7A000A0 */  swc1  $f0, 0xa0($sp)
/* 0BFB78 8015F138 46040032 */  c.eq.s $f0, $f4
/* 0BFB7C 8015F13C 3C014416 */  li    $at, 0x44160000 # 600.000000
/* 0BFB80 8015F140 450101BF */  bc1t  .L8015F840_ovl3
/* 0BFB84 8015F144 00000000 */   nop   
/* 0BFB88 8015F148 44803000 */  mtc1  $zero, $f6
/* 0BFB8C 8015F14C 44814000 */  mtc1  $at, $f8
/* 0BFB90 8015F150 3C0143F0 */  li    $at, 0x43F00000 # 480.000000
/* 0BFB94 8015F154 4606003C */  c.lt.s $f0, $f6
/* 0BFB98 8015F158 00000000 */  nop   
/* 0BFB9C 8015F15C 45020004 */  bc1fl .L8015F170_ovl3
/* 0BFBA0 8015F160 46000086 */   mov.s $f2, $f0
/* 0BFBA4 8015F164 10000002 */  b     .L8015F170_ovl3
/* 0BFBA8 8015F168 46000087 */   neg.s $f2, $f0
/* 0BFBAC 8015F16C 46000086 */  mov.s $f2, $f0
.L8015F170_ovl3:
/* 0BFBB0 8015F170 4608103C */  c.lt.s $f2, $f8
/* 0BFBB4 8015F174 00000000 */  nop   
/* 0BFBB8 8015F178 450001B1 */  bc1f  .L8015F840_ovl3
/* 0BFBBC 8015F17C 00000000 */   nop   
/* 0BFBC0 8015F180 44815000 */  mtc1  $at, $f10
/* 0BFBC4 8015F184 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 0BFBC8 8015F188 3C05800E */  lui   $a1, %hi(gEntitiesNextPosZArray) # $a1, 0x800e
/* 0BFBCC 8015F18C 460A603C */  c.lt.s $f12, $f10
/* 0BFBD0 8015F190 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 0BFBD4 8015F194 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 0BFBD8 8015F198 24A52950 */  addiu $a1, %lo(gEntitiesNextPosZArray) # addiu $a1, $a1, 0x2950
/* 0BFBDC 8015F19C 450001A8 */  bc1f  .L8015F840_ovl3
/* 0BFBE0 8015F1A0 248425D0 */   addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 0BFBE4 8015F1A4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BFBE8 8015F1A8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BFBEC 8015F1AC 3C02800E */  lui   $v0, 0x800e
/* 0BFBF0 8015F1B0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0BFBF4 8015F1B4 8F030000 */  lw    $v1, ($t8)
/* 0BFBF8 8015F1B8 44815000 */  mtc1  $at, $f10
/* 0BFBFC 8015F1BC 3C0B800E */  lui   $t3, 0x800e
/* 0BFC00 8015F1C0 00031880 */  sll   $v1, $v1, 2
/* 0BFC04 8015F1C4 00431021 */  addu  $v0, $v0, $v1
/* 0BFC08 8015F1C8 8C420D50 */  lw    $v0, 0xd50($v0)
/* 0BFC0C 8015F1CC 00836821 */  addu  $t5, $a0, $v1
/* 0BFC10 8015F1D0 C5A60000 */  lwc1  $f6, ($t5)
/* 0BFC14 8015F1D4 00021080 */  sll   $v0, $v0, 2
/* 0BFC18 8015F1D8 00826021 */  addu  $t4, $a0, $v0
/* 0BFC1C 8015F1DC C5840000 */  lwc1  $f4, ($t4)
/* 0BFC20 8015F1E0 00C2C821 */  addu  $t9, $a2, $v0
/* 0BFC24 8015F1E4 C7280000 */  lwc1  $f8, ($t9)
/* 0BFC28 8015F1E8 46062301 */  sub.s $f12, $f4, $f6
/* 0BFC2C 8015F1EC 00C37021 */  addu  $t6, $a2, $v1
/* 0BFC30 8015F1F0 C5C60000 */  lwc1  $f6, ($t6)
/* 0BFC34 8015F1F4 460A4100 */  add.s $f4, $f8, $f10
/* 0BFC38 8015F1F8 00A27821 */  addu  $t7, $a1, $v0
/* 0BFC3C 8015F1FC 00A3C021 */  addu  $t8, $a1, $v1
/* 0BFC40 8015F200 C5EA0000 */  lwc1  $f10, ($t7)
/* 0BFC44 8015F204 46062201 */  sub.s $f8, $f4, $f6
/* 0BFC48 8015F208 C7040000 */  lwc1  $f4, ($t8)
/* 0BFC4C 8015F20C 01635821 */  addu  $t3, $t3, $v1
/* 0BFC50 8015F210 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 0BFC54 8015F214 46045381 */  sub.s $f14, $f10, $f4
/* 0BFC58 8015F218 8D700004 */  lw    $s0, 4($t3)
/* 0BFC5C 8015F21C E7A80094 */  swc1  $f8, 0x94($sp)
/* 0BFC60 8015F220 E7AE0098 */  swc1  $f14, 0x98($sp)
/* 0BFC64 8015F224 0C0061C3 */  jal   atan2f
/* 0BFC68 8015F228 E7AC0090 */   swc1  $f12, 0x90($sp)
/* 0BFC6C 8015F22C C7B20090 */  lwc1  $f18, 0x90($sp)
/* 0BFC70 8015F230 C7AE0098 */  lwc1  $f14, 0x98($sp)
/* 0BFC74 8015F234 3C018019 */  lui   $at, %hi(D_801970A8) # $at, 0x8019
/* 0BFC78 8015F238 46129082 */  mul.s $f2, $f18, $f18
/* 0BFC7C 8015F23C C42670A8 */  lwc1  $f6, %lo(D_801970A8)($at)
/* 0BFC80 8015F240 460E7402 */  mul.s $f16, $f14, $f14
/* 0BFC84 8015F244 46060200 */  add.s $f8, $f0, $f6
/* 0BFC88 8015F248 E6080034 */  swc1  $f8, 0x34($s0)
/* 0BFC8C 8015F24C E7B00038 */  swc1  $f16, 0x38($sp)
/* 0BFC90 8015F250 E7A2003C */  swc1  $f2, 0x3c($sp)
/* 0BFC94 8015F254 0C00CAC8 */  jal   sqrtf
/* 0BFC98 8015F258 46101300 */   add.s $f12, $f2, $f16
/* 0BFC9C 8015F25C C7AC0094 */  lwc1  $f12, 0x94($sp)
/* 0BFCA0 8015F260 0C0061C3 */  jal   atan2f
/* 0BFCA4 8015F264 46000386 */   mov.s $f14, $f0
/* 0BFCA8 8015F268 C7A20094 */  lwc1  $f2, 0x94($sp)
/* 0BFCAC 8015F26C 44805000 */  mtc1  $zero, $f10
/* 0BFCB0 8015F270 E6000030 */  swc1  $f0, 0x30($s0)
/* 0BFCB4 8015F274 46021182 */  mul.s $f6, $f2, $f2
/* 0BFCB8 8015F278 E60A0038 */  swc1  $f10, 0x38($s0)
/* 0BFCBC 8015F27C C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 0BFCC0 8015F280 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 0BFCC4 8015F284 46062200 */  add.s $f8, $f4, $f6
/* 0BFCC8 8015F288 0C00CAC8 */  jal   sqrtf
/* 0BFCCC 8015F28C 460A4300 */   add.s $f12, $f8, $f10
/* 0BFCD0 8015F290 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 0BFCD4 8015F294 44812000 */  mtc1  $at, $f4
/* 0BFCD8 8015F298 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 0BFCDC 8015F29C 44814000 */  mtc1  $at, $f8
/* 0BFCE0 8015F2A0 46040181 */  sub.s $f6, $f0, $f4
/* 0BFCE4 8015F2A4 3C048019 */  lui   $a0, %hi(D_80191AC8) # $a0, 0x8019
/* 0BFCE8 8015F2A8 24841AC8 */  addiu $a0, %lo(D_80191AC8) # addiu $a0, $a0, 0x1ac8
/* 0BFCEC 8015F2AC 02002825 */  move  $a1, $s0
/* 0BFCF0 8015F2B0 46083283 */  div.s $f10, $f6, $f8
/* 0BFCF4 8015F2B4 3C063F80 */  lui   $a2, 0x3f80
/* 0BFCF8 8015F2B8 0C05A153 */  jal   func_8016854C_ovl3
/* 0BFCFC 8015F2BC E60A0048 */   swc1  $f10, 0x48($s0)
/* 0BFD00 8015F2C0 0C00B5B8 */  jal   sinf
/* 0BFD04 8015F2C4 C60C0030 */   lwc1  $f12, 0x30($s0)
/* 0BFD08 8015F2C8 C60C0030 */  lwc1  $f12, 0x30($s0)
/* 0BFD0C 8015F2CC 0C00D604 */  jal   cosf
/* 0BFD10 8015F2D0 E7A00080 */   swc1  $f0, 0x80($sp)
/* 0BFD14 8015F2D4 3C038019 */  lui   $v1, %hi(D_801936FC) # $v1, 0x8019
/* 0BFD18 8015F2D8 246336FC */  addiu $v1, %lo(D_801936FC) # addiu $v1, $v1, 0x36fc
/* 0BFD1C 8015F2DC C4640000 */  lwc1  $f4, ($v1)
/* 0BFD20 8015F2E0 C6060048 */  lwc1  $f6, 0x48($s0)
/* 0BFD24 8015F2E4 3C02801A */  lui   $v0, %hi(D_80198438) # $v0, 0x801a
/* 0BFD28 8015F2E8 24428438 */  addiu $v0, %lo(D_80198438) # addiu $v0, $v0, -0x7bc8
/* 0BFD2C 8015F2EC 46062202 */  mul.s $f8, $f4, $f6
/* 0BFD30 8015F2F0 C46A0004 */  lwc1  $f10, 4($v1)
/* 0BFD34 8015F2F4 C7B20080 */  lwc1  $f18, 0x80($sp)
/* 0BFD38 8015F2F8 3C048019 */  lui   $a0, %hi(D_8019370C) # $a0, 0x8019
/* 0BFD3C 8015F2FC 2484370C */  addiu $a0, %lo(D_8019370C) # addiu $a0, $a0, 0x370c
/* 0BFD40 8015F300 00002825 */  move  $a1, $zero
/* 0BFD44 8015F304 E4480000 */  swc1  $f8, ($v0)
/* 0BFD48 8015F308 C6040048 */  lwc1  $f4, 0x48($s0)
/* 0BFD4C 8015F30C C4680008 */  lwc1  $f8, 8($v1)
/* 0BFD50 8015F310 46045182 */  mul.s $f6, $f10, $f4
/* 0BFD54 8015F314 E4460004 */  swc1  $f6, 4($v0)
/* 0BFD58 8015F318 C60A0048 */  lwc1  $f10, 0x48($s0)
/* 0BFD5C 8015F31C C466000C */  lwc1  $f6, 0xc($v1)
/* 0BFD60 8015F320 460A4102 */  mul.s $f4, $f8, $f10
/* 0BFD64 8015F324 E4440008 */  swc1  $f4, 8($v0)
/* 0BFD68 8015F328 C6080048 */  lwc1  $f8, 0x48($s0)
/* 0BFD6C 8015F32C C4420008 */  lwc1  $f2, 8($v0)
/* 0BFD70 8015F330 46083282 */  mul.s $f10, $f6, $f8
/* 0BFD74 8015F334 E44A000C */  swc1  $f10, 0xc($v0)
/* 0BFD78 8015F338 46001102 */  mul.s $f4, $f2, $f0
/* 0BFD7C 8015F33C C44C000C */  lwc1  $f12, 0xc($v0)
/* 0BFD80 8015F340 46126182 */  mul.s $f6, $f12, $f18
/* 0BFD84 8015F344 00000000 */  nop   
/* 0BFD88 8015F348 46006202 */  mul.s $f8, $f12, $f0
/* 0BFD8C 8015F34C 00000000 */  nop   
/* 0BFD90 8015F350 46121282 */  mul.s $f10, $f2, $f18
/* 0BFD94 8015F354 46062381 */  sub.s $f14, $f4, $f6
/* 0BFD98 8015F358 E44E0008 */  swc1  $f14, 8($v0)
/* 0BFD9C 8015F35C 460A4400 */  add.s $f16, $f8, $f10
/* 0BFDA0 8015F360 E450000C */  swc1  $f16, 0xc($v0)
/* 0BFDA4 8015F364 0C05515E */  jal   func_80154578_ovl3
/* 0BFDA8 8015F368 8E060034 */   lw    $a2, 0x34($s0)
/* 0BFDAC 8015F36C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BFDB0 8015F370 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BFDB4 8015F374 3C0C800F */  lui   $t4, 0x800f
/* 0BFDB8 8015F378 3C048019 */  lui   $a0, %hi(D_80192358) # $a0, 0x8019
/* 0BFDBC 8015F37C 8D630000 */  lw    $v1, ($t3)
/* 0BFDC0 8015F380 3C05800E */  lui   $a1, 0x800e
/* 0BFDC4 8015F384 24842358 */  addiu $a0, %lo(D_80192358) # addiu $a0, $a0, 0x2358
/* 0BFDC8 8015F388 00031880 */  sll   $v1, $v1, 2
/* 0BFDCC 8015F38C 01836021 */  addu  $t4, $t4, $v1
/* 0BFDD0 8015F390 8D8C98E0 */  lw    $t4, -0x6720($t4)
/* 0BFDD4 8015F394 00A32821 */  addu  $a1, $a1, $v1
/* 0BFDD8 8015F398 3C063F80 */  lui   $a2, 0x3f80
/* 0BFDDC 8015F39C 51800168 */  beql  $t4, $zero, .L8015F940_ovl3
/* 0BFDE0 8015F3A0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0BFDE4 8015F3A4 0C047616 */  jal   func_8011D858
/* 0BFDE8 8015F3A8 8CA50D50 */   lw    $a1, 0xd50($a1)
/* 0BFDEC 8015F3AC 14400122 */  bnez  $v0, .L8015F838_ovl3
/* 0BFDF0 8015F3B0 24040009 */   li    $a0, 9
/* 0BFDF4 8015F3B4 C7A000A0 */  lwc1  $f0, 0xa0($sp)
/* 0BFDF8 8015F3B8 44802000 */  mtc1  $zero, $f4
/* 0BFDFC 8015F3BC 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 0BFE00 8015F3C0 44813000 */  mtc1  $at, $f6
/* 0BFE04 8015F3C4 4604003C */  c.lt.s $f0, $f4
/* 0BFE08 8015F3C8 3C01800E */  lui   $at, 0x800e
/* 0BFE0C 8015F3CC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0BFE10 8015F3D0 45020004 */  bc1fl .L8015F3E4_ovl3
/* 0BFE14 8015F3D4 46000086 */   mov.s $f2, $f0
/* 0BFE18 8015F3D8 10000002 */  b     .L8015F3E4_ovl3
/* 0BFE1C 8015F3DC 46000087 */   neg.s $f2, $f0
/* 0BFE20 8015F3E0 46000086 */  mov.s $f2, $f0
.L8015F3E4_ovl3:
/* 0BFE24 8015F3E4 4606103C */  c.lt.s $f2, $f6
/* 0BFE28 8015F3E8 00001025 */  move  $v0, $zero
/* 0BFE2C 8015F3EC 45000003 */  bc1f  .L8015F3FC_ovl3
/* 0BFE30 8015F3F0 00000000 */   nop   
/* 0BFE34 8015F3F4 10000001 */  b     .L8015F3FC_ovl3
/* 0BFE38 8015F3F8 24020001 */   li    $v0, 1
.L8015F3FC_ovl3:
/* 0BFE3C 8015F3FC C7A80094 */  lwc1  $f8, 0x94($sp)
/* 0BFE40 8015F400 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0BFE44 8015F404 E7A00064 */  swc1  $f0, 0x64($sp)
/* 0BFE48 8015F408 E7A80068 */  swc1  $f8, 0x68($sp)
/* 0BFE4C 8015F40C 8E0D0000 */  lw    $t5, ($s0)
/* 0BFE50 8015F410 44801000 */  mtc1  $zero, $f2
/* 0BFE54 8015F414 27A40058 */  addiu $a0, $sp, 0x58
/* 0BFE58 8015F418 000DC880 */  sll   $t9, $t5, 2
/* 0BFE5C 8015F41C 00390821 */  addu  $at, $at, $t9
/* 0BFE60 8015F420 C42A64D0 */  lwc1  $f10, 0x64d0($at)
/* 0BFE64 8015F424 3C01800E */  lui   $at, 0x800e
/* 0BFE68 8015F428 27A50064 */  addiu $a1, $sp, 0x64
/* 0BFE6C 8015F42C E7AA0058 */  swc1  $f10, 0x58($sp)
/* 0BFE70 8015F430 8E0E0000 */  lw    $t6, ($s0)
/* 0BFE74 8015F434 AFA20078 */  sw    $v0, 0x78($sp)
/* 0BFE78 8015F438 E7A2006C */  swc1  $f2, 0x6c($sp)
/* 0BFE7C 8015F43C 000E7880 */  sll   $t7, $t6, 2
/* 0BFE80 8015F440 002F0821 */  addu  $at, $at, $t7
/* 0BFE84 8015F444 C4243210 */  lwc1  $f4, 0x3210($at)
/* 0BFE88 8015F448 E7A20060 */  swc1  $f2, 0x60($sp)
/* 0BFE8C 8015F44C 0C0063EF */  jal   lbvector_Angle
/* 0BFE90 8015F450 E7A4005C */   swc1  $f4, 0x5c($sp)
/* 0BFE94 8015F454 3C018019 */  lui   $at, %hi(D_801970AC) # $at, 0x8019
/* 0BFE98 8015F458 C42270AC */  lwc1  $f2, %lo(D_801970AC)($at)
/* 0BFE9C 8015F45C 8FA20078 */  lw    $v0, 0x78($sp)
/* 0BFEA0 8015F460 3C198019 */  lui   $t9, %hi(D_801967C4) # $t9, 0x8019
/* 0BFEA4 8015F464 46020032 */  c.eq.s $f0, $f2
/* 0BFEA8 8015F468 273967C4 */  addiu $t9, %lo(D_801967C4) # addiu $t9, $t9, 0x67c4
/* 0BFEAC 8015F46C 00026880 */  sll   $t5, $v0, 2
/* 0BFEB0 8015F470 27A50064 */  addiu $a1, $sp, 0x64
/* 0BFEB4 8015F474 45000020 */  bc1f  .L8015F4F8_ovl3
/* 0BFEB8 8015F478 01B98021 */   addu  $s0, $t5, $t9
/* 0BFEBC 8015F47C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BFEC0 8015F480 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BFEC4 8015F484 3C01800E */  lui   $at, 0x800e
/* 0BFEC8 8015F488 44803000 */  mtc1  $zero, $f6
/* 0BFECC 8015F48C 8F030000 */  lw    $v1, ($t8)
/* 0BFED0 8015F490 00026080 */  sll   $t4, $v0, 2
/* 0BFED4 8015F494 00025880 */  sll   $t3, $v0, 2
/* 0BFED8 8015F498 00031880 */  sll   $v1, $v1, 2
/* 0BFEDC 8015F49C 00230821 */  addu  $at, $at, $v1
/* 0BFEE0 8015F4A0 C42864D0 */  lwc1  $f8, 0x64d0($at)
/* 0BFEE4 8015F4A4 3C018019 */  lui   $at, 0x8019
/* 0BFEE8 8015F4A8 002C0821 */  addu  $at, $at, $t4
/* 0BFEEC 8015F4AC 4608303C */  c.lt.s $f6, $f8
/* 0BFEF0 8015F4B0 00000000 */  nop   
/* 0BFEF4 8015F4B4 45000009 */  bc1f  .L8015F4DC_ovl3
/* 0BFEF8 8015F4B8 00000000 */   nop   
/* 0BFEFC 8015F4BC 3C018019 */  lui   $at, 0x8019
/* 0BFF00 8015F4C0 002B0821 */  addu  $at, $at, $t3
/* 0BFF04 8015F4C4 C42A67C4 */  lwc1  $f10, 0x67c4($at)
/* 0BFF08 8015F4C8 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 0BFF0C 8015F4CC 44813000 */  mtc1  $at, $f6
/* 0BFF10 8015F4D0 46025102 */  mul.s $f4, $f10, $f2
/* 0BFF14 8015F4D4 10000030 */  b     .L8015F598_ovl3
/* 0BFF18 8015F4D8 46062303 */   div.s $f12, $f4, $f6
.L8015F4DC_ovl3:
/* 0BFF1C 8015F4DC C42867C4 */  lwc1  $f8, 0x67c4($at)
/* 0BFF20 8015F4E0 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 0BFF24 8015F4E4 44812000 */  mtc1  $at, $f4
/* 0BFF28 8015F4E8 46024282 */  mul.s $f10, $f8, $f2
/* 0BFF2C 8015F4EC 46045183 */  div.s $f6, $f10, $f4
/* 0BFF30 8015F4F0 10000029 */  b     .L8015F598_ovl3
/* 0BFF34 8015F4F4 46061301 */   sub.s $f12, $f2, $f6
.L8015F4F8_ovl3:
/* 0BFF38 8015F4F8 C6080000 */  lwc1  $f8, ($s0)
/* 0BFF3C 8015F4FC 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 0BFF40 8015F500 44812000 */  mtc1  $at, $f4
/* 0BFF44 8015F504 46024282 */  mul.s $f10, $f8, $f2
/* 0BFF48 8015F508 27A40058 */  addiu $a0, $sp, 0x58
/* 0BFF4C 8015F50C 46045183 */  div.s $f6, $f10, $f4
/* 0BFF50 8015F510 4606003C */  c.lt.s $f0, $f6
/* 0BFF54 8015F514 00000000 */  nop   
/* 0BFF58 8015F518 45000009 */  bc1f  .L8015F540_ovl3
/* 0BFF5C 8015F51C 00000000 */   nop   
/* 0BFF60 8015F520 8CB80000 */  lw    $t8, ($a1)
/* 0BFF64 8015F524 27AE0058 */  addiu $t6, $sp, 0x58
/* 0BFF68 8015F528 ADD80000 */  sw    $t8, ($t6)
/* 0BFF6C 8015F52C 8CAF0004 */  lw    $t7, 4($a1)
/* 0BFF70 8015F530 ADCF0004 */  sw    $t7, 4($t6)
/* 0BFF74 8015F534 8CB80008 */  lw    $t8, 8($a1)
/* 0BFF78 8015F538 1000000F */  b     .L8015F578_ovl3
/* 0BFF7C 8015F53C ADD80008 */   sw    $t8, 8($t6)
.L8015F540_ovl3:
/* 0BFF80 8015F540 0C0065D0 */  jal   vec3_normalized_cross_product
/* 0BFF84 8015F544 27A6004C */   addiu $a2, $sp, 0x4c
/* 0BFF88 8015F548 3C018019 */  li    $at, 0x80190000 # -0.000000
/* 0BFF8C 8015F54C C42A70B0 */  lwc1  $f10, %lo(D_801970B0)($at)
/* 0BFF90 8015F550 C6080000 */  lwc1  $f8, ($s0)
/* 0BFF94 8015F554 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 0BFF98 8015F558 44813000 */  mtc1  $at, $f6
/* 0BFF9C 8015F55C 460A4102 */  mul.s $f4, $f8, $f10
/* 0BFFA0 8015F560 27A40058 */  addiu $a0, $sp, 0x58
/* 0BFFA4 8015F564 27A5004C */  addiu $a1, $sp, 0x4c
/* 0BFFA8 8015F568 46062203 */  div.s $f8, $f4, $f6
/* 0BFFAC 8015F56C 44064000 */  mfc1  $a2, $f8
/* 0BFFB0 8015F570 0C00647E */  jal   func_800191F8_ovl3
/* 0BFFB4 8015F574 00000000 */   nop   
.L8015F578_ovl3:
/* 0BFFB8 8015F578 C7AC005C */  lwc1  $f12, 0x5c($sp)
/* 0BFFBC 8015F57C 0C0061C3 */  jal   atan2f
/* 0BFFC0 8015F580 C7AE0058 */   lwc1  $f14, 0x58($sp)
/* 0BFFC4 8015F584 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0BFFC8 8015F588 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0BFFCC 8015F58C 46000306 */  mov.s $f12, $f0
/* 0BFFD0 8015F590 8D630000 */  lw    $v1, ($t3)
/* 0BFFD4 8015F594 00031880 */  sll   $v1, $v1, 2
.L8015F598_ovl3:
/* 0BFFD8 8015F598 3C0C800F */  lui   $t4, 0x800f
/* 0BFFDC 8015F59C 01836021 */  addu  $t4, $t4, $v1
/* 0BFFE0 8015F5A0 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 0BFFE4 8015F5A4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BFFE8 8015F5A8 318D0004 */  andi  $t5, $t4, 4
/* 0BFFEC 8015F5AC 55A00006 */  bnezl $t5, .L8015F5C8_ovl3
/* 0BFFF0 8015F5B0 44811000 */   mtc1  $at, $f2
/* 0BFFF4 8015F5B4 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BFFF8 8015F5B8 44811000 */  mtc1  $at, $f2
/* 0BFFFC 8015F5BC 10000004 */  b     .L8015F5D0_ovl3
/* 0C0000 8015F5C0 E7A20074 */   swc1  $f2, 0x74($sp)
/* 0C0004 8015F5C4 44811000 */  mtc1  $at, $f2
.L8015F5C8_ovl3:
/* 0C0008 8015F5C8 00000000 */  nop   
/* 0C000C 8015F5CC E7A20074 */  swc1  $f2, 0x74($sp)
.L8015F5D0_ovl3:
/* 0C0010 8015F5D0 0C00D604 */  jal   cosf
/* 0C0014 8015F5D4 E7AC0070 */   swc1  $f12, 0x70($sp)
/* 0C0018 8015F5D8 C7A20074 */  lwc1  $f2, 0x74($sp)
/* 0C001C 8015F5DC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C0020 8015F5E0 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C0024 8015F5E4 46020282 */  mul.s $f10, $f0, $f2
/* 0C0028 8015F5E8 3C01800E */  lui   $at, 0x800e
/* 0C002C 8015F5EC 8E190000 */  lw    $t9, ($s0)
/* 0C0030 8015F5F0 44803000 */  mtc1  $zero, $f6
/* 0C0034 8015F5F4 44802000 */  mtc1  $zero, $f4
/* 0C0038 8015F5F8 00197080 */  sll   $t6, $t9, 2
/* 0C003C 8015F5FC 002E0821 */  addu  $at, $at, $t6
/* 0C0040 8015F600 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0C0044 8015F604 8E0F0000 */  lw    $t7, ($s0)
/* 0C0048 8015F608 4606103C */  c.lt.s $f2, $f6
/* 0C004C 8015F60C 3C01800E */  lui   $at, 0x800e
/* 0C0050 8015F610 000FC080 */  sll   $t8, $t7, 2
/* 0C0054 8015F614 00380821 */  addu  $at, $at, $t8
/* 0C0058 8015F618 C7AC0070 */  lwc1  $f12, 0x70($sp)
/* 0C005C 8015F61C 45000008 */  bc1f  .L8015F640_ovl3
/* 0C0060 8015F620 E4246690 */   swc1  $f4, 0x6690($at)
/* 0C0064 8015F624 8E0B0000 */  lw    $t3, ($s0)
/* 0C0068 8015F628 3C01800E */  lui   $at, 0x800e
/* 0C006C 8015F62C 46001207 */  neg.s $f8, $f2
/* 0C0070 8015F630 000B6080 */  sll   $t4, $t3, 2
/* 0C0074 8015F634 002C0821 */  addu  $at, $at, $t4
/* 0C0078 8015F638 10000006 */  b     .L8015F654_ovl3
/* 0C007C 8015F63C E4286850 */   swc1  $f8, 0x6850($at)
.L8015F640_ovl3:
/* 0C0080 8015F640 8E0D0000 */  lw    $t5, ($s0)
/* 0C0084 8015F644 3C01800E */  lui   $at, 0x800e
/* 0C0088 8015F648 000DC880 */  sll   $t9, $t5, 2
/* 0C008C 8015F64C 00390821 */  addu  $at, $at, $t9
/* 0C0090 8015F650 E4226850 */  swc1  $f2, 0x6850($at)
.L8015F654_ovl3:
/* 0C0094 8015F654 0C00B5B8 */  jal   sinf
/* 0C0098 8015F658 E7A20074 */   swc1  $f2, 0x74($sp)
/* 0C009C 8015F65C C7A20074 */  lwc1  $f2, 0x74($sp)
/* 0C00A0 8015F660 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C00A4 8015F664 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C00A8 8015F668 46020282 */  mul.s $f10, $f0, $f2
/* 0C00AC 8015F66C 3C06800E */  lui   $a2, %hi(D_800E3210) # $a2, 0x800e
/* 0C00B0 8015F670 8E0E0000 */  lw    $t6, ($s0)
/* 0C00B4 8015F674 24C63210 */  addiu $a2, %lo(D_800E3210) # addiu $a2, $a2, 0x3210
/* 0C00B8 8015F678 44802000 */  mtc1  $zero, $f4
/* 0C00BC 8015F67C 000E7880 */  sll   $t7, $t6, 2
/* 0C00C0 8015F680 00CFC021 */  addu  $t8, $a2, $t7
/* 0C00C4 8015F684 E70A0000 */  swc1  $f10, ($t8)
/* 0C00C8 8015F688 8E0B0000 */  lw    $t3, ($s0)
/* 0C00CC 8015F68C 4604103C */  c.lt.s $f2, $f4
/* 0C00D0 8015F690 44806000 */  mtc1  $zero, $f12
/* 0C00D4 8015F694 3C01800E */  lui   $at, 0x800e
/* 0C00D8 8015F698 000B6080 */  sll   $t4, $t3, 2
/* 0C00DC 8015F69C 002C0821 */  addu  $at, $at, $t4
/* 0C00E0 8015F6A0 45000008 */  bc1f  .L8015F6C4_ovl3
/* 0C00E4 8015F6A4 E42C3750 */   swc1  $f12, 0x3750($at)
/* 0C00E8 8015F6A8 8E0D0000 */  lw    $t5, ($s0)
/* 0C00EC 8015F6AC 3C01800E */  lui   $at, 0x800e
/* 0C00F0 8015F6B0 46001187 */  neg.s $f6, $f2
/* 0C00F4 8015F6B4 000DC880 */  sll   $t9, $t5, 2
/* 0C00F8 8015F6B8 00390821 */  addu  $at, $at, $t9
/* 0C00FC 8015F6BC 10000006 */  b     .L8015F6D8_ovl3
/* 0C0100 8015F6C0 E4263C90 */   swc1  $f6, 0x3c90($at)
.L8015F6C4_ovl3:
/* 0C0104 8015F6C4 8E0E0000 */  lw    $t6, ($s0)
/* 0C0108 8015F6C8 3C01800E */  lui   $at, 0x800e
/* 0C010C 8015F6CC 000E7880 */  sll   $t7, $t6, 2
/* 0C0110 8015F6D0 002F0821 */  addu  $at, $at, $t7
/* 0C0114 8015F6D4 E4223C90 */  swc1  $f2, 0x3c90($at)
.L8015F6D8_ovl3:
/* 0C0118 8015F6D8 8E030000 */  lw    $v1, ($s0)
/* 0C011C 8015F6DC 3C04800F */  lui   $a0, 0x800f
/* 0C0120 8015F6E0 3C188013 */  lui   $t8, 0x8013
/* 0C0124 8015F6E4 00031880 */  sll   $v1, $v1, 2
/* 0C0128 8015F6E8 00832021 */  addu  $a0, $a0, $v1
/* 0C012C 8015F6EC 8C848920 */  lw    $a0, -0x76e0($a0)
/* 0C0130 8015F6F0 10800023 */  beqz  $a0, .L8015F780_ovl3
/* 0C0134 8015F6F4 00000000 */   nop   
/* 0C0138 8015F6F8 3C18800F */  lui   $t8, %hi(D_800E9E20) # $t8, 0x800f
/* 0C013C 8015F6FC 27189E20 */  addiu $t8, %lo(D_800E9E20) # addiu $t8, $t8, -0x61e0
/* 0C0140 8015F700 00782821 */  addu  $a1, $v1, $t8
/* 0C0144 8015F704 8CAB0000 */  lw    $t3, ($a1)
/* 0C0148 8015F708 5560008D */  bnezl $t3, .L8015F940_ovl3
/* 0C014C 8015F70C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0C0150 8015F710 ACA40000 */  sw    $a0, ($a1)
/* 0C0154 8015F714 8E0C0000 */  lw    $t4, ($s0)
/* 0C0158 8015F718 44804000 */  mtc1  $zero, $f8
/* 0C015C 8015F71C 000C6880 */  sll   $t5, $t4, 2
/* 0C0160 8015F720 00CD1021 */  addu  $v0, $a2, $t5
/* 0C0164 8015F724 C4400000 */  lwc1  $f0, ($v0)
/* 0C0168 8015F728 46004032 */  c.eq.s $f8, $f0
/* 0C016C 8015F72C 00000000 */  nop   
/* 0C0170 8015F730 45030083 */  bc1tl .L8015F940_ovl3
/* 0C0174 8015F734 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0C0178 8015F738 460C003C */  c.lt.s $f0, $f12
/* 0C017C 8015F73C 00000000 */  nop   
/* 0C0180 8015F740 45020005 */  bc1fl .L8015F758_ovl3
/* 0C0184 8015F744 E44C0000 */   swc1  $f12, ($v0)
/* 0C0188 8015F748 46000287 */  neg.s $f10, $f0
/* 0C018C 8015F74C 10000002 */  b     .L8015F758_ovl3
/* 0C0190 8015F750 E44A0000 */   swc1  $f10, ($v0)
/* 0C0194 8015F754 E44C0000 */  swc1  $f12, ($v0)
.L8015F758_ovl3:
/* 0C0198 8015F758 0C029D9E */  jal   play_sound
/* 0C019C 8015F75C 2404011F */   li    $a0, 287
/* 0C01A0 8015F760 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C01A4 8015F764 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C01A8 8015F768 3C01800F */  lui   $at, 0x800f
/* 0C01AC 8015F76C 8F2E0000 */  lw    $t6, ($t9)
/* 0C01B0 8015F770 000E7880 */  sll   $t7, $t6, 2
/* 0C01B4 8015F774 002F0821 */  addu  $at, $at, $t7
/* 0C01B8 8015F778 10000070 */  b     .L8015F93C_ovl3
/* 0C01BC 8015F77C AC208920 */   sw    $zero, -0x76e0($at)
.L8015F780_ovl3:
/* 0C01C0 8015F780 8F18BCA0 */  lw    $t8, -0x4360($t8)
/* 0C01C4 8015F784 3C01800F */  lui   $at, 0x800f
/* 0C01C8 8015F788 3C0D800F */  lui   $t5, %hi(D_800E9FE0) # $t5, 0x800f
/* 0C01CC 8015F78C 00185CC2 */  srl   $t3, $t8, 0x13
/* 0C01D0 8015F790 316C01C0 */  andi  $t4, $t3, 0x1c0
/* 0C01D4 8015F794 1180001E */  beqz  $t4, .L8015F810_ovl3
/* 0C01D8 8015F798 00230821 */   addu  $at, $at, $v1
/* 0C01DC 8015F79C 25AD9FE0 */  addiu $t5, %lo(D_800E9FE0) # addiu $t5, $t5, -0x6020
/* 0C01E0 8015F7A0 006D2821 */  addu  $a1, $v1, $t5
/* 0C01E4 8015F7A4 8CB90000 */  lw    $t9, ($a1)
/* 0C01E8 8015F7A8 240E0001 */  li    $t6, 1
/* 0C01EC 8015F7AC 1720001E */  bnez  $t9, .L8015F828_ovl3
/* 0C01F0 8015F7B0 00000000 */   nop   
/* 0C01F4 8015F7B4 ACAE0000 */  sw    $t6, ($a1)
/* 0C01F8 8015F7B8 8E0F0000 */  lw    $t7, ($s0)
/* 0C01FC 8015F7BC 000FC080 */  sll   $t8, $t7, 2
/* 0C0200 8015F7C0 00D81021 */  addu  $v0, $a2, $t8
/* 0C0204 8015F7C4 C4400000 */  lwc1  $f0, ($v0)
/* 0C0208 8015F7C8 4600603C */  c.lt.s $f12, $f0
/* 0C020C 8015F7CC 00000000 */  nop   
/* 0C0210 8015F7D0 45020005 */  bc1fl .L8015F7E8_ovl3
/* 0C0214 8015F7D4 E44C0000 */   swc1  $f12, ($v0)
/* 0C0218 8015F7D8 46000107 */  neg.s $f4, $f0
/* 0C021C 8015F7DC 10000002 */  b     .L8015F7E8_ovl3
/* 0C0220 8015F7E0 E4440000 */   swc1  $f4, ($v0)
/* 0C0224 8015F7E4 E44C0000 */  swc1  $f12, ($v0)
.L8015F7E8_ovl3:
/* 0C0228 8015F7E8 0C029D9E */  jal   play_sound
/* 0C022C 8015F7EC 2404011F */   li    $a0, 287
/* 0C0230 8015F7F0 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C0234 8015F7F4 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C0238 8015F7F8 3C04800F */  lui   $a0, 0x800f
/* 0C023C 8015F7FC 8D630000 */  lw    $v1, ($t3)
/* 0C0240 8015F800 00031880 */  sll   $v1, $v1, 2
/* 0C0244 8015F804 00832021 */  addu  $a0, $a0, $v1
/* 0C0248 8015F808 10000007 */  b     .L8015F828_ovl3
/* 0C024C 8015F80C 8C848920 */   lw    $a0, -0x76e0($a0)
.L8015F810_ovl3:
/* 0C0250 8015F810 AC209FE0 */  sw    $zero, -0x6020($at)
/* 0C0254 8015F814 8E030000 */  lw    $v1, ($s0)
/* 0C0258 8015F818 3C04800F */  lui   $a0, 0x800f
/* 0C025C 8015F81C 00031880 */  sll   $v1, $v1, 2
/* 0C0260 8015F820 00832021 */  addu  $a0, $a0, $v1
/* 0C0264 8015F824 8C848920 */  lw    $a0, -0x76e0($a0)
.L8015F828_ovl3:
/* 0C0268 8015F828 3C01800F */  lui   $at, 0x800f
/* 0C026C 8015F82C 00230821 */  addu  $at, $at, $v1
/* 0C0270 8015F830 10000042 */  b     .L8015F93C_ovl3
/* 0C0274 8015F834 AC249E20 */   sw    $a0, -0x61e0($at)
.L8015F838_ovl3:
/* 0C0278 8015F838 0C02ED1A */  jal   func_800BB468
/* 0C027C 8015F83C 2405001E */   li    $a1, 30
.L8015F840_ovl3:
/* 0C0280 8015F840 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0C0284 8015F844 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 0C0288 8015F848 8D100000 */  lw    $s0, ($t0)
/* 0C028C 8015F84C 3C01800F */  lui   $at, 0x800f
/* 0C0290 8015F850 240C0001 */  li    $t4, 1
/* 0C0294 8015F854 8E0D0000 */  lw    $t5, ($s0)
/* 0C0298 8015F858 240E0008 */  li    $t6, 8
/* 0C029C 8015F85C 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 0C02A0 8015F860 000DC880 */  sll   $t9, $t5, 2
/* 0C02A4 8015F864 00390821 */  addu  $at, $at, $t9
/* 0C02A8 8015F868 AC2C9C60 */  sw    $t4, -0x63a0($at)
/* 0C02AC 8015F86C 8E0F0000 */  lw    $t7, ($s0)
/* 0C02B0 8015F870 3C01800F */  lui   $at, 0x800f
/* 0C02B4 8015F874 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 0C02B8 8015F878 000FC080 */  sll   $t8, $t7, 2
/* 0C02BC 8015F87C 00380821 */  addu  $at, $at, $t8
/* 0C02C0 8015F880 AC2E9560 */  sw    $t6, -0x6aa0($at)
/* 0C02C4 8015F884 8E030000 */  lw    $v1, ($s0)
/* 0C02C8 8015F888 3C01800E */  lui   $at, 0x800e
/* 0C02CC 8015F88C 3C04800F */  lui   $a0, 0x800f
/* 0C02D0 8015F890 00031880 */  sll   $v1, $v1, 2
/* 0C02D4 8015F894 00230821 */  addu  $at, $at, $v1
/* 0C02D8 8015F898 C42617D0 */  lwc1  $f6, 0x17d0($at)
/* 0C02DC 8015F89C 3C01800E */  lui   $at, 0x800e
/* 0C02E0 8015F8A0 00230821 */  addu  $at, $at, $v1
/* 0C02E4 8015F8A4 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0C02E8 8015F8A8 AD2000A0 */  sw    $zero, 0xa0($t1)
/* 0C02EC 8015F8AC 8E0B0000 */  lw    $t3, ($s0)
/* 0C02F0 8015F8B0 000B6880 */  sll   $t5, $t3, 2
/* 0C02F4 8015F8B4 008D2021 */  addu  $a0, $a0, $t5
/* 0C02F8 8015F8B8 8C84A360 */  lw    $a0, -0x5ca0($a0)
/* 0C02FC 8015F8BC 0C029E1C */  jal   func_800A7870
/* 0C0300 8015F8C0 24850004 */   addiu $a1, $a0, 4
/* 0C0304 8015F8C4 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C0308 8015F8C8 8E05A7C4 */  lw    $a1, %lo(D_8004A7C4)($s0)
/* 0C030C 8015F8CC 3C01800E */  lui   $at, 0x800e
/* 0C0310 8015F8D0 00002025 */  move  $a0, $zero
/* 0C0314 8015F8D4 8CAC0000 */  lw    $t4, ($a1)
/* 0C0318 8015F8D8 000CC880 */  sll   $t9, $t4, 2
/* 0C031C 8015F8DC 00390821 */  addu  $at, $at, $t9
/* 0C0320 8015F8E0 0C02BEED */  jal   func_800AFBB4
/* 0C0324 8015F8E4 AC20EF90 */   sw    $zero, -0x1070($at)
/* 0C0328 8015F8E8 0C029D9E */  jal   play_sound
/* 0C032C 8015F8EC 24040059 */   li    $a0, 89
/* 0C0330 8015F8F0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C0334 8015F8F4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C0338 8015F8F8 3C01800E */  lui   $at, 0x800e
/* 0C033C 8015F8FC 3C07800E */  lui   $a3, 0x800e
/* 0C0340 8015F900 8DE30000 */  lw    $v1, ($t7)
/* 0C0344 8015F904 24040002 */  li    $a0, 2
/* 0C0348 8015F908 24050001 */  li    $a1, 1
/* 0C034C 8015F90C 00031880 */  sll   $v1, $v1, 2
/* 0C0350 8015F910 00230821 */  addu  $at, $at, $v1
/* 0C0354 8015F914 C4282790 */  lwc1  $f8, 0x2790($at)
/* 0C0358 8015F918 3C01800E */  lui   $at, 0x800e
/* 0C035C 8015F91C 00230821 */  addu  $at, $at, $v1
/* 0C0360 8015F920 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 0C0364 8015F924 00E33821 */  addu  $a3, $a3, $v1
/* 0C0368 8015F928 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 0C036C 8015F92C 24060030 */  li    $a2, 48
/* 0C0370 8015F930 E7A80010 */  swc1  $f8, 0x10($sp)
/* 0C0374 8015F934 0C029FDD */  jal   func_800A7F74
/* 0C0378 8015F938 E7AA0014 */   swc1  $f10, 0x14($sp)
.L8015F93C_ovl3:
/* 0C037C 8015F93C 8FBF0024 */  lw    $ra, 0x24($sp)
.L8015F940_ovl3:
/* 0C0380 8015F940 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C0384 8015F944 27BD00A8 */  addiu $sp, $sp, 0xa8
/* 0C0388 8015F948 03E00008 */  jr    $ra
/* 0C038C 8015F94C 00000000 */   nop   

.type func_8015ED2C_ovl3, @function
.size func_8015ED2C_ovl3, . - func_8015ED2C_ovl3

glabel func_8015F950_ovl3
/* 0C0390 8015F950 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C0394 8015F954 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C0398 8015F958 0C058738 */  jal   func_80161CE0_ovl3
/* 0C039C 8015F95C AFB00018 */   sw    $s0, 0x18($sp)
/* 0C03A0 8015F960 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C03A4 8015F964 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C03A8 8015F968 3C19800F */  lui   $t9, 0x800f
/* 0C03AC 8015F96C 3C098019 */  lui   $t1, %hi(D_801967CC) # $t1, 0x8019
/* 0C03B0 8015F970 8DCF0000 */  lw    $t7, ($t6)
/* 0C03B4 8015F974 252967CC */  addiu $t1, %lo(D_801967CC) # addiu $t1, $t1, 0x67cc
/* 0C03B8 8015F978 00002025 */  move  $a0, $zero
/* 0C03BC 8015F97C 000FC080 */  sll   $t8, $t7, 2
/* 0C03C0 8015F980 0338C821 */  addu  $t9, $t9, $t8
/* 0C03C4 8015F984 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0C03C8 8015F988 001940C0 */  sll   $t0, $t9, 3
/* 0C03CC 8015F98C 01091021 */  addu  $v0, $t0, $t1
/* 0C03D0 8015F990 8C450000 */  lw    $a1, ($v0)
/* 0C03D4 8015F994 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0C03D8 8015F998 8C460004 */   lw    $a2, 4($v0)
/* 0C03DC 8015F99C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C03E0 8015F9A0 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C03E4 8015F9A4 3C01800E */  lui   $at, 0x800e
/* 0C03E8 8015F9A8 240A0001 */  li    $t2, 1
/* 0C03EC 8015F9AC 8E0B0000 */  lw    $t3, ($s0)
/* 0C03F0 8015F9B0 3C0D800B */  lui   $t5, %hi(func_800B4954) # $t5, 0x800b
/* 0C03F4 8015F9B4 25AD4954 */  addiu $t5, %lo(func_800B4954) # addiu $t5, $t5, 0x4954
/* 0C03F8 8015F9B8 000B6080 */  sll   $t4, $t3, 2
/* 0C03FC 8015F9BC 002C0821 */  addu  $at, $at, $t4
/* 0C0400 8015F9C0 AC2A0650 */  sw    $t2, 0x650($at)
/* 0C0404 8015F9C4 8E0E0000 */  lw    $t6, ($s0)
/* 0C0408 8015F9C8 3C01800E */  lui   $at, 0x800e
/* 0C040C 8015F9CC 3C188016 */  lui   $t8, %hi(D_8015FD58) # $t8, 0x8016
/* 0C0410 8015F9D0 000E7880 */  sll   $t7, $t6, 2
/* 0C0414 8015F9D4 002F0821 */  addu  $at, $at, $t7
/* 0C0418 8015F9D8 AC2DEF90 */  sw    $t5, -0x1070($at)
/* 0C041C 8015F9DC 8E190000 */  lw    $t9, ($s0)
/* 0C0420 8015F9E0 3C01800E */  lui   $at, 0x800e
/* 0C0424 8015F9E4 2718FD58 */  addiu $t8, %lo(D_8015FD58) # addiu $t8, $t8, -0x2a8
/* 0C0428 8015F9E8 00194080 */  sll   $t0, $t9, 2
/* 0C042C 8015F9EC 00280821 */  addu  $at, $at, $t0
/* 0C0430 8015F9F0 AC38F150 */  sw    $t8, -0xeb0($at)
/* 0C0434 8015F9F4 8E090000 */  lw    $t1, ($s0)
/* 0C0438 8015F9F8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C043C 8015F9FC 44812000 */  mtc1  $at, $f4
/* 0C0440 8015FA00 3C01800E */  lui   $at, 0x800e
/* 0C0444 8015FA04 00095880 */  sll   $t3, $t1, 2
/* 0C0448 8015FA08 002B0821 */  addu  $at, $at, $t3
/* 0C044C 8015FA0C E4246A10 */  swc1  $f4, 0x6a10($at)
/* 0C0450 8015FA10 8E0C0000 */  lw    $t4, ($s0)
/* 0C0454 8015FA14 3C01800E */  lui   $at, 0x800e
/* 0C0458 8015FA18 3C0A8019 */  lui   $t2, %hi(D_80192E80) # $t2, 0x8019
/* 0C045C 8015FA1C 000C7080 */  sll   $t6, $t4, 2
/* 0C0460 8015FA20 002E0821 */  addu  $at, $at, $t6
/* 0C0464 8015FA24 254A2E80 */  addiu $t2, %lo(D_80192E80) # addiu $t2, $t2, 0x2e80
/* 0C0468 8015FA28 AC2A0490 */  sw    $t2, 0x0490($at)
/* 0C046C 8015FA2C 8E020000 */  lw    $v0, ($s0)
/* 0C0470 8015FA30 3C08801A */  lui   $t0, %hi(D_801982F8) # $t0, 0x801a
/* 0C0474 8015FA34 3C198019 */  lui   $t9, %hi(D_80197F60) # $t9, 0x8019
/* 0C0478 8015FA38 2443FFFC */  addiu $v1, $v0, -4
/* 0C047C 8015FA3C 00037880 */  sll   $t7, $v1, 2
/* 0C0480 8015FA40 01E37823 */  subu  $t7, $t7, $v1
/* 0C0484 8015FA44 000F78C0 */  sll   $t7, $t7, 3
/* 0C0488 8015FA48 01E37823 */  subu  $t7, $t7, $v1
/* 0C048C 8015FA4C 3C04800E */  lui   $a0, 0x800e
/* 0C0490 8015FA50 00026880 */  sll   $t5, $v0, 2
/* 0C0494 8015FA54 008D2021 */  addu  $a0, $a0, $t5
/* 0C0498 8015FA58 000F7880 */  sll   $t7, $t7, 2
/* 0C049C 8015FA5C 0003C140 */  sll   $t8, $v1, 5
/* 0C04A0 8015FA60 27397F60 */  addiu $t9, %lo(D_80197F60) # addiu $t9, $t9, 0x7f60
/* 0C04A4 8015FA64 250882F8 */  addiu $t0, %lo(D_801982F8) # addiu $t0, $t0, -0x7d08
/* 0C04A8 8015FA68 03083021 */  addu  $a2, $t8, $t0
/* 0C04AC 8015FA6C 01F92821 */  addu  $a1, $t7, $t9
/* 0C04B0 8015FA70 0C055192 */  jal   func_80154648_ovl3
/* 0C04B4 8015FA74 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C04B8 8015FA78 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C04BC 8015FA7C 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C04C0 8015FA80 3C018019 */  lui   $at, %hi(D_801970B4) # $at, 0x8019
/* 0C04C4 8015FA84 C42070B4 */  lwc1  $f0, %lo(D_801970B4)($at)
/* 0C04C8 8015FA88 8E090000 */  lw    $t1, ($s0)
/* 0C04CC 8015FA8C 3C01800F */  lui   $at, 0x800f
/* 0C04D0 8015FA90 3C040002 */  lui   $a0, (0x0002003D >> 16) # lui $a0, 2
/* 0C04D4 8015FA94 00095880 */  sll   $t3, $t1, 2
/* 0C04D8 8015FA98 002B0821 */  addu  $at, $at, $t3
/* 0C04DC 8015FA9C AC2083E0 */  sw    $zero, -0x7c20($at)
/* 0C04E0 8015FAA0 8E0C0000 */  lw    $t4, ($s0)
/* 0C04E4 8015FAA4 3C01800E */  lui   $at, 0x800e
/* 0C04E8 8015FAA8 3484003D */  ori   $a0, (0x0002003D & 0xFFFF) # ori $a0, $a0, 0x3d
/* 0C04EC 8015FAAC 000C5080 */  sll   $t2, $t4, 2
/* 0C04F0 8015FAB0 002A0821 */  addu  $at, $at, $t2
/* 0C04F4 8015FAB4 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C04F8 8015FAB8 8E0E0000 */  lw    $t6, ($s0)
/* 0C04FC 8015FABC 3C01800E */  lui   $at, 0x800e
/* 0C0500 8015FAC0 24050021 */  li    $a1, 33
/* 0C0504 8015FAC4 000E6880 */  sll   $t5, $t6, 2
/* 0C0508 8015FAC8 002D0821 */  addu  $at, $at, $t5
/* 0C050C 8015FACC E4204710 */  swc1  $f0, 0x4710($at)
/* 0C0510 8015FAD0 8E0F0000 */  lw    $t7, ($s0)
/* 0C0514 8015FAD4 3C01800E */  lui   $at, 0x800e
/* 0C0518 8015FAD8 24060010 */  li    $a2, 16
/* 0C051C 8015FADC 000FC880 */  sll   $t9, $t7, 2
/* 0C0520 8015FAE0 00390821 */  addu  $at, $at, $t9
/* 0C0524 8015FAE4 0C02A619 */  jal   func_800A9864
/* 0C0528 8015FAE8 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C052C 8015FAEC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C0530 8015FAF0 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C0534 8015FAF4 3C01800F */  lui   $at, 0x800f
/* 0C0538 8015FAF8 2418001E */  li    $t8, 30
/* 0C053C 8015FAFC 8E080000 */  lw    $t0, ($s0)
/* 0C0540 8015FB00 3C0D800F */  lui   $t5, 0x800f
/* 0C0544 8015FB04 00084880 */  sll   $t1, $t0, 2
/* 0C0548 8015FB08 00290821 */  addu  $at, $at, $t1
/* 0C054C 8015FB0C AC389720 */  sw    $t8, -0x68e0($at)
/* 0C0550 8015FB10 8E0B0000 */  lw    $t3, ($s0)
/* 0C0554 8015FB14 3C01800F */  lui   $at, 0x800f
/* 0C0558 8015FB18 000B6080 */  sll   $t4, $t3, 2
/* 0C055C 8015FB1C 002C0821 */  addu  $at, $at, $t4
/* 0C0560 8015FB20 AC209560 */  sw    $zero, -0x6aa0($at)
/* 0C0564 8015FB24 8E0A0000 */  lw    $t2, ($s0)
/* 0C0568 8015FB28 3C0140F0 */  li    $at, 0x40F00000 # 7.500000
/* 0C056C 8015FB2C 000A7080 */  sll   $t6, $t2, 2
/* 0C0570 8015FB30 01AE6821 */  addu  $t5, $t5, $t6
/* 0C0574 8015FB34 8DAD8AE0 */  lw    $t5, -0x7520($t5)
/* 0C0578 8015FB38 31AF0004 */  andi  $t7, $t5, 4
/* 0C057C 8015FB3C 55E00007 */  bnezl $t7, .L8015FB5C_ovl3
/* 0C0580 8015FB40 44814000 */   mtc1  $at, $f8
/* 0C0584 8015FB44 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0C0588 8015FB48 44813000 */  mtc1  $at, $f6
/* 0C058C 8015FB4C 3C01800D */  li    $at, 0x800D0000 # -0.000000
/* 0C0590 8015FB50 10000004 */  b     .L8015FB64_ovl3
/* 0C0594 8015FB54 E4267238 */   swc1  $f6, %lo(D_800D7238)($at)
/* 0C0598 8015FB58 44814000 */  mtc1  $at, $f8
.L8015FB5C_ovl3:
/* 0C059C 8015FB5C 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C05A0 8015FB60 E4287238 */  swc1  $f8, %lo(D_800D7238)($at)
.L8015FB64_ovl3:
/* 0C05A4 8015FB64 8E190000 */  lw    $t9, ($s0)
/* 0C05A8 8015FB68 3C01800F */  lui   $at, 0x800f
/* 0C05AC 8015FB6C 00194080 */  sll   $t0, $t9, 2
/* 0C05B0 8015FB70 00280821 */  addu  $at, $at, $t0
/* 0C05B4 8015FB74 0C00D604 */  jal   cosf
/* 0C05B8 8015FB78 C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0C05BC 8015FB7C 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C05C0 8015FB80 C4227238 */  lwc1  $f2, %lo(D_800D7238)($at)
/* 0C05C4 8015FB84 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C05C8 8015FB88 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C05CC 8015FB8C 46020282 */  mul.s $f10, $f0, $f2
/* 0C05D0 8015FB90 3C01800E */  lui   $at, 0x800e
/* 0C05D4 8015FB94 8E180000 */  lw    $t8, ($s0)
/* 0C05D8 8015FB98 44809000 */  mtc1  $zero, $f18
/* 0C05DC 8015FB9C 44808000 */  mtc1  $zero, $f16
/* 0C05E0 8015FBA0 00184880 */  sll   $t1, $t8, 2
/* 0C05E4 8015FBA4 00290821 */  addu  $at, $at, $t1
/* 0C05E8 8015FBA8 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0C05EC 8015FBAC 8E0B0000 */  lw    $t3, ($s0)
/* 0C05F0 8015FBB0 4612103C */  c.lt.s $f2, $f18
/* 0C05F4 8015FBB4 3C01800E */  lui   $at, 0x800e
/* 0C05F8 8015FBB8 000B6080 */  sll   $t4, $t3, 2
/* 0C05FC 8015FBBC 002C0821 */  addu  $at, $at, $t4
/* 0C0600 8015FBC0 45000008 */  bc1f  .L8015FBE4_ovl3
/* 0C0604 8015FBC4 E4306690 */   swc1  $f16, 0x6690($at)
/* 0C0608 8015FBC8 8E0A0000 */  lw    $t2, ($s0)
/* 0C060C 8015FBCC 3C01800E */  lui   $at, 0x800e
/* 0C0610 8015FBD0 46001107 */  neg.s $f4, $f2
/* 0C0614 8015FBD4 000A7080 */  sll   $t6, $t2, 2
/* 0C0618 8015FBD8 002E0821 */  addu  $at, $at, $t6
/* 0C061C 8015FBDC 10000006 */  b     .L8015FBF8_ovl3
/* 0C0620 8015FBE0 E4246850 */   swc1  $f4, 0x6850($at)
.L8015FBE4_ovl3:
/* 0C0624 8015FBE4 8E0D0000 */  lw    $t5, ($s0)
/* 0C0628 8015FBE8 3C01800E */  lui   $at, 0x800e
/* 0C062C 8015FBEC 000D7880 */  sll   $t7, $t5, 2
/* 0C0630 8015FBF0 002F0821 */  addu  $at, $at, $t7
/* 0C0634 8015FBF4 E4226850 */  swc1  $f2, 0x6850($at)
.L8015FBF8_ovl3:
/* 0C0638 8015FBF8 8E190000 */  lw    $t9, ($s0)
/* 0C063C 8015FBFC 3C01800F */  lui   $at, 0x800f
/* 0C0640 8015FC00 00194080 */  sll   $t0, $t9, 2
/* 0C0644 8015FC04 00280821 */  addu  $at, $at, $t0
/* 0C0648 8015FC08 0C00B5B8 */  jal   sinf
/* 0C064C 8015FC0C C42CC660 */   lwc1  $f12, -0x39a0($at)
/* 0C0650 8015FC10 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C0654 8015FC14 C4227238 */  lwc1  $f2, %lo(D_800D7238)($at)
/* 0C0658 8015FC18 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C065C 8015FC1C 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
/* 0C0660 8015FC20 46020182 */  mul.s $f6, $f0, $f2
/* 0C0664 8015FC24 3C01800E */  lui   $at, 0x800e
/* 0C0668 8015FC28 8E180000 */  lw    $t8, ($s0)
/* 0C066C 8015FC2C 44805000 */  mtc1  $zero, $f10
/* 0C0670 8015FC30 44804000 */  mtc1  $zero, $f8
/* 0C0674 8015FC34 00184880 */  sll   $t1, $t8, 2
/* 0C0678 8015FC38 00290821 */  addu  $at, $at, $t1
/* 0C067C 8015FC3C E4263210 */  swc1  $f6, 0x3210($at)
/* 0C0680 8015FC40 8E0B0000 */  lw    $t3, ($s0)
/* 0C0684 8015FC44 460A103C */  c.lt.s $f2, $f10
/* 0C0688 8015FC48 3C01800E */  lui   $at, 0x800e
/* 0C068C 8015FC4C 000B6080 */  sll   $t4, $t3, 2
/* 0C0690 8015FC50 002C0821 */  addu  $at, $at, $t4
/* 0C0694 8015FC54 45000008 */  bc1f  .L8015FC78_ovl3
/* 0C0698 8015FC58 E4283750 */   swc1  $f8, 0x3750($at)
/* 0C069C 8015FC5C 8E0A0000 */  lw    $t2, ($s0)
/* 0C06A0 8015FC60 3C01800E */  lui   $at, 0x800e
/* 0C06A4 8015FC64 46001407 */  neg.s $f16, $f2
/* 0C06A8 8015FC68 000A7080 */  sll   $t6, $t2, 2
/* 0C06AC 8015FC6C 002E0821 */  addu  $at, $at, $t6
/* 0C06B0 8015FC70 10000006 */  b     .L8015FC8C_ovl3
/* 0C06B4 8015FC74 E4303C90 */   swc1  $f16, 0x3c90($at)
.L8015FC78_ovl3:
/* 0C06B8 8015FC78 8E0D0000 */  lw    $t5, ($s0)
/* 0C06BC 8015FC7C 3C01800E */  lui   $at, 0x800e
/* 0C06C0 8015FC80 000D7880 */  sll   $t7, $t5, 2
/* 0C06C4 8015FC84 002F0821 */  addu  $at, $at, $t7
/* 0C06C8 8015FC88 E4223C90 */  swc1  $f2, 0x3c90($at)
.L8015FC8C_ovl3:
/* 0C06CC 8015FC8C 8E020000 */  lw    $v0, ($s0)
/* 0C06D0 8015FC90 3C19800F */  lui   $t9, 0x800f
/* 0C06D4 8015FC94 3C04801A */  lui   $a0, %hi(D_80198830) # $a0, 0x801a
/* 0C06D8 8015FC98 00021080 */  sll   $v0, $v0, 2
/* 0C06DC 8015FC9C 0322C821 */  addu  $t9, $t9, $v0
/* 0C06E0 8015FCA0 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0C06E4 8015FCA4 3C01800F */  lui   $at, 0x800f
/* 0C06E8 8015FCA8 00220821 */  addu  $at, $at, $v0
/* 0C06EC 8015FCAC 17200006 */  bnez  $t9, .L8015FCC8_ovl3
/* 0C06F0 8015FCB0 24848830 */   addiu $a0, %lo(D_80198830) # addiu $a0, $a0, -0x77d0
/* 0C06F4 8015FCB4 3C01800F */  lui   $at, 0x800f
/* 0C06F8 8015FCB8 00220821 */  addu  $at, $at, $v0
/* 0C06FC 8015FCBC 24080002 */  li    $t0, 2
/* 0C0700 8015FCC0 10000002 */  b     .L8015FCCC_ovl3
/* 0C0704 8015FCC4 AC289AA0 */   sw    $t0, -0x6560($at)
.L8015FCC8_ovl3:
/* 0C0708 8015FCC8 AC209AA0 */  sw    $zero, -0x6560($at)
.L8015FCCC_ovl3:
/* 0C070C 8015FCCC 8C82000C */  lw    $v0, 0xc($a0)
/* 0C0710 8015FCD0 3C05801A */  lui   $a1, %hi(D_80198538) # $a1, 0x801a
/* 0C0714 8015FCD4 24A58538 */  addiu $a1, %lo(D_80198538) # addiu $a1, $a1, -0x7ac8
/* 0C0718 8015FCD8 2C430001 */  sltiu $v1, $v0, 1
/* 0C071C 8015FCDC 24580001 */  addiu $t8, $v0, 1
/* 0C0720 8015FCE0 10600007 */  beqz  $v1, .L8015FD00_ovl3
/* 0C0724 8015FCE4 AC98000C */   sw    $t8, 0xc($a0)
/* 0C0728 8015FCE8 3C06801A */  lui   $a2, %hi(D_8019853C) # $a2, 0x801a
/* 0C072C 8015FCEC 24C6853C */  addiu $a2, %lo(D_8019853C) # addiu $a2, $a2, -0x7ac4
/* 0C0730 8015FCF0 0C029DFA */  jal   func_800A77E8
/* 0C0734 8015FCF4 2404001E */   li    $a0, 30
/* 0C0738 8015FCF8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C073C 8015FCFC 8E10A7C4 */  lw    $s0, %lo(D_8004A7C4)($s0)
.L8015FD00_ovl3:
/* 0C0740 8015FD00 8E090000 */  lw    $t1, ($s0)
/* 0C0744 8015FD04 3C01800F */  lui   $at, 0x800f
/* 0C0748 8015FD08 27A20030 */  addiu $v0, $sp, 0x30
/* 0C074C 8015FD0C 00095880 */  sll   $t3, $t1, 2
/* 0C0750 8015FD10 002B0821 */  addu  $at, $at, $t3
/* 0C0754 8015FD14 3C0C801A */  lui   $t4, %hi(D_80198538) # $t4, 0x801a
/* 0C0758 8015FD18 AC22A360 */  sw    $v0, -0x5ca0($at)
/* 0C075C 8015FD1C 258C8538 */  addiu $t4, %lo(D_80198538) # addiu $t4, $t4, -0x7ac8
/* 0C0760 8015FD20 8D8E0000 */  lw    $t6, ($t4)
/* 0C0764 8015FD24 3C040002 */  lui   $a0, (0x00020285 >> 16) # lui $a0, 2
/* 0C0768 8015FD28 34840285 */  ori   $a0, (0x00020285 & 0xFFFF) # ori $a0, $a0, 0x285
/* 0C076C 8015FD2C AC4E0000 */  sw    $t6, ($v0)
/* 0C0770 8015FD30 8D8A0004 */  lw    $t2, 4($t4)
/* 0C0774 8015FD34 0C02A806 */  jal   func_800AA018
/* 0C0778 8015FD38 AC4A0004 */   sw    $t2, 4($v0)
/* 0C077C 8015FD3C 0C02BE85 */  jal   func_800AFA14
/* 0C0780 8015FD40 00000000 */   nop   
/* 0C0784 8015FD44 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C0788 8015FD48 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C078C 8015FD4C 27BD0038 */  addiu $sp, $sp, 0x38
/* 0C0790 8015FD50 03E00008 */  jr    $ra
/* 0C0794 8015FD54 00000000 */   nop   

.type func_8015F950_ovl3, @function
.size func_8015F950_ovl3, . - func_8015F950_ovl3

glabel func_8015FD58_ovl3
/* 0C0798 8015FD58 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0C079C 8015FD5C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C07A0 8015FD60 0C02CC56 */  jal   func_800B3158
/* 0C07A4 8015FD64 AFA40068 */   sw    $a0, 0x68($sp)
/* 0C07A8 8015FD68 1040016C */  beqz  $v0, .L8016031C_ovl3
/* 0C07AC 8015FD6C 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C07B0 8015FD70 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C07B4 8015FD74 3C04800F */  lui   $a0, 0x800f
/* 0C07B8 8015FD78 2401FFFF */  li    $at, -1
/* 0C07BC 8015FD7C 8C480000 */  lw    $t0, ($v0)
/* 0C07C0 8015FD80 00081880 */  sll   $v1, $t0, 2
/* 0C07C4 8015FD84 00832021 */  addu  $a0, $a0, $v1
/* 0C07C8 8015FD88 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C07CC 8015FD8C 10810017 */  beq   $a0, $at, .L8015FDEC_ovl3
/* 0C07D0 8015FD90 00000000 */   nop   
/* 0C07D4 8015FD94 1480000B */  bnez  $a0, .L8015FDC4_ovl3
/* 0C07D8 8015FD98 00087140 */   sll   $t6, $t0, 5
/* 0C07DC 8015FD9C 3C18801A */  lui   $t8, %hi(D_801982F8) # $t8, 0x801a
/* 0C07E0 8015FDA0 271882F8 */  addiu $t8, %lo(D_801982F8) # addiu $t8, $t8, -0x7d08
/* 0C07E4 8015FDA4 25CFFF80 */  addiu $t7, $t6, -0x80
/* 0C07E8 8015FDA8 3C058019 */  lui   $a1, %hi(D_80193728) # $a1, 0x8019
/* 0C07EC 8015FDAC 24A53728 */  addiu $a1, %lo(D_80193728) # addiu $a1, $a1, 0x3728
/* 0C07F0 8015FDB0 01F82021 */  addu  $a0, $t7, $t8
/* 0C07F4 8015FDB4 00003025 */  move  $a2, $zero
/* 0C07F8 8015FDB8 0C055754 */  jal   func_80155D50_ovl3
/* 0C07FC 8015FDBC 01003825 */   move  $a3, $t0
/* 0C0800 8015FDC0 14400144 */  bnez  $v0, .L801602D4_ovl3
.L8015FDC4_ovl3:
/* 0C0804 8015FDC4 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0808 8015FDC8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C080C 8015FDCC 3C01800F */  lui   $at, 0x800f
/* 0C0810 8015FDD0 2419FFFF */  li    $t9, -1
/* 0C0814 8015FDD4 8C490000 */  lw    $t1, ($v0)
/* 0C0818 8015FDD8 00095080 */  sll   $t2, $t1, 2
/* 0C081C 8015FDDC 002A0821 */  addu  $at, $at, $t2
/* 0C0820 8015FDE0 AC39C2E0 */  sw    $t9, -0x3d20($at)
/* 0C0824 8015FDE4 8C480000 */  lw    $t0, ($v0)
/* 0C0828 8015FDE8 00081880 */  sll   $v1, $t0, 2
.L8015FDEC_ovl3:
/* 0C082C 8015FDEC 3C0B800F */  lui   $t3, 0x800f
/* 0C0830 8015FDF0 01635821 */  addu  $t3, $t3, $v1
/* 0C0834 8015FDF4 8D6B9AA0 */  lw    $t3, -0x6560($t3)
/* 0C0838 8015FDF8 3C048019 */  lui   $a0, %hi(D_80190D90) # $a0, 0x8019
/* 0C083C 8015FDFC 24840D90 */  addiu $a0, %lo(D_80190D90) # addiu $a0, $a0, 0xd90
/* 0C0840 8015FE00 1160001B */  beqz  $t3, .L8015FE70_ovl3
/* 0C0844 8015FE04 00000000 */   nop   
/* 0C0848 8015FE08 0C0445EF */  jal   func_801117BC
/* 0C084C 8015FE0C 01002825 */   move  $a1, $t0
/* 0C0850 8015FE10 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C0854 8015FE14 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C0858 8015FE18 3C0F800E */  lui   $t7, 0x800e
/* 0C085C 8015FE1C 8C490020 */  lw    $t1, 0x20($v0)
/* 0C0860 8015FE20 8D8D0000 */  lw    $t5, ($t4)
/* 0C0864 8015FE24 00402025 */  move  $a0, $v0
/* 0C0868 8015FE28 000D7080 */  sll   $t6, $t5, 2
/* 0C086C 8015FE2C 01EE7821 */  addu  $t7, $t7, $t6
/* 0C0870 8015FE30 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 0C0874 8015FE34 8DF80004 */  lw    $t8, 4($t7)
/* 0C0878 8015FE38 0C044713 */  jal   func_80111C4C
/* 0C087C 8015FE3C AD380008 */   sw    $t8, 8($t1)
/* 0C0880 8015FE40 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0884 8015FE44 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0888 8015FE48 3C0B800F */  lui   $t3, %hi(D_800E9AA0) # $t3, 0x800f
/* 0C088C 8015FE4C 256B9AA0 */  addiu $t3, %lo(D_800E9AA0) # addiu $t3, $t3, -0x6560
/* 0C0890 8015FE50 8C590000 */  lw    $t9, ($v0)
/* 0C0894 8015FE54 00195080 */  sll   $t2, $t9, 2
/* 0C0898 8015FE58 014B2021 */  addu  $a0, $t2, $t3
/* 0C089C 8015FE5C 8C8C0000 */  lw    $t4, ($a0)
/* 0C08A0 8015FE60 258DFFFF */  addiu $t5, $t4, -1
/* 0C08A4 8015FE64 AC8D0000 */  sw    $t5, ($a0)
/* 0C08A8 8015FE68 8C430000 */  lw    $v1, ($v0)
/* 0C08AC 8015FE6C 00031880 */  sll   $v1, $v1, 2
.L8015FE70_ovl3:
/* 0C08B0 8015FE70 3C01800E */  lui   $at, 0x800e
/* 0C08B4 8015FE74 00230821 */  addu  $at, $at, $v1
/* 0C08B8 8015FE78 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C08BC 8015FE7C 3C01800E */  lui   $at, 0x800e
/* 0C08C0 8015FE80 00230821 */  addu  $at, $at, $v1
/* 0C08C4 8015FE84 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C08C8 8015FE88 8C430000 */  lw    $v1, ($v0)
/* 0C08CC 8015FE8C 3C0E800E */  lui   $t6, 0x800e
/* 0C08D0 8015FE90 3C0F800F */  lui   $t7, 0x800f
/* 0C08D4 8015FE94 00031880 */  sll   $v1, $v1, 2
/* 0C08D8 8015FE98 01C37021 */  addu  $t6, $t6, $v1
/* 0C08DC 8015FE9C 8DCE6310 */  lw    $t6, 0x6310($t6)
/* 0C08E0 8015FEA0 01E37821 */  addu  $t7, $t7, $v1
/* 0C08E4 8015FEA4 15C0010B */  bnez  $t6, .L801602D4_ovl3
/* 0C08E8 8015FEA8 00000000 */   nop   
/* 0C08EC 8015FEAC 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 0C08F0 8015FEB0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0C08F4 8015FEB4 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0C08F8 8015FEB8 15E00106 */  bnez  $t7, .L801602D4_ovl3
/* 0C08FC 8015FEBC 00782021 */   addu  $a0, $v1, $t8
/* 0C0900 8015FEC0 8C850000 */  lw    $a1, ($a0)
/* 0C0904 8015FEC4 3C0A8019 */  lui   $t2, %hi(D_80197F60) # $t2, 0x8019
/* 0C0908 8015FEC8 254A7F60 */  addiu $t2, %lo(D_80197F60) # addiu $t2, $t2, 0x7f60
/* 0C090C 8015FECC 24A9FFFF */  addiu $t1, $a1, -1
/* 0C0910 8015FED0 10A00100 */  beqz  $a1, .L801602D4_ovl3
/* 0C0914 8015FED4 AC890000 */   sw    $t1, ($a0)
/* 0C0918 8015FED8 8C430000 */  lw    $v1, ($v0)
/* 0C091C 8015FEDC 3C0C801A */  lui   $t4, %hi(D_801982F8) # $t4, 0x801a
/* 0C0920 8015FEE0 258C82F8 */  addiu $t4, %lo(D_801982F8) # addiu $t4, $t4, -0x7d08
/* 0C0924 8015FEE4 2463FFFC */  addiu $v1, $v1, -4
/* 0C0928 8015FEE8 0003C880 */  sll   $t9, $v1, 2
/* 0C092C 8015FEEC 0323C823 */  subu  $t9, $t9, $v1
/* 0C0930 8015FEF0 0019C8C0 */  sll   $t9, $t9, 3
/* 0C0934 8015FEF4 0323C823 */  subu  $t9, $t9, $v1
/* 0C0938 8015FEF8 0019C880 */  sll   $t9, $t9, 2
/* 0C093C 8015FEFC 00035940 */  sll   $t3, $v1, 5
/* 0C0940 8015FF00 016C2821 */  addu  $a1, $t3, $t4
/* 0C0944 8015FF04 0C05556C */  jal   func_801555B0_ovl3
/* 0C0948 8015FF08 032A2021 */   addu  $a0, $t9, $t2
/* 0C094C 8015FF0C 144000F1 */  bnez  $v0, .L801602D4_ovl3
/* 0C0950 8015FF10 00000000 */   nop   
/* 0C0954 8015FF14 0C058854 */  jal   func_80162150_ovl3
/* 0C0958 8015FF18 00000000 */   nop   
/* 0C095C 8015FF1C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0960 8015FF20 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0964 8015FF24 3C0D800F */  lui   $t5, 0x800f
/* 0C0968 8015FF28 3C0E800F */  lui   $t6, %hi(D_800E9560) # $t6, 0x800f
/* 0C096C 8015FF2C 8C480000 */  lw    $t0, ($v0)
/* 0C0970 8015FF30 25CE9560 */  addiu $t6, %lo(D_800E9560) # addiu $t6, $t6, -0x6aa0
/* 0C0974 8015FF34 00081880 */  sll   $v1, $t0, 2
/* 0C0978 8015FF38 01A36821 */  addu  $t5, $t5, $v1
/* 0C097C 8015FF3C 8DAD8920 */  lw    $t5, -0x76e0($t5)
/* 0C0980 8015FF40 006E2021 */  addu  $a0, $v1, $t6
/* 0C0984 8015FF44 15A000E3 */  bnez  $t5, .L801602D4_ovl3
/* 0C0988 8015FF48 00000000 */   nop   
/* 0C098C 8015FF4C 8C850000 */  lw    $a1, ($a0)
/* 0C0990 8015FF50 10A00005 */  beqz  $a1, .L8015FF68_ovl3
/* 0C0994 8015FF54 24AFFFFF */   addiu $t7, $a1, -1
/* 0C0998 8015FF58 AC8F0000 */  sw    $t7, ($a0)
/* 0C099C 8015FF5C 8C430000 */  lw    $v1, ($v0)
/* 0C09A0 8015FF60 100000C5 */  b     .L80160278_ovl3
/* 0C09A4 8015FF64 00031880 */   sll   $v1, $v1, 2
.L8015FF68_ovl3:
/* 0C09A8 8015FF68 3C18800E */  lui   $t8, %hi(D_800E1D10) # $t8, 0x800e
/* 0C09AC 8015FF6C 27181D10 */  addiu $t8, %lo(D_800E1D10) # addiu $t8, $t8, 0x1d10
/* 0C09B0 8015FF70 00782021 */  addu  $a0, $v1, $t8
/* 0C09B4 8015FF74 8C850000 */  lw    $a1, ($a0)
/* 0C09B8 8015FF78 10A000BF */  beqz  $a1, .L80160278_ovl3
/* 0C09BC 8015FF7C 00054880 */   sll   $t1, $a1, 2
/* 0C09C0 8015FF80 3C19800E */  lui   $t9, 0x800e
/* 0C09C4 8015FF84 0329C821 */  addu  $t9, $t9, $t1
/* 0C09C8 8015FF88 8F39D710 */  lw    $t9, -0x28f0($t9)
/* 0C09CC 8015FF8C 2401FFFF */  li    $at, -1
/* 0C09D0 8015FF90 532100B7 */  beql  $t9, $at, .L80160270_ovl3
/* 0C09D4 8015FF94 AC800000 */   sw    $zero, ($a0)
/* 0C09D8 8015FF98 0C03E60A */  jal   func_800F9828
/* 0C09DC 8015FF9C 01002025 */   move  $a0, $t0
/* 0C09E0 8015FFA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C09E4 8015FFA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C09E8 8015FFA8 E7A0004C */  swc1  $f0, 0x4c($sp)
/* 0C09EC 8015FFAC 3C0A800E */  lui   $t2, 0x800e
/* 0C09F0 8015FFB0 8C430000 */  lw    $v1, ($v0)
/* 0C09F4 8015FFB4 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 0C09F8 8015FFB8 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 0C09FC 8015FFBC 00031880 */  sll   $v1, $v1, 2
/* 0C0A00 8015FFC0 01435021 */  addu  $t2, $t2, $v1
/* 0C0A04 8015FFC4 8D4A1D10 */  lw    $t2, 0x1d10($t2)
/* 0C0A08 8015FFC8 01036821 */  addu  $t5, $t0, $v1
/* 0C0A0C 8015FFCC C5A80000 */  lwc1  $f8, ($t5)
/* 0C0A10 8015FFD0 000A5880 */  sll   $t3, $t2, 2
/* 0C0A14 8015FFD4 010B6021 */  addu  $t4, $t0, $t3
/* 0C0A18 8015FFD8 C5860000 */  lwc1  $f6, ($t4)
/* 0C0A1C 8015FFDC 3C01800E */  lui   $at, 0x800e
/* 0C0A20 8015FFE0 44801000 */  mtc1  $zero, $f2
/* 0C0A24 8015FFE4 46083281 */  sub.s $f10, $f6, $f8
/* 0C0A28 8015FFE8 27A40040 */  addiu $a0, $sp, 0x40
/* 0C0A2C 8015FFEC 27A5004C */  addiu $a1, $sp, 0x4c
/* 0C0A30 8015FFF0 E7AA0050 */  swc1  $f10, 0x50($sp)
/* 0C0A34 8015FFF4 8C4E0000 */  lw    $t6, ($v0)
/* 0C0A38 8015FFF8 000E7880 */  sll   $t7, $t6, 2
/* 0C0A3C 8015FFFC 002F0821 */  addu  $at, $at, $t7
/* 0C0A40 80160000 C43064D0 */  lwc1  $f16, 0x64d0($at)
/* 0C0A44 80160004 3C01800E */  lui   $at, 0x800e
/* 0C0A48 80160008 E7B00040 */  swc1  $f16, 0x40($sp)
/* 0C0A4C 8016000C 8C580000 */  lw    $t8, ($v0)
/* 0C0A50 80160010 E7A20054 */  swc1  $f2, 0x54($sp)
/* 0C0A54 80160014 E7A20048 */  swc1  $f2, 0x48($sp)
/* 0C0A58 80160018 00184880 */  sll   $t1, $t8, 2
/* 0C0A5C 8016001C 00290821 */  addu  $at, $at, $t1
/* 0C0A60 80160020 C4323210 */  lwc1  $f18, 0x3210($at)
/* 0C0A64 80160024 0C0063EF */  jal   lbvector_Angle
/* 0C0A68 80160028 E7B20044 */   swc1  $f18, 0x44($sp)
/* 0C0A6C 8016002C 3C018019 */  lui   $at, %hi(D_801970B8) # $at, 0x8019
/* 0C0A70 80160030 C42470B8 */  lwc1  $f4, %lo(D_801970B8)($at)
/* 0C0A74 80160034 27A5004C */  addiu $a1, $sp, 0x4c
/* 0C0A78 80160038 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0A7C 8016003C 46040032 */  c.eq.s $f0, $f4
/* 0C0A80 80160040 3C018019 */  lui   $at, 0x8019
/* 0C0A84 80160044 45000012 */  bc1f  .L80160090_ovl3
/* 0C0A88 80160048 00000000 */   nop   
/* 0C0A8C 8016004C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0A90 80160050 3C01800E */  lui   $at, 0x800e
/* 0C0A94 80160054 44803000 */  mtc1  $zero, $f6
/* 0C0A98 80160058 8C430000 */  lw    $v1, ($v0)
/* 0C0A9C 8016005C 00031880 */  sll   $v1, $v1, 2
/* 0C0AA0 80160060 00230821 */  addu  $at, $at, $v1
/* 0C0AA4 80160064 C42864D0 */  lwc1  $f8, 0x64d0($at)
/* 0C0AA8 80160068 3C018019 */  lui   $at, 0x8019
/* 0C0AAC 8016006C 4608303C */  c.lt.s $f6, $f8
/* 0C0AB0 80160070 00000000 */  nop   
/* 0C0AB4 80160074 45000004 */  bc1f  .L80160088_ovl3
/* 0C0AB8 80160078 00000000 */   nop   
/* 0C0ABC 8016007C 3C018019 */  lui   $at, %hi(D_801970C4) # $at, 0x8019
/* 0C0AC0 80160080 10000020 */  b     .L80160104_ovl3
/* 0C0AC4 80160084 C42C70BC */   lwc1  $f12, %lo(D_801970BC)($at)
.L80160088_ovl3:
/* 0C0AC8 80160088 1000001E */  b     .L80160104_ovl3
/* 0C0ACC 8016008C C42C70C0 */   lwc1  $f12, %lo(D_801970C0)($at)
.L80160090_ovl3:
/* 0C0AD0 80160090 C42A70C4 */  lwc1  $f10, %lo(D_801970C4)($at)
/* 0C0AD4 80160094 27A40040 */  addiu $a0, $sp, 0x40
/* 0C0AD8 80160098 460A003C */  c.lt.s $f0, $f10
/* 0C0ADC 8016009C 00000000 */  nop   
/* 0C0AE0 801600A0 45000009 */  bc1f  .L801600C8_ovl3
/* 0C0AE4 801600A4 00000000 */   nop   
/* 0C0AE8 801600A8 8CAB0000 */  lw    $t3, ($a1)
/* 0C0AEC 801600AC 27B90040 */  addiu $t9, $sp, 0x40
/* 0C0AF0 801600B0 AF2B0000 */  sw    $t3, ($t9)
/* 0C0AF4 801600B4 8CAA0004 */  lw    $t2, 4($a1)
/* 0C0AF8 801600B8 AF2A0004 */  sw    $t2, 4($t9)
/* 0C0AFC 801600BC 8CAB0008 */  lw    $t3, 8($a1)
/* 0C0B00 801600C0 10000008 */  b     .L801600E4_ovl3
/* 0C0B04 801600C4 AF2B0008 */   sw    $t3, 8($t9)
.L801600C8_ovl3:
/* 0C0B08 801600C8 0C0065D0 */  jal   vec3_normalized_cross_product
/* 0C0B0C 801600CC 27A60034 */   addiu $a2, $sp, 0x34
/* 0C0B10 801600D0 3C063DB2 */  lui   $a2, (0x3DB2B8C3 >> 16) # lui $a2, 0x3db2
/* 0C0B14 801600D4 34C6B8C3 */  ori   $a2, (0x3DB2B8C3 & 0xFFFF) # ori $a2, $a2, 0xb8c3
/* 0C0B18 801600D8 27A40040 */  addiu $a0, $sp, 0x40
/* 0C0B1C 801600DC 0C00647E */  jal   func_800191F8_ovl3
/* 0C0B20 801600E0 27A50034 */   addiu $a1, $sp, 0x34
.L801600E4_ovl3:
/* 0C0B24 801600E4 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* 0C0B28 801600E8 0C0061C3 */  jal   atan2f
/* 0C0B2C 801600EC C7AE0040 */   lwc1  $f14, 0x40($sp)
/* 0C0B30 801600F0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0B34 801600F4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0B38 801600F8 46000306 */  mov.s $f12, $f0
/* 0C0B3C 801600FC 8C430000 */  lw    $v1, ($v0)
/* 0C0B40 80160100 00031880 */  sll   $v1, $v1, 2
.L80160104_ovl3:
/* 0C0B44 80160104 3C01800F */  lui   $at, 0x800f
/* 0C0B48 80160108 00230821 */  addu  $at, $at, $v1
/* 0C0B4C 8016010C AC209560 */  sw    $zero, -0x6aa0($at)
/* 0C0B50 80160110 8C4C0000 */  lw    $t4, ($v0)
/* 0C0B54 80160114 3C0E800F */  lui   $t6, 0x800f
/* 0C0B58 80160118 3C0140F0 */  li    $at, 0x40F00000 # 7.500000
/* 0C0B5C 8016011C 000C6880 */  sll   $t5, $t4, 2
/* 0C0B60 80160120 01CD7021 */  addu  $t6, $t6, $t5
/* 0C0B64 80160124 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 0C0B68 80160128 31CF0004 */  andi  $t7, $t6, 4
/* 0C0B6C 8016012C 55E00007 */  bnezl $t7, .L8016014C_ovl3
/* 0C0B70 80160130 44819000 */   mtc1  $at, $f18
/* 0C0B74 80160134 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0C0B78 80160138 44818000 */  mtc1  $at, $f16
/* 0C0B7C 8016013C 3C01800D */  li    $at, 0x800D0000 # -0.000000
/* 0C0B80 80160140 10000004 */  b     .L80160154_ovl3
/* 0C0B84 80160144 E4307238 */   swc1  $f16, %lo(D_800D7238)($at)
/* 0C0B88 80160148 44819000 */  mtc1  $at, $f18
.L8016014C_ovl3:
/* 0C0B8C 8016014C 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C0B90 80160150 E4327238 */  swc1  $f18, %lo(D_800D7238)($at)
.L80160154_ovl3:
/* 0C0B94 80160154 0C00D604 */  jal   cosf
/* 0C0B98 80160158 E7AC0058 */   swc1  $f12, 0x58($sp)
/* 0C0B9C 8016015C 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C0BA0 80160160 C4227238 */  lwc1  $f2, %lo(D_800D7238)($at)
/* 0C0BA4 80160164 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0BA8 80160168 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0BAC 8016016C 46020102 */  mul.s $f4, $f0, $f2
/* 0C0BB0 80160170 3C01800E */  lui   $at, 0x800e
/* 0C0BB4 80160174 8C580000 */  lw    $t8, ($v0)
/* 0C0BB8 80160178 44804000 */  mtc1  $zero, $f8
/* 0C0BBC 8016017C 44803000 */  mtc1  $zero, $f6
/* 0C0BC0 80160180 00184880 */  sll   $t1, $t8, 2
/* 0C0BC4 80160184 00290821 */  addu  $at, $at, $t1
/* 0C0BC8 80160188 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0C0BCC 8016018C 8C590000 */  lw    $t9, ($v0)
/* 0C0BD0 80160190 4608103C */  c.lt.s $f2, $f8
/* 0C0BD4 80160194 3C01800E */  lui   $at, 0x800e
/* 0C0BD8 80160198 00195080 */  sll   $t2, $t9, 2
/* 0C0BDC 8016019C 002A0821 */  addu  $at, $at, $t2
/* 0C0BE0 801601A0 C7AC0058 */  lwc1  $f12, 0x58($sp)
/* 0C0BE4 801601A4 45000008 */  bc1f  .L801601C8_ovl3
/* 0C0BE8 801601A8 E4266690 */   swc1  $f6, 0x6690($at)
/* 0C0BEC 801601AC 8C4B0000 */  lw    $t3, ($v0)
/* 0C0BF0 801601B0 3C01800E */  lui   $at, 0x800e
/* 0C0BF4 801601B4 46001287 */  neg.s $f10, $f2
/* 0C0BF8 801601B8 000B6080 */  sll   $t4, $t3, 2
/* 0C0BFC 801601BC 002C0821 */  addu  $at, $at, $t4
/* 0C0C00 801601C0 10000006 */  b     .L801601DC_ovl3
/* 0C0C04 801601C4 E42A6850 */   swc1  $f10, 0x6850($at)
.L801601C8_ovl3:
/* 0C0C08 801601C8 8C4D0000 */  lw    $t5, ($v0)
/* 0C0C0C 801601CC 3C01800E */  lui   $at, 0x800e
/* 0C0C10 801601D0 000D7080 */  sll   $t6, $t5, 2
/* 0C0C14 801601D4 002E0821 */  addu  $at, $at, $t6
/* 0C0C18 801601D8 E4226850 */  swc1  $f2, 0x6850($at)
.L801601DC_ovl3:
/* 0C0C1C 801601DC 0C00B5B8 */  jal   sinf
/* 0C0C20 801601E0 00000000 */   nop   
/* 0C0C24 801601E4 3C01800D */  lui   $at, %hi(D_800D7238) # $at, 0x800d
/* 0C0C28 801601E8 C4227238 */  lwc1  $f2, %lo(D_800D7238)($at)
/* 0C0C2C 801601EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0C30 801601F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0C34 801601F4 46020402 */  mul.s $f16, $f0, $f2
/* 0C0C38 801601F8 3C01800E */  lui   $at, 0x800e
/* 0C0C3C 801601FC 8C4F0000 */  lw    $t7, ($v0)
/* 0C0C40 80160200 44802000 */  mtc1  $zero, $f4
/* 0C0C44 80160204 44809000 */  mtc1  $zero, $f18
/* 0C0C48 80160208 000FC080 */  sll   $t8, $t7, 2
/* 0C0C4C 8016020C 00380821 */  addu  $at, $at, $t8
/* 0C0C50 80160210 E4303210 */  swc1  $f16, 0x3210($at)
/* 0C0C54 80160214 8C490000 */  lw    $t1, ($v0)
/* 0C0C58 80160218 4604103C */  c.lt.s $f2, $f4
/* 0C0C5C 8016021C 3C01800E */  lui   $at, 0x800e
/* 0C0C60 80160220 0009C880 */  sll   $t9, $t1, 2
/* 0C0C64 80160224 00390821 */  addu  $at, $at, $t9
/* 0C0C68 80160228 45000008 */  bc1f  .L8016024C_ovl3
/* 0C0C6C 8016022C E4323750 */   swc1  $f18, 0x3750($at)
/* 0C0C70 80160230 8C4A0000 */  lw    $t2, ($v0)
/* 0C0C74 80160234 3C01800E */  lui   $at, 0x800e
/* 0C0C78 80160238 46001187 */  neg.s $f6, $f2
/* 0C0C7C 8016023C 000A5880 */  sll   $t3, $t2, 2
/* 0C0C80 80160240 002B0821 */  addu  $at, $at, $t3
/* 0C0C84 80160244 10000006 */  b     .L80160260_ovl3
/* 0C0C88 80160248 E4263C90 */   swc1  $f6, 0x3c90($at)
.L8016024C_ovl3:
/* 0C0C8C 8016024C 8C4C0000 */  lw    $t4, ($v0)
/* 0C0C90 80160250 3C01800E */  lui   $at, 0x800e
/* 0C0C94 80160254 000C6880 */  sll   $t5, $t4, 2
/* 0C0C98 80160258 002D0821 */  addu  $at, $at, $t5
/* 0C0C9C 8016025C E4223C90 */  swc1  $f2, 0x3c90($at)
.L80160260_ovl3:
/* 0C0CA0 80160260 8C430000 */  lw    $v1, ($v0)
/* 0C0CA4 80160264 10000004 */  b     .L80160278_ovl3
/* 0C0CA8 80160268 00031880 */   sll   $v1, $v1, 2
/* 0C0CAC 8016026C AC800000 */  sw    $zero, ($a0)
.L80160270_ovl3:
/* 0C0CB0 80160270 8C430000 */  lw    $v1, ($v0)
/* 0C0CB4 80160274 00031880 */  sll   $v1, $v1, 2
.L80160278_ovl3:
/* 0C0CB8 80160278 3C01800E */  lui   $at, 0x800e
/* 0C0CBC 8016027C 00230821 */  addu  $at, $at, $v1
/* 0C0CC0 80160280 C42C3210 */  lwc1  $f12, 0x3210($at)
/* 0C0CC4 80160284 3C01800E */  lui   $at, 0x800e
/* 0C0CC8 80160288 00230821 */  addu  $at, $at, $v1
/* 0C0CCC 8016028C 0C0061C3 */  jal   atan2f
/* 0C0CD0 80160290 C42E64D0 */   lwc1  $f14, 0x64d0($at)
/* 0C0CD4 80160294 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C0CD8 80160298 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C0CDC 8016029C 46000207 */  neg.s $f8, $f0
/* 0C0CE0 801602A0 3C01800E */  lui   $at, 0x800e
/* 0C0CE4 801602A4 8C4E0000 */  lw    $t6, ($v0)
/* 0C0CE8 801602A8 3C048019 */  lui   $a0, %hi(D_80190D90) # $a0, 0x8019
/* 0C0CEC 801602AC 24840D90 */  addiu $a0, %lo(D_80190D90) # addiu $a0, $a0, 0xd90
/* 0C0CF0 801602B0 000E7880 */  sll   $t7, $t6, 2
/* 0C0CF4 801602B4 002F0821 */  addu  $at, $at, $t7
/* 0C0CF8 801602B8 E4284010 */  swc1  $f8, 0x4010($at)
/* 0C0CFC 801602BC 0C0445EF */  jal   func_801117BC
/* 0C0D00 801602C0 8C450000 */   lw    $a1, ($v0)
/* 0C0D04 801602C4 0C044713 */  jal   func_80111C4C
/* 0C0D08 801602C8 00402025 */   move  $a0, $v0
/* 0C0D0C 801602CC 10000027 */  b     .L8016036C_ovl3
/* 0C0D10 801602D0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801602D4_ovl3:
/* 0C0D14 801602D4 0C029D9E */  jal   play_sound
/* 0C0D18 801602D8 2404000E */   li    $a0, 14
/* 0C0D1C 801602DC 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C0D20 801602E0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C0D24 801602E4 3C08800E */  lui   $t0, %hi(gEntitiesNextPosYArray) # $t0, 0x800e
/* 0C0D28 801602E8 25082790 */  addiu $t0, %lo(gEntitiesNextPosYArray) # addiu $t0, $t0, 0x2790
/* 0C0D2C 801602EC 8F030000 */  lw    $v1, ($t8)
/* 0C0D30 801602F0 3C05800E */  lui   $a1, 0x800e
/* 0C0D34 801602F4 3C07800E */  lui   $a3, 0x800e
/* 0C0D38 801602F8 00031880 */  sll   $v1, $v1, 2
/* 0C0D3C 801602FC 00A32821 */  addu  $a1, $a1, $v1
/* 0C0D40 80160300 01034821 */  addu  $t1, $t0, $v1
/* 0C0D44 80160304 00E33821 */  addu  $a3, $a3, $v1
/* 0C0D48 80160308 8CE72950 */  lw    $a3, 0x2950($a3)
/* 0C0D4C 8016030C 8D260000 */  lw    $a2, ($t1)
/* 0C0D50 80160310 8CA525D0 */  lw    $a1, 0x25d0($a1)
/* 0C0D54 80160314 0C03F5D5 */  jal   func_800FD754
/* 0C0D58 80160318 00002025 */   move  $a0, $zero
.L8016031C_ovl3:
/* 0C0D5C 8016031C 3C02801A */  lui   $v0, %hi(D_80198830) # $v0, 0x801a
/* 0C0D60 80160320 24428830 */  addiu $v0, %lo(D_80198830) # addiu $v0, $v0, -0x77d0
/* 0C0D64 80160324 8C59000C */  lw    $t9, 0xc($v0)
/* 0C0D68 80160328 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C0D6C 8016032C 272AFFFF */  addiu $t2, $t9, -1
/* 0C0D70 80160330 15400009 */  bnez  $t2, .L80160358_ovl3
/* 0C0D74 80160334 AC4A000C */   sw    $t2, 0xc($v0)
/* 0C0D78 80160338 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C0D7C 8016033C 3C04800F */  lui   $a0, 0x800f
/* 0C0D80 80160340 8D8D0000 */  lw    $t5, ($t4)
/* 0C0D84 80160344 000D7080 */  sll   $t6, $t5, 2
/* 0C0D88 80160348 008E2021 */  addu  $a0, $a0, $t6
/* 0C0D8C 8016034C 8C84A360 */  lw    $a0, -0x5ca0($a0)
/* 0C0D90 80160350 0C029E1C */  jal   func_800A7870
/* 0C0D94 80160354 24850004 */   addiu $a1, $a0, 4
.L80160358_ovl3:
/* 0C0D98 80160358 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C0D9C 8016035C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C0DA0 80160360 0C02C640 */  jal   func_800B1900
/* 0C0DA4 80160364 95E40002 */   lhu   $a0, 2($t7)
/* 0C0DA8 80160368 8FBF0014 */  lw    $ra, 0x14($sp)
.L8016036C_ovl3:
/* 0C0DAC 8016036C 27BD0068 */  addiu $sp, $sp, 0x68
/* 0C0DB0 80160370 03E00008 */  jr    $ra
/* 0C0DB4 80160374 00000000 */   nop   

.type func_8015FD58_ovl3, @function
.size func_8015FD58_ovl3, . - func_8015FD58_ovl3

glabel func_80160378_ovl3
/* 0C0DB8 80160378 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C0DBC 8016037C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C0DC0 80160380 0C058738 */  jal   func_80161CE0_ovl3
/* 0C0DC4 80160384 AFB00018 */   sw    $s0, 0x18($sp)
/* 0C0DC8 80160388 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C0DCC 8016038C 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C0DD0 80160390 8E0E0000 */  lw    $t6, ($s0)
/* 0C0DD4 80160394 3C04800E */  lui   $a0, 0x800e
/* 0C0DD8 80160398 3C0541A0 */  lui   $a1, 0x41a0
/* 0C0DDC 8016039C 8DCF0000 */  lw    $t7, ($t6)
/* 0C0DE0 801603A0 24060000 */  li    $a2, 0
/* 0C0DE4 801603A4 000FC080 */  sll   $t8, $t7, 2
/* 0C0DE8 801603A8 00982021 */  addu  $a0, $a0, $t8
/* 0C0DEC 801603AC 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0C0DF0 801603B0 8C841D10 */   lw    $a0, 0x1d10($a0)
/* 0C0DF4 801603B4 8E030000 */  lw    $v1, ($s0)
/* 0C0DF8 801603B8 3C19800B */  lui   $t9, %hi(func_800B4954) # $t9, 0x800b
/* 0C0DFC 801603BC 3C01800E */  lui   $at, 0x800e
/* 0C0E00 801603C0 8C690000 */  lw    $t1, ($v1)
/* 0C0E04 801603C4 27394954 */  addiu $t9, %lo(func_800B4954) # addiu $t9, $t9, 0x4954
/* 0C0E08 801603C8 3C0B8016 */  lui   $t3, %hi(D_801606A0) # $t3, 0x8016
/* 0C0E0C 801603CC 00095080 */  sll   $t2, $t1, 2
/* 0C0E10 801603D0 002A0821 */  addu  $at, $at, $t2
/* 0C0E14 801603D4 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0C0E18 801603D8 8C6C0000 */  lw    $t4, ($v1)
/* 0C0E1C 801603DC 3C01800E */  lui   $at, 0x800e
/* 0C0E20 801603E0 256B06A0 */  addiu $t3, %lo(D_801606A0) # addiu $t3, $t3, 0x6a0
/* 0C0E24 801603E4 000C6880 */  sll   $t5, $t4, 2
/* 0C0E28 801603E8 002D0821 */  addu  $at, $at, $t5
/* 0C0E2C 801603EC AC2BF150 */  sw    $t3, -0xeb0($at)
/* 0C0E30 801603F0 8C6F0000 */  lw    $t7, ($v1)
/* 0C0E34 801603F4 3C01800E */  lui   $at, 0x800e
/* 0C0E38 801603F8 3C0E8019 */  lui   $t6, %hi(D_80192F10) # $t6, 0x8019
/* 0C0E3C 801603FC 000FC080 */  sll   $t8, $t7, 2
/* 0C0E40 80160400 00380821 */  addu  $at, $at, $t8
/* 0C0E44 80160404 25CE2F10 */  addiu $t6, %lo(D_80192F10) # addiu $t6, $t6, 0x2f10
/* 0C0E48 80160408 AC2E0490 */  sw    $t6, 0x0490($at)
/* 0C0E4C 8016040C 8C670000 */  lw    $a3, ($v1)
/* 0C0E50 80160410 3C0B801A */  lui   $t3, %hi(D_801982F8) # $t3, 0x801a
/* 0C0E54 80160414 3C0A8019 */  lui   $t2, %hi(D_80197F60) # $t2, 0x8019
/* 0C0E58 80160418 24E8FFFC */  addiu $t0, $a3, -4
/* 0C0E5C 8016041C 0008C880 */  sll   $t9, $t0, 2
/* 0C0E60 80160420 0328C823 */  subu  $t9, $t9, $t0
/* 0C0E64 80160424 0019C8C0 */  sll   $t9, $t9, 3
/* 0C0E68 80160428 0328C823 */  subu  $t9, $t9, $t0
/* 0C0E6C 8016042C 3C04800E */  lui   $a0, 0x800e
/* 0C0E70 80160430 00074880 */  sll   $t1, $a3, 2
/* 0C0E74 80160434 00892021 */  addu  $a0, $a0, $t1
/* 0C0E78 80160438 0019C880 */  sll   $t9, $t9, 2
/* 0C0E7C 8016043C 00086140 */  sll   $t4, $t0, 5
/* 0C0E80 80160440 254A7F60 */  addiu $t2, %lo(D_80197F60) # addiu $t2, $t2, 0x7f60
/* 0C0E84 80160444 256B82F8 */  addiu $t3, %lo(D_801982F8) # addiu $t3, $t3, -0x7d08
/* 0C0E88 80160448 018B3021 */  addu  $a2, $t4, $t3
/* 0C0E8C 8016044C 032A2821 */  addu  $a1, $t9, $t2
/* 0C0E90 80160450 0C055192 */  jal   func_80154648_ovl3
/* 0C0E94 80160454 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C0E98 80160458 8E030000 */  lw    $v1, ($s0)
/* 0C0E9C 8016045C 3C018019 */  lui   $at, %hi(D_801970C8) # $at, 0x8019
/* 0C0EA0 80160460 C42070C8 */  lwc1  $f0, %lo(D_801970C8)($at)
/* 0C0EA4 80160464 8C6D0000 */  lw    $t5, ($v1)
/* 0C0EA8 80160468 3C018019 */  lui   $at, %hi(D_801970CC) # $at, 0x8019
/* 0C0EAC 8016046C C42470CC */  lwc1  $f4, %lo(D_801970CC)($at)
/* 0C0EB0 80160470 3C01800E */  lui   $at, 0x800e
/* 0C0EB4 80160474 000D7880 */  sll   $t7, $t5, 2
/* 0C0EB8 80160478 002F0821 */  addu  $at, $at, $t7
/* 0C0EBC 8016047C E4244010 */  swc1  $f4, 0x4010($at)
/* 0C0EC0 80160480 8C6E0000 */  lw    $t6, ($v1)
/* 0C0EC4 80160484 3C01800E */  lui   $at, 0x800e
/* 0C0EC8 80160488 3C040002 */  lui   $a0, (0x0002003E >> 16) # lui $a0, 2
/* 0C0ECC 8016048C 000EC080 */  sll   $t8, $t6, 2
/* 0C0ED0 80160490 00380821 */  addu  $at, $at, $t8
/* 0C0ED4 80160494 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C0ED8 80160498 8C690000 */  lw    $t1, ($v1)
/* 0C0EDC 8016049C 3C01800E */  lui   $at, 0x800e
/* 0C0EE0 801604A0 3484003E */  ori   $a0, (0x0002003E & 0xFFFF) # ori $a0, $a0, 0x3e
/* 0C0EE4 801604A4 0009C880 */  sll   $t9, $t1, 2
/* 0C0EE8 801604A8 00390821 */  addu  $at, $at, $t9
/* 0C0EEC 801604AC E4204710 */  swc1  $f0, 0x4710($at)
/* 0C0EF0 801604B0 8C6A0000 */  lw    $t2, ($v1)
/* 0C0EF4 801604B4 3C01800E */  lui   $at, 0x800e
/* 0C0EF8 801604B8 24050021 */  li    $a1, 33
/* 0C0EFC 801604BC 000A6080 */  sll   $t4, $t2, 2
/* 0C0F00 801604C0 002C0821 */  addu  $at, $at, $t4
/* 0C0F04 801604C4 24060010 */  li    $a2, 16
/* 0C0F08 801604C8 0C02A619 */  jal   func_800A9864
/* 0C0F0C 801604CC E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C0F10 801604D0 8E0B0000 */  lw    $t3, ($s0)
/* 0C0F14 801604D4 3C0E800E */  lui   $t6, 0x800e
/* 0C0F18 801604D8 24040001 */  li    $a0, 1
/* 0C0F1C 801604DC 8D6D0000 */  lw    $t5, ($t3)
/* 0C0F20 801604E0 24050001 */  li    $a1, 1
/* 0C0F24 801604E4 24060014 */  li    $a2, 20
/* 0C0F28 801604E8 000D7880 */  sll   $t7, $t5, 2
/* 0C0F2C 801604EC 01CF7021 */  addu  $t6, $t6, $t7
/* 0C0F30 801604F0 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 0C0F34 801604F4 0C02A040 */  jal   func_800A8100
/* 0C0F38 801604F8 8DC70004 */   lw    $a3, 4($t6)
/* 0C0F3C 801604FC 8E030000 */  lw    $v1, ($s0)
/* 0C0F40 80160500 3C01800F */  lui   $at, 0x800f
/* 0C0F44 80160504 3C0C800E */  lui   $t4, 0x800e
/* 0C0F48 80160508 8C780000 */  lw    $t8, ($v1)
/* 0C0F4C 8016050C 24040001 */  li    $a0, 1
/* 0C0F50 80160510 24050001 */  li    $a1, 1
/* 0C0F54 80160514 00184880 */  sll   $t1, $t8, 2
/* 0C0F58 80160518 00290821 */  addu  $at, $at, $t1
/* 0C0F5C 8016051C AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0C0F60 80160520 8C790000 */  lw    $t9, ($v1)
/* 0C0F64 80160524 24060014 */  li    $a2, 20
/* 0C0F68 80160528 00195080 */  sll   $t2, $t9, 2
/* 0C0F6C 8016052C 018A6021 */  addu  $t4, $t4, $t2
/* 0C0F70 80160530 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 0C0F74 80160534 0C02A040 */  jal   func_800A8100
/* 0C0F78 80160538 8D870008 */   lw    $a3, 8($t4)
/* 0C0F7C 8016053C 8E030000 */  lw    $v1, ($s0)
/* 0C0F80 80160540 3C01800F */  lui   $at, 0x800f
/* 0C0F84 80160544 3C05800F */  lui   $a1, %hi(D_800EA8A0) # $a1, 0x800f
/* 0C0F88 80160548 8C6B0000 */  lw    $t3, ($v1)
/* 0C0F8C 8016054C 24A5A8A0 */  addiu $a1, %lo(D_800EA8A0) # addiu $a1, $a1, -0x5760
/* 0C0F90 80160550 3C06800F */  lui   $a2, %hi(D_800E8AE0) # $a2, 0x800f
/* 0C0F94 80160554 000B6880 */  sll   $t5, $t3, 2
/* 0C0F98 80160558 002D0821 */  addu  $at, $at, $t5
/* 0C0F9C 8016055C AC22B4E0 */  sw    $v0, -0x4b20($at)
/* 0C0FA0 80160560 8C6F0000 */  lw    $t7, ($v1)
/* 0C0FA4 80160564 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C0FA8 80160568 44813000 */  mtc1  $at, $f6
/* 0C0FAC 8016056C 000F7080 */  sll   $t6, $t7, 2
/* 0C0FB0 80160570 00AEC021 */  addu  $t8, $a1, $t6
/* 0C0FB4 80160574 E7060000 */  swc1  $f6, ($t8)
/* 0C0FB8 80160578 8C640000 */  lw    $a0, ($v1)
/* 0C0FBC 8016057C 3C01800F */  lui   $at, 0x800f
/* 0C0FC0 80160580 24C68AE0 */  addiu $a2, %lo(D_800E8AE0) # addiu $a2, $a2, -0x7520
/* 0C0FC4 80160584 00042080 */  sll   $a0, $a0, 2
/* 0C0FC8 80160588 00A44821 */  addu  $t1, $a1, $a0
/* 0C0FCC 8016058C C5280000 */  lwc1  $f8, ($t1)
/* 0C0FD0 80160590 00240821 */  addu  $at, $at, $a0
/* 0C0FD4 80160594 240B0014 */  li    $t3, 20
/* 0C0FD8 80160598 E428A6E0 */  swc1  $f8, -0x5920($at)
/* 0C0FDC 8016059C 8C640000 */  lw    $a0, ($v1)
/* 0C0FE0 801605A0 3C01800F */  lui   $at, 0x800f
/* 0C0FE4 801605A4 240D001E */  li    $t5, 30
/* 0C0FE8 801605A8 00042080 */  sll   $a0, $a0, 2
/* 0C0FEC 801605AC 00C4C821 */  addu  $t9, $a2, $a0
/* 0C0FF0 801605B0 8F2A0000 */  lw    $t2, ($t9)
/* 0C0FF4 801605B4 00240821 */  addu  $at, $at, $a0
/* 0C0FF8 801605B8 3C02800D */  lui   $v0, %hi(D_800D7238) # $v0, 0x800d
/* 0C0FFC 801605BC 314C0004 */  andi  $t4, $t2, 4
/* 0C1000 801605C0 11800005 */  beqz  $t4, .L801605D8_ovl3
/* 0C1004 801605C4 00000000 */   nop   
/* 0C1008 801605C8 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 0C100C 801605CC 00240821 */  addu  $at, $at, $a0
/* 0C1010 801605D0 10000002 */  b     .L801605DC_ovl3
/* 0C1014 801605D4 AC2B9720 */   sw    $t3, -0x68e0($at)
.L801605D8_ovl3:
/* 0C1018 801605D8 AC2D9720 */  sw    $t5, -0x68e0($at)
.L801605DC_ovl3:
/* 0C101C 801605DC 8C6F0000 */  lw    $t7, ($v1)
/* 0C1020 801605E0 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0C1024 801605E4 000F7080 */  sll   $t6, $t7, 2
/* 0C1028 801605E8 00CEC021 */  addu  $t8, $a2, $t6
/* 0C102C 801605EC 8F090000 */  lw    $t1, ($t8)
/* 0C1030 801605F0 31390004 */  andi  $t9, $t1, 4
/* 0C1034 801605F4 57200007 */  bnezl $t9, .L80160614_ovl3
/* 0C1038 801605F8 44818000 */   mtc1  $at, $f16
/* 0C103C 801605FC 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 0C1040 80160600 44815000 */  mtc1  $at, $f10
/* 0C1044 80160604 24427238 */  addiu $v0, %lo(D_800D7238) # addiu $v0, $v0, 0x7238
/* 0C1048 80160608 10000005 */  b     .L80160620_ovl3
/* 0C104C 8016060C E44A0000 */   swc1  $f10, ($v0)
/* 0C1050 80160610 44818000 */  mtc1  $at, $f16
.L80160614_ovl3:
/* 0C1054 80160614 3C02800D */  lui   $v0, %hi(D_800D7238) # $v0, 0x800d
/* 0C1058 80160618 24427238 */  addiu $v0, %lo(D_800D7238) # addiu $v0, $v0, 0x7238
/* 0C105C 8016061C E4500000 */  swc1  $f16, ($v0)
.L80160620_ovl3:
/* 0C1060 80160620 8C640000 */  lw    $a0, ($v1)
/* 0C1064 80160624 3C01800E */  lui   $at, 0x800e
/* 0C1068 80160628 C4400000 */  lwc1  $f0, ($v0)
/* 0C106C 8016062C 00042080 */  sll   $a0, $a0, 2
/* 0C1070 80160630 00240821 */  addu  $at, $at, $a0
/* 0C1074 80160634 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 0C1078 80160638 44803000 */  mtc1  $zero, $f6
/* 0C107C 8016063C 3C01800E */  lui   $at, 0x800e
/* 0C1080 80160640 46009102 */  mul.s $f4, $f18, $f0
/* 0C1084 80160644 4606003C */  c.lt.s $f0, $f6
/* 0C1088 80160648 00240821 */  addu  $at, $at, $a0
/* 0C108C 8016064C 45000008 */  bc1f  .L80160670_ovl3
/* 0C1090 80160650 E42464D0 */   swc1  $f4, 0x64d0($at)
/* 0C1094 80160654 8C6A0000 */  lw    $t2, ($v1)
/* 0C1098 80160658 3C01800E */  lui   $at, 0x800e
/* 0C109C 8016065C 46000207 */  neg.s $f8, $f0
/* 0C10A0 80160660 000A6080 */  sll   $t4, $t2, 2
/* 0C10A4 80160664 002C0821 */  addu  $at, $at, $t4
/* 0C10A8 80160668 10000006 */  b     .L80160684_ovl3
/* 0C10AC 8016066C E4286850 */   swc1  $f8, 0x6850($at)
.L80160670_ovl3:
/* 0C10B0 80160670 8C6B0000 */  lw    $t3, ($v1)
/* 0C10B4 80160674 3C01800E */  lui   $at, 0x800e
/* 0C10B8 80160678 000B6880 */  sll   $t5, $t3, 2
/* 0C10BC 8016067C 002D0821 */  addu  $at, $at, $t5
/* 0C10C0 80160680 E4206850 */  swc1  $f0, 0x6850($at)
.L80160684_ovl3:
/* 0C10C4 80160684 0C02BE85 */  jal   func_800AFA14
/* 0C10C8 80160688 00000000 */   nop   
/* 0C10CC 8016068C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C10D0 80160690 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C10D4 80160694 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C10D8 80160698 03E00008 */  jr    $ra
/* 0C10DC 8016069C 00000000 */   nop   

.type func_80160378_ovl3, @function
.size func_80160378_ovl3, . - func_80160378_ovl3

glabel func_801606A0_ovl3
/* 0C10E0 801606A0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0C10E4 801606A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C10E8 801606A8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C10EC 801606AC 0C02CC56 */  jal   func_800B3158
/* 0C10F0 801606B0 AFA40048 */   sw    $a0, 0x48($sp)
/* 0C10F4 801606B4 14400026 */  bnez  $v0, .L80160750_ovl3
/* 0C10F8 801606B8 3C108005 */   lui   $s0, 0x8005
/* 0C10FC 801606BC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C1100 801606C0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C1104 801606C4 8E020000 */  lw    $v0, ($s0)
/* 0C1108 801606C8 3C18800F */  lui   $t8, 0x800f
/* 0C110C 801606CC 3C09800F */  lui   $t1, 0x800f
/* 0C1110 801606D0 8C4E0000 */  lw    $t6, ($v0)
/* 0C1114 801606D4 27A4003C */  addiu $a0, $sp, 0x3c
/* 0C1118 801606D8 27A50040 */  addiu $a1, $sp, 0x40
/* 0C111C 801606DC 000E7880 */  sll   $t7, $t6, 2
/* 0C1120 801606E0 030FC021 */  addu  $t8, $t8, $t7
/* 0C1124 801606E4 8F1898E0 */  lw    $t8, -0x6720($t8)
/* 0C1128 801606E8 AFB8003C */  sw    $t8, 0x3c($sp)
/* 0C112C 801606EC 8C590000 */  lw    $t9, ($v0)
/* 0C1130 801606F0 00194080 */  sll   $t0, $t9, 2
/* 0C1134 801606F4 01284821 */  addu  $t1, $t1, $t0
/* 0C1138 801606F8 8D299AA0 */  lw    $t1, -0x6560($t1)
/* 0C113C 801606FC 0C029E1C */  jal   func_800A7870
/* 0C1140 80160700 A7A90040 */   sh    $t1, 0x40($sp)
/* 0C1144 80160704 8E0A0000 */  lw    $t2, ($s0)
/* 0C1148 80160708 3C04800F */  lui   $a0, 0x800f
/* 0C114C 8016070C 8D4B0000 */  lw    $t3, ($t2)
/* 0C1150 80160710 000B6080 */  sll   $t4, $t3, 2
/* 0C1154 80160714 008C2021 */  addu  $a0, $a0, $t4
/* 0C1158 80160718 0C0287CC */  jal   func_800A1F30
/* 0C115C 8016071C 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C1160 80160720 8E0D0000 */  lw    $t5, ($s0)
/* 0C1164 80160724 3C04800F */  lui   $a0, 0x800f
/* 0C1168 80160728 8DAE0000 */  lw    $t6, ($t5)
/* 0C116C 8016072C 000E7880 */  sll   $t7, $t6, 2
/* 0C1170 80160730 008F2021 */  addu  $a0, $a0, $t7
/* 0C1174 80160734 0C0287CC */  jal   func_800A1F30
/* 0C1178 80160738 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0C117C 8016073C 8E180000 */  lw    $t8, ($s0)
/* 0C1180 80160740 0C02C640 */  jal   func_800B1900
/* 0C1184 80160744 97040002 */   lhu   $a0, 2($t8)
/* 0C1188 80160748 100000BD */  b     .L80160A40_ovl3
/* 0C118C 8016074C 8FBF001C */   lw    $ra, 0x1c($sp)
.L80160750_ovl3:
/* 0C1190 80160750 2610A7C4 */  addiu $s0, $s0, -0x583c
/* 0C1194 80160754 8E020000 */  lw    $v0, ($s0)
/* 0C1198 80160758 3C19800E */  lui   $t9, 0x800e
/* 0C119C 8016075C 3C07800F */  lui   $a3, %hi(D_800E9720) # $a3, 0x800f
/* 0C11A0 80160760 8C430000 */  lw    $v1, ($v0)
/* 0C11A4 80160764 24E79720 */  addiu $a3, %lo(D_800E9720) # addiu $a3, $a3, -0x68e0
/* 0C11A8 80160768 3C0A800F */  lui   $t2, 0x800f
/* 0C11AC 8016076C 00031880 */  sll   $v1, $v1, 2
/* 0C11B0 80160770 0323C821 */  addu  $t9, $t9, $v1
/* 0C11B4 80160774 8F396310 */  lw    $t9, 0x6310($t9)
/* 0C11B8 80160778 00E34021 */  addu  $t0, $a3, $v1
/* 0C11BC 8016077C 01435021 */  addu  $t2, $t2, $v1
/* 0C11C0 80160780 17200004 */  bnez  $t9, .L80160794_ovl3
/* 0C11C4 80160784 00000000 */   nop   
/* 0C11C8 80160788 8D090000 */  lw    $t1, ($t0)
/* 0C11CC 8016078C 1520007B */  bnez  $t1, .L8016097C_ovl3
/* 0C11D0 80160790 00000000 */   nop   
.L80160794_ovl3:
/* 0C11D4 80160794 8D4AA520 */  lw    $t2, -0x5ae0($t2)
/* 0C11D8 80160798 3C0B800F */  lui   $t3, 0x800f
/* 0C11DC 8016079C 01635821 */  addu  $t3, $t3, $v1
/* 0C11E0 801607A0 1140003F */  beqz  $t2, .L801608A0_ovl3
/* 0C11E4 801607A4 00000000 */   nop   
/* 0C11E8 801607A8 8D6B98E0 */  lw    $t3, -0x6720($t3)
/* 0C11EC 801607AC 3C0E800F */  lui   $t6, 0x800f
/* 0C11F0 801607B0 27A4003C */  addiu $a0, $sp, 0x3c
/* 0C11F4 801607B4 AFAB003C */  sw    $t3, 0x3c($sp)
/* 0C11F8 801607B8 8C4C0000 */  lw    $t4, ($v0)
/* 0C11FC 801607BC 27A50040 */  addiu $a1, $sp, 0x40
/* 0C1200 801607C0 000C6880 */  sll   $t5, $t4, 2
/* 0C1204 801607C4 01CD7021 */  addu  $t6, $t6, $t5
/* 0C1208 801607C8 8DCE9AA0 */  lw    $t6, -0x6560($t6)
/* 0C120C 801607CC 0C029E1C */  jal   func_800A7870
/* 0C1210 801607D0 A7AE0040 */   sh    $t6, 0x40($sp)
/* 0C1214 801607D4 8E0F0000 */  lw    $t7, ($s0)
/* 0C1218 801607D8 3C04800F */  lui   $a0, 0x800f
/* 0C121C 801607DC 8DF80000 */  lw    $t8, ($t7)
/* 0C1220 801607E0 0018C880 */  sll   $t9, $t8, 2
/* 0C1224 801607E4 00992021 */  addu  $a0, $a0, $t9
/* 0C1228 801607E8 0C0287CC */  jal   func_800A1F30
/* 0C122C 801607EC 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C1230 801607F0 8E080000 */  lw    $t0, ($s0)
/* 0C1234 801607F4 3C04800F */  lui   $a0, 0x800f
/* 0C1238 801607F8 8D090000 */  lw    $t1, ($t0)
/* 0C123C 801607FC 00095080 */  sll   $t2, $t1, 2
/* 0C1240 80160800 008A2021 */  addu  $a0, $a0, $t2
/* 0C1244 80160804 0C0287CC */  jal   func_800A1F30
/* 0C1248 80160808 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0C124C 8016080C 8E020000 */  lw    $v0, ($s0)
/* 0C1250 80160810 3C05800F */  lui   $a1, %hi(D_800EB4E0) # $a1, 0x800f
/* 0C1254 80160814 24A5B4E0 */  addiu $a1, %lo(D_800EB4E0) # addiu $a1, $a1, -0x4b20
/* 0C1258 80160818 8C4B0000 */  lw    $t3, ($v0)
/* 0C125C 8016081C 3C01800F */  lui   $at, 0x800f
/* 0C1260 80160820 44802000 */  mtc1  $zero, $f4
/* 0C1264 80160824 000B6080 */  sll   $t4, $t3, 2
/* 0C1268 80160828 00AC6821 */  addu  $t5, $a1, $t4
/* 0C126C 8016082C ADA00000 */  sw    $zero, ($t5)
/* 0C1270 80160830 8C430000 */  lw    $v1, ($v0)
/* 0C1274 80160834 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 0C1278 80160838 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 0C127C 8016083C 00031880 */  sll   $v1, $v1, 2
/* 0C1280 80160840 00A37021 */  addu  $t6, $a1, $v1
/* 0C1284 80160844 8DCF0000 */  lw    $t7, ($t6)
/* 0C1288 80160848 00230821 */  addu  $at, $at, $v1
/* 0C128C 8016084C AC2FA520 */  sw    $t7, -0x5ae0($at)
/* 0C1290 80160850 8C580000 */  lw    $t8, ($v0)
/* 0C1294 80160854 3C01800E */  lui   $at, 0x800e
/* 0C1298 80160858 0018C880 */  sll   $t9, $t8, 2
/* 0C129C 8016085C 00994021 */  addu  $t0, $a0, $t9
/* 0C12A0 80160860 E5040000 */  swc1  $f4, ($t0)
/* 0C12A4 80160864 8C430000 */  lw    $v1, ($v0)
/* 0C12A8 80160868 00031880 */  sll   $v1, $v1, 2
/* 0C12AC 8016086C 00834821 */  addu  $t1, $a0, $v1
/* 0C12B0 80160870 C5260000 */  lwc1  $f6, ($t1)
/* 0C12B4 80160874 00230821 */  addu  $at, $at, $v1
/* 0C12B8 80160878 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0C12BC 8016087C 8C4A0000 */  lw    $t2, ($v0)
/* 0C12C0 80160880 3C018019 */  lui   $at, %hi(D_801970D0) # $at, 0x8019
/* 0C12C4 80160884 C42870D0 */  lwc1  $f8, %lo(D_801970D0)($at)
/* 0C12C8 80160888 3C01800E */  lui   $at, 0x800e
/* 0C12CC 8016088C 000A5880 */  sll   $t3, $t2, 2
/* 0C12D0 80160890 002B0821 */  addu  $at, $at, $t3
/* 0C12D4 80160894 E4286850 */  swc1  $f8, 0x6850($at)
/* 0C12D8 80160898 8C430000 */  lw    $v1, ($v0)
/* 0C12DC 8016089C 00031880 */  sll   $v1, $v1, 2
.L801608A0_ovl3:
/* 0C12E0 801608A0 3C10800F */  lui   $s0, %hi(D_800EA6E0) # $s0, 0x800f
/* 0C12E4 801608A4 2610A6E0 */  addiu $s0, %lo(D_800EA6E0) # addiu $s0, $s0, -0x5920
/* 0C12E8 801608A8 02032021 */  addu  $a0, $s0, $v1
/* 0C12EC 801608AC 3C013E00 */  li    $at, 0x3E000000 # 0.125000
/* 0C12F0 801608B0 44818000 */  mtc1  $at, $f16
/* 0C12F4 801608B4 C48A0000 */  lwc1  $f10, ($a0)
/* 0C12F8 801608B8 44802000 */  mtc1  $zero, $f4
/* 0C12FC 801608BC 46105481 */  sub.s $f18, $f10, $f16
/* 0C1300 801608C0 E4920000 */  swc1  $f18, ($a0)
/* 0C1304 801608C4 8C460000 */  lw    $a2, ($v0)
/* 0C1308 801608C8 00061880 */  sll   $v1, $a2, 2
/* 0C130C 801608CC 02036021 */  addu  $t4, $s0, $v1
/* 0C1310 801608D0 C5860000 */  lwc1  $f6, ($t4)
/* 0C1314 801608D4 46062032 */  c.eq.s $f4, $f6
/* 0C1318 801608D8 00000000 */  nop   
/* 0C131C 801608DC 45000007 */  bc1f  .L801608FC_ovl3
/* 0C1320 801608E0 00000000 */   nop   
/* 0C1324 801608E4 0C02C640 */  jal   func_800B1900
/* 0C1328 801608E8 30C4FFFF */   andi  $a0, $a2, 0xffff
/* 0C132C 801608EC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C1330 801608F0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C1334 801608F4 8C430000 */  lw    $v1, ($v0)
/* 0C1338 801608F8 00031880 */  sll   $v1, $v1, 2
.L801608FC_ovl3:
/* 0C133C 801608FC 3C05800F */  lui   $a1, %hi(D_800EA8A0) # $a1, 0x800f
/* 0C1340 80160900 3C018019 */  lui   $at, %hi(D_801970D4) # $at, 0x8019
/* 0C1344 80160904 C42270D4 */  lwc1  $f2, %lo(D_801970D4)($at)
/* 0C1348 80160908 24A5A8A0 */  addiu $a1, %lo(D_800EA8A0) # addiu $a1, $a1, -0x5760
/* 0C134C 8016090C 00A32021 */  addu  $a0, $a1, $v1
/* 0C1350 80160910 3C018019 */  lui   $at, %hi(D_801970D8) # $at, 0x8019
/* 0C1354 80160914 C42A70D8 */  lwc1  $f10, %lo(D_801970D8)($at)
/* 0C1358 80160918 C4880000 */  lwc1  $f8, ($a0)
/* 0C135C 8016091C 3C01800E */  lui   $at, 0x800e
/* 0C1360 80160920 460A4401 */  sub.s $f16, $f8, $f10
/* 0C1364 80160924 E4900000 */  swc1  $f16, ($a0)
/* 0C1368 80160928 8C430000 */  lw    $v1, ($v0)
/* 0C136C 8016092C 00031880 */  sll   $v1, $v1, 2
/* 0C1370 80160930 02036821 */  addu  $t5, $s0, $v1
/* 0C1374 80160934 C5B20000 */  lwc1  $f18, ($t5)
/* 0C1378 80160938 00230821 */  addu  $at, $at, $v1
/* 0C137C 8016093C 46029102 */  mul.s $f4, $f18, $f2
/* 0C1380 80160940 E4244710 */  swc1  $f4, 0x4710($at)
/* 0C1384 80160944 8C430000 */  lw    $v1, ($v0)
/* 0C1388 80160948 3C01800E */  lui   $at, 0x800e
/* 0C138C 8016094C 00031880 */  sll   $v1, $v1, 2
/* 0C1390 80160950 00A37021 */  addu  $t6, $a1, $v1
/* 0C1394 80160954 C5C60000 */  lwc1  $f6, ($t6)
/* 0C1398 80160958 00230821 */  addu  $at, $at, $v1
/* 0C139C 8016095C 46023002 */  mul.s $f0, $f6, $f2
/* 0C13A0 80160960 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C13A4 80160964 8C4F0000 */  lw    $t7, ($v0)
/* 0C13A8 80160968 3C01800E */  lui   $at, 0x800e
/* 0C13AC 8016096C 000FC080 */  sll   $t8, $t7, 2
/* 0C13B0 80160970 00380821 */  addu  $at, $at, $t8
/* 0C13B4 80160974 10000031 */  b     .L80160A3C_ovl3
/* 0C13B8 80160978 E4204550 */   swc1  $f0, 0x4550($at)
.L8016097C_ovl3:
/* 0C13BC 8016097C 3C01800E */  lui   $at, 0x800e
/* 0C13C0 80160980 00230821 */  addu  $at, $at, $v1
/* 0C13C4 80160984 C42817D0 */  lwc1  $f8, 0x17d0($at)
/* 0C13C8 80160988 3C01800E */  lui   $at, 0x800e
/* 0C13CC 8016098C 00230821 */  addu  $at, $at, $v1
/* 0C13D0 80160990 E42841D0 */  swc1  $f8, 0x41d0($at)
/* 0C13D4 80160994 8C460000 */  lw    $a2, ($v0)
/* 0C13D8 80160998 3C0A8019 */  lui   $t2, %hi(D_80197F60) # $t2, 0x8019
/* 0C13DC 8016099C 3C0C801A */  lui   $t4, %hi(D_801982F8) # $t4, 0x801a
/* 0C13E0 801609A0 0006C880 */  sll   $t9, $a2, 2
/* 0C13E4 801609A4 00F92021 */  addu  $a0, $a3, $t9
/* 0C13E8 801609A8 8C850000 */  lw    $a1, ($a0)
/* 0C13EC 801609AC 258C82F8 */  addiu $t4, %lo(D_801982F8) # addiu $t4, $t4, -0x7d08
/* 0C13F0 801609B0 254A7F60 */  addiu $t2, %lo(D_80197F60) # addiu $t2, $t2, 0x7f60
/* 0C13F4 801609B4 10A00003 */  beqz  $a1, .L801609C4_ovl3
/* 0C13F8 801609B8 24A8FFFF */   addiu $t0, $a1, -1
/* 0C13FC 801609BC AC880000 */  sw    $t0, ($a0)
/* 0C1400 801609C0 8C460000 */  lw    $a2, ($v0)
.L801609C4_ovl3:
/* 0C1404 801609C4 24C2FFFC */  addiu $v0, $a2, -4
/* 0C1408 801609C8 00024880 */  sll   $t1, $v0, 2
/* 0C140C 801609CC 01224823 */  subu  $t1, $t1, $v0
/* 0C1410 801609D0 000948C0 */  sll   $t1, $t1, 3
/* 0C1414 801609D4 01224823 */  subu  $t1, $t1, $v0
/* 0C1418 801609D8 00094880 */  sll   $t1, $t1, 2
/* 0C141C 801609DC 00025940 */  sll   $t3, $v0, 5
/* 0C1420 801609E0 016C2821 */  addu  $a1, $t3, $t4
/* 0C1424 801609E4 0C05556C */  jal   func_801555B0_ovl3
/* 0C1428 801609E8 012A2021 */   addu  $a0, $t1, $t2
/* 0C142C 801609EC 8E0D0000 */  lw    $t5, ($s0)
/* 0C1430 801609F0 3C0E800F */  lui   $t6, 0x800f
/* 0C1434 801609F4 3C07800F */  lui   $a3, %hi(D_800E9720) # $a3, 0x800f
/* 0C1438 801609F8 8DA30000 */  lw    $v1, ($t5)
/* 0C143C 801609FC 24E79720 */  addiu $a3, %lo(D_800E9720) # addiu $a3, $a3, -0x68e0
/* 0C1440 80160A00 00031880 */  sll   $v1, $v1, 2
/* 0C1444 80160A04 01C37021 */  addu  $t6, $t6, $v1
/* 0C1448 80160A08 8DCE8920 */  lw    $t6, -0x76e0($t6)
/* 0C144C 80160A0C 11C00003 */  beqz  $t6, .L80160A1C_ovl3
/* 0C1450 80160A10 00E37821 */   addu  $t7, $a3, $v1
/* 0C1454 80160A14 10000009 */  b     .L80160A3C_ovl3
/* 0C1458 80160A18 ADE00000 */   sw    $zero, ($t7)
.L80160A1C_ovl3:
/* 0C145C 80160A1C 3C18800E */  lui   $t8, 0x800e
/* 0C1460 80160A20 0303C021 */  addu  $t8, $t8, $v1
/* 0C1464 80160A24 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 0C1468 80160A28 3C048019 */  lui   $a0, %hi(D_80190E3C) # $a0, 0x8019
/* 0C146C 80160A2C 24840E3C */  addiu $a0, %lo(D_80190E3C) # addiu $a0, $a0, 0xe3c
/* 0C1470 80160A30 3C063F80 */  lui   $a2, 0x3f80
/* 0C1474 80160A34 0C058800 */  jal   func_80162000_ovl3
/* 0C1478 80160A38 8F050004 */   lw    $a1, 4($t8)
.L80160A3C_ovl3:
/* 0C147C 80160A3C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80160A40_ovl3:
/* 0C1480 80160A40 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C1484 80160A44 27BD0048 */  addiu $sp, $sp, 0x48
/* 0C1488 80160A48 03E00008 */  jr    $ra
/* 0C148C 80160A4C 00000000 */   nop   

.type func_801606A0_ovl3, @function
.size func_801606A0_ovl3, . - func_801606A0_ovl3

glabel func_80160A50_ovl3
/* 0C1490 80160A50 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C1494 80160A54 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C1498 80160A58 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C149C 80160A5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C14A0 80160A60 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C14A4 80160A64 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C14A8 80160A68 8DCF0000 */  lw    $t7, ($t6)
/* 0C14AC 80160A6C 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 0C14B0 80160A70 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 0C14B4 80160A74 000FC080 */  sll   $t8, $t7, 2
/* 0C14B8 80160A78 0238C821 */  addu  $t9, $s1, $t8
/* 0C14BC 80160A7C 0C058738 */  jal   func_80161CE0_ovl3
/* 0C14C0 80160A80 AF200000 */   sw    $zero, ($t9)
/* 0C14C4 80160A84 00002025 */  move  $a0, $zero
/* 0C14C8 80160A88 24050000 */  li    $a1, 0
/* 0C14CC 80160A8C 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0C14D0 80160A90 3C0641A0 */   lui   $a2, 0x41a0
/* 0C14D4 80160A94 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C14D8 80160A98 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C14DC 80160A9C 3C08800B */  lui   $t0, %hi(D_800B49F8) # $t0, 0x800b
/* 0C14E0 80160AA0 3C01800E */  lui   $at, 0x800e
/* 0C14E4 80160AA4 8CE90000 */  lw    $t1, ($a3)
/* 0C14E8 80160AA8 250849F8 */  addiu $t0, %lo(D_800B49F8) # addiu $t0, $t0, 0x49f8
/* 0C14EC 80160AAC 3C0B8016 */  lui   $t3, %hi(D_80160D84) # $t3, 0x8016
/* 0C14F0 80160AB0 00095080 */  sll   $t2, $t1, 2
/* 0C14F4 80160AB4 002A0821 */  addu  $at, $at, $t2
/* 0C14F8 80160AB8 AC28EF90 */  sw    $t0, -0x1070($at)
/* 0C14FC 80160ABC 8CEC0000 */  lw    $t4, ($a3)
/* 0C1500 80160AC0 3C01800E */  lui   $at, 0x800e
/* 0C1504 80160AC4 256B0D84 */  addiu $t3, %lo(D_80160D84) # addiu $t3, $t3, 0xd84
/* 0C1508 80160AC8 000C6880 */  sll   $t5, $t4, 2
/* 0C150C 80160ACC 002D0821 */  addu  $at, $at, $t5
/* 0C1510 80160AD0 AC2BF150 */  sw    $t3, -0xeb0($at)
/* 0C1514 80160AD4 8CEF0000 */  lw    $t7, ($a3)
/* 0C1518 80160AD8 3C01800E */  lui   $at, 0x800e
/* 0C151C 80160ADC 3C0E8019 */  lui   $t6, %hi(D_80192F2C) # $t6, 0x8019
/* 0C1520 80160AE0 000FC080 */  sll   $t8, $t7, 2
/* 0C1524 80160AE4 00380821 */  addu  $at, $at, $t8
/* 0C1528 80160AE8 25CE2F2C */  addiu $t6, %lo(D_80192F2C) # addiu $t6, $t6, 0x2f2c
/* 0C152C 80160AEC AC2E0490 */  sw    $t6, 0x0490($at)
/* 0C1530 80160AF0 8CE20000 */  lw    $v0, ($a3)
/* 0C1534 80160AF4 3C0C801A */  lui   $t4, %hi(D_801982F8) # $t4, 0x801a
/* 0C1538 80160AF8 3C088019 */  lui   $t0, %hi(D_80197F60) # $t0, 0x8019
/* 0C153C 80160AFC 2443FFFC */  addiu $v1, $v0, -4
/* 0C1540 80160B00 00034880 */  sll   $t1, $v1, 2
/* 0C1544 80160B04 01234823 */  subu  $t1, $t1, $v1
/* 0C1548 80160B08 000948C0 */  sll   $t1, $t1, 3
/* 0C154C 80160B0C 01234823 */  subu  $t1, $t1, $v1
/* 0C1550 80160B10 3C04800E */  lui   $a0, 0x800e
/* 0C1554 80160B14 0002C880 */  sll   $t9, $v0, 2
/* 0C1558 80160B18 00992021 */  addu  $a0, $a0, $t9
/* 0C155C 80160B1C 00094880 */  sll   $t1, $t1, 2
/* 0C1560 80160B20 00035140 */  sll   $t2, $v1, 5
/* 0C1564 80160B24 25087F60 */  addiu $t0, %lo(D_80197F60) # addiu $t0, $t0, 0x7f60
/* 0C1568 80160B28 258C82F8 */  addiu $t4, %lo(D_801982F8) # addiu $t4, $t4, -0x7d08
/* 0C156C 80160B2C 014C3021 */  addu  $a2, $t2, $t4
/* 0C1570 80160B30 01282821 */  addu  $a1, $t1, $t0
/* 0C1574 80160B34 0C055192 */  jal   func_80154648_ovl3
/* 0C1578 80160B38 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C157C 80160B3C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C1580 80160B40 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C1584 80160B44 3C018019 */  lui   $at, %hi(D_801970DC) # $at, 0x8019
/* 0C1588 80160B48 C42070DC */  lwc1  $f0, %lo(D_801970DC)($at)
/* 0C158C 80160B4C 8CEB0000 */  lw    $t3, ($a3)
/* 0C1590 80160B50 3C01800E */  lui   $at, 0x800e
/* 0C1594 80160B54 3C040002 */  lui   $a0, (0x0002003F >> 16) # lui $a0, 2
/* 0C1598 80160B58 000B6880 */  sll   $t5, $t3, 2
/* 0C159C 80160B5C 002D0821 */  addu  $at, $at, $t5
/* 0C15A0 80160B60 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C15A4 80160B64 8CEF0000 */  lw    $t7, ($a3)
/* 0C15A8 80160B68 3C01800E */  lui   $at, 0x800e
/* 0C15AC 80160B6C 3484003F */  ori   $a0, (0x0002003F & 0xFFFF) # ori $a0, $a0, 0x3f
/* 0C15B0 80160B70 000F7080 */  sll   $t6, $t7, 2
/* 0C15B4 80160B74 002E0821 */  addu  $at, $at, $t6
/* 0C15B8 80160B78 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C15BC 80160B7C 8CF80000 */  lw    $t8, ($a3)
/* 0C15C0 80160B80 3C01800E */  lui   $at, 0x800e
/* 0C15C4 80160B84 24050021 */  li    $a1, 33
/* 0C15C8 80160B88 0018C880 */  sll   $t9, $t8, 2
/* 0C15CC 80160B8C 00390821 */  addu  $at, $at, $t9
/* 0C15D0 80160B90 24060010 */  li    $a2, 16
/* 0C15D4 80160B94 0C02A619 */  jal   func_800A9864
/* 0C15D8 80160B98 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C15DC 80160B9C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C15E0 80160BA0 8CE5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a3)
/* 0C15E4 80160BA4 3C01800F */  lui   $at, 0x800f
/* 0C15E8 80160BA8 2409001E */  li    $t1, 30
/* 0C15EC 80160BAC 8CA80000 */  lw    $t0, ($a1)
/* 0C15F0 80160BB0 00002025 */  move  $a0, $zero
/* 0C15F4 80160BB4 00085080 */  sll   $t2, $t0, 2
/* 0C15F8 80160BB8 002A0821 */  addu  $at, $at, $t2
/* 0C15FC 80160BBC 0C02BEED */  jal   func_800AFBB4
/* 0C1600 80160BC0 AC299720 */   sw    $t1, -0x68e0($at)
/* 0C1604 80160BC4 3C040002 */  lui   $a0, (0x00020287 >> 16) # lui $a0, 2
/* 0C1608 80160BC8 0C02A806 */  jal   func_800AA018
/* 0C160C 80160BCC 34840287 */   ori   $a0, (0x00020287 & 0xFFFF) # ori $a0, $a0, 0x287
/* 0C1610 80160BD0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C1614 80160BD4 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C1618 80160BD8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0C161C 80160BDC 44810000 */  mtc1  $at, $f0
/* 0C1620 80160BE0 8CE20000 */  lw    $v0, ($a3)
/* 0C1624 80160BE4 3C01800E */  lui   $at, 0x800e
/* 0C1628 80160BE8 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 0C162C 80160BEC 00021080 */  sll   $v0, $v0, 2
/* 0C1630 80160BF0 00220821 */  addu  $at, $at, $v0
/* 0C1634 80160BF4 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0C1638 80160BF8 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 0C163C 80160BFC 00A26021 */  addu  $t4, $a1, $v0
/* 0C1640 80160C00 46002182 */  mul.s $f6, $f4, $f0
/* 0C1644 80160C04 3C06800E */  lui   $a2, %hi(D_800E6850) # $a2, 0x800e
/* 0C1648 80160C08 24C66850 */  addiu $a2, %lo(D_800E6850) # addiu $a2, $a2, 0x6850
/* 0C164C 80160C0C 3C10800F */  lui   $s0, %hi(D_800E83E0) # $s0, 0x800f
/* 0C1650 80160C10 261083E0 */  addiu $s0, %lo(D_800E83E0) # addiu $s0, $s0, -0x7c20
/* 0C1654 80160C14 E5860000 */  swc1  $f6, ($t4)
/* 0C1658 80160C18 8CEB0000 */  lw    $t3, ($a3)
/* 0C165C 80160C1C 000B6880 */  sll   $t5, $t3, 2
/* 0C1660 80160C20 00CD7821 */  addu  $t7, $a2, $t5
/* 0C1664 80160C24 E5E00000 */  swc1  $f0, ($t7)
.L80160C28_ovl3:
/* 0C1668 80160C28 8CE20000 */  lw    $v0, ($a3)
/* 0C166C 80160C2C 00021080 */  sll   $v0, $v0, 2
/* 0C1670 80160C30 02027021 */  addu  $t6, $s0, $v0
/* 0C1674 80160C34 8DD80000 */  lw    $t8, ($t6)
/* 0C1678 80160C38 0222C821 */  addu  $t9, $s1, $v0
/* 0C167C 80160C3C 5300001D */  beql  $t8, $zero, .L80160CB4_ovl3
/* 0C1680 80160C40 8F280000 */   lw    $t0, ($t9)
/* 0C1684 80160C44 44804000 */  mtc1  $zero, $f8
/* 0C1688 80160C48 3C03800E */  lui   $v1, %hi(D_800E6690) # $v1, 0x800e
/* 0C168C 80160C4C 24636690 */  addiu $v1, %lo(D_800E6690) # addiu $v1, $v1, 0x6690
/* 0C1690 80160C50 0062C821 */  addu  $t9, $v1, $v0
/* 0C1694 80160C54 E7280000 */  swc1  $f8, ($t9)
/* 0C1698 80160C58 8CE20000 */  lw    $v0, ($a3)
/* 0C169C 80160C5C 3C018019 */  lui   $at, %hi(D_801970E0) # $at, 0x8019
/* 0C16A0 80160C60 240D0001 */  li    $t5, 1
/* 0C16A4 80160C64 00021080 */  sll   $v0, $v0, 2
/* 0C16A8 80160C68 00624021 */  addu  $t0, $v1, $v0
/* 0C16AC 80160C6C C50A0000 */  lwc1  $f10, ($t0)
/* 0C16B0 80160C70 00A24821 */  addu  $t1, $a1, $v0
/* 0C16B4 80160C74 24040012 */  li    $a0, 18
/* 0C16B8 80160C78 E52A0000 */  swc1  $f10, ($t1)
/* 0C16BC 80160C7C 8CEA0000 */  lw    $t2, ($a3)
/* 0C16C0 80160C80 C43070E0 */  lwc1  $f16, %lo(D_801970E0)($at)
/* 0C16C4 80160C84 000A6080 */  sll   $t4, $t2, 2
/* 0C16C8 80160C88 00CC5821 */  addu  $t3, $a2, $t4
/* 0C16CC 80160C8C E5700000 */  swc1  $f16, ($t3)
/* 0C16D0 80160C90 8CEF0000 */  lw    $t7, ($a3)
/* 0C16D4 80160C94 000F7080 */  sll   $t6, $t7, 2
/* 0C16D8 80160C98 022EC021 */  addu  $t8, $s1, $t6
/* 0C16DC 80160C9C 0C029D9E */  jal   play_sound
/* 0C16E0 80160CA0 AF0D0000 */   sw    $t5, ($t8)
/* 0C16E4 80160CA4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C16E8 80160CA8 1000000D */  b     .L80160CE0_ovl3
/* 0C16EC 80160CAC 8CE7A7C4 */   lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C16F0 80160CB0 8F280000 */  lw    $t0, ($t9)
.L80160CB4_ovl3:
/* 0C16F4 80160CB4 5500000B */  bnezl $t0, .L80160CE4_ovl3
/* 0C16F8 80160CB8 24040001 */   li    $a0, 1
/* 0C16FC 80160CBC 0C002DAF */  jal   finish_current_thread
/* 0C1700 80160CC0 24040001 */   li    $a0, 1
/* 0C1704 80160CC4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C1708 80160CC8 3C06800E */  lui   $a2, %hi(D_800E6850) # $a2, 0x800e
/* 0C170C 80160CCC 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 0C1710 80160CD0 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 0C1714 80160CD4 24C66850 */  addiu $a2, %lo(D_800E6850) # addiu $a2, $a2, 0x6850
/* 0C1718 80160CD8 1000FFD3 */  b     .L80160C28_ovl3
/* 0C171C 80160CDC 8CE7A7C4 */   lw    $a3, %lo(D_8004A7C4)($a3)
.L80160CE0_ovl3:
/* 0C1720 80160CE0 24040001 */  li    $a0, 1
.L80160CE4_ovl3:
/* 0C1724 80160CE4 0C02BEED */  jal   func_800AFBB4
/* 0C1728 80160CE8 00E02825 */   move  $a1, $a3
/* 0C172C 80160CEC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C1730 80160CF0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C1734 80160CF4 24010001 */  li    $at, 1
/* 0C1738 80160CF8 8D220000 */  lw    $v0, ($t1)
/* 0C173C 80160CFC 00021080 */  sll   $v0, $v0, 2
/* 0C1740 80160D00 02225021 */  addu  $t2, $s1, $v0
/* 0C1744 80160D04 8D4C0000 */  lw    $t4, ($t2)
/* 0C1748 80160D08 02025821 */  addu  $t3, $s0, $v0
/* 0C174C 80160D0C 1581000E */  bne   $t4, $at, .L80160D48_ovl3
/* 0C1750 80160D10 00000000 */   nop   
/* 0C1754 80160D14 8D6F0000 */  lw    $t7, ($t3)
/* 0C1758 80160D18 24010002 */  li    $at, 2
/* 0C175C 80160D1C 31EEFFFF */  andi  $t6, $t7, 0xffff
/* 0C1760 80160D20 15C10005 */  bne   $t6, $at, .L80160D38_ovl3
/* 0C1764 80160D24 00000000 */   nop   
/* 0C1768 80160D28 0C002DAF */  jal   finish_current_thread
/* 0C176C 80160D2C 2404000A */   li    $a0, 10
/* 0C1770 80160D30 10000007 */  b     .L80160D50_ovl3
/* 0C1774 80160D34 00000000 */   nop   
.L80160D38_ovl3:
/* 0C1778 80160D38 0C002DAF */  jal   finish_current_thread
/* 0C177C 80160D3C 24040002 */   li    $a0, 2
/* 0C1780 80160D40 10000003 */  b     .L80160D50_ovl3
/* 0C1784 80160D44 00000000 */   nop   
.L80160D48_ovl3:
/* 0C1788 80160D48 0C002DAF */  jal   finish_current_thread
/* 0C178C 80160D4C 2404000A */   li    $a0, 10
.L80160D50_ovl3:
/* 0C1790 80160D50 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C1794 80160D54 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C1798 80160D58 240D0003 */  li    $t5, 3
/* 0C179C 80160D5C 8F190000 */  lw    $t9, ($t8)
/* 0C17A0 80160D60 00194080 */  sll   $t0, $t9, 2
/* 0C17A4 80160D64 02284821 */  addu  $t1, $s1, $t0
/* 0C17A8 80160D68 0C02BE85 */  jal   func_800AFA14
/* 0C17AC 80160D6C AD2D0000 */   sw    $t5, ($t1)
/* 0C17B0 80160D70 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C17B4 80160D74 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C17B8 80160D78 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C17BC 80160D7C 03E00008 */  jr    $ra
/* 0C17C0 80160D80 27BD0020 */   addiu $sp, $sp, 0x20

.type func_80160A50_ovl3, @function
.size func_80160A50_ovl3, . - func_80160A50_ovl3

glabel func_80160D84_ovl3
/* 0C17C4 80160D84 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C17C8 80160D88 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C17CC 80160D8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C17D0 80160D90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C17D4 80160D94 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C17D8 80160D98 8C640000 */  lw    $a0, ($v1)
/* 0C17DC 80160D9C 3C02800F */  lui   $v0, 0x800f
/* 0C17E0 80160DA0 3C01800E */  lui   $at, 0x800e
/* 0C17E4 80160DA4 00042080 */  sll   $a0, $a0, 2
/* 0C17E8 80160DA8 00441021 */  addu  $v0, $v0, $a0
/* 0C17EC 80160DAC 8C4298E0 */  lw    $v0, -0x6720($v0)
/* 0C17F0 80160DB0 00240821 */  addu  $at, $at, $a0
/* 0C17F4 80160DB4 54400067 */  bnezl $v0, .L80160F54_ovl3
/* 0C17F8 80160DB8 24010003 */   li    $at, 3
/* 0C17FC 80160DBC C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C1800 80160DC0 3C01800E */  lui   $at, 0x800e
/* 0C1804 80160DC4 00240821 */  addu  $at, $at, $a0
/* 0C1808 80160DC8 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C180C 80160DCC 8C6E0000 */  lw    $t6, ($v1)
/* 0C1810 80160DD0 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0C1814 80160DD4 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0C1818 80160DD8 000E7880 */  sll   $t7, $t6, 2
/* 0C181C 80160DDC 01F81021 */  addu  $v0, $t7, $t8
/* 0C1820 80160DE0 8C450000 */  lw    $a1, ($v0)
/* 0C1824 80160DE4 24B9FFFF */  addiu $t9, $a1, -1
/* 0C1828 80160DE8 10A00095 */  beqz  $a1, .L80161040_ovl3
/* 0C182C 80160DEC AC590000 */   sw    $t9, ($v0)
/* 0C1830 80160DF0 8C660000 */  lw    $a2, ($v1)
/* 0C1834 80160DF4 3C08800F */  lui   $t0, 0x800f
/* 0C1838 80160DF8 3C0B8019 */  lui   $t3, %hi(D_80197F60) # $t3, 0x8019
/* 0C183C 80160DFC 00062080 */  sll   $a0, $a2, 2
/* 0C1840 80160E00 01044021 */  addu  $t0, $t0, $a0
/* 0C1844 80160E04 8D0883E0 */  lw    $t0, -0x7c20($t0)
/* 0C1848 80160E08 00064880 */  sll   $t1, $a2, 2
/* 0C184C 80160E0C 01264823 */  subu  $t1, $t1, $a2
/* 0C1850 80160E10 15000029 */  bnez  $t0, .L80160EB8_ovl3
/* 0C1854 80160E14 000948C0 */   sll   $t1, $t1, 3
/* 0C1858 80160E18 01264823 */  subu  $t1, $t1, $a2
/* 0C185C 80160E1C 00094880 */  sll   $t1, $t1, 2
/* 0C1860 80160E20 252AFE90 */  addiu $t2, $t1, -0x170
/* 0C1864 80160E24 256B7F60 */  addiu $t3, %lo(D_80197F60) # addiu $t3, $t3, 0x7f60
/* 0C1868 80160E28 0C055509 */  jal   func_80155424_ovl3
/* 0C186C 80160E2C 014B2021 */   addu  $a0, $t2, $t3
/* 0C1870 80160E30 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C1874 80160E34 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C1878 80160E38 3C0D800F */  lui   $t5, 0x800f
/* 0C187C 80160E3C 3C0E800E */  lui   $t6, 0x800e
/* 0C1880 80160E40 8D860000 */  lw    $a2, ($t4)
/* 0C1884 80160E44 00062080 */  sll   $a0, $a2, 2
/* 0C1888 80160E48 01A46821 */  addu  $t5, $t5, $a0
/* 0C188C 80160E4C 8DAD8920 */  lw    $t5, -0x76e0($t5)
/* 0C1890 80160E50 01C47021 */  addu  $t6, $t6, $a0
/* 0C1894 80160E54 15A0000C */  bnez  $t5, .L80160E88_ovl3
/* 0C1898 80160E58 00000000 */   nop   
/* 0C189C 80160E5C 8DCE6310 */  lw    $t6, 0x6310($t6)
/* 0C18A0 80160E60 3C048019 */  lui   $a0, %hi(D_80190E80) # $a0, 0x8019
/* 0C18A4 80160E64 24840E80 */  addiu $a0, %lo(D_80190E80) # addiu $a0, $a0, 0xe80
/* 0C18A8 80160E68 15C00007 */  bnez  $t6, .L80160E88_ovl3
/* 0C18AC 80160E6C 00000000 */   nop   
/* 0C18B0 80160E70 0C0445EF */  jal   func_801117BC
/* 0C18B4 80160E74 00C02825 */   move  $a1, $a2
/* 0C18B8 80160E78 0C044713 */  jal   func_80111C4C
/* 0C18BC 80160E7C 00402025 */   move  $a0, $v0
/* 0C18C0 80160E80 10000072 */  b     .L8016104C_ovl3
/* 0C18C4 80160E84 8FBF0014 */   lw    $ra, 0x14($sp)
.L80160E88_ovl3:
/* 0C18C8 80160E88 0C029D9E */  jal   play_sound
/* 0C18CC 80160E8C 24040012 */   li    $a0, 18
/* 0C18D0 80160E90 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C18D4 80160E94 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C18D8 80160E98 3C01800F */  lui   $at, 0x800f
/* 0C18DC 80160E9C 240F0002 */  li    $t7, 2
/* 0C18E0 80160EA0 8C780000 */  lw    $t8, ($v1)
/* 0C18E4 80160EA4 0018C880 */  sll   $t9, $t8, 2
/* 0C18E8 80160EA8 00390821 */  addu  $at, $at, $t9
/* 0C18EC 80160EAC AC2F98E0 */  sw    $t7, -0x6720($at)
/* 0C18F0 80160EB0 8C640000 */  lw    $a0, ($v1)
/* 0C18F4 80160EB4 00042080 */  sll   $a0, $a0, 2
.L80160EB8_ovl3:
/* 0C18F8 80160EB8 44800000 */  mtc1  $zero, $f0
/* 0C18FC 80160EBC 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 0C1900 80160EC0 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 0C1904 80160EC4 3C018019 */  lui   $at, %hi(D_801970E4) # $at, 0x8019
/* 0C1908 80160EC8 C42270E4 */  lwc1  $f2, %lo(D_801970E4)($at)
/* 0C190C 80160ECC 00444021 */  addu  $t0, $v0, $a0
/* 0C1910 80160ED0 E5000000 */  swc1  $f0, ($t0)
/* 0C1914 80160ED4 8C640000 */  lw    $a0, ($v1)
/* 0C1918 80160ED8 3C01800E */  lui   $at, 0x800e
/* 0C191C 80160EDC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0C1920 80160EE0 00042080 */  sll   $a0, $a0, 2
/* 0C1924 80160EE4 00444821 */  addu  $t1, $v0, $a0
/* 0C1928 80160EE8 C5260000 */  lwc1  $f6, ($t1)
/* 0C192C 80160EEC 00240821 */  addu  $at, $at, $a0
/* 0C1930 80160EF0 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0C1934 80160EF4 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0C1938 80160EF8 8C6A0000 */  lw    $t2, ($v1)
/* 0C193C 80160EFC 3C01800E */  lui   $at, 0x800e
/* 0C1940 80160F00 000A5880 */  sll   $t3, $t2, 2
/* 0C1944 80160F04 002B0821 */  addu  $at, $at, $t3
/* 0C1948 80160F08 E4226850 */  swc1  $f2, 0x6850($at)
/* 0C194C 80160F0C 8C6C0000 */  lw    $t4, ($v1)
/* 0C1950 80160F10 3C01800E */  lui   $at, 0x800e
/* 0C1954 80160F14 000C6880 */  sll   $t5, $t4, 2
/* 0C1958 80160F18 00AD7021 */  addu  $t6, $a1, $t5
/* 0C195C 80160F1C E5C00000 */  swc1  $f0, ($t6)
/* 0C1960 80160F20 8C640000 */  lw    $a0, ($v1)
/* 0C1964 80160F24 00042080 */  sll   $a0, $a0, 2
/* 0C1968 80160F28 00A4C021 */  addu  $t8, $a1, $a0
/* 0C196C 80160F2C C7080000 */  lwc1  $f8, ($t8)
/* 0C1970 80160F30 00240821 */  addu  $at, $at, $a0
/* 0C1974 80160F34 E4283210 */  swc1  $f8, 0x3210($at)
/* 0C1978 80160F38 8C6F0000 */  lw    $t7, ($v1)
/* 0C197C 80160F3C 3C01800E */  lui   $at, 0x800e
/* 0C1980 80160F40 000FC880 */  sll   $t9, $t7, 2
/* 0C1984 80160F44 00390821 */  addu  $at, $at, $t9
/* 0C1988 80160F48 1000003F */  b     .L80161048_ovl3
/* 0C198C 80160F4C E4223C90 */   swc1  $f2, 0x3c90($at)
/* 0C1990 80160F50 24010003 */  li    $at, 3
.L80160F54_ovl3:
/* 0C1994 80160F54 14410031 */  bne   $v0, $at, .L8016101C_ovl3
/* 0C1998 80160F58 00000000 */   nop   
/* 0C199C 80160F5C 0C029D9E */  jal   play_sound
/* 0C19A0 80160F60 24040014 */   li    $a0, 20
/* 0C19A4 80160F64 0C05A4F1 */  jal   func_801693C4_ovl3
/* 0C19A8 80160F68 24040005 */   li    $a0, 5
/* 0C19AC 80160F6C 2401FFFF */  li    $at, -1
/* 0C19B0 80160F70 10410027 */  beq   $v0, $at, .L80161010_ovl3
/* 0C19B4 80160F74 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C19B8 80160F78 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C19BC 80160F7C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0C19C0 80160F80 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0C19C4 80160F84 8C680000 */  lw    $t0, ($v1)
/* 0C19C8 80160F88 00022080 */  sll   $a0, $v0, 2
/* 0C19CC 80160F8C 00A45821 */  addu  $t3, $a1, $a0
/* 0C19D0 80160F90 00084880 */  sll   $t1, $t0, 2
/* 0C19D4 80160F94 00A95021 */  addu  $t2, $a1, $t1
/* 0C19D8 80160F98 C54A0000 */  lwc1  $f10, ($t2)
/* 0C19DC 80160F9C 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 0C19E0 80160FA0 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 0C19E4 80160FA4 E56A0000 */  swc1  $f10, ($t3)
/* 0C19E8 80160FA8 8C6C0000 */  lw    $t4, ($v1)
/* 0C19EC 80160FAC 00E4C021 */  addu  $t8, $a3, $a0
/* 0C19F0 80160FB0 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0C19F4 80160FB4 000C6880 */  sll   $t5, $t4, 2
/* 0C19F8 80160FB8 00ED7021 */  addu  $t6, $a3, $t5
/* 0C19FC 80160FBC C5D00000 */  lwc1  $f16, ($t6)
/* 0C1A00 80160FC0 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0C1A04 80160FC4 00C44821 */  addu  $t1, $a2, $a0
/* 0C1A08 80160FC8 E7100000 */  swc1  $f16, ($t8)
/* 0C1A0C 80160FCC 8C6F0000 */  lw    $t7, ($v1)
/* 0C1A10 80160FD0 3C01800E */  lui   $at, 0x800e
/* 0C1A14 80160FD4 240C0020 */  li    $t4, 32
/* 0C1A18 80160FD8 000FC880 */  sll   $t9, $t7, 2
/* 0C1A1C 80160FDC 00D94021 */  addu  $t0, $a2, $t9
/* 0C1A20 80160FE0 C5120000 */  lwc1  $f18, ($t0)
/* 0C1A24 80160FE4 E5320000 */  swc1  $f18, ($t1)
/* 0C1A28 80160FE8 8C6A0000 */  lw    $t2, ($v1)
/* 0C1A2C 80160FEC 000A5880 */  sll   $t3, $t2, 2
/* 0C1A30 80160FF0 002B0821 */  addu  $at, $at, $t3
/* 0C1A34 80160FF4 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C1A38 80160FF8 3C01800F */  lui   $at, 0x800f
/* 0C1A3C 80160FFC 00240821 */  addu  $at, $at, $a0
/* 0C1A40 80161000 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 0C1A44 80161004 3C01800F */  lui   $at, 0x800f
/* 0C1A48 80161008 00240821 */  addu  $at, $at, $a0
/* 0C1A4C 8016100C AC2CC2E0 */  sw    $t4, -0x3d20($at)
.L80161010_ovl3:
/* 0C1A50 80161010 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C1A54 80161014 1000000A */  b     .L80161040_ovl3
/* 0C1A58 80161018 8C63A7C4 */   lw    $v1, %lo(D_8004A7C4)($v1)
.L8016101C_ovl3:
/* 0C1A5C 8016101C 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 0C1A60 80161020 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 0C1A64 80161024 00E41021 */  addu  $v0, $a3, $a0
/* 0C1A68 80161028 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 0C1A6C 8016102C C428C9E4 */  lwc1  $f8, %lo(D_800EC9E4)($at)
/* 0C1A70 80161030 C4460000 */  lwc1  $f6, ($v0)
/* 0C1A74 80161034 46083281 */  sub.s $f10, $f6, $f8
/* 0C1A78 80161038 10000003 */  b     .L80161048_ovl3
/* 0C1A7C 8016103C E44A0000 */   swc1  $f10, ($v0)
.L80161040_ovl3:
/* 0C1A80 80161040 0C02C640 */  jal   func_800B1900
/* 0C1A84 80161044 94640002 */   lhu   $a0, 2($v1)
.L80161048_ovl3:
/* 0C1A88 80161048 8FBF0014 */  lw    $ra, 0x14($sp)
.L8016104C_ovl3:
/* 0C1A8C 8016104C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C1A90 80161050 03E00008 */  jr    $ra
/* 0C1A94 80161054 00000000 */   nop   

.type func_80160D84_ovl3, @function
.size func_80160D84_ovl3, . - func_80160D84_ovl3

glabel func_80161058_ovl3
/* 0C1A98 80161058 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C1A9C 8016105C AFB20020 */  sw    $s2, 0x20($sp)
/* 0C1AA0 80161060 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0C1AA4 80161064 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0C1AA8 80161068 8E4F0000 */  lw    $t7, ($s2)
/* 0C1AAC 8016106C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C1AB0 80161070 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C1AB4 80161074 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C1AB8 80161078 8DF80000 */  lw    $t8, ($t7)
/* 0C1ABC 8016107C 3C01800E */  lui   $at, 0x800e
/* 0C1AC0 80161080 240E0001 */  li    $t6, 1
/* 0C1AC4 80161084 0018C880 */  sll   $t9, $t8, 2
/* 0C1AC8 80161088 00390821 */  addu  $at, $at, $t9
/* 0C1ACC 8016108C 0C058738 */  jal   func_80161CE0_ovl3
/* 0C1AD0 80161090 AC2E0650 */   sw    $t6, 0x650($at)
/* 0C1AD4 80161094 00002025 */  move  $a0, $zero
/* 0C1AD8 80161098 24050000 */  li    $a1, 0
/* 0C1ADC 8016109C 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0C1AE0 801610A0 3C0641A0 */   lui   $a2, 0x41a0
/* 0C1AE4 801610A4 8E430000 */  lw    $v1, ($s2)
/* 0C1AE8 801610A8 3C09800B */  lui   $t1, %hi(func_800B4954) # $t1, 0x800b
/* 0C1AEC 801610AC 3C01800E */  lui   $at, 0x800e
/* 0C1AF0 801610B0 8C6A0000 */  lw    $t2, ($v1)
/* 0C1AF4 801610B4 25294954 */  addiu $t1, %lo(func_800B4954) # addiu $t1, $t1, 0x4954
/* 0C1AF8 801610B8 3C0C8016 */  lui   $t4, %hi(D_801614D8) # $t4, 0x8016
/* 0C1AFC 801610BC 000A5880 */  sll   $t3, $t2, 2
/* 0C1B00 801610C0 002B0821 */  addu  $at, $at, $t3
/* 0C1B04 801610C4 AC29EF90 */  sw    $t1, -0x1070($at)
/* 0C1B08 801610C8 8C6D0000 */  lw    $t5, ($v1)
/* 0C1B0C 801610CC 3C01800E */  lui   $at, 0x800e
/* 0C1B10 801610D0 258C14D8 */  addiu $t4, %lo(D_801614D8) # addiu $t4, $t4, 0x14d8
/* 0C1B14 801610D4 000D7880 */  sll   $t7, $t5, 2
/* 0C1B18 801610D8 002F0821 */  addu  $at, $at, $t7
/* 0C1B1C 801610DC AC2CF150 */  sw    $t4, -0xeb0($at)
/* 0C1B20 801610E0 8C6E0000 */  lw    $t6, ($v1)
/* 0C1B24 801610E4 3C01800E */  lui   $at, 0x800e
/* 0C1B28 801610E8 3C188019 */  lui   $t8, %hi(D_80192F48) # $t8, 0x8019
/* 0C1B2C 801610EC 000EC880 */  sll   $t9, $t6, 2
/* 0C1B30 801610F0 00390821 */  addu  $at, $at, $t9
/* 0C1B34 801610F4 27182F48 */  addiu $t8, %lo(D_80192F48) # addiu $t8, $t8, 0x2f48
/* 0C1B38 801610F8 AC380490 */  sw    $t8, 0x0490($at)
/* 0C1B3C 801610FC 8C670000 */  lw    $a3, ($v1)
/* 0C1B40 80161100 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0C1B44 80161104 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0C1B48 80161108 24E8FFFC */  addiu $t0, $a3, -4
/* 0C1B4C 8016110C 00085880 */  sll   $t3, $t0, 2
/* 0C1B50 80161110 01685823 */  subu  $t3, $t3, $t0
/* 0C1B54 80161114 000B58C0 */  sll   $t3, $t3, 3
/* 0C1B58 80161118 01685823 */  subu  $t3, $t3, $t0
/* 0C1B5C 8016111C 3C0F801A */  lui   $t7, %hi(D_801982F8) # $t7, 0x801a
/* 0C1B60 80161120 3C0D8019 */  lui   $t5, %hi(D_80197F60) # $t5, 0x8019
/* 0C1B64 80161124 00075080 */  sll   $t2, $a3, 2
/* 0C1B68 80161128 020A4821 */  addu  $t1, $s0, $t2
/* 0C1B6C 8016112C 25AD7F60 */  addiu $t5, %lo(D_80197F60) # addiu $t5, $t5, 0x7f60
/* 0C1B70 80161130 25EF82F8 */  addiu $t7, %lo(D_801982F8) # addiu $t7, $t7, -0x7d08
/* 0C1B74 80161134 000B5880 */  sll   $t3, $t3, 2
/* 0C1B78 80161138 00086140 */  sll   $t4, $t0, 5
/* 0C1B7C 8016113C 018F3021 */  addu  $a2, $t4, $t7
/* 0C1B80 80161140 016D2821 */  addu  $a1, $t3, $t5
/* 0C1B84 80161144 0C055192 */  jal   func_80154648_ovl3
/* 0C1B88 80161148 8D240000 */   lw    $a0, ($t1)
/* 0C1B8C 8016114C 8E4E0000 */  lw    $t6, ($s2)
/* 0C1B90 80161150 3C11800E */  lui   $s1, %hi(D_800E09D0) # $s1, 0x800e
/* 0C1B94 80161154 263109D0 */  addiu $s1, %lo(D_800E09D0) # addiu $s1, $s1, 0x9d0
/* 0C1B98 80161158 8DD80000 */  lw    $t8, ($t6)
/* 0C1B9C 8016115C 0018C880 */  sll   $t9, $t8, 2
/* 0C1BA0 80161160 02195021 */  addu  $t2, $s0, $t9
/* 0C1BA4 80161164 8D490000 */  lw    $t1, ($t2)
/* 0C1BA8 80161168 00095880 */  sll   $t3, $t1, 2
/* 0C1BAC 8016116C 022B6821 */  addu  $t5, $s1, $t3
/* 0C1BB0 80161170 0C02BB30 */  jal   func_800AECC0
/* 0C1BB4 80161174 C5AC0000 */   lwc1  $f12, ($t5)
/* 0C1BB8 80161178 8E4C0000 */  lw    $t4, ($s2)
/* 0C1BBC 8016117C 8D8F0000 */  lw    $t7, ($t4)
/* 0C1BC0 80161180 000F7080 */  sll   $t6, $t7, 2
/* 0C1BC4 80161184 020EC021 */  addu  $t8, $s0, $t6
/* 0C1BC8 80161188 8F190000 */  lw    $t9, ($t8)
/* 0C1BCC 8016118C 00195080 */  sll   $t2, $t9, 2
/* 0C1BD0 80161190 022A4821 */  addu  $t1, $s1, $t2
/* 0C1BD4 80161194 0C02BB48 */  jal   func_800AED20
/* 0C1BD8 80161198 C52C0000 */   lwc1  $f12, ($t1)
/* 0C1BDC 8016119C 8E430000 */  lw    $v1, ($s2)
/* 0C1BE0 801611A0 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 0C1BE4 801611A4 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 0C1BE8 801611A8 8C670000 */  lw    $a3, ($v1)
/* 0C1BEC 801611AC 3C018019 */  lui   $at, %hi(D_801970E8) # $at, 0x8019
/* 0C1BF0 801611B0 C42070E8 */  lwc1  $f0, %lo(D_801970E8)($at)
/* 0C1BF4 801611B4 00073880 */  sll   $a3, $a3, 2
/* 0C1BF8 801611B8 02075821 */  addu  $t3, $s0, $a3
/* 0C1BFC 801611BC 8D6D0000 */  lw    $t5, ($t3)
/* 0C1C00 801611C0 0227C021 */  addu  $t8, $s1, $a3
/* 0C1C04 801611C4 3C02800F */  lui   $v0, %hi(D_800E8AE0) # $v0, 0x800f
/* 0C1C08 801611C8 000D6080 */  sll   $t4, $t5, 2
/* 0C1C0C 801611CC 022C7821 */  addu  $t7, $s1, $t4
/* 0C1C10 801611D0 8DEE0000 */  lw    $t6, ($t7)
/* 0C1C14 801611D4 24428AE0 */  addiu $v0, %lo(D_800E8AE0) # addiu $v0, $v0, -0x7520
/* 0C1C18 801611D8 3C01800E */  lui   $at, 0x800e
/* 0C1C1C 801611DC AF0E0000 */  sw    $t6, ($t8)
/* 0C1C20 801611E0 8C670000 */  lw    $a3, ($v1)
/* 0C1C24 801611E4 3C040002 */  lui   $a0, (0x00020040 >> 16) # lui $a0, 2
/* 0C1C28 801611E8 34840040 */  ori   $a0, (0x00020040 & 0xFFFF) # ori $a0, $a0, 0x40
/* 0C1C2C 801611EC 00073880 */  sll   $a3, $a3, 2
/* 0C1C30 801611F0 0207C821 */  addu  $t9, $s0, $a3
/* 0C1C34 801611F4 8F2A0000 */  lw    $t2, ($t9)
/* 0C1C38 801611F8 00476021 */  addu  $t4, $v0, $a3
/* 0C1C3C 801611FC 24050021 */  li    $a1, 33
/* 0C1C40 80161200 000A4880 */  sll   $t1, $t2, 2
/* 0C1C44 80161204 00495821 */  addu  $t3, $v0, $t1
/* 0C1C48 80161208 8D6D0000 */  lw    $t5, ($t3)
/* 0C1C4C 8016120C 24060010 */  li    $a2, 16
/* 0C1C50 80161210 AD8D0000 */  sw    $t5, ($t4)
/* 0C1C54 80161214 8C6F0000 */  lw    $t7, ($v1)
/* 0C1C58 80161218 000F7080 */  sll   $t6, $t7, 2
/* 0C1C5C 8016121C 002E0821 */  addu  $at, $at, $t6
/* 0C1C60 80161220 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C1C64 80161224 8C780000 */  lw    $t8, ($v1)
/* 0C1C68 80161228 3C01800E */  lui   $at, 0x800e
/* 0C1C6C 8016122C 0018C880 */  sll   $t9, $t8, 2
/* 0C1C70 80161230 00390821 */  addu  $at, $at, $t9
/* 0C1C74 80161234 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C1C78 80161238 8C6A0000 */  lw    $t2, ($v1)
/* 0C1C7C 8016123C 3C01800E */  lui   $at, 0x800e
/* 0C1C80 80161240 000A4880 */  sll   $t1, $t2, 2
/* 0C1C84 80161244 00290821 */  addu  $at, $at, $t1
/* 0C1C88 80161248 0C02A619 */  jal   func_800A9864
/* 0C1C8C 8016124C E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C1C90 80161250 8E430000 */  lw    $v1, ($s2)
/* 0C1C94 80161254 3C01800F */  lui   $at, 0x800f
/* 0C1C98 80161258 27A50030 */  addiu $a1, $sp, 0x30
/* 0C1C9C 8016125C 8C6B0000 */  lw    $t3, ($v1)
/* 0C1CA0 80161260 24040034 */  li    $a0, 52
/* 0C1CA4 80161264 000B6880 */  sll   $t5, $t3, 2
/* 0C1CA8 80161268 002D0821 */  addu  $at, $at, $t5
/* 0C1CAC 8016126C AC25A360 */  sw    $a1, -0x5ca0($at)
/* 0C1CB0 80161270 8C6C0000 */  lw    $t4, ($v1)
/* 0C1CB4 80161274 000C7880 */  sll   $t7, $t4, 2
/* 0C1CB8 80161278 022F7021 */  addu  $t6, $s1, $t7
/* 0C1CBC 8016127C 8DD80000 */  lw    $t8, ($t6)
/* 0C1CC0 80161280 5300001A */  beql  $t8, $zero, .L801612EC_ovl3
/* 0C1CC4 80161284 AFA00030 */   sw    $zero, 0x30($sp)
/* 0C1CC8 80161288 0C029DFA */  jal   func_800A77E8
/* 0C1CCC 8016128C 27A60034 */   addiu $a2, $sp, 0x34
/* 0C1CD0 80161290 24040002 */  li    $a0, 2
/* 0C1CD4 80161294 24050001 */  li    $a1, 1
/* 0C1CD8 80161298 0C02A08D */  jal   func_800A8234
/* 0C1CDC 8016129C 24060011 */   li    $a2, 17
/* 0C1CE0 801612A0 8E590000 */  lw    $t9, ($s2)
/* 0C1CE4 801612A4 3C01800F */  lui   $at, 0x800f
/* 0C1CE8 801612A8 24040002 */  li    $a0, 2
/* 0C1CEC 801612AC 8F2A0000 */  lw    $t2, ($t9)
/* 0C1CF0 801612B0 24050001 */  li    $a1, 1
/* 0C1CF4 801612B4 24060012 */  li    $a2, 18
/* 0C1CF8 801612B8 000A4880 */  sll   $t1, $t2, 2
/* 0C1CFC 801612BC 00290821 */  addu  $at, $at, $t1
/* 0C1D00 801612C0 0C02A08D */  jal   func_800A8234
/* 0C1D04 801612C4 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0C1D08 801612C8 8E4B0000 */  lw    $t3, ($s2)
/* 0C1D0C 801612CC 3C04800F */  lui   $a0, %hi(D_800EB4E0) # $a0, 0x800f
/* 0C1D10 801612D0 2484B4E0 */  addiu $a0, %lo(D_800EB4E0) # addiu $a0, $a0, -0x4b20
/* 0C1D14 801612D4 8D6D0000 */  lw    $t5, ($t3)
/* 0C1D18 801612D8 000D6080 */  sll   $t4, $t5, 2
/* 0C1D1C 801612DC 008C7821 */  addu  $t7, $a0, $t4
/* 0C1D20 801612E0 1000000F */  b     .L80161320_ovl3
/* 0C1D24 801612E4 ADE20000 */   sw    $v0, ($t7)
/* 0C1D28 801612E8 AFA00030 */  sw    $zero, 0x30($sp)
.L801612EC_ovl3:
/* 0C1D2C 801612EC 8C6E0000 */  lw    $t6, ($v1)
/* 0C1D30 801612F0 3C04800F */  lui   $a0, %hi(D_800EB4E0) # $a0, 0x800f
/* 0C1D34 801612F4 2484B4E0 */  addiu $a0, %lo(D_800EB4E0) # addiu $a0, $a0, -0x4b20
/* 0C1D38 801612F8 000EC080 */  sll   $t8, $t6, 2
/* 0C1D3C 801612FC 0098C821 */  addu  $t9, $a0, $t8
/* 0C1D40 80161300 AF200000 */  sw    $zero, ($t9)
/* 0C1D44 80161304 8C670000 */  lw    $a3, ($v1)
/* 0C1D48 80161308 3C01800F */  lui   $at, 0x800f
/* 0C1D4C 8016130C 00073880 */  sll   $a3, $a3, 2
/* 0C1D50 80161310 00875021 */  addu  $t2, $a0, $a3
/* 0C1D54 80161314 8D490000 */  lw    $t1, ($t2)
/* 0C1D58 80161318 00270821 */  addu  $at, $at, $a3
/* 0C1D5C 8016131C AC29A520 */  sw    $t1, -0x5ae0($at)
.L80161320_ovl3:
/* 0C1D60 80161320 3C040002 */  lui   $a0, (0x00020288 >> 16) # lui $a0, 2
/* 0C1D64 80161324 0C02A806 */  jal   func_800AA018
/* 0C1D68 80161328 34840288 */   ori   $a0, (0x00020288 & 0xFFFF) # ori $a0, $a0, 0x288
/* 0C1D6C 8016132C 8E430000 */  lw    $v1, ($s2)
/* 0C1D70 80161330 3C01800F */  lui   $at, 0x800f
/* 0C1D74 80161334 240C000A */  li    $t4, 10
/* 0C1D78 80161338 8C6B0000 */  lw    $t3, ($v1)
/* 0C1D7C 8016133C 3C18800F */  lui   $t8, 0x800f
/* 0C1D80 80161340 3C11800E */  lui   $s1, %hi(D_800E6310) # $s1, 0x800e
/* 0C1D84 80161344 000B6880 */  sll   $t5, $t3, 2
/* 0C1D88 80161348 002D0821 */  addu  $at, $at, $t5
/* 0C1D8C 8016134C AC2098E0 */  sw    $zero, -0x6720($at)
/* 0C1D90 80161350 8C6F0000 */  lw    $t7, ($v1)
/* 0C1D94 80161354 3C01800F */  lui   $at, 0x800f
/* 0C1D98 80161358 26316310 */  addiu $s1, %lo(D_800E6310) # addiu $s1, $s1, 0x6310
/* 0C1D9C 8016135C 000F7080 */  sll   $t6, $t7, 2
/* 0C1DA0 80161360 002E0821 */  addu  $at, $at, $t6
/* 0C1DA4 80161364 AC2C9560 */  sw    $t4, -0x6aa0($at)
/* 0C1DA8 80161368 8C670000 */  lw    $a3, ($v1)
/* 0C1DAC 8016136C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0C1DB0 80161370 00073880 */  sll   $a3, $a3, 2
/* 0C1DB4 80161374 0307C021 */  addu  $t8, $t8, $a3
/* 0C1DB8 80161378 8F188AE0 */  lw    $t8, -0x7520($t8)
/* 0C1DBC 8016137C 33190004 */  andi  $t9, $t8, 4
/* 0C1DC0 80161380 53200011 */  beql  $t9, $zero, .L801613C8_ovl3
/* 0C1DC4 80161384 44810000 */   mtc1  $at, $f0
/* 0C1DC8 80161388 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0C1DCC 8016138C 44810000 */  mtc1  $at, $f0
/* 0C1DD0 80161390 3C01800E */  lui   $at, 0x800e
/* 0C1DD4 80161394 00270821 */  addu  $at, $at, $a3
/* 0C1DD8 80161398 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0C1DDC 8016139C 3C01800E */  lui   $at, 0x800e
/* 0C1DE0 801613A0 00270821 */  addu  $at, $at, $a3
/* 0C1DE4 801613A4 46002182 */  mul.s $f6, $f4, $f0
/* 0C1DE8 801613A8 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0C1DEC 801613AC 8C6A0000 */  lw    $t2, ($v1)
/* 0C1DF0 801613B0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C1DF4 801613B4 000A4880 */  sll   $t1, $t2, 2
/* 0C1DF8 801613B8 00290821 */  addu  $at, $at, $t1
/* 0C1DFC 801613BC 1000000E */  b     .L801613F8_ovl3
/* 0C1E00 801613C0 E4206850 */   swc1  $f0, 0x6850($at)
/* 0C1E04 801613C4 44810000 */  mtc1  $at, $f0
.L801613C8_ovl3:
/* 0C1E08 801613C8 3C01800E */  lui   $at, 0x800e
/* 0C1E0C 801613CC 00270821 */  addu  $at, $at, $a3
/* 0C1E10 801613D0 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0C1E14 801613D4 3C01800E */  lui   $at, 0x800e
/* 0C1E18 801613D8 00270821 */  addu  $at, $at, $a3
/* 0C1E1C 801613DC 46004282 */  mul.s $f10, $f8, $f0
/* 0C1E20 801613E0 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0C1E24 801613E4 8C6B0000 */  lw    $t3, ($v1)
/* 0C1E28 801613E8 3C01800E */  lui   $at, 0x800e
/* 0C1E2C 801613EC 000B6880 */  sll   $t5, $t3, 2
/* 0C1E30 801613F0 002D0821 */  addu  $at, $at, $t5
/* 0C1E34 801613F4 E4206850 */  swc1  $f0, 0x6850($at)
.L801613F8_ovl3:
/* 0C1E38 801613F8 8C6F0000 */  lw    $t7, ($v1)
/* 0C1E3C 801613FC 3C10800F */  lui   $s0, %hi(D_800E9720) # $s0, 0x800f
/* 0C1E40 80161400 26109720 */  addiu $s0, %lo(D_800E9720) # addiu $s0, $s0, -0x68e0
/* 0C1E44 80161404 000F6080 */  sll   $t4, $t7, 2
/* 0C1E48 80161408 020C7021 */  addu  $t6, $s0, $t4
/* 0C1E4C 8016140C ADC00000 */  sw    $zero, ($t6)
/* 0C1E50 80161410 8C670000 */  lw    $a3, ($v1)
/* 0C1E54 80161414 00073880 */  sll   $a3, $a3, 2
/* 0C1E58 80161418 0207C021 */  addu  $t8, $s0, $a3
/* 0C1E5C 8016141C 8F190000 */  lw    $t9, ($t8)
/* 0C1E60 80161420 2B21001E */  slti  $at, $t9, 0x1e
/* 0C1E64 80161424 1020001C */  beqz  $at, .L80161498_ovl3
/* 0C1E68 80161428 02275021 */   addu  $t2, $s1, $a3
.L8016142C_ovl3:
/* 0C1E6C 8016142C 8D490000 */  lw    $t1, ($t2)
/* 0C1E70 80161430 3C0B800E */  lui   $t3, %hi(D_800E64D0) # $t3, 0x800e
/* 0C1E74 80161434 256B64D0 */  addiu $t3, %lo(D_800E64D0) # addiu $t3, $t3, 0x64d0
/* 0C1E78 80161438 11200007 */  beqz  $t1, .L80161458_ovl3
/* 0C1E7C 8016143C 00EB1021 */   addu  $v0, $a3, $t3
/* 0C1E80 80161440 C4500000 */  lwc1  $f16, ($v0)
/* 0C1E84 80161444 46008487 */  neg.s $f18, $f16
/* 0C1E88 80161448 E4520000 */  swc1  $f18, ($v0)
/* 0C1E8C 8016144C 8C670000 */  lw    $a3, ($v1)
/* 0C1E90 80161450 10000011 */  b     .L80161498_ovl3
/* 0C1E94 80161454 00073880 */   sll   $a3, $a3, 2
.L80161458_ovl3:
/* 0C1E98 80161458 0C002DAF */  jal   finish_current_thread
/* 0C1E9C 8016145C 24040001 */   li    $a0, 1
/* 0C1EA0 80161460 8E430000 */  lw    $v1, ($s2)
/* 0C1EA4 80161464 8C6D0000 */  lw    $t5, ($v1)
/* 0C1EA8 80161468 000D7880 */  sll   $t7, $t5, 2
/* 0C1EAC 8016146C 020F1021 */  addu  $v0, $s0, $t7
/* 0C1EB0 80161470 8C4C0000 */  lw    $t4, ($v0)
/* 0C1EB4 80161474 258E0001 */  addiu $t6, $t4, 1
/* 0C1EB8 80161478 AC4E0000 */  sw    $t6, ($v0)
/* 0C1EBC 8016147C 8C670000 */  lw    $a3, ($v1)
/* 0C1EC0 80161480 00073880 */  sll   $a3, $a3, 2
/* 0C1EC4 80161484 0207C021 */  addu  $t8, $s0, $a3
/* 0C1EC8 80161488 8F190000 */  lw    $t9, ($t8)
/* 0C1ECC 8016148C 2B21001E */  slti  $at, $t9, 0x1e
/* 0C1ED0 80161490 5420FFE6 */  bnezl $at, .L8016142C_ovl3
/* 0C1ED4 80161494 02275021 */   addu  $t2, $s1, $a3
.L80161498_ovl3:
/* 0C1ED8 80161498 3C01800E */  lui   $at, 0x800e
/* 0C1EDC 8016149C 00270821 */  addu  $at, $at, $a3
/* 0C1EE0 801614A0 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0C1EE4 801614A4 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0C1EE8 801614A8 44813000 */  mtc1  $at, $f6
/* 0C1EEC 801614AC 3C01800E */  lui   $at, 0x800e
/* 0C1EF0 801614B0 00270821 */  addu  $at, $at, $a3
/* 0C1EF4 801614B4 46062202 */  mul.s $f8, $f4, $f6
/* 0C1EF8 801614B8 0C02BE85 */  jal   func_800AFA14
/* 0C1EFC 801614BC E4286690 */   swc1  $f8, 0x6690($at)
/* 0C1F00 801614C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0C1F04 801614C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C1F08 801614C8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C1F0C 801614CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C1F10 801614D0 03E00008 */  jr    $ra
/* 0C1F14 801614D4 27BD0038 */   addiu $sp, $sp, 0x38

.type func_80161058_ovl3, @function
.size func_80161058_ovl3, . - func_80161058_ovl3

glabel func_801614D8_ovl3
/* 0C1F18 801614D8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0C1F1C 801614DC AFB00020 */  sw    $s0, 0x20($sp)
/* 0C1F20 801614E0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C1F24 801614E4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C1F28 801614E8 8E090000 */  lw    $t1, ($s0)
/* 0C1F2C 801614EC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C1F30 801614F0 AFA40068 */  sw    $a0, 0x68($sp)
/* 0C1F34 801614F4 8D230000 */  lw    $v1, ($t1)
/* 0C1F38 801614F8 3C01800E */  lui   $at, 0x800e
/* 0C1F3C 801614FC 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0C1F40 80161500 00031880 */  sll   $v1, $v1, 2
/* 0C1F44 80161504 00230821 */  addu  $at, $at, $v1
/* 0C1F48 80161508 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C1F4C 8016150C 3C01800E */  lui   $at, 0x800e
/* 0C1F50 80161510 00230821 */  addu  $at, $at, $v1
/* 0C1F54 80161514 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0C1F58 80161518 3C0E800F */  lui   $t6, 0x800f
/* 0C1F5C 8016151C E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C1F60 80161520 8C4F00A0 */  lw    $t7, 0xa0($v0)
/* 0C1F64 80161524 01C37021 */  addu  $t6, $t6, $v1
/* 0C1F68 80161528 8DCEA360 */  lw    $t6, -0x5ca0($t6)
/* 0C1F6C 8016152C 15E00033 */  bnez  $t7, .L801615FC_ovl3
/* 0C1F70 80161530 AFAE0064 */   sw    $t6, 0x64($sp)
/* 0C1F74 80161534 0C029D9E */  jal   play_sound
/* 0C1F78 80161538 24040159 */   li    $a0, 345
/* 0C1F7C 8016153C 8E180000 */  lw    $t8, ($s0)
/* 0C1F80 80161540 3C01800E */  lui   $at, 0x800e
/* 0C1F84 80161544 3C07800E */  lui   $a3, 0x800e
/* 0C1F88 80161548 8F030000 */  lw    $v1, ($t8)
/* 0C1F8C 8016154C 24040002 */  li    $a0, 2
/* 0C1F90 80161550 24050001 */  li    $a1, 1
/* 0C1F94 80161554 00031880 */  sll   $v1, $v1, 2
/* 0C1F98 80161558 00230821 */  addu  $at, $at, $v1
/* 0C1F9C 8016155C C4262790 */  lwc1  $f6, 0x2790($at)
/* 0C1FA0 80161560 3C01800E */  lui   $at, 0x800e
/* 0C1FA4 80161564 00230821 */  addu  $at, $at, $v1
/* 0C1FA8 80161568 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0C1FAC 8016156C 00E33821 */  addu  $a3, $a3, $v1
/* 0C1FB0 80161570 8CE725D0 */  lw    $a3, 0x25d0($a3)
/* 0C1FB4 80161574 24060058 */  li    $a2, 88
/* 0C1FB8 80161578 E7A60010 */  swc1  $f6, 0x10($sp)
/* 0C1FBC 8016157C 0C029FDD */  jal   func_800A7F74
/* 0C1FC0 80161580 E7A80014 */   swc1  $f8, 0x14($sp)
/* 0C1FC4 80161584 8FA40064 */  lw    $a0, 0x64($sp)
/* 0C1FC8 80161588 8C990000 */  lw    $t9, ($a0)
/* 0C1FCC 8016158C 53200004 */  beql  $t9, $zero, .L801615A0_ovl3
/* 0C1FD0 80161590 8E0A0000 */   lw    $t2, ($s0)
/* 0C1FD4 80161594 0C029E1C */  jal   func_800A7870
/* 0C1FD8 80161598 24850004 */   addiu $a1, $a0, 4
/* 0C1FDC 8016159C 8E0A0000 */  lw    $t2, ($s0)
.L801615A0_ovl3:
/* 0C1FE0 801615A0 3C04800F */  lui   $a0, 0x800f
/* 0C1FE4 801615A4 8D480000 */  lw    $t0, ($t2)
/* 0C1FE8 801615A8 00085880 */  sll   $t3, $t0, 2
/* 0C1FEC 801615AC 008B2021 */  addu  $a0, $a0, $t3
/* 0C1FF0 801615B0 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C1FF4 801615B4 1080000D */  beqz  $a0, .L801615EC_ovl3
/* 0C1FF8 801615B8 00000000 */   nop   
/* 0C1FFC 801615BC 0C0288B5 */  jal   func_800A22D4
/* 0C2000 801615C0 00000000 */   nop   
/* 0C2004 801615C4 8E0C0000 */  lw    $t4, ($s0)
/* 0C2008 801615C8 3C04800F */  lui   $a0, 0x800f
/* 0C200C 801615CC 8D8D0000 */  lw    $t5, ($t4)
/* 0C2010 801615D0 000D7080 */  sll   $t6, $t5, 2
/* 0C2014 801615D4 008E2021 */  addu  $a0, $a0, $t6
/* 0C2018 801615D8 0C0288B5 */  jal   func_800A22D4
/* 0C201C 801615DC 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0C2020 801615E0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C2024 801615E4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C2028 801615E8 8DE80000 */  lw    $t0, ($t7)
.L801615EC_ovl3:
/* 0C202C 801615EC 0C02C640 */  jal   func_800B1900
/* 0C2030 801615F0 3104FFFF */   andi  $a0, $t0, 0xffff
/* 0C2034 801615F4 100001B6 */  b     .L80161CD0_ovl3
/* 0C2038 801615F8 8FBF0024 */   lw    $ra, 0x24($sp)
.L801615FC_ovl3:
/* 0C203C 801615FC 8C580044 */  lw    $t8, 0x44($v0)
/* 0C2040 80161600 24010001 */  li    $at, 1
/* 0C2044 80161604 3C19801A */  lui   $t9, %hi(D_801982F8) # $t9, 0x801a
/* 0C2048 80161608 17010020 */  bne   $t8, $at, .L8016168C_ovl3
/* 0C204C 8016160C 273982F8 */   addiu $t9, %lo(D_801982F8) # addiu $t9, $t9, -0x7d08
/* 0C2050 80161610 8FB90064 */  lw    $t9, 0x64($sp)
/* 0C2054 80161614 8F2A0000 */  lw    $t2, ($t9)
/* 0C2058 80161618 03202025 */  move  $a0, $t9
/* 0C205C 8016161C 51400005 */  beql  $t2, $zero, .L80161634_ovl3
/* 0C2060 80161620 8D280000 */   lw    $t0, ($t1)
/* 0C2064 80161624 0C029E1C */  jal   func_800A7870
/* 0C2068 80161628 27250004 */   addiu $a1, $t9, 4
/* 0C206C 8016162C 8E090000 */  lw    $t1, ($s0)
/* 0C2070 80161630 8D280000 */  lw    $t0, ($t1)
.L80161634_ovl3:
/* 0C2074 80161634 3C04800F */  lui   $a0, 0x800f
/* 0C2078 80161638 00085880 */  sll   $t3, $t0, 2
/* 0C207C 8016163C 008B2021 */  addu  $a0, $a0, $t3
/* 0C2080 80161640 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C2084 80161644 1080000D */  beqz  $a0, .L8016167C_ovl3
/* 0C2088 80161648 00000000 */   nop   
/* 0C208C 8016164C 0C0288B5 */  jal   func_800A22D4
/* 0C2090 80161650 00000000 */   nop   
/* 0C2094 80161654 8E0C0000 */  lw    $t4, ($s0)
/* 0C2098 80161658 3C04800F */  lui   $a0, 0x800f
/* 0C209C 8016165C 8D8D0000 */  lw    $t5, ($t4)
/* 0C20A0 80161660 000D7080 */  sll   $t6, $t5, 2
/* 0C20A4 80161664 008E2021 */  addu  $a0, $a0, $t6
/* 0C20A8 80161668 0C0288B5 */  jal   func_800A22D4
/* 0C20AC 8016166C 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0C20B0 80161670 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C20B4 80161674 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C20B8 80161678 8DE80000 */  lw    $t0, ($t7)
.L8016167C_ovl3:
/* 0C20BC 8016167C 0C02C640 */  jal   func_800B1900
/* 0C20C0 80161680 3104FFFF */   andi  $a0, $t0, 0xffff
/* 0C20C4 80161684 10000192 */  b     .L80161CD0_ovl3
/* 0C20C8 80161688 8FBF0024 */   lw    $ra, 0x24($sp)
.L8016168C_ovl3:
/* 0C20CC 8016168C 8D280000 */  lw    $t0, ($t1)
/* 0C20D0 80161690 3C058019 */  lui   $a1, %hi(D_80193834) # $a1, 0x8019
/* 0C20D4 80161694 24A53834 */  addiu $a1, %lo(D_80193834) # addiu $a1, $a1, 0x3834
/* 0C20D8 80161698 0008C140 */  sll   $t8, $t0, 5
/* 0C20DC 8016169C 270AFF80 */  addiu $t2, $t8, -0x80
/* 0C20E0 801616A0 01592021 */  addu  $a0, $t2, $t9
/* 0C20E4 801616A4 00003025 */  move  $a2, $zero
/* 0C20E8 801616A8 0C055754 */  jal   func_80155D50_ovl3
/* 0C20EC 801616AC 01003825 */   move  $a3, $t0
/* 0C20F0 801616B0 8E0B0000 */  lw    $t3, ($s0)
/* 0C20F4 801616B4 3C0F8019 */  lui   $t7, %hi(D_80197F60) # $t7, 0x8019
/* 0C20F8 801616B8 25EF7F60 */  addiu $t7, %lo(D_80197F60) # addiu $t7, $t7, 0x7f60
/* 0C20FC 801616BC 8D6C0000 */  lw    $t4, ($t3)
/* 0C2100 801616C0 000C6880 */  sll   $t5, $t4, 2
/* 0C2104 801616C4 01AC6823 */  subu  $t5, $t5, $t4
/* 0C2108 801616C8 000D68C0 */  sll   $t5, $t5, 3
/* 0C210C 801616CC 01AC6823 */  subu  $t5, $t5, $t4
/* 0C2110 801616D0 000D6880 */  sll   $t5, $t5, 2
/* 0C2114 801616D4 25AEFE90 */  addiu $t6, $t5, -0x170
/* 0C2118 801616D8 0C055599 */  jal   func_80155664_ovl3
/* 0C211C 801616DC 01CF2021 */   addu  $a0, $t6, $t7
/* 0C2120 801616E0 8E090000 */  lw    $t1, ($s0)
/* 0C2124 801616E4 3C01800F */  lui   $at, 0x800f
/* 0C2128 801616E8 27A40058 */  addiu $a0, $sp, 0x58
/* 0C212C 801616EC 8D380000 */  lw    $t8, ($t1)
/* 0C2130 801616F0 3C0541C8 */  lui   $a1, 0x41c8
/* 0C2134 801616F4 24060006 */  li    $a2, 6
/* 0C2138 801616F8 00185080 */  sll   $t2, $t8, 2
/* 0C213C 801616FC 002A0821 */  addu  $at, $at, $t2
/* 0C2140 80161700 AC208920 */  sw    $zero, -0x76e0($at)
/* 0C2144 80161704 8D390000 */  lw    $t9, ($t1)
/* 0C2148 80161708 3C01800E */  lui   $at, 0x800e
/* 0C214C 8016170C 00195880 */  sll   $t3, $t9, 2
/* 0C2150 80161710 002B0821 */  addu  $at, $at, $t3
/* 0C2154 80161714 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0C2158 80161718 3C01800E */  lui   $at, 0x800e
/* 0C215C 8016171C E7AA0058 */  swc1  $f10, 0x58($sp)
/* 0C2160 80161720 8D2C0000 */  lw    $t4, ($t1)
/* 0C2164 80161724 000C6880 */  sll   $t5, $t4, 2
/* 0C2168 80161728 002D0821 */  addu  $at, $at, $t5
/* 0C216C 8016172C C4302790 */  lwc1  $f16, 0x2790($at)
/* 0C2170 80161730 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C2174 80161734 E7B0005C */  swc1  $f16, 0x5c($sp)
/* 0C2178 80161738 8D2E0000 */  lw    $t6, ($t1)
/* 0C217C 8016173C 000E7880 */  sll   $t7, $t6, 2
/* 0C2180 80161740 002F0821 */  addu  $at, $at, $t7
/* 0C2184 80161744 C4322950 */  lwc1  $f18, 0x2950($at)
/* 0C2188 80161748 0C05560E */  jal   func_80155838_ovl3
/* 0C218C 8016174C E7B20060 */   swc1  $f18, 0x60($sp)
/* 0C2190 80161750 8E180000 */  lw    $t8, ($s0)
/* 0C2194 80161754 AFA20054 */  sw    $v0, 0x54($sp)
/* 0C2198 80161758 3C0B800F */  lui   $t3, 0x800f
/* 0C219C 8016175C 8F0A0000 */  lw    $t2, ($t8)
/* 0C21A0 80161760 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0C21A4 80161764 000AC880 */  sll   $t9, $t2, 2
/* 0C21A8 80161768 01795821 */  addu  $t3, $t3, $t9
/* 0C21AC 8016176C 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 0C21B0 80161770 316C0004 */  andi  $t4, $t3, 4
/* 0C21B4 80161774 5180000E */  beql  $t4, $zero, .L801617B0_ovl3
/* 0C21B8 80161778 44816000 */   mtc1  $at, $f12
/* 0C21BC 8016177C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C21C0 80161780 44816000 */  mtc1  $at, $f12
/* 0C21C4 80161784 0C02BB30 */  jal   func_800AECC0
/* 0C21C8 80161788 00000000 */   nop   
/* 0C21CC 8016178C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C21D0 80161790 44816000 */  mtc1  $at, $f12
/* 0C21D4 80161794 0C02BB48 */  jal   func_800AED20
/* 0C21D8 80161798 00000000 */   nop   
/* 0C21DC 8016179C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0C21E0 801617A0 44811000 */  mtc1  $at, $f2
/* 0C21E4 801617A4 1000000C */  b     .L801617D8_ovl3
/* 0C21E8 801617A8 8E090000 */   lw    $t1, ($s0)
/* 0C21EC 801617AC 44816000 */  mtc1  $at, $f12
.L801617B0_ovl3:
/* 0C21F0 801617B0 0C02BB30 */  jal   func_800AECC0
/* 0C21F4 801617B4 00000000 */   nop   
/* 0C21F8 801617B8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0C21FC 801617BC 44816000 */  mtc1  $at, $f12
/* 0C2200 801617C0 0C02BB48 */  jal   func_800AED20
/* 0C2204 801617C4 00000000 */   nop   
/* 0C2208 801617C8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0C220C 801617CC 44811000 */  mtc1  $at, $f2
/* 0C2210 801617D0 00000000 */  nop   
/* 0C2214 801617D4 8E090000 */  lw    $t1, ($s0)
.L801617D8_ovl3:
/* 0C2218 801617D8 3C02800F */  lui   $v0, %hi(D_800E98E0) # $v0, 0x800f
/* 0C221C 801617DC 244298E0 */  addiu $v0, %lo(D_800E98E0) # addiu $v0, $v0, -0x6720
/* 0C2220 801617E0 8D280000 */  lw    $t0, ($t1)
/* 0C2224 801617E4 3C05800E */  lui   $a1, 0x800e
/* 0C2228 801617E8 00081880 */  sll   $v1, $t0, 2
/* 0C222C 801617EC 00436821 */  addu  $t5, $v0, $v1
/* 0C2230 801617F0 8DAE0000 */  lw    $t6, ($t5)
/* 0C2234 801617F4 00A32821 */  addu  $a1, $a1, $v1
/* 0C2238 801617F8 01002025 */  move  $a0, $t0
/* 0C223C 801617FC 51C00059 */  beql  $t6, $zero, .L80161964_ovl3
/* 0C2240 80161800 44802000 */   mtc1  $zero, $f4
/* 0C2244 80161804 8CA50D50 */  lw    $a1, 0xd50($a1)
/* 0C2248 80161808 0C03E60A */  jal   func_800F9828
/* 0C224C 8016180C E7A20050 */   swc1  $f2, 0x50($sp)
/* 0C2250 80161810 8E0F0000 */  lw    $t7, ($s0)
/* 0C2254 80161814 3C18800E */  lui   $t8, 0x800e
/* 0C2258 80161818 3C02800E */  lui   $v0, %hi(gEntitiesNextPosYArray) # $v0, 0x800e
/* 0C225C 8016181C 8DE30000 */  lw    $v1, ($t7)
/* 0C2260 80161820 24422790 */  addiu $v0, %lo(gEntitiesNextPosYArray) # addiu $v0, $v0, 0x2790
/* 0C2264 80161824 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0C2268 80161828 00031880 */  sll   $v1, $v1, 2
/* 0C226C 8016182C 0303C021 */  addu  $t8, $t8, $v1
/* 0C2270 80161830 8F180D50 */  lw    $t8, 0xd50($t8)
/* 0C2274 80161834 00435821 */  addu  $t3, $v0, $v1
/* 0C2278 80161838 C5660000 */  lwc1  $f6, ($t3)
/* 0C227C 8016183C 00185080 */  sll   $t2, $t8, 2
/* 0C2280 80161840 004AC821 */  addu  $t9, $v0, $t2
/* 0C2284 80161844 C7240000 */  lwc1  $f4, ($t9)
/* 0C2288 80161848 44815000 */  mtc1  $at, $f10
/* 0C228C 8016184C 46000386 */  mov.s $f14, $f0
/* 0C2290 80161850 46062201 */  sub.s $f8, $f4, $f6
/* 0C2294 80161854 0C0061C3 */  jal   atan2f
/* 0C2298 80161858 460A4300 */   add.s $f12, $f8, $f10
/* 0C229C 8016185C E7A00044 */  swc1  $f0, 0x44($sp)
/* 0C22A0 80161860 0C00B5B8 */  jal   sinf
/* 0C22A4 80161864 46000306 */   mov.s $f12, $f0
/* 0C22A8 80161868 C7A20050 */  lwc1  $f2, 0x50($sp)
/* 0C22AC 8016186C 8E090000 */  lw    $t1, ($s0)
/* 0C22B0 80161870 3C01800E */  lui   $at, 0x800e
/* 0C22B4 80161874 46020402 */  mul.s $f16, $f0, $f2
/* 0C22B8 80161878 8D2C0000 */  lw    $t4, ($t1)
/* 0C22BC 8016187C 44802000 */  mtc1  $zero, $f4
/* 0C22C0 80161880 44809000 */  mtc1  $zero, $f18
/* 0C22C4 80161884 000C6880 */  sll   $t5, $t4, 2
/* 0C22C8 80161888 002D0821 */  addu  $at, $at, $t5
/* 0C22CC 8016188C 4604103C */  c.lt.s $f2, $f4
/* 0C22D0 80161890 E4303210 */  swc1  $f16, 0x3210($at)
/* 0C22D4 80161894 8D2E0000 */  lw    $t6, ($t1)
/* 0C22D8 80161898 3C01800E */  lui   $at, 0x800e
/* 0C22DC 8016189C 000E7880 */  sll   $t7, $t6, 2
/* 0C22E0 801618A0 002F0821 */  addu  $at, $at, $t7
/* 0C22E4 801618A4 45000008 */  bc1f  .L801618C8_ovl3
/* 0C22E8 801618A8 E4323750 */   swc1  $f18, 0x3750($at)
/* 0C22EC 801618AC 8D380000 */  lw    $t8, ($t1)
/* 0C22F0 801618B0 3C01800E */  lui   $at, 0x800e
/* 0C22F4 801618B4 46001187 */  neg.s $f6, $f2
/* 0C22F8 801618B8 00185080 */  sll   $t2, $t8, 2
/* 0C22FC 801618BC 002A0821 */  addu  $at, $at, $t2
/* 0C2300 801618C0 10000006 */  b     .L801618DC_ovl3
/* 0C2304 801618C4 E4263C90 */   swc1  $f6, 0x3c90($at)
.L801618C8_ovl3:
/* 0C2308 801618C8 8D390000 */  lw    $t9, ($t1)
/* 0C230C 801618CC 3C01800E */  lui   $at, 0x800e
/* 0C2310 801618D0 00195880 */  sll   $t3, $t9, 2
/* 0C2314 801618D4 002B0821 */  addu  $at, $at, $t3
/* 0C2318 801618D8 E4223C90 */  swc1  $f2, 0x3c90($at)
.L801618DC_ovl3:
/* 0C231C 801618DC C7AC0044 */  lwc1  $f12, 0x44($sp)
/* 0C2320 801618E0 0C00D604 */  jal   cosf
/* 0C2324 801618E4 E7A20050 */   swc1  $f2, 0x50($sp)
/* 0C2328 801618E8 C7A20050 */  lwc1  $f2, 0x50($sp)
/* 0C232C 801618EC 8E090000 */  lw    $t1, ($s0)
/* 0C2330 801618F0 3C01800E */  lui   $at, 0x800e
/* 0C2334 801618F4 46020202 */  mul.s $f8, $f0, $f2
/* 0C2338 801618F8 8D2C0000 */  lw    $t4, ($t1)
/* 0C233C 801618FC 44808000 */  mtc1  $zero, $f16
/* 0C2340 80161900 44805000 */  mtc1  $zero, $f10
/* 0C2344 80161904 000C6880 */  sll   $t5, $t4, 2
/* 0C2348 80161908 002D0821 */  addu  $at, $at, $t5
/* 0C234C 8016190C 4610103C */  c.lt.s $f2, $f16
/* 0C2350 80161910 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 0C2354 80161914 8D2E0000 */  lw    $t6, ($t1)
/* 0C2358 80161918 3C01800E */  lui   $at, 0x800e
/* 0C235C 8016191C 000E7880 */  sll   $t7, $t6, 2
/* 0C2360 80161920 002F0821 */  addu  $at, $at, $t7
/* 0C2364 80161924 45000008 */  bc1f  .L80161948_ovl3
/* 0C2368 80161928 E42A6690 */   swc1  $f10, 0x6690($at)
/* 0C236C 8016192C 8D380000 */  lw    $t8, ($t1)
/* 0C2370 80161930 3C01800E */  lui   $at, 0x800e
/* 0C2374 80161934 46001487 */  neg.s $f18, $f2
/* 0C2378 80161938 00185080 */  sll   $t2, $t8, 2
/* 0C237C 8016193C 002A0821 */  addu  $at, $at, $t2
/* 0C2380 80161940 10000037 */  b     .L80161A20_ovl3
/* 0C2384 80161944 E4326850 */   swc1  $f18, 0x6850($at)
.L80161948_ovl3:
/* 0C2388 80161948 8D390000 */  lw    $t9, ($t1)
/* 0C238C 8016194C 3C01800E */  lui   $at, 0x800e
/* 0C2390 80161950 00195880 */  sll   $t3, $t9, 2
/* 0C2394 80161954 002B0821 */  addu  $at, $at, $t3
/* 0C2398 80161958 10000031 */  b     .L80161A20_ovl3
/* 0C239C 8016195C E4226850 */   swc1  $f2, 0x6850($at)
/* 0C23A0 80161960 44802000 */  mtc1  $zero, $f4
.L80161964_ovl3:
/* 0C23A4 80161964 3C01800E */  lui   $at, 0x800e
/* 0C23A8 80161968 00230821 */  addu  $at, $at, $v1
/* 0C23AC 8016196C 4604103C */  c.lt.s $f2, $f4
/* 0C23B0 80161970 00000000 */  nop   
/* 0C23B4 80161974 45000006 */  bc1f  .L80161990_ovl3
/* 0C23B8 80161978 00000000 */   nop   
/* 0C23BC 8016197C 3C01800E */  lui   $at, 0x800e
/* 0C23C0 80161980 46001187 */  neg.s $f6, $f2
/* 0C23C4 80161984 00230821 */  addu  $at, $at, $v1
/* 0C23C8 80161988 10000002 */  b     .L80161994_ovl3
/* 0C23CC 8016198C E4266850 */   swc1  $f6, 0x6850($at)
.L80161990_ovl3:
/* 0C23D0 80161990 E4226850 */  swc1  $f2, 0x6850($at)
.L80161994_ovl3:
/* 0C23D4 80161994 8D230000 */  lw    $v1, ($t1)
/* 0C23D8 80161998 3C01800E */  lui   $at, 0x800e
/* 0C23DC 8016199C 00031880 */  sll   $v1, $v1, 2
/* 0C23E0 801619A0 00230821 */  addu  $at, $at, $v1
/* 0C23E4 801619A4 C4206A10 */  lwc1  $f0, 0x6a10($at)
/* 0C23E8 801619A8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C23EC 801619AC 44814000 */  mtc1  $at, $f8
/* 0C23F0 801619B0 3C01800E */  lui   $at, 0x800e
/* 0C23F4 801619B4 00230821 */  addu  $at, $at, $v1
/* 0C23F8 801619B8 46004032 */  c.eq.s $f8, $f0
/* 0C23FC 801619BC 00000000 */  nop   
/* 0C2400 801619C0 45020008 */  bc1fl .L801619E4_ovl3
/* 0C2404 801619C4 3C01BF80 */   lui   $at, %hi(D_BF8064D0) # $at, 0xbf80
/* 0C2408 801619C8 C42A64D0 */  lwc1  $f10, %lo(D_BF8064D0)($at)
/* 0C240C 801619CC 44808000 */  mtc1  $zero, $f16
/* 0C2410 801619D0 00000000 */  nop   
/* 0C2414 801619D4 4610503C */  c.lt.s $f10, $f16
/* 0C2418 801619D8 00000000 */  nop   
/* 0C241C 801619DC 4501000D */  bc1t  .L80161A14_ovl3
/* 0C2420 801619E0 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
.L801619E4_ovl3:
/* 0C2424 801619E4 44819000 */  mtc1  $at, $f18
/* 0C2428 801619E8 3C01800E */  lui   $at, 0x800e
/* 0C242C 801619EC 00230821 */  addu  $at, $at, $v1
/* 0C2430 801619F0 46009032 */  c.eq.s $f18, $f0
/* 0C2434 801619F4 00000000 */  nop   
/* 0C2438 801619F8 45000009 */  bc1f  .L80161A20_ovl3
/* 0C243C 801619FC 00000000 */   nop   
/* 0C2440 80161A00 44802000 */  mtc1  $zero, $f4
/* 0C2444 80161A04 C42664D0 */  lwc1  $f6, 0x64d0($at)
/* 0C2448 80161A08 4606203C */  c.lt.s $f4, $f6
/* 0C244C 80161A0C 00000000 */  nop   
/* 0C2450 80161A10 45000003 */  bc1f  .L80161A20_ovl3
.L80161A14_ovl3:
/* 0C2454 80161A14 240C0001 */   li    $t4, 1
/* 0C2458 80161A18 00436821 */  addu  $t5, $v0, $v1
/* 0C245C 80161A1C ADAC0000 */  sw    $t4, ($t5)
.L80161A20_ovl3:
/* 0C2460 80161A20 3C04801A */  lui   $a0, %hi(D_80198830) # $a0, 0x801a
/* 0C2464 80161A24 24848830 */  addiu $a0, %lo(D_80198830) # addiu $a0, $a0, -0x77d0
/* 0C2468 80161A28 8C8E0004 */  lw    $t6, 4($a0)
/* 0C246C 80161A2C 55C00012 */  bnezl $t6, .L80161A78_ovl3
/* 0C2470 80161A30 3C040002 */   lui   $a0, 2
/* 0C2474 80161A34 8D2F0000 */  lw    $t7, ($t1)
/* 0C2478 80161A38 3C03800F */  lui   $v1, %hi(D_800E9560) # $v1, 0x800f
/* 0C247C 80161A3C 24639560 */  addiu $v1, %lo(D_800E9560) # addiu $v1, $v1, -0x6aa0
/* 0C2480 80161A40 000FC080 */  sll   $t8, $t7, 2
/* 0C2484 80161A44 00781021 */  addu  $v0, $v1, $t8
/* 0C2488 80161A48 8C4A0000 */  lw    $t2, ($v0)
/* 0C248C 80161A4C 240F0001 */  li    $t7, 1
/* 0C2490 80161A50 2559FFFF */  addiu $t9, $t2, -1
/* 0C2494 80161A54 AC590000 */  sw    $t9, ($v0)
/* 0C2498 80161A58 8D2B0000 */  lw    $t3, ($t1)
/* 0C249C 80161A5C 000B6080 */  sll   $t4, $t3, 2
/* 0C24A0 80161A60 006C6821 */  addu  $t5, $v1, $t4
/* 0C24A4 80161A64 8DAE0000 */  lw    $t6, ($t5)
/* 0C24A8 80161A68 55C00003 */  bnezl $t6, .L80161A78_ovl3
/* 0C24AC 80161A6C 3C040002 */   lui   $a0, %hi(D_00020004) # $a0, 2
/* 0C24B0 80161A70 AC8F0004 */  sw    $t7, %lo(D_00020004)($a0)
/* 0C24B4 80161A74 3C040002 */  lui   $a0, (0x00020288 >> 16) # lui $a0, 2
.L80161A78_ovl3:
/* 0C24B8 80161A78 0C02AA4D */  jal   func_800AA934
/* 0C24BC 80161A7C 34840288 */   ori   $a0, (0x00020288 & 0xFFFF) # ori $a0, $a0, 0x288
/* 0C24C0 80161A80 10400003 */  beqz  $v0, .L80161A90_ovl3
/* 0C24C4 80161A84 3C040002 */   lui   $a0, (0x00020289 >> 16) # lui $a0, 2
/* 0C24C8 80161A88 0C02A806 */  jal   func_800AA018
/* 0C24CC 80161A8C 34840289 */   ori   $a0, (0x00020289 & 0xFFFF) # ori $a0, $a0, 0x289
.L80161A90_ovl3:
/* 0C24D0 80161A90 8FB80054 */  lw    $t8, 0x54($sp)
/* 0C24D4 80161A94 8FA40064 */  lw    $a0, 0x64($sp)
/* 0C24D8 80161A98 8FA50064 */  lw    $a1, 0x64($sp)
/* 0C24DC 80161A9C 5700002C */  bnezl $t8, .L80161B50_ovl3
/* 0C24E0 80161AA0 8CAA0000 */   lw    $t2, ($a1)
/* 0C24E4 80161AA4 8C8A0000 */  lw    $t2, ($a0)
/* 0C24E8 80161AA8 51400004 */  beql  $t2, $zero, .L80161ABC_ovl3
/* 0C24EC 80161AAC 8E190000 */   lw    $t9, ($s0)
/* 0C24F0 80161AB0 0C029E1C */  jal   func_800A7870
/* 0C24F4 80161AB4 24850004 */   addiu $a1, $a0, 4
/* 0C24F8 80161AB8 8E190000 */  lw    $t9, ($s0)
.L80161ABC_ovl3:
/* 0C24FC 80161ABC 3C04800F */  lui   $a0, 0x800f
/* 0C2500 80161AC0 8F280000 */  lw    $t0, ($t9)
/* 0C2504 80161AC4 00081880 */  sll   $v1, $t0, 2
/* 0C2508 80161AC8 00832021 */  addu  $a0, $a0, $v1
/* 0C250C 80161ACC 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C2510 80161AD0 10800045 */  beqz  $a0, .L80161BE8_ovl3
/* 0C2514 80161AD4 00000000 */   nop   
/* 0C2518 80161AD8 0C0287CC */  jal   func_800A1F30
/* 0C251C 80161ADC 00000000 */   nop   
/* 0C2520 80161AE0 8E0B0000 */  lw    $t3, ($s0)
/* 0C2524 80161AE4 3C04800F */  lui   $a0, 0x800f
/* 0C2528 80161AE8 8D6C0000 */  lw    $t4, ($t3)
/* 0C252C 80161AEC 000C6880 */  sll   $t5, $t4, 2
/* 0C2530 80161AF0 008D2021 */  addu  $a0, $a0, $t5
/* 0C2534 80161AF4 0C0287CC */  jal   func_800A1F30
/* 0C2538 80161AF8 8C84B4E0 */   lw    $a0, -0x4b20($a0)
/* 0C253C 80161AFC 8E090000 */  lw    $t1, ($s0)
/* 0C2540 80161B00 3C01800F */  lui   $at, 0x800f
/* 0C2544 80161B04 3C18800F */  lui   $t8, 0x800f
/* 0C2548 80161B08 8D2E0000 */  lw    $t6, ($t1)
/* 0C254C 80161B0C 3C04800F */  lui   $a0, 0x800f
/* 0C2550 80161B10 000E7880 */  sll   $t7, $t6, 2
/* 0C2554 80161B14 002F0821 */  addu  $at, $at, $t7
/* 0C2558 80161B18 AC20B4E0 */  sw    $zero, -0x4b20($at)
/* 0C255C 80161B1C 8D230000 */  lw    $v1, ($t1)
/* 0C2560 80161B20 3C01800F */  lui   $at, 0x800f
/* 0C2564 80161B24 00031880 */  sll   $v1, $v1, 2
/* 0C2568 80161B28 0303C021 */  addu  $t8, $t8, $v1
/* 0C256C 80161B2C 8F18B4E0 */  lw    $t8, -0x4b20($t8)
/* 0C2570 80161B30 00230821 */  addu  $at, $at, $v1
/* 0C2574 80161B34 AC38A520 */  sw    $t8, -0x5ae0($at)
/* 0C2578 80161B38 8D280000 */  lw    $t0, ($t1)
/* 0C257C 80161B3C 00081880 */  sll   $v1, $t0, 2
/* 0C2580 80161B40 00832021 */  addu  $a0, $a0, $v1
/* 0C2584 80161B44 10000028 */  b     .L80161BE8_ovl3
/* 0C2588 80161B48 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C258C 80161B4C 8CAA0000 */  lw    $t2, ($a1)
.L80161B50_ovl3:
/* 0C2590 80161B50 24040034 */  li    $a0, 52
/* 0C2594 80161B54 55400004 */  bnezl $t2, .L80161B68_ovl3
/* 0C2598 80161B58 8E190000 */   lw    $t9, ($s0)
/* 0C259C 80161B5C 0C029DFA */  jal   func_800A77E8
/* 0C25A0 80161B60 24A60004 */   addiu $a2, $a1, 4
/* 0C25A4 80161B64 8E190000 */  lw    $t9, ($s0)
.L80161B68_ovl3:
/* 0C25A8 80161B68 3C04800F */  lui   $a0, 0x800f
/* 0C25AC 80161B6C 24050001 */  li    $a1, 1
/* 0C25B0 80161B70 8F280000 */  lw    $t0, ($t9)
/* 0C25B4 80161B74 24060011 */  li    $a2, 17
/* 0C25B8 80161B78 00081880 */  sll   $v1, $t0, 2
/* 0C25BC 80161B7C 00832021 */  addu  $a0, $a0, $v1
/* 0C25C0 80161B80 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C25C4 80161B84 14800018 */  bnez  $a0, .L80161BE8_ovl3
/* 0C25C8 80161B88 00000000 */   nop   
/* 0C25CC 80161B8C 0C02A08D */  jal   func_800A8234
/* 0C25D0 80161B90 24040002 */   li    $a0, 2
/* 0C25D4 80161B94 8E0B0000 */  lw    $t3, ($s0)
/* 0C25D8 80161B98 3C01800F */  lui   $at, 0x800f
/* 0C25DC 80161B9C 24040002 */  li    $a0, 2
/* 0C25E0 80161BA0 8D6C0000 */  lw    $t4, ($t3)
/* 0C25E4 80161BA4 24050001 */  li    $a1, 1
/* 0C25E8 80161BA8 24060012 */  li    $a2, 18
/* 0C25EC 80161BAC 000C6880 */  sll   $t5, $t4, 2
/* 0C25F0 80161BB0 002D0821 */  addu  $at, $at, $t5
/* 0C25F4 80161BB4 0C02A08D */  jal   func_800A8234
/* 0C25F8 80161BB8 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0C25FC 80161BBC 8E090000 */  lw    $t1, ($s0)
/* 0C2600 80161BC0 3C01800F */  lui   $at, 0x800f
/* 0C2604 80161BC4 3C04800F */  lui   $a0, 0x800f
/* 0C2608 80161BC8 8D2E0000 */  lw    $t6, ($t1)
/* 0C260C 80161BCC 000E7880 */  sll   $t7, $t6, 2
/* 0C2610 80161BD0 002F0821 */  addu  $at, $at, $t7
/* 0C2614 80161BD4 AC22B4E0 */  sw    $v0, -0x4b20($at)
/* 0C2618 80161BD8 8D280000 */  lw    $t0, ($t1)
/* 0C261C 80161BDC 00081880 */  sll   $v1, $t0, 2
/* 0C2620 80161BE0 00832021 */  addu  $a0, $a0, $v1
/* 0C2624 80161BE4 8C84A520 */  lw    $a0, -0x5ae0($a0)
.L80161BE8_ovl3:
/* 0C2628 80161BE8 10800032 */  beqz  $a0, .L80161CB4_ovl3
/* 0C262C 80161BEC 3C05800E */   lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0C2630 80161BF0 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0C2634 80161BF4 00A3C021 */  addu  $t8, $a1, $v1
/* 0C2638 80161BF8 C7080000 */  lwc1  $f8, ($t8)
/* 0C263C 80161BFC 8C8A004C */  lw    $t2, 0x4c($a0)
/* 0C2640 80161C00 3C01800E */  lui   $at, 0x800e
/* 0C2644 80161C04 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0C2648 80161C08 E5480004 */  swc1  $f8, 4($t2)
/* 0C264C 80161C0C 8E190000 */  lw    $t9, ($s0)
/* 0C2650 80161C10 8C8D004C */  lw    $t5, 0x4c($a0)
/* 0C2654 80161C14 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0C2658 80161C18 8F2B0000 */  lw    $t3, ($t9)
/* 0C265C 80161C1C 3C02800F */  lui   $v0, 0x800f
/* 0C2660 80161C20 000B6080 */  sll   $t4, $t3, 2
/* 0C2664 80161C24 002C0821 */  addu  $at, $at, $t4
/* 0C2668 80161C28 C42A2790 */  lwc1  $f10, 0x2790($at)
/* 0C266C 80161C2C 3C01800E */  lui   $at, 0x800e
/* 0C2670 80161C30 E5AA0008 */  swc1  $f10, 8($t5)
/* 0C2674 80161C34 8E0E0000 */  lw    $t6, ($s0)
/* 0C2678 80161C38 8C99004C */  lw    $t9, 0x4c($a0)
/* 0C267C 80161C3C 8DCF0000 */  lw    $t7, ($t6)
/* 0C2680 80161C40 000FC080 */  sll   $t8, $t7, 2
/* 0C2684 80161C44 00D85021 */  addu  $t2, $a2, $t8
/* 0C2688 80161C48 C5500000 */  lwc1  $f16, ($t2)
/* 0C268C 80161C4C E730000C */  swc1  $f16, 0xc($t9)
/* 0C2690 80161C50 8E0B0000 */  lw    $t3, ($s0)
/* 0C2694 80161C54 8D630000 */  lw    $v1, ($t3)
/* 0C2698 80161C58 00031880 */  sll   $v1, $v1, 2
/* 0C269C 80161C5C 00431021 */  addu  $v0, $v0, $v1
/* 0C26A0 80161C60 8C42B4E0 */  lw    $v0, -0x4b20($v0)
/* 0C26A4 80161C64 00A36021 */  addu  $t4, $a1, $v1
/* 0C26A8 80161C68 C5920000 */  lwc1  $f18, ($t4)
/* 0C26AC 80161C6C 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0C26B0 80161C70 E5B20004 */  swc1  $f18, 4($t5)
/* 0C26B4 80161C74 8E0E0000 */  lw    $t6, ($s0)
/* 0C26B8 80161C78 8C4A004C */  lw    $t2, 0x4c($v0)
/* 0C26BC 80161C7C 8DCF0000 */  lw    $t7, ($t6)
/* 0C26C0 80161C80 000FC080 */  sll   $t8, $t7, 2
/* 0C26C4 80161C84 00380821 */  addu  $at, $at, $t8
/* 0C26C8 80161C88 C4242790 */  lwc1  $f4, 0x2790($at)
/* 0C26CC 80161C8C E5440008 */  swc1  $f4, 8($t2)
/* 0C26D0 80161C90 8E190000 */  lw    $t9, ($s0)
/* 0C26D4 80161C94 8C4E004C */  lw    $t6, 0x4c($v0)
/* 0C26D8 80161C98 8F2B0000 */  lw    $t3, ($t9)
/* 0C26DC 80161C9C 000B6080 */  sll   $t4, $t3, 2
/* 0C26E0 80161CA0 00CC6821 */  addu  $t5, $a2, $t4
/* 0C26E4 80161CA4 C5A60000 */  lwc1  $f6, ($t5)
/* 0C26E8 80161CA8 E5C6000C */  swc1  $f6, 0xc($t6)
/* 0C26EC 80161CAC 8E0F0000 */  lw    $t7, ($s0)
/* 0C26F0 80161CB0 8DE80000 */  lw    $t0, ($t7)
.L80161CB4_ovl3:
/* 0C26F4 80161CB4 3C048019 */  lui   $a0, %hi(D_80190EC4) # $a0, 0x8019
/* 0C26F8 80161CB8 24840EC4 */  addiu $a0, %lo(D_80190EC4) # addiu $a0, $a0, 0xec4
/* 0C26FC 80161CBC 0C0445EF */  jal   func_801117BC
/* 0C2700 80161CC0 01002825 */   move  $a1, $t0
/* 0C2704 80161CC4 0C044713 */  jal   func_80111C4C
/* 0C2708 80161CC8 00402025 */   move  $a0, $v0
/* 0C270C 80161CCC 8FBF0024 */  lw    $ra, 0x24($sp)
.L80161CD0_ovl3:
/* 0C2710 80161CD0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C2714 80161CD4 27BD0068 */  addiu $sp, $sp, 0x68
/* 0C2718 80161CD8 03E00008 */  jr    $ra
/* 0C271C 80161CDC 00000000 */   nop   

.type func_801614D8_ovl3, @function
.size func_801614D8_ovl3, . - func_801614D8_ovl3

glabel func_80161CE0_ovl3
/* 0C2720 80161CE0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C2724 80161CE4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C2728 80161CE8 AFA40000 */  sw    $a0, ($sp)
/* 0C272C 80161CEC 3C02800E */  lui   $v0, 0x800e
/* 0C2730 80161CF0 8C640000 */  lw    $a0, ($v1)
/* 0C2734 80161CF4 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 0C2738 80161CF8 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 0C273C 80161CFC 00042080 */  sll   $a0, $a0, 2
/* 0C2740 80161D00 00441021 */  addu  $v0, $v0, $a0
/* 0C2744 80161D04 8C420D50 */  lw    $v0, 0xd50($v0)
/* 0C2748 80161D08 00C4C021 */  addu  $t8, $a2, $a0
/* 0C274C 80161D0C 3C07800E */  lui   $a3, %hi(D_800E6BD0) # $a3, 0x800e
/* 0C2750 80161D10 00022880 */  sll   $a1, $v0, 2
/* 0C2754 80161D14 00C57021 */  addu  $t6, $a2, $a1
/* 0C2758 80161D18 8DCF0000 */  lw    $t7, ($t6)
/* 0C275C 80161D1C 24E76BD0 */  addiu $a3, %lo(D_800E6BD0) # addiu $a3, $a3, 0x6bd0
/* 0C2760 80161D20 00E5C821 */  addu  $t9, $a3, $a1
/* 0C2764 80161D24 AF0F0000 */  sw    $t7, ($t8)
/* 0C2768 80161D28 8C6A0000 */  lw    $t2, ($v1)
/* 0C276C 80161D2C C7200000 */  lwc1  $f0, ($t9)
/* 0C2770 80161D30 3C01800E */  lui   $at, 0x800e
/* 0C2774 80161D34 000A5880 */  sll   $t3, $t2, 2
/* 0C2778 80161D38 00EB6021 */  addu  $t4, $a3, $t3
/* 0C277C 80161D3C E5800000 */  swc1  $f0, ($t4)
/* 0C2780 80161D40 8C6D0000 */  lw    $t5, ($v1)
/* 0C2784 80161D44 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 0C2788 80161D48 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 0C278C 80161D4C 000D7080 */  sll   $t6, $t5, 2
/* 0C2790 80161D50 002E0821 */  addu  $at, $at, $t6
/* 0C2794 80161D54 E4206D90 */  swc1  $f0, 0x6d90($at)
/* 0C2798 80161D58 8C780000 */  lw    $t8, ($v1)
/* 0C279C 80161D5C 01057821 */  addu  $t7, $t0, $a1
/* 0C27A0 80161D60 C5E40000 */  lwc1  $f4, ($t7)
/* 0C27A4 80161D64 0018C880 */  sll   $t9, $t8, 2
/* 0C27A8 80161D68 01195021 */  addu  $t2, $t0, $t9
/* 0C27AC 80161D6C E5440000 */  swc1  $f4, ($t2)
/* 0C27B0 80161D70 8C6C0000 */  lw    $t4, ($v1)
/* 0C27B4 80161D74 3C09800E */  lui   $t1, %hi(gEntitiesAngleYArray) # $t1, 0x800e
/* 0C27B8 80161D78 252941D0 */  addiu $t1, %lo(gEntitiesAngleYArray) # addiu $t1, $t1, 0x41d0
/* 0C27BC 80161D7C 01255821 */  addu  $t3, $t1, $a1
/* 0C27C0 80161D80 C5660000 */  lwc1  $f6, ($t3)
/* 0C27C4 80161D84 000C6880 */  sll   $t5, $t4, 2
/* 0C27C8 80161D88 012D7021 */  addu  $t6, $t1, $t5
/* 0C27CC 80161D8C 03E00008 */  jr    $ra
/* 0C27D0 80161D90 E5C60000 */   swc1  $f6, ($t6)

.type func_80161CE0_ovl3, @function
.size func_80161CE0_ovl3, . - func_80161CE0_ovl3

glabel func_80161D94_ovl3
/* 0C27D4 80161D94 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C27D8 80161D98 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C27DC 80161D9C 3C05800E */  lui   $a1, %hi(D_800E6310) # $a1, 0x800e
/* 0C27E0 80161DA0 24A56310 */  addiu $a1, %lo(D_800E6310) # addiu $a1, $a1, 0x6310
/* 0C27E4 80161DA4 8C4E0000 */  lw    $t6, ($v0)
/* 0C27E8 80161DA8 3C198013 */  lui   $t9, %hi(D_80129114) # $t9, 0x8013
/* 0C27EC 80161DAC 3C09800E */  lui   $t1, 0x800e
/* 0C27F0 80161DB0 000E7880 */  sll   $t7, $t6, 2
/* 0C27F4 80161DB4 00AFC021 */  addu  $t8, $a1, $t7
/* 0C27F8 80161DB8 AF000000 */  sw    $zero, ($t8)
/* 0C27FC 80161DBC 8C430000 */  lw    $v1, ($v0)
/* 0C2800 80161DC0 8F399114 */  lw    $t9, %lo(D_80129114)($t9)
/* 0C2804 80161DC4 3C0E800E */  lui   $t6, %hi(D_800E6BD0) # $t6, 0x800e
/* 0C2808 80161DC8 00031880 */  sll   $v1, $v1, 2
/* 0C280C 80161DCC 01234821 */  addu  $t1, $t1, $v1
/* 0C2810 80161DD0 8D295F90 */  lw    $t1, 0x5f90($t1)
/* 0C2814 80161DD4 8F280004 */  lw    $t0, 4($t9)
/* 0C2818 80161DD8 25CE6BD0 */  addiu $t6, %lo(D_800E6BD0) # addiu $t6, $t6, 0x6bd0
/* 0C281C 80161DDC 00095100 */  sll   $t2, $t1, 4
/* 0C2820 80161DE0 010A5821 */  addu  $t3, $t0, $t2
/* 0C2824 80161DE4 856C000E */  lh    $t4, 0xe($t3)
/* 0C2828 80161DE8 3C0D800E */  lui   $t5, %hi(D_800E6BD0) # $t5, 0x800e
/* 0C282C 80161DEC 3C013F80 */  lui   $at, 0x3f80
/* 0C2830 80161DF0 11800016 */  beqz  $t4, .L80161E4C_ovl3
/* 0C2834 80161DF4 006E2021 */   addu  $a0, $v1, $t6
/* 0C2838 80161DF8 25AD6BD0 */  addiu $t5, %lo(D_800E6BD0) # addiu $t5, $t5, 0x6bd0
/* 0C283C 80161DFC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C2840 80161E00 006D2021 */  addu  $a0, $v1, $t5
/* 0C2844 80161E04 44811000 */  mtc1  $at, $f2
/* 0C2848 80161E08 C4800000 */  lwc1  $f0, ($a0)
/* 0C284C 80161E0C 4600103C */  c.lt.s $f2, $f0
/* 0C2850 80161E10 00000000 */  nop   
/* 0C2854 80161E14 45020005 */  bc1fl .L80161E2C_ovl3
/* 0C2858 80161E18 44806000 */   mtc1  $zero, $f12
/* 0C285C 80161E1C 46020101 */  sub.s $f4, $f0, $f2
/* 0C2860 80161E20 03E00008 */  jr    $ra
/* 0C2864 80161E24 E4840000 */   swc1  $f4, ($a0)
/* 0C2868 80161E28 44806000 */  mtc1  $zero, $f12
.L80161E2C_ovl3:
/* 0C286C 80161E2C 00000000 */  nop   
/* 0C2870 80161E30 460C003C */  c.lt.s $f0, $f12
/* 0C2874 80161E34 00000000 */  nop   
/* 0C2878 80161E38 4500001F */  bc1f  .L80161EB8_ovl3
/* 0C287C 80161E3C 00000000 */   nop   
/* 0C2880 80161E40 46020180 */  add.s $f6, $f0, $f2
/* 0C2884 80161E44 03E00008 */  jr    $ra
/* 0C2888 80161E48 E4860000 */   swc1  $f6, ($a0)
.L80161E4C_ovl3:
/* 0C288C 80161E4C 44811000 */  mtc1  $at, $f2
/* 0C2890 80161E50 C4800000 */  lwc1  $f0, ($a0)
/* 0C2894 80161E54 4600103C */  c.lt.s $f2, $f0
/* 0C2898 80161E58 00000000 */  nop   
/* 0C289C 80161E5C 4502000A */  bc1fl .L80161E88_ovl3
/* 0C28A0 80161E60 44806000 */   mtc1  $zero, $f12
/* 0C28A4 80161E64 E4820000 */  swc1  $f2, ($a0)
/* 0C28A8 80161E68 8C4F0000 */  lw    $t7, ($v0)
/* 0C28AC 80161E6C 000FC080 */  sll   $t8, $t7, 2
/* 0C28B0 80161E70 00B81821 */  addu  $v1, $a1, $t8
/* 0C28B4 80161E74 8C790000 */  lw    $t9, ($v1)
/* 0C28B8 80161E78 27290001 */  addiu $t1, $t9, 1
/* 0C28BC 80161E7C 03E00008 */  jr    $ra
/* 0C28C0 80161E80 AC690000 */   sw    $t1, ($v1)
/* 0C28C4 80161E84 44806000 */  mtc1  $zero, $f12
.L80161E88_ovl3:
/* 0C28C8 80161E88 00000000 */  nop   
/* 0C28CC 80161E8C 460C003C */  c.lt.s $f0, $f12
/* 0C28D0 80161E90 00000000 */  nop   
/* 0C28D4 80161E94 45000008 */  bc1f  .L80161EB8_ovl3
/* 0C28D8 80161E98 00000000 */   nop   
/* 0C28DC 80161E9C E48C0000 */  swc1  $f12, ($a0)
/* 0C28E0 80161EA0 8C480000 */  lw    $t0, ($v0)
/* 0C28E4 80161EA4 00085080 */  sll   $t2, $t0, 2
/* 0C28E8 80161EA8 00AA1821 */  addu  $v1, $a1, $t2
/* 0C28EC 80161EAC 8C6B0000 */  lw    $t3, ($v1)
/* 0C28F0 80161EB0 256C0001 */  addiu $t4, $t3, 1
/* 0C28F4 80161EB4 AC6C0000 */  sw    $t4, ($v1)
.L80161EB8_ovl3:
/* 0C28F8 80161EB8 03E00008 */  jr    $ra
/* 0C28FC 80161EBC 00000000 */   nop   
.type func_80161D94_ovl3, @function
.size func_80161D94_ovl3, . - func_80161D94_ovl3

glabel func_80161EC0_ovl3
/* 0C2900 80161EC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C2904 80161EC4 44856000 */  mtc1  $a1, $f12
/* 0C2908 80161EC8 00802825 */  move  $a1, $a0
/* 0C290C 80161ECC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C2910 80161ED0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C2914 80161ED4 1080000F */  beqz  $a0, .L80161F14_ovl3
/* 0C2918 80161ED8 AFA60038 */   sw    $a2, 0x38($sp)
/* 0C291C 80161EDC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C2920 80161EE0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C2924 80161EE4 3C06800E */  lui   $a2, 0x800e
/* 0C2928 80161EE8 27A40024 */  addiu $a0, $sp, 0x24
/* 0C292C 80161EEC 8DCF0000 */  lw    $t7, ($t6)
/* 0C2930 80161EF0 E7AC0034 */  swc1  $f12, 0x34($sp)
/* 0C2934 80161EF4 000FC080 */  sll   $t8, $t7, 2
/* 0C2938 80161EF8 00D83021 */  addu  $a2, $a2, $t8
/* 0C293C 80161EFC 0C02C8D0 */  jal   func_800B2340
/* 0C2940 80161F00 8CC60D50 */   lw    $a2, 0xd50($a2)
/* 0C2944 80161F04 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0C2948 80161F08 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0C294C 80161F0C 1000000D */  b     .L80161F44_ovl3
/* 0C2950 80161F10 C7AC0034 */   lwc1  $f12, 0x34($sp)
.L80161F14_ovl3:
/* 0C2954 80161F14 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0C2958 80161F18 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 0C295C 80161F1C 3C09800E */  lui   $t1, 0x800e
/* 0C2960 80161F20 3C01800E */  lui   $at, 0x800e
/* 0C2964 80161F24 8C990000 */  lw    $t9, ($a0)
/* 0C2968 80161F28 00194080 */  sll   $t0, $t9, 2
/* 0C296C 80161F2C 01284821 */  addu  $t1, $t1, $t0
/* 0C2970 80161F30 8D290D50 */  lw    $t1, 0xd50($t1)
/* 0C2974 80161F34 00095080 */  sll   $t2, $t1, 2
/* 0C2978 80161F38 002A0821 */  addu  $at, $at, $t2
/* 0C297C 80161F3C C4242790 */  lwc1  $f4, 0x2790($at)
/* 0C2980 80161F40 E7A40028 */  swc1  $f4, 0x28($sp)
.L80161F44_ovl3:
/* 0C2984 80161F44 8C8B0000 */  lw    $t3, ($a0)
/* 0C2988 80161F48 44800000 */  mtc1  $zero, $f0
/* 0C298C 80161F4C 3C01800E */  lui   $at, 0x800e
/* 0C2990 80161F50 000B6080 */  sll   $t4, $t3, 2
/* 0C2994 80161F54 C7A60028 */  lwc1  $f6, 0x28($sp)
/* 0C2998 80161F58 C7A80038 */  lwc1  $f8, 0x38($sp)
/* 0C299C 80161F5C 002C0821 */  addu  $at, $at, $t4
/* 0C29A0 80161F60 E42025D0 */  swc1  $f0, 0x25d0($at)
/* 0C29A4 80161F64 8C8D0000 */  lw    $t5, ($a0)
/* 0C29A8 80161F68 46083280 */  add.s $f10, $f6, $f8
/* 0C29AC 80161F6C 3C01800E */  lui   $at, 0x800e
/* 0C29B0 80161F70 000D7080 */  sll   $t6, $t5, 2
/* 0C29B4 80161F74 002E0821 */  addu  $at, $at, $t6
/* 0C29B8 80161F78 E42A2790 */  swc1  $f10, 0x2790($at)
/* 0C29BC 80161F7C 8C8F0000 */  lw    $t7, ($a0)
/* 0C29C0 80161F80 3C01800E */  lui   $at, 0x800e
/* 0C29C4 80161F84 44802000 */  mtc1  $zero, $f4
/* 0C29C8 80161F88 000FC080 */  sll   $t8, $t7, 2
/* 0C29CC 80161F8C 00380821 */  addu  $at, $at, $t8
/* 0C29D0 80161F90 E4202950 */  swc1  $f0, 0x2950($at)
/* 0C29D4 80161F94 8C820000 */  lw    $v0, ($a0)
/* 0C29D8 80161F98 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0C29DC 80161F9C 44818000 */  mtc1  $at, $f16
/* 0C29E0 80161FA0 3C01800E */  lui   $at, 0x800e
/* 0C29E4 80161FA4 0002C880 */  sll   $t9, $v0, 2
/* 0C29E8 80161FA8 00390821 */  addu  $at, $at, $t9
/* 0C29EC 80161FAC C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 0C29F0 80161FB0 46128032 */  c.eq.s $f16, $f18
/* 0C29F4 80161FB4 00000000 */  nop   
/* 0C29F8 80161FB8 45020003 */  bc1fl .L80161FC8_ovl3
/* 0C29FC 80161FBC 46046032 */   c.eq.s $f12, $f4
/* 0C2A00 80161FC0 46006307 */  neg.s $f12, $f12
/* 0C2A04 80161FC4 46046032 */  c.eq.s $f12, $f4
.L80161FC8_ovl3:
/* 0C2A08 80161FC8 00000000 */  nop   
/* 0C2A0C 80161FCC 45010006 */  bc1t  .L80161FE8_ovl3
/* 0C2A10 80161FD0 00000000 */   nop   
/* 0C2A14 80161FD4 44056000 */  mfc1  $a1, $f12
/* 0C2A18 80161FD8 0C03E63B */  jal   func_800F98EC
/* 0C2A1C 80161FDC 00402025 */   move  $a0, $v0
/* 0C2A20 80161FE0 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 0C2A24 80161FE4 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
.L80161FE8_ovl3:
/* 0C2A28 80161FE8 0C03E39B */  jal   func_800F8E6C
/* 0C2A2C 80161FEC 00000000 */   nop   
/* 0C2A30 80161FF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C2A34 80161FF4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C2A38 80161FF8 03E00008 */  jr    $ra
/* 0C2A3C 80161FFC 00000000 */   nop   

.type func_80161EC0_ovl3, @function
.size func_80161EC0_ovl3, . - func_80161EC0_ovl3

glabel func_80162000_ovl3
/* 0C2A40 80162000 44866000 */  mtc1  $a2, $f12
/* 0C2A44 80162004 44802000 */  mtc1  $zero, $f4
/* 0C2A48 80162008 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C2A4C 8016200C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C2A50 80162010 46046032 */  c.eq.s $f12, $f4
/* 0C2A54 80162014 AFA50024 */  sw    $a1, 0x24($sp)
/* 0C2A58 80162018 00A03025 */  move  $a2, $a1
/* 0C2A5C 8016201C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C2A60 80162020 45000003 */  bc1f  .L80162030_ovl3
/* 0C2A64 80162024 00000000 */   nop   
/* 0C2A68 80162028 10000045 */  b     .L80162140_ovl3
/* 0C2A6C 8016202C 00001025 */   move  $v0, $zero
.L80162030_ovl3:
/* 0C2A70 80162030 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C2A74 80162034 8DC50000 */  lw    $a1, ($t6)
/* 0C2A78 80162038 E7AC0028 */  swc1  $f12, 0x28($sp)
/* 0C2A7C 8016203C 0C0445EF */  jal   func_801117BC
/* 0C2A80 80162040 AFA60024 */   sw    $a2, 0x24($sp)
/* 0C2A84 80162044 8C4F001C */  lw    $t7, 0x1c($v0)
/* 0C2A88 80162048 8FA60024 */  lw    $a2, 0x24($sp)
/* 0C2A8C 8016204C C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 0C2A90 80162050 00402825 */  move  $a1, $v0
/* 0C2A94 80162054 00002025 */  move  $a0, $zero
/* 0C2A98 80162058 19E00035 */  blez  $t7, .L80162130_ovl3
/* 0C2A9C 8016205C 8C430020 */   lw    $v1, 0x20($v0)
/* 0C2AA0 80162060 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C2AA4 80162064 44810000 */  mtc1  $at, $f0
/* 0C2AA8 80162068 24080002 */  li    $t0, 2
/* 0C2AAC 8016206C 24070001 */  li    $a3, 1
/* 0C2AB0 80162070 46006032 */  c.eq.s $f12, $f0
.L80162074_ovl3:
/* 0C2AB4 80162074 00000000 */  nop   
/* 0C2AB8 80162078 45030022 */  bc1tl .L80162104_ovl3
/* 0C2ABC 8016207C 8C780008 */   lw    $t8, 8($v1)
/* 0C2AC0 80162080 90620004 */  lbu   $v0, 4($v1)
/* 0C2AC4 80162084 50470006 */  beql  $v0, $a3, .L801620A0_ovl3
/* 0C2AC8 80162088 C4660018 */   lwc1  $f6, 0x18($v1)
/* 0C2ACC 8016208C 50480008 */  beql  $v0, $t0, .L801620B0_ovl3
/* 0C2AD0 80162090 C46A000C */   lwc1  $f10, 0xc($v1)
/* 0C2AD4 80162094 1000001B */  b     .L80162104_ovl3
/* 0C2AD8 80162098 8C780008 */   lw    $t8, 8($v1)
/* 0C2ADC 8016209C C4660018 */  lwc1  $f6, 0x18($v1)
.L801620A0_ovl3:
/* 0C2AE0 801620A0 460C3202 */  mul.s $f8, $f6, $f12
/* 0C2AE4 801620A4 10000016 */  b     .L80162100_ovl3
/* 0C2AE8 801620A8 E4680018 */   swc1  $f8, 0x18($v1)
/* 0C2AEC 801620AC C46A000C */  lwc1  $f10, 0xc($v1)
.L801620B0_ovl3:
/* 0C2AF0 801620B0 C4720010 */  lwc1  $f18, 0x10($v1)
/* 0C2AF4 801620B4 C4660014 */  lwc1  $f6, 0x14($v1)
/* 0C2AF8 801620B8 460C5402 */  mul.s $f16, $f10, $f12
/* 0C2AFC 801620BC C46A0018 */  lwc1  $f10, 0x18($v1)
/* 0C2B00 801620C0 460C9102 */  mul.s $f4, $f18, $f12
/* 0C2B04 801620C4 C472001C */  lwc1  $f18, 0x1c($v1)
/* 0C2B08 801620C8 460C3202 */  mul.s $f8, $f6, $f12
/* 0C2B0C 801620CC E470000C */  swc1  $f16, 0xc($v1)
/* 0C2B10 801620D0 C4660020 */  lwc1  $f6, 0x20($v1)
/* 0C2B14 801620D4 460C5402 */  mul.s $f16, $f10, $f12
/* 0C2B18 801620D8 E4640010 */  swc1  $f4, 0x10($v1)
/* 0C2B1C 801620DC C46A0024 */  lwc1  $f10, 0x24($v1)
/* 0C2B20 801620E0 460C9102 */  mul.s $f4, $f18, $f12
/* 0C2B24 801620E4 E4680014 */  swc1  $f8, 0x14($v1)
/* 0C2B28 801620E8 460C3202 */  mul.s $f8, $f6, $f12
/* 0C2B2C 801620EC E4700018 */  swc1  $f16, 0x18($v1)
/* 0C2B30 801620F0 460C5402 */  mul.s $f16, $f10, $f12
/* 0C2B34 801620F4 E464001C */  swc1  $f4, 0x1c($v1)
/* 0C2B38 801620F8 E4680020 */  swc1  $f8, 0x20($v1)
/* 0C2B3C 801620FC E4700024 */  swc1  $f16, 0x24($v1)
.L80162100_ovl3:
/* 0C2B40 80162100 8C780008 */  lw    $t8, 8($v1)
.L80162104_ovl3:
/* 0C2B44 80162104 57000005 */  bnezl $t8, .L8016211C_ovl3
/* 0C2B48 80162108 8CB9001C */   lw    $t9, 0x1c($a1)
/* 0C2B4C 8016210C 50C00003 */  beql  $a2, $zero, .L8016211C_ovl3
/* 0C2B50 80162110 8CB9001C */   lw    $t9, 0x1c($a1)
/* 0C2B54 80162114 AC660008 */  sw    $a2, 8($v1)
/* 0C2B58 80162118 8CB9001C */  lw    $t9, 0x1c($a1)
.L8016211C_ovl3:
/* 0C2B5C 8016211C 24840001 */  addiu $a0, $a0, 1
/* 0C2B60 80162120 24630028 */  addiu $v1, $v1, 0x28
/* 0C2B64 80162124 0099082A */  slt   $at, $a0, $t9
/* 0C2B68 80162128 5420FFD2 */  bnezl $at, .L80162074_ovl3
/* 0C2B6C 8016212C 46006032 */   c.eq.s $f12, $f0
.L80162130_ovl3:
/* 0C2B70 80162130 00A02025 */  move  $a0, $a1
/* 0C2B74 80162134 0C044713 */  jal   func_80111C4C
/* 0C2B78 80162138 AFA50018 */   sw    $a1, 0x18($sp)
/* 0C2B7C 8016213C 8FA20018 */  lw    $v0, 0x18($sp)
.L80162140_ovl3:
/* 0C2B80 80162140 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C2B84 80162144 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C2B88 80162148 03E00008 */  jr    $ra
/* 0C2B8C 8016214C 00000000 */   nop   

.type func_80162000_ovl3, @function
.size func_80162000_ovl3, . - func_80162000_ovl3

glabel func_80162150_ovl3
/* 0C2B90 80162150 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C2B94 80162154 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C2B98 80162158 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0C2B9C 8016215C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C2BA0 80162160 8D2A0000 */  lw    $t2, ($t1)
/* 0C2BA4 80162164 3C188019 */  lui   $t8, %hi(D_80197BF0) # $t8, 0x8019
/* 0C2BA8 80162168 27187BF0 */  addiu $t8, %lo(D_80197BF0) # addiu $t8, $t8, 0x7bf0
/* 0C2BAC 8016216C 000A7080 */  sll   $t6, $t2, 2
/* 0C2BB0 80162170 01CA7023 */  subu  $t6, $t6, $t2
/* 0C2BB4 80162174 000E7080 */  sll   $t6, $t6, 2
/* 0C2BB8 80162178 01CA7023 */  subu  $t6, $t6, $t2
/* 0C2BBC 8016217C 000E70C0 */  sll   $t6, $t6, 3
/* 0C2BC0 80162180 25CFFEA0 */  addiu $t7, $t6, -0x160
/* 0C2BC4 80162184 01F81821 */  addu  $v1, $t7, $t8
/* 0C2BC8 80162188 8C790000 */  lw    $t9, ($v1)
/* 0C2BCC 8016218C 24010FFF */  li    $at, 4095
/* 0C2BD0 80162190 3C04800F */  lui   $a0, 0x800f
/* 0C2BD4 80162194 001964C2 */  srl   $t4, $t9, 0x13
/* 0C2BD8 80162198 15810011 */  bne   $t4, $at, .L801621E0_ovl3
/* 0C2BDC 8016219C 000A1080 */   sll   $v0, $t2, 2
/* 0C2BE0 801621A0 3C0D8013 */  lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 0C2BE4 801621A4 25ADBCA0 */  addiu $t5, %lo(D_8012BCA0) # addiu $t5, $t5, -0x4360
/* 0C2BE8 801621A8 25B90054 */  addiu $t9, $t5, 0x54
/* 0C2BEC 801621AC 0060C025 */  move  $t8, $v1
.L801621B0_ovl3:
/* 0C2BF0 801621B0 8DAF0000 */  lw    $t7, ($t5)
/* 0C2BF4 801621B4 25AD000C */  addiu $t5, $t5, 0xc
/* 0C2BF8 801621B8 2718000C */  addiu $t8, $t8, 0xc
/* 0C2BFC 801621BC AF0FFFF4 */  sw    $t7, -0xc($t8)
/* 0C2C00 801621C0 8DAEFFF8 */  lw    $t6, -8($t5)
/* 0C2C04 801621C4 AF0EFFF8 */  sw    $t6, -8($t8)
/* 0C2C08 801621C8 8DAFFFFC */  lw    $t7, -4($t5)
/* 0C2C0C 801621CC 15B9FFF8 */  bne   $t5, $t9, .L801621B0_ovl3
/* 0C2C10 801621D0 AF0FFFFC */   sw    $t7, -4($t8)
/* 0C2C14 801621D4 8DAF0000 */  lw    $t7, ($t5)
/* 0C2C18 801621D8 100000F3 */  b     .L801625A8_ovl3
/* 0C2C1C 801621DC AF0F0000 */   sw    $t7, ($t8)
.L801621E0_ovl3:
/* 0C2C20 801621E0 00822021 */  addu  $a0, $a0, $v0
/* 0C2C24 801621E4 8C848AE0 */  lw    $a0, -0x7520($a0)
/* 0C2C28 801621E8 24010006 */  li    $at, 6
/* 0C2C2C 801621EC 108000DF */  beqz  $a0, .L8016256C_ovl3
/* 0C2C30 801621F0 308C0006 */   andi  $t4, $a0, 6
/* 0C2C34 801621F4 118100DD */  beq   $t4, $at, .L8016256C_ovl3
/* 0C2C38 801621F8 00000000 */   nop   
/* 0C2C3C 801621FC 3C03800E */  lui   $v1, 0x800e
/* 0C2C40 80162200 00621821 */  addu  $v1, $v1, $v0
/* 0C2C44 80162204 8C630490 */  lw    $v1, 0x0490($v1)
/* 0C2C48 80162208 30990004 */  andi  $t9, $a0, 4
/* 0C2C4C 8016220C 1320005D */  beqz  $t9, .L80162384_ovl3
/* 0C2C50 80162210 8C6B0004 */   lw    $t3, 4($v1)
/* 0C2C54 80162214 3C01800E */  lui   $at, 0x800e
/* 0C2C58 80162218 00220821 */  addu  $at, $at, $v0
/* 0C2C5C 8016221C C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0C2C60 80162220 3C01800E */  lui   $at, 0x800e
/* 0C2C64 80162224 27A40054 */  addiu $a0, $sp, 0x54
/* 0C2C68 80162228 E7A40054 */  swc1  $f4, 0x54($sp)
/* 0C2C6C 8016222C 8D2D0000 */  lw    $t5, ($t1)
/* 0C2C70 80162230 C5680000 */  lwc1  $f8, ($t3)
/* 0C2C74 80162234 000DC080 */  sll   $t8, $t5, 2
/* 0C2C78 80162238 00380821 */  addu  $at, $at, $t8
/* 0C2C7C 8016223C C4262790 */  lwc1  $f6, 0x2790($at)
/* 0C2C80 80162240 3C01800E */  lui   $at, 0x800e
/* 0C2C84 80162244 46083280 */  add.s $f10, $f6, $f8
/* 0C2C88 80162248 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 0C2C8C 8016224C 8D2E0000 */  lw    $t6, ($t1)
/* 0C2C90 80162250 AFAB0034 */  sw    $t3, 0x34($sp)
/* 0C2C94 80162254 000E7880 */  sll   $t7, $t6, 2
/* 0C2C98 80162258 002F0821 */  addu  $at, $at, $t7
/* 0C2C9C 8016225C C4302950 */  lwc1  $f16, 0x2950($at)
/* 0C2CA0 80162260 0C0437E7 */  jal   func_8010DF9C
/* 0C2CA4 80162264 E7B0005C */   swc1  $f16, 0x5c($sp)
/* 0C2CA8 80162268 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0C2CAC 8016226C 104000B3 */  beqz  $v0, .L8016253C_ovl3
/* 0C2CB0 80162270 00403025 */   move  $a2, $v0
/* 0C2CB4 80162274 184000B1 */  blez  $v0, .L8016253C_ovl3
/* 0C2CB8 80162278 00001825 */   move  $v1, $zero
/* 0C2CBC 8016227C 3C028013 */  lui   $v0, %hi(D_8012BCA0) # $v0, 0x8013
/* 0C2CC0 80162280 2442BCA0 */  addiu $v0, %lo(D_8012BCA0) # addiu $v0, $v0, -0x4360
/* 0C2CC4 80162284 24050001 */  li    $a1, 1
.L80162288_ovl3:
/* 0C2CC8 80162288 8C440040 */  lw    $a0, 0x40($v0)
/* 0C2CCC 8016228C 24630001 */  addiu $v1, $v1, 1
/* 0C2CD0 80162290 908C0004 */  lbu   $t4, 4($a0)
/* 0C2CD4 80162294 14AC0037 */  bne   $a1, $t4, .L80162374_ovl3
/* 0C2CD8 80162298 3C098005 */   lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C2CDC 8016229C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C2CE0 801622A0 3C01800E */  lui   $at, 0x800e
/* 0C2CE4 801622A4 8C45004C */  lw    $a1, 0x4c($v0)
/* 0C2CE8 801622A8 8D390000 */  lw    $t9, ($t1)
/* 0C2CEC 801622AC 27A60048 */  addiu $a2, $sp, 0x48
/* 0C2CF0 801622B0 27A7003C */  addiu $a3, $sp, 0x3c
/* 0C2CF4 801622B4 00196880 */  sll   $t5, $t9, 2
/* 0C2CF8 801622B8 002D0821 */  addu  $at, $at, $t5
/* 0C2CFC 801622BC C4322B10 */  lwc1  $f18, 0x2b10($at)
/* 0C2D00 801622C0 3C01800E */  lui   $at, 0x800e
/* 0C2D04 801622C4 E7B20048 */  swc1  $f18, 0x48($sp)
/* 0C2D08 801622C8 8D380000 */  lw    $t8, ($t1)
/* 0C2D0C 801622CC C5660000 */  lwc1  $f6, ($t3)
/* 0C2D10 801622D0 C56A0004 */  lwc1  $f10, 4($t3)
/* 0C2D14 801622D4 00187080 */  sll   $t6, $t8, 2
/* 0C2D18 801622D8 002E0821 */  addu  $at, $at, $t6
/* 0C2D1C 801622DC C4242CD0 */  lwc1  $f4, 0x2cd0($at)
/* 0C2D20 801622E0 3C01800E */  lui   $at, 0x800e
/* 0C2D24 801622E4 46062200 */  add.s $f8, $f4, $f6
/* 0C2D28 801622E8 460A4400 */  add.s $f16, $f8, $f10
/* 0C2D2C 801622EC E7B0004C */  swc1  $f16, 0x4c($sp)
/* 0C2D30 801622F0 8D2F0000 */  lw    $t7, ($t1)
/* 0C2D34 801622F4 000F6080 */  sll   $t4, $t7, 2
/* 0C2D38 801622F8 002C0821 */  addu  $at, $at, $t4
/* 0C2D3C 801622FC C4322E90 */  lwc1  $f18, 0x2e90($at)
/* 0C2D40 80162300 3C01800E */  lui   $at, 0x800e
/* 0C2D44 80162304 E7B20050 */  swc1  $f18, 0x50($sp)
/* 0C2D48 80162308 8D390000 */  lw    $t9, ($t1)
/* 0C2D4C 8016230C 00196880 */  sll   $t5, $t9, 2
/* 0C2D50 80162310 002D0821 */  addu  $at, $at, $t5
/* 0C2D54 80162314 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0C2D58 80162318 3C01800E */  lui   $at, 0x800e
/* 0C2D5C 8016231C 3C198013 */  lui   $t9, %hi(D_8012BCAC) # $t9, 0x8013
/* 0C2D60 80162320 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 0C2D64 80162324 8D380000 */  lw    $t8, ($t1)
/* 0C2D68 80162328 2739BCAC */  addiu $t9, %lo(D_8012BCAC) # addiu $t9, $t9, -0x4354
/* 0C2D6C 8016232C 27AD0054 */  addiu $t5, $sp, 0x54
/* 0C2D70 80162330 00187080 */  sll   $t6, $t8, 2
/* 0C2D74 80162334 002E0821 */  addu  $at, $at, $t6
/* 0C2D78 80162338 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0C2D7C 8016233C 3C01800E */  lui   $at, 0x800e
/* 0C2D80 80162340 E7A60040 */  swc1  $f6, 0x40($sp)
/* 0C2D84 80162344 8D2F0000 */  lw    $t7, ($t1)
/* 0C2D88 80162348 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0C2D8C 8016234C AFB90010 */  sw    $t9, 0x10($sp)
/* 0C2D90 80162350 000F6080 */  sll   $t4, $t7, 2
/* 0C2D94 80162354 002C0821 */  addu  $at, $at, $t4
/* 0C2D98 80162358 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0C2D9C 8016235C 0C043812 */  jal   func_8010E048
/* 0C2DA0 80162360 E7A80044 */   swc1  $f8, 0x44($sp)
/* 0C2DA4 80162364 0C05896E */  jal   func_801625B8_ovl3
/* 0C2DA8 80162368 27A40054 */   addiu $a0, $sp, 0x54
/* 0C2DAC 8016236C 10000073 */  b     .L8016253C_ovl3
/* 0C2DB0 80162370 00000000 */   nop   
.L80162374_ovl3:
/* 0C2DB4 80162374 1466FFC4 */  bne   $v1, $a2, .L80162288_ovl3
/* 0C2DB8 80162378 24420004 */   addiu $v0, $v0, 4
/* 0C2DBC 8016237C 1000006F */  b     .L8016253C_ovl3
/* 0C2DC0 80162380 00000000 */   nop   
.L80162384_ovl3:
/* 0C2DC4 80162384 3C01800E */  lui   $at, 0x800e
/* 0C2DC8 80162388 00220821 */  addu  $at, $at, $v0
/* 0C2DCC 8016238C C42A2B10 */  lwc1  $f10, 0x2b10($at)
/* 0C2DD0 80162390 3C01800E */  lui   $at, 0x800e
/* 0C2DD4 80162394 27A40054 */  addiu $a0, $sp, 0x54
/* 0C2DD8 80162398 E7AA0054 */  swc1  $f10, 0x54($sp)
/* 0C2DDC 8016239C 8D380000 */  lw    $t8, ($t1)
/* 0C2DE0 801623A0 C5720000 */  lwc1  $f18, ($t3)
/* 0C2DE4 801623A4 00187080 */  sll   $t6, $t8, 2
/* 0C2DE8 801623A8 002E0821 */  addu  $at, $at, $t6
/* 0C2DEC 801623AC C4302CD0 */  lwc1  $f16, 0x2cd0($at)
/* 0C2DF0 801623B0 3C01800E */  lui   $at, 0x800e
/* 0C2DF4 801623B4 46128100 */  add.s $f4, $f16, $f18
/* 0C2DF8 801623B8 E7A40058 */  swc1  $f4, 0x58($sp)
/* 0C2DFC 801623BC 8D2F0000 */  lw    $t7, ($t1)
/* 0C2E00 801623C0 AFAB0034 */  sw    $t3, 0x34($sp)
/* 0C2E04 801623C4 000F6080 */  sll   $t4, $t7, 2
/* 0C2E08 801623C8 002C0821 */  addu  $at, $at, $t4
/* 0C2E0C 801623CC C4262E90 */  lwc1  $f6, 0x2e90($at)
/* 0C2E10 801623D0 0C0437E7 */  jal   func_8010DF9C
/* 0C2E14 801623D4 E7A6005C */   swc1  $f6, 0x5c($sp)
/* 0C2E18 801623D8 8FAB0034 */  lw    $t3, 0x34($sp)
/* 0C2E1C 801623DC 10400057 */  beqz  $v0, .L8016253C_ovl3
/* 0C2E20 801623E0 00403025 */   move  $a2, $v0
/* 0C2E24 801623E4 18400055 */  blez  $v0, .L8016253C_ovl3
/* 0C2E28 801623E8 00001825 */   move  $v1, $zero
/* 0C2E2C 801623EC 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C2E30 801623F0 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C2E34 801623F4 3C188019 */  lui   $t8, %hi(D_80197BF0) # $t8, 0x8019
/* 0C2E38 801623F8 27187BF0 */  addiu $t8, %lo(D_80197BF0) # addiu $t8, $t8, 0x7bf0
/* 0C2E3C 801623FC 8D2A0000 */  lw    $t2, ($t1)
/* 0C2E40 80162400 00004025 */  move  $t0, $zero
/* 0C2E44 80162404 24050001 */  li    $a1, 1
/* 0C2E48 80162408 000AC880 */  sll   $t9, $t2, 2
/* 0C2E4C 8016240C 032AC823 */  subu  $t9, $t9, $t2
/* 0C2E50 80162410 0019C880 */  sll   $t9, $t9, 2
/* 0C2E54 80162414 032AC823 */  subu  $t9, $t9, $t2
/* 0C2E58 80162418 0019C8C0 */  sll   $t9, $t9, 3
/* 0C2E5C 8016241C 272DFEA0 */  addiu $t5, $t9, -0x160
/* 0C2E60 80162420 01B81021 */  addu  $v0, $t5, $t8
.L80162424_ovl3:
/* 0C2E64 80162424 8C4E0040 */  lw    $t6, 0x40($v0)
/* 0C2E68 80162428 24630001 */  addiu $v1, $v1, 1
/* 0C2E6C 8016242C 24420004 */  addiu $v0, $v0, 4
/* 0C2E70 80162430 91CF0004 */  lbu   $t7, 4($t6)
/* 0C2E74 80162434 14AF003F */  bne   $a1, $t7, .L80162534_ovl3
/* 0C2E78 80162438 000A6080 */   sll   $t4, $t2, 2
/* 0C2E7C 8016243C 3C01800E */  lui   $at, 0x800e
/* 0C2E80 80162440 002C0821 */  addu  $at, $at, $t4
/* 0C2E84 80162444 C4282B10 */  lwc1  $f8, 0x2b10($at)
/* 0C2E88 80162448 3C01800E */  lui   $at, 0x800e
/* 0C2E8C 8016244C 27A60048 */  addiu $a2, $sp, 0x48
/* 0C2E90 80162450 E7A80048 */  swc1  $f8, 0x48($sp)
/* 0C2E94 80162454 8D390000 */  lw    $t9, ($t1)
/* 0C2E98 80162458 C5700000 */  lwc1  $f16, ($t3)
/* 0C2E9C 8016245C C5640004 */  lwc1  $f4, 4($t3)
/* 0C2EA0 80162460 00196880 */  sll   $t5, $t9, 2
/* 0C2EA4 80162464 002D0821 */  addu  $at, $at, $t5
/* 0C2EA8 80162468 C42A2CD0 */  lwc1  $f10, 0x2cd0($at)
/* 0C2EAC 8016246C 3C01800E */  lui   $at, 0x800e
/* 0C2EB0 80162470 27A7003C */  addiu $a3, $sp, 0x3c
/* 0C2EB4 80162474 46105480 */  add.s $f18, $f10, $f16
/* 0C2EB8 80162478 46049180 */  add.s $f6, $f18, $f4
/* 0C2EBC 8016247C E7A6004C */  swc1  $f6, 0x4c($sp)
/* 0C2EC0 80162480 8D380000 */  lw    $t8, ($t1)
/* 0C2EC4 80162484 00187080 */  sll   $t6, $t8, 2
/* 0C2EC8 80162488 002E0821 */  addu  $at, $at, $t6
/* 0C2ECC 8016248C C4282E90 */  lwc1  $f8, 0x2e90($at)
/* 0C2ED0 80162490 3C01800E */  lui   $at, 0x800e
/* 0C2ED4 80162494 E7A80050 */  swc1  $f8, 0x50($sp)
/* 0C2ED8 80162498 8D2F0000 */  lw    $t7, ($t1)
/* 0C2EDC 8016249C 000F6080 */  sll   $t4, $t7, 2
/* 0C2EE0 801624A0 002C0821 */  addu  $at, $at, $t4
/* 0C2EE4 801624A4 C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0C2EE8 801624A8 3C01800E */  lui   $at, 0x800e
/* 0C2EEC 801624AC E7AA003C */  swc1  $f10, 0x3c($sp)
/* 0C2EF0 801624B0 8D390000 */  lw    $t9, ($t1)
/* 0C2EF4 801624B4 00196880 */  sll   $t5, $t9, 2
/* 0C2EF8 801624B8 002D0821 */  addu  $at, $at, $t5
/* 0C2EFC 801624BC C4302790 */  lwc1  $f16, 0x2790($at)
/* 0C2F00 801624C0 3C01800E */  lui   $at, 0x800e
/* 0C2F04 801624C4 3C0D8019 */  lui   $t5, %hi(D_80197BF0) # $t5, 0x8019
/* 0C2F08 801624C8 E7B00040 */  swc1  $f16, 0x40($sp)
/* 0C2F0C 801624CC 8D380000 */  lw    $t8, ($t1)
/* 0C2F10 801624D0 25AD7BF0 */  addiu $t5, %lo(D_80197BF0) # addiu $t5, $t5, 0x7bf0
/* 0C2F14 801624D4 00187080 */  sll   $t6, $t8, 2
/* 0C2F18 801624D8 002E0821 */  addu  $at, $at, $t6
/* 0C2F1C 801624DC C4322950 */  lwc1  $f18, 0x2950($at)
/* 0C2F20 801624E0 27AE0054 */  addiu $t6, $sp, 0x54
/* 0C2F24 801624E4 E7B20044 */  swc1  $f18, 0x44($sp)
/* 0C2F28 801624E8 8D2F0000 */  lw    $t7, ($t1)
/* 0C2F2C 801624EC AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C2F30 801624F0 000F6080 */  sll   $t4, $t7, 2
/* 0C2F34 801624F4 018F6023 */  subu  $t4, $t4, $t7
/* 0C2F38 801624F8 000C6080 */  sll   $t4, $t4, 2
/* 0C2F3C 801624FC 018F6023 */  subu  $t4, $t4, $t7
/* 0C2F40 80162500 000C60C0 */  sll   $t4, $t4, 3
/* 0C2F44 80162504 2599FEA0 */  addiu $t9, $t4, -0x160
/* 0C2F48 80162508 032D1821 */  addu  $v1, $t9, $t5
/* 0C2F4C 8016250C 00681021 */  addu  $v0, $v1, $t0
/* 0C2F50 80162510 2478000C */  addiu $t8, $v1, 0xc
/* 0C2F54 80162514 AFB80010 */  sw    $t8, 0x10($sp)
/* 0C2F58 80162518 8C440040 */  lw    $a0, 0x40($v0)
/* 0C2F5C 8016251C 0C043812 */  jal   func_8010E048
/* 0C2F60 80162520 8C45004C */   lw    $a1, 0x4c($v0)
/* 0C2F64 80162524 0C05896E */  jal   func_801625B8_ovl3
/* 0C2F68 80162528 27A40054 */   addiu $a0, $sp, 0x54
/* 0C2F6C 8016252C 10000003 */  b     .L8016253C_ovl3
/* 0C2F70 80162530 00000000 */   nop   
.L80162534_ovl3:
/* 0C2F74 80162534 1466FFBB */  bne   $v1, $a2, .L80162424_ovl3
/* 0C2F78 80162538 25080004 */   addiu $t0, $t0, 4
.L8016253C_ovl3:
/* 0C2F7C 8016253C 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C2F80 80162540 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C2F84 80162544 3C188019 */  lui   $t8, %hi(D_80197BF0) # $t8, 0x8019
/* 0C2F88 80162548 27187BF0 */  addiu $t8, %lo(D_80197BF0) # addiu $t8, $t8, 0x7bf0
/* 0C2F8C 8016254C 8DEC0000 */  lw    $t4, ($t7)
/* 0C2F90 80162550 000CC880 */  sll   $t9, $t4, 2
/* 0C2F94 80162554 032CC823 */  subu  $t9, $t9, $t4
/* 0C2F98 80162558 0019C880 */  sll   $t9, $t9, 2
/* 0C2F9C 8016255C 032CC823 */  subu  $t9, $t9, $t4
/* 0C2FA0 80162560 0019C8C0 */  sll   $t9, $t9, 3
/* 0C2FA4 80162564 272DFEA0 */  addiu $t5, $t9, -0x160
/* 0C2FA8 80162568 01B81821 */  addu  $v1, $t5, $t8
.L8016256C_ovl3:
/* 0C2FAC 8016256C 3C0E8013 */  lui   $t6, %hi(D_8012BCA0) # $t6, 0x8013
/* 0C2FB0 80162570 25CEBCA0 */  addiu $t6, %lo(D_8012BCA0) # addiu $t6, $t6, -0x4360
/* 0C2FB4 80162574 25CD0054 */  addiu $t5, $t6, 0x54
/* 0C2FB8 80162578 0060C825 */  move  $t9, $v1
.L8016257C_ovl3:
/* 0C2FBC 8016257C 8DCC0000 */  lw    $t4, ($t6)
/* 0C2FC0 80162580 25CE000C */  addiu $t6, $t6, 0xc
/* 0C2FC4 80162584 2739000C */  addiu $t9, $t9, 0xc
/* 0C2FC8 80162588 AF2CFFF4 */  sw    $t4, -0xc($t9)
/* 0C2FCC 8016258C 8DCFFFF8 */  lw    $t7, -8($t6)
/* 0C2FD0 80162590 AF2FFFF8 */  sw    $t7, -8($t9)
/* 0C2FD4 80162594 8DCCFFFC */  lw    $t4, -4($t6)
/* 0C2FD8 80162598 15CDFFF8 */  bne   $t6, $t5, .L8016257C_ovl3
/* 0C2FDC 8016259C AF2CFFFC */   sw    $t4, -4($t9)
/* 0C2FE0 801625A0 8DCC0000 */  lw    $t4, ($t6)
/* 0C2FE4 801625A4 AF2C0000 */  sw    $t4, ($t9)
.L801625A8_ovl3:
/* 0C2FE8 801625A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C2FEC 801625AC 27BD0068 */  addiu $sp, $sp, 0x68
/* 0C2FF0 801625B0 03E00008 */  jr    $ra
/* 0C2FF4 801625B4 00000000 */   nop   

.type func_80162150_ovl3, @function
.size func_80162150_ovl3, . - func_80162150_ovl3

glabel func_801625B8_ovl3
/* 0C2FF8 801625B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C2FFC 801625BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C3000 801625C0 00803825 */  move  $a3, $a0
/* 0C3004 801625C4 AFA70018 */  sw    $a3, 0x18($sp)
/* 0C3008 801625C8 24040015 */  li    $a0, 21
/* 0C300C 801625CC 2405003C */  li    $a1, 60
/* 0C3010 801625D0 0C02BB02 */  jal   request_track_general
/* 0C3014 801625D4 24060050 */   li    $a2, 80
/* 0C3018 801625D8 2401FFFF */  li    $at, -1
/* 0C301C 801625DC 14410006 */  bne   $v0, $at, .L801625F8_ovl3
/* 0C3020 801625E0 8FA70018 */   lw    $a3, 0x18($sp)
/* 0C3024 801625E4 3C048019 */  lui   $a0, %hi(D_80196FF0) # $a0, 0x8019
/* 0C3028 801625E8 0C02909C */  jal   print_error_stub
/* 0C302C 801625EC 24846FF0 */   addiu $a0, %lo(D_80196FF0) # addiu $a0, $a0, 0x6ff0
/* 0C3030 801625F0 10000013 */  b     .L80162640_ovl3
/* 0C3034 801625F4 8FBF0014 */   lw    $ra, 0x14($sp)
.L801625F8_ovl3:
/* 0C3038 801625F8 C4E40000 */  lwc1  $f4, ($a3)
/* 0C303C 801625FC 00021880 */  sll   $v1, $v0, 2
/* 0C3040 80162600 3C01800E */  lui   $at, 0x800e
/* 0C3044 80162604 00230821 */  addu  $at, $at, $v1
/* 0C3048 80162608 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0C304C 8016260C C4E60004 */  lwc1  $f6, 4($a3)
/* 0C3050 80162610 3C01800E */  lui   $at, 0x800e
/* 0C3054 80162614 00230821 */  addu  $at, $at, $v1
/* 0C3058 80162618 E4262790 */  swc1  $f6, 0x2790($at)
/* 0C305C 8016261C C4E80008 */  lwc1  $f8, 8($a3)
/* 0C3060 80162620 3C01800E */  lui   $at, 0x800e
/* 0C3064 80162624 00230821 */  addu  $at, $at, $v1
/* 0C3068 80162628 E4282950 */  swc1  $f8, 0x2950($at)
/* 0C306C 8016262C 3C01800E */  lui   $at, 0x800e
/* 0C3070 80162630 00230821 */  addu  $at, $at, $v1
/* 0C3074 80162634 240E0003 */  li    $t6, 3
/* 0C3078 80162638 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 0C307C 8016263C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80162640_ovl3:
/* 0C3080 80162640 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C3084 80162644 03E00008 */  jr    $ra
/* 0C3088 80162648 00000000 */   nop   

.type func_801625B8_ovl3, @function
.size func_801625B8_ovl3, . - func_801625B8_ovl3

glabel func_8016264C_ovl3
/* 0C308C 8016264C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C3090 80162650 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C3094 80162654 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C3098 80162658 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C309C 8016265C 8C870000 */  lw    $a3, ($a0)
/* 0C30A0 80162660 3C0E800E */  lui   $t6, 0x800e
/* 0C30A4 80162664 00078880 */  sll   $s1, $a3, 2
/* 0C30A8 80162668 01D17021 */  addu  $t6, $t6, $s1
/* 0C30AC 8016266C 8DCED8D0 */  lw    $t6, -0x2730($t6)
/* 0C30B0 80162670 31CF0040 */  andi  $t7, $t6, 0x40
/* 0C30B4 80162674 55E0030C */  bnezl $t7, .L801632A8_ovl3
/* 0C30B8 80162678 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0C30BC 8016267C AFA40028 */  sw    $a0, 0x28($sp)
/* 0C30C0 80162680 0C02AC3D */  jal   func_800AB0F4
/* 0C30C4 80162684 AFA70024 */   sw    $a3, 0x24($sp)
/* 0C30C8 80162688 2458FFED */  addiu $t8, $v0, -0x13
/* 0C30CC 8016268C 2F01000C */  sltiu $at, $t8, 0xc
/* 0C30D0 80162690 10200304 */  beqz  $at, .L801632A4_ovl3
/* 0C30D4 80162694 8FA70024 */   lw    $a3, 0x24($sp)
/* 0C30D8 80162698 0018C080 */  sll   $t8, $t8, 2
/* 0C30DC 8016269C 3C018019 */  lui   $at, 0x8019
/* 0C30E0 801626A0 00380821 */  addu  $at, $at, $t8
/* 0C30E4 801626A4 8C3870EC */  lw    $t8, 0x70ec($at)
/* 0C30E8 801626A8 03000008 */  jr    $t8
/* 0C30EC 801626AC 00000000 */   nop   
/* 0C30F0 801626B0 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C30F4 801626B4 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C30F8 801626B8 8E020000 */  lw    $v0, ($s0)
/* 0C30FC 801626BC 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3100 801626C0 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C3104 801626C4 24590008 */  addiu $t9, $v0, 8
/* 0C3108 801626C8 AE190000 */  sw    $t9, ($s0)
/* 0C310C 801626CC 3C0E800E */  lui   $t6, 0x800e
/* 0C3110 801626D0 01D17021 */  addu  $t6, $t6, $s1
/* 0C3114 801626D4 AC480000 */  sw    $t0, ($v0)
/* 0C3118 801626D8 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 0C311C 801626DC 3C0F800E */  lui   $t7, 0x800e
/* 0C3120 801626E0 01F17821 */  addu  $t7, $t7, $s1
/* 0C3124 801626E4 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3128 801626E8 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C312C 801626EC 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C3130 801626F0 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C3134 801626F4 11E0001E */  beqz  $t7, .L80162770_ovl3
/* 0C3138 801626F8 00E02025 */   move  $a0, $a3
/* 0C313C 801626FC 0C03E430 */  jal   func_800F90C0
/* 0C3140 80162700 8E25000C */   lw    $a1, 0xc($s1)
/* 0C3144 80162704 8E020000 */  lw    $v0, ($s0)
/* 0C3148 80162708 3C19DB02 */  lui   $t9, 0xdb02
/* 0C314C 8016270C 240E0018 */  li    $t6, 24
/* 0C3150 80162710 24580008 */  addiu $t8, $v0, 8
/* 0C3154 80162714 AE180000 */  sw    $t8, ($s0)
/* 0C3158 80162718 AC4E0004 */  sw    $t6, 4($v0)
/* 0C315C 8016271C AC590000 */  sw    $t9, ($v0)
/* 0C3160 80162720 8E020000 */  lw    $v0, ($s0)
/* 0C3164 80162724 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3168 80162728 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C316C 8016272C 244F0008 */  addiu $t7, $v0, 8
/* 0C3170 80162730 AE0F0000 */  sw    $t7, ($s0)
/* 0C3174 80162734 AC580000 */  sw    $t8, ($v0)
/* 0C3178 80162738 8E39000C */  lw    $t9, 0xc($s1)
/* 0C317C 8016273C 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C3180 80162740 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C3184 80162744 272E0008 */  addiu $t6, $t9, 8
/* 0C3188 80162748 AC4E0004 */  sw    $t6, 4($v0)
/* 0C318C 8016274C 8E020000 */  lw    $v0, ($s0)
/* 0C3190 80162750 244F0008 */  addiu $t7, $v0, 8
/* 0C3194 80162754 AE0F0000 */  sw    $t7, ($s0)
/* 0C3198 80162758 AC580000 */  sw    $t8, ($v0)
/* 0C319C 8016275C 8E39000C */  lw    $t9, 0xc($s1)
/* 0C31A0 80162760 AC590004 */  sw    $t9, 4($v0)
/* 0C31A4 80162764 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C31A8 80162768 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C31AC 8016276C AE2F000C */  sw    $t7, 0xc($s1)
.L80162770_ovl3:
/* 0C31B0 80162770 0C02AC48 */  jal   func_800AB120
/* 0C31B4 80162774 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C31B8 80162778 8E020000 */  lw    $v0, ($s0)
/* 0C31BC 8016277C 3C19DB02 */  lui   $t9, 0xdb02
/* 0C31C0 80162780 240E0018 */  li    $t6, 24
/* 0C31C4 80162784 24580008 */  addiu $t8, $v0, 8
/* 0C31C8 80162788 AE180000 */  sw    $t8, ($s0)
/* 0C31CC 8016278C AC4E0004 */  sw    $t6, 4($v0)
/* 0C31D0 80162790 AC590000 */  sw    $t9, ($v0)
/* 0C31D4 80162794 8E020000 */  lw    $v0, ($s0)
/* 0C31D8 80162798 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 0C31DC 8016279C 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C31E0 801627A0 244F0008 */  addiu $t7, $v0, 8
/* 0C31E4 801627A4 AE0F0000 */  sw    $t7, ($s0)
/* 0C31E8 801627A8 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C31EC 801627AC 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 0C31F0 801627B0 AC590004 */  sw    $t9, 4($v0)
/* 0C31F4 801627B4 AC580000 */  sw    $t8, ($v0)
/* 0C31F8 801627B8 8E020000 */  lw    $v0, ($s0)
/* 0C31FC 801627BC 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 0C3200 801627C0 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3204 801627C4 244E0008 */  addiu $t6, $v0, 8
/* 0C3208 801627C8 AE0E0000 */  sw    $t6, ($s0)
/* 0C320C 801627CC 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C3210 801627D0 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 0C3214 801627D4 AC580004 */  sw    $t8, 4($v0)
/* 0C3218 801627D8 100002B2 */  b     .L801632A4_ovl3
/* 0C321C 801627DC AC4F0000 */   sw    $t7, ($v0)
/* 0C3220 801627E0 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3224 801627E4 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3228 801627E8 8E020000 */  lw    $v0, ($s0)
/* 0C322C 801627EC 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3230 801627F0 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C3234 801627F4 24590008 */  addiu $t9, $v0, 8
/* 0C3238 801627F8 AE190000 */  sw    $t9, ($s0)
/* 0C323C 801627FC 3C0E800E */  lui   $t6, 0x800e
/* 0C3240 80162800 01D17021 */  addu  $t6, $t6, $s1
/* 0C3244 80162804 AC480000 */  sw    $t0, ($v0)
/* 0C3248 80162808 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 0C324C 8016280C 3C0F800E */  lui   $t7, 0x800e
/* 0C3250 80162810 01F17821 */  addu  $t7, $t7, $s1
/* 0C3254 80162814 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3258 80162818 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C325C 8016281C 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C3260 80162820 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C3264 80162824 11E0001E */  beqz  $t7, .L801628A0_ovl3
/* 0C3268 80162828 00E02025 */   move  $a0, $a3
/* 0C326C 8016282C 0C03E430 */  jal   func_800F90C0
/* 0C3270 80162830 8E25000C */   lw    $a1, 0xc($s1)
/* 0C3274 80162834 8E020000 */  lw    $v0, ($s0)
/* 0C3278 80162838 3C19DB02 */  lui   $t9, 0xdb02
/* 0C327C 8016283C 240E0018 */  li    $t6, 24
/* 0C3280 80162840 24580008 */  addiu $t8, $v0, 8
/* 0C3284 80162844 AE180000 */  sw    $t8, ($s0)
/* 0C3288 80162848 AC4E0004 */  sw    $t6, 4($v0)
/* 0C328C 8016284C AC590000 */  sw    $t9, ($v0)
/* 0C3290 80162850 8E020000 */  lw    $v0, ($s0)
/* 0C3294 80162854 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3298 80162858 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C329C 8016285C 244F0008 */  addiu $t7, $v0, 8
/* 0C32A0 80162860 AE0F0000 */  sw    $t7, ($s0)
/* 0C32A4 80162864 AC580000 */  sw    $t8, ($v0)
/* 0C32A8 80162868 8E39000C */  lw    $t9, 0xc($s1)
/* 0C32AC 8016286C 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C32B0 80162870 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C32B4 80162874 272E0008 */  addiu $t6, $t9, 8
/* 0C32B8 80162878 AC4E0004 */  sw    $t6, 4($v0)
/* 0C32BC 8016287C 8E020000 */  lw    $v0, ($s0)
/* 0C32C0 80162880 244F0008 */  addiu $t7, $v0, 8
/* 0C32C4 80162884 AE0F0000 */  sw    $t7, ($s0)
/* 0C32C8 80162888 AC580000 */  sw    $t8, ($v0)
/* 0C32CC 8016288C 8E39000C */  lw    $t9, 0xc($s1)
/* 0C32D0 80162890 AC590004 */  sw    $t9, 4($v0)
/* 0C32D4 80162894 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C32D8 80162898 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C32DC 8016289C AE2F000C */  sw    $t7, 0xc($s1)
.L801628A0_ovl3:
/* 0C32E0 801628A0 0C02AC7C */  jal   func_800AB1F0
/* 0C32E4 801628A4 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C32E8 801628A8 8E020000 */  lw    $v0, ($s0)
/* 0C32EC 801628AC 3C19DB02 */  lui   $t9, 0xdb02
/* 0C32F0 801628B0 240E0018 */  li    $t6, 24
/* 0C32F4 801628B4 24580008 */  addiu $t8, $v0, 8
/* 0C32F8 801628B8 AE180000 */  sw    $t8, ($s0)
/* 0C32FC 801628BC AC4E0004 */  sw    $t6, 4($v0)
/* 0C3300 801628C0 AC590000 */  sw    $t9, ($v0)
/* 0C3304 801628C4 8E020000 */  lw    $v0, ($s0)
/* 0C3308 801628C8 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 0C330C 801628CC 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3310 801628D0 244F0008 */  addiu $t7, $v0, 8
/* 0C3314 801628D4 AE0F0000 */  sw    $t7, ($s0)
/* 0C3318 801628D8 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C331C 801628DC 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 0C3320 801628E0 AC590004 */  sw    $t9, 4($v0)
/* 0C3324 801628E4 AC580000 */  sw    $t8, ($v0)
/* 0C3328 801628E8 8E020000 */  lw    $v0, ($s0)
/* 0C332C 801628EC 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 0C3330 801628F0 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3334 801628F4 244E0008 */  addiu $t6, $v0, 8
/* 0C3338 801628F8 AE0E0000 */  sw    $t6, ($s0)
/* 0C333C 801628FC 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C3340 80162900 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 0C3344 80162904 AC580004 */  sw    $t8, 4($v0)
/* 0C3348 80162908 10000266 */  b     .L801632A4_ovl3
/* 0C334C 8016290C AC4F0000 */   sw    $t7, ($v0)
/* 0C3350 80162910 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3354 80162914 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3358 80162918 8E020000 */  lw    $v0, ($s0)
/* 0C335C 8016291C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3360 80162920 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C3364 80162924 24590008 */  addiu $t9, $v0, 8
/* 0C3368 80162928 AE190000 */  sw    $t9, ($s0)
/* 0C336C 8016292C 3C0E800E */  lui   $t6, 0x800e
/* 0C3370 80162930 01D17021 */  addu  $t6, $t6, $s1
/* 0C3374 80162934 AC480000 */  sw    $t0, ($v0)
/* 0C3378 80162938 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 0C337C 8016293C 3C0F800E */  lui   $t7, 0x800e
/* 0C3380 80162940 01F17821 */  addu  $t7, $t7, $s1
/* 0C3384 80162944 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3388 80162948 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C338C 8016294C 11E00020 */  beqz  $t7, .L801629D0_ovl3
/* 0C3390 80162950 3C118005 */   lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C3394 80162954 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C3398 80162958 8E25000C */  lw    $a1, 0xc($s1)
/* 0C339C 8016295C 0C03E430 */  jal   func_800F90C0
/* 0C33A0 80162960 00E02025 */   move  $a0, $a3
/* 0C33A4 80162964 8E020000 */  lw    $v0, ($s0)
/* 0C33A8 80162968 3C19DB02 */  lui   $t9, 0xdb02
/* 0C33AC 8016296C 240E0018 */  li    $t6, 24
/* 0C33B0 80162970 24580008 */  addiu $t8, $v0, 8
/* 0C33B4 80162974 AE180000 */  sw    $t8, ($s0)
/* 0C33B8 80162978 AC4E0004 */  sw    $t6, 4($v0)
/* 0C33BC 8016297C AC590000 */  sw    $t9, ($v0)
/* 0C33C0 80162980 8E020000 */  lw    $v0, ($s0)
/* 0C33C4 80162984 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C33C8 80162988 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C33CC 8016298C 244F0008 */  addiu $t7, $v0, 8
/* 0C33D0 80162990 AE0F0000 */  sw    $t7, ($s0)
/* 0C33D4 80162994 AC580000 */  sw    $t8, ($v0)
/* 0C33D8 80162998 8E39000C */  lw    $t9, 0xc($s1)
/* 0C33DC 8016299C 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C33E0 801629A0 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C33E4 801629A4 272E0008 */  addiu $t6, $t9, 8
/* 0C33E8 801629A8 AC4E0004 */  sw    $t6, 4($v0)
/* 0C33EC 801629AC 8E020000 */  lw    $v0, ($s0)
/* 0C33F0 801629B0 244F0008 */  addiu $t7, $v0, 8
/* 0C33F4 801629B4 AE0F0000 */  sw    $t7, ($s0)
/* 0C33F8 801629B8 AC580000 */  sw    $t8, ($v0)
/* 0C33FC 801629BC 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3400 801629C0 AC590004 */  sw    $t9, 4($v0)
/* 0C3404 801629C4 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3408 801629C8 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C340C 801629CC AE2F000C */  sw    $t7, 0xc($s1)
.L801629D0_ovl3:
/* 0C3410 801629D0 0C0050E9 */  jal   func_800143A4_ovl3
/* 0C3414 801629D4 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C3418 801629D8 8E020000 */  lw    $v0, ($s0)
/* 0C341C 801629DC 3C19DB02 */  lui   $t9, 0xdb02
/* 0C3420 801629E0 240E0018 */  li    $t6, 24
/* 0C3424 801629E4 24580008 */  addiu $t8, $v0, 8
/* 0C3428 801629E8 AE180000 */  sw    $t8, ($s0)
/* 0C342C 801629EC AC4E0004 */  sw    $t6, 4($v0)
/* 0C3430 801629F0 AC590000 */  sw    $t9, ($v0)
/* 0C3434 801629F4 8E020000 */  lw    $v0, ($s0)
/* 0C3438 801629F8 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 0C343C 801629FC 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3440 80162A00 244F0008 */  addiu $t7, $v0, 8
/* 0C3444 80162A04 AE0F0000 */  sw    $t7, ($s0)
/* 0C3448 80162A08 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C344C 80162A0C 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 0C3450 80162A10 AC590004 */  sw    $t9, 4($v0)
/* 0C3454 80162A14 AC580000 */  sw    $t8, ($v0)
/* 0C3458 80162A18 8E020000 */  lw    $v0, ($s0)
/* 0C345C 80162A1C 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 0C3460 80162A20 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3464 80162A24 244E0008 */  addiu $t6, $v0, 8
/* 0C3468 80162A28 AE0E0000 */  sw    $t6, ($s0)
/* 0C346C 80162A2C 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C3470 80162A30 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 0C3474 80162A34 AC580004 */  sw    $t8, 4($v0)
/* 0C3478 80162A38 1000021A */  b     .L801632A4_ovl3
/* 0C347C 80162A3C AC4F0000 */   sw    $t7, ($v0)
/* 0C3480 80162A40 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3484 80162A44 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3488 80162A48 8E020000 */  lw    $v0, ($s0)
/* 0C348C 80162A4C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3490 80162A50 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C3494 80162A54 24590008 */  addiu $t9, $v0, 8
/* 0C3498 80162A58 AE190000 */  sw    $t9, ($s0)
/* 0C349C 80162A5C 3C0E800E */  lui   $t6, 0x800e
/* 0C34A0 80162A60 01D17021 */  addu  $t6, $t6, $s1
/* 0C34A4 80162A64 AC480000 */  sw    $t0, ($v0)
/* 0C34A8 80162A68 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 0C34AC 80162A6C 3C0F800E */  lui   $t7, 0x800e
/* 0C34B0 80162A70 01F17821 */  addu  $t7, $t7, $s1
/* 0C34B4 80162A74 AC4E0004 */  sw    $t6, 4($v0)
/* 0C34B8 80162A78 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C34BC 80162A7C 11E00020 */  beqz  $t7, .L80162B00_ovl3
/* 0C34C0 80162A80 3C118005 */   lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C34C4 80162A84 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C34C8 80162A88 8E25000C */  lw    $a1, 0xc($s1)
/* 0C34CC 80162A8C 0C03E430 */  jal   func_800F90C0
/* 0C34D0 80162A90 00E02025 */   move  $a0, $a3
/* 0C34D4 80162A94 8E020000 */  lw    $v0, ($s0)
/* 0C34D8 80162A98 3C19DB02 */  lui   $t9, 0xdb02
/* 0C34DC 80162A9C 240E0018 */  li    $t6, 24
/* 0C34E0 80162AA0 24580008 */  addiu $t8, $v0, 8
/* 0C34E4 80162AA4 AE180000 */  sw    $t8, ($s0)
/* 0C34E8 80162AA8 AC4E0004 */  sw    $t6, 4($v0)
/* 0C34EC 80162AAC AC590000 */  sw    $t9, ($v0)
/* 0C34F0 80162AB0 8E020000 */  lw    $v0, ($s0)
/* 0C34F4 80162AB4 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C34F8 80162AB8 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C34FC 80162ABC 244F0008 */  addiu $t7, $v0, 8
/* 0C3500 80162AC0 AE0F0000 */  sw    $t7, ($s0)
/* 0C3504 80162AC4 AC580000 */  sw    $t8, ($v0)
/* 0C3508 80162AC8 8E39000C */  lw    $t9, 0xc($s1)
/* 0C350C 80162ACC 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C3510 80162AD0 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C3514 80162AD4 272E0008 */  addiu $t6, $t9, 8
/* 0C3518 80162AD8 AC4E0004 */  sw    $t6, 4($v0)
/* 0C351C 80162ADC 8E020000 */  lw    $v0, ($s0)
/* 0C3520 80162AE0 244F0008 */  addiu $t7, $v0, 8
/* 0C3524 80162AE4 AE0F0000 */  sw    $t7, ($s0)
/* 0C3528 80162AE8 AC580000 */  sw    $t8, ($v0)
/* 0C352C 80162AEC 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3530 80162AF0 AC590004 */  sw    $t9, 4($v0)
/* 0C3534 80162AF4 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3538 80162AF8 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C353C 80162AFC AE2F000C */  sw    $t7, 0xc($s1)
.L80162B00_ovl3:
/* 0C3540 80162B00 0C005617 */  jal   func_8001585C_ovl3
/* 0C3544 80162B04 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C3548 80162B08 8E020000 */  lw    $v0, ($s0)
/* 0C354C 80162B0C 3C19DB02 */  lui   $t9, 0xdb02
/* 0C3550 80162B10 240E0018 */  li    $t6, 24
/* 0C3554 80162B14 24580008 */  addiu $t8, $v0, 8
/* 0C3558 80162B18 AE180000 */  sw    $t8, ($s0)
/* 0C355C 80162B1C AC4E0004 */  sw    $t6, 4($v0)
/* 0C3560 80162B20 AC590000 */  sw    $t9, ($v0)
/* 0C3564 80162B24 8E020000 */  lw    $v0, ($s0)
/* 0C3568 80162B28 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 0C356C 80162B2C 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3570 80162B30 244F0008 */  addiu $t7, $v0, 8
/* 0C3574 80162B34 AE0F0000 */  sw    $t7, ($s0)
/* 0C3578 80162B38 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C357C 80162B3C 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 0C3580 80162B40 AC590004 */  sw    $t9, 4($v0)
/* 0C3584 80162B44 AC580000 */  sw    $t8, ($v0)
/* 0C3588 80162B48 8E020000 */  lw    $v0, ($s0)
/* 0C358C 80162B4C 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 0C3590 80162B50 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3594 80162B54 244E0008 */  addiu $t6, $v0, 8
/* 0C3598 80162B58 AE0E0000 */  sw    $t6, ($s0)
/* 0C359C 80162B5C 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C35A0 80162B60 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 0C35A4 80162B64 AC580004 */  sw    $t8, 4($v0)
/* 0C35A8 80162B68 100001CE */  b     .L801632A4_ovl3
/* 0C35AC 80162B6C AC4F0000 */   sw    $t7, ($v0)
/* 0C35B0 80162B70 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C35B4 80162B74 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C35B8 80162B78 8E020000 */  lw    $v0, ($s0)
/* 0C35BC 80162B7C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C35C0 80162B80 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0C35C4 80162B84 24590008 */  addiu $t9, $v0, 8
/* 0C35C8 80162B88 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C35CC 80162B8C AE190000 */  sw    $t9, ($s0)
/* 0C35D0 80162B90 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0C35D4 80162B94 022E2021 */  addu  $a0, $s1, $t6
/* 0C35D8 80162B98 AC480000 */  sw    $t0, ($v0)
/* 0C35DC 80162B9C 8C8F0000 */  lw    $t7, ($a0)
/* 0C35E0 80162BA0 3C0E800E */  lui   $t6, 0x800e
/* 0C35E4 80162BA4 01D17021 */  addu  $t6, $t6, $s1
/* 0C35E8 80162BA8 AC4F0004 */  sw    $t7, 4($v0)
/* 0C35EC 80162BAC 8E030004 */  lw    $v1, 4($s0)
/* 0C35F0 80162BB0 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C35F4 80162BB4 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C35F8 80162BB8 24780008 */  addiu $t8, $v1, 8
/* 0C35FC 80162BBC AE180004 */  sw    $t8, 4($s0)
/* 0C3600 80162BC0 AC680000 */  sw    $t0, ($v1)
/* 0C3604 80162BC4 8C990000 */  lw    $t9, ($a0)
/* 0C3608 80162BC8 00E02025 */  move  $a0, $a3
/* 0C360C 80162BCC AC790004 */  sw    $t9, 4($v1)
/* 0C3610 80162BD0 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C3614 80162BD4 11C0002F */  beqz  $t6, .L80162C94_ovl3
/* 0C3618 80162BD8 00000000 */   nop   
/* 0C361C 80162BDC 0C03E430 */  jal   func_800F90C0
/* 0C3620 80162BE0 8E25000C */   lw    $a1, 0xc($s1)
/* 0C3624 80162BE4 8E020000 */  lw    $v0, ($s0)
/* 0C3628 80162BE8 3C18DB02 */  lui   $t8, 0xdb02
/* 0C362C 80162BEC 24190018 */  li    $t9, 24
/* 0C3630 80162BF0 244F0008 */  addiu $t7, $v0, 8
/* 0C3634 80162BF4 AE0F0000 */  sw    $t7, ($s0)
/* 0C3638 80162BF8 AC590004 */  sw    $t9, 4($v0)
/* 0C363C 80162BFC AC580000 */  sw    $t8, ($v0)
/* 0C3640 80162C00 8E020000 */  lw    $v0, ($s0)
/* 0C3644 80162C04 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C3648 80162C08 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C364C 80162C0C 244E0008 */  addiu $t6, $v0, 8
/* 0C3650 80162C10 AE0E0000 */  sw    $t6, ($s0)
/* 0C3654 80162C14 AC4F0000 */  sw    $t7, ($v0)
/* 0C3658 80162C18 8E38000C */  lw    $t8, 0xc($s1)
/* 0C365C 80162C1C 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3660 80162C20 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C3664 80162C24 27190008 */  addiu $t9, $t8, 8
/* 0C3668 80162C28 AC590004 */  sw    $t9, 4($v0)
/* 0C366C 80162C2C 8E020000 */  lw    $v0, ($s0)
/* 0C3670 80162C30 244E0008 */  addiu $t6, $v0, 8
/* 0C3674 80162C34 AE0E0000 */  sw    $t6, ($s0)
/* 0C3678 80162C38 AC4F0000 */  sw    $t7, ($v0)
/* 0C367C 80162C3C 8E38000C */  lw    $t8, 0xc($s1)
/* 0C3680 80162C40 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 0C3684 80162C44 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 0C3688 80162C48 AC580004 */  sw    $t8, 4($v0)
/* 0C368C 80162C4C 8E030004 */  lw    $v1, 4($s0)
/* 0C3690 80162C50 24790008 */  addiu $t9, $v1, 8
/* 0C3694 80162C54 AE190004 */  sw    $t9, 4($s0)
/* 0C3698 80162C58 AC6E0000 */  sw    $t6, ($v1)
/* 0C369C 80162C5C 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C36A0 80162C60 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 0C36A4 80162C64 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 0C36A8 80162C68 25F80008 */  addiu $t8, $t7, 8
/* 0C36AC 80162C6C AC780004 */  sw    $t8, 4($v1)
/* 0C36B0 80162C70 8E030004 */  lw    $v1, 4($s0)
/* 0C36B4 80162C74 24790008 */  addiu $t9, $v1, 8
/* 0C36B8 80162C78 AE190004 */  sw    $t9, 4($s0)
/* 0C36BC 80162C7C AC6E0000 */  sw    $t6, ($v1)
/* 0C36C0 80162C80 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C36C4 80162C84 AC6F0004 */  sw    $t7, 4($v1)
/* 0C36C8 80162C88 8E38000C */  lw    $t8, 0xc($s1)
/* 0C36CC 80162C8C 27190018 */  addiu $t9, $t8, 0x18
/* 0C36D0 80162C90 AE39000C */  sw    $t9, 0xc($s1)
.L80162C94_ovl3:
/* 0C36D4 80162C94 0C02AC5D */  jal   func_800AB174
/* 0C36D8 80162C98 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C36DC 80162C9C 8E020000 */  lw    $v0, ($s0)
/* 0C36E0 80162CA0 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C36E4 80162CA4 24110018 */  li    $s1, 24
/* 0C36E8 80162CA8 244E0008 */  addiu $t6, $v0, 8
/* 0C36EC 80162CAC AE0E0000 */  sw    $t6, ($s0)
/* 0C36F0 80162CB0 AC510004 */  sw    $s1, 4($v0)
/* 0C36F4 80162CB4 AC5F0000 */  sw    $ra, ($v0)
/* 0C36F8 80162CB8 8E020000 */  lw    $v0, ($s0)
/* 0C36FC 80162CBC 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C3700 80162CC0 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C3704 80162CC4 244F0008 */  addiu $t7, $v0, 8
/* 0C3708 80162CC8 AE0F0000 */  sw    $t7, ($s0)
/* 0C370C 80162CCC 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C3710 80162CD0 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C3714 80162CD4 AC440004 */  sw    $a0, 4($v0)
/* 0C3718 80162CD8 AC4C0000 */  sw    $t4, ($v0)
/* 0C371C 80162CDC 8E020000 */  lw    $v0, ($s0)
/* 0C3720 80162CE0 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C3724 80162CE4 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C3728 80162CE8 24580008 */  addiu $t8, $v0, 8
/* 0C372C 80162CEC AE180000 */  sw    $t8, ($s0)
/* 0C3730 80162CF0 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C3734 80162CF4 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C3738 80162CF8 AC450004 */  sw    $a1, 4($v0)
/* 0C373C 80162CFC AC4D0000 */  sw    $t5, ($v0)
/* 0C3740 80162D00 8E030004 */  lw    $v1, 4($s0)
/* 0C3744 80162D04 24790008 */  addiu $t9, $v1, 8
/* 0C3748 80162D08 AE190004 */  sw    $t9, 4($s0)
/* 0C374C 80162D0C AC710004 */  sw    $s1, 4($v1)
/* 0C3750 80162D10 AC7F0000 */  sw    $ra, ($v1)
/* 0C3754 80162D14 8E030004 */  lw    $v1, 4($s0)
/* 0C3758 80162D18 246E0008 */  addiu $t6, $v1, 8
/* 0C375C 80162D1C AE0E0004 */  sw    $t6, 4($s0)
/* 0C3760 80162D20 AC640004 */  sw    $a0, 4($v1)
/* 0C3764 80162D24 AC6C0000 */  sw    $t4, ($v1)
/* 0C3768 80162D28 8E030004 */  lw    $v1, 4($s0)
/* 0C376C 80162D2C 246F0008 */  addiu $t7, $v1, 8
/* 0C3770 80162D30 AE0F0004 */  sw    $t7, 4($s0)
/* 0C3774 80162D34 AC650004 */  sw    $a1, 4($v1)
/* 0C3778 80162D38 1000015A */  b     .L801632A4_ovl3
/* 0C377C 80162D3C AC6D0000 */   sw    $t5, ($v1)
/* 0C3780 80162D40 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3784 80162D44 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3788 80162D48 8E020000 */  lw    $v0, ($s0)
/* 0C378C 80162D4C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3790 80162D50 3C19800E */  lui   $t9, %hi(gSegment4StartArray) # $t9, 0x800e
/* 0C3794 80162D54 24580008 */  addiu $t8, $v0, 8
/* 0C3798 80162D58 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C379C 80162D5C AE180000 */  sw    $t8, ($s0)
/* 0C37A0 80162D60 2739F4D0 */  addiu $t9, %lo(gSegment4StartArray) # addiu $t9, $t9, -0xb30
/* 0C37A4 80162D64 02392021 */  addu  $a0, $s1, $t9
/* 0C37A8 80162D68 AC480000 */  sw    $t0, ($v0)
/* 0C37AC 80162D6C 8C8E0000 */  lw    $t6, ($a0)
/* 0C37B0 80162D70 3C19800E */  lui   $t9, 0x800e
/* 0C37B4 80162D74 0331C821 */  addu  $t9, $t9, $s1
/* 0C37B8 80162D78 AC4E0004 */  sw    $t6, 4($v0)
/* 0C37BC 80162D7C 8E030004 */  lw    $v1, 4($s0)
/* 0C37C0 80162D80 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C37C4 80162D84 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C37C8 80162D88 246F0008 */  addiu $t7, $v1, 8
/* 0C37CC 80162D8C AE0F0004 */  sw    $t7, 4($s0)
/* 0C37D0 80162D90 AC680000 */  sw    $t0, ($v1)
/* 0C37D4 80162D94 8C980000 */  lw    $t8, ($a0)
/* 0C37D8 80162D98 00E02025 */  move  $a0, $a3
/* 0C37DC 80162D9C AC780004 */  sw    $t8, 4($v1)
/* 0C37E0 80162DA0 8F390650 */  lw    $t9, 0x650($t9)
/* 0C37E4 80162DA4 1320002F */  beqz  $t9, .L80162E64_ovl3
/* 0C37E8 80162DA8 00000000 */   nop   
/* 0C37EC 80162DAC 0C03E430 */  jal   func_800F90C0
/* 0C37F0 80162DB0 8E25000C */   lw    $a1, 0xc($s1)
/* 0C37F4 80162DB4 8E020000 */  lw    $v0, ($s0)
/* 0C37F8 80162DB8 3C0FDB02 */  lui   $t7, 0xdb02
/* 0C37FC 80162DBC 24180018 */  li    $t8, 24
/* 0C3800 80162DC0 244E0008 */  addiu $t6, $v0, 8
/* 0C3804 80162DC4 AE0E0000 */  sw    $t6, ($s0)
/* 0C3808 80162DC8 AC580004 */  sw    $t8, 4($v0)
/* 0C380C 80162DCC AC4F0000 */  sw    $t7, ($v0)
/* 0C3810 80162DD0 8E020000 */  lw    $v0, ($s0)
/* 0C3814 80162DD4 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 0C3818 80162DD8 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 0C381C 80162DDC 24590008 */  addiu $t9, $v0, 8
/* 0C3820 80162DE0 AE190000 */  sw    $t9, ($s0)
/* 0C3824 80162DE4 AC4E0000 */  sw    $t6, ($v0)
/* 0C3828 80162DE8 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C382C 80162DEC 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 0C3830 80162DF0 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 0C3834 80162DF4 25F80008 */  addiu $t8, $t7, 8
/* 0C3838 80162DF8 AC580004 */  sw    $t8, 4($v0)
/* 0C383C 80162DFC 8E020000 */  lw    $v0, ($s0)
/* 0C3840 80162E00 24590008 */  addiu $t9, $v0, 8
/* 0C3844 80162E04 AE190000 */  sw    $t9, ($s0)
/* 0C3848 80162E08 AC4E0000 */  sw    $t6, ($v0)
/* 0C384C 80162E0C 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C3850 80162E10 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 0C3854 80162E14 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 0C3858 80162E18 AC4F0004 */  sw    $t7, 4($v0)
/* 0C385C 80162E1C 8E030004 */  lw    $v1, 4($s0)
/* 0C3860 80162E20 24780008 */  addiu $t8, $v1, 8
/* 0C3864 80162E24 AE180004 */  sw    $t8, 4($s0)
/* 0C3868 80162E28 AC790000 */  sw    $t9, ($v1)
/* 0C386C 80162E2C 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3870 80162E30 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 0C3874 80162E34 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 0C3878 80162E38 25CF0008 */  addiu $t7, $t6, 8
/* 0C387C 80162E3C AC6F0004 */  sw    $t7, 4($v1)
/* 0C3880 80162E40 8E030004 */  lw    $v1, 4($s0)
/* 0C3884 80162E44 24780008 */  addiu $t8, $v1, 8
/* 0C3888 80162E48 AE180004 */  sw    $t8, 4($s0)
/* 0C388C 80162E4C AC790000 */  sw    $t9, ($v1)
/* 0C3890 80162E50 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3894 80162E54 AC6E0004 */  sw    $t6, 4($v1)
/* 0C3898 80162E58 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C389C 80162E5C 25F80018 */  addiu $t8, $t7, 0x18
/* 0C38A0 80162E60 AE38000C */  sw    $t8, 0xc($s1)
.L80162E64_ovl3:
/* 0C38A4 80162E64 0C02AC91 */  jal   func_800AB244
/* 0C38A8 80162E68 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C38AC 80162E6C 8E020000 */  lw    $v0, ($s0)
/* 0C38B0 80162E70 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C38B4 80162E74 24110018 */  li    $s1, 24
/* 0C38B8 80162E78 24590008 */  addiu $t9, $v0, 8
/* 0C38BC 80162E7C AE190000 */  sw    $t9, ($s0)
/* 0C38C0 80162E80 AC510004 */  sw    $s1, 4($v0)
/* 0C38C4 80162E84 AC5F0000 */  sw    $ra, ($v0)
/* 0C38C8 80162E88 8E020000 */  lw    $v0, ($s0)
/* 0C38CC 80162E8C 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C38D0 80162E90 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C38D4 80162E94 244E0008 */  addiu $t6, $v0, 8
/* 0C38D8 80162E98 AE0E0000 */  sw    $t6, ($s0)
/* 0C38DC 80162E9C 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C38E0 80162EA0 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C38E4 80162EA4 AC440004 */  sw    $a0, 4($v0)
/* 0C38E8 80162EA8 AC4C0000 */  sw    $t4, ($v0)
/* 0C38EC 80162EAC 8E020000 */  lw    $v0, ($s0)
/* 0C38F0 80162EB0 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C38F4 80162EB4 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C38F8 80162EB8 244F0008 */  addiu $t7, $v0, 8
/* 0C38FC 80162EBC AE0F0000 */  sw    $t7, ($s0)
/* 0C3900 80162EC0 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C3904 80162EC4 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C3908 80162EC8 AC450004 */  sw    $a1, 4($v0)
/* 0C390C 80162ECC AC4D0000 */  sw    $t5, ($v0)
/* 0C3910 80162ED0 8E030004 */  lw    $v1, 4($s0)
/* 0C3914 80162ED4 24780008 */  addiu $t8, $v1, 8
/* 0C3918 80162ED8 AE180004 */  sw    $t8, 4($s0)
/* 0C391C 80162EDC AC710004 */  sw    $s1, 4($v1)
/* 0C3920 80162EE0 AC7F0000 */  sw    $ra, ($v1)
/* 0C3924 80162EE4 8E030004 */  lw    $v1, 4($s0)
/* 0C3928 80162EE8 24790008 */  addiu $t9, $v1, 8
/* 0C392C 80162EEC AE190004 */  sw    $t9, 4($s0)
/* 0C3930 80162EF0 AC640004 */  sw    $a0, 4($v1)
/* 0C3934 80162EF4 AC6C0000 */  sw    $t4, ($v1)
/* 0C3938 80162EF8 8E030004 */  lw    $v1, 4($s0)
/* 0C393C 80162EFC 246E0008 */  addiu $t6, $v1, 8
/* 0C3940 80162F00 AE0E0004 */  sw    $t6, 4($s0)
/* 0C3944 80162F04 AC650004 */  sw    $a1, 4($v1)
/* 0C3948 80162F08 100000E6 */  b     .L801632A4_ovl3
/* 0C394C 80162F0C AC6D0000 */   sw    $t5, ($v1)
/* 0C3950 80162F10 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3954 80162F14 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3958 80162F18 8E020000 */  lw    $v0, ($s0)
/* 0C395C 80162F1C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3960 80162F20 3C18800E */  lui   $t8, %hi(gSegment4StartArray) # $t8, 0x800e
/* 0C3964 80162F24 244F0008 */  addiu $t7, $v0, 8
/* 0C3968 80162F28 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C396C 80162F2C AE0F0000 */  sw    $t7, ($s0)
/* 0C3970 80162F30 2718F4D0 */  addiu $t8, %lo(gSegment4StartArray) # addiu $t8, $t8, -0xb30
/* 0C3974 80162F34 02382021 */  addu  $a0, $s1, $t8
/* 0C3978 80162F38 AC480000 */  sw    $t0, ($v0)
/* 0C397C 80162F3C 8C990000 */  lw    $t9, ($a0)
/* 0C3980 80162F40 3C18800E */  lui   $t8, 0x800e
/* 0C3984 80162F44 0311C021 */  addu  $t8, $t8, $s1
/* 0C3988 80162F48 AC590004 */  sw    $t9, 4($v0)
/* 0C398C 80162F4C 8E030004 */  lw    $v1, 4($s0)
/* 0C3990 80162F50 246E0008 */  addiu $t6, $v1, 8
/* 0C3994 80162F54 AE0E0004 */  sw    $t6, 4($s0)
/* 0C3998 80162F58 AC680000 */  sw    $t0, ($v1)
/* 0C399C 80162F5C 8C8F0000 */  lw    $t7, ($a0)
/* 0C39A0 80162F60 AC6F0004 */  sw    $t7, 4($v1)
/* 0C39A4 80162F64 8F180650 */  lw    $t8, 0x650($t8)
/* 0C39A8 80162F68 13000031 */  beqz  $t8, .L80163030_ovl3
/* 0C39AC 80162F6C 3C118005 */   lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C39B0 80162F70 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C39B4 80162F74 8E25000C */  lw    $a1, 0xc($s1)
/* 0C39B8 80162F78 0C03E430 */  jal   func_800F90C0
/* 0C39BC 80162F7C 00E02025 */   move  $a0, $a3
/* 0C39C0 80162F80 8E020000 */  lw    $v0, ($s0)
/* 0C39C4 80162F84 3C0EDB02 */  lui   $t6, 0xdb02
/* 0C39C8 80162F88 240F0018 */  li    $t7, 24
/* 0C39CC 80162F8C 24590008 */  addiu $t9, $v0, 8
/* 0C39D0 80162F90 AE190000 */  sw    $t9, ($s0)
/* 0C39D4 80162F94 AC4F0004 */  sw    $t7, 4($v0)
/* 0C39D8 80162F98 AC4E0000 */  sw    $t6, ($v0)
/* 0C39DC 80162F9C 8E020000 */  lw    $v0, ($s0)
/* 0C39E0 80162FA0 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 0C39E4 80162FA4 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 0C39E8 80162FA8 24580008 */  addiu $t8, $v0, 8
/* 0C39EC 80162FAC AE180000 */  sw    $t8, ($s0)
/* 0C39F0 80162FB0 AC590000 */  sw    $t9, ($v0)
/* 0C39F4 80162FB4 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C39F8 80162FB8 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 0C39FC 80162FBC 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 0C3A00 80162FC0 25CF0008 */  addiu $t7, $t6, 8
/* 0C3A04 80162FC4 AC4F0004 */  sw    $t7, 4($v0)
/* 0C3A08 80162FC8 8E020000 */  lw    $v0, ($s0)
/* 0C3A0C 80162FCC 24580008 */  addiu $t8, $v0, 8
/* 0C3A10 80162FD0 AE180000 */  sw    $t8, ($s0)
/* 0C3A14 80162FD4 AC590000 */  sw    $t9, ($v0)
/* 0C3A18 80162FD8 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3A1C 80162FDC 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3A20 80162FE0 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C3A24 80162FE4 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3A28 80162FE8 8E030004 */  lw    $v1, 4($s0)
/* 0C3A2C 80162FEC 246F0008 */  addiu $t7, $v1, 8
/* 0C3A30 80162FF0 AE0F0004 */  sw    $t7, 4($s0)
/* 0C3A34 80162FF4 AC780000 */  sw    $t8, ($v1)
/* 0C3A38 80162FF8 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3A3C 80162FFC 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C3A40 80163000 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C3A44 80163004 272E0008 */  addiu $t6, $t9, 8
/* 0C3A48 80163008 AC6E0004 */  sw    $t6, 4($v1)
/* 0C3A4C 8016300C 8E030004 */  lw    $v1, 4($s0)
/* 0C3A50 80163010 246F0008 */  addiu $t7, $v1, 8
/* 0C3A54 80163014 AE0F0004 */  sw    $t7, 4($s0)
/* 0C3A58 80163018 AC780000 */  sw    $t8, ($v1)
/* 0C3A5C 8016301C 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3A60 80163020 AC790004 */  sw    $t9, 4($v1)
/* 0C3A64 80163024 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C3A68 80163028 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C3A6C 8016302C AE2F000C */  sw    $t7, 0xc($s1)
.L80163030_ovl3:
/* 0C3A70 80163030 0C0052B5 */  jal   func_80014AD4_ovl3
/* 0C3A74 80163034 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C3A78 80163038 8E020000 */  lw    $v0, ($s0)
/* 0C3A7C 8016303C 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C3A80 80163040 24110018 */  li    $s1, 24
/* 0C3A84 80163044 24580008 */  addiu $t8, $v0, 8
/* 0C3A88 80163048 AE180000 */  sw    $t8, ($s0)
/* 0C3A8C 8016304C AC510004 */  sw    $s1, 4($v0)
/* 0C3A90 80163050 AC5F0000 */  sw    $ra, ($v0)
/* 0C3A94 80163054 8E020000 */  lw    $v0, ($s0)
/* 0C3A98 80163058 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C3A9C 8016305C 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C3AA0 80163060 24590008 */  addiu $t9, $v0, 8
/* 0C3AA4 80163064 AE190000 */  sw    $t9, ($s0)
/* 0C3AA8 80163068 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C3AAC 8016306C 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C3AB0 80163070 AC440004 */  sw    $a0, 4($v0)
/* 0C3AB4 80163074 AC4C0000 */  sw    $t4, ($v0)
/* 0C3AB8 80163078 8E020000 */  lw    $v0, ($s0)
/* 0C3ABC 8016307C 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C3AC0 80163080 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C3AC4 80163084 244E0008 */  addiu $t6, $v0, 8
/* 0C3AC8 80163088 AE0E0000 */  sw    $t6, ($s0)
/* 0C3ACC 8016308C 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C3AD0 80163090 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C3AD4 80163094 AC450004 */  sw    $a1, 4($v0)
/* 0C3AD8 80163098 AC4D0000 */  sw    $t5, ($v0)
/* 0C3ADC 8016309C 8E030004 */  lw    $v1, 4($s0)
/* 0C3AE0 801630A0 246F0008 */  addiu $t7, $v1, 8
/* 0C3AE4 801630A4 AE0F0004 */  sw    $t7, 4($s0)
/* 0C3AE8 801630A8 AC710004 */  sw    $s1, 4($v1)
/* 0C3AEC 801630AC AC7F0000 */  sw    $ra, ($v1)
/* 0C3AF0 801630B0 8E030004 */  lw    $v1, 4($s0)
/* 0C3AF4 801630B4 24780008 */  addiu $t8, $v1, 8
/* 0C3AF8 801630B8 AE180004 */  sw    $t8, 4($s0)
/* 0C3AFC 801630BC AC640004 */  sw    $a0, 4($v1)
/* 0C3B00 801630C0 AC6C0000 */  sw    $t4, ($v1)
/* 0C3B04 801630C4 8E030004 */  lw    $v1, 4($s0)
/* 0C3B08 801630C8 24790008 */  addiu $t9, $v1, 8
/* 0C3B0C 801630CC AE190004 */  sw    $t9, 4($s0)
/* 0C3B10 801630D0 AC650004 */  sw    $a1, 4($v1)
/* 0C3B14 801630D4 10000073 */  b     .L801632A4_ovl3
/* 0C3B18 801630D8 AC6D0000 */   sw    $t5, ($v1)
/* 0C3B1C 801630DC 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C3B20 801630E0 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C3B24 801630E4 8E020000 */  lw    $v0, ($s0)
/* 0C3B28 801630E8 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C3B2C 801630EC 3C0F800E */  lui   $t7, %hi(gSegment4StartArray) # $t7, 0x800e
/* 0C3B30 801630F0 244E0008 */  addiu $t6, $v0, 8
/* 0C3B34 801630F4 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C3B38 801630F8 AE0E0000 */  sw    $t6, ($s0)
/* 0C3B3C 801630FC 25EFF4D0 */  addiu $t7, %lo(gSegment4StartArray) # addiu $t7, $t7, -0xb30
/* 0C3B40 80163100 022F2021 */  addu  $a0, $s1, $t7
/* 0C3B44 80163104 AC480000 */  sw    $t0, ($v0)
/* 0C3B48 80163108 8C980000 */  lw    $t8, ($a0)
/* 0C3B4C 8016310C 3C0F800E */  lui   $t7, 0x800e
/* 0C3B50 80163110 01F17821 */  addu  $t7, $t7, $s1
/* 0C3B54 80163114 AC580004 */  sw    $t8, 4($v0)
/* 0C3B58 80163118 8E030004 */  lw    $v1, 4($s0)
/* 0C3B5C 8016311C 24790008 */  addiu $t9, $v1, 8
/* 0C3B60 80163120 AE190004 */  sw    $t9, 4($s0)
/* 0C3B64 80163124 AC680000 */  sw    $t0, ($v1)
/* 0C3B68 80163128 8C8E0000 */  lw    $t6, ($a0)
/* 0C3B6C 8016312C AC6E0004 */  sw    $t6, 4($v1)
/* 0C3B70 80163130 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C3B74 80163134 11E00031 */  beqz  $t7, .L801631FC_ovl3
/* 0C3B78 80163138 3C118005 */   lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C3B7C 8016313C 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C3B80 80163140 8E25000C */  lw    $a1, 0xc($s1)
/* 0C3B84 80163144 0C03E430 */  jal   func_800F90C0
/* 0C3B88 80163148 00E02025 */   move  $a0, $a3
/* 0C3B8C 8016314C 8E020000 */  lw    $v0, ($s0)
/* 0C3B90 80163150 3C19DB02 */  lui   $t9, 0xdb02
/* 0C3B94 80163154 240E0018 */  li    $t6, 24
/* 0C3B98 80163158 24580008 */  addiu $t8, $v0, 8
/* 0C3B9C 8016315C AE180000 */  sw    $t8, ($s0)
/* 0C3BA0 80163160 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3BA4 80163164 AC590000 */  sw    $t9, ($v0)
/* 0C3BA8 80163168 8E020000 */  lw    $v0, ($s0)
/* 0C3BAC 8016316C 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C3BB0 80163170 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C3BB4 80163174 244F0008 */  addiu $t7, $v0, 8
/* 0C3BB8 80163178 AE0F0000 */  sw    $t7, ($s0)
/* 0C3BBC 8016317C AC580000 */  sw    $t8, ($v0)
/* 0C3BC0 80163180 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3BC4 80163184 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C3BC8 80163188 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C3BCC 8016318C 272E0008 */  addiu $t6, $t9, 8
/* 0C3BD0 80163190 AC4E0004 */  sw    $t6, 4($v0)
/* 0C3BD4 80163194 8E020000 */  lw    $v0, ($s0)
/* 0C3BD8 80163198 244F0008 */  addiu $t7, $v0, 8
/* 0C3BDC 8016319C AE0F0000 */  sw    $t7, ($s0)
/* 0C3BE0 801631A0 AC580000 */  sw    $t8, ($v0)
/* 0C3BE4 801631A4 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3BE8 801631A8 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C3BEC 801631AC 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C3BF0 801631B0 AC590004 */  sw    $t9, 4($v0)
/* 0C3BF4 801631B4 8E030004 */  lw    $v1, 4($s0)
/* 0C3BF8 801631B8 246E0008 */  addiu $t6, $v1, 8
/* 0C3BFC 801631BC AE0E0004 */  sw    $t6, 4($s0)
/* 0C3C00 801631C0 AC6F0000 */  sw    $t7, ($v1)
/* 0C3C04 801631C4 8E38000C */  lw    $t8, 0xc($s1)
/* 0C3C08 801631C8 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C3C0C 801631CC 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C3C10 801631D0 27190008 */  addiu $t9, $t8, 8
/* 0C3C14 801631D4 AC790004 */  sw    $t9, 4($v1)
/* 0C3C18 801631D8 8E030004 */  lw    $v1, 4($s0)
/* 0C3C1C 801631DC 246E0008 */  addiu $t6, $v1, 8
/* 0C3C20 801631E0 AE0E0004 */  sw    $t6, 4($s0)
/* 0C3C24 801631E4 AC6F0000 */  sw    $t7, ($v1)
/* 0C3C28 801631E8 8E38000C */  lw    $t8, 0xc($s1)
/* 0C3C2C 801631EC AC780004 */  sw    $t8, 4($v1)
/* 0C3C30 801631F0 8E39000C */  lw    $t9, 0xc($s1)
/* 0C3C34 801631F4 272E0018 */  addiu $t6, $t9, 0x18
/* 0C3C38 801631F8 AE2E000C */  sw    $t6, 0xc($s1)
.L801631FC_ovl3:
/* 0C3C3C 801631FC 0C0056F3 */  jal   func_80015BCC_ovl3
/* 0C3C40 80163200 8FA40028 */   lw    $a0, 0x28($sp)
/* 0C3C44 80163204 8E020000 */  lw    $v0, ($s0)
/* 0C3C48 80163208 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C3C4C 8016320C 24110018 */  li    $s1, 24
/* 0C3C50 80163210 244F0008 */  addiu $t7, $v0, 8
/* 0C3C54 80163214 AE0F0000 */  sw    $t7, ($s0)
/* 0C3C58 80163218 AC510004 */  sw    $s1, 4($v0)
/* 0C3C5C 8016321C AC5F0000 */  sw    $ra, ($v0)
/* 0C3C60 80163220 8E020000 */  lw    $v0, ($s0)
/* 0C3C64 80163224 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C3C68 80163228 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C3C6C 8016322C 24580008 */  addiu $t8, $v0, 8
/* 0C3C70 80163230 AE180000 */  sw    $t8, ($s0)
/* 0C3C74 80163234 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C3C78 80163238 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C3C7C 8016323C AC440004 */  sw    $a0, 4($v0)
/* 0C3C80 80163240 AC4C0000 */  sw    $t4, ($v0)
/* 0C3C84 80163244 8E020000 */  lw    $v0, ($s0)
/* 0C3C88 80163248 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C3C8C 8016324C 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C3C90 80163250 24590008 */  addiu $t9, $v0, 8
/* 0C3C94 80163254 AE190000 */  sw    $t9, ($s0)
/* 0C3C98 80163258 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C3C9C 8016325C 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C3CA0 80163260 AC450004 */  sw    $a1, 4($v0)
/* 0C3CA4 80163264 AC4D0000 */  sw    $t5, ($v0)
/* 0C3CA8 80163268 8E030004 */  lw    $v1, 4($s0)
/* 0C3CAC 8016326C 246E0008 */  addiu $t6, $v1, 8
/* 0C3CB0 80163270 AE0E0004 */  sw    $t6, 4($s0)
/* 0C3CB4 80163274 AC710004 */  sw    $s1, 4($v1)
/* 0C3CB8 80163278 AC7F0000 */  sw    $ra, ($v1)
/* 0C3CBC 8016327C 8E030004 */  lw    $v1, 4($s0)
/* 0C3CC0 80163280 246F0008 */  addiu $t7, $v1, 8
/* 0C3CC4 80163284 AE0F0004 */  sw    $t7, 4($s0)
/* 0C3CC8 80163288 AC640004 */  sw    $a0, 4($v1)
/* 0C3CCC 8016328C AC6C0000 */  sw    $t4, ($v1)
/* 0C3CD0 80163290 8E030004 */  lw    $v1, 4($s0)
/* 0C3CD4 80163294 24780008 */  addiu $t8, $v1, 8
/* 0C3CD8 80163298 AE180004 */  sw    $t8, 4($s0)
/* 0C3CDC 8016329C AC650004 */  sw    $a1, 4($v1)
/* 0C3CE0 801632A0 AC6D0000 */  sw    $t5, ($v1)
.L801632A4_ovl3:
/* 0C3CE4 801632A4 8FBF001C */  lw    $ra, 0x1c($sp)
.L801632A8_ovl3:
/* 0C3CE8 801632A8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C3CEC 801632AC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C3CF0 801632B0 03E00008 */  jr    $ra
/* 0C3CF4 801632B4 27BD0028 */   addiu $sp, $sp, 0x28

.type func_8016264C_ovl3, @function
.size func_8016264C_ovl3, . - func_8016264C_ovl3

glabel func_801632B8_ovl3
/* 0C3CF8 801632B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C3CFC 801632BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C3D00 801632C0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0C3D04 801632C4 24040014 */  li    $a0, 20
/* 0C3D08 801632C8 24050004 */  li    $a1, 4
/* 0C3D0C 801632CC 0C02BB02 */  jal   request_track_general
/* 0C3D10 801632D0 2406000E */   li    $a2, 14
/* 0C3D14 801632D4 2401FFFF */  li    $at, -1
/* 0C3D18 801632D8 14410007 */  bne   $v0, $at, .L801632F8_ovl3
/* 0C3D1C 801632DC 00401825 */   move  $v1, $v0
/* 0C3D20 801632E0 3C048019 */  lui   $a0, %hi(D_80197028) # $a0, 0x8019
/* 0C3D24 801632E4 24847028 */  addiu $a0, %lo(D_80197028) # addiu $a0, $a0, 0x7028
/* 0C3D28 801632E8 0C02909C */  jal   print_error_stub
/* 0C3D2C 801632EC AFA3001C */   sw    $v1, 0x1c($sp)
/* 0C3D30 801632F0 10000006 */  b     .L8016330C_ovl3
/* 0C3D34 801632F4 8FA3001C */   lw    $v1, 0x1c($sp)
.L801632F8_ovl3:
/* 0C3D38 801632F8 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0C3D3C 801632FC 00027880 */  sll   $t7, $v0, 2
/* 0C3D40 80163300 3C01800E */  lui   $at, 0x800e
/* 0C3D44 80163304 002F0821 */  addu  $at, $at, $t7
/* 0C3D48 80163308 AC2EDC50 */  sw    $t6, -0x23b0($at)
.L8016330C_ovl3:
/* 0C3D4C 8016330C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C3D50 80163310 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C3D54 80163314 00601025 */  move  $v0, $v1
/* 0C3D58 80163318 03E00008 */  jr    $ra
/* 0C3D5C 8016331C 00000000 */   nop   

.type func_801632B8_ovl3, @function
.size func_801632B8_ovl3, . - func_801632B8_ovl3

glabel func_80163320_ovl3
/* 0C3D60 80163320 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C3D64 80163324 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C3D68 80163328 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0C3D6C 8016332C AFA40018 */  sw    $a0, 0x18($sp)
/* 0C3D70 80163330 0C02BB30 */  jal   func_800AECC0
/* 0C3D74 80163334 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0C3D78 80163338 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0C3D7C 8016333C 0C02BB48 */  jal   func_800AED20
/* 0C3D80 80163340 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0C3D84 80163344 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C3D88 80163348 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C3D8C 8016334C 3C19801A */  lui   $t9, %hi(D_80198540) # $t9, 0x801a
/* 0C3D90 80163350 27398540 */  addiu $t9, %lo(D_80198540) # addiu $t9, $t9, -0x7ac0
/* 0C3D94 80163354 8DC20000 */  lw    $v0, ($t6)
/* 0C3D98 80163358 00027940 */  sll   $t7, $v0, 5
/* 0C3D9C 8016335C 25F8F880 */  addiu $t8, $t7, -0x780
/* 0C3DA0 80163360 03192821 */  addu  $a1, $t8, $t9
/* 0C3DA4 80163364 0C055223 */  jal   func_8015488C_ovl3
/* 0C3DA8 80163368 00402025 */   move  $a0, $v0
/* 0C3DAC 8016336C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C3DB0 80163370 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C3DB4 80163374 3C01800E */  lui   $at, 0x800e
/* 0C3DB8 80163378 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 0C3DBC 8016337C 8C6E0000 */  lw    $t6, ($v1)
/* 0C3DC0 80163380 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 0C3DC4 80163384 3C08800E */  lui   $t0, %hi(D_800E10D0) # $t0, 0x800e
/* 0C3DC8 80163388 000E7880 */  sll   $t7, $t6, 2
/* 0C3DCC 8016338C 002F0821 */  addu  $at, $at, $t7
/* 0C3DD0 80163390 AC200650 */  sw    $zero, 0x650($at)
/* 0C3DD4 80163394 8C620000 */  lw    $v0, ($v1)
/* 0C3DD8 80163398 250810D0 */  addiu $t0, %lo(D_800E10D0) # addiu $t0, $t0, 0x10d0
/* 0C3DDC 8016339C 3C09800E */  lui   $t1, %hi(D_800E1290) # $t1, 0x800e
/* 0C3DE0 801633A0 00021080 */  sll   $v0, $v0, 2
/* 0C3DE4 801633A4 00E2C021 */  addu  $t8, $a3, $v0
/* 0C3DE8 801633A8 8F190000 */  lw    $t9, ($t8)
/* 0C3DEC 801633AC 0102C021 */  addu  $t8, $t0, $v0
/* 0C3DF0 801633B0 25291290 */  addiu $t1, %lo(D_800E1290) # addiu $t1, $t1, 0x1290
/* 0C3DF4 801633B4 00197080 */  sll   $t6, $t9, 2
/* 0C3DF8 801633B8 010E7821 */  addu  $t7, $t0, $t6
/* 0C3DFC 801633BC C5E40000 */  lwc1  $f4, ($t7)
/* 0C3E00 801633C0 3C0A800E */  lui   $t2, %hi(D_800E1450) # $t2, 0x800e
/* 0C3E04 801633C4 254A1450 */  addiu $t2, %lo(D_800E1450) # addiu $t2, $t2, 0x1450
/* 0C3E08 801633C8 E7040000 */  swc1  $f4, ($t8)
/* 0C3E0C 801633CC 8C620000 */  lw    $v0, ($v1)
/* 0C3E10 801633D0 3C0B800E */  lui   $t3, %hi(D_800E6A10) # $t3, 0x800e
/* 0C3E14 801633D4 256B6A10 */  addiu $t3, %lo(D_800E6A10) # addiu $t3, $t3, 0x6a10
/* 0C3E18 801633D8 00021080 */  sll   $v0, $v0, 2
/* 0C3E1C 801633DC 00E2C821 */  addu  $t9, $a3, $v0
/* 0C3E20 801633E0 8F2E0000 */  lw    $t6, ($t9)
/* 0C3E24 801633E4 0122C821 */  addu  $t9, $t1, $v0
/* 0C3E28 801633E8 3C0C800E */  lui   $t4, %hi(D_800E6BD0) # $t4, 0x800e
/* 0C3E2C 801633EC 000E7880 */  sll   $t7, $t6, 2
/* 0C3E30 801633F0 012FC021 */  addu  $t8, $t1, $t7
/* 0C3E34 801633F4 C7060000 */  lwc1  $f6, ($t8)
/* 0C3E38 801633F8 258C6BD0 */  addiu $t4, %lo(D_800E6BD0) # addiu $t4, $t4, 0x6bd0
/* 0C3E3C 801633FC 3C0D800F */  lui   $t5, %hi(D_800E8760) # $t5, 0x800f
/* 0C3E40 80163400 E7260000 */  swc1  $f6, ($t9)
/* 0C3E44 80163404 8C620000 */  lw    $v0, ($v1)
/* 0C3E48 80163408 25AD8760 */  addiu $t5, %lo(D_800E8760) # addiu $t5, $t5, -0x78a0
/* 0C3E4C 8016340C 3C01800F */  lui   $at, 0x800f
/* 0C3E50 80163410 00021080 */  sll   $v0, $v0, 2
/* 0C3E54 80163414 00E27021 */  addu  $t6, $a3, $v0
/* 0C3E58 80163418 8DCF0000 */  lw    $t7, ($t6)
/* 0C3E5C 8016341C 01427021 */  addu  $t6, $t2, $v0
/* 0C3E60 80163420 3C04800E */  lui   $a0, 0x800e
/* 0C3E64 80163424 000FC080 */  sll   $t8, $t7, 2
/* 0C3E68 80163428 0158C821 */  addu  $t9, $t2, $t8
/* 0C3E6C 8016342C C7280000 */  lwc1  $f8, ($t9)
/* 0C3E70 80163430 3C068019 */  lui   $a2, %hi(D_801967F0) # $a2, 0x8019
/* 0C3E74 80163434 24C667F0 */  addiu $a2, %lo(D_801967F0) # addiu $a2, $a2, 0x67f0
/* 0C3E78 80163438 E5C80000 */  swc1  $f8, ($t6)
/* 0C3E7C 8016343C 8C620000 */  lw    $v0, ($v1)
/* 0C3E80 80163440 24050016 */  li    $a1, 22
/* 0C3E84 80163444 00021080 */  sll   $v0, $v0, 2
/* 0C3E88 80163448 00E27821 */  addu  $t7, $a3, $v0
/* 0C3E8C 8016344C 8DF80000 */  lw    $t8, ($t7)
/* 0C3E90 80163450 01627821 */  addu  $t7, $t3, $v0
/* 0C3E94 80163454 0018C880 */  sll   $t9, $t8, 2
/* 0C3E98 80163458 01797021 */  addu  $t6, $t3, $t9
/* 0C3E9C 8016345C C5CA0000 */  lwc1  $f10, ($t6)
/* 0C3EA0 80163460 E5EA0000 */  swc1  $f10, ($t7)
/* 0C3EA4 80163464 8C620000 */  lw    $v0, ($v1)
/* 0C3EA8 80163468 00021080 */  sll   $v0, $v0, 2
/* 0C3EAC 8016346C 00E2C021 */  addu  $t8, $a3, $v0
/* 0C3EB0 80163470 8F190000 */  lw    $t9, ($t8)
/* 0C3EB4 80163474 0182C021 */  addu  $t8, $t4, $v0
/* 0C3EB8 80163478 00197080 */  sll   $t6, $t9, 2
/* 0C3EBC 8016347C 018E7821 */  addu  $t7, $t4, $t6
/* 0C3EC0 80163480 C5F00000 */  lwc1  $f16, ($t7)
/* 0C3EC4 80163484 E7100000 */  swc1  $f16, ($t8)
/* 0C3EC8 80163488 8C790000 */  lw    $t9, ($v1)
/* 0C3ECC 8016348C 00197080 */  sll   $t6, $t9, 2
/* 0C3ED0 80163490 01AE7821 */  addu  $t7, $t5, $t6
/* 0C3ED4 80163494 ADE00000 */  sw    $zero, ($t7)
/* 0C3ED8 80163498 8C620000 */  lw    $v0, ($v1)
/* 0C3EDC 8016349C 00021080 */  sll   $v0, $v0, 2
/* 0C3EE0 801634A0 01A2C021 */  addu  $t8, $t5, $v0
/* 0C3EE4 801634A4 8F190000 */  lw    $t9, ($t8)
/* 0C3EE8 801634A8 00220821 */  addu  $at, $at, $v0
/* 0C3EEC 801634AC AC3983E0 */  sw    $t9, -0x7c20($at)
/* 0C3EF0 801634B0 8C6E0000 */  lw    $t6, ($v1)
/* 0C3EF4 801634B4 000E7880 */  sll   $t7, $t6, 2
/* 0C3EF8 801634B8 008F2021 */  addu  $a0, $a0, $t7
/* 0C3EFC 801634BC 0C02911F */  jal   call_virtual_function
/* 0C3F00 801634C0 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 0C3F04 801634C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C3F08 801634C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C3F0C 801634CC 03E00008 */  jr    $ra
/* 0C3F10 801634D0 00000000 */   nop   

.type func_80163320_ovl3, @function
.size func_80163320_ovl3, . - func_80163320_ovl3

glabel func_801634D4_ovl3
/* 0C3F14 801634D4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C3F18 801634D8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C3F1C 801634DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C3F20 801634E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C3F24 801634E4 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C3F28 801634E8 8C6F0000 */  lw    $t7, ($v1)
/* 0C3F2C 801634EC 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 0C3F30 801634F0 3C01800E */  lui   $at, 0x800e
/* 0C3F34 801634F4 000FC080 */  sll   $t8, $t7, 2
/* 0C3F38 801634F8 00380821 */  addu  $at, $at, $t8
/* 0C3F3C 801634FC 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 0C3F40 80163500 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C3F44 80163504 8C680000 */  lw    $t0, ($v1)
/* 0C3F48 80163508 3C01800E */  lui   $at, 0x800e
/* 0C3F4C 8016350C 24190008 */  li    $t9, 8
/* 0C3F50 80163510 00084880 */  sll   $t1, $t0, 2
/* 0C3F54 80163514 00290821 */  addu  $at, $at, $t1
/* 0C3F58 80163518 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C3F5C 8016351C 8C6B0000 */  lw    $t3, ($v1)
/* 0C3F60 80163520 3C01800E */  lui   $at, 0x800e
/* 0C3F64 80163524 3C0A8016 */  lui   $t2, %hi(D_801636A4) # $t2, 0x8016
/* 0C3F68 80163528 000B6080 */  sll   $t4, $t3, 2
/* 0C3F6C 8016352C 002C0821 */  addu  $at, $at, $t4
/* 0C3F70 80163530 254A36A4 */  addiu $t2, %lo(D_801636A4) # addiu $t2, $t2, 0x36a4
/* 0C3F74 80163534 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 0C3F78 80163538 8C6F0000 */  lw    $t7, ($v1)
/* 0C3F7C 8016353C 3C01800F */  lui   $at, 0x800f
/* 0C3F80 80163540 240DFFFF */  li    $t5, -1
/* 0C3F84 80163544 000F7080 */  sll   $t6, $t7, 2
/* 0C3F88 80163548 002E0821 */  addu  $at, $at, $t6
/* 0C3F8C 8016354C AC2D9720 */  sw    $t5, -0x68e0($at)
/* 0C3F90 80163550 8C620000 */  lw    $v0, ($v1)
/* 0C3F94 80163554 3C18800E */  lui   $t8, 0x800e
/* 0C3F98 80163558 3C04800F */  lui   $a0, %hi(D_800E8AE0) # $a0, 0x800f
/* 0C3F9C 8016355C 00021080 */  sll   $v0, $v0, 2
/* 0C3FA0 80163560 0302C021 */  addu  $t8, $t8, $v0
/* 0C3FA4 80163564 8F180D50 */  lw    $t8, 0xd50($t8)
/* 0C3FA8 80163568 24848AE0 */  addiu $a0, %lo(D_800E8AE0) # addiu $a0, $a0, -0x7520
/* 0C3FAC 8016356C 00825821 */  addu  $t3, $a0, $v0
/* 0C3FB0 80163570 00184080 */  sll   $t0, $t8, 2
/* 0C3FB4 80163574 0088C821 */  addu  $t9, $a0, $t0
/* 0C3FB8 80163578 8F290000 */  lw    $t1, ($t9)
/* 0C3FBC 8016357C 3C01800F */  lui   $at, 0x800f
/* 0C3FC0 80163580 3C0E8019 */  lui   $t6, %hi(D_80196848) # $t6, 0x8019
/* 0C3FC4 80163584 AD690000 */  sw    $t1, ($t3)
/* 0C3FC8 80163588 8C620000 */  lw    $v0, ($v1)
/* 0C3FCC 8016358C 00001825 */  move  $v1, $zero
/* 0C3FD0 80163590 27A50024 */  addiu $a1, $sp, 0x24
/* 0C3FD4 80163594 00021080 */  sll   $v0, $v0, 2
/* 0C3FD8 80163598 00825021 */  addu  $t2, $a0, $v0
/* 0C3FDC 8016359C 8D4C0000 */  lw    $t4, ($t2)
/* 0C3FE0 801635A0 00220821 */  addu  $at, $at, $v0
/* 0C3FE4 801635A4 25CE6848 */  addiu $t6, %lo(D_80196848) # addiu $t6, $t6, 0x6848
/* 0C3FE8 801635A8 318F0006 */  andi  $t7, $t4, 6
/* 0C3FEC 801635AC 11E00003 */  beqz  $t7, .L801635BC_ovl3
/* 0C3FF0 801635B0 27A60028 */   addiu $a2, $sp, 0x28
/* 0C3FF4 801635B4 10000001 */  b     .L801635BC_ovl3
/* 0C3FF8 801635B8 24030001 */   li    $v1, 1
.L801635BC_ovl3:
/* 0C3FFC 801635BC 000368C0 */  sll   $t5, $v1, 3
/* 0C4000 801635C0 AC259FE0 */  sw    $a1, -0x6020($at)
/* 0C4004 801635C4 01AE3821 */  addu  $a3, $t5, $t6
/* 0C4008 801635C8 8CE40000 */  lw    $a0, ($a3)
/* 0C400C 801635CC 0C029DFA */  jal   func_800A77E8
/* 0C4010 801635D0 AFA7001C */   sw    $a3, 0x1c($sp)
/* 0C4014 801635D4 8FA7001C */  lw    $a3, 0x1c($sp)
/* 0C4018 801635D8 24040001 */  li    $a0, 1
/* 0C401C 801635DC 24050001 */  li    $a1, 1
/* 0C4020 801635E0 0C02A08D */  jal   func_800A8234
/* 0C4024 801635E4 8CE60004 */   lw    $a2, 4($a3)
/* 0C4028 801635E8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C402C 801635EC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C4030 801635F0 3C018019 */  lui   $at, %hi(D_8019714C) # $at, 0x8019
/* 0C4034 801635F4 C420714C */  lwc1  $f0, %lo(D_8019714C)($at)
/* 0C4038 801635F8 8C780000 */  lw    $t8, ($v1)
/* 0C403C 801635FC 3C01800F */  lui   $at, 0x800f
/* 0C4040 80163600 3C040002 */  lui   $a0, (0x00020041 >> 16) # lui $a0, 2
/* 0C4044 80163604 00184080 */  sll   $t0, $t8, 2
/* 0C4048 80163608 00280821 */  addu  $at, $at, $t0
/* 0C404C 8016360C AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0C4050 80163610 8C790000 */  lw    $t9, ($v1)
/* 0C4054 80163614 3C01800E */  lui   $at, 0x800e
/* 0C4058 80163618 34840041 */  ori   $a0, (0x00020041 & 0xFFFF) # ori $a0, $a0, 0x41
/* 0C405C 8016361C 00194880 */  sll   $t1, $t9, 2
/* 0C4060 80163620 00290821 */  addu  $at, $at, $t1
/* 0C4064 80163624 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C4068 80163628 8C6B0000 */  lw    $t3, ($v1)
/* 0C406C 8016362C 3C01800E */  lui   $at, 0x800e
/* 0C4070 80163630 24050022 */  li    $a1, 34
/* 0C4074 80163634 000B5080 */  sll   $t2, $t3, 2
/* 0C4078 80163638 002A0821 */  addu  $at, $at, $t2
/* 0C407C 8016363C E4204710 */  swc1  $f0, 0x4710($at)
/* 0C4080 80163640 8C6C0000 */  lw    $t4, ($v1)
/* 0C4084 80163644 3C01800E */  lui   $at, 0x800e
/* 0C4088 80163648 24060010 */  li    $a2, 16
/* 0C408C 8016364C 000C7880 */  sll   $t7, $t4, 2
/* 0C4090 80163650 002F0821 */  addu  $at, $at, $t7
/* 0C4094 80163654 0C02A619 */  jal   func_800A9864
/* 0C4098 80163658 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C409C 8016365C 3C040002 */  lui   $a0, (0x0002028B >> 16) # lui $a0, 2
/* 0C40A0 80163660 3C050002 */  lui   $a1, (0x0002028C >> 16) # lui $a1, 2
/* 0C40A4 80163664 34A5028C */  ori   $a1, (0x0002028C & 0xFFFF) # ori $a1, $a1, 0x28c
/* 0C40A8 80163668 3484028B */  ori   $a0, (0x0002028B & 0xFFFF) # ori $a0, $a0, 0x28b
/* 0C40AC 8016366C 0C048C3A */  jal   func_801230E8
/* 0C40B0 80163670 24060001 */   li    $a2, 1
/* 0C40B4 80163674 3C040002 */  lui   $a0, (0x0002028D >> 16) # lui $a0, 2
/* 0C40B8 80163678 3C050002 */  lui   $a1, (0x0002028E >> 16) # lui $a1, 2
/* 0C40BC 8016367C 34A5028E */  ori   $a1, (0x0002028E & 0xFFFF) # ori $a1, $a1, 0x28e
/* 0C40C0 80163680 3484028D */  ori   $a0, (0x0002028D & 0xFFFF) # ori $a0, $a0, 0x28d
/* 0C40C4 80163684 0C048C3A */  jal   func_801230E8
/* 0C40C8 80163688 00003025 */   move  $a2, $zero
/* 0C40CC 8016368C 0C02BE85 */  jal   func_800AFA14
/* 0C40D0 80163690 00000000 */   nop   
/* 0C40D4 80163694 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C40D8 80163698 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C40DC 8016369C 03E00008 */  jr    $ra
/* 0C40E0 801636A0 00000000 */   nop   

.type func_801634D4_ovl3, @function
.size func_801634D4_ovl3, . - func_801634D4_ovl3

glabel func_801636A4_ovl3
/* 0C40E4 801636A4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C40E8 801636A8 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C40EC 801636AC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C40F0 801636B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C40F4 801636B4 AFA40050 */  sw    $a0, 0x50($sp)
/* 0C40F8 801636B8 8CE30000 */  lw    $v1, ($a3)
/* 0C40FC 801636BC 3C0E800E */  lui   $t6, 0x800e
/* 0C4100 801636C0 3C0F800F */  lui   $t7, 0x800f
/* 0C4104 801636C4 00031880 */  sll   $v1, $v1, 2
/* 0C4108 801636C8 3C188013 */  lui   $t8, %hi(D_8012E7C4) # $t8, 0x8013
/* 0C410C 801636CC 9318E7C4 */  lbu   $t8, %lo(D_8012E7C4)($t8)
/* 0C4110 801636D0 01C37021 */  addu  $t6, $t6, $v1
/* 0C4114 801636D4 01E37821 */  addu  $t7, $t7, $v1
/* 0C4118 801636D8 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 0C411C 801636DC 8DEF9FE0 */  lw    $t7, -0x6020($t7)
/* 0C4120 801636E0 240A0001 */  li    $t2, 1
/* 0C4124 801636E4 AFAE0040 */  sw    $t6, 0x40($sp)
/* 0C4128 801636E8 11580007 */  beq   $t2, $t8, .L80163708_ovl3
/* 0C412C 801636EC AFAF003C */   sw    $t7, 0x3c($sp)
/* 0C4130 801636F0 3C198013 */  lui   $t9, %hi(D_8012E7C5) # $t9, 0x8013
/* 0C4134 801636F4 9339E7C5 */  lbu   $t9, %lo(D_8012E7C5)($t9)
/* 0C4138 801636F8 24010018 */  li    $at, 24
/* 0C413C 801636FC 3C18800E */  lui   $t8, %hi(gEntitiesNextPosYArray) # $t8, 0x800e
/* 0C4140 80163700 13210012 */  beq   $t9, $at, .L8016374C_ovl3
/* 0C4144 80163704 27182790 */   addiu $t8, %lo(gEntitiesNextPosYArray) # addiu $t8, $t8, 0x2790
.L80163708_ovl3:
/* 0C4148 80163708 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0C414C 8016370C 0C029E1C */  jal   func_800A7870
/* 0C4150 80163710 24850004 */   addiu $a1, $a0, 4
/* 0C4154 80163714 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C4158 80163718 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C415C 8016371C 3C04800F */  lui   $a0, 0x800f
/* 0C4160 80163720 8D8D0000 */  lw    $t5, ($t4)
/* 0C4164 80163724 000D7080 */  sll   $t6, $t5, 2
/* 0C4168 80163728 008E2021 */  addu  $a0, $a0, $t6
/* 0C416C 8016372C 0C0288B5 */  jal   func_800A22D4
/* 0C4170 80163730 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C4174 80163734 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C4178 80163738 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C417C 8016373C 0C02C640 */  jal   func_800B1900
/* 0C4180 80163740 95E40002 */   lhu   $a0, 2($t7)
/* 0C4184 80163744 100000DB */  b     .L80163AB4_ovl3
/* 0C4188 80163748 8FBF0014 */   lw    $ra, 0x14($sp)
.L8016374C_ovl3:
/* 0C418C 8016374C 00781021 */  addu  $v0, $v1, $t8
/* 0C4190 80163750 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0C4194 80163754 44813000 */  mtc1  $at, $f6
/* 0C4198 80163758 C4440000 */  lwc1  $f4, ($v0)
/* 0C419C 8016375C 3C0C800F */  lui   $t4, %hi(D_800E9720) # $t4, 0x800f
/* 0C41A0 80163760 258C9720 */  addiu $t4, %lo(D_800E9720) # addiu $t4, $t4, -0x68e0
/* 0C41A4 80163764 46062201 */  sub.s $f8, $f4, $f6
/* 0C41A8 80163768 3C06800D */  lui   $a2, %hi(D_800D71F8) # $a2, 0x800d
/* 0C41AC 8016376C 3C09800F */  lui   $t1, %hi(D_800E8AE0) # $t1, 0x800f
/* 0C41B0 80163770 25298AE0 */  addiu $t1, %lo(D_800E8AE0) # addiu $t1, $t1, -0x7520
/* 0C41B4 80163774 E4480000 */  swc1  $f8, ($v0)
/* 0C41B8 80163778 8CF90000 */  lw    $t9, ($a3)
/* 0C41BC 8016377C 24C671F8 */  addiu $a2, %lo(D_800D71F8) # addiu $a2, $a2, 0x71f8
/* 0C41C0 80163780 00195880 */  sll   $t3, $t9, 2
/* 0C41C4 80163784 016C2821 */  addu  $a1, $t3, $t4
/* 0C41C8 80163788 8CA40000 */  lw    $a0, ($a1)
/* 0C41CC 8016378C 2881001E */  slti  $at, $a0, 0x1e
/* 0C41D0 80163790 10200002 */  beqz  $at, .L8016379C_ovl3
/* 0C41D4 80163794 248D0001 */   addiu $t5, $a0, 1
/* 0C41D8 80163798 ACAD0000 */  sw    $t5, ($a1)
.L8016379C_ovl3:
/* 0C41DC 8016379C 8FA80040 */  lw    $t0, 0x40($sp)
/* 0C41E0 801637A0 3C05800D */  lui   $a1, %hi(D_800D71FC) # $a1, 0x800d
/* 0C41E4 801637A4 24A571FC */  addiu $a1, %lo(D_800D71FC) # addiu $a1, $a1, 0x71fc
/* 0C41E8 801637A8 00084080 */  sll   $t0, $t0, 2
/* 0C41EC 801637AC 01287021 */  addu  $t6, $t1, $t0
/* 0C41F0 801637B0 8DC40000 */  lw    $a0, ($t6)
/* 0C41F4 801637B4 ACA00000 */  sw    $zero, ($a1)
/* 0C41F8 801637B8 00001025 */  move  $v0, $zero
/* 0C41FC 801637BC 308F0006 */  andi  $t7, $a0, 6
/* 0C4200 801637C0 11E00002 */  beqz  $t7, .L801637CC_ovl3
/* 0C4204 801637C4 ACC00000 */   sw    $zero, ($a2)
/* 0C4208 801637C8 ACCA0000 */  sw    $t2, ($a2)
.L801637CC_ovl3:
/* 0C420C 801637CC 8CF80000 */  lw    $t8, ($a3)
/* 0C4210 801637D0 0018C880 */  sll   $t9, $t8, 2
/* 0C4214 801637D4 01391821 */  addu  $v1, $t1, $t9
/* 0C4218 801637D8 8C6B0000 */  lw    $t3, ($v1)
/* 0C421C 801637DC 316C0006 */  andi  $t4, $t3, 6
/* 0C4220 801637E0 51800007 */  beql  $t4, $zero, .L80163800_ovl3
/* 0C4224 801637E4 8CCF0000 */   lw    $t7, ($a2)
/* 0C4228 801637E8 ACAA0000 */  sw    $t2, ($a1)
/* 0C422C 801637EC 8CED0000 */  lw    $t5, ($a3)
/* 0C4230 801637F0 01401025 */  move  $v0, $t2
/* 0C4234 801637F4 000D7080 */  sll   $t6, $t5, 2
/* 0C4238 801637F8 012E1821 */  addu  $v1, $t1, $t6
/* 0C423C 801637FC 8CCF0000 */  lw    $t7, ($a2)
.L80163800_ovl3:
/* 0C4240 80163800 AC640000 */  sw    $a0, ($v1)
/* 0C4244 80163804 51E2005B */  beql  $t7, $v0, .L80163974_ovl3
/* 0C4248 80163808 8CF80000 */   lw    $t8, ($a3)
/* 0C424C 8016380C 8CF90000 */  lw    $t9, ($a3)
/* 0C4250 80163810 00195880 */  sll   $t3, $t9, 2
/* 0C4254 80163814 012B6021 */  addu  $t4, $t1, $t3
/* 0C4258 80163818 8D8D0000 */  lw    $t5, ($t4)
/* 0C425C 8016381C 31AE0006 */  andi  $t6, $t5, 6
/* 0C4260 80163820 51C00004 */  beql  $t6, $zero, .L80163834_ovl3
/* 0C4264 80163824 AFA00034 */   sw    $zero, 0x34($sp)
/* 0C4268 80163828 10000002 */  b     .L80163834_ovl3
/* 0C426C 8016382C AFAA0034 */   sw    $t2, 0x34($sp)
/* 0C4270 80163830 AFA00034 */  sw    $zero, 0x34($sp)
.L80163834_ovl3:
/* 0C4274 80163834 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0C4278 80163838 AFA80020 */  sw    $t0, 0x20($sp)
/* 0C427C 8016383C 24850004 */  addiu $a1, $a0, 4
/* 0C4280 80163840 0C029E1C */  jal   func_800A7870
/* 0C4284 80163844 AFA50028 */   sw    $a1, 0x28($sp)
/* 0C4288 80163848 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C428C 8016384C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C4290 80163850 3C04800F */  lui   $a0, 0x800f
/* 0C4294 80163854 8F190000 */  lw    $t9, ($t8)
/* 0C4298 80163858 00195880 */  sll   $t3, $t9, 2
/* 0C429C 8016385C 008B2021 */  addu  $a0, $a0, $t3
/* 0C42A0 80163860 0C0288B5 */  jal   func_800A22D4
/* 0C42A4 80163864 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C42A8 80163868 8FAC0034 */  lw    $t4, 0x34($sp)
/* 0C42AC 8016386C 3C068019 */  lui   $a2, 0x8019
/* 0C42B0 80163870 24040001 */  li    $a0, 1
/* 0C42B4 80163874 000C68C0 */  sll   $t5, $t4, 3
/* 0C42B8 80163878 00CD3021 */  addu  $a2, $a2, $t5
/* 0C42BC 8016387C 8CC6684C */  lw    $a2, 0x684c($a2)
/* 0C42C0 80163880 0C02A08D */  jal   func_800A8234
/* 0C42C4 80163884 24050001 */   li    $a1, 1
/* 0C42C8 80163888 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C42CC 8016388C 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C42D0 80163890 3C01800F */  lui   $at, 0x800f
/* 0C42D4 80163894 3C18800F */  lui   $t8, %hi(D_800E98E0) # $t8, 0x800f
/* 0C42D8 80163898 8CEE0000 */  lw    $t6, ($a3)
/* 0C42DC 8016389C 271898E0 */  addiu $t8, %lo(D_800E98E0) # addiu $t8, $t8, -0x6720
/* 0C42E0 801638A0 3C04800F */  lui   $a0, 0x800f
/* 0C42E4 801638A4 000E7880 */  sll   $t7, $t6, 2
/* 0C42E8 801638A8 002F0821 */  addu  $at, $at, $t7
/* 0C42EC 801638AC AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0C42F0 801638B0 8CE30000 */  lw    $v1, ($a3)
/* 0C42F4 801638B4 8FA80020 */  lw    $t0, 0x20($sp)
/* 0C42F8 801638B8 240B0001 */  li    $t3, 1
/* 0C42FC 801638BC 00031880 */  sll   $v1, $v1, 2
/* 0C4300 801638C0 00782821 */  addu  $a1, $v1, $t8
/* 0C4304 801638C4 8CB90000 */  lw    $t9, ($a1)
/* 0C4308 801638C8 00832021 */  addu  $a0, $a0, $v1
/* 0C430C 801638CC 24020005 */  li    $v0, 5
/* 0C4310 801638D0 57200019 */  bnezl $t9, .L80163938_ovl3
/* 0C4314 801638D4 ACA00000 */   sw    $zero, ($a1)
/* 0C4318 801638D8 8C849720 */  lw    $a0, -0x68e0($a0)
/* 0C431C 801638DC 28810003 */  slti  $at, $a0, 3
/* 0C4320 801638E0 50200004 */  beql  $at, $zero, .L801638F4_ovl3
/* 0C4324 801638E4 28810006 */   slti  $at, $a0, 6
/* 0C4328 801638E8 10000010 */  b     .L8016392C_ovl3
/* 0C432C 801638EC 00001025 */   move  $v0, $zero
/* 0C4330 801638F0 28810006 */  slti  $at, $a0, 6
.L801638F4_ovl3:
/* 0C4334 801638F4 50200004 */  beql  $at, $zero, .L80163908_ovl3
/* 0C4338 801638F8 2881000C */   slti  $at, $a0, 0xc
/* 0C433C 801638FC 1000000B */  b     .L8016392C_ovl3
/* 0C4340 80163900 24020001 */   li    $v0, 1
/* 0C4344 80163904 2881000C */  slti  $at, $a0, 0xc
.L80163908_ovl3:
/* 0C4348 80163908 50200004 */  beql  $at, $zero, .L8016391C_ovl3
/* 0C434C 8016390C 28810012 */   slti  $at, $a0, 0x12
/* 0C4350 80163910 10000006 */  b     .L8016392C_ovl3
/* 0C4354 80163914 24020002 */   li    $v0, 2
/* 0C4358 80163918 28810012 */  slti  $at, $a0, 0x12
.L8016391C_ovl3:
/* 0C435C 8016391C 10200003 */  beqz  $at, .L8016392C_ovl3
/* 0C4360 80163920 24020004 */   li    $v0, 4
/* 0C4364 80163924 10000001 */  b     .L8016392C_ovl3
/* 0C4368 80163928 24020003 */   li    $v0, 3
.L8016392C_ovl3:
/* 0C436C 8016392C 10000002 */  b     .L80163938_ovl3
/* 0C4370 80163930 ACAB0000 */   sw    $t3, ($a1)
/* 0C4374 80163934 ACA00000 */  sw    $zero, ($a1)
.L80163938_ovl3:
/* 0C4378 80163938 8FAD0034 */  lw    $t5, 0x34($sp)
/* 0C437C 8016393C 000260C0 */  sll   $t4, $v0, 3
/* 0C4380 80163940 3C048019 */  lui   $a0, 0x8019
/* 0C4384 80163944 000D7080 */  sll   $t6, $t5, 2
/* 0C4388 80163948 018E7821 */  addu  $t7, $t4, $t6
/* 0C438C 8016394C 008F2021 */  addu  $a0, $a0, $t7
/* 0C4390 80163950 8C846858 */  lw    $a0, 0x6858($a0)
/* 0C4394 80163954 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0C4398 80163958 8FA60028 */  lw    $a2, 0x28($sp)
/* 0C439C 8016395C 0C029DFA */  jal   func_800A77E8
/* 0C43A0 80163960 AFA80020 */   sw    $t0, 0x20($sp)
/* 0C43A4 80163964 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C43A8 80163968 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C43AC 8016396C 8FA80020 */  lw    $t0, 0x20($sp)
/* 0C43B0 80163970 8CF80000 */  lw    $t8, ($a3)
.L80163974_ovl3:
/* 0C43B4 80163974 3C02800F */  lui   $v0, 0x800f
/* 0C43B8 80163978 3C01800E */  lui   $at, 0x800e
/* 0C43BC 8016397C 0018C880 */  sll   $t9, $t8, 2
/* 0C43C0 80163980 00591021 */  addu  $v0, $v0, $t9
/* 0C43C4 80163984 8C42A520 */  lw    $v0, -0x5ae0($v0)
/* 0C43C8 80163988 00280821 */  addu  $at, $at, $t0
/* 0C43CC 8016398C C42A25D0 */  lwc1  $f10, 0x25d0($at)
/* 0C43D0 80163990 8C4B004C */  lw    $t3, 0x4c($v0)
/* 0C43D4 80163994 3C01800E */  lui   $at, 0x800e
/* 0C43D8 80163998 00280821 */  addu  $at, $at, $t0
/* 0C43DC 8016399C E56A0004 */  swc1  $f10, 4($t3)
/* 0C43E0 801639A0 C4302790 */  lwc1  $f16, 0x2790($at)
/* 0C43E4 801639A4 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 0C43E8 801639A8 44819000 */  mtc1  $at, $f18
/* 0C43EC 801639AC 8C4D004C */  lw    $t5, 0x4c($v0)
/* 0C43F0 801639B0 3C01800E */  lui   $at, 0x800e
/* 0C43F4 801639B4 46128100 */  add.s $f4, $f16, $f18
/* 0C43F8 801639B8 00280821 */  addu  $at, $at, $t0
/* 0C43FC 801639BC 3C0E800E */  lui   $t6, 0x800e
/* 0C4400 801639C0 01C87021 */  addu  $t6, $t6, $t0
/* 0C4404 801639C4 E5A40008 */  swc1  $f4, 8($t5)
/* 0C4408 801639C8 C4262950 */  lwc1  $f6, 0x2950($at)
/* 0C440C 801639CC 8C4C004C */  lw    $t4, 0x4c($v0)
/* 0C4410 801639D0 27A40044 */  addiu $a0, $sp, 0x44
/* 0C4414 801639D4 E586000C */  swc1  $f6, 0xc($t4)
/* 0C4418 801639D8 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 0C441C 801639DC 8FA60040 */  lw    $a2, 0x40($sp)
/* 0C4420 801639E0 8DC50020 */  lw    $a1, 0x20($t6)
/* 0C4424 801639E4 0C02C9B6 */  jal   func_800B26D8
/* 0C4428 801639E8 AFA20038 */   sw    $v0, 0x38($sp)
/* 0C442C 801639EC 8FA20038 */  lw    $v0, 0x38($sp)
/* 0C4430 801639F0 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 0C4434 801639F4 3C0B8013 */  lui   $t3, %hi(D_8012E871) # $t3, 0x8013
/* 0C4438 801639F8 8C4F004C */  lw    $t7, 0x4c($v0)
/* 0C443C 801639FC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C4440 80163A00 3C058019 */  lui   $a1, %hi(D_80193920) # $a1, 0x8019
/* 0C4444 80163A04 E5E80010 */  swc1  $f8, 0x10($t7)
/* 0C4448 80163A08 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* 0C444C 80163A0C 8C58004C */  lw    $t8, 0x4c($v0)
/* 0C4450 80163A10 3C0F801A */  lui   $t7, %hi(D_80198540) # $t7, 0x801a
/* 0C4454 80163A14 25EF8540 */  addiu $t7, %lo(D_80198540) # addiu $t7, $t7, -0x7ac0
/* 0C4458 80163A18 E70A0014 */  swc1  $f10, 0x14($t8)
/* 0C445C 80163A1C C7B0004C */  lwc1  $f16, 0x4c($sp)
/* 0C4460 80163A20 8C59004C */  lw    $t9, 0x4c($v0)
/* 0C4464 80163A24 E7300018 */  swc1  $f16, 0x18($t9)
/* 0C4468 80163A28 916BE871 */  lbu   $t3, %lo(D_8012E871)($t3)
/* 0C446C 80163A2C 15600014 */  bnez  $t3, .L80163A80_ovl3
/* 0C4470 80163A30 00000000 */   nop   
/* 0C4474 80163A34 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C4478 80163A38 3C07800E */  lui   $a3, 0x800e
/* 0C447C 80163A3C 3C068015 */  lui   $a2, %hi(D_80155E58) # $a2, 0x8015
/* 0C4480 80163A40 8DA20000 */  lw    $v0, ($t5)
/* 0C4484 80163A44 24C65E58 */  addiu $a2, %lo(D_80155E58) # addiu $a2, $a2, 0x5e58
/* 0C4488 80163A48 24A53920 */  addiu $a1, %lo(D_80193920) # addiu $a1, $a1, 0x3920
/* 0C448C 80163A4C 00026140 */  sll   $t4, $v0, 5
/* 0C4490 80163A50 0002C080 */  sll   $t8, $v0, 2
/* 0C4494 80163A54 00F83821 */  addu  $a3, $a3, $t8
/* 0C4498 80163A58 258EF880 */  addiu $t6, $t4, -0x780
/* 0C449C 80163A5C 01CF2021 */  addu  $a0, $t6, $t7
/* 0C44A0 80163A60 0C055754 */  jal   func_80155D50_ovl3
/* 0C44A4 80163A64 8CE70D50 */   lw    $a3, 0xd50($a3)
/* 0C44A8 80163A68 10400005 */  beqz  $v0, .L80163A80_ovl3
/* 0C44AC 80163A6C 3C198013 */   lui   $t9, %hi(D_8012E871) # $t9, 0x8013
/* 0C44B0 80163A70 9339E871 */  lbu   $t9, %lo(D_8012E871)($t9)
/* 0C44B4 80163A74 3C018013 */  lui   $at, %hi(D_8012E871) # $at, 0x8013
/* 0C44B8 80163A78 272B0001 */  addiu $t3, $t9, 1
/* 0C44BC 80163A7C A02BE871 */  sb    $t3, %lo(D_8012E871)($at)
.L80163A80_ovl3:
/* 0C44C0 80163A80 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C44C4 80163A84 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C44C8 80163A88 3C05800E */  lui   $a1, 0x800e
/* 0C44CC 80163A8C 3C048019 */  lui   $a0, %hi(D_80191044) # $a0, 0x8019
/* 0C44D0 80163A90 8DAC0000 */  lw    $t4, ($t5)
/* 0C44D4 80163A94 24841044 */  addiu $a0, %lo(D_80191044) # addiu $a0, $a0, 0x1044
/* 0C44D8 80163A98 000C7080 */  sll   $t6, $t4, 2
/* 0C44DC 80163A9C 00AE2821 */  addu  $a1, $a1, $t6
/* 0C44E0 80163AA0 0C044681 */  jal   func_80111A04
/* 0C44E4 80163AA4 8CA50D50 */   lw    $a1, 0xd50($a1)
/* 0C44E8 80163AA8 0C044713 */  jal   func_80111C4C
/* 0C44EC 80163AAC 00402025 */   move  $a0, $v0
/* 0C44F0 80163AB0 8FBF0014 */  lw    $ra, 0x14($sp)
.L80163AB4_ovl3:
/* 0C44F4 80163AB4 27BD0050 */  addiu $sp, $sp, 0x50
/* 0C44F8 80163AB8 03E00008 */  jr    $ra
/* 0C44FC 80163ABC 00000000 */   nop   

.type func_801636A4_ovl3, @function
.size func_801636A4_ovl3, . - func_801636A4_ovl3

glabel func_80163AC0_ovl3
/* 0C4500 80163AC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C4504 80163AC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C4508 80163AC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C450C 80163ACC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C4510 80163AD0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C4514 80163AD4 8C6E0000 */  lw    $t6, ($v1)
/* 0C4518 80163AD8 3C018019 */  lui   $at, %hi(D_80197150) # $at, 0x8019
/* 0C451C 80163ADC C4207150 */  lwc1  $f0, %lo(D_80197150)($at)
/* 0C4520 80163AE0 3C01800E */  lui   $at, 0x800e
/* 0C4524 80163AE4 000E7880 */  sll   $t7, $t6, 2
/* 0C4528 80163AE8 002F0821 */  addu  $at, $at, $t7
/* 0C452C 80163AEC E4204550 */  swc1  $f0, 0x4550($at)
/* 0C4530 80163AF0 8C780000 */  lw    $t8, ($v1)
/* 0C4534 80163AF4 3C01800E */  lui   $at, 0x800e
/* 0C4538 80163AF8 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 0C453C 80163AFC 0018C880 */  sll   $t9, $t8, 2
/* 0C4540 80163B00 00390821 */  addu  $at, $at, $t9
/* 0C4544 80163B04 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C4548 80163B08 8C6B0000 */  lw    $t3, ($v1)
/* 0C454C 80163B0C 3C01800E */  lui   $at, 0x800e
/* 0C4550 80163B10 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 0C4554 80163B14 000B6080 */  sll   $t4, $t3, 2
/* 0C4558 80163B18 002C0821 */  addu  $at, $at, $t4
/* 0C455C 80163B1C E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C4560 80163B20 8C620000 */  lw    $v0, ($v1)
/* 0C4564 80163B24 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 0C4568 80163B28 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 0C456C 80163B2C 00021080 */  sll   $v0, $v0, 2
/* 0C4570 80163B30 00E26821 */  addu  $t5, $a3, $v0
/* 0C4574 80163B34 8DAE0000 */  lw    $t6, ($t5)
/* 0C4578 80163B38 0102C821 */  addu  $t9, $t0, $v0
/* 0C457C 80163B3C 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 0C4580 80163B40 000E7880 */  sll   $t7, $t6, 2
/* 0C4584 80163B44 010FC021 */  addu  $t8, $t0, $t7
/* 0C4588 80163B48 C7040000 */  lwc1  $f4, ($t8)
/* 0C458C 80163B4C 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 0C4590 80163B50 3C01800F */  lui   $at, 0x800f
/* 0C4594 80163B54 E7240000 */  swc1  $f4, ($t9)
/* 0C4598 80163B58 8C620000 */  lw    $v0, ($v1)
/* 0C459C 80163B5C 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosZArray) # $t2, 0x800e
/* 0C45A0 80163B60 254A2950 */  addiu $t2, %lo(gEntitiesNextPosZArray) # addiu $t2, $t2, 0x2950
/* 0C45A4 80163B64 00021080 */  sll   $v0, $v0, 2
/* 0C45A8 80163B68 00E25821 */  addu  $t3, $a3, $v0
/* 0C45AC 80163B6C 8D6C0000 */  lw    $t4, ($t3)
/* 0C45B0 80163B70 00220821 */  addu  $at, $at, $v0
/* 0C45B4 80163B74 C426C660 */  lwc1  $f6, -0x39a0($at)
/* 0C45B8 80163B78 000C6880 */  sll   $t5, $t4, 2
/* 0C45BC 80163B7C 012D7021 */  addu  $t6, $t1, $t5
/* 0C45C0 80163B80 C5C80000 */  lwc1  $f8, ($t6)
/* 0C45C4 80163B84 01227821 */  addu  $t7, $t1, $v0
/* 0C45C8 80163B88 3C040002 */  lui   $a0, (0x00020006 >> 16) # lui $a0, 2
/* 0C45CC 80163B8C 46083280 */  add.s $f10, $f6, $f8
/* 0C45D0 80163B90 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 0C45D4 80163B94 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 0C45D8 80163B98 34840006 */  ori   $a0, (0x00020006 & 0xFFFF) # ori $a0, $a0, 6
/* 0C45DC 80163B9C E5EA0000 */  swc1  $f10, ($t7)
/* 0C45E0 80163BA0 8C620000 */  lw    $v0, ($v1)
/* 0C45E4 80163BA4 24060010 */  li    $a2, 16
/* 0C45E8 80163BA8 00021080 */  sll   $v0, $v0, 2
/* 0C45EC 80163BAC 00E2C021 */  addu  $t8, $a3, $v0
/* 0C45F0 80163BB0 8F190000 */  lw    $t9, ($t8)
/* 0C45F4 80163BB4 01426821 */  addu  $t5, $t2, $v0
/* 0C45F8 80163BB8 00195880 */  sll   $t3, $t9, 2
/* 0C45FC 80163BBC 014B6021 */  addu  $t4, $t2, $t3
/* 0C4600 80163BC0 C5900000 */  lwc1  $f16, ($t4)
/* 0C4604 80163BC4 0C02A619 */  jal   func_800A9864
/* 0C4608 80163BC8 E5B00000 */   swc1  $f16, ($t5)
/* 0C460C 80163BCC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C4610 80163BD0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C4614 80163BD4 3C19800F */  lui   $t9, 0x800f
/* 0C4618 80163BD8 3C040002 */  lui   $a0, 2
/* 0C461C 80163BDC 8DCF0000 */  lw    $t7, ($t6)
/* 0C4620 80163BE0 000FC080 */  sll   $t8, $t7, 2
/* 0C4624 80163BE4 0338C821 */  addu  $t9, $t9, $t8
/* 0C4628 80163BE8 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0C462C 80163BEC 17200009 */  bnez  $t9, .L80163C14_ovl3
/* 0C4630 80163BF0 00000000 */   nop   
/* 0C4634 80163BF4 3C040002 */  lui   $a0, (0x0002000F >> 16) # lui $a0, 2
/* 0C4638 80163BF8 0C02A806 */  jal   func_800AA018
/* 0C463C 80163BFC 3484000F */   ori   $a0, (0x0002000F & 0xFFFF) # ori $a0, $a0, 0xf
/* 0C4640 80163C00 3C040002 */  lui   $a0, (0x0002000B >> 16) # lui $a0, 2
/* 0C4644 80163C04 0C02A855 */  jal   func_800AA154
/* 0C4648 80163C08 3484000E */   ori   $a0, (0x0002000E & 0xFFFF) # ori $a0, $a0, 0xe
/* 0C464C 80163C0C 10000006 */  b     .L80163C28_ovl3
/* 0C4650 80163C10 00000000 */   nop   
.L80163C14_ovl3:
/* 0C4654 80163C14 0C02A806 */  jal   func_800AA018
/* 0C4658 80163C18 3484000B */   ori   $a0, (0x0002000B & 0xFFFF) # ori $a0, $a0, 0xb
/* 0C465C 80163C1C 3C040002 */  lui   $a0, (0x0002000A >> 16) # lui $a0, 2
/* 0C4660 80163C20 0C02A855 */  jal   func_800AA154
/* 0C4664 80163C24 3484000A */   ori   $a0, (0x0002000A & 0xFFFF) # ori $a0, $a0, 0xa
.L80163C28_ovl3:
/* 0C4668 80163C28 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C466C 80163C2C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C4670 80163C30 0C02C640 */  jal   func_800B1900
/* 0C4674 80163C34 95640002 */   lhu   $a0, 2($t3)
/* 0C4678 80163C38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C467C 80163C3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C4680 80163C40 03E00008 */  jr    $ra
/* 0C4684 80163C44 00000000 */   nop   

.type func_80163AC0_ovl3, @function
.size func_80163AC0_ovl3, . - func_80163AC0_ovl3

glabel func_80163C48_ovl3
/* 0C4688 80163C48 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C468C 80163C4C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C4690 80163C50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C4694 80163C54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C4698 80163C58 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C469C 80163C5C 8C4E0000 */  lw    $t6, ($v0)
/* 0C46A0 80163C60 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0C46A4 80163C64 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0C46A8 80163C68 C4640144 */  lwc1  $f4, 0x144($v1)
/* 0C46AC 80163C6C 3C01800E */  lui   $at, 0x800e
/* 0C46B0 80163C70 000E7880 */  sll   $t7, $t6, 2
/* 0C46B4 80163C74 002F0821 */  addu  $at, $at, $t7
/* 0C46B8 80163C78 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0C46BC 80163C7C 8C580000 */  lw    $t8, ($v0)
/* 0C46C0 80163C80 C4660148 */  lwc1  $f6, 0x148($v1)
/* 0C46C4 80163C84 3C01800E */  lui   $at, 0x800e
/* 0C46C8 80163C88 0018C880 */  sll   $t9, $t8, 2
/* 0C46CC 80163C8C 00390821 */  addu  $at, $at, $t9
/* 0C46D0 80163C90 E4262790 */  swc1  $f6, 0x2790($at)
/* 0C46D4 80163C94 8C480000 */  lw    $t0, ($v0)
/* 0C46D8 80163C98 C468014C */  lwc1  $f8, 0x14c($v1)
/* 0C46DC 80163C9C 3C01800E */  lui   $at, 0x800e
/* 0C46E0 80163CA0 00084880 */  sll   $t1, $t0, 2
/* 0C46E4 80163CA4 00290821 */  addu  $at, $at, $t1
/* 0C46E8 80163CA8 E4282950 */  swc1  $f8, 0x2950($at)
/* 0C46EC 80163CAC 8C6A00A0 */  lw    $t2, 0xa0($v1)
/* 0C46F0 80163CB0 2401000F */  li    $at, 15
/* 0C46F4 80163CB4 3C040002 */  lui   $a0, (0x00020005 >> 16) # lui $a0, 2
/* 0C46F8 80163CB8 1141000F */  beq   $t2, $at, .L80163CF8_ovl3
/* 0C46FC 80163CBC 34840005 */   ori   $a0, (0x00020005 & 0xFFFF) # ori $a0, $a0, 5
/* 0C4700 80163CC0 3C040002 */  lui   $a0, (0x00020004 >> 16) # lui $a0, 2
/* 0C4704 80163CC4 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 0C4708 80163CC8 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 0C470C 80163CCC 34840004 */  ori   $a0, (0x00020004 & 0xFFFF) # ori $a0, $a0, 4
/* 0C4710 80163CD0 0C02A619 */  jal   func_800A9864
/* 0C4714 80163CD4 24060010 */   li    $a2, 16
/* 0C4718 80163CD8 3C040002 */  lui   $a0, (0x00020004 >> 16) # lui $a0, 2
/* 0C471C 80163CDC 0C02A806 */  jal   func_800AA018
/* 0C4720 80163CE0 34840004 */   ori   $a0, (0x00020004 & 0xFFFF) # ori $a0, $a0, 4
/* 0C4724 80163CE4 3C040002 */  lui   $a0, (0x00020003 >> 16) # lui $a0, 2
/* 0C4728 80163CE8 0C02A855 */  jal   func_800AA154
/* 0C472C 80163CEC 34840003 */   ori   $a0, (0x00020003 & 0xFFFF) # ori $a0, $a0, 3
/* 0C4730 80163CF0 1000001C */  b     .L80163D64_ovl3
/* 0C4734 80163CF4 00000000 */   nop   
.L80163CF8_ovl3:
/* 0C4738 80163CF8 8C4B0000 */  lw    $t3, ($v0)
/* 0C473C 80163CFC 3C018019 */  lui   $at, %hi(D_80197154) # $at, 0x8019
/* 0C4740 80163D00 C4207154 */  lwc1  $f0, %lo(D_80197154)($at)
/* 0C4744 80163D04 3C01800E */  lui   $at, 0x800e
/* 0C4748 80163D08 000B6080 */  sll   $t4, $t3, 2
/* 0C474C 80163D0C 002C0821 */  addu  $at, $at, $t4
/* 0C4750 80163D10 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C4754 80163D14 8C4D0000 */  lw    $t5, ($v0)
/* 0C4758 80163D18 3C01800E */  lui   $at, 0x800e
/* 0C475C 80163D1C 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 0C4760 80163D20 000D7080 */  sll   $t6, $t5, 2
/* 0C4764 80163D24 002E0821 */  addu  $at, $at, $t6
/* 0C4768 80163D28 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C476C 80163D2C 8C4F0000 */  lw    $t7, ($v0)
/* 0C4770 80163D30 3C01800E */  lui   $at, 0x800e
/* 0C4774 80163D34 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 0C4778 80163D38 000FC080 */  sll   $t8, $t7, 2
/* 0C477C 80163D3C 00380821 */  addu  $at, $at, $t8
/* 0C4780 80163D40 24060010 */  li    $a2, 16
/* 0C4784 80163D44 0C02A619 */  jal   func_800A9864
/* 0C4788 80163D48 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C478C 80163D4C 3C040002 */  lui   $a0, (0x00020008 >> 16) # lui $a0, 2
/* 0C4790 80163D50 0C02A806 */  jal   func_800AA018
/* 0C4794 80163D54 34840008 */   ori   $a0, (0x00020008 & 0xFFFF) # ori $a0, $a0, 8
/* 0C4798 80163D58 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0C479C 80163D5C 0C02A855 */  jal   func_800AA154
/* 0C47A0 80163D60 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
.L80163D64_ovl3:
/* 0C47A4 80163D64 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C47A8 80163D68 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C47AC 80163D6C 0C02C640 */  jal   func_800B1900
/* 0C47B0 80163D70 97240002 */   lhu   $a0, 2($t9)
/* 0C47B4 80163D74 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C47B8 80163D78 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C47BC 80163D7C 03E00008 */  jr    $ra
/* 0C47C0 80163D80 00000000 */   nop   

.type func_80163C48_ovl3, @function
.size func_80163C48_ovl3, . - func_80163C48_ovl3

glabel func_80163D84_ovl3
/* 0C47C4 80163D84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C47C8 80163D88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C47CC 80163D8C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C47D0 80163D90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C47D4 80163D94 8C4F0000 */  lw    $t7, ($v0)
/* 0C47D8 80163D98 3C0E800B */  lui   $t6, %hi(D_800B491C) # $t6, 0x800b
/* 0C47DC 80163D9C 3C01800E */  lui   $at, 0x800e
/* 0C47E0 80163DA0 000FC080 */  sll   $t8, $t7, 2
/* 0C47E4 80163DA4 00380821 */  addu  $at, $at, $t8
/* 0C47E8 80163DA8 25CE491C */  addiu $t6, %lo(D_800B491C) # addiu $t6, $t6, 0x491c
/* 0C47EC 80163DAC AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C47F0 80163DB0 8C590000 */  lw    $t9, ($v0)
/* 0C47F4 80163DB4 00803825 */  move  $a3, $a0
/* 0C47F8 80163DB8 3C04800E */  lui   $a0, 0x800e
/* 0C47FC 80163DBC 00194080 */  sll   $t0, $t9, 2
/* 0C4800 80163DC0 00882021 */  addu  $a0, $a0, $t0
/* 0C4804 80163DC4 3C05800B */  lui   $a1, %hi(func_800B1434) # $a1, 0x800b
/* 0C4808 80163DC8 24A51434 */  addiu $a1, %lo(func_800B1434) # addiu $a1, $a1, 0x1434
/* 0C480C 80163DCC 8C84EC10 */  lw    $a0, -0x13f0($a0)
/* 0C4810 80163DD0 0C02C7DA */  jal   func_800B1F68
/* 0C4814 80163DD4 AFA70018 */   sw    $a3, 0x18($sp)
/* 0C4818 80163DD8 3C040001 */  lui   $a0, (0x000100D7 >> 16) # lui $a0, 1
/* 0C481C 80163DDC 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 0C4820 80163DE0 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 0C4824 80163DE4 348400D7 */  ori   $a0, (0x000100D7 & 0xFFFF) # ori $a0, $a0, 0xd7
/* 0C4828 80163DE8 0C02A619 */  jal   func_800A9864
/* 0C482C 80163DEC 24060010 */   li    $a2, 16
/* 0C4830 80163DF0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C4834 80163DF4 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 0C4838 80163DF8 8C490000 */  lw    $t1, ($v0)
/* 0C483C 80163DFC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C4840 80163E00 44811000 */  mtc1  $at, $f2
/* 0C4844 80163E04 8D2A0000 */  lw    $t2, ($t1)
/* 0C4848 80163E08 8FA70018 */  lw    $a3, 0x18($sp)
/* 0C484C 80163E0C 3C01800E */  lui   $at, 0x800e
/* 0C4850 80163E10 000A5880 */  sll   $t3, $t2, 2
/* 0C4854 80163E14 002B0821 */  addu  $at, $at, $t3
/* 0C4858 80163E18 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0C485C 80163E1C 8CEC003C */  lw    $t4, 0x3c($a3)
/* 0C4860 80163E20 3C01800E */  lui   $at, 0x800e
/* 0C4864 80163E24 44800000 */  mtc1  $zero, $f0
/* 0C4868 80163E28 E584001C */  swc1  $f4, 0x1c($t4)
/* 0C486C 80163E2C 8C4D0000 */  lw    $t5, ($v0)
/* 0C4870 80163E30 8CF8003C */  lw    $t8, 0x3c($a3)
/* 0C4874 80163E34 3C040001 */  lui   $a0, (0x00010611 >> 16) # lui $a0, 1
/* 0C4878 80163E38 8DAF0000 */  lw    $t7, ($t5)
/* 0C487C 80163E3C 34840611 */  ori   $a0, (0x00010611 & 0xFFFF) # ori $a0, $a0, 0x611
/* 0C4880 80163E40 000F7080 */  sll   $t6, $t7, 2
/* 0C4884 80163E44 002E0821 */  addu  $at, $at, $t6
/* 0C4888 80163E48 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0C488C 80163E4C 3C01800E */  lui   $at, 0x800e
/* 0C4890 80163E50 E7060020 */  swc1  $f6, 0x20($t8)
/* 0C4894 80163E54 8C590000 */  lw    $t9, ($v0)
/* 0C4898 80163E58 8CEA003C */  lw    $t2, 0x3c($a3)
/* 0C489C 80163E5C 8F280000 */  lw    $t0, ($t9)
/* 0C48A0 80163E60 00084880 */  sll   $t1, $t0, 2
/* 0C48A4 80163E64 00290821 */  addu  $at, $at, $t1
/* 0C48A8 80163E68 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0C48AC 80163E6C E5480024 */  swc1  $f8, 0x24($t2)
/* 0C48B0 80163E70 8CEB003C */  lw    $t3, 0x3c($a3)
/* 0C48B4 80163E74 E5600030 */  swc1  $f0, 0x30($t3)
/* 0C48B8 80163E78 8CEC003C */  lw    $t4, 0x3c($a3)
/* 0C48BC 80163E7C E5800034 */  swc1  $f0, 0x34($t4)
/* 0C48C0 80163E80 8CED003C */  lw    $t5, 0x3c($a3)
/* 0C48C4 80163E84 E5A00038 */  swc1  $f0, 0x38($t5)
/* 0C48C8 80163E88 8CEF003C */  lw    $t7, 0x3c($a3)
/* 0C48CC 80163E8C E5E20040 */  swc1  $f2, 0x40($t7)
/* 0C48D0 80163E90 8CEE003C */  lw    $t6, 0x3c($a3)
/* 0C48D4 80163E94 E5C20044 */  swc1  $f2, 0x44($t6)
/* 0C48D8 80163E98 8CF8003C */  lw    $t8, 0x3c($a3)
/* 0C48DC 80163E9C 0C02A806 */  jal   func_800AA018
/* 0C48E0 80163EA0 E7020048 */   swc1  $f2, 0x48($t8)
/* 0C48E4 80163EA4 3C040001 */  lui   $a0, (0x00010610 >> 16) # lui $a0, 1
/* 0C48E8 80163EA8 0C02A855 */  jal   func_800AA154
/* 0C48EC 80163EAC 34840610 */   ori   $a0, (0x00010610 & 0xFFFF) # ori $a0, $a0, 0x610
/* 0C48F0 80163EB0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C48F4 80163EB4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C48F8 80163EB8 0C02C640 */  jal   func_800B1900
/* 0C48FC 80163EBC 97240002 */   lhu   $a0, 2($t9)
/* 0C4900 80163EC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C4904 80163EC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C4908 80163EC8 03E00008 */  jr    $ra
/* 0C490C 80163ECC 00000000 */   nop   

.type func_80163D84_ovl3, @function
.size func_80163D84_ovl3, . - func_80163D84_ovl3

glabel func_80163ED0_ovl3
/* 0C4910 80163ED0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C4914 80163ED4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C4918 80163ED8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C491C 80163EDC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C4920 80163EE0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C4924 80163EE4 8C6E0000 */  lw    $t6, ($v1)
/* 0C4928 80163EE8 3C018019 */  lui   $at, %hi(D_80197158) # $at, 0x8019
/* 0C492C 80163EEC C4207158 */  lwc1  $f0, %lo(D_80197158)($at)
/* 0C4930 80163EF0 3C01800E */  lui   $at, 0x800e
/* 0C4934 80163EF4 000E7880 */  sll   $t7, $t6, 2
/* 0C4938 80163EF8 002F0821 */  addu  $at, $at, $t7
/* 0C493C 80163EFC E4204550 */  swc1  $f0, 0x4550($at)
/* 0C4940 80163F00 8C780000 */  lw    $t8, ($v1)
/* 0C4944 80163F04 3C01800E */  lui   $at, 0x800e
/* 0C4948 80163F08 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 0C494C 80163F0C 0018C880 */  sll   $t9, $t8, 2
/* 0C4950 80163F10 00390821 */  addu  $at, $at, $t9
/* 0C4954 80163F14 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C4958 80163F18 8C6B0000 */  lw    $t3, ($v1)
/* 0C495C 80163F1C 3C01800E */  lui   $at, 0x800e
/* 0C4960 80163F20 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 0C4964 80163F24 000B6080 */  sll   $t4, $t3, 2
/* 0C4968 80163F28 002C0821 */  addu  $at, $at, $t4
/* 0C496C 80163F2C E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C4970 80163F30 8C620000 */  lw    $v0, ($v1)
/* 0C4974 80163F34 3C08800E */  lui   $t0, %hi(gEntitiesNextPosXArray) # $t0, 0x800e
/* 0C4978 80163F38 250825D0 */  addiu $t0, %lo(gEntitiesNextPosXArray) # addiu $t0, $t0, 0x25d0
/* 0C497C 80163F3C 00021080 */  sll   $v0, $v0, 2
/* 0C4980 80163F40 00E26821 */  addu  $t5, $a3, $v0
/* 0C4984 80163F44 8DAE0000 */  lw    $t6, ($t5)
/* 0C4988 80163F48 0102C821 */  addu  $t9, $t0, $v0
/* 0C498C 80163F4C 3C09800E */  lui   $t1, %hi(gEntitiesNextPosYArray) # $t1, 0x800e
/* 0C4990 80163F50 000E7880 */  sll   $t7, $t6, 2
/* 0C4994 80163F54 010FC021 */  addu  $t8, $t0, $t7
/* 0C4998 80163F58 C7040000 */  lwc1  $f4, ($t8)
/* 0C499C 80163F5C 25292790 */  addiu $t1, %lo(gEntitiesNextPosYArray) # addiu $t1, $t1, 0x2790
/* 0C49A0 80163F60 3C01800F */  lui   $at, 0x800f
/* 0C49A4 80163F64 E7240000 */  swc1  $f4, ($t9)
/* 0C49A8 80163F68 8C620000 */  lw    $v0, ($v1)
/* 0C49AC 80163F6C 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosZArray) # $t2, 0x800e
/* 0C49B0 80163F70 254A2950 */  addiu $t2, %lo(gEntitiesNextPosZArray) # addiu $t2, $t2, 0x2950
/* 0C49B4 80163F74 00021080 */  sll   $v0, $v0, 2
/* 0C49B8 80163F78 00E25821 */  addu  $t3, $a3, $v0
/* 0C49BC 80163F7C 8D6C0000 */  lw    $t4, ($t3)
/* 0C49C0 80163F80 00220821 */  addu  $at, $at, $v0
/* 0C49C4 80163F84 C426C660 */  lwc1  $f6, -0x39a0($at)
/* 0C49C8 80163F88 000C6880 */  sll   $t5, $t4, 2
/* 0C49CC 80163F8C 012D7021 */  addu  $t6, $t1, $t5
/* 0C49D0 80163F90 C5C80000 */  lwc1  $f8, ($t6)
/* 0C49D4 80163F94 01227821 */  addu  $t7, $t1, $v0
/* 0C49D8 80163F98 3C040002 */  lui   $a0, (0x00020006 >> 16) # lui $a0, 2
/* 0C49DC 80163F9C 46083280 */  add.s $f10, $f6, $f8
/* 0C49E0 80163FA0 3C050001 */  lui   $a1, (0x0001869F >> 16) # lui $a1, 1
/* 0C49E4 80163FA4 34A5869F */  ori   $a1, (0x0001869F & 0xFFFF) # ori $a1, $a1, 0x869f
/* 0C49E8 80163FA8 34840006 */  ori   $a0, (0x00020006 & 0xFFFF) # ori $a0, $a0, 6
/* 0C49EC 80163FAC E5EA0000 */  swc1  $f10, ($t7)
/* 0C49F0 80163FB0 8C620000 */  lw    $v0, ($v1)
/* 0C49F4 80163FB4 24060010 */  li    $a2, 16
/* 0C49F8 80163FB8 00021080 */  sll   $v0, $v0, 2
/* 0C49FC 80163FBC 00E2C021 */  addu  $t8, $a3, $v0
/* 0C4A00 80163FC0 8F190000 */  lw    $t9, ($t8)
/* 0C4A04 80163FC4 01426821 */  addu  $t5, $t2, $v0
/* 0C4A08 80163FC8 00195880 */  sll   $t3, $t9, 2
/* 0C4A0C 80163FCC 014B6021 */  addu  $t4, $t2, $t3
/* 0C4A10 80163FD0 C5900000 */  lwc1  $f16, ($t4)
/* 0C4A14 80163FD4 0C02A619 */  jal   func_800A9864
/* 0C4A18 80163FD8 E5B00000 */   swc1  $f16, ($t5)
/* 0C4A1C 80163FDC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C4A20 80163FE0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C4A24 80163FE4 3C19800F */  lui   $t9, 0x800f
/* 0C4A28 80163FE8 3C040002 */  lui   $a0, 2
/* 0C4A2C 80163FEC 8DCF0000 */  lw    $t7, ($t6)
/* 0C4A30 80163FF0 000FC080 */  sll   $t8, $t7, 2
/* 0C4A34 80163FF4 0338C821 */  addu  $t9, $t9, $t8
/* 0C4A38 80163FF8 8F39C2E0 */  lw    $t9, -0x3d20($t9)
/* 0C4A3C 80163FFC 17200009 */  bnez  $t9, .L80164024_ovl3
/* 0C4A40 80164000 00000000 */   nop   
/* 0C4A44 80164004 3C040002 */  lui   $a0, (0x0002000D >> 16) # lui $a0, 2
/* 0C4A48 80164008 0C02A806 */  jal   func_800AA018
/* 0C4A4C 8016400C 3484000D */   ori   $a0, (0x0002000D & 0xFFFF) # ori $a0, $a0, 0xd
/* 0C4A50 80164010 3C040002 */  lui   $a0, (0x0002000B >> 16) # lui $a0, 2
/* 0C4A54 80164014 0C02A855 */  jal   func_800AA154
/* 0C4A58 80164018 3484000C */   ori   $a0, (0x0002000C & 0xFFFF) # ori $a0, $a0, 0xc
/* 0C4A5C 8016401C 10000006 */  b     .L80164038_ovl3
/* 0C4A60 80164020 00000000 */   nop   
.L80164024_ovl3:
/* 0C4A64 80164024 0C02A806 */  jal   func_800AA018
/* 0C4A68 80164028 3484000B */   ori   $a0, (0x0002000B & 0xFFFF) # ori $a0, $a0, 0xb
/* 0C4A6C 8016402C 3C040002 */  lui   $a0, (0x0002000A >> 16) # lui $a0, 2
/* 0C4A70 80164030 0C02A855 */  jal   func_800AA154
/* 0C4A74 80164034 3484000A */   ori   $a0, (0x0002000A & 0xFFFF) # ori $a0, $a0, 0xa
.L80164038_ovl3:
/* 0C4A78 80164038 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C4A7C 8016403C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C4A80 80164040 0C02C640 */  jal   func_800B1900
/* 0C4A84 80164044 95640002 */   lhu   $a0, 2($t3)
/* 0C4A88 80164048 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C4A8C 8016404C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C4A90 80164050 03E00008 */  jr    $ra
/* 0C4A94 80164054 00000000 */   nop   

.type func_80163ED0_ovl3, @function
.size func_80163ED0_ovl3, . - func_80163ED0_ovl3

glabel func_80164058_ovl3
/* 0C4A98 80164058 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C4A9C 8016405C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C4AA0 80164060 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 0C4AA4 80164064 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C4AA8 80164068 AFA40120 */  sw    $a0, 0x120($sp)
/* 0C4AAC 8016406C 8C4F0000 */  lw    $t7, ($v0)
/* 0C4AB0 80164070 3C018019 */  lui   $at, %hi(D_8019715C) # $at, 0x8019
/* 0C4AB4 80164074 C420715C */  lwc1  $f0, %lo(D_8019715C)($at)
/* 0C4AB8 80164078 3C01800F */  lui   $at, 0x800f
/* 0C4ABC 8016407C 000FC080 */  sll   $t8, $t7, 2
/* 0C4AC0 80164080 00380821 */  addu  $at, $at, $t8
/* 0C4AC4 80164084 27AE0020 */  addiu $t6, $sp, 0x20
/* 0C4AC8 80164088 AC2E98E0 */  sw    $t6, -0x6720($at)
/* 0C4ACC 8016408C 8C480000 */  lw    $t0, ($v0)
/* 0C4AD0 80164090 3C01800E */  lui   $at, 0x800e
/* 0C4AD4 80164094 3C198016 */  lui   $t9, %hi(D_80164130) # $t9, 0x8016
/* 0C4AD8 80164098 00084880 */  sll   $t1, $t0, 2
/* 0C4ADC 8016409C 00290821 */  addu  $at, $at, $t1
/* 0C4AE0 801640A0 27394130 */  addiu $t9, %lo(D_80164130) # addiu $t9, $t9, 0x4130
/* 0C4AE4 801640A4 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C4AE8 801640A8 8C4A0000 */  lw    $t2, ($v0)
/* 0C4AEC 801640AC 3C01800E */  lui   $at, 0x800e
/* 0C4AF0 801640B0 3C040002 */  lui   $a0, (0x00020042 >> 16) # lui $a0, 2
/* 0C4AF4 801640B4 000A5880 */  sll   $t3, $t2, 2
/* 0C4AF8 801640B8 002B0821 */  addu  $at, $at, $t3
/* 0C4AFC 801640BC E4204550 */  swc1  $f0, 0x4550($at)
/* 0C4B00 801640C0 8C4C0000 */  lw    $t4, ($v0)
/* 0C4B04 801640C4 3C01800E */  lui   $at, 0x800e
/* 0C4B08 801640C8 34840042 */  ori   $a0, (0x00020042 & 0xFFFF) # ori $a0, $a0, 0x42
/* 0C4B0C 801640CC 000C6880 */  sll   $t5, $t4, 2
/* 0C4B10 801640D0 002D0821 */  addu  $at, $at, $t5
/* 0C4B14 801640D4 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C4B18 801640D8 8C4F0000 */  lw    $t7, ($v0)
/* 0C4B1C 801640DC 3C01800E */  lui   $at, 0x800e
/* 0C4B20 801640E0 24050022 */  li    $a1, 34
/* 0C4B24 801640E4 000F7080 */  sll   $t6, $t7, 2
/* 0C4B28 801640E8 002E0821 */  addu  $at, $at, $t6
/* 0C4B2C 801640EC 24060010 */  li    $a2, 16
/* 0C4B30 801640F0 0C02A619 */  jal   func_800A9864
/* 0C4B34 801640F4 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C4B38 801640F8 3C040002 */  lui   $a0, (0x00020292 >> 16) # lui $a0, 2
/* 0C4B3C 801640FC 3C050002 */  lui   $a1, (0x00020293 >> 16) # lui $a1, 2
/* 0C4B40 80164100 34A50293 */  ori   $a1, (0x00020293 & 0xFFFF) # ori $a1, $a1, 0x293
/* 0C4B44 80164104 34840292 */  ori   $a0, (0x00020292 & 0xFFFF) # ori $a0, $a0, 0x292
/* 0C4B48 80164108 0C048C3A */  jal   func_801230E8
/* 0C4B4C 8016410C 24060001 */   li    $a2, 1
/* 0C4B50 80164110 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C4B54 80164114 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C4B58 80164118 0C02C640 */  jal   func_800B1900
/* 0C4B5C 8016411C 97040002 */   lhu   $a0, 2($t8)
/* 0C4B60 80164120 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C4B64 80164124 27BD0120 */  addiu $sp, $sp, 0x120
/* 0C4B68 80164128 03E00008 */  jr    $ra
/* 0C4B6C 8016412C 00000000 */   nop   

.type func_80164058_ovl3, @function
.size func_80164058_ovl3, . - func_80164058_ovl3

glabel func_80164130_ovl3
/* 0C4B70 80164130 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C4B74 80164134 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C4B78 80164138 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0C4B7C 8016413C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0C4B80 80164140 8E220000 */  lw    $v0, ($s1)
/* 0C4B84 80164144 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C4B88 80164148 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C4B8C 8016414C AFA40028 */  sw    $a0, 0x28($sp)
/* 0C4B90 80164150 8C4E0000 */  lw    $t6, ($v0)
/* 0C4B94 80164154 44802000 */  mtc1  $zero, $f4
/* 0C4B98 80164158 3C01800E */  lui   $at, 0x800e
/* 0C4B9C 8016415C 000E7880 */  sll   $t7, $t6, 2
/* 0C4BA0 80164160 002F0821 */  addu  $at, $at, $t7
/* 0C4BA4 80164164 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C4BA8 80164168 8C480000 */  lw    $t0, ($v0)
/* 0C4BAC 8016416C 3C18800E */  lui   $t8, 0x800e
/* 0C4BB0 80164170 3C04800F */  lui   $a0, 0x800f
/* 0C4BB4 80164174 00081880 */  sll   $v1, $t0, 2
/* 0C4BB8 80164178 0303C021 */  addu  $t8, $t8, $v1
/* 0C4BBC 8016417C 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 0C4BC0 80164180 00832021 */  addu  $a0, $a0, $v1
/* 0C4BC4 80164184 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C4BC8 80164188 8F190004 */  lw    $t9, 4($t8)
/* 0C4BCC 8016418C 24010005 */  li    $at, 5
/* 0C4BD0 80164190 3C108019 */  lui   $s0, %hi(D_80193C40) # $s0, 0x8019
/* 0C4BD4 80164194 C7260044 */  lwc1  $f6, 0x44($t9)
/* 0C4BD8 80164198 26103C40 */  addiu $s0, %lo(D_80193C40) # addiu $s0, $s0, 0x3c40
/* 0C4BDC 8016419C 10810006 */  beq   $a0, $at, .L801641B8_ovl3
/* 0C4BE0 801641A0 E7A60024 */   swc1  $f6, 0x24($sp)
/* 0C4BE4 801641A4 24010020 */  li    $at, 32
/* 0C4BE8 801641A8 10810009 */  beq   $a0, $at, .L801641D0_ovl3
/* 0C4BEC 801641AC 3C108019 */   lui   $s0, 0x8019
/* 0C4BF0 801641B0 1000000E */  b     .L801641EC_ovl3
/* 0C4BF4 801641B4 3C108019 */   lui   $s0, %hi(D_80193C4C) # $s0, 0x8019
.L801641B8_ovl3:
/* 0C4BF8 801641B8 3C048019 */  lui   $a0, %hi(D_80191268) # $a0, 0x8019
/* 0C4BFC 801641BC 24841268 */  addiu $a0, %lo(D_80191268) # addiu $a0, $a0, 0x1268
/* 0C4C00 801641C0 0C044681 */  jal   func_80111A04
/* 0C4C04 801641C4 01002825 */   move  $a1, $t0
/* 0C4C08 801641C8 1000000E */  b     .L80164204_ovl3
/* 0C4C0C 801641CC 00402025 */   move  $a0, $v0
.L801641D0_ovl3:
/* 0C4C10 801641D0 3C048019 */  lui   $a0, %hi(D_80191288) # $a0, 0x8019
/* 0C4C14 801641D4 26103C4C */  addiu $s0, %lo(D_80193C4C) # addiu $s0, $s0, 0x3c4c
/* 0C4C18 801641D8 24841288 */  addiu $a0, %lo(D_80191288) # addiu $a0, $a0, 0x1288
/* 0C4C1C 801641DC 0C044681 */  jal   func_80111A04
/* 0C4C20 801641E0 01002825 */   move  $a1, $t0
/* 0C4C24 801641E4 10000007 */  b     .L80164204_ovl3
/* 0C4C28 801641E8 00402025 */   move  $a0, $v0
.L801641EC_ovl3:
/* 0C4C2C 801641EC 3C048019 */  lui   $a0, %hi(D_801912A8) # $a0, 0x8019
/* 0C4C30 801641F0 26103C58 */  addiu $s0, $s0, 0x3c58
/* 0C4C34 801641F4 248412A8 */  addiu $a0, %lo(D_801912A8) # addiu $a0, $a0, 0x12a8
/* 0C4C38 801641F8 0C044681 */  jal   func_80111A04
/* 0C4C3C 801641FC 01002825 */   move  $a1, $t0
/* 0C4C40 80164200 00402025 */  move  $a0, $v0
.L80164204_ovl3:
/* 0C4C44 80164204 8C820020 */  lw    $v0, 0x20($a0)
/* 0C4C48 80164208 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 0C4C4C 8016420C 3C01800E */  lui   $at, 0x800e
/* 0C4C50 80164210 C4480018 */  lwc1  $f8, 0x18($v0)
/* 0C4C54 80164214 460A4402 */  mul.s $f16, $f8, $f10
/* 0C4C58 80164218 E4500018 */  swc1  $f16, 0x18($v0)
/* 0C4C5C 8016421C 8E290000 */  lw    $t1, ($s1)
/* 0C4C60 80164220 8C8C0020 */  lw    $t4, 0x20($a0)
/* 0C4C64 80164224 8D2A0000 */  lw    $t2, ($t1)
/* 0C4C68 80164228 000A5880 */  sll   $t3, $t2, 2
/* 0C4C6C 8016422C 002B0821 */  addu  $at, $at, $t3
/* 0C4C70 80164230 C43225D0 */  lwc1  $f18, 0x25d0($at)
/* 0C4C74 80164234 3C01800E */  lui   $at, 0x800e
/* 0C4C78 80164238 E592000C */  swc1  $f18, 0xc($t4)
/* 0C4C7C 8016423C 8E2D0000 */  lw    $t5, ($s1)
/* 0C4C80 80164240 8C980020 */  lw    $t8, 0x20($a0)
/* 0C4C84 80164244 8DAE0000 */  lw    $t6, ($t5)
/* 0C4C88 80164248 000E7880 */  sll   $t7, $t6, 2
/* 0C4C8C 8016424C 002F0821 */  addu  $at, $at, $t7
/* 0C4C90 80164250 C4242790 */  lwc1  $f4, 0x2790($at)
/* 0C4C94 80164254 3C01800E */  lui   $at, 0x800e
/* 0C4C98 80164258 E7040010 */  swc1  $f4, 0x10($t8)
/* 0C4C9C 8016425C 8E390000 */  lw    $t9, ($s1)
/* 0C4CA0 80164260 8C8B0020 */  lw    $t3, 0x20($a0)
/* 0C4CA4 80164264 8F290000 */  lw    $t1, ($t9)
/* 0C4CA8 80164268 00095080 */  sll   $t2, $t1, 2
/* 0C4CAC 8016426C 002A0821 */  addu  $at, $at, $t2
/* 0C4CB0 80164270 C4262950 */  lwc1  $f6, 0x2950($at)
/* 0C4CB4 80164274 0C044713 */  jal   func_80111C4C
/* 0C4CB8 80164278 E5660014 */   swc1  $f6, 0x14($t3)
/* 0C4CBC 8016427C 8E220000 */  lw    $v0, ($s1)
/* 0C4CC0 80164280 3C01800F */  lui   $at, 0x800f
/* 0C4CC4 80164284 3C08800F */  lui   $t0, 0x800f
/* 0C4CC8 80164288 8C430000 */  lw    $v1, ($v0)
/* 0C4CCC 8016428C 3C048019 */  lui   $a0, %hi(D_80193B40) # $a0, 0x8019
/* 0C4CD0 80164290 24843B40 */  addiu $a0, %lo(D_80193B40) # addiu $a0, $a0, 0x3b40
/* 0C4CD4 80164294 00031880 */  sll   $v1, $v1, 2
/* 0C4CD8 80164298 00230821 */  addu  $at, $at, $v1
/* 0C4CDC 8016429C C428A6E0 */  lwc1  $f8, -0x5920($at)
/* 0C4CE0 801642A0 3C01800E */  lui   $at, 0x800e
/* 0C4CE4 801642A4 00230821 */  addu  $at, $at, $v1
/* 0C4CE8 801642A8 E42841D0 */  swc1  $f8, 0x41d0($at)
/* 0C4CEC 801642AC 8C4C0000 */  lw    $t4, ($v0)
/* 0C4CF0 801642B0 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0C4CF4 801642B4 44818000 */  mtc1  $at, $f16
/* 0C4CF8 801642B8 000C6880 */  sll   $t5, $t4, 2
/* 0C4CFC 801642BC 010D4021 */  addu  $t0, $t0, $t5
/* 0C4D00 801642C0 8D0598E0 */  lw    $a1, -0x6720($t0)
/* 0C4D04 801642C4 24060010 */  li    $a2, 16
/* 0C4D08 801642C8 AE050008 */  sw    $a1, 8($s0)
/* 0C4D0C 801642CC C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 0C4D10 801642D0 46105483 */  div.s $f18, $f10, $f16
/* 0C4D14 801642D4 44079000 */  mfc1  $a3, $f18
/* 0C4D18 801642D8 0C05481C */  jal   func_80152070_ovl3
/* 0C4D1C 801642DC 00000000 */   nop   
/* 0C4D20 801642E0 8E2E0000 */  lw    $t6, ($s1)
/* 0C4D24 801642E4 3C19801A */  lui   $t9, %hi(D_80198540) # $t9, 0x801a
/* 0C4D28 801642E8 27398540 */  addiu $t9, %lo(D_80198540) # addiu $t9, $t9, -0x7ac0
/* 0C4D2C 801642EC 8DC80000 */  lw    $t0, ($t6)
/* 0C4D30 801642F0 02002825 */  move  $a1, $s0
/* 0C4D34 801642F4 00003025 */  move  $a2, $zero
/* 0C4D38 801642F8 00087940 */  sll   $t7, $t0, 5
/* 0C4D3C 801642FC 25F8F880 */  addiu $t8, $t7, -0x780
/* 0C4D40 80164300 03192021 */  addu  $a0, $t8, $t9
/* 0C4D44 80164304 0C055754 */  jal   func_80155D50_ovl3
/* 0C4D48 80164308 01003825 */   move  $a3, $t0
/* 0C4D4C 8016430C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C4D50 80164310 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C4D54 80164314 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C4D58 80164318 03E00008 */  jr    $ra
/* 0C4D5C 8016431C 27BD0028 */   addiu $sp, $sp, 0x28

.type func_80164130_ovl3, @function
.size func_80164130_ovl3, . - func_80164130_ovl3

glabel func_80164320_ovl3
/* 0C4D60 80164320 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C4D64 80164324 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C4D68 80164328 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0C4D6C 8016432C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0C4D70 80164330 8E220000 */  lw    $v0, ($s1)
/* 0C4D74 80164334 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C4D78 80164338 AFB70030 */  sw    $s7, 0x30($sp)
/* 0C4D7C 8016433C AFB6002C */  sw    $s6, 0x2c($sp)
/* 0C4D80 80164340 AFB50028 */  sw    $s5, 0x28($sp)
/* 0C4D84 80164344 AFB40024 */  sw    $s4, 0x24($sp)
/* 0C4D88 80164348 AFB30020 */  sw    $s3, 0x20($sp)
/* 0C4D8C 8016434C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0C4D90 80164350 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C4D94 80164354 AFA40038 */  sw    $a0, 0x38($sp)
/* 0C4D98 80164358 8C4F0000 */  lw    $t7, ($v0)
/* 0C4D9C 8016435C 3C0E800B */  lui   $t6, %hi(D_800B4B9C) # $t6, 0x800b
/* 0C4DA0 80164360 3C01800E */  lui   $at, 0x800e
/* 0C4DA4 80164364 000FC080 */  sll   $t8, $t7, 2
/* 0C4DA8 80164368 00380821 */  addu  $at, $at, $t8
/* 0C4DAC 8016436C 25CE4B9C */  addiu $t6, %lo(D_800B4B9C) # addiu $t6, $t6, 0x4b9c
/* 0C4DB0 80164370 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C4DB4 80164374 8C480000 */  lw    $t0, ($v0)
/* 0C4DB8 80164378 3C140002 */  lui   $s4, (0x00020043 >> 16) # lui $s4, 2
/* 0C4DBC 8016437C 3C01800E */  lui   $at, 0x800e
/* 0C4DC0 80164380 3C198016 */  lui   $t9, %hi(D_801644EC) # $t9, 0x8016
/* 0C4DC4 80164384 00084880 */  sll   $t1, $t0, 2
/* 0C4DC8 80164388 36940043 */  ori   $s4, (0x00020043 & 0xFFFF) # ori $s4, $s4, 0x43
/* 0C4DCC 8016438C 00290821 */  addu  $at, $at, $t1
/* 0C4DD0 80164390 273944EC */  addiu $t9, %lo(D_801644EC) # addiu $t9, $t9, 0x44ec
/* 0C4DD4 80164394 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C4DD8 80164398 02802025 */  move  $a0, $s4
/* 0C4DDC 8016439C 24050022 */  li    $a1, 34
/* 0C4DE0 801643A0 0C02A619 */  jal   func_800A9864
/* 0C4DE4 801643A4 24060010 */   li    $a2, 16
/* 0C4DE8 801643A8 8E2A0000 */  lw    $t2, ($s1)
/* 0C4DEC 801643AC 3C12800F */  lui   $s2, %hi(D_800E98E0) # $s2, 0x800f
/* 0C4DF0 801643B0 265298E0 */  addiu $s2, %lo(D_800E98E0) # addiu $s2, $s2, -0x6720
/* 0C4DF4 801643B4 8D4B0000 */  lw    $t3, ($t2)
/* 0C4DF8 801643B8 3C160002 */  lui   $s6, (0x00020044 >> 16) # lui $s6, 2
/* 0C4DFC 801643BC 36D60044 */  ori   $s6, (0x00020044 & 0xFFFF) # ori $s6, $s6, 0x44
/* 0C4E00 801643C0 000B6080 */  sll   $t4, $t3, 2
/* 0C4E04 801643C4 24150001 */  li    $s5, 1
/* 0C4E08 801643C8 024C6821 */  addu  $t5, $s2, $t4
/* 0C4E0C 801643CC ADB50000 */  sw    $s5, ($t5)
/* 0C4E10 801643D0 0C02A5D8 */  jal   func_800A9760
/* 0C4E14 801643D4 02C02025 */   move  $a0, $s6
/* 0C4E18 801643D8 3C170002 */  lui   $s7, (0x00020298 >> 16) # lui $s7, 2
/* 0C4E1C 801643DC 36F70298 */  ori   $s7, (0x00020298 & 0xFFFF) # ori $s7, $s7, 0x298
/* 0C4E20 801643E0 0C02A806 */  jal   func_800AA018
/* 0C4E24 801643E4 02E02025 */   move  $a0, $s7
/* 0C4E28 801643E8 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0C4E2C 801643EC 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0C4E30 801643F0 8E0F0044 */  lw    $t7, 0x44($s0)
/* 0C4E34 801643F4 15E00006 */  bnez  $t7, .L80164410_ovl3
/* 0C4E38 801643F8 00000000 */   nop   
.L801643FC_ovl3:
/* 0C4E3C 801643FC 0C002DAF */  jal   finish_current_thread
/* 0C4E40 80164400 02A02025 */   move  $a0, $s5
/* 0C4E44 80164404 8E0E0044 */  lw    $t6, 0x44($s0)
/* 0C4E48 80164408 11C0FFFC */  beqz  $t6, .L801643FC_ovl3
/* 0C4E4C 8016440C 00000000 */   nop   
.L80164410_ovl3:
/* 0C4E50 80164410 3C028005 */  lui   $v0, %hi(gPlayerControllers) # $v0, 0x8005
/* 0C4E54 80164414 94428F20 */  lhu   $v0, %lo(gPlayerControllers)($v0)
/* 0C4E58 80164418 3C130002 */  lui   $s3, (0x00020295 >> 16) # lui $s3, 2
/* 0C4E5C 8016441C 3C108005 */  lui   $s0, %hi(gPlayerControllers) # $s0, 0x8005
/* 0C4E60 80164420 26108F20 */  addiu $s0, %lo(gPlayerControllers) # addiu $s0, $s0, -0x70e0
/* 0C4E64 80164424 36730295 */  ori   $s3, (0x00020295 & 0xFFFF) # ori $s3, $s3, 0x295
/* 0C4E68 80164428 30420300 */  andi  $v0, $v0, 0x300
.L8016442C_ovl3:
/* 0C4E6C 8016442C 54400013 */  bnezl $v0, .L8016447C_ovl3
/* 0C4E70 80164430 8E2A0000 */   lw    $t2, ($s1)
/* 0C4E74 80164434 8E380000 */  lw    $t8, ($s1)
/* 0C4E78 80164438 02802025 */  move  $a0, $s4
/* 0C4E7C 8016443C 8F080000 */  lw    $t0, ($t8)
/* 0C4E80 80164440 0008C880 */  sll   $t9, $t0, 2
/* 0C4E84 80164444 02594821 */  addu  $t1, $s2, $t9
/* 0C4E88 80164448 0C02A5D8 */  jal   func_800A9760
/* 0C4E8C 8016444C AD200000 */   sw    $zero, ($t1)
/* 0C4E90 80164450 0C02A806 */  jal   func_800AA018
/* 0C4E94 80164454 02602025 */   move  $a0, $s3
/* 0C4E98 80164458 96020000 */  lhu   $v0, ($s0)
.L8016445C_ovl3:
/* 0C4E9C 8016445C 30420300 */  andi  $v0, $v0, 0x300
/* 0C4EA0 80164460 1440FFF2 */  bnez  $v0, .L8016442C_ovl3
/* 0C4EA4 80164464 00000000 */   nop   
/* 0C4EA8 80164468 0C002DAF */  jal   finish_current_thread
/* 0C4EAC 8016446C 02A02025 */   move  $a0, $s5
/* 0C4EB0 80164470 1000FFFA */  b     .L8016445C_ovl3
/* 0C4EB4 80164474 96020000 */   lhu   $v0, ($s0)
/* 0C4EB8 80164478 8E2A0000 */  lw    $t2, ($s1)
.L8016447C_ovl3:
/* 0C4EBC 8016447C 02C02025 */  move  $a0, $s6
/* 0C4EC0 80164480 8D4B0000 */  lw    $t3, ($t2)
/* 0C4EC4 80164484 000B6080 */  sll   $t4, $t3, 2
/* 0C4EC8 80164488 024C6821 */  addu  $t5, $s2, $t4
/* 0C4ECC 8016448C 0C02A5D8 */  jal   func_800A9760
/* 0C4ED0 80164490 ADB50000 */   sw    $s5, ($t5)
/* 0C4ED4 80164494 0C02A806 */  jal   func_800AA018
/* 0C4ED8 80164498 02E02025 */   move  $a0, $s7
/* 0C4EDC 8016449C 96020000 */  lhu   $v0, ($s0)
.L801644A0_ovl3:
/* 0C4EE0 801644A0 30420300 */  andi  $v0, $v0, 0x300
/* 0C4EE4 801644A4 1040FFE1 */  beqz  $v0, .L8016442C_ovl3
/* 0C4EE8 801644A8 00000000 */   nop   
/* 0C4EEC 801644AC 0C002DAF */  jal   finish_current_thread
/* 0C4EF0 801644B0 02A02025 */   move  $a0, $s5
/* 0C4EF4 801644B4 1000FFFA */  b     .L801644A0_ovl3
/* 0C4EF8 801644B8 96020000 */   lhu   $v0, ($s0)
/* 0C4EFC 801644BC 00000000 */  nop   
/* 0C4F00 801644C0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0C4F04 801644C4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C4F08 801644C8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C4F0C 801644CC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0C4F10 801644D0 8FB30020 */  lw    $s3, 0x20($sp)
/* 0C4F14 801644D4 8FB40024 */  lw    $s4, 0x24($sp)
/* 0C4F18 801644D8 8FB50028 */  lw    $s5, 0x28($sp)
/* 0C4F1C 801644DC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0C4F20 801644E0 8FB70030 */  lw    $s7, 0x30($sp)
/* 0C4F24 801644E4 03E00008 */  jr    $ra
/* 0C4F28 801644E8 27BD0038 */   addiu $sp, $sp, 0x38

.type func_80164320_ovl3, @function
.size func_80164320_ovl3, . - func_80164320_ovl3

glabel func_801644EC_ovl3
/* 0C4F2C 801644EC 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C4F30 801644F0 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C4F34 801644F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C4F38 801644F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C4F3C 801644FC 11C00061 */  beqz  $t6, .L80164684_ovl3
/* 0C4F40 80164500 AFA40020 */   sw    $a0, 0x20($sp)
/* 0C4F44 80164504 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C4F48 80164508 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C4F4C 8016450C 3C19800F */  lui   $t9, 0x800f
/* 0C4F50 80164510 3C048019 */  lui   $a0, %hi(D_801912EC) # $a0, 0x8019
/* 0C4F54 80164514 8DE20000 */  lw    $v0, ($t7)
/* 0C4F58 80164518 248412EC */  addiu $a0, %lo(D_801912EC) # addiu $a0, $a0, 0x12ec
/* 0C4F5C 8016451C 0002C080 */  sll   $t8, $v0, 2
/* 0C4F60 80164520 0338C821 */  addu  $t9, $t9, $t8
/* 0C4F64 80164524 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 0C4F68 80164528 00402825 */  move  $a1, $v0
/* 0C4F6C 8016452C 17200020 */  bnez  $t9, .L801645B0_ovl3
/* 0C4F70 80164530 00000000 */   nop   
/* 0C4F74 80164534 3C048019 */  lui   $a0, %hi(D_801912EC) # $a0, 0x8019
/* 0C4F78 80164538 0C044681 */  jal   func_80111A04
/* 0C4F7C 8016453C 248412EC */   addiu $a0, %lo(D_801912EC) # addiu $a0, $a0, 0x12ec
/* 0C4F80 80164540 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0C4F84 80164544 3C0142AA */  li    $at, 0x42AA0000 # 85.000000
/* 0C4F88 80164548 44812000 */  mtc1  $at, $f4
/* 0C4F8C 8016454C 8C480020 */  lw    $t0, 0x20($v0)
/* 0C4F90 80164550 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C4F94 80164554 3C0A800E */  lui   $t2, 0x800e
/* 0C4F98 80164558 E5040018 */  swc1  $f4, 0x18($t0)
/* 0C4F9C 8016455C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C4FA0 80164560 3C01800E */  lui   $at, 0x800e
/* 0C4FA4 80164564 3C048019 */  lui   $a0, %hi(D_80193C64) # $a0, 0x8019
/* 0C4FA8 80164568 8D230000 */  lw    $v1, ($t1)
/* 0C4FAC 8016456C 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C4FB0 80164570 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C4FB4 80164574 00031880 */  sll   $v1, $v1, 2
/* 0C4FB8 80164578 01435021 */  addu  $t2, $t2, $v1
/* 0C4FBC 8016457C 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 0C4FC0 80164580 24843C64 */  addiu $a0, %lo(D_80193C64) # addiu $a0, $a0, 0x3c64
/* 0C4FC4 80164584 24060010 */  li    $a2, 16
/* 0C4FC8 80164588 000A5880 */  sll   $t3, $t2, 2
/* 0C4FCC 8016458C 002B0821 */  addu  $at, $at, $t3
/* 0C4FD0 80164590 C42617D0 */  lwc1  $f6, 0x17d0($at)
/* 0C4FD4 80164594 3C01800E */  lui   $at, 0x800e
/* 0C4FD8 80164598 00230821 */  addu  $at, $at, $v1
/* 0C4FDC 8016459C 3C073FA0 */  lui   $a3, 0x3fa0
/* 0C4FE0 801645A0 0C05481C */  jal   func_80152070_ovl3
/* 0C4FE4 801645A4 E42641D0 */   swc1  $f6, 0x41d0($at)
/* 0C4FE8 801645A8 1000001E */  b     .L80164624_ovl3
/* 0C4FEC 801645AC 00000000 */   nop   
.L801645B0_ovl3:
/* 0C4FF0 801645B0 0C044681 */  jal   func_80111A04
/* 0C4FF4 801645B4 00402825 */   move  $a1, $v0
/* 0C4FF8 801645B8 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0C4FFC 801645BC 3C014234 */  li    $at, 0x42340000 # 45.000000
/* 0C5000 801645C0 44814000 */  mtc1  $at, $f8
/* 0C5004 801645C4 8C4C0020 */  lw    $t4, 0x20($v0)
/* 0C5008 801645C8 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C500C 801645CC 3C0E800E */  lui   $t6, 0x800e
/* 0C5010 801645D0 E5880018 */  swc1  $f8, 0x18($t4)
/* 0C5014 801645D4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C5018 801645D8 3C01800E */  lui   $at, 0x800e
/* 0C501C 801645DC 3C048019 */  lui   $a0, %hi(D_80193C64) # $a0, 0x8019
/* 0C5020 801645E0 8DA30000 */  lw    $v1, ($t5)
/* 0C5024 801645E4 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C5028 801645E8 3C073F33 */  lui   $a3, (0x3F333333 >> 16) # lui $a3, 0x3f33
/* 0C502C 801645EC 00031880 */  sll   $v1, $v1, 2
/* 0C5030 801645F0 01C37021 */  addu  $t6, $t6, $v1
/* 0C5034 801645F4 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 0C5038 801645F8 34E73333 */  ori   $a3, (0x3F333333 & 0xFFFF) # ori $a3, $a3, 0x3333
/* 0C503C 801645FC 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C5040 80164600 000E7880 */  sll   $t7, $t6, 2
/* 0C5044 80164604 002F0821 */  addu  $at, $at, $t7
/* 0C5048 80164608 C42A17D0 */  lwc1  $f10, 0x17d0($at)
/* 0C504C 8016460C 3C01800E */  lui   $at, 0x800e
/* 0C5050 80164610 00230821 */  addu  $at, $at, $v1
/* 0C5054 80164614 24843C64 */  addiu $a0, %lo(D_80193C64) # addiu $a0, $a0, 0x3c64
/* 0C5058 80164618 24060010 */  li    $a2, 16
/* 0C505C 8016461C 0C05481C */  jal   func_80152070_ovl3
/* 0C5060 80164620 E42A41D0 */   swc1  $f10, 0x41d0($at)
.L80164624_ovl3:
/* 0C5064 80164624 0C044713 */  jal   func_80111C4C
/* 0C5068 80164628 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0C506C 8016462C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C5070 80164630 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C5074 80164634 3C09801A */  lui   $t1, %hi(D_80198540) # $t1, 0x801a
/* 0C5078 80164638 25298540 */  addiu $t1, %lo(D_80198540) # addiu $t1, $t1, -0x7ac0
/* 0C507C 8016463C 8F020000 */  lw    $v0, ($t8)
/* 0C5080 80164640 3C058019 */  lui   $a1, %hi(D_80193D64) # $a1, 0x8019
/* 0C5084 80164644 24A53D64 */  addiu $a1, %lo(D_80193D64) # addiu $a1, $a1, 0x3d64
/* 0C5088 80164648 0002C940 */  sll   $t9, $v0, 5
/* 0C508C 8016464C 2728F880 */  addiu $t0, $t9, -0x780
/* 0C5090 80164650 01092021 */  addu  $a0, $t0, $t1
/* 0C5094 80164654 00003025 */  move  $a2, $zero
/* 0C5098 80164658 0C055754 */  jal   func_80155D50_ovl3
/* 0C509C 8016465C 00403825 */   move  $a3, $v0
/* 0C50A0 80164660 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C50A4 80164664 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C50A8 80164668 44808000 */  mtc1  $zero, $f16
/* 0C50AC 8016466C 3C01800E */  lui   $at, 0x800e
/* 0C50B0 80164670 8D4B0000 */  lw    $t3, ($t2)
/* 0C50B4 80164674 000B6080 */  sll   $t4, $t3, 2
/* 0C50B8 80164678 002C0821 */  addu  $at, $at, $t4
/* 0C50BC 8016467C 10000005 */  b     .L80164694_ovl3
/* 0C50C0 80164680 E43041D0 */   swc1  $f16, 0x41d0($at)
.L80164684_ovl3:
/* 0C50C4 80164684 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C50C8 80164688 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C50CC 8016468C 0C02C640 */  jal   func_800B1900
/* 0C50D0 80164690 95A40002 */   lhu   $a0, 2($t5)
.L80164694_ovl3:
/* 0C50D4 80164694 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C50D8 80164698 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C50DC 8016469C 03E00008 */  jr    $ra
/* 0C50E0 801646A0 00000000 */   nop   

.type func_801644EC_ovl3, @function
.size func_801644EC_ovl3, . - func_801644EC_ovl3

glabel func_801646A4_ovl3
/* 0C50E4 801646A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C50E8 801646A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C50EC 801646AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C50F0 801646B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C50F4 801646B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C50F8 801646B8 8C4E0000 */  lw    $t6, ($v0)
/* 0C50FC 801646BC 3C01800F */  lui   $at, 0x800f
/* 0C5100 801646C0 3C18800B */  lui   $t8, %hi(D_800B4B9C) # $t8, 0x800b
/* 0C5104 801646C4 000E7880 */  sll   $t7, $t6, 2
/* 0C5108 801646C8 002F0821 */  addu  $at, $at, $t7
/* 0C510C 801646CC AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0C5110 801646D0 8C590000 */  lw    $t9, ($v0)
/* 0C5114 801646D4 3C01800E */  lui   $at, 0x800e
/* 0C5118 801646D8 27184B9C */  addiu $t8, %lo(D_800B4B9C) # addiu $t8, $t8, 0x4b9c
/* 0C511C 801646DC 00194080 */  sll   $t0, $t9, 2
/* 0C5120 801646E0 00280821 */  addu  $at, $at, $t0
/* 0C5124 801646E4 AC38EF90 */  sw    $t8, -0x1070($at)
/* 0C5128 801646E8 8C4A0000 */  lw    $t2, ($v0)
/* 0C512C 801646EC 3C01800E */  lui   $at, 0x800e
/* 0C5130 801646F0 3C098016 */  lui   $t1, %hi(D_80164914) # $t1, 0x8016
/* 0C5134 801646F4 000A5880 */  sll   $t3, $t2, 2
/* 0C5138 801646F8 002B0821 */  addu  $at, $at, $t3
/* 0C513C 801646FC 25294914 */  addiu $t1, %lo(D_80164914) # addiu $t1, $t1, 0x4914
/* 0C5140 80164700 AC29F150 */  sw    $t1, -0xeb0($at)
/* 0C5144 80164704 8C4C0000 */  lw    $t4, ($v0)
/* 0C5148 80164708 3C0E800E */  lui   $t6, 0x800e
/* 0C514C 8016470C 3C01800E */  lui   $at, 0x800e
/* 0C5150 80164710 000C6880 */  sll   $t5, $t4, 2
/* 0C5154 80164714 01CD7021 */  addu  $t6, $t6, $t5
/* 0C5158 80164718 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 0C515C 8016471C 000E7880 */  sll   $t7, $t6, 2
/* 0C5160 80164720 002F0821 */  addu  $at, $at, $t7
/* 0C5164 80164724 0C02BB30 */  jal   func_800AECC0
/* 0C5168 80164728 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C516C 8016472C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C5170 80164730 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C5174 80164734 3C0A800E */  lui   $t2, 0x800e
/* 0C5178 80164738 3C01800E */  lui   $at, 0x800e
/* 0C517C 8016473C 8F380000 */  lw    $t8, ($t9)
/* 0C5180 80164740 00184080 */  sll   $t0, $t8, 2
/* 0C5184 80164744 01485021 */  addu  $t2, $t2, $t0
/* 0C5188 80164748 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 0C518C 8016474C 000A4880 */  sll   $t1, $t2, 2
/* 0C5190 80164750 00290821 */  addu  $at, $at, $t1
/* 0C5194 80164754 0C02BB48 */  jal   func_800AED20
/* 0C5198 80164758 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C519C 8016475C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C51A0 80164760 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C51A4 80164764 3C03800F */  lui   $v1, 0x800f
/* 0C51A8 80164768 3C040002 */  lui   $a0, (0x00020045 >> 16) # lui $a0, 2
/* 0C51AC 8016476C 8D620000 */  lw    $v0, ($t3)
/* 0C51B0 80164770 24010001 */  li    $at, 1
/* 0C51B4 80164774 34840045 */  ori   $a0, (0x00020045 & 0xFFFF) # ori $a0, $a0, 0x45
/* 0C51B8 80164778 00026080 */  sll   $t4, $v0, 2
/* 0C51BC 8016477C 006C1821 */  addu  $v1, $v1, $t4
/* 0C51C0 80164780 8C63C2E0 */  lw    $v1, -0x3d20($v1)
/* 0C51C4 80164784 24050022 */  li    $a1, 34
/* 0C51C8 80164788 10600008 */  beqz  $v1, .L801647AC_ovl3
/* 0C51CC 8016478C 00000000 */   nop   
/* 0C51D0 80164790 1061000F */  beq   $v1, $at, .L801647D0_ovl3
/* 0C51D4 80164794 3C040002 */   lui   $a0, 2
/* 0C51D8 80164798 24010002 */  li    $at, 2
/* 0C51DC 8016479C 10610017 */  beq   $v1, $at, .L801647FC_ovl3
/* 0C51E0 801647A0 3C040002 */   lui   $a0, 2
/* 0C51E4 801647A4 10000034 */  b     .L80164878_ovl3
/* 0C51E8 801647A8 00000000 */   nop   
.L801647AC_ovl3:
/* 0C51EC 801647AC 0C02A619 */  jal   func_800A9864
/* 0C51F0 801647B0 24060010 */   li    $a2, 16
/* 0C51F4 801647B4 3C040002 */  lui   $a0, (0x00020045 >> 16) # lui $a0, 2
/* 0C51F8 801647B8 0C02A855 */  jal   func_800AA154
/* 0C51FC 801647BC 3484029B */   ori   $a0, (0x0002029B & 0xFFFF) # ori $a0, $a0, 0x29b
/* 0C5200 801647C0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C5204 801647C4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C5208 801647C8 1000002B */  b     .L80164878_ovl3
/* 0C520C 801647CC 8DA20000 */   lw    $v0, ($t5)
.L801647D0_ovl3:
/* 0C5210 801647D0 34840045 */  ori   $a0, (0x00020045 & 0xFFFF) # ori $a0, $a0, 0x45
/* 0C5214 801647D4 24050022 */  li    $a1, 34
/* 0C5218 801647D8 0C02A619 */  jal   func_800A9864
/* 0C521C 801647DC 24060010 */   li    $a2, 16
/* 0C5220 801647E0 3C040002 */  lui   $a0, (0x00020046 >> 16) # lui $a0, 2
/* 0C5224 801647E4 0C02A855 */  jal   func_800AA154
/* 0C5228 801647E8 3484029D */   ori   $a0, (0x0002029D & 0xFFFF) # ori $a0, $a0, 0x29d
/* 0C522C 801647EC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C5230 801647F0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C5234 801647F4 10000020 */  b     .L80164878_ovl3
/* 0C5238 801647F8 8DC20000 */   lw    $v0, ($t6)
.L801647FC_ovl3:
/* 0C523C 801647FC 34840046 */  ori   $a0, (0x00020046 & 0xFFFF) # ori $a0, $a0, 0x46
/* 0C5240 80164800 24050022 */  li    $a1, 34
/* 0C5244 80164804 0C02A619 */  jal   func_800A9864
/* 0C5248 80164808 24060010 */   li    $a2, 16
/* 0C524C 8016480C 3C040002 */  lui   $a0, (0x0002029F >> 16) # lui $a0, 2
/* 0C5250 80164810 0C02A806 */  jal   func_800AA018
/* 0C5254 80164814 3484029F */   ori   $a0, (0x0002029F & 0xFFFF) # ori $a0, $a0, 0x29f
/* 0C5258 80164818 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C525C 8016481C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C5260 80164820 3C0F8016 */  lui   $t7, %hi(D_80164890) # $t7, 0x8016
/* 0C5264 80164824 3C01800E */  lui   $at, 0x800e
/* 0C5268 80164828 8F380000 */  lw    $t8, ($t9)
/* 0C526C 8016482C 25EF4890 */  addiu $t7, %lo(D_80164890) # addiu $t7, $t7, 0x4890
/* 0C5270 80164830 00184080 */  sll   $t0, $t8, 2
/* 0C5274 80164834 00280821 */  addu  $at, $at, $t0
/* 0C5278 80164838 0C02BC9F */  jal   func_800AF27C
/* 0C527C 8016483C AC2FF310 */   sw    $t7, -0xcf0($at)
/* 0C5280 80164840 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C5284 80164844 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C5288 80164848 3C04800F */  lui   $a0, 0x800f
/* 0C528C 8016484C 8D420000 */  lw    $v0, ($t2)
/* 0C5290 80164850 00024880 */  sll   $t1, $v0, 2
/* 0C5294 80164854 00892021 */  addu  $a0, $a0, $t1
/* 0C5298 80164858 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C529C 8016485C 10800006 */  beqz  $a0, .L80164878_ovl3
/* 0C52A0 80164860 00000000 */   nop   
/* 0C52A4 80164864 0C0288B5 */  jal   func_800A22D4
/* 0C52A8 80164868 00000000 */   nop   
/* 0C52AC 8016486C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C52B0 80164870 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C52B4 80164874 8D620000 */  lw    $v0, ($t3)
.L80164878_ovl3:
/* 0C52B8 80164878 0C02C640 */  jal   func_800B1900
/* 0C52BC 8016487C 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0C52C0 80164880 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C52C4 80164884 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C52C8 80164888 03E00008 */  jr    $ra
/* 0C52CC 8016488C 00000000 */   nop   

.type func_801646A4_ovl3, @function
.size func_801646A4_ovl3, . - func_801646A4_ovl3

glabel func_80164890_ovl3
/* 0C52D0 80164890 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C52D4 80164894 44866000 */  mtc1  $a2, $f12
/* 0C52D8 80164898 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C52DC 8016489C 14A00019 */  bnez  $a1, .L80164904_ovl3
/* 0C52E0 801648A0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C52E4 801648A4 44802000 */  mtc1  $zero, $f4
/* 0C52E8 801648A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C52EC 801648AC 46046032 */  c.eq.s $f12, $f4
/* 0C52F0 801648B0 00000000 */  nop   
/* 0C52F4 801648B4 45030014 */  bc1tl .L80164908_ovl3
/* 0C52F8 801648B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C52FC 801648BC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C5300 801648C0 3C19800E */  lui   $t9, 0x800e
/* 0C5304 801648C4 24040001 */  li    $a0, 1
/* 0C5308 801648C8 8DCF0000 */  lw    $t7, ($t6)
/* 0C530C 801648CC 24050001 */  li    $a1, 1
/* 0C5310 801648D0 24060028 */  li    $a2, 40
/* 0C5314 801648D4 000FC080 */  sll   $t8, $t7, 2
/* 0C5318 801648D8 0338C821 */  addu  $t9, $t9, $t8
/* 0C531C 801648DC 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 0C5320 801648E0 0C02A040 */  jal   func_800A8100
/* 0C5324 801648E4 8F270004 */   lw    $a3, 4($t9)
/* 0C5328 801648E8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0C532C 801648EC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0C5330 801648F0 3C01800F */  lui   $at, 0x800f
/* 0C5334 801648F4 8D090000 */  lw    $t1, ($t0)
/* 0C5338 801648F8 00095080 */  sll   $t2, $t1, 2
/* 0C533C 801648FC 002A0821 */  addu  $at, $at, $t2
/* 0C5340 80164900 AC22A520 */  sw    $v0, -0x5ae0($at)
.L80164904_ovl3:
/* 0C5344 80164904 8FBF0014 */  lw    $ra, 0x14($sp)
.L80164908_ovl3:
/* 0C5348 80164908 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C534C 8016490C 03E00008 */  jr    $ra
/* 0C5350 80164910 00000000 */   nop   

.type func_80164890_ovl3, @function
.size func_80164890_ovl3, . - func_80164890_ovl3

glabel func_80164914_ovl3
/* 0C5354 80164914 3C0E8013 */  lui   $t6, %hi(D_8012E7C5) # $t6, 0x8013
/* 0C5358 80164918 91CEE7C5 */  lbu   $t6, %lo(D_8012E7C5)($t6)
/* 0C535C 8016491C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C5360 80164920 2401001A */  li    $at, 26
/* 0C5364 80164924 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C5368 80164928 11C10011 */  beq   $t6, $at, .L80164970_ovl3
/* 0C536C 8016492C AFA40018 */   sw    $a0, 0x18($sp)
/* 0C5370 80164930 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C5374 80164934 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C5378 80164938 3C04800F */  lui   $a0, 0x800f
/* 0C537C 8016493C 8DE20000 */  lw    $v0, ($t7)
/* 0C5380 80164940 0002C080 */  sll   $t8, $v0, 2
/* 0C5384 80164944 00982021 */  addu  $a0, $a0, $t8
/* 0C5388 80164948 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C538C 8016494C 10800006 */  beqz  $a0, .L80164968_ovl3
/* 0C5390 80164950 00000000 */   nop   
/* 0C5394 80164954 0C0288B5 */  jal   func_800A22D4
/* 0C5398 80164958 00000000 */   nop   
/* 0C539C 8016495C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C53A0 80164960 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C53A4 80164964 8F220000 */  lw    $v0, ($t9)
.L80164968_ovl3:
/* 0C53A8 80164968 0C02C640 */  jal   func_800B1900
/* 0C53AC 8016496C 3044FFFF */   andi  $a0, $v0, 0xffff
.L80164970_ovl3:
/* 0C53B0 80164970 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C53B4 80164974 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C53B8 80164978 03E00008 */  jr    $ra
/* 0C53BC 8016497C 00000000 */   nop   

.type func_80164914_ovl3, @function
.size func_80164914_ovl3, . - func_80164914_ovl3

glabel func_80164980_ovl3
/* 0C53C0 80164980 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C53C4 80164984 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C53C8 80164988 27BDFED8 */  addiu $sp, $sp, -0x128
/* 0C53CC 8016498C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C53D0 80164990 AFA40128 */  sw    $a0, 0x128($sp)
/* 0C53D4 80164994 8C6E0000 */  lw    $t6, ($v1)
/* 0C53D8 80164998 3C01800F */  lui   $at, 0x800f
/* 0C53DC 8016499C 44802000 */  mtc1  $zero, $f4
/* 0C53E0 801649A0 000E7880 */  sll   $t7, $t6, 2
/* 0C53E4 801649A4 002F0821 */  addu  $at, $at, $t7
/* 0C53E8 801649A8 AC2098E0 */  sw    $zero, -0x6720($at)
/* 0C53EC 801649AC 8C780000 */  lw    $t8, ($v1)
/* 0C53F0 801649B0 3C01800F */  lui   $at, 0x800f
/* 0C53F4 801649B4 27AA0028 */  addiu $t2, $sp, 0x28
/* 0C53F8 801649B8 0018C880 */  sll   $t9, $t8, 2
/* 0C53FC 801649BC 00390821 */  addu  $at, $at, $t9
/* 0C5400 801649C0 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 0C5404 801649C4 8C6B0000 */  lw    $t3, ($v1)
/* 0C5408 801649C8 3C01800F */  lui   $at, 0x800f
/* 0C540C 801649CC 3C0D800B */  lui   $t5, %hi(func_800B4954) # $t5, 0x800b
/* 0C5410 801649D0 000B6080 */  sll   $t4, $t3, 2
/* 0C5414 801649D4 002C0821 */  addu  $at, $at, $t4
/* 0C5418 801649D8 AC2A9AA0 */  sw    $t2, -0x6560($at)
/* 0C541C 801649DC 8C6E0000 */  lw    $t6, ($v1)
/* 0C5420 801649E0 3C01800E */  lui   $at, 0x800e
/* 0C5424 801649E4 25AD4954 */  addiu $t5, %lo(func_800B4954) # addiu $t5, $t5, 0x4954
/* 0C5428 801649E8 000E7880 */  sll   $t7, $t6, 2
/* 0C542C 801649EC 002F0821 */  addu  $at, $at, $t7
/* 0C5430 801649F0 AC2DEF90 */  sw    $t5, -0x1070($at)
/* 0C5434 801649F4 8C790000 */  lw    $t9, ($v1)
/* 0C5438 801649F8 3C01800E */  lui   $at, 0x800e
/* 0C543C 801649FC 3C188016 */  lui   $t8, %hi(D_80164EA8) # $t8, 0x8016
/* 0C5440 80164A00 00195880 */  sll   $t3, $t9, 2
/* 0C5444 80164A04 002B0821 */  addu  $at, $at, $t3
/* 0C5448 80164A08 27184EA8 */  addiu $t8, %lo(D_80164EA8) # addiu $t8, $t8, 0x4ea8
/* 0C544C 80164A0C AC38F150 */  sw    $t8, -0xeb0($at)
/* 0C5450 80164A10 8C6A0000 */  lw    $t2, ($v1)
/* 0C5454 80164A14 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 0C5458 80164A18 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0xd50
/* 0C545C 80164A1C 000A6080 */  sll   $t4, $t2, 2
/* 0C5460 80164A20 008C7021 */  addu  $t6, $a0, $t4
/* 0C5464 80164A24 8DCD0000 */  lw    $t5, ($t6)
/* 0C5468 80164A28 3C01800E */  lui   $at, 0x800e
/* 0C546C 80164A2C 000D7880 */  sll   $t7, $t5, 2
/* 0C5470 80164A30 002F0821 */  addu  $at, $at, $t7
/* 0C5474 80164A34 0C02BB30 */  jal   func_800AECC0
/* 0C5478 80164A38 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C547C 80164A3C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C5480 80164A40 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C5484 80164A44 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 0C5488 80164A48 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0xd50
/* 0C548C 80164A4C 8F380000 */  lw    $t8, ($t9)
/* 0C5490 80164A50 3C01800E */  lui   $at, 0x800e
/* 0C5494 80164A54 00185880 */  sll   $t3, $t8, 2
/* 0C5498 80164A58 008B5021 */  addu  $t2, $a0, $t3
/* 0C549C 80164A5C 8D4C0000 */  lw    $t4, ($t2)
/* 0C54A0 80164A60 000C7080 */  sll   $t6, $t4, 2
/* 0C54A4 80164A64 002E0821 */  addu  $at, $at, $t6
/* 0C54A8 80164A68 0C02BB48 */  jal   func_800AED20
/* 0C54AC 80164A6C C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C54B0 80164A70 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C54B4 80164A74 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C54B8 80164A78 3C018019 */  lui   $at, %hi(D_80197160) # $at, 0x8019
/* 0C54BC 80164A7C C4227160 */  lwc1  $f2, %lo(D_80197160)($at)
/* 0C54C0 80164A80 8C6D0000 */  lw    $t5, ($v1)
/* 0C54C4 80164A84 3C01800E */  lui   $at, 0x800e
/* 0C54C8 80164A88 3C04800E */  lui   $a0, %hi(D_800E0D50) # $a0, 0x800e
/* 0C54CC 80164A8C 000D7880 */  sll   $t7, $t5, 2
/* 0C54D0 80164A90 002F0821 */  addu  $at, $at, $t7
/* 0C54D4 80164A94 E4224550 */  swc1  $f2, 0x4550($at)
/* 0C54D8 80164A98 8C790000 */  lw    $t9, ($v1)
/* 0C54DC 80164A9C 3C01800E */  lui   $at, 0x800e
/* 0C54E0 80164AA0 24840D50 */  addiu $a0, %lo(D_800E0D50) # addiu $a0, $a0, 0xd50
/* 0C54E4 80164AA4 0019C080 */  sll   $t8, $t9, 2
/* 0C54E8 80164AA8 00380821 */  addu  $at, $at, $t8
/* 0C54EC 80164AAC E4224710 */  swc1  $f2, 0x4710($at)
/* 0C54F0 80164AB0 8C6B0000 */  lw    $t3, ($v1)
/* 0C54F4 80164AB4 3C01800E */  lui   $at, 0x800e
/* 0C54F8 80164AB8 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 0C54FC 80164ABC 000B5080 */  sll   $t2, $t3, 2
/* 0C5500 80164AC0 002A0821 */  addu  $at, $at, $t2
/* 0C5504 80164AC4 E42248D0 */  swc1  $f2, 0x48d0($at)
/* 0C5508 80164AC8 8C620000 */  lw    $v0, ($v1)
/* 0C550C 80164ACC 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 0C5510 80164AD0 3C07800E */  lui   $a3, %hi(gEntitiesAngleYArray) # $a3, 0x800e
/* 0C5514 80164AD4 00021080 */  sll   $v0, $v0, 2
/* 0C5518 80164AD8 00826021 */  addu  $t4, $a0, $v0
/* 0C551C 80164ADC 8D8E0000 */  lw    $t6, ($t4)
/* 0C5520 80164AE0 00C2C821 */  addu  $t9, $a2, $v0
/* 0C5524 80164AE4 24E741D0 */  addiu $a3, %lo(gEntitiesAngleYArray) # addiu $a3, $a3, 0x41d0
/* 0C5528 80164AE8 000E6880 */  sll   $t5, $t6, 2
/* 0C552C 80164AEC 00CD7821 */  addu  $t7, $a2, $t5
/* 0C5530 80164AF0 C5E60000 */  lwc1  $f6, ($t7)
/* 0C5534 80164AF4 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 0C5538 80164AF8 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 0C553C 80164AFC E7260000 */  swc1  $f6, ($t9)
/* 0C5540 80164B00 8C620000 */  lw    $v0, ($v1)
/* 0C5544 80164B04 3C09800F */  lui   $t1, %hi(D_800E8AE0) # $t1, 0x800f
/* 0C5548 80164B08 25298AE0 */  addiu $t1, %lo(D_800E8AE0) # addiu $t1, $t1, -0x7520
/* 0C554C 80164B0C 00021080 */  sll   $v0, $v0, 2
/* 0C5550 80164B10 0082C021 */  addu  $t8, $a0, $v0
/* 0C5554 80164B14 8F0B0000 */  lw    $t3, ($t8)
/* 0C5558 80164B18 00E27021 */  addu  $t6, $a3, $v0
/* 0C555C 80164B1C 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 0C5560 80164B20 000B5080 */  sll   $t2, $t3, 2
/* 0C5564 80164B24 00EA6021 */  addu  $t4, $a3, $t2
/* 0C5568 80164B28 C5880000 */  lwc1  $f8, ($t4)
/* 0C556C 80164B2C 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 0C5570 80164B30 44806000 */  mtc1  $zero, $f12
/* 0C5574 80164B34 E5C80000 */  swc1  $f8, ($t6)
/* 0C5578 80164B38 8C620000 */  lw    $v0, ($v1)
/* 0C557C 80164B3C 3C01800E */  lui   $at, 0x800e
/* 0C5580 80164B40 00021080 */  sll   $v0, $v0, 2
/* 0C5584 80164B44 00826821 */  addu  $t5, $a0, $v0
/* 0C5588 80164B48 8DAF0000 */  lw    $t7, ($t5)
/* 0C558C 80164B4C 01025021 */  addu  $t2, $t0, $v0
/* 0C5590 80164B50 000FC880 */  sll   $t9, $t7, 2
/* 0C5594 80164B54 0119C021 */  addu  $t8, $t0, $t9
/* 0C5598 80164B58 8F0B0000 */  lw    $t3, ($t8)
/* 0C559C 80164B5C AD4B0000 */  sw    $t3, ($t2)
/* 0C55A0 80164B60 8C620000 */  lw    $v0, ($v1)
/* 0C55A4 80164B64 00021080 */  sll   $v0, $v0, 2
/* 0C55A8 80164B68 00826021 */  addu  $t4, $a0, $v0
/* 0C55AC 80164B6C 8D8E0000 */  lw    $t6, ($t4)
/* 0C55B0 80164B70 0122C021 */  addu  $t8, $t1, $v0
/* 0C55B4 80164B74 000E6880 */  sll   $t5, $t6, 2
/* 0C55B8 80164B78 012D7821 */  addu  $t7, $t1, $t5
/* 0C55BC 80164B7C 8DF90000 */  lw    $t9, ($t7)
/* 0C55C0 80164B80 AF190000 */  sw    $t9, ($t8)
/* 0C55C4 80164B84 8C620000 */  lw    $v0, ($v1)
/* 0C55C8 80164B88 00021080 */  sll   $v0, $v0, 2
/* 0C55CC 80164B8C 00825821 */  addu  $t3, $a0, $v0
/* 0C55D0 80164B90 8D6A0000 */  lw    $t2, ($t3)
/* 0C55D4 80164B94 00A26821 */  addu  $t5, $a1, $v0
/* 0C55D8 80164B98 000A6080 */  sll   $t4, $t2, 2
/* 0C55DC 80164B9C 00AC7021 */  addu  $t6, $a1, $t4
/* 0C55E0 80164BA0 C5CA0000 */  lwc1  $f10, ($t6)
/* 0C55E4 80164BA4 E5AA0000 */  swc1  $f10, ($t5)
/* 0C55E8 80164BA8 8C620000 */  lw    $v0, ($v1)
/* 0C55EC 80164BAC 00021080 */  sll   $v0, $v0, 2
/* 0C55F0 80164BB0 00827821 */  addu  $t7, $a0, $v0
/* 0C55F4 80164BB4 8DF90000 */  lw    $t9, ($t7)
/* 0C55F8 80164BB8 00220821 */  addu  $at, $at, $v0
/* 0C55FC 80164BBC 0019C080 */  sll   $t8, $t9, 2
/* 0C5600 80164BC0 00B85821 */  addu  $t3, $a1, $t8
/* 0C5604 80164BC4 C5600000 */  lwc1  $f0, ($t3)
/* 0C5608 80164BC8 460C003C */  c.lt.s $f0, $f12
/* 0C560C 80164BCC 00000000 */  nop   
/* 0C5610 80164BD0 45000006 */  bc1f  .L80164BEC_ovl3
/* 0C5614 80164BD4 00000000 */   nop   
/* 0C5618 80164BD8 3C01800E */  lui   $at, 0x800e
/* 0C561C 80164BDC 46000407 */  neg.s $f16, $f0
/* 0C5620 80164BE0 00220821 */  addu  $at, $at, $v0
/* 0C5624 80164BE4 10000002 */  b     .L80164BF0_ovl3
/* 0C5628 80164BE8 E4306850 */   swc1  $f16, 0x6850($at)
.L80164BEC_ovl3:
/* 0C562C 80164BEC E4206850 */  swc1  $f0, 0x6850($at)
.L80164BF0_ovl3:
/* 0C5630 80164BF0 8C620000 */  lw    $v0, ($v1)
/* 0C5634 80164BF4 44801000 */  mtc1  $zero, $f2
/* 0C5638 80164BF8 00021080 */  sll   $v0, $v0, 2
/* 0C563C 80164BFC 00A25021 */  addu  $t2, $a1, $v0
/* 0C5640 80164C00 C5520000 */  lwc1  $f18, ($t2)
/* 0C5644 80164C04 01226021 */  addu  $t4, $t1, $v0
/* 0C5648 80164C08 01227821 */  addu  $t7, $t1, $v0
/* 0C564C 80164C0C 4612103C */  c.lt.s $f2, $f18
/* 0C5650 80164C10 00000000 */  nop   
/* 0C5654 80164C14 45020012 */  bc1fl .L80164C60_ovl3
/* 0C5658 80164C18 8DF90000 */   lw    $t9, ($t7)
/* 0C565C 80164C1C 8D8E0000 */  lw    $t6, ($t4)
/* 0C5660 80164C20 3C01BE00 */  li    $at, 0xBE000000 # -0.125000
/* 0C5664 80164C24 31CD0006 */  andi  $t5, $t6, 6
/* 0C5668 80164C28 55A00008 */  bnezl $t5, .L80164C4C_ovl3
/* 0C566C 80164C2C 44813000 */   mtc1  $at, $f6
/* 0C5670 80164C30 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 0C5674 80164C34 44812000 */  mtc1  $at, $f4
/* 0C5678 80164C38 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C567C 80164C3C 00220821 */  addu  $at, $at, $v0
/* 0C5680 80164C40 10000015 */  b     .L80164C98_ovl3
/* 0C5684 80164C44 E4246690 */   swc1  $f4, 0x6690($at)
/* 0C5688 80164C48 44813000 */  mtc1  $at, $f6
.L80164C4C_ovl3:
/* 0C568C 80164C4C 3C01800E */  lui   $at, 0x800e
/* 0C5690 80164C50 00220821 */  addu  $at, $at, $v0
/* 0C5694 80164C54 10000010 */  b     .L80164C98_ovl3
/* 0C5698 80164C58 E4266690 */   swc1  $f6, 0x6690($at)
/* 0C569C 80164C5C 8DF90000 */  lw    $t9, ($t7)
.L80164C60_ovl3:
/* 0C56A0 80164C60 3C013E00 */  li    $at, 0x3E000000 # 0.125000
/* 0C56A4 80164C64 33380006 */  andi  $t8, $t9, 6
/* 0C56A8 80164C68 57000008 */  bnezl $t8, .L80164C8C_ovl3
/* 0C56AC 80164C6C 44815000 */   mtc1  $at, $f10
/* 0C56B0 80164C70 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 0C56B4 80164C74 44814000 */  mtc1  $at, $f8
/* 0C56B8 80164C78 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C56BC 80164C7C 00220821 */  addu  $at, $at, $v0
/* 0C56C0 80164C80 10000005 */  b     .L80164C98_ovl3
/* 0C56C4 80164C84 E4286690 */   swc1  $f8, 0x6690($at)
/* 0C56C8 80164C88 44815000 */  mtc1  $at, $f10
.L80164C8C_ovl3:
/* 0C56CC 80164C8C 3C01800E */  lui   $at, 0x800e
/* 0C56D0 80164C90 00220821 */  addu  $at, $at, $v0
/* 0C56D4 80164C94 E42A6690 */  swc1  $f10, 0x6690($at)
.L80164C98_ovl3:
/* 0C56D8 80164C98 8C620000 */  lw    $v0, ($v1)
/* 0C56DC 80164C9C 3C05800E */  lui   $a1, %hi(D_800E3210) # $a1, 0x800e
/* 0C56E0 80164CA0 24A53210 */  addiu $a1, %lo(D_800E3210) # addiu $a1, $a1, 0x3210
/* 0C56E4 80164CA4 00021080 */  sll   $v0, $v0, 2
/* 0C56E8 80164CA8 00825821 */  addu  $t3, $a0, $v0
/* 0C56EC 80164CAC 8D6A0000 */  lw    $t2, ($t3)
/* 0C56F0 80164CB0 00A26821 */  addu  $t5, $a1, $v0
/* 0C56F4 80164CB4 3C01800E */  lui   $at, 0x800e
/* 0C56F8 80164CB8 000A6080 */  sll   $t4, $t2, 2
/* 0C56FC 80164CBC 00AC7021 */  addu  $t6, $a1, $t4
/* 0C5700 80164CC0 C5D00000 */  lwc1  $f16, ($t6)
/* 0C5704 80164CC4 E5B00000 */  swc1  $f16, ($t5)
/* 0C5708 80164CC8 8C620000 */  lw    $v0, ($v1)
/* 0C570C 80164CCC 00021080 */  sll   $v0, $v0, 2
/* 0C5710 80164CD0 00827821 */  addu  $t7, $a0, $v0
/* 0C5714 80164CD4 8DF90000 */  lw    $t9, ($t7)
/* 0C5718 80164CD8 00220821 */  addu  $at, $at, $v0
/* 0C571C 80164CDC 0019C080 */  sll   $t8, $t9, 2
/* 0C5720 80164CE0 00B85821 */  addu  $t3, $a1, $t8
/* 0C5724 80164CE4 C5600000 */  lwc1  $f0, ($t3)
/* 0C5728 80164CE8 460C003C */  c.lt.s $f0, $f12
/* 0C572C 80164CEC 00000000 */  nop   
/* 0C5730 80164CF0 45000006 */  bc1f  .L80164D0C_ovl3
/* 0C5734 80164CF4 00000000 */   nop   
/* 0C5738 80164CF8 3C01800E */  lui   $at, 0x800e
/* 0C573C 80164CFC 46000487 */  neg.s $f18, $f0
/* 0C5740 80164D00 00220821 */  addu  $at, $at, $v0
/* 0C5744 80164D04 10000002 */  b     .L80164D10_ovl3
/* 0C5748 80164D08 E4323C90 */   swc1  $f18, 0x3c90($at)
.L80164D0C_ovl3:
/* 0C574C 80164D0C E4203C90 */  swc1  $f0, 0x3c90($at)
.L80164D10_ovl3:
/* 0C5750 80164D10 8C620000 */  lw    $v0, ($v1)
/* 0C5754 80164D14 00021080 */  sll   $v0, $v0, 2
/* 0C5758 80164D18 00A25021 */  addu  $t2, $a1, $v0
/* 0C575C 80164D1C C5440000 */  lwc1  $f4, ($t2)
/* 0C5760 80164D20 01226021 */  addu  $t4, $t1, $v0
/* 0C5764 80164D24 01227821 */  addu  $t7, $t1, $v0
/* 0C5768 80164D28 4604103C */  c.lt.s $f2, $f4
/* 0C576C 80164D2C 00000000 */  nop   
/* 0C5770 80164D30 45020012 */  bc1fl .L80164D7C_ovl3
/* 0C5774 80164D34 8DF90000 */   lw    $t9, ($t7)
/* 0C5778 80164D38 8D8E0000 */  lw    $t6, ($t4)
/* 0C577C 80164D3C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0C5780 80164D40 31CD0006 */  andi  $t5, $t6, 6
/* 0C5784 80164D44 55A00008 */  bnezl $t5, .L80164D68_ovl3
/* 0C5788 80164D48 44814000 */   mtc1  $at, $f8
/* 0C578C 80164D4C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0C5790 80164D50 44813000 */  mtc1  $at, $f6
/* 0C5794 80164D54 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C5798 80164D58 00220821 */  addu  $at, $at, $v0
/* 0C579C 80164D5C 10000015 */  b     .L80164DB4_ovl3
/* 0C57A0 80164D60 E4263750 */   swc1  $f6, 0x3750($at)
/* 0C57A4 80164D64 44814000 */  mtc1  $at, $f8
.L80164D68_ovl3:
/* 0C57A8 80164D68 3C01800E */  lui   $at, 0x800e
/* 0C57AC 80164D6C 00220821 */  addu  $at, $at, $v0
/* 0C57B0 80164D70 10000010 */  b     .L80164DB4_ovl3
/* 0C57B4 80164D74 E4283750 */   swc1  $f8, 0x3750($at)
/* 0C57B8 80164D78 8DF90000 */  lw    $t9, ($t7)
.L80164D7C_ovl3:
/* 0C57BC 80164D7C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0C57C0 80164D80 33380006 */  andi  $t8, $t9, 6
/* 0C57C4 80164D84 57000008 */  bnezl $t8, .L80164DA8_ovl3
/* 0C57C8 80164D88 44818000 */   mtc1  $at, $f16
/* 0C57CC 80164D8C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C57D0 80164D90 44815000 */  mtc1  $at, $f10
/* 0C57D4 80164D94 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0C57D8 80164D98 00220821 */  addu  $at, $at, $v0
/* 0C57DC 80164D9C 10000005 */  b     .L80164DB4_ovl3
/* 0C57E0 80164DA0 E42A3750 */   swc1  $f10, 0x3750($at)
/* 0C57E4 80164DA4 44818000 */  mtc1  $at, $f16
.L80164DA8_ovl3:
/* 0C57E8 80164DA8 3C01800E */  lui   $at, 0x800e
/* 0C57EC 80164DAC 00220821 */  addu  $at, $at, $v0
/* 0C57F0 80164DB0 E4303750 */  swc1  $f16, 0x3750($at)
.L80164DB4_ovl3:
/* 0C57F4 80164DB4 0C029D9E */  jal   play_sound
/* 0C57F8 80164DB8 24040017 */   li    $a0, 23
/* 0C57FC 80164DBC 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C5800 80164DC0 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C5804 80164DC4 3C0E800F */  lui   $t6, 0x800f
/* 0C5808 80164DC8 3C048019 */  lui   $a0, 0x8019
/* 0C580C 80164DCC 8D6A0000 */  lw    $t2, ($t3)
/* 0C5810 80164DD0 24050022 */  li    $a1, 34
/* 0C5814 80164DD4 24060010 */  li    $a2, 16
/* 0C5818 80164DD8 000A6080 */  sll   $t4, $t2, 2
/* 0C581C 80164DDC 01CC7021 */  addu  $t6, $t6, $t4
/* 0C5820 80164DE0 8DCEC2E0 */  lw    $t6, -0x3d20($t6)
/* 0C5824 80164DE4 000E6880 */  sll   $t5, $t6, 2
/* 0C5828 80164DE8 01AE6823 */  subu  $t5, $t5, $t6
/* 0C582C 80164DEC 000D6880 */  sll   $t5, $t5, 2
/* 0C5830 80164DF0 008D2021 */  addu  $a0, $a0, $t5
/* 0C5834 80164DF4 0C02A619 */  jal   func_800A9864
/* 0C5838 80164DF8 8C846888 */   lw    $a0, 0x6888($a0)
/* 0C583C 80164DFC 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C5840 80164E00 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C5844 80164E04 3C0B800F */  lui   $t3, 0x800f
/* 0C5848 80164E08 3C048019 */  lui   $a0, 0x8019
/* 0C584C 80164E0C 8DF90000 */  lw    $t9, ($t7)
/* 0C5850 80164E10 0019C080 */  sll   $t8, $t9, 2
/* 0C5854 80164E14 01785821 */  addu  $t3, $t3, $t8
/* 0C5858 80164E18 8D6BC2E0 */  lw    $t3, -0x3d20($t3)
/* 0C585C 80164E1C 000B5080 */  sll   $t2, $t3, 2
/* 0C5860 80164E20 014B5023 */  subu  $t2, $t2, $t3
/* 0C5864 80164E24 000A5080 */  sll   $t2, $t2, 2
/* 0C5868 80164E28 008A2021 */  addu  $a0, $a0, $t2
/* 0C586C 80164E2C 0C02A806 */  jal   func_800AA018
/* 0C5870 80164E30 8C846890 */   lw    $a0, 0x6890($a0)
/* 0C5874 80164E34 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C5878 80164E38 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C587C 80164E3C 3C0F800F */  lui   $t7, 0x800f
/* 0C5880 80164E40 3C048019 */  lui   $a0, 0x8019
/* 0C5884 80164E44 8D8E0000 */  lw    $t6, ($t4)
/* 0C5888 80164E48 000E6880 */  sll   $t5, $t6, 2
/* 0C588C 80164E4C 01ED7821 */  addu  $t7, $t7, $t5
/* 0C5890 80164E50 8DEFC2E0 */  lw    $t7, -0x3d20($t7)
/* 0C5894 80164E54 000FC880 */  sll   $t9, $t7, 2
/* 0C5898 80164E58 032FC823 */  subu  $t9, $t9, $t7
/* 0C589C 80164E5C 0019C880 */  sll   $t9, $t9, 2
/* 0C58A0 80164E60 00992021 */  addu  $a0, $a0, $t9
/* 0C58A4 80164E64 0C02A855 */  jal   func_800AA154
/* 0C58A8 80164E68 8C84688C */   lw    $a0, 0x688c($a0)
/* 0C58AC 80164E6C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C58B0 80164E70 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C58B4 80164E74 3C0C800F */  lui   $t4, %hi(D_800E98E0) # $t4, 0x800f
/* 0C58B8 80164E78 258C98E0 */  addiu $t4, %lo(D_800E98E0) # addiu $t4, $t4, -0x6720
/* 0C58BC 80164E7C 8F0B0000 */  lw    $t3, ($t8)
/* 0C58C0 80164E80 000B5080 */  sll   $t2, $t3, 2
/* 0C58C4 80164E84 014C1021 */  addu  $v0, $t2, $t4
/* 0C58C8 80164E88 8C4E0000 */  lw    $t6, ($v0)
/* 0C58CC 80164E8C 25CD0001 */  addiu $t5, $t6, 1
/* 0C58D0 80164E90 0C02BE85 */  jal   func_800AFA14
/* 0C58D4 80164E94 AC4D0000 */   sw    $t5, ($v0)
/* 0C58D8 80164E98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C58DC 80164E9C 27BD0128 */  addiu $sp, $sp, 0x128
/* 0C58E0 80164EA0 03E00008 */  jr    $ra
/* 0C58E4 80164EA4 00000000 */   nop   

.type func_80164980_ovl3, @function
.size func_80164980_ovl3, . - func_80164980_ovl3

glabel func_80164EA8_ovl3
/* 0C58E8 80164EA8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C58EC 80164EAC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C58F0 80164EB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C58F4 80164EB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C58F8 80164EB8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0C58FC 80164EBC 8DC30000 */  lw    $v1, ($t6)
/* 0C5900 80164EC0 3C18800F */  lui   $t8, 0x800f
/* 0C5904 80164EC4 3C048019 */  lui   $a0, %hi(D_801915F8) # $a0, 0x8019
/* 0C5908 80164EC8 00037880 */  sll   $t7, $v1, 2
/* 0C590C 80164ECC 030FC021 */  addu  $t8, $t8, $t7
/* 0C5910 80164ED0 8F1898E0 */  lw    $t8, -0x6720($t8)
/* 0C5914 80164ED4 248415F8 */  addiu $a0, %lo(D_801915F8) # addiu $a0, $a0, 0x15f8
/* 0C5918 80164ED8 13000005 */  beqz  $t8, .L80164EF0_ovl3
/* 0C591C 80164EDC 00000000 */   nop   
/* 0C5920 80164EE0 0C02C640 */  jal   func_800B1900
/* 0C5924 80164EE4 3064FFFF */   andi  $a0, $v1, 0xffff
/* 0C5928 80164EE8 100000C1 */  b     .L801651F0_ovl3
/* 0C592C 80164EEC 8FBF0014 */   lw    $ra, 0x14($sp)
.L80164EF0_ovl3:
/* 0C5930 80164EF0 0C044681 */  jal   func_80111A04
/* 0C5934 80164EF4 00602825 */   move  $a1, $v1
/* 0C5938 80164EF8 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C593C 80164EFC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C5940 80164F00 3C0B800F */  lui   $t3, 0x800f
/* 0C5944 80164F04 3C01800F */  lui   $at, 0x800f
/* 0C5948 80164F08 8F230000 */  lw    $v1, ($t9)
/* 0C594C 80164F0C 8C4D0020 */  lw    $t5, 0x20($v0)
/* 0C5950 80164F10 00402025 */  move  $a0, $v0
/* 0C5954 80164F14 00031880 */  sll   $v1, $v1, 2
/* 0C5958 80164F18 01635821 */  addu  $t3, $t3, $v1
/* 0C595C 80164F1C 8D6BC2E0 */  lw    $t3, -0x3d20($t3)
/* 0C5960 80164F20 00230821 */  addu  $at, $at, $v1
/* 0C5964 80164F24 C424A6E0 */  lwc1  $f4, -0x5920($at)
/* 0C5968 80164F28 3C018019 */  lui   $at, 0x8019
/* 0C596C 80164F2C 000B6080 */  sll   $t4, $t3, 2
/* 0C5970 80164F30 002C0821 */  addu  $at, $at, $t4
/* 0C5974 80164F34 C42668B8 */  lwc1  $f6, 0x68b8($at)
/* 0C5978 80164F38 46062202 */  mul.s $f8, $f4, $f6
/* 0C597C 80164F3C 0C044713 */  jal   func_80111C4C
/* 0C5980 80164F40 E5A80018 */   swc1  $f8, 0x18($t5)
/* 0C5984 80164F44 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C5988 80164F48 2529A7C4 */  addiu $t1, %lo(D_8004A7C4) # addiu $t1, $t1, -0x583c
/* 0C598C 80164F4C 8D2E0000 */  lw    $t6, ($t1)
/* 0C5990 80164F50 3C0A800F */  lui   $t2, %hi(D_800EC2E0) # $t2, 0x800f
/* 0C5994 80164F54 254AC2E0 */  addiu $t2, %lo(D_800EC2E0) # addiu $t2, $t2, -0x3d20
/* 0C5998 80164F58 8DC30000 */  lw    $v1, ($t6)
/* 0C599C 80164F5C 3C088019 */  lui   $t0, 0x8019
/* 0C59A0 80164F60 3C02800F */  lui   $v0, 0x800f
/* 0C59A4 80164F64 00031880 */  sll   $v1, $v1, 2
/* 0C59A8 80164F68 01437821 */  addu  $t7, $t2, $v1
/* 0C59AC 80164F6C 8DF80000 */  lw    $t8, ($t7)
/* 0C59B0 80164F70 00431021 */  addu  $v0, $v0, $v1
/* 0C59B4 80164F74 8C459AA0 */  lw    $a1, -0x6560($v0)
/* 0C59B8 80164F78 0018C880 */  sll   $t9, $t8, 2
/* 0C59BC 80164F7C 01194021 */  addu  $t0, $t0, $t9
/* 0C59C0 80164F80 8D084788 */  lw    $t0, 0x4788($t0)
/* 0C59C4 80164F84 3C048019 */  lui   $a0, 0x8019
/* 0C59C8 80164F88 3C07800F */  lui   $a3, 0x800f
/* 0C59CC 80164F8C AD050008 */  sw    $a1, 8($t0)
/* 0C59D0 80164F90 8D2B0000 */  lw    $t3, ($t1)
/* 0C59D4 80164F94 24060010 */  li    $a2, 16
/* 0C59D8 80164F98 8D630000 */  lw    $v1, ($t3)
/* 0C59DC 80164F9C 00031880 */  sll   $v1, $v1, 2
/* 0C59E0 80164FA0 01436021 */  addu  $t4, $t2, $v1
/* 0C59E4 80164FA4 8D8D0000 */  lw    $t5, ($t4)
/* 0C59E8 80164FA8 00E33821 */  addu  $a3, $a3, $v1
/* 0C59EC 80164FAC 8CE7A6E0 */  lw    $a3, -0x5920($a3)
/* 0C59F0 80164FB0 000D7080 */  sll   $t6, $t5, 2
/* 0C59F4 80164FB4 008E2021 */  addu  $a0, $a0, $t6
/* 0C59F8 80164FB8 8C8468C8 */  lw    $a0, 0x68c8($a0)
/* 0C59FC 80164FBC 0C05481C */  jal   func_80152070_ovl3
/* 0C5A00 80164FC0 AFA80018 */   sw    $t0, 0x18($sp)
/* 0C5A04 80164FC4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C5A08 80164FC8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C5A0C 80164FCC 3C0B801A */  lui   $t3, %hi(D_80198540) # $t3, 0x801a
/* 0C5A10 80164FD0 256B8540 */  addiu $t3, %lo(D_80198540) # addiu $t3, $t3, -0x7ac0
/* 0C5A14 80164FD4 8DE30000 */  lw    $v1, ($t7)
/* 0C5A18 80164FD8 8FA50018 */  lw    $a1, 0x18($sp)
/* 0C5A1C 80164FDC 00003025 */  move  $a2, $zero
/* 0C5A20 80164FE0 0003C140 */  sll   $t8, $v1, 5
/* 0C5A24 80164FE4 2719F880 */  addiu $t9, $t8, -0x780
/* 0C5A28 80164FE8 032B2021 */  addu  $a0, $t9, $t3
/* 0C5A2C 80164FEC 0C055754 */  jal   func_80155D50_ovl3
/* 0C5A30 80164FF0 00603825 */   move  $a3, $v1
/* 0C5A34 80164FF4 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 0C5A38 80164FF8 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 0C5A3C 80164FFC 3C06800F */  lui   $a2, %hi(D_800EA6E0) # $a2, 0x800f
/* 0C5A40 80165000 24C6A6E0 */  addiu $a2, %lo(D_800EA6E0) # addiu $a2, $a2, -0x5920
/* 0C5A44 80165004 8CA30000 */  lw    $v1, ($a1)
/* 0C5A48 80165008 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C5A4C 8016500C 44816000 */  mtc1  $at, $f12
/* 0C5A50 80165010 00031880 */  sll   $v1, $v1, 2
/* 0C5A54 80165014 00C32021 */  addu  $a0, $a2, $v1
/* 0C5A58 80165018 C4800000 */  lwc1  $f0, ($a0)
/* 0C5A5C 8016501C 3C0C800F */  lui   $t4, 0x800f
/* 0C5A60 80165020 44807000 */  mtc1  $zero, $f14
/* 0C5A64 80165024 46006032 */  c.eq.s $f12, $f0
/* 0C5A68 80165028 01836021 */  addu  $t4, $t4, $v1
/* 0C5A6C 8016502C 45010017 */  bc1t  .L8016508C_ovl3
/* 0C5A70 80165030 00000000 */   nop   
/* 0C5A74 80165034 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 0C5A78 80165038 3C018019 */  lui   $at, 0x8019
/* 0C5A7C 8016503C 318D0006 */  andi  $t5, $t4, 6
/* 0C5A80 80165040 11A00004 */  beqz  $t5, .L80165054_ovl3
/* 0C5A84 80165044 00000000 */   nop   
/* 0C5A88 80165048 3C018019 */  lui   $at, %hi(D_80197168) # $at, 0x8019
/* 0C5A8C 8016504C 10000002 */  b     .L80165058_ovl3
/* 0C5A90 80165050 C4227164 */   lwc1  $f2, %lo(D_80197164)($at)
.L80165054_ovl3:
/* 0C5A94 80165054 C4227168 */  lwc1  $f2, %lo(D_80197168)($at)
.L80165058_ovl3:
/* 0C5A98 80165058 46020280 */  add.s $f10, $f0, $f2
/* 0C5A9C 8016505C E48A0000 */  swc1  $f10, ($a0)
/* 0C5AA0 80165060 8CA30000 */  lw    $v1, ($a1)
/* 0C5AA4 80165064 00031880 */  sll   $v1, $v1, 2
/* 0C5AA8 80165068 00C32021 */  addu  $a0, $a2, $v1
/* 0C5AAC 8016506C C4900000 */  lwc1  $f16, ($a0)
/* 0C5AB0 80165070 4610603C */  c.lt.s $f12, $f16
/* 0C5AB4 80165074 00000000 */  nop   
/* 0C5AB8 80165078 45000004 */  bc1f  .L8016508C_ovl3
/* 0C5ABC 8016507C 00000000 */   nop   
/* 0C5AC0 80165080 E48C0000 */  swc1  $f12, ($a0)
/* 0C5AC4 80165084 8CA30000 */  lw    $v1, ($a1)
/* 0C5AC8 80165088 00031880 */  sll   $v1, $v1, 2
.L8016508C_ovl3:
/* 0C5ACC 8016508C 3C04800E */  lui   $a0, %hi(D_800E64D0) # $a0, 0x800e
/* 0C5AD0 80165090 248464D0 */  addiu $a0, %lo(D_800E64D0) # addiu $a0, $a0, 0x64d0
/* 0C5AD4 80165094 00837021 */  addu  $t6, $a0, $v1
/* 0C5AD8 80165098 C5CC0000 */  lwc1  $f12, ($t6)
/* 0C5ADC 8016509C 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0C5AE0 801650A0 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0C5AE4 801650A4 460C7032 */  c.eq.s $f14, $f12
/* 0C5AE8 801650A8 00C31021 */  addu  $v0, $a2, $v1
/* 0C5AEC 801650AC 45010024 */  bc1t  .L80165140_ovl3
/* 0C5AF0 801650B0 00000000 */   nop   
/* 0C5AF4 801650B4 44801000 */  mtc1  $zero, $f2
/* 0C5AF8 801650B8 C4400000 */  lwc1  $f0, ($v0)
/* 0C5AFC 801650BC 4600103C */  c.lt.s $f2, $f0
/* 0C5B00 801650C0 00000000 */  nop   
/* 0C5B04 801650C4 45020006 */  bc1fl .L801650E0_ovl3
/* 0C5B08 801650C8 4602003C */   c.lt.s $f0, $f2
/* 0C5B0C 801650CC 460C103E */  c.le.s $f2, $f12
/* 0C5B10 801650D0 00000000 */  nop   
/* 0C5B14 801650D4 4503000A */  bc1tl .L80165100_ovl3
/* 0C5B18 801650D8 44809000 */   mtc1  $zero, $f18
/* 0C5B1C 801650DC 4602003C */  c.lt.s $f0, $f2
.L801650E0_ovl3:
/* 0C5B20 801650E0 00000000 */  nop   
/* 0C5B24 801650E4 45000016 */  bc1f  .L80165140_ovl3
/* 0C5B28 801650E8 00000000 */   nop   
/* 0C5B2C 801650EC 4602603E */  c.le.s $f12, $f2
/* 0C5B30 801650F0 00000000 */  nop   
/* 0C5B34 801650F4 45000012 */  bc1f  .L80165140_ovl3
/* 0C5B38 801650F8 00000000 */   nop   
/* 0C5B3C 801650FC 44809000 */  mtc1  $zero, $f18
.L80165100_ovl3:
/* 0C5B40 80165100 3C018019 */  lui   $at, %hi(D_8019716C) # $at, 0x8019
/* 0C5B44 80165104 E4520000 */  swc1  $f18, ($v0)
/* 0C5B48 80165108 8CA30000 */  lw    $v1, ($a1)
/* 0C5B4C 8016510C 00031880 */  sll   $v1, $v1, 2
/* 0C5B50 80165110 00C37821 */  addu  $t7, $a2, $v1
/* 0C5B54 80165114 C5E40000 */  lwc1  $f4, ($t7)
/* 0C5B58 80165118 0083C021 */  addu  $t8, $a0, $v1
/* 0C5B5C 8016511C E7040000 */  swc1  $f4, ($t8)
/* 0C5B60 80165120 8CB90000 */  lw    $t9, ($a1)
/* 0C5B64 80165124 C426716C */  lwc1  $f6, %lo(D_8019716C)($at)
/* 0C5B68 80165128 3C01800E */  lui   $at, 0x800e
/* 0C5B6C 8016512C 00195880 */  sll   $t3, $t9, 2
/* 0C5B70 80165130 002B0821 */  addu  $at, $at, $t3
/* 0C5B74 80165134 E4266850 */  swc1  $f6, 0x6850($at)
/* 0C5B78 80165138 8CA30000 */  lw    $v1, ($a1)
/* 0C5B7C 8016513C 00031880 */  sll   $v1, $v1, 2
.L80165140_ovl3:
/* 0C5B80 80165140 3C04800E */  lui   $a0, %hi(D_800E3210) # $a0, 0x800e
/* 0C5B84 80165144 24843210 */  addiu $a0, %lo(D_800E3210) # addiu $a0, $a0, 0x3210
/* 0C5B88 80165148 00836021 */  addu  $t4, $a0, $v1
/* 0C5B8C 8016514C C58C0000 */  lwc1  $f12, ($t4)
/* 0C5B90 80165150 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0C5B94 80165154 44801000 */  mtc1  $zero, $f2
/* 0C5B98 80165158 460C7032 */  c.eq.s $f14, $f12
/* 0C5B9C 8016515C 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0C5BA0 80165160 00C31021 */  addu  $v0, $a2, $v1
/* 0C5BA4 80165164 45030022 */  bc1tl .L801651F0_ovl3
/* 0C5BA8 80165168 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C5BAC 8016516C C4400000 */  lwc1  $f0, ($v0)
/* 0C5BB0 80165170 4600103C */  c.lt.s $f2, $f0
/* 0C5BB4 80165174 00000000 */  nop   
/* 0C5BB8 80165178 45020006 */  bc1fl .L80165194_ovl3
/* 0C5BBC 8016517C 4602003C */   c.lt.s $f0, $f2
/* 0C5BC0 80165180 460C103E */  c.le.s $f2, $f12
/* 0C5BC4 80165184 00000000 */  nop   
/* 0C5BC8 80165188 4503000A */  bc1tl .L801651B4_ovl3
/* 0C5BCC 8016518C 44804000 */   mtc1  $zero, $f8
/* 0C5BD0 80165190 4602003C */  c.lt.s $f0, $f2
.L80165194_ovl3:
/* 0C5BD4 80165194 00000000 */  nop   
/* 0C5BD8 80165198 45020015 */  bc1fl .L801651F0_ovl3
/* 0C5BDC 8016519C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C5BE0 801651A0 4602603E */  c.le.s $f12, $f2
/* 0C5BE4 801651A4 00000000 */  nop   
/* 0C5BE8 801651A8 45020011 */  bc1fl .L801651F0_ovl3
/* 0C5BEC 801651AC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C5BF0 801651B0 44804000 */  mtc1  $zero, $f8
.L801651B4_ovl3:
/* 0C5BF4 801651B4 3C018019 */  lui   $at, %hi(D_80197170) # $at, 0x8019
/* 0C5BF8 801651B8 E4480000 */  swc1  $f8, ($v0)
/* 0C5BFC 801651BC 8CA30000 */  lw    $v1, ($a1)
/* 0C5C00 801651C0 00031880 */  sll   $v1, $v1, 2
/* 0C5C04 801651C4 00C36821 */  addu  $t5, $a2, $v1
/* 0C5C08 801651C8 C5AA0000 */  lwc1  $f10, ($t5)
/* 0C5C0C 801651CC 00837021 */  addu  $t6, $a0, $v1
/* 0C5C10 801651D0 E5CA0000 */  swc1  $f10, ($t6)
/* 0C5C14 801651D4 8CAF0000 */  lw    $t7, ($a1)
/* 0C5C18 801651D8 C4307170 */  lwc1  $f16, %lo(D_80197170)($at)
/* 0C5C1C 801651DC 3C01800E */  lui   $at, 0x800e
/* 0C5C20 801651E0 000FC080 */  sll   $t8, $t7, 2
/* 0C5C24 801651E4 00380821 */  addu  $at, $at, $t8
/* 0C5C28 801651E8 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 0C5C2C 801651EC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801651F0_ovl3:
/* 0C5C30 801651F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C5C34 801651F4 03E00008 */  jr    $ra
/* 0C5C38 801651F8 00000000 */   nop   

.type func_80164EA8_ovl3, @function
.size func_80164EA8_ovl3, . - func_80164EA8_ovl3

glabel func_801651FC_ovl3
/* 0C5C3C 801651FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C5C40 80165200 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C5C44 80165204 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C5C48 80165208 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C5C4C 8016520C AFB00018 */  sw    $s0, 0x18($sp)
/* 0C5C50 80165210 AFA40020 */  sw    $a0, 0x20($sp)
/* 0C5C54 80165214 8C4F0000 */  lw    $t7, ($v0)
/* 0C5C58 80165218 3C018019 */  lui   $at, %hi(D_80197174) # $at, 0x8019
/* 0C5C5C 8016521C C4207174 */  lwc1  $f0, %lo(D_80197174)($at)
/* 0C5C60 80165220 3C01800E */  lui   $at, 0x800e
/* 0C5C64 80165224 000FC080 */  sll   $t8, $t7, 2
/* 0C5C68 80165228 00380821 */  addu  $at, $at, $t8
/* 0C5C6C 8016522C 240E0001 */  li    $t6, 1
/* 0C5C70 80165230 AC2E0650 */  sw    $t6, 0x650($at)
/* 0C5C74 80165234 8C480000 */  lw    $t0, ($v0)
/* 0C5C78 80165238 3C01800E */  lui   $at, 0x800e
/* 0C5C7C 8016523C 3C19800B */  lui   $t9, %hi(D_800B5094) # $t9, 0x800b
/* 0C5C80 80165240 00084880 */  sll   $t1, $t0, 2
/* 0C5C84 80165244 00290821 */  addu  $at, $at, $t1
/* 0C5C88 80165248 27395094 */  addiu $t9, %lo(D_800B5094) # addiu $t9, $t9, 0x5094
/* 0C5C8C 8016524C AC39EF90 */  sw    $t9, -0x1070($at)
/* 0C5C90 80165250 8C4B0000 */  lw    $t3, ($v0)
/* 0C5C94 80165254 3C01800E */  lui   $at, 0x800e
/* 0C5C98 80165258 3C0A8016 */  lui   $t2, %hi(D_801653AC) # $t2, 0x8016
/* 0C5C9C 8016525C 000B6080 */  sll   $t4, $t3, 2
/* 0C5CA0 80165260 002C0821 */  addu  $at, $at, $t4
/* 0C5CA4 80165264 254A53AC */  addiu $t2, %lo(D_801653AC) # addiu $t2, $t2, 0x53ac
/* 0C5CA8 80165268 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 0C5CAC 8016526C 8C4F0000 */  lw    $t7, ($v0)
/* 0C5CB0 80165270 3C01800E */  lui   $at, 0x800e
/* 0C5CB4 80165274 240D000E */  li    $t5, 14
/* 0C5CB8 80165278 000F7080 */  sll   $t6, $t7, 2
/* 0C5CBC 8016527C 002E0821 */  addu  $at, $at, $t6
/* 0C5CC0 80165280 AC2D0F10 */  sw    $t5, 0xf10($at)
/* 0C5CC4 80165284 8C580000 */  lw    $t8, ($v0)
/* 0C5CC8 80165288 3C01800E */  lui   $at, 0x800e
/* 0C5CCC 8016528C 3C0D800E */  lui   $t5, 0x800e
/* 0C5CD0 80165290 00184080 */  sll   $t0, $t8, 2
/* 0C5CD4 80165294 00280821 */  addu  $at, $at, $t0
/* 0C5CD8 80165298 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C5CDC 8016529C 8C590000 */  lw    $t9, ($v0)
/* 0C5CE0 801652A0 3C01800E */  lui   $at, 0x800e
/* 0C5CE4 801652A4 3C10800E */  lui   $s0, %hi(D_800E09D0) # $s0, 0x800e
/* 0C5CE8 801652A8 00194880 */  sll   $t1, $t9, 2
/* 0C5CEC 801652AC 00290821 */  addu  $at, $at, $t1
/* 0C5CF0 801652B0 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C5CF4 801652B4 8C4B0000 */  lw    $t3, ($v0)
/* 0C5CF8 801652B8 3C01800E */  lui   $at, 0x800e
/* 0C5CFC 801652BC 261009D0 */  addiu $s0, %lo(D_800E09D0) # addiu $s0, $s0, 0x9d0
/* 0C5D00 801652C0 000B5080 */  sll   $t2, $t3, 2
/* 0C5D04 801652C4 002A0821 */  addu  $at, $at, $t2
/* 0C5D08 801652C8 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C5D0C 801652CC 8C4C0000 */  lw    $t4, ($v0)
/* 0C5D10 801652D0 000C7880 */  sll   $t7, $t4, 2
/* 0C5D14 801652D4 01AF6821 */  addu  $t5, $t5, $t7
/* 0C5D18 801652D8 8DAD0D50 */  lw    $t5, 0xd50($t5)
/* 0C5D1C 801652DC 000D7080 */  sll   $t6, $t5, 2
/* 0C5D20 801652E0 020EC021 */  addu  $t8, $s0, $t6
/* 0C5D24 801652E4 0C02BB30 */  jal   func_800AECC0
/* 0C5D28 801652E8 C70C0000 */   lwc1  $f12, ($t8)
/* 0C5D2C 801652EC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0C5D30 801652F0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0C5D34 801652F4 3C0B800E */  lui   $t3, 0x800e
/* 0C5D38 801652F8 8D190000 */  lw    $t9, ($t0)
/* 0C5D3C 801652FC 00194880 */  sll   $t1, $t9, 2
/* 0C5D40 80165300 01695821 */  addu  $t3, $t3, $t1
/* 0C5D44 80165304 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 0C5D48 80165308 000B5080 */  sll   $t2, $t3, 2
/* 0C5D4C 8016530C 020A6021 */  addu  $t4, $s0, $t2
/* 0C5D50 80165310 0C02BB48 */  jal   func_800AED20
/* 0C5D54 80165314 C58C0000 */   lwc1  $f12, ($t4)
/* 0C5D58 80165318 3C040002 */  lui   $a0, (0x0002004B >> 16) # lui $a0, 2
/* 0C5D5C 8016531C 3484004B */  ori   $a0, (0x0002004B & 0xFFFF) # ori $a0, $a0, 0x4b
/* 0C5D60 80165320 24050022 */  li    $a1, 34
/* 0C5D64 80165324 0C02A619 */  jal   func_800A9864
/* 0C5D68 80165328 24060010 */   li    $a2, 16
/* 0C5D6C 8016532C 0C029D9E */  jal   play_sound
/* 0C5D70 80165330 24040023 */   li    $a0, 35
/* 0C5D74 80165334 3C040002 */  lui   $a0, (0x000202AA >> 16) # lui $a0, 2
/* 0C5D78 80165338 0C02A855 */  jal   func_800AA154
/* 0C5D7C 8016533C 348402AA */   ori   $a0, (0x000202AA & 0xFFFF) # ori $a0, $a0, 0x2aa
/* 0C5D80 80165340 3C108005 */  lui   $s0, %hi(gPlayerControllers) # $s0, 0x8005
/* 0C5D84 80165344 26108F20 */  addiu $s0, %lo(gPlayerControllers) # addiu $s0, $s0, -0x70e0
/* 0C5D88 80165348 960F0000 */  lhu   $t7, ($s0)
/* 0C5D8C 8016534C 31ED0400 */  andi  $t5, $t7, 0x400
/* 0C5D90 80165350 51A00008 */  beql  $t5, $zero, .L80165374_ovl3
/* 0C5D94 80165354 3C040002 */   lui   $a0, 2
.L80165358_ovl3:
/* 0C5D98 80165358 0C002DAF */  jal   finish_current_thread
/* 0C5D9C 8016535C 24040001 */   li    $a0, 1
/* 0C5DA0 80165360 960E0000 */  lhu   $t6, ($s0)
/* 0C5DA4 80165364 31D80400 */  andi  $t8, $t6, 0x400
/* 0C5DA8 80165368 1700FFFB */  bnez  $t8, .L80165358_ovl3
/* 0C5DAC 8016536C 00000000 */   nop   
/* 0C5DB0 80165370 3C040002 */  lui   $a0, (0x000202AB >> 16) # lui $a0, 2
.L80165374_ovl3:
/* 0C5DB4 80165374 0C02A806 */  jal   func_800AA018
/* 0C5DB8 80165378 348402AB */   ori   $a0, (0x000202AB & 0xFFFF) # ori $a0, $a0, 0x2ab
/* 0C5DBC 8016537C 3C040002 */  lui   $a0, (0x000202AC >> 16) # lui $a0, 2
/* 0C5DC0 80165380 0C02A855 */  jal   func_800AA154
/* 0C5DC4 80165384 348402AC */   ori   $a0, (0x000202AC & 0xFFFF) # ori $a0, $a0, 0x2ac
/* 0C5DC8 80165388 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0C5DCC 8016538C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0C5DD0 80165390 0C02C640 */  jal   func_800B1900
/* 0C5DD4 80165394 95040002 */   lhu   $a0, 2($t0)
/* 0C5DD8 80165398 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0C5DDC 8016539C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C5DE0 801653A0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C5DE4 801653A4 03E00008 */  jr    $ra
/* 0C5DE8 801653A8 00000000 */   nop   

.type func_801651FC_ovl3, @function
.size func_801651FC_ovl3, . - func_801651FC_ovl3

glabel func_801653AC_ovl3
/* 0C5DEC 801653AC 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0C5DF0 801653B0 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0C5DF4 801653B4 8C4E0030 */  lw    $t6, 0x30($v0)
/* 0C5DF8 801653B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C5DFC 801653BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C5E00 801653C0 15C00004 */  bnez  $t6, .L801653D4_ovl3
/* 0C5E04 801653C4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C5E08 801653C8 904F0005 */  lbu   $t7, 5($v0)
/* 0C5E0C 801653CC 2401000E */  li    $at, 14
/* 0C5E10 801653D0 11E10004 */  beq   $t7, $at, .L801653E4_ovl3
.L801653D4_ovl3:
/* 0C5E14 801653D4 3C188005 */   lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0C5E18 801653D8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0C5E1C 801653DC 0C02C640 */  jal   func_800B1900
/* 0C5E20 801653E0 97040002 */   lhu   $a0, 2($t8)
.L801653E4_ovl3:
/* 0C5E24 801653E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C5E28 801653E8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C5E2C 801653EC 03E00008 */  jr    $ra
/* 0C5E30 801653F0 00000000 */   nop   

.type func_801653AC_ovl3, @function
.size func_801653AC_ovl3, . - func_801653AC_ovl3

glabel func_801653F4_ovl3
/* 0C5E34 801653F4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C5E38 801653F8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C5E3C 801653FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C5E40 80165400 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C5E44 80165404 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C5E48 80165408 8C4F0000 */  lw    $t7, ($v0)
/* 0C5E4C 8016540C 3C0E800B */  lui   $t6, %hi(D_800B4B9C) # $t6, 0x800b
/* 0C5E50 80165410 3C01800E */  lui   $at, 0x800e
/* 0C5E54 80165414 000FC080 */  sll   $t8, $t7, 2
/* 0C5E58 80165418 00380821 */  addu  $at, $at, $t8
/* 0C5E5C 8016541C 25CE4B9C */  addiu $t6, %lo(D_800B4B9C) # addiu $t6, $t6, 0x4b9c
/* 0C5E60 80165420 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C5E64 80165424 8C480000 */  lw    $t0, ($v0)
/* 0C5E68 80165428 3C01800E */  lui   $at, 0x800e
/* 0C5E6C 8016542C 3C198016 */  lui   $t9, %hi(D_801654CC) # $t9, 0x8016
/* 0C5E70 80165430 00084880 */  sll   $t1, $t0, 2
/* 0C5E74 80165434 00290821 */  addu  $at, $at, $t1
/* 0C5E78 80165438 273954CC */  addiu $t9, %lo(D_801654CC) # addiu $t9, $t9, 0x54cc
/* 0C5E7C 8016543C AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C5E80 80165440 8C4A0000 */  lw    $t2, ($v0)
/* 0C5E84 80165444 3C0C800F */  lui   $t4, 0x800f
/* 0C5E88 80165448 3C040002 */  lui   $a0, (0x00020051 >> 16) # lui $a0, 2
/* 0C5E8C 8016544C 000A5880 */  sll   $t3, $t2, 2
/* 0C5E90 80165450 018B6021 */  addu  $t4, $t4, $t3
/* 0C5E94 80165454 8D8CC2E0 */  lw    $t4, -0x3d20($t4)
/* 0C5E98 80165458 24060010 */  li    $a2, 16
/* 0C5E9C 8016545C 34840051 */  ori   $a0, (0x00020051 & 0xFFFF) # ori $a0, $a0, 0x51
/* 0C5EA0 80165460 1580000A */  bnez  $t4, .L8016548C_ovl3
/* 0C5EA4 80165464 24050022 */   li    $a1, 34
/* 0C5EA8 80165468 3C040002 */  lui   $a0, (0x00020050 >> 16) # lui $a0, 2
/* 0C5EAC 8016546C 34840050 */  ori   $a0, (0x00020050 & 0xFFFF) # ori $a0, $a0, 0x50
/* 0C5EB0 80165470 0C02A619 */  jal   func_800A9864
/* 0C5EB4 80165474 24050022 */   li    $a1, 34
/* 0C5EB8 80165478 3C040002 */  lui   $a0, (0x000202B5 >> 16) # lui $a0, 2
/* 0C5EBC 8016547C 0C02A855 */  jal   func_800AA154
/* 0C5EC0 80165480 348402B5 */   ori   $a0, (0x000202B5 & 0xFFFF) # ori $a0, $a0, 0x2b5
/* 0C5EC4 80165484 10000009 */  b     .L801654AC_ovl3
/* 0C5EC8 80165488 00000000 */   nop   
.L8016548C_ovl3:
/* 0C5ECC 8016548C 0C02A619 */  jal   func_800A9864
/* 0C5ED0 80165490 24060010 */   li    $a2, 16
/* 0C5ED4 80165494 3C040002 */  lui   $a0, (0x000202B7 >> 16) # lui $a0, 2
/* 0C5ED8 80165498 3C050002 */  lui   $a1, (0x000202B8 >> 16) # lui $a1, 2
/* 0C5EDC 8016549C 34A502B8 */  ori   $a1, (0x000202B8 & 0xFFFF) # ori $a1, $a1, 0x2b8
/* 0C5EE0 801654A0 348402B7 */  ori   $a0, (0x000202B7 & 0xFFFF) # ori $a0, $a0, 0x2b7
/* 0C5EE4 801654A4 0C048C3A */  jal   func_801230E8
/* 0C5EE8 801654A8 24060001 */   li    $a2, 1
.L801654AC_ovl3:
/* 0C5EEC 801654AC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C5EF0 801654B0 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C5EF4 801654B4 0C02C640 */  jal   func_800B1900
/* 0C5EF8 801654B8 95A40002 */   lhu   $a0, 2($t5)
/* 0C5EFC 801654BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C5F00 801654C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C5F04 801654C4 03E00008 */  jr    $ra
/* 0C5F08 801654C8 00000000 */   nop   

.type func_801653F4_ovl3, @function
.size func_801653F4_ovl3, . - func_801653F4_ovl3

glabel func_801654CC_ovl3
/* 0C5F0C 801654CC 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C5F10 801654D0 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C5F14 801654D4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C5F18 801654D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C5F1C 801654DC 15C00005 */  bnez  $t6, .L801654F4_ovl3
/* 0C5F20 801654E0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C5F24 801654E4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C5F28 801654E8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C5F2C 801654EC 0C02C640 */  jal   func_800B1900
/* 0C5F30 801654F0 95E40002 */   lhu   $a0, 2($t7)
.L801654F4_ovl3:
/* 0C5F34 801654F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C5F38 801654F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C5F3C 801654FC 03E00008 */  jr    $ra
/* 0C5F40 80165500 00000000 */   nop   

.type func_801654CC_ovl3, @function
.size func_801654CC_ovl3, . - func_801654CC_ovl3

glabel func_80165504_ovl3
/* 0C5F44 80165504 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C5F48 80165508 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C5F4C 8016550C 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C5F50 80165510 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0C5F54 80165514 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0C5F58 80165518 AFB70034 */  sw    $s7, 0x34($sp)
/* 0C5F5C 8016551C AFB60030 */  sw    $s6, 0x30($sp)
/* 0C5F60 80165520 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0C5F64 80165524 AFB40028 */  sw    $s4, 0x28($sp)
/* 0C5F68 80165528 AFB30024 */  sw    $s3, 0x24($sp)
/* 0C5F6C 8016552C AFB20020 */  sw    $s2, 0x20($sp)
/* 0C5F70 80165530 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C5F74 80165534 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C5F78 80165538 AFA40040 */  sw    $a0, 0x40($sp)
/* 0C5F7C 8016553C 8CEF0000 */  lw    $t7, ($a3)
/* 0C5F80 80165540 3C018019 */  lui   $at, %hi(D_80197178) # $at, 0x8019
/* 0C5F84 80165544 C4207178 */  lwc1  $f0, %lo(D_80197178)($at)
/* 0C5F88 80165548 3C01800E */  lui   $at, 0x800e
/* 0C5F8C 8016554C 3C0E800B */  lui   $t6, %hi(func_800B5064) # $t6, 0x800b
/* 0C5F90 80165550 000FC080 */  sll   $t8, $t7, 2
/* 0C5F94 80165554 00380821 */  addu  $at, $at, $t8
/* 0C5F98 80165558 25CE5064 */  addiu $t6, %lo(func_800B5064) # addiu $t6, $t6, 0x5064
/* 0C5F9C 8016555C AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C5FA0 80165560 8CE80000 */  lw    $t0, ($a3)
/* 0C5FA4 80165564 3C01800E */  lui   $at, 0x800e
/* 0C5FA8 80165568 3C198016 */  lui   $t9, %hi(D_801657BC) # $t9, 0x8016
/* 0C5FAC 8016556C 00084880 */  sll   $t1, $t0, 2
/* 0C5FB0 80165570 00290821 */  addu  $at, $at, $t1
/* 0C5FB4 80165574 273957BC */  addiu $t9, %lo(D_801657BC) # addiu $t9, $t9, 0x57bc
/* 0C5FB8 80165578 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C5FBC 8016557C 8CEA0000 */  lw    $t2, ($a3)
/* 0C5FC0 80165580 3C01800E */  lui   $at, 0x800e
/* 0C5FC4 80165584 24120001 */  li    $s2, 1
/* 0C5FC8 80165588 000A5880 */  sll   $t3, $t2, 2
/* 0C5FCC 8016558C 002B0821 */  addu  $at, $at, $t3
/* 0C5FD0 80165590 AC320F10 */  sw    $s2, 0xf10($at)
/* 0C5FD4 80165594 8CEC0000 */  lw    $t4, ($a3)
/* 0C5FD8 80165598 3C01800E */  lui   $at, 0x800e
/* 0C5FDC 8016559C 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0C5FE0 801655A0 000C6880 */  sll   $t5, $t4, 2
/* 0C5FE4 801655A4 002D0821 */  addu  $at, $at, $t5
/* 0C5FE8 801655A8 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C5FEC 801655AC 8CEF0000 */  lw    $t7, ($a3)
/* 0C5FF0 801655B0 3C01800E */  lui   $at, 0x800e
/* 0C5FF4 801655B4 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0C5FF8 801655B8 000F7080 */  sll   $t6, $t7, 2
/* 0C5FFC 801655BC 002E0821 */  addu  $at, $at, $t6
/* 0C6000 801655C0 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C6004 801655C4 8CF80000 */  lw    $t8, ($a3)
/* 0C6008 801655C8 3C01800E */  lui   $at, 0x800e
/* 0C600C 801655CC 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 0C6010 801655D0 00184080 */  sll   $t0, $t8, 2
/* 0C6014 801655D4 00280821 */  addu  $at, $at, $t0
/* 0C6018 801655D8 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C601C 801655DC 8CE30000 */  lw    $v1, ($a3)
/* 0C6020 801655E0 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 0C6024 801655E4 3C040002 */  lui   $a0, (0x00020055 >> 16) # lui $a0, 2
/* 0C6028 801655E8 00031880 */  sll   $v1, $v1, 2
/* 0C602C 801655EC 0203C821 */  addu  $t9, $s0, $v1
/* 0C6030 801655F0 8F290000 */  lw    $t1, ($t9)
/* 0C6034 801655F4 02236821 */  addu  $t5, $s1, $v1
/* 0C6038 801655F8 34840055 */  ori   $a0, (0x00020055 & 0xFFFF) # ori $a0, $a0, 0x55
/* 0C603C 801655FC 00095080 */  sll   $t2, $t1, 2
/* 0C6040 80165600 022A5821 */  addu  $t3, $s1, $t2
/* 0C6044 80165604 8D6C0000 */  lw    $t4, ($t3)
/* 0C6048 80165608 24050022 */  li    $a1, 34
/* 0C604C 8016560C 24060010 */  li    $a2, 16
/* 0C6050 80165610 0C02A619 */  jal   func_800A9864
/* 0C6054 80165614 ADAC0000 */   sw    $t4, ($t5)
/* 0C6058 80165618 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C605C 8016561C 3C1E0002 */  lui   $fp, (0x000202C2 >> 16) # lui $fp, 2
/* 0C6060 80165620 3C170002 */  lui   $s7, (0x00020056 >> 16) # lui $s7, 2
/* 0C6064 80165624 3C160002 */  lui   $s6, (0x000202C3 >> 16) # lui $s6, 2
/* 0C6068 80165628 3C150002 */  lui   $s5, (0x00020057 >> 16) # lui $s5, 2
/* 0C606C 8016562C 36B50057 */  ori   $s5, (0x00020057 & 0xFFFF) # ori $s5, $s5, 0x57
/* 0C6070 80165630 36D602C3 */  ori   $s6, (0x000202C3 & 0xFFFF) # ori $s6, $s6, 0x2c3
/* 0C6074 80165634 36F70056 */  ori   $s7, (0x00020056 & 0xFFFF) # ori $s7, $s7, 0x56
/* 0C6078 80165638 37DE02C2 */  ori   $fp, (0x000202C2 & 0xFFFF) # ori $fp, $fp, 0x2c2
/* 0C607C 8016563C 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C6080 80165640 24140003 */  li    $s4, 3
/* 0C6084 80165644 24130002 */  li    $s3, 2
.L80165648_ovl3:
/* 0C6088 80165648 8CE30000 */  lw    $v1, ($a3)
/* 0C608C 8016564C 00031880 */  sll   $v1, $v1, 2
/* 0C6090 80165650 02232021 */  addu  $a0, $s1, $v1
/* 0C6094 80165654 8C850000 */  lw    $a1, ($a0)
/* 0C6098 80165658 50A0000A */  beql  $a1, $zero, .L80165684_ovl3
/* 0C609C 8016565C 3C040002 */   lui   $a0, 2
/* 0C60A0 80165660 10B20011 */  beq   $a1, $s2, .L801656A8_ovl3
/* 0C60A4 80165664 00000000 */   nop   
/* 0C60A8 80165668 10B3001A */  beq   $a1, $s3, .L801656D4_ovl3
/* 0C60AC 8016566C 00000000 */   nop   
/* 0C60B0 80165670 10B40023 */  beq   $a1, $s4, .L80165700_ovl3
/* 0C60B4 80165674 00000000 */   nop   
/* 0C60B8 80165678 1000002F */  b     .L80165738_ovl3
/* 0C60BC 8016567C 02034821 */   addu  $t1, $s0, $v1
/* 0C60C0 80165680 3C040002 */  lui   $a0, (0x000202C1 >> 16) # lui $a0, 2
.L80165684_ovl3:
/* 0C60C4 80165684 0C02A806 */  jal   func_800AA018
/* 0C60C8 80165688 348402C1 */   ori   $a0, (0x000202C1 & 0xFFFF) # ori $a0, $a0, 0x2c1
/* 0C60CC 8016568C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C60D0 80165690 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C60D4 80165694 8CE30000 */  lw    $v1, ($a3)
/* 0C60D8 80165698 00031880 */  sll   $v1, $v1, 2
/* 0C60DC 8016569C 02232021 */  addu  $a0, $s1, $v1
/* 0C60E0 801656A0 10000024 */  b     .L80165734_ovl3
/* 0C60E4 801656A4 8C850000 */   lw    $a1, ($a0)
.L801656A8_ovl3:
/* 0C60E8 801656A8 0C02A5D8 */  jal   func_800A9760
/* 0C60EC 801656AC 02E02025 */   move  $a0, $s7
/* 0C60F0 801656B0 0C02A806 */  jal   func_800AA018
/* 0C60F4 801656B4 03C02025 */   move  $a0, $fp
/* 0C60F8 801656B8 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C60FC 801656BC 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C6100 801656C0 8CE30000 */  lw    $v1, ($a3)
/* 0C6104 801656C4 00031880 */  sll   $v1, $v1, 2
/* 0C6108 801656C8 02232021 */  addu  $a0, $s1, $v1
/* 0C610C 801656CC 10000019 */  b     .L80165734_ovl3
/* 0C6110 801656D0 8C850000 */   lw    $a1, ($a0)
.L801656D4_ovl3:
/* 0C6114 801656D4 0C02A5D8 */  jal   func_800A9760
/* 0C6118 801656D8 02A02025 */   move  $a0, $s5
/* 0C611C 801656DC 0C02A806 */  jal   func_800AA018
/* 0C6120 801656E0 02C02025 */   move  $a0, $s6
/* 0C6124 801656E4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C6128 801656E8 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C612C 801656EC 8CE30000 */  lw    $v1, ($a3)
/* 0C6130 801656F0 00031880 */  sll   $v1, $v1, 2
/* 0C6134 801656F4 02232021 */  addu  $a0, $s1, $v1
/* 0C6138 801656F8 1000000E */  b     .L80165734_ovl3
/* 0C613C 801656FC 8C850000 */   lw    $a1, ($a0)
.L80165700_ovl3:
/* 0C6140 80165700 0C002DAF */  jal   finish_current_thread
/* 0C6144 80165704 24040002 */   li    $a0, 2
/* 0C6148 80165708 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C614C 8016570C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C6150 80165710 240F0004 */  li    $t7, 4
/* 0C6154 80165714 24040005 */  li    $a0, 5
/* 0C6158 80165718 8DD80000 */  lw    $t8, ($t6)
/* 0C615C 8016571C 00184080 */  sll   $t0, $t8, 2
/* 0C6160 80165720 0228C821 */  addu  $t9, $s1, $t0
/* 0C6164 80165724 0C002DAF */  jal   finish_current_thread
/* 0C6168 80165728 AF2F0000 */   sw    $t7, ($t9)
/* 0C616C 8016572C 10000013 */  b     .L8016577C_ovl3
/* 0C6170 80165730 00000000 */   nop   
.L80165734_ovl3:
/* 0C6174 80165734 02034821 */  addu  $t1, $s0, $v1
.L80165738_ovl3:
/* 0C6178 80165738 8D2A0000 */  lw    $t2, ($t1)
/* 0C617C 8016573C 000A5880 */  sll   $t3, $t2, 2
/* 0C6180 80165740 022B6021 */  addu  $t4, $s1, $t3
/* 0C6184 80165744 8D820000 */  lw    $v0, ($t4)
/* 0C6188 80165748 10A20003 */  beq   $a1, $v0, .L80165758_ovl3
/* 0C618C 8016574C 00000000 */   nop   
/* 0C6190 80165750 1000FFBD */  b     .L80165648_ovl3
/* 0C6194 80165754 AC820000 */   sw    $v0, ($a0)
.L80165758_ovl3:
/* 0C6198 80165758 0C002DAF */  jal   finish_current_thread
/* 0C619C 8016575C 02402025 */   move  $a0, $s2
/* 0C61A0 80165760 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 0C61A4 80165764 8CE7A7C4 */  lw    $a3, %lo(D_8004A7C4)($a3)
/* 0C61A8 80165768 8CE30000 */  lw    $v1, ($a3)
/* 0C61AC 8016576C 00031880 */  sll   $v1, $v1, 2
/* 0C61B0 80165770 02232021 */  addu  $a0, $s1, $v1
/* 0C61B4 80165774 1000FFEF */  b     .L80165734_ovl3
/* 0C61B8 80165778 8C850000 */   lw    $a1, ($a0)
.L8016577C_ovl3:
/* 0C61BC 8016577C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C61C0 80165780 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C61C4 80165784 0C02C640 */  jal   func_800B1900
/* 0C61C8 80165788 95A40002 */   lhu   $a0, 2($t5)
/* 0C61CC 8016578C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0C61D0 80165790 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C61D4 80165794 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C61D8 80165798 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C61DC 8016579C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0C61E0 801657A0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0C61E4 801657A4 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0C61E8 801657A8 8FB60030 */  lw    $s6, 0x30($sp)
/* 0C61EC 801657AC 8FB70034 */  lw    $s7, 0x34($sp)
/* 0C61F0 801657B0 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0C61F4 801657B4 03E00008 */  jr    $ra
/* 0C61F8 801657B8 27BD0040 */   addiu $sp, $sp, 0x40

.type func_80165504_ovl3, @function
.size func_80165504_ovl3, . - func_80165504_ovl3

glabel func_801657BC_ovl3
/* 0C61FC 801657BC 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C6200 801657C0 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C6204 801657C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C6208 801657C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C620C 801657CC 11C00053 */  beqz  $t6, .L8016591C_ovl3
/* 0C6210 801657D0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C6214 801657D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C6218 801657D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C621C 801657DC 3C09800F */  lui   $t1, %hi(D_800E98E0) # $t1, 0x800f
/* 0C6220 801657E0 252998E0 */  addiu $t1, %lo(D_800E98E0) # addiu $t1, $t1, -0x6720
/* 0C6224 801657E4 8C430000 */  lw    $v1, ($v0)
/* 0C6228 801657E8 3C078019 */  lui   $a3, %hi(D_801968D8) # $a3, 0x8019
/* 0C622C 801657EC 24E768D8 */  addiu $a3, %lo(D_801968D8) # addiu $a3, $a3, 0x68d8
/* 0C6230 801657F0 00034080 */  sll   $t0, $v1, 2
/* 0C6234 801657F4 01287821 */  addu  $t7, $t1, $t0
/* 0C6238 801657F8 8DF80000 */  lw    $t8, ($t7)
/* 0C623C 801657FC 44802000 */  mtc1  $zero, $f4
/* 0C6240 80165800 3C018019 */  lui   $at, 0x8019
/* 0C6244 80165804 0018C880 */  sll   $t9, $t8, 2
/* 0C6248 80165808 00F95021 */  addu  $t2, $a3, $t9
/* 0C624C 8016580C C5400000 */  lwc1  $f0, ($t2)
/* 0C6250 80165810 00036940 */  sll   $t5, $v1, 5
/* 0C6254 80165814 002D0821 */  addu  $at, $at, $t5
/* 0C6258 80165818 46040032 */  c.eq.s $f0, $f4
/* 0C625C 8016581C 00000000 */  nop   
/* 0C6260 80165820 4501003C */  bc1t  .L80165914_ovl3
/* 0C6264 80165824 00000000 */   nop   
/* 0C6268 80165828 44803000 */  mtc1  $zero, $f6
/* 0C626C 8016582C 3C01800E */  lui   $at, 0x800e
/* 0C6270 80165830 00280821 */  addu  $at, $at, $t0
/* 0C6274 80165834 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0C6278 80165838 8C4B0000 */  lw    $t3, ($v0)
/* 0C627C 8016583C 3C048019 */  lui   $a0, %hi(D_80191C00) # $a0, 0x8019
/* 0C6280 80165840 24841C00 */  addiu $a0, %lo(D_80191C00) # addiu $a0, $a0, 0x1c00
/* 0C6284 80165844 000B6080 */  sll   $t4, $t3, 2
/* 0C6288 80165848 012C6821 */  addu  $t5, $t1, $t4
/* 0C628C 8016584C 8DAE0000 */  lw    $t6, ($t5)
/* 0C6290 80165850 00002825 */  move  $a1, $zero
/* 0C6294 80165854 000E7880 */  sll   $t7, $t6, 2
/* 0C6298 80165858 00EFC021 */  addu  $t8, $a3, $t7
/* 0C629C 8016585C 0C05A153 */  jal   func_8016854C_ovl3
/* 0C62A0 80165860 8F060000 */   lw    $a2, ($t8)
/* 0C62A4 80165864 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C62A8 80165868 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C62AC 8016586C 3C19800E */  lui   $t9, 0x800e
/* 0C62B0 80165870 3C03800E */  lui   $v1, %hi(gEntitiesAngleYArray) # $v1, 0x800e
/* 0C62B4 80165874 8C480000 */  lw    $t0, ($v0)
/* 0C62B8 80165878 246341D0 */  addiu $v1, %lo(gEntitiesAngleYArray) # addiu $v1, $v1, 0x41d0
/* 0C62BC 8016587C 3C0F800F */  lui   $t7, 0x800f
/* 0C62C0 80165880 00084080 */  sll   $t0, $t0, 2
/* 0C62C4 80165884 0328C821 */  addu  $t9, $t9, $t0
/* 0C62C8 80165888 8F390D50 */  lw    $t9, 0xd50($t9)
/* 0C62CC 8016588C 00686021 */  addu  $t4, $v1, $t0
/* 0C62D0 80165890 3C078019 */  lui   $a3, 0x8019
/* 0C62D4 80165894 00195080 */  sll   $t2, $t9, 2
/* 0C62D8 80165898 006A5821 */  addu  $t3, $v1, $t2
/* 0C62DC 8016589C C5680000 */  lwc1  $f8, ($t3)
/* 0C62E0 801658A0 3C048019 */  lui   $a0, %hi(D_801953F4) # $a0, 0x8019
/* 0C62E4 801658A4 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C62E8 801658A8 E5880000 */  swc1  $f8, ($t4)
/* 0C62EC 801658AC 8C4D0000 */  lw    $t5, ($v0)
/* 0C62F0 801658B0 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C62F4 801658B4 248453F4 */  addiu $a0, %lo(D_801953F4) # addiu $a0, $a0, 0x53f4
/* 0C62F8 801658B8 000D7080 */  sll   $t6, $t5, 2
/* 0C62FC 801658BC 01EE7821 */  addu  $t7, $t7, $t6
/* 0C6300 801658C0 8DEF98E0 */  lw    $t7, -0x6720($t7)
/* 0C6304 801658C4 24060010 */  li    $a2, 16
/* 0C6308 801658C8 000FC080 */  sll   $t8, $t7, 2
/* 0C630C 801658CC 00F83821 */  addu  $a3, $a3, $t8
/* 0C6310 801658D0 0C05481C */  jal   func_80152070_ovl3
/* 0C6314 801658D4 8CE768D8 */   lw    $a3, 0x68d8($a3)
/* 0C6318 801658D8 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C631C 801658DC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C6320 801658E0 3C0C801A */  lui   $t4, %hi(D_80198540) # $t4, 0x801a
/* 0C6324 801658E4 258C8540 */  addiu $t4, %lo(D_80198540) # addiu $t4, $t4, -0x7ac0
/* 0C6328 801658E8 8F230000 */  lw    $v1, ($t9)
/* 0C632C 801658EC 3C058019 */  lui   $a1, %hi(D_801954F4) # $a1, 0x8019
/* 0C6330 801658F0 24A554F4 */  addiu $a1, %lo(D_801954F4) # addiu $a1, $a1, 0x54f4
/* 0C6334 801658F4 00035140 */  sll   $t2, $v1, 5
/* 0C6338 801658F8 254BF880 */  addiu $t3, $t2, -0x780
/* 0C633C 801658FC 016C2021 */  addu  $a0, $t3, $t4
/* 0C6340 80165900 00003025 */  move  $a2, $zero
/* 0C6344 80165904 0C055754 */  jal   func_80155D50_ovl3
/* 0C6348 80165908 00603825 */   move  $a3, $v1
/* 0C634C 8016590C 10000008 */  b     .L80165930_ovl3
/* 0C6350 80165910 8FBF0014 */   lw    $ra, 0x14($sp)
.L80165914_ovl3:
/* 0C6354 80165914 10000005 */  b     .L8016592C_ovl3
/* 0C6358 80165918 AC207DDC */   sw    $zero, 0x7ddc($at)
.L8016591C_ovl3:
/* 0C635C 8016591C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C6360 80165920 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C6364 80165924 0C02C640 */  jal   func_800B1900
/* 0C6368 80165928 95C40002 */   lhu   $a0, 2($t6)
.L8016592C_ovl3:
/* 0C636C 8016592C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80165930_ovl3:
/* 0C6370 80165930 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C6374 80165934 03E00008 */  jr    $ra
/* 0C6378 80165938 00000000 */   nop   

.type func_801657BC_ovl3, @function
.size func_801657BC_ovl3, . - func_801657BC_ovl3

glabel func_8016593C_ovl3
/* 0C637C 8016593C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C6380 80165940 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C6384 80165944 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C6388 80165948 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C638C 8016594C AFB00018 */  sw    $s0, 0x18($sp)
/* 0C6390 80165950 AFA40020 */  sw    $a0, 0x20($sp)
/* 0C6394 80165954 8C4F0000 */  lw    $t7, ($v0)
/* 0C6398 80165958 3C018019 */  lui   $at, %hi(D_8019717C) # $at, 0x8019
/* 0C639C 8016595C C420717C */  lwc1  $f0, %lo(D_8019717C)($at)
/* 0C63A0 80165960 3C01800E */  lui   $at, 0x800e
/* 0C63A4 80165964 3C0E8016 */  lui   $t6, %hi(D_80165CD8) # $t6, 0x8016
/* 0C63A8 80165968 000FC080 */  sll   $t8, $t7, 2
/* 0C63AC 8016596C 00380821 */  addu  $at, $at, $t8
/* 0C63B0 80165970 25CE5CD8 */  addiu $t6, %lo(D_80165CD8) # addiu $t6, $t6, 0x5cd8
/* 0C63B4 80165974 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 0C63B8 80165978 8C590000 */  lw    $t9, ($v0)
/* 0C63BC 8016597C 3C01800E */  lui   $at, 0x800e
/* 0C63C0 80165980 3C04800F */  lui   $a0, 0x800f
/* 0C63C4 80165984 00194080 */  sll   $t0, $t9, 2
/* 0C63C8 80165988 00280821 */  addu  $at, $at, $t0
/* 0C63CC 8016598C E4204550 */  swc1  $f0, 0x4550($at)
/* 0C63D0 80165990 8C490000 */  lw    $t1, ($v0)
/* 0C63D4 80165994 3C01800E */  lui   $at, 0x800e
/* 0C63D8 80165998 240D0001 */  li    $t5, 1
/* 0C63DC 8016599C 00095080 */  sll   $t2, $t1, 2
/* 0C63E0 801659A0 002A0821 */  addu  $at, $at, $t2
/* 0C63E4 801659A4 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C63E8 801659A8 8C4B0000 */  lw    $t3, ($v0)
/* 0C63EC 801659AC 3C01800E */  lui   $at, 0x800e
/* 0C63F0 801659B0 3C0F800B */  lui   $t7, %hi(D_800B5094) # $t7, 0x800b
/* 0C63F4 801659B4 000B6080 */  sll   $t4, $t3, 2
/* 0C63F8 801659B8 002C0821 */  addu  $at, $at, $t4
/* 0C63FC 801659BC E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C6400 801659C0 8C430000 */  lw    $v1, ($v0)
/* 0C6404 801659C4 3C01800E */  lui   $at, 0x800e
/* 0C6408 801659C8 00031880 */  sll   $v1, $v1, 2
/* 0C640C 801659CC 00832021 */  addu  $a0, $a0, $v1
/* 0C6410 801659D0 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C6414 801659D4 00230821 */  addu  $at, $at, $v1
/* 0C6418 801659D8 10800006 */  beqz  $a0, .L801659F4_ovl3
/* 0C641C 801659DC 00000000 */   nop   
/* 0C6420 801659E0 24010001 */  li    $at, 1
/* 0C6424 801659E4 10810036 */  beq   $a0, $at, .L80165AC0_ovl3
/* 0C6428 801659E8 00000000 */   nop   
/* 0C642C 801659EC 100000B6 */  b     .L80165CC8_ovl3
/* 0C6430 801659F0 8FBF001C */   lw    $ra, 0x1c($sp)
.L801659F4_ovl3:
/* 0C6434 801659F4 AC2D0650 */  sw    $t5, 0x650($at)
/* 0C6438 801659F8 8C4E0000 */  lw    $t6, ($v0)
/* 0C643C 801659FC 3C01800E */  lui   $at, 0x800e
/* 0C6440 80165A00 25EF5094 */  addiu $t7, %lo(D_800B5094) # addiu $t7, $t7, 0x5094
/* 0C6444 80165A04 000EC080 */  sll   $t8, $t6, 2
/* 0C6448 80165A08 00380821 */  addu  $at, $at, $t8
/* 0C644C 80165A0C AC2FEF90 */  sw    $t7, -0x1070($at)
/* 0C6450 80165A10 8C480000 */  lw    $t0, ($v0)
/* 0C6454 80165A14 3C01800E */  lui   $at, 0x800e
/* 0C6458 80165A18 2419000E */  li    $t9, 14
/* 0C645C 80165A1C 00084880 */  sll   $t1, $t0, 2
/* 0C6460 80165A20 00290821 */  addu  $at, $at, $t1
/* 0C6464 80165A24 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C6468 80165A28 8C4A0000 */  lw    $t2, ($v0)
/* 0C646C 80165A2C 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0C6470 80165A30 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0C6474 80165A34 000A5880 */  sll   $t3, $t2, 2
/* 0C6478 80165A38 020B6021 */  addu  $t4, $s0, $t3
/* 0C647C 80165A3C 8D8D0000 */  lw    $t5, ($t4)
/* 0C6480 80165A40 3C01800E */  lui   $at, 0x800e
/* 0C6484 80165A44 000D7080 */  sll   $t6, $t5, 2
/* 0C6488 80165A48 002E0821 */  addu  $at, $at, $t6
/* 0C648C 80165A4C 0C02BB30 */  jal   func_800AECC0
/* 0C6490 80165A50 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C6494 80165A54 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C6498 80165A58 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C649C 80165A5C 3C01800E */  lui   $at, 0x800e
/* 0C64A0 80165A60 8DF80000 */  lw    $t8, ($t7)
/* 0C64A4 80165A64 00184080 */  sll   $t0, $t8, 2
/* 0C64A8 80165A68 0208C821 */  addu  $t9, $s0, $t0
/* 0C64AC 80165A6C 8F290000 */  lw    $t1, ($t9)
/* 0C64B0 80165A70 00095080 */  sll   $t2, $t1, 2
/* 0C64B4 80165A74 002A0821 */  addu  $at, $at, $t2
/* 0C64B8 80165A78 0C02BB48 */  jal   func_800AED20
/* 0C64BC 80165A7C C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C64C0 80165A80 3C040002 */  lui   $a0, (0x0002004C >> 16) # lui $a0, 2
/* 0C64C4 80165A84 3484004C */  ori   $a0, (0x0002004C & 0xFFFF) # ori $a0, $a0, 0x4c
/* 0C64C8 80165A88 24050022 */  li    $a1, 34
/* 0C64CC 80165A8C 0C02A619 */  jal   func_800A9864
/* 0C64D0 80165A90 24060010 */   li    $a2, 16
/* 0C64D4 80165A94 3C040002 */  lui   $a0, (0x000202AD >> 16) # lui $a0, 2
/* 0C64D8 80165A98 0C02A855 */  jal   func_800AA154
/* 0C64DC 80165A9C 348402AD */   ori   $a0, (0x000202AD & 0xFFFF) # ori $a0, $a0, 0x2ad
/* 0C64E0 80165AA0 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0C64E4 80165AA4 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0C64E8 80165AA8 0C02C640 */  jal   func_800B1900
/* 0C64EC 80165AAC 95640002 */   lhu   $a0, 2($t3)
/* 0C64F0 80165AB0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C64F4 80165AB4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C64F8 80165AB8 8C430000 */  lw    $v1, ($v0)
/* 0C64FC 80165ABC 00031880 */  sll   $v1, $v1, 2
.L80165AC0_ovl3:
/* 0C6500 80165AC0 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0C6504 80165AC4 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0C6508 80165AC8 02036021 */  addu  $t4, $s0, $v1
/* 0C650C 80165ACC 8D8D0000 */  lw    $t5, ($t4)
/* 0C6510 80165AD0 3C01800E */  lui   $at, 0x800e
/* 0C6514 80165AD4 3C06800F */  lui   $a2, %hi(D_800EAC20) # $a2, 0x800f
/* 0C6518 80165AD8 000D7080 */  sll   $t6, $t5, 2
/* 0C651C 80165ADC 002E0821 */  addu  $at, $at, $t6
/* 0C6520 80165AE0 C4242790 */  lwc1  $f4, 0x2790($at)
/* 0C6524 80165AE4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 0C6528 80165AE8 44813000 */  mtc1  $at, $f6
/* 0C652C 80165AEC 3C01800F */  lui   $at, 0x800f
/* 0C6530 80165AF0 00230821 */  addu  $at, $at, $v1
/* 0C6534 80165AF4 46062200 */  add.s $f8, $f4, $f6
/* 0C6538 80165AF8 24C6AC20 */  addiu $a2, %lo(D_800EAC20) # addiu $a2, $a2, -0x53e0
/* 0C653C 80165AFC 240D0017 */  li    $t5, 23
/* 0C6540 80165B00 3C05801A */  lui   $a1, %hi(D_80198800) # $a1, 0x801a
/* 0C6544 80165B04 E428A6E0 */  swc1  $f8, -0x5920($at)
/* 0C6548 80165B08 8C4F0000 */  lw    $t7, ($v0)
/* 0C654C 80165B0C 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 0C6550 80165B10 44815000 */  mtc1  $at, $f10
/* 0C6554 80165B14 3C01800F */  lui   $at, 0x800f
/* 0C6558 80165B18 000FC080 */  sll   $t8, $t7, 2
/* 0C655C 80165B1C 00380821 */  addu  $at, $at, $t8
/* 0C6560 80165B20 E42AA8A0 */  swc1  $f10, -0x5760($at)
/* 0C6564 80165B24 8C480000 */  lw    $t0, ($v0)
/* 0C6568 80165B28 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 0C656C 80165B2C 44818000 */  mtc1  $at, $f16
/* 0C6570 80165B30 3C01800F */  lui   $at, 0x800f
/* 0C6574 80165B34 0008C880 */  sll   $t9, $t0, 2
/* 0C6578 80165B38 00390821 */  addu  $at, $at, $t9
/* 0C657C 80165B3C E430AA60 */  swc1  $f16, -0x55a0($at)
/* 0C6580 80165B40 8C490000 */  lw    $t1, ($v0)
/* 0C6584 80165B44 3C018019 */  lui   $at, %hi(D_80197180) # $at, 0x8019
/* 0C6588 80165B48 C4327180 */  lwc1  $f18, %lo(D_80197180)($at)
/* 0C658C 80165B4C 00095080 */  sll   $t2, $t1, 2
/* 0C6590 80165B50 00CA5821 */  addu  $t3, $a2, $t2
/* 0C6594 80165B54 E5720000 */  swc1  $f18, ($t3)
/* 0C6598 80165B58 8C430000 */  lw    $v1, ($v0)
/* 0C659C 80165B5C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0C65A0 80165B60 44813000 */  mtc1  $at, $f6
/* 0C65A4 80165B64 00031880 */  sll   $v1, $v1, 2
/* 0C65A8 80165B68 00C36021 */  addu  $t4, $a2, $v1
/* 0C65AC 80165B6C C5840000 */  lwc1  $f4, ($t4)
/* 0C65B0 80165B70 3C01800F */  lui   $at, 0x800f
/* 0C65B4 80165B74 00230821 */  addu  $at, $at, $v1
/* 0C65B8 80165B78 46062203 */  div.s $f8, $f4, $f6
/* 0C65BC 80165B7C 24180007 */  li    $t8, 7
/* 0C65C0 80165B80 44805000 */  mtc1  $zero, $f10
/* 0C65C4 80165B84 24A58800 */  addiu $a1, %lo(D_80198800) # addiu $a1, $a1, -0x7800
/* 0C65C8 80165B88 E428ADE0 */  swc1  $f8, -0x5220($at)
/* 0C65CC 80165B8C 8C4E0000 */  lw    $t6, ($v0)
/* 0C65D0 80165B90 3C01800F */  lui   $at, 0x800f
/* 0C65D4 80165B94 000E7880 */  sll   $t7, $t6, 2
/* 0C65D8 80165B98 002F0821 */  addu  $at, $at, $t7
/* 0C65DC 80165B9C AC2D9720 */  sw    $t5, -0x68e0($at)
/* 0C65E0 80165BA0 8C480000 */  lw    $t0, ($v0)
/* 0C65E4 80165BA4 3C01800F */  lui   $at, 0x800f
/* 0C65E8 80165BA8 0008C880 */  sll   $t9, $t0, 2
/* 0C65EC 80165BAC 00390821 */  addu  $at, $at, $t9
/* 0C65F0 80165BB0 AC389560 */  sw    $t8, -0x6aa0($at)
/* 0C65F4 80165BB4 8C490000 */  lw    $t1, ($v0)
/* 0C65F8 80165BB8 3C01800F */  lui   $at, 0x800f
/* 0C65FC 80165BBC 00095080 */  sll   $t2, $t1, 2
/* 0C6600 80165BC0 002A0821 */  addu  $at, $at, $t2
/* 0C6604 80165BC4 E42AAFA0 */  swc1  $f10, -0x5060($at)
/* 0C6608 80165BC8 0C055223 */  jal   func_8015488C_ovl3
/* 0C660C 80165BCC 8C440000 */   lw    $a0, ($v0)
/* 0C6610 80165BD0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C6614 80165BD4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C6618 80165BD8 3C01800E */  lui   $at, 0x800e
/* 0C661C 80165BDC 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0C6620 80165BE0 8C430000 */  lw    $v1, ($v0)
/* 0C6624 80165BE4 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0C6628 80165BE8 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 0C662C 80165BEC 00031880 */  sll   $v1, $v1, 2
/* 0C6630 80165BF0 02035821 */  addu  $t3, $s0, $v1
/* 0C6634 80165BF4 8D6C0000 */  lw    $t4, ($t3)
/* 0C6638 80165BF8 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 0C663C 80165BFC 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0C6640 80165C00 000C7080 */  sll   $t6, $t4, 2
/* 0C6644 80165C04 002E0821 */  addu  $at, $at, $t6
/* 0C6648 80165C08 C43017D0 */  lwc1  $f16, 0x17d0($at)
/* 0C664C 80165C0C 3C01800E */  lui   $at, 0x800e
/* 0C6650 80165C10 00230821 */  addu  $at, $at, $v1
/* 0C6654 80165C14 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 0C6658 80165C18 8C430000 */  lw    $v1, ($v0)
/* 0C665C 80165C1C 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0C6660 80165C20 2404001C */  li    $a0, 28
/* 0C6664 80165C24 00031880 */  sll   $v1, $v1, 2
/* 0C6668 80165C28 02036821 */  addu  $t5, $s0, $v1
/* 0C666C 80165C2C 8DAF0000 */  lw    $t7, ($t5)
/* 0C6670 80165C30 00A3C821 */  addu  $t9, $a1, $v1
/* 0C6674 80165C34 000F4080 */  sll   $t0, $t7, 2
/* 0C6678 80165C38 00A8C021 */  addu  $t8, $a1, $t0
/* 0C667C 80165C3C C7120000 */  lwc1  $f18, ($t8)
/* 0C6680 80165C40 E7320000 */  swc1  $f18, ($t9)
/* 0C6684 80165C44 8C430000 */  lw    $v1, ($v0)
/* 0C6688 80165C48 00031880 */  sll   $v1, $v1, 2
/* 0C668C 80165C4C 02034821 */  addu  $t1, $s0, $v1
/* 0C6690 80165C50 8D2A0000 */  lw    $t2, ($t1)
/* 0C6694 80165C54 00E37021 */  addu  $t6, $a3, $v1
/* 0C6698 80165C58 000A5880 */  sll   $t3, $t2, 2
/* 0C669C 80165C5C 00EB6021 */  addu  $t4, $a3, $t3
/* 0C66A0 80165C60 C5840000 */  lwc1  $f4, ($t4)
/* 0C66A4 80165C64 E5C40000 */  swc1  $f4, ($t6)
/* 0C66A8 80165C68 8C430000 */  lw    $v1, ($v0)
/* 0C66AC 80165C6C 00031880 */  sll   $v1, $v1, 2
/* 0C66B0 80165C70 02036821 */  addu  $t5, $s0, $v1
/* 0C66B4 80165C74 8DAF0000 */  lw    $t7, ($t5)
/* 0C66B8 80165C78 00C3C821 */  addu  $t9, $a2, $v1
/* 0C66BC 80165C7C 000F4080 */  sll   $t0, $t7, 2
/* 0C66C0 80165C80 00C8C021 */  addu  $t8, $a2, $t0
/* 0C66C4 80165C84 C7060000 */  lwc1  $f6, ($t8)
/* 0C66C8 80165C88 0C029D9E */  jal   play_sound
/* 0C66CC 80165C8C E7260000 */   swc1  $f6, ($t9)
/* 0C66D0 80165C90 3C040002 */  lui   $a0, (0x0002004D >> 16) # lui $a0, 2
/* 0C66D4 80165C94 3484004D */  ori   $a0, (0x0002004D & 0xFFFF) # ori $a0, $a0, 0x4d
/* 0C66D8 80165C98 24050022 */  li    $a1, 34
/* 0C66DC 80165C9C 0C02A619 */  jal   func_800A9864
/* 0C66E0 80165CA0 24060010 */   li    $a2, 16
/* 0C66E4 80165CA4 3C040002 */  lui   $a0, (0x000202AF >> 16) # lui $a0, 2
/* 0C66E8 80165CA8 3C050002 */  lui   $a1, (0x000202B0 >> 16) # lui $a1, 2
/* 0C66EC 80165CAC 34A502B0 */  ori   $a1, (0x000202B0 & 0xFFFF) # ori $a1, $a1, 0x2b0
/* 0C66F0 80165CB0 348402AF */  ori   $a0, (0x000202AF & 0xFFFF) # ori $a0, $a0, 0x2af
/* 0C66F4 80165CB4 0C048C3A */  jal   func_801230E8
/* 0C66F8 80165CB8 00003025 */   move  $a2, $zero
/* 0C66FC 80165CBC 0C02BE85 */  jal   func_800AFA14
/* 0C6700 80165CC0 00000000 */   nop   
/* 0C6704 80165CC4 8FBF001C */  lw    $ra, 0x1c($sp)
.L80165CC8_ovl3:
/* 0C6708 80165CC8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C670C 80165CCC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C6710 80165CD0 03E00008 */  jr    $ra
/* 0C6714 80165CD4 00000000 */   nop   

.type func_8016593C_ovl3, @function
.size func_8016593C_ovl3, . - func_8016593C_ovl3

glabel func_80165CD8_ovl3
/* 0C6718 80165CD8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0C671C 80165CDC AFB00020 */  sw    $s0, 0x20($sp)
/* 0C6720 80165CE0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C6724 80165CE4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C6728 80165CE8 8E070000 */  lw    $a3, ($s0)
/* 0C672C 80165CEC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C6730 80165CF0 AFA40028 */  sw    $a0, 0x28($sp)
/* 0C6734 80165CF4 8CE80000 */  lw    $t0, ($a3)
/* 0C6738 80165CF8 3C0E800F */  lui   $t6, 0x800f
/* 0C673C 80165CFC 3C18800F */  lui   $t8, %hi(D_800E9720) # $t8, 0x800f
/* 0C6740 80165D00 00081080 */  sll   $v0, $t0, 2
/* 0C6744 80165D04 01C27021 */  addu  $t6, $t6, $v0
/* 0C6748 80165D08 8DCEC2E0 */  lw    $t6, -0x3d20($t6)
/* 0C674C 80165D0C 27189720 */  addiu $t8, %lo(D_800E9720) # addiu $t8, $t8, -0x68e0
/* 0C6750 80165D10 3C0F8013 */  lui   $t7, %hi(D_8012E860) # $t7, 0x8013
/* 0C6754 80165D14 15C00008 */  bnez  $t6, .L80165D38_ovl3
/* 0C6758 80165D18 00581821 */   addu  $v1, $v0, $t8
/* 0C675C 80165D1C 8DEFE860 */  lw    $t7, %lo(D_8012E860)($t7)
/* 0C6760 80165D20 55E000F0 */  bnezl $t7, .L801660E4_ovl3
/* 0C6764 80165D24 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0C6768 80165D28 0C02C640 */  jal   func_800B1900
/* 0C676C 80165D2C 3104FFFF */   andi  $a0, $t0, 0xffff
/* 0C6770 80165D30 100000EC */  b     .L801660E4_ovl3
/* 0C6774 80165D34 8FBF0024 */   lw    $ra, 0x24($sp)
.L80165D38_ovl3:
/* 0C6778 80165D38 8C640000 */  lw    $a0, ($v1)
/* 0C677C 80165D3C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C6780 80165D40 3C09800F */  lui   $t1, %hi(D_800EA8A0) # $t1, 0x800f
/* 0C6784 80165D44 2C850001 */  sltiu $a1, $a0, 1
/* 0C6788 80165D48 2499FFFF */  addiu $t9, $a0, -1
/* 0C678C 80165D4C 10A00005 */  beqz  $a1, .L80165D64_ovl3
/* 0C6790 80165D50 AC790000 */   sw    $t9, ($v1)
/* 0C6794 80165D54 0C02C640 */  jal   func_800B1900
/* 0C6798 80165D58 94E40002 */   lhu   $a0, 2($a3)
/* 0C679C 80165D5C 100000A5 */  b     .L80165FF4_ovl3
/* 0C67A0 80165D60 8E070000 */   lw    $a3, ($s0)
.L80165D64_ovl3:
/* 0C67A4 80165D64 8CE20000 */  lw    $v0, ($a3)
/* 0C67A8 80165D68 44816000 */  mtc1  $at, $f12
/* 0C67AC 80165D6C 3C01800F */  lui   $at, 0x800f
/* 0C67B0 80165D70 00021080 */  sll   $v0, $v0, 2
/* 0C67B4 80165D74 2529A8A0 */  addiu $t1, %lo(D_800EA8A0) # addiu $t1, $t1, -0x5760
/* 0C67B8 80165D78 00491821 */  addu  $v1, $v0, $t1
/* 0C67BC 80165D7C 00220821 */  addu  $at, $at, $v0
/* 0C67C0 80165D80 C426AA60 */  lwc1  $f6, -0x55a0($at)
/* 0C67C4 80165D84 C4640000 */  lwc1  $f4, ($v1)
/* 0C67C8 80165D88 3C0C800F */  lui   $t4, %hi(D_800EA6E0) # $t4, 0x800f
/* 0C67CC 80165D8C 258CA6E0 */  addiu $t4, %lo(D_800EA6E0) # addiu $t4, $t4, -0x5920
/* 0C67D0 80165D90 46062000 */  add.s $f0, $f4, $f6
/* 0C67D4 80165D94 3C06800F */  lui   $a2, %hi(D_800EAC20) # $a2, 0x800f
/* 0C67D8 80165D98 24C6AC20 */  addiu $a2, %lo(D_800EAC20) # addiu $a2, $a2, -0x53e0
/* 0C67DC 80165D9C 3C01800F */  lui   $at, 0x800f
/* 0C67E0 80165DA0 E4600000 */  swc1  $f0, ($v1)
/* 0C67E4 80165DA4 8CEA0000 */  lw    $t2, ($a3)
/* 0C67E8 80165DA8 000A5880 */  sll   $t3, $t2, 2
/* 0C67EC 80165DAC 016C2021 */  addu  $a0, $t3, $t4
/* 0C67F0 80165DB0 C4880000 */  lwc1  $f8, ($a0)
/* 0C67F4 80165DB4 46004280 */  add.s $f10, $f8, $f0
/* 0C67F8 80165DB8 E48A0000 */  swc1  $f10, ($a0)
/* 0C67FC 80165DBC 8CE80000 */  lw    $t0, ($a3)
/* 0C6800 80165DC0 3C048019 */  lui   $a0, %hi(D_801918A4) # $a0, 0x8019
/* 0C6804 80165DC4 248418A4 */  addiu $a0, %lo(D_801918A4) # addiu $a0, $a0, 0x18a4
/* 0C6808 80165DC8 00081080 */  sll   $v0, $t0, 2
/* 0C680C 80165DCC 00C22821 */  addu  $a1, $a2, $v0
/* 0C6810 80165DD0 C4A20000 */  lwc1  $f2, ($a1)
/* 0C6814 80165DD4 00220821 */  addu  $at, $at, $v0
/* 0C6818 80165DD8 46026032 */  c.eq.s $f12, $f2
/* 0C681C 80165DDC 00000000 */  nop   
/* 0C6820 80165DE0 4501000E */  bc1t  .L80165E1C_ovl3
/* 0C6824 80165DE4 00000000 */   nop   
/* 0C6828 80165DE8 C430ADE0 */  lwc1  $f16, -0x5220($at)
/* 0C682C 80165DEC 46101480 */  add.s $f18, $f2, $f16
/* 0C6830 80165DF0 E4B20000 */  swc1  $f18, ($a1)
/* 0C6834 80165DF4 8CE80000 */  lw    $t0, ($a3)
/* 0C6838 80165DF8 00086880 */  sll   $t5, $t0, 2
/* 0C683C 80165DFC 00CD2821 */  addu  $a1, $a2, $t5
/* 0C6840 80165E00 C4A40000 */  lwc1  $f4, ($a1)
/* 0C6844 80165E04 4604603E */  c.le.s $f12, $f4
/* 0C6848 80165E08 00000000 */  nop   
/* 0C684C 80165E0C 45000003 */  bc1f  .L80165E1C_ovl3
/* 0C6850 80165E10 00000000 */   nop   
/* 0C6854 80165E14 E4AC0000 */  swc1  $f12, ($a1)
/* 0C6858 80165E18 8CE80000 */  lw    $t0, ($a3)
.L80165E1C_ovl3:
/* 0C685C 80165E1C 0C044681 */  jal   func_80111A04
/* 0C6860 80165E20 01002825 */   move  $a1, $t0
/* 0C6864 80165E24 8E0E0000 */  lw    $t6, ($s0)
/* 0C6868 80165E28 3C01800E */  lui   $at, 0x800e
/* 0C686C 80165E2C 8C590020 */  lw    $t9, 0x20($v0)
/* 0C6870 80165E30 8DCF0000 */  lw    $t7, ($t6)
/* 0C6874 80165E34 00402025 */  move  $a0, $v0
/* 0C6878 80165E38 000FC080 */  sll   $t8, $t7, 2
/* 0C687C 80165E3C 00380821 */  addu  $at, $at, $t8
/* 0C6880 80165E40 C42625D0 */  lwc1  $f6, 0x25d0($at)
/* 0C6884 80165E44 3C01800F */  lui   $at, 0x800f
/* 0C6888 80165E48 E726000C */  swc1  $f6, 0xc($t9)
/* 0C688C 80165E4C 8E090000 */  lw    $t1, ($s0)
/* 0C6890 80165E50 8C4C0020 */  lw    $t4, 0x20($v0)
/* 0C6894 80165E54 8D2A0000 */  lw    $t2, ($t1)
/* 0C6898 80165E58 000A5880 */  sll   $t3, $t2, 2
/* 0C689C 80165E5C 002B0821 */  addu  $at, $at, $t3
/* 0C68A0 80165E60 C428A6E0 */  lwc1  $f8, -0x5920($at)
/* 0C68A4 80165E64 3C01800E */  lui   $at, 0x800e
/* 0C68A8 80165E68 E5880010 */  swc1  $f8, 0x10($t4)
/* 0C68AC 80165E6C 8E0D0000 */  lw    $t5, ($s0)
/* 0C68B0 80165E70 8C580020 */  lw    $t8, 0x20($v0)
/* 0C68B4 80165E74 8DAE0000 */  lw    $t6, ($t5)
/* 0C68B8 80165E78 000E7880 */  sll   $t7, $t6, 2
/* 0C68BC 80165E7C 002F0821 */  addu  $at, $at, $t7
/* 0C68C0 80165E80 C42A2950 */  lwc1  $f10, 0x2950($at)
/* 0C68C4 80165E84 3C01800F */  lui   $at, 0x800f
/* 0C68C8 80165E88 E70A0014 */  swc1  $f10, 0x14($t8)
/* 0C68CC 80165E8C 8E190000 */  lw    $t9, ($s0)
/* 0C68D0 80165E90 8C4B0020 */  lw    $t3, 0x20($v0)
/* 0C68D4 80165E94 8F290000 */  lw    $t1, ($t9)
/* 0C68D8 80165E98 00095080 */  sll   $t2, $t1, 2
/* 0C68DC 80165E9C 002A0821 */  addu  $at, $at, $t2
/* 0C68E0 80165EA0 C430AC20 */  lwc1  $f16, -0x53e0($at)
/* 0C68E4 80165EA4 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 0C68E8 80165EA8 44819000 */  mtc1  $at, $f18
/* 0C68EC 80165EAC 00000000 */  nop   
/* 0C68F0 80165EB0 46128102 */  mul.s $f4, $f16, $f18
/* 0C68F4 80165EB4 0C044713 */  jal   func_80111C4C
/* 0C68F8 80165EB8 E5640018 */   swc1  $f4, 0x18($t3)
/* 0C68FC 80165EBC 8E0C0000 */  lw    $t4, ($s0)
/* 0C6900 80165EC0 3C07800F */  lui   $a3, 0x800f
/* 0C6904 80165EC4 3C048019 */  lui   $a0, %hi(D_80194C34) # $a0, 0x8019
/* 0C6908 80165EC8 8D8D0000 */  lw    $t5, ($t4)
/* 0C690C 80165ECC 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C6910 80165ED0 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C6914 80165ED4 000D7080 */  sll   $t6, $t5, 2
/* 0C6918 80165ED8 00EE3821 */  addu  $a3, $a3, $t6
/* 0C691C 80165EDC 8CE7AC20 */  lw    $a3, -0x53e0($a3)
/* 0C6920 80165EE0 24844C34 */  addiu $a0, %lo(D_80194C34) # addiu $a0, $a0, 0x4c34
/* 0C6924 80165EE4 0C05481C */  jal   func_80152070_ovl3
/* 0C6928 80165EE8 24060010 */   li    $a2, 16
/* 0C692C 80165EEC 8E070000 */  lw    $a3, ($s0)
/* 0C6930 80165EF0 3C06801A */  lui   $a2, %hi(D_80198540) # $a2, 0x801a
/* 0C6934 80165EF4 24C68540 */  addiu $a2, %lo(D_80198540) # addiu $a2, $a2, -0x7ac0
/* 0C6938 80165EF8 8CEF0000 */  lw    $t7, ($a3)
/* 0C693C 80165EFC 3C01800E */  lui   $at, 0x800e
/* 0C6940 80165F00 00002825 */  move  $a1, $zero
/* 0C6944 80165F04 000FC140 */  sll   $t8, $t7, 5
/* 0C6948 80165F08 00D81821 */  addu  $v1, $a2, $t8
/* 0C694C 80165F0C C466F880 */  lwc1  $f6, -0x780($v1)
/* 0C6950 80165F10 2463F880 */  addiu $v1, $v1, -0x780
/* 0C6954 80165F14 E466000C */  swc1  $f6, 0xc($v1)
/* 0C6958 80165F18 8CF90000 */  lw    $t9, ($a3)
/* 0C695C 80165F1C 00194940 */  sll   $t1, $t9, 5
/* 0C6960 80165F20 00C91821 */  addu  $v1, $a2, $t1
/* 0C6964 80165F24 C468F884 */  lwc1  $f8, -0x77c($v1)
/* 0C6968 80165F28 2463F880 */  addiu $v1, $v1, -0x780
/* 0C696C 80165F2C E4680010 */  swc1  $f8, 0x10($v1)
/* 0C6970 80165F30 8CEA0000 */  lw    $t2, ($a3)
/* 0C6974 80165F34 000A5940 */  sll   $t3, $t2, 5
/* 0C6978 80165F38 00CB1821 */  addu  $v1, $a2, $t3
/* 0C697C 80165F3C C46AF888 */  lwc1  $f10, -0x778($v1)
/* 0C6980 80165F40 2463F880 */  addiu $v1, $v1, -0x780
/* 0C6984 80165F44 E46A0014 */  swc1  $f10, 0x14($v1)
/* 0C6988 80165F48 8CE80000 */  lw    $t0, ($a3)
/* 0C698C 80165F4C 00086080 */  sll   $t4, $t0, 2
/* 0C6990 80165F50 002C0821 */  addu  $at, $at, $t4
/* 0C6994 80165F54 C43025D0 */  lwc1  $f16, 0x25d0($at)
/* 0C6998 80165F58 00086940 */  sll   $t5, $t0, 5
/* 0C699C 80165F5C 00CD7021 */  addu  $t6, $a2, $t5
/* 0C69A0 80165F60 E5D0F880 */  swc1  $f16, -0x780($t6)
/* 0C69A4 80165F64 8CE80000 */  lw    $t0, ($a3)
/* 0C69A8 80165F68 3C01800F */  lui   $at, 0x800f
/* 0C69AC 80165F6C 00087880 */  sll   $t7, $t0, 2
/* 0C69B0 80165F70 002F0821 */  addu  $at, $at, $t7
/* 0C69B4 80165F74 C432A6E0 */  lwc1  $f18, -0x5920($at)
/* 0C69B8 80165F78 0008C140 */  sll   $t8, $t0, 5
/* 0C69BC 80165F7C 00D8C821 */  addu  $t9, $a2, $t8
/* 0C69C0 80165F80 E732F884 */  swc1  $f18, -0x77c($t9)
/* 0C69C4 80165F84 8CE80000 */  lw    $t0, ($a3)
/* 0C69C8 80165F88 3C01800E */  lui   $at, 0x800e
/* 0C69CC 80165F8C 3C0F8019 */  lui   $t7, %hi(D_80194D34) # $t7, 0x8019
/* 0C69D0 80165F90 00084880 */  sll   $t1, $t0, 2
/* 0C69D4 80165F94 00290821 */  addu  $at, $at, $t1
/* 0C69D8 80165F98 C4242950 */  lwc1  $f4, 0x2950($at)
/* 0C69DC 80165F9C 00085140 */  sll   $t2, $t0, 5
/* 0C69E0 80165FA0 00CA5821 */  addu  $t3, $a2, $t2
/* 0C69E4 80165FA4 E564F888 */  swc1  $f4, -0x778($t3)
/* 0C69E8 80165FA8 8CE80000 */  lw    $t0, ($a3)
/* 0C69EC 80165FAC 3C01800E */  lui   $at, 0x800e
/* 0C69F0 80165FB0 25EF4D34 */  addiu $t7, %lo(D_80194D34) # addiu $t7, $t7, 0x4d34
/* 0C69F4 80165FB4 00086080 */  sll   $t4, $t0, 2
/* 0C69F8 80165FB8 002C0821 */  addu  $at, $at, $t4
/* 0C69FC 80165FBC C42641D0 */  lwc1  $f6, 0x41d0($at)
/* 0C6A00 80165FC0 00086940 */  sll   $t5, $t0, 5
/* 0C6A04 80165FC4 00CD7021 */  addu  $t6, $a2, $t5
/* 0C6A08 80165FC8 E5C6F898 */  swc1  $f6, -0x768($t6)
/* 0C6A0C 80165FCC 8CF80000 */  lw    $t8, ($a3)
/* 0C6A10 80165FD0 0018C940 */  sll   $t9, $t8, 5
/* 0C6A14 80165FD4 00D94821 */  addu  $t1, $a2, $t9
/* 0C6A18 80165FD8 AD2FF89C */  sw    $t7, -0x764($t1)
/* 0C6A1C 80165FDC 8CEA0000 */  lw    $t2, ($a3)
/* 0C6A20 80165FE0 000A5940 */  sll   $t3, $t2, 5
/* 0C6A24 80165FE4 00CB2021 */  addu  $a0, $a2, $t3
/* 0C6A28 80165FE8 0C046FD3 */  jal   func_8011BF4C
/* 0C6A2C 80165FEC 2484F880 */   addiu $a0, $a0, -0x780
/* 0C6A30 80165FF0 8E070000 */  lw    $a3, ($s0)
.L80165FF4_ovl3:
/* 0C6A34 80165FF4 3C0C800F */  lui   $t4, 0x800f
/* 0C6A38 80165FF8 3C08800F */  lui   $t0, %hi(D_800EAFA0) # $t0, 0x800f
/* 0C6A3C 80165FFC 8CE20000 */  lw    $v0, ($a3)
/* 0C6A40 80166000 2508AFA0 */  addiu $t0, %lo(D_800EAFA0) # addiu $t0, $t0, -0x5060
/* 0C6A44 80166004 3C018019 */  lui   $at, %hi(D_80197184) # $at, 0x8019
/* 0C6A48 80166008 00021080 */  sll   $v0, $v0, 2
/* 0C6A4C 8016600C 01826021 */  addu  $t4, $t4, $v0
/* 0C6A50 80166010 8D8C9560 */  lw    $t4, -0x6aa0($t4)
/* 0C6A54 80166014 01021821 */  addu  $v1, $t0, $v0
/* 0C6A58 80166018 51800032 */  beql  $t4, $zero, .L801660E4_ovl3
/* 0C6A5C 8016601C 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0C6A60 80166020 C4680000 */  lwc1  $f8, ($v1)
/* 0C6A64 80166024 C42A7184 */  lwc1  $f10, %lo(D_80197184)($at)
/* 0C6A68 80166028 3C048019 */  lui   $a0, %hi(D_801918E8) # $a0, 0x8019
/* 0C6A6C 8016602C 248418E8 */  addiu $a0, %lo(D_801918E8) # addiu $a0, $a0, 0x18e8
/* 0C6A70 80166030 460A4400 */  add.s $f16, $f8, $f10
/* 0C6A74 80166034 00002825 */  move  $a1, $zero
/* 0C6A78 80166038 E4700000 */  swc1  $f16, ($v1)
/* 0C6A7C 8016603C 8CED0000 */  lw    $t5, ($a3)
/* 0C6A80 80166040 000D7080 */  sll   $t6, $t5, 2
/* 0C6A84 80166044 010EC021 */  addu  $t8, $t0, $t6
/* 0C6A88 80166048 0C05A102 */  jal   func_80168408_ovl3
/* 0C6A8C 8016604C 8F060000 */   lw    $a2, ($t8)
/* 0C6A90 80166050 0C044713 */  jal   func_80111C4C
/* 0C6A94 80166054 00402025 */   move  $a0, $v0
/* 0C6A98 80166058 8E190000 */  lw    $t9, ($s0)
/* 0C6A9C 8016605C 3C014248 */  li    $at, 0x42480000 # 50.000000
/* 0C6AA0 80166060 44819000 */  mtc1  $at, $f18
/* 0C6AA4 80166064 8F2F0000 */  lw    $t7, ($t9)
/* 0C6AA8 80166068 44802000 */  mtc1  $zero, $f4
/* 0C6AAC 8016606C 3C07800F */  lui   $a3, 0x800f
/* 0C6AB0 80166070 000F4880 */  sll   $t1, $t7, 2
/* 0C6AB4 80166074 00E93821 */  addu  $a3, $a3, $t1
/* 0C6AB8 80166078 3C048019 */  lui   $a0, %hi(D_80194D40) # $a0, 0x8019
/* 0C6ABC 8016607C 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C6AC0 80166080 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C6AC4 80166084 24844D40 */  addiu $a0, %lo(D_80194D40) # addiu $a0, $a0, 0x4d40
/* 0C6AC8 80166088 8CE7AFA0 */  lw    $a3, -0x5060($a3)
/* 0C6ACC 8016608C 24060010 */  li    $a2, 16
/* 0C6AD0 80166090 E7B20010 */  swc1  $f18, 0x10($sp)
/* 0C6AD4 80166094 0C054849 */  jal   func_80152124_ovl3
/* 0C6AD8 80166098 E7A40014 */   swc1  $f4, 0x14($sp)
/* 0C6ADC 8016609C 8E0A0000 */  lw    $t2, ($s0)
/* 0C6AE0 801660A0 3C04801A */  lui   $a0, %hi(D_80198800) # $a0, 0x801a
/* 0C6AE4 801660A4 3C058019 */  lui   $a1, %hi(D_80194E40) # $a1, 0x8019
/* 0C6AE8 801660A8 24A54E40 */  addiu $a1, %lo(D_80194E40) # addiu $a1, $a1, 0x4e40
/* 0C6AEC 801660AC 24848800 */  addiu $a0, %lo(D_80198800) # addiu $a0, $a0, -0x7800
/* 0C6AF0 801660B0 00003025 */  move  $a2, $zero
/* 0C6AF4 801660B4 0C055754 */  jal   func_80155D50_ovl3
/* 0C6AF8 801660B8 8D470000 */   lw    $a3, ($t2)
/* 0C6AFC 801660BC 8E0B0000 */  lw    $t3, ($s0)
/* 0C6B00 801660C0 3C0E800F */  lui   $t6, %hi(D_800E9560) # $t6, 0x800f
/* 0C6B04 801660C4 25CE9560 */  addiu $t6, %lo(D_800E9560) # addiu $t6, $t6, -0x6aa0
/* 0C6B08 801660C8 8D6C0000 */  lw    $t4, ($t3)
/* 0C6B0C 801660CC 000C6880 */  sll   $t5, $t4, 2
/* 0C6B10 801660D0 01AE1821 */  addu  $v1, $t5, $t6
/* 0C6B14 801660D4 8C780000 */  lw    $t8, ($v1)
/* 0C6B18 801660D8 2719FFFF */  addiu $t9, $t8, -1
/* 0C6B1C 801660DC AC790000 */  sw    $t9, ($v1)
/* 0C6B20 801660E0 8FBF0024 */  lw    $ra, 0x24($sp)
.L801660E4_ovl3:
/* 0C6B24 801660E4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C6B28 801660E8 27BD0028 */  addiu $sp, $sp, 0x28
/* 0C6B2C 801660EC 03E00008 */  jr    $ra
/* 0C6B30 801660F0 00000000 */   nop   

.type func_80165CD8_ovl3, @function
.size func_80165CD8_ovl3, . - func_80165CD8_ovl3

glabel func_801660F4_ovl3
/* 0C6B34 801660F4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C6B38 801660F8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C6B3C 801660FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C6B40 80166100 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C6B44 80166104 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C6B48 80166108 8C4F0000 */  lw    $t7, ($v0)
/* 0C6B4C 8016610C 3C01800E */  lui   $at, 0x800e
/* 0C6B50 80166110 240E0001 */  li    $t6, 1
/* 0C6B54 80166114 000FC080 */  sll   $t8, $t7, 2
/* 0C6B58 80166118 00380821 */  addu  $at, $at, $t8
/* 0C6B5C 8016611C AC2E0650 */  sw    $t6, 0x650($at)
/* 0C6B60 80166120 8C480000 */  lw    $t0, ($v0)
/* 0C6B64 80166124 3C01800E */  lui   $at, 0x800e
/* 0C6B68 80166128 3C198016 */  lui   $t9, %hi(D_80166210) # $t9, 0x8016
/* 0C6B6C 8016612C 00084880 */  sll   $t1, $t0, 2
/* 0C6B70 80166130 00290821 */  addu  $at, $at, $t1
/* 0C6B74 80166134 27396210 */  addiu $t9, %lo(D_80166210) # addiu $t9, $t9, 0x6210
/* 0C6B78 80166138 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C6B7C 8016613C 3C018013 */  lui   $at, %hi(D_8012E800) # $at, 0x8013
/* 0C6B80 80166140 C424E800 */  lwc1  $f4, %lo(D_8012E800)($at)
/* 0C6B84 80166144 3C018019 */  lui   $at, %hi(D_80197188) # $at, 0x8019
/* 0C6B88 80166148 C4267188 */  lwc1  $f6, %lo(D_80197188)($at)
/* 0C6B8C 8016614C 8C4A0000 */  lw    $t2, ($v0)
/* 0C6B90 80166150 3C01800E */  lui   $at, 0x800e
/* 0C6B94 80166154 46062002 */  mul.s $f0, $f4, $f6
/* 0C6B98 80166158 000A5880 */  sll   $t3, $t2, 2
/* 0C6B9C 8016615C 002B0821 */  addu  $at, $at, $t3
/* 0C6BA0 80166160 3C19800E */  lui   $t9, 0x800e
/* 0C6BA4 80166164 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C6BA8 80166168 8C4C0000 */  lw    $t4, ($v0)
/* 0C6BAC 8016616C 3C01800E */  lui   $at, 0x800e
/* 0C6BB0 80166170 000C6880 */  sll   $t5, $t4, 2
/* 0C6BB4 80166174 002D0821 */  addu  $at, $at, $t5
/* 0C6BB8 80166178 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C6BBC 8016617C 8C4F0000 */  lw    $t7, ($v0)
/* 0C6BC0 80166180 3C01800E */  lui   $at, 0x800e
/* 0C6BC4 80166184 000F7080 */  sll   $t6, $t7, 2
/* 0C6BC8 80166188 002E0821 */  addu  $at, $at, $t6
/* 0C6BCC 8016618C E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C6BD0 80166190 8C580000 */  lw    $t8, ($v0)
/* 0C6BD4 80166194 3C01800E */  lui   $at, 0x800e
/* 0C6BD8 80166198 00184080 */  sll   $t0, $t8, 2
/* 0C6BDC 8016619C 0328C821 */  addu  $t9, $t9, $t0
/* 0C6BE0 801661A0 8F390D50 */  lw    $t9, 0xd50($t9)
/* 0C6BE4 801661A4 00194880 */  sll   $t1, $t9, 2
/* 0C6BE8 801661A8 00290821 */  addu  $at, $at, $t1
/* 0C6BEC 801661AC 0C02BB30 */  jal   func_800AECC0
/* 0C6BF0 801661B0 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C6BF4 801661B4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C6BF8 801661B8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C6BFC 801661BC 3C0D800E */  lui   $t5, 0x800e
/* 0C6C00 801661C0 3C01800E */  lui   $at, 0x800e
/* 0C6C04 801661C4 8D4B0000 */  lw    $t3, ($t2)
/* 0C6C08 801661C8 000B6080 */  sll   $t4, $t3, 2
/* 0C6C0C 801661CC 01AC6821 */  addu  $t5, $t5, $t4
/* 0C6C10 801661D0 8DAD0D50 */  lw    $t5, 0xd50($t5)
/* 0C6C14 801661D4 000D7880 */  sll   $t7, $t5, 2
/* 0C6C18 801661D8 002F0821 */  addu  $at, $at, $t7
/* 0C6C1C 801661DC 0C02BB48 */  jal   func_800AED20
/* 0C6C20 801661E0 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C6C24 801661E4 3C040002 */  lui   $a0, (0x0002004E >> 16) # lui $a0, 2
/* 0C6C28 801661E8 3484004E */  ori   $a0, (0x0002004E & 0xFFFF) # ori $a0, $a0, 0x4e
/* 0C6C2C 801661EC 24050022 */  li    $a1, 34
/* 0C6C30 801661F0 0C02A619 */  jal   func_800A9864
/* 0C6C34 801661F4 24060010 */   li    $a2, 16
/* 0C6C38 801661F8 0C02BE85 */  jal   func_800AFA14
/* 0C6C3C 801661FC 00000000 */   nop   
/* 0C6C40 80166200 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C6C44 80166204 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C6C48 80166208 03E00008 */  jr    $ra
/* 0C6C4C 8016620C 00000000 */   nop   

.type func_801660F4_ovl3, @function
.size func_801660F4_ovl3, . - func_801660F4_ovl3

glabel func_80166210_ovl3
/* 0C6C50 80166210 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0C6C54 80166214 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0C6C58 80166218 8D0E00A0 */  lw    $t6, 0xa0($t0)
/* 0C6C5C 8016621C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C6C60 80166220 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C6C64 80166224 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C6C68 80166228 15C00008 */  bnez  $t6, .L8016624C_ovl3
/* 0C6C6C 8016622C AFA40050 */   sw    $a0, 0x50($sp)
/* 0C6C70 80166230 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C6C74 80166234 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C6C78 80166238 8E0F0000 */  lw    $t7, ($s0)
/* 0C6C7C 8016623C 0C02C640 */  jal   func_800B1900
/* 0C6C80 80166240 95E40002 */   lhu   $a0, 2($t7)
/* 0C6C84 80166244 100000CC */  b     .L80166578_ovl3
/* 0C6C88 80166248 8FBF001C */   lw    $ra, 0x1c($sp)
.L8016624C_ovl3:
/* 0C6C8C 8016624C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C6C90 80166250 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C6C94 80166254 8E180000 */  lw    $t8, ($s0)
/* 0C6C98 80166258 3C06800E */  lui   $a2, 0x800e
/* 0C6C9C 8016625C 3C0A800E */  lui   $t2, %hi(D_800DFBD0) # $t2, 0x800e
/* 0C6CA0 80166260 8F190000 */  lw    $t9, ($t8)
/* 0C6CA4 80166264 254AFBD0 */  addiu $t2, %lo(D_800DFBD0) # addiu $t2, $t2, -0x430
/* 0C6CA8 80166268 27A40044 */  addiu $a0, $sp, 0x44
/* 0C6CAC 8016626C 00196080 */  sll   $t4, $t9, 2
/* 0C6CB0 80166270 00CC3021 */  addu  $a2, $a2, $t4
/* 0C6CB4 80166274 8CC60D50 */  lw    $a2, 0xd50($a2)
/* 0C6CB8 80166278 00064880 */  sll   $t1, $a2, 2
/* 0C6CBC 8016627C 01493821 */  addu  $a3, $t2, $t1
/* 0C6CC0 80166280 8CED0000 */  lw    $t5, ($a3)
/* 0C6CC4 80166284 8DA50004 */  lw    $a1, 4($t5)
/* 0C6CC8 80166288 AFA90030 */  sw    $t1, 0x30($sp)
/* 0C6CCC 8016628C 0C02C8D0 */  jal   func_800B2340
/* 0C6CD0 80166290 AFA7002C */   sw    $a3, 0x2c($sp)
/* 0C6CD4 80166294 8E020000 */  lw    $v0, ($s0)
/* 0C6CD8 80166298 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C6CDC 8016629C 44816000 */  mtc1  $at, $f12
/* 0C6CE0 801662A0 8C4E0000 */  lw    $t6, ($v0)
/* 0C6CE4 801662A4 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 0C6CE8 801662A8 3C01800E */  lui   $at, 0x800e
/* 0C6CEC 801662AC 000E7880 */  sll   $t7, $t6, 2
/* 0C6CF0 801662B0 002F0821 */  addu  $at, $at, $t7
/* 0C6CF4 801662B4 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0C6CF8 801662B8 8C580000 */  lw    $t8, ($v0)
/* 0C6CFC 801662BC C7A60048 */  lwc1  $f6, 0x48($sp)
/* 0C6D00 801662C0 3C01800E */  lui   $at, 0x800e
/* 0C6D04 801662C4 0018C880 */  sll   $t9, $t8, 2
/* 0C6D08 801662C8 00390821 */  addu  $at, $at, $t9
/* 0C6D0C 801662CC E4262790 */  swc1  $f6, 0x2790($at)
/* 0C6D10 801662D0 8C4C0000 */  lw    $t4, ($v0)
/* 0C6D14 801662D4 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 0C6D18 801662D8 3C01800E */  lui   $at, 0x800e
/* 0C6D1C 801662DC 000C6880 */  sll   $t5, $t4, 2
/* 0C6D20 801662E0 002D0821 */  addu  $at, $at, $t5
/* 0C6D24 801662E4 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0C6D28 801662E8 E4282950 */  swc1  $f8, 0x2950($at)
/* 0C6D2C 801662EC 8C4F0000 */  lw    $t7, ($v0)
/* 0C6D30 801662F0 8CEE0000 */  lw    $t6, ($a3)
/* 0C6D34 801662F4 3C0A800E */  lui   $t2, %hi(D_800DFBD0) # $t2, 0x800e
/* 0C6D38 801662F8 254AFBD0 */  addiu $t2, %lo(D_800DFBD0) # addiu $t2, $t2, -0x430
/* 0C6D3C 801662FC 000FC080 */  sll   $t8, $t7, 2
/* 0C6D40 80166300 0158C821 */  addu  $t9, $t2, $t8
/* 0C6D44 80166304 8F2C0000 */  lw    $t4, ($t9)
/* 0C6D48 80166308 8DC30008 */  lw    $v1, 8($t6)
/* 0C6D4C 8016630C 8FA90030 */  lw    $t1, 0x30($sp)
/* 0C6D50 80166310 8D8D0008 */  lw    $t5, 8($t4)
/* 0C6D54 80166314 C46A0030 */  lwc1  $f10, 0x30($v1)
/* 0C6D58 80166318 3C04800E */  lui   $a0, %hi(gEntitiesAngleXArray) # $a0, 0x800e
/* 0C6D5C 8016631C 24844010 */  addiu $a0, %lo(gEntitiesAngleXArray) # addiu $a0, $a0, 0x4010
/* 0C6D60 80166320 E5AA0030 */  swc1  $f10, 0x30($t5)
/* 0C6D64 80166324 8E0E0000 */  lw    $t6, ($s0)
/* 0C6D68 80166328 C4700034 */  lwc1  $f16, 0x34($v1)
/* 0C6D6C 8016632C 3C0B800E */  lui   $t3, %hi(gEntitiesAngleYArray) # $t3, 0x800e
/* 0C6D70 80166330 8DCF0000 */  lw    $t7, ($t6)
/* 0C6D74 80166334 256B41D0 */  addiu $t3, %lo(gEntitiesAngleYArray) # addiu $t3, $t3, 0x41d0
/* 0C6D78 80166338 01693021 */  addu  $a2, $t3, $t1
/* 0C6D7C 8016633C 000FC080 */  sll   $t8, $t7, 2
/* 0C6D80 80166340 0158C821 */  addu  $t9, $t2, $t8
/* 0C6D84 80166344 8F2C0000 */  lw    $t4, ($t9)
/* 0C6D88 80166348 3C05800E */  lui   $a1, %hi(gEntitiesAngleZArray) # $a1, 0x800e
/* 0C6D8C 8016634C 24A54390 */  addiu $a1, %lo(gEntitiesAngleZArray) # addiu $a1, $a1, 0x4390
/* 0C6D90 80166350 8D8D0008 */  lw    $t5, 8($t4)
/* 0C6D94 80166354 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0C6D98 80166358 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0C6D9C 8016635C E5B00034 */  swc1  $f16, 0x34($t5)
/* 0C6DA0 80166360 8E0E0000 */  lw    $t6, ($s0)
/* 0C6DA4 80166364 C4720038 */  lwc1  $f18, 0x38($v1)
/* 0C6DA8 80166368 3C018019 */  lui   $at, %hi(D_8019718C) # $at, 0x8019
/* 0C6DAC 8016636C 8DCF0000 */  lw    $t7, ($t6)
/* 0C6DB0 80166370 00897021 */  addu  $t6, $a0, $t1
/* 0C6DB4 80166374 000FC080 */  sll   $t8, $t7, 2
/* 0C6DB8 80166378 0158C821 */  addu  $t9, $t2, $t8
/* 0C6DBC 8016637C 8F2C0000 */  lw    $t4, ($t9)
/* 0C6DC0 80166380 8D8D0008 */  lw    $t5, 8($t4)
/* 0C6DC4 80166384 E5B20038 */  swc1  $f18, 0x38($t5)
/* 0C6DC8 80166388 8E020000 */  lw    $v0, ($s0)
/* 0C6DCC 8016638C C5C40000 */  lwc1  $f4, ($t6)
/* 0C6DD0 80166390 8C4F0000 */  lw    $t7, ($v0)
/* 0C6DD4 80166394 000FC080 */  sll   $t8, $t7, 2
/* 0C6DD8 80166398 0098C821 */  addu  $t9, $a0, $t8
/* 0C6DDC 8016639C E7240000 */  swc1  $f4, ($t9)
/* 0C6DE0 801663A0 8C4C0000 */  lw    $t4, ($v0)
/* 0C6DE4 801663A4 C4C60000 */  lwc1  $f6, ($a2)
/* 0C6DE8 801663A8 00A97821 */  addu  $t7, $a1, $t1
/* 0C6DEC 801663AC 000C6880 */  sll   $t5, $t4, 2
/* 0C6DF0 801663B0 016D7021 */  addu  $t6, $t3, $t5
/* 0C6DF4 801663B4 E5C60000 */  swc1  $f6, ($t6)
/* 0C6DF8 801663B8 8C580000 */  lw    $t8, ($v0)
/* 0C6DFC 801663BC C5E80000 */  lwc1  $f8, ($t7)
/* 0C6E00 801663C0 3C048019 */  lui   $a0, %hi(D_8019181C) # $a0, 0x8019
/* 0C6E04 801663C4 0018C880 */  sll   $t9, $t8, 2
/* 0C6E08 801663C8 00B96021 */  addu  $t4, $a1, $t9
/* 0C6E0C 801663CC E5880000 */  swc1  $f8, ($t4)
/* 0C6E10 801663D0 C5020040 */  lwc1  $f2, 0x40($t0)
/* 0C6E14 801663D4 2484181C */  addiu $a0, %lo(D_8019181C) # addiu $a0, $a0, 0x181c
/* 0C6E18 801663D8 46026032 */  c.eq.s $f12, $f2
/* 0C6E1C 801663DC 00000000 */  nop   
/* 0C6E20 801663E0 4503001D */  bc1tl .L80166458_ovl3
/* 0C6E24 801663E4 8C450000 */   lw    $a1, ($v0)
/* 0C6E28 801663E8 C42A718C */  lwc1  $f10, %lo(D_8019718C)($at)
/* 0C6E2C 801663EC 8C4D0000 */  lw    $t5, ($v0)
/* 0C6E30 801663F0 3C01800E */  lui   $at, 0x800e
/* 0C6E34 801663F4 460A1002 */  mul.s $f0, $f2, $f10
/* 0C6E38 801663F8 000D7080 */  sll   $t6, $t5, 2
/* 0C6E3C 801663FC 002E0821 */  addu  $at, $at, $t6
/* 0C6E40 80166400 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C6E44 80166404 8C4F0000 */  lw    $t7, ($v0)
/* 0C6E48 80166408 3C01800E */  lui   $at, 0x800e
/* 0C6E4C 8016640C 000FC080 */  sll   $t8, $t7, 2
/* 0C6E50 80166410 00380821 */  addu  $at, $at, $t8
/* 0C6E54 80166414 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C6E58 80166418 8C590000 */  lw    $t9, ($v0)
/* 0C6E5C 8016641C 3C01800E */  lui   $at, 0x800e
/* 0C6E60 80166420 00196080 */  sll   $t4, $t9, 2
/* 0C6E64 80166424 002C0821 */  addu  $at, $at, $t4
/* 0C6E68 80166428 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C6E6C 8016642C 3C018019 */  lui   $at, %hi(D_80197190) # $at, 0x8019
/* 0C6E70 80166430 C4307190 */  lwc1  $f16, %lo(D_80197190)($at)
/* 0C6E74 80166434 46101480 */  add.s $f18, $f2, $f16
/* 0C6E78 80166438 E5120040 */  swc1  $f18, 0x40($t0)
/* 0C6E7C 8016643C C5040040 */  lwc1  $f4, 0x40($t0)
/* 0C6E80 80166440 4604603E */  c.le.s $f12, $f4
/* 0C6E84 80166444 00000000 */  nop   
/* 0C6E88 80166448 45020003 */  bc1fl .L80166458_ovl3
/* 0C6E8C 8016644C 8C450000 */   lw    $a1, ($v0)
/* 0C6E90 80166450 E50C0040 */  swc1  $f12, 0x40($t0)
/* 0C6E94 80166454 8C450000 */  lw    $a1, ($v0)
.L80166458_ovl3:
/* 0C6E98 80166458 AFA90030 */  sw    $t1, 0x30($sp)
/* 0C6E9C 8016645C 0C044681 */  jal   func_80111A04
/* 0C6EA0 80166460 AFA60028 */   sw    $a2, 0x28($sp)
/* 0C6EA4 80166464 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0C6EA8 80166468 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0C6EAC 8016646C 3C014230 */  li    $at, 0x42300000 # 44.000000
/* 0C6EB0 80166470 44813000 */  mtc1  $at, $f6
/* 0C6EB4 80166474 C5080040 */  lwc1  $f8, 0x40($t0)
/* 0C6EB8 80166478 8C4D0020 */  lw    $t5, 0x20($v0)
/* 0C6EBC 8016647C 3C014216 */  li    $at, 0x42160000 # 37.500000
/* 0C6EC0 80166480 46083282 */  mul.s $f10, $f6, $f8
/* 0C6EC4 80166484 44818000 */  mtc1  $at, $f16
/* 0C6EC8 80166488 00402025 */  move  $a0, $v0
/* 0C6ECC 8016648C E5AA0018 */  swc1  $f10, 0x18($t5)
/* 0C6ED0 80166490 C5120040 */  lwc1  $f18, 0x40($t0)
/* 0C6ED4 80166494 8C4E0020 */  lw    $t6, 0x20($v0)
/* 0C6ED8 80166498 46128102 */  mul.s $f4, $f16, $f18
/* 0C6EDC 8016649C 0C044713 */  jal   func_80111C4C
/* 0C6EE0 801664A0 E5C40010 */   swc1  $f4, 0x10($t6)
/* 0C6EE4 801664A4 8FA90030 */  lw    $t1, 0x30($sp)
/* 0C6EE8 801664A8 8E0F0000 */  lw    $t7, ($s0)
/* 0C6EEC 801664AC 3C01800E */  lui   $at, 0x800e
/* 0C6EF0 801664B0 00290821 */  addu  $at, $at, $t1
/* 0C6EF4 801664B4 8DF80000 */  lw    $t8, ($t7)
/* 0C6EF8 801664B8 C42617D0 */  lwc1  $f6, 0x17d0($at)
/* 0C6EFC 801664BC 3C01800E */  lui   $at, 0x800e
/* 0C6F00 801664C0 0018C880 */  sll   $t9, $t8, 2
/* 0C6F04 801664C4 3C088013 */  lui   $t0, %hi(gKirbyState) # $t0, 0x8013
/* 0C6F08 801664C8 00390821 */  addu  $at, $at, $t9
/* 0C6F0C 801664CC 2508E7C0 */  addiu $t0, %lo(gKirbyState) # addiu $t0, $t0, -0x1840
/* 0C6F10 801664D0 3C048019 */  lui   $a0, %hi(D_80194E4C) # $a0, 0x8019
/* 0C6F14 801664D4 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C6F18 801664D8 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0C6F1C 801664DC 8D070040 */  lw    $a3, 0x40($t0)
/* 0C6F20 801664E0 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C6F24 801664E4 24844E4C */  addiu $a0, %lo(D_80194E4C) # addiu $a0, $a0, 0x4e4c
/* 0C6F28 801664E8 0C05481C */  jal   func_80152070_ovl3
/* 0C6F2C 801664EC 24060010 */   li    $a2, 16
/* 0C6F30 801664F0 8E0C0000 */  lw    $t4, ($s0)
/* 0C6F34 801664F4 3C0F801A */  lui   $t7, %hi(D_80198540) # $t7, 0x801a
/* 0C6F38 801664F8 25EF8540 */  addiu $t7, %lo(D_80198540) # addiu $t7, $t7, -0x7ac0
/* 0C6F3C 801664FC 8D830000 */  lw    $v1, ($t4)
/* 0C6F40 80166500 3C058019 */  lui   $a1, %hi(D_80194F4C) # $a1, 0x8019
/* 0C6F44 80166504 24A54F4C */  addiu $a1, %lo(D_80194F4C) # addiu $a1, $a1, 0x4f4c
/* 0C6F48 80166508 00036940 */  sll   $t5, $v1, 5
/* 0C6F4C 8016650C 25AEF880 */  addiu $t6, $t5, -0x780
/* 0C6F50 80166510 01CF2021 */  addu  $a0, $t6, $t7
/* 0C6F54 80166514 00003025 */  move  $a2, $zero
/* 0C6F58 80166518 0C055754 */  jal   func_80155D50_ovl3
/* 0C6F5C 8016651C 00603825 */   move  $a3, $v1
/* 0C6F60 80166520 5040000D */  beql  $v0, $zero, .L80166558_ovl3
/* 0C6F64 80166524 8E0C0000 */   lw    $t4, ($s0)
/* 0C6F68 80166528 8E190000 */  lw    $t9, ($s0)
/* 0C6F6C 8016652C 3C0E800E */  lui   $t6, 0x800e
/* 0C6F70 80166530 3C01800F */  lui   $at, 0x800f
/* 0C6F74 80166534 8F2C0000 */  lw    $t4, ($t9)
/* 0C6F78 80166538 24180001 */  li    $t8, 1
/* 0C6F7C 8016653C 000C6880 */  sll   $t5, $t4, 2
/* 0C6F80 80166540 01CD7021 */  addu  $t6, $t6, $t5
/* 0C6F84 80166544 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 0C6F88 80166548 000E7880 */  sll   $t7, $t6, 2
/* 0C6F8C 8016654C 002F0821 */  addu  $at, $at, $t7
/* 0C6F90 80166550 AC3883E0 */  sw    $t8, -0x7c20($at)
/* 0C6F94 80166554 8E0C0000 */  lw    $t4, ($s0)
.L80166558_ovl3:
/* 0C6F98 80166558 8FB90028 */  lw    $t9, 0x28($sp)
/* 0C6F9C 8016655C 3C01800E */  lui   $at, 0x800e
/* 0C6FA0 80166560 8D8D0000 */  lw    $t5, ($t4)
/* 0C6FA4 80166564 C7280000 */  lwc1  $f8, ($t9)
/* 0C6FA8 80166568 000D7080 */  sll   $t6, $t5, 2
/* 0C6FAC 8016656C 002E0821 */  addu  $at, $at, $t6
/* 0C6FB0 80166570 E42841D0 */  swc1  $f8, 0x41d0($at)
/* 0C6FB4 80166574 8FBF001C */  lw    $ra, 0x1c($sp)
.L80166578_ovl3:
/* 0C6FB8 80166578 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C6FBC 8016657C 27BD0050 */  addiu $sp, $sp, 0x50
/* 0C6FC0 80166580 03E00008 */  jr    $ra
/* 0C6FC4 80166584 00000000 */   nop   

.type func_80166210_ovl3, @function
.size func_80166210_ovl3, . - func_80166210_ovl3

glabel func_80166588_ovl3
/* 0C6FC8 80166588 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C6FCC 8016658C AFB20020 */  sw    $s2, 0x20($sp)
/* 0C6FD0 80166590 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0C6FD4 80166594 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0C6FD8 80166598 8E420000 */  lw    $v0, ($s2)
/* 0C6FDC 8016659C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C6FE0 801665A0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0C6FE4 801665A4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0C6FE8 801665A8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C6FEC 801665AC AFB00018 */  sw    $s0, 0x18($sp)
/* 0C6FF0 801665B0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C6FF4 801665B4 8C4F0000 */  lw    $t7, ($v0)
/* 0C6FF8 801665B8 3C018019 */  lui   $at, %hi(D_80197194) # $at, 0x8019
/* 0C6FFC 801665BC C4207194 */  lwc1  $f0, %lo(D_80197194)($at)
/* 0C7000 801665C0 3C01800E */  lui   $at, 0x800e
/* 0C7004 801665C4 000FC080 */  sll   $t8, $t7, 2
/* 0C7008 801665C8 00380821 */  addu  $at, $at, $t8
/* 0C700C 801665CC 240E0001 */  li    $t6, 1
/* 0C7010 801665D0 AC2E0650 */  sw    $t6, 0x650($at)
/* 0C7014 801665D4 8C590000 */  lw    $t9, ($v0)
/* 0C7018 801665D8 3C13800F */  lui   $s3, %hi(D_800E98E0) # $s3, 0x800f
/* 0C701C 801665DC 267398E0 */  addiu $s3, %lo(D_800E98E0) # addiu $s3, $s3, -0x6720
/* 0C7020 801665E0 00194080 */  sll   $t0, $t9, 2
/* 0C7024 801665E4 2414FFFF */  li    $s4, -1
/* 0C7028 801665E8 02684821 */  addu  $t1, $s3, $t0
/* 0C702C 801665EC AD340000 */  sw    $s4, ($t1)
/* 0C7030 801665F0 8C4B0000 */  lw    $t3, ($v0)
/* 0C7034 801665F4 3C01800E */  lui   $at, 0x800e
/* 0C7038 801665F8 3C0A800B */  lui   $t2, %hi(D_800B5094) # $t2, 0x800b
/* 0C703C 801665FC 000B6080 */  sll   $t4, $t3, 2
/* 0C7040 80166600 002C0821 */  addu  $at, $at, $t4
/* 0C7044 80166604 254A5094 */  addiu $t2, %lo(D_800B5094) # addiu $t2, $t2, 0x5094
/* 0C7048 80166608 AC2AEF90 */  sw    $t2, -0x1070($at)
/* 0C704C 8016660C 8C4F0000 */  lw    $t7, ($v0)
/* 0C7050 80166610 3C01800E */  lui   $at, 0x800e
/* 0C7054 80166614 240D0008 */  li    $t5, 8
/* 0C7058 80166618 000F7080 */  sll   $t6, $t7, 2
/* 0C705C 8016661C 002E0821 */  addu  $at, $at, $t6
/* 0C7060 80166620 AC2D0F10 */  sw    $t5, 0xf10($at)
/* 0C7064 80166624 8C590000 */  lw    $t9, ($v0)
/* 0C7068 80166628 3C01800E */  lui   $at, 0x800e
/* 0C706C 8016662C 3C188016 */  lui   $t8, %hi(D_80166768) # $t8, 0x8016
/* 0C7070 80166630 00194080 */  sll   $t0, $t9, 2
/* 0C7074 80166634 00280821 */  addu  $at, $at, $t0
/* 0C7078 80166638 27186768 */  addiu $t8, %lo(D_80166768) # addiu $t8, $t8, 0x6768
/* 0C707C 8016663C AC38F150 */  sw    $t8, -0xeb0($at)
/* 0C7080 80166640 8C490000 */  lw    $t1, ($v0)
/* 0C7084 80166644 3C01800E */  lui   $at, 0x800e
/* 0C7088 80166648 3C040002 */  lui   $a0, (0x0002004F >> 16) # lui $a0, 2
/* 0C708C 8016664C 00095880 */  sll   $t3, $t1, 2
/* 0C7090 80166650 002B0821 */  addu  $at, $at, $t3
/* 0C7094 80166654 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C7098 80166658 8C4A0000 */  lw    $t2, ($v0)
/* 0C709C 8016665C 3C01800E */  lui   $at, 0x800e
/* 0C70A0 80166660 3484004F */  ori   $a0, (0x0002004F & 0xFFFF) # ori $a0, $a0, 0x4f
/* 0C70A4 80166664 000A6080 */  sll   $t4, $t2, 2
/* 0C70A8 80166668 002C0821 */  addu  $at, $at, $t4
/* 0C70AC 8016666C E4204710 */  swc1  $f0, 0x4710($at)
/* 0C70B0 80166670 8C4F0000 */  lw    $t7, ($v0)
/* 0C70B4 80166674 3C01800E */  lui   $at, 0x800e
/* 0C70B8 80166678 24050022 */  li    $a1, 34
/* 0C70BC 8016667C 000F6880 */  sll   $t5, $t7, 2
/* 0C70C0 80166680 002D0821 */  addu  $at, $at, $t5
/* 0C70C4 80166684 24060010 */  li    $a2, 16
/* 0C70C8 80166688 0C02A619 */  jal   func_800A9864
/* 0C70CC 8016668C E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C70D0 80166690 8E4E0000 */  lw    $t6, ($s2)
/* 0C70D4 80166694 3C11800E */  lui   $s1, %hi(D_800E0D50) # $s1, 0x800e
/* 0C70D8 80166698 26310D50 */  addiu $s1, %lo(D_800E0D50) # addiu $s1, $s1, 0xd50
/* 0C70DC 8016669C 8DD90000 */  lw    $t9, ($t6)
/* 0C70E0 801666A0 3C10800E */  lui   $s0, %hi(D_800E09D0) # $s0, 0x800e
/* 0C70E4 801666A4 261009D0 */  addiu $s0, %lo(D_800E09D0) # addiu $s0, $s0, 0x9d0
/* 0C70E8 801666A8 0019C080 */  sll   $t8, $t9, 2
/* 0C70EC 801666AC 02384021 */  addu  $t0, $s1, $t8
/* 0C70F0 801666B0 8D090000 */  lw    $t1, ($t0)
/* 0C70F4 801666B4 00095880 */  sll   $t3, $t1, 2
/* 0C70F8 801666B8 020B5021 */  addu  $t2, $s0, $t3
/* 0C70FC 801666BC 0C02BB30 */  jal   func_800AECC0
/* 0C7100 801666C0 C54C0000 */   lwc1  $f12, ($t2)
/* 0C7104 801666C4 8E4C0000 */  lw    $t4, ($s2)
/* 0C7108 801666C8 8D8F0000 */  lw    $t7, ($t4)
/* 0C710C 801666CC 000F6880 */  sll   $t5, $t7, 2
/* 0C7110 801666D0 022D7021 */  addu  $t6, $s1, $t5
/* 0C7114 801666D4 8DD90000 */  lw    $t9, ($t6)
/* 0C7118 801666D8 0019C080 */  sll   $t8, $t9, 2
/* 0C711C 801666DC 02184021 */  addu  $t0, $s0, $t8
/* 0C7120 801666E0 0C02BB48 */  jal   func_800AED20
/* 0C7124 801666E4 C50C0000 */   lwc1  $f12, ($t0)
/* 0C7128 801666E8 3C118019 */  lui   $s1, %hi(D_801968EC) # $s1, 0x8019
/* 0C712C 801666EC 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0C7130 801666F0 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0C7134 801666F4 263168EC */  addiu $s1, %lo(D_801968EC) # addiu $s1, $s1, 0x68ec
/* 0C7138 801666F8 8E020044 */  lw    $v0, 0x44($s0)
.L801666FC_ovl3:
/* 0C713C 801666FC 12820010 */  beq   $s4, $v0, .L80166740_ovl3
/* 0C7140 80166700 00027880 */   sll   $t7, $v0, 2
/* 0C7144 80166704 8E490000 */  lw    $t1, ($s2)
/* 0C7148 80166708 022F6821 */  addu  $t5, $s1, $t7
/* 0C714C 8016670C 8D2B0000 */  lw    $t3, ($t1)
/* 0C7150 80166710 000B5080 */  sll   $t2, $t3, 2
/* 0C7154 80166714 026A1821 */  addu  $v1, $s3, $t2
/* 0C7158 80166718 8C6C0000 */  lw    $t4, ($v1)
/* 0C715C 8016671C 104C0004 */  beq   $v0, $t4, .L80166730_ovl3
/* 0C7160 80166720 00000000 */   nop   
/* 0C7164 80166724 AC620000 */  sw    $v0, ($v1)
/* 0C7168 80166728 0C02A806 */  jal   func_800AA018
/* 0C716C 8016672C 8DA40000 */   lw    $a0, ($t5)
.L80166730_ovl3:
/* 0C7170 80166730 0C002DAF */  jal   finish_current_thread
/* 0C7174 80166734 24040001 */   li    $a0, 1
/* 0C7178 80166738 1000FFF0 */  b     .L801666FC_ovl3
/* 0C717C 8016673C 8E020044 */   lw    $v0, 0x44($s0)
.L80166740_ovl3:
/* 0C7180 80166740 0C02BE85 */  jal   func_800AFA14
/* 0C7184 80166744 00000000 */   nop   
/* 0C7188 80166748 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0C718C 8016674C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C7190 80166750 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C7194 80166754 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C7198 80166758 8FB30024 */  lw    $s3, 0x24($sp)
/* 0C719C 8016675C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0C71A0 80166760 03E00008 */  jr    $ra
/* 0C71A4 80166764 27BD0030 */   addiu $sp, $sp, 0x30

.type func_80166588_ovl3, @function
.size func_80166588_ovl3, . - func_80166588_ovl3

glabel func_80166768_ovl3
/* 0C71A8 80166768 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0C71AC 8016676C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0C71B0 80166770 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0C71B4 80166774 8C4E00A0 */  lw    $t6, 0xa0($v0)
/* 0C71B8 80166778 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0C71BC 8016677C AFB40030 */  sw    $s4, 0x30($sp)
/* 0C71C0 80166780 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0C71C4 80166784 AFB20028 */  sw    $s2, 0x28($sp)
/* 0C71C8 80166788 AFB10024 */  sw    $s1, 0x24($sp)
/* 0C71CC 8016678C AFB00020 */  sw    $s0, 0x20($sp)
/* 0C71D0 80166790 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 0C71D4 80166794 15C00008 */  bnez  $t6, .L801667B8_ovl3
/* 0C71D8 80166798 AFA40060 */   sw    $a0, 0x60($sp)
/* 0C71DC 8016679C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C71E0 801667A0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C71E4 801667A4 8E0F0000 */  lw    $t7, ($s0)
/* 0C71E8 801667A8 0C02C640 */  jal   func_800B1900
/* 0C71EC 801667AC 95E40002 */   lhu   $a0, 2($t7)
/* 0C71F0 801667B0 100000F8 */  b     .L80166B94_ovl3
/* 0C71F4 801667B4 8FBF0034 */   lw    $ra, 0x34($sp)
.L801667B8_ovl3:
/* 0C71F8 801667B8 8C580044 */  lw    $t8, 0x44($v0)
/* 0C71FC 801667BC 2414FFFF */  li    $s4, -1
/* 0C7200 801667C0 2410000E */  li    $s0, 14
/* 0C7204 801667C4 169800F2 */  bne   $s4, $t8, .L80166B90_ovl3
/* 0C7208 801667C8 3C13800E */   lui   $s3, %hi(D_800DD748) # $s3, 0x800e
/* 0C720C 801667CC 3C12800D */  lui   $s2, %hi(D_800D723C) # $s2, 0x800d
/* 0C7210 801667D0 3C11800D */  lui   $s1, %hi(D_800D7238) # $s1, 0x800d
/* 0C7214 801667D4 4480A000 */  mtc1  $zero, $f20
/* 0C7218 801667D8 AFA0005C */  sw    $zero, 0x5c($sp)
/* 0C721C 801667DC AFA00058 */  sw    $zero, 0x58($sp)
/* 0C7220 801667E0 AFA00054 */  sw    $zero, 0x54($sp)
/* 0C7224 801667E4 26317238 */  addiu $s1, %lo(D_800D7238) # addiu $s1, $s1, 0x7238
/* 0C7228 801667E8 2652723C */  addiu $s2, %lo(D_800D723C) # addiu $s2, $s2, 0x723c
/* 0C722C 801667EC 2673D748 */  addiu $s3, %lo(D_800DD748) # addiu $s3, $s3, -0x28b8
.L801667F0_ovl3:
/* 0C7230 801667F0 8E620000 */  lw    $v0, ($s3)
/* 0C7234 801667F4 24010017 */  li    $at, 23
/* 0C7238 801667F8 5282007F */  beql  $s4, $v0, .L801669F8_ovl3
/* 0C723C 801667FC 26100001 */   addiu $s0, $s0, 1
/* 0C7240 80166800 10410005 */  beq   $v0, $at, .L80166818_ovl3
/* 0C7244 80166804 2401001A */   li    $at, 26
/* 0C7248 80166808 10410003 */  beq   $v0, $at, .L80166818_ovl3
/* 0C724C 8016680C 24010018 */   li    $at, 24
/* 0C7250 80166810 54410079 */  bnel  $v0, $at, .L801669F8_ovl3
/* 0C7254 80166814 26100001 */   addiu $s0, $s0, 1
.L80166818_ovl3:
/* 0C7258 80166818 0C067C8D */  jal   func_8019F234_ovl3
/* 0C725C 8016681C 02002025 */   move  $a0, $s0
/* 0C7260 80166820 14400074 */  bnez  $v0, .L801669F4_ovl3
/* 0C7264 80166824 00002025 */   move  $a0, $zero
/* 0C7268 80166828 0C03E60A */  jal   func_800F9828
/* 0C726C 8016682C 02002825 */   move  $a1, $s0
/* 0C7270 80166830 E6200000 */  swc1  $f0, ($s1)
/* 0C7274 80166834 3C018019 */  lui   $at, %hi(D_80197198) # $at, 0x8019
/* 0C7278 80166838 C4247198 */  lwc1  $f4, %lo(D_80197198)($at)
/* 0C727C 8016683C C6260000 */  lwc1  $f6, ($s1)
/* 0C7280 80166840 8FB90054 */  lw    $t9, 0x54($sp)
/* 0C7284 80166844 46062032 */  c.eq.s $f4, $f6
/* 0C7288 80166848 00000000 */  nop   
/* 0C728C 8016684C 4503006A */  bc1tl .L801669F8_ovl3
/* 0C7290 80166850 26100001 */   addiu $s0, $s0, 1
/* 0C7294 80166854 17200003 */  bnez  $t9, .L80166864_ovl3
/* 0C7298 80166858 00002025 */   move  $a0, $zero
/* 0C729C 8016685C 10000065 */  b     .L801669F4_ovl3
/* 0C72A0 80166860 AFB00054 */   sw    $s0, 0x54($sp)
.L80166864_ovl3:
/* 0C72A4 80166864 0C03E60A */  jal   func_800F9828
/* 0C72A8 80166868 8FA50054 */   lw    $a1, 0x54($sp)
/* 0C72AC 8016686C 4614003C */  c.lt.s $f0, $f20
/* 0C72B0 80166870 00002025 */  move  $a0, $zero
/* 0C72B4 80166874 8FA50054 */  lw    $a1, 0x54($sp)
/* 0C72B8 80166878 45000006 */  bc1f  .L80166894_ovl3
/* 0C72BC 8016687C 00000000 */   nop   
/* 0C72C0 80166880 0C03E60A */  jal   func_800F9828
/* 0C72C4 80166884 00002025 */   move  $a0, $zero
/* 0C72C8 80166888 46000207 */  neg.s $f8, $f0
/* 0C72CC 8016688C 10000004 */  b     .L801668A0_ovl3
/* 0C72D0 80166890 E6280000 */   swc1  $f8, ($s1)
.L80166894_ovl3:
/* 0C72D4 80166894 0C03E60A */  jal   func_800F9828
/* 0C72D8 80166898 8FA50054 */   lw    $a1, 0x54($sp)
/* 0C72DC 8016689C E6200000 */  swc1  $f0, ($s1)
.L801668A0_ovl3:
/* 0C72E0 801668A0 00002025 */  move  $a0, $zero
/* 0C72E4 801668A4 0C03E60A */  jal   func_800F9828
/* 0C72E8 801668A8 02002825 */   move  $a1, $s0
/* 0C72EC 801668AC 4614003C */  c.lt.s $f0, $f20
/* 0C72F0 801668B0 00002025 */  move  $a0, $zero
/* 0C72F4 801668B4 02002825 */  move  $a1, $s0
/* 0C72F8 801668B8 45000006 */  bc1f  .L801668D4_ovl3
/* 0C72FC 801668BC 00000000 */   nop   
/* 0C7300 801668C0 0C03E60A */  jal   func_800F9828
/* 0C7304 801668C4 00002025 */   move  $a0, $zero
/* 0C7308 801668C8 46000287 */  neg.s $f10, $f0
/* 0C730C 801668CC 10000004 */  b     .L801668E0_ovl3
/* 0C7310 801668D0 E64A0000 */   swc1  $f10, ($s2)
.L801668D4_ovl3:
/* 0C7314 801668D4 0C03E60A */  jal   func_800F9828
/* 0C7318 801668D8 02002825 */   move  $a1, $s0
/* 0C731C 801668DC E6400000 */  swc1  $f0, ($s2)
.L801668E0_ovl3:
/* 0C7320 801668E0 C6500000 */  lwc1  $f16, ($s2)
/* 0C7324 801668E4 C6320000 */  lwc1  $f18, ($s1)
/* 0C7328 801668E8 8FA90058 */  lw    $t1, 0x58($sp)
/* 0C732C 801668EC 8FAB0058 */  lw    $t3, 0x58($sp)
/* 0C7330 801668F0 4612803C */  c.lt.s $f16, $f18
/* 0C7334 801668F4 00000000 */  nop   
/* 0C7338 801668F8 45000006 */  bc1f  .L80166914_ovl3
/* 0C733C 801668FC 00000000 */   nop   
/* 0C7340 80166900 8FAA0054 */  lw    $t2, 0x54($sp)
/* 0C7344 80166904 AFA9005C */  sw    $t1, 0x5c($sp)
/* 0C7348 80166908 AFB00054 */  sw    $s0, 0x54($sp)
/* 0C734C 8016690C 10000039 */  b     .L801669F4_ovl3
/* 0C7350 80166910 AFAA0058 */   sw    $t2, 0x58($sp)
.L80166914_ovl3:
/* 0C7354 80166914 15600003 */  bnez  $t3, .L80166924_ovl3
/* 0C7358 80166918 00002025 */   move  $a0, $zero
/* 0C735C 8016691C 10000035 */  b     .L801669F4_ovl3
/* 0C7360 80166920 AFB00058 */   sw    $s0, 0x58($sp)
.L80166924_ovl3:
/* 0C7364 80166924 0C03E60A */  jal   func_800F9828
/* 0C7368 80166928 8FA50058 */   lw    $a1, 0x58($sp)
/* 0C736C 8016692C 4614003C */  c.lt.s $f0, $f20
/* 0C7370 80166930 00002025 */  move  $a0, $zero
/* 0C7374 80166934 8FA50058 */  lw    $a1, 0x58($sp)
/* 0C7378 80166938 45000006 */  bc1f  .L80166954_ovl3
/* 0C737C 8016693C 00000000 */   nop   
/* 0C7380 80166940 0C03E60A */  jal   func_800F9828
/* 0C7384 80166944 00002025 */   move  $a0, $zero
/* 0C7388 80166948 46000107 */  neg.s $f4, $f0
/* 0C738C 8016694C 10000004 */  b     .L80166960_ovl3
/* 0C7390 80166950 E6240000 */   swc1  $f4, ($s1)
.L80166954_ovl3:
/* 0C7394 80166954 0C03E60A */  jal   func_800F9828
/* 0C7398 80166958 8FA50058 */   lw    $a1, 0x58($sp)
/* 0C739C 8016695C E6200000 */  swc1  $f0, ($s1)
.L80166960_ovl3:
/* 0C73A0 80166960 C6460000 */  lwc1  $f6, ($s2)
/* 0C73A4 80166964 C6280000 */  lwc1  $f8, ($s1)
/* 0C73A8 80166968 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0C73AC 8016696C 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0C73B0 80166970 4608303C */  c.lt.s $f6, $f8
/* 0C73B4 80166974 00000000 */  nop   
/* 0C73B8 80166978 45000004 */  bc1f  .L8016698C_ovl3
/* 0C73BC 8016697C 00000000 */   nop   
/* 0C73C0 80166980 AFAC005C */  sw    $t4, 0x5c($sp)
/* 0C73C4 80166984 1000001B */  b     .L801669F4_ovl3
/* 0C73C8 80166988 AFB00058 */   sw    $s0, 0x58($sp)
.L8016698C_ovl3:
/* 0C73CC 8016698C 15A00003 */  bnez  $t5, .L8016699C_ovl3
/* 0C73D0 80166990 00002025 */   move  $a0, $zero
/* 0C73D4 80166994 10000017 */  b     .L801669F4_ovl3
/* 0C73D8 80166998 AFB0005C */   sw    $s0, 0x5c($sp)
.L8016699C_ovl3:
/* 0C73DC 8016699C 0C03E60A */  jal   func_800F9828
/* 0C73E0 801669A0 8FA5005C */   lw    $a1, 0x5c($sp)
/* 0C73E4 801669A4 4614003C */  c.lt.s $f0, $f20
/* 0C73E8 801669A8 00002025 */  move  $a0, $zero
/* 0C73EC 801669AC 8FA5005C */  lw    $a1, 0x5c($sp)
/* 0C73F0 801669B0 45000006 */  bc1f  .L801669CC_ovl3
/* 0C73F4 801669B4 00000000 */   nop   
/* 0C73F8 801669B8 0C03E60A */  jal   func_800F9828
/* 0C73FC 801669BC 00002025 */   move  $a0, $zero
/* 0C7400 801669C0 46000287 */  neg.s $f10, $f0
/* 0C7404 801669C4 10000004 */  b     .L801669D8_ovl3
/* 0C7408 801669C8 E62A0000 */   swc1  $f10, ($s1)
.L801669CC_ovl3:
/* 0C740C 801669CC 0C03E60A */  jal   func_800F9828
/* 0C7410 801669D0 8FA5005C */   lw    $a1, 0x5c($sp)
/* 0C7414 801669D4 E6200000 */  swc1  $f0, ($s1)
.L801669D8_ovl3:
/* 0C7418 801669D8 C6500000 */  lwc1  $f16, ($s2)
/* 0C741C 801669DC C6320000 */  lwc1  $f18, ($s1)
/* 0C7420 801669E0 4612803C */  c.lt.s $f16, $f18
/* 0C7424 801669E4 00000000 */  nop   
/* 0C7428 801669E8 45020003 */  bc1fl .L801669F8_ovl3
/* 0C742C 801669EC 26100001 */   addiu $s0, $s0, 1
/* 0C7430 801669F0 AFB0005C */  sw    $s0, 0x5c($sp)
.L801669F4_ovl3:
/* 0C7434 801669F4 26100001 */  addiu $s0, $s0, 1
.L801669F8_ovl3:
/* 0C7438 801669F8 2401003C */  li    $at, 60
/* 0C743C 801669FC 1601FF7C */  bne   $s0, $at, .L801667F0_ovl3
/* 0C7440 80166A00 26730004 */   addiu $s3, $s3, 4
/* 0C7444 80166A04 8FAE0054 */  lw    $t6, 0x54($sp)
/* 0C7448 80166A08 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C744C 80166A0C 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0C7450 80166A10 11C00005 */  beqz  $t6, .L80166A28_ovl3
/* 0C7454 80166A14 2610A7C4 */   addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C7458 80166A18 11E00003 */  beqz  $t7, .L80166A28_ovl3
/* 0C745C 80166A1C 8FB8005C */   lw    $t8, 0x5c($sp)
/* 0C7460 80166A20 5700000E */  bnezl $t8, .L80166A5C_ovl3
/* 0C7464 80166A24 8E060000 */   lw    $a2, ($s0)
.L80166A28_ovl3:
/* 0C7468 80166A28 8FB90054 */  lw    $t9, 0x54($sp)
/* 0C746C 80166A2C 8FA90058 */  lw    $t1, 0x58($sp)
/* 0C7470 80166A30 5320000A */  beql  $t9, $zero, .L80166A5C_ovl3
/* 0C7474 80166A34 8E060000 */   lw    $a2, ($s0)
/* 0C7478 80166A38 15200004 */  bnez  $t1, .L80166A4C_ovl3
/* 0C747C 80166A3C 8FAA005C */   lw    $t2, 0x5c($sp)
/* 0C7480 80166A40 AFB9005C */  sw    $t9, 0x5c($sp)
/* 0C7484 80166A44 10000004 */  b     .L80166A58_ovl3
/* 0C7488 80166A48 AFB90058 */   sw    $t9, 0x58($sp)
.L80166A4C_ovl3:
/* 0C748C 80166A4C 15400002 */  bnez  $t2, .L80166A58_ovl3
/* 0C7490 80166A50 8FAB0054 */   lw    $t3, 0x54($sp)
/* 0C7494 80166A54 AFAB005C */  sw    $t3, 0x5c($sp)
.L80166A58_ovl3:
/* 0C7498 80166A58 8E060000 */  lw    $a2, ($s0)
.L80166A5C_ovl3:
/* 0C749C 80166A5C 3C08800F */  lui   $t0, %hi(D_800E98E0) # $t0, 0x800f
/* 0C74A0 80166A60 250898E0 */  addiu $t0, %lo(D_800E98E0) # addiu $t0, $t0, -0x6720
/* 0C74A4 80166A64 8CCC0000 */  lw    $t4, ($a2)
/* 0C74A8 80166A68 3C12800F */  lui   $s2, %hi(D_800EC660) # $s2, 0x800f
/* 0C74AC 80166A6C 3C11800E */  lui   $s1, %hi(D_800E0D50) # $s1, 0x800e
/* 0C74B0 80166A70 000C6880 */  sll   $t5, $t4, 2
/* 0C74B4 80166A74 010D1821 */  addu  $v1, $t0, $t5
/* 0C74B8 80166A78 8C6E0000 */  lw    $t6, ($v1)
/* 0C74BC 80166A7C 26310D50 */  addiu $s1, %lo(D_800E0D50) # addiu $s1, $s1, 0xd50
/* 0C74C0 80166A80 2652C660 */  addiu $s2, %lo(D_800EC660) # addiu $s2, $s2, -0x39a0
/* 0C74C4 80166A84 25CF0001 */  addiu $t7, $t6, 1
/* 0C74C8 80166A88 AC6F0000 */  sw    $t7, ($v1)
/* 0C74CC 80166A8C 8CC20000 */  lw    $v0, ($a2)
/* 0C74D0 80166A90 00002825 */  move  $a1, $zero
/* 0C74D4 80166A94 0002C080 */  sll   $t8, $v0, 2
/* 0C74D8 80166A98 01184821 */  addu  $t1, $t0, $t8
/* 0C74DC 80166A9C 8D390000 */  lw    $t9, ($t1)
/* 0C74E0 80166AA0 1B200039 */  blez  $t9, .L80166B88_ovl3
/* 0C74E4 80166AA4 24040007 */   li    $a0, 7
.L80166AA8_ovl3:
/* 0C74E8 80166AA8 0C058CAE */  jal   func_801632B8_ovl3
/* 0C74EC 80166AAC AFA5004C */   sw    $a1, 0x4c($sp)
/* 0C74F0 80166AB0 3C08800F */  lui   $t0, %hi(D_800E98E0) # $t0, 0x800f
/* 0C74F4 80166AB4 250898E0 */  addiu $t0, %lo(D_800E98E0) # addiu $t0, $t0, -0x6720
/* 0C74F8 80166AB8 1054002A */  beq   $v0, $s4, .L80166B64_ovl3
/* 0C74FC 80166ABC 8FA5004C */   lw    $a1, 0x4c($sp)
/* 0C7500 80166AC0 00022080 */  sll   $a0, $v0, 2
/* 0C7504 80166AC4 3C01800F */  lui   $at, 0x800f
/* 0C7508 80166AC8 00240821 */  addu  $at, $at, $a0
/* 0C750C 80166ACC AC25C2E0 */  sw    $a1, -0x3d20($at)
/* 0C7510 80166AD0 8E060000 */  lw    $a2, ($s0)
/* 0C7514 80166AD4 02247021 */  addu  $t6, $s1, $a0
/* 0C7518 80166AD8 00051880 */  sll   $v1, $a1, 2
/* 0C751C 80166ADC 8CCA0000 */  lw    $t2, ($a2)
/* 0C7520 80166AE0 03A37821 */  addu  $t7, $sp, $v1
/* 0C7524 80166AE4 3C01800E */  lui   $at, 0x800e
/* 0C7528 80166AE8 000A5880 */  sll   $t3, $t2, 2
/* 0C752C 80166AEC 022B6021 */  addu  $t4, $s1, $t3
/* 0C7530 80166AF0 8D8D0000 */  lw    $t5, ($t4)
/* 0C7534 80166AF4 00240821 */  addu  $at, $at, $a0
/* 0C7538 80166AF8 3C188019 */  lui   $t8, %hi(D_801968F8) # $t8, 0x8019
/* 0C753C 80166AFC ADCD0000 */  sw    $t5, ($t6)
/* 0C7540 80166B00 8DEF0054 */  lw    $t7, 0x54($t7)
/* 0C7544 80166B04 271868F8 */  addiu $t8, %lo(D_801968F8) # addiu $t8, $t8, 0x68f8
/* 0C7548 80166B08 00783821 */  addu  $a3, $v1, $t8
/* 0C754C 80166B0C AC2F1D10 */  sw    $t7, 0x1d10($at)
/* 0C7550 80166B10 8CC90000 */  lw    $t1, ($a2)
/* 0C7554 80166B14 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C7558 80166B18 44812000 */  mtc1  $at, $f4
/* 0C755C 80166B1C 3C01800E */  lui   $at, 0x800e
/* 0C7560 80166B20 0009C880 */  sll   $t9, $t1, 2
/* 0C7564 80166B24 00390821 */  addu  $at, $at, $t9
/* 0C7568 80166B28 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 0C756C 80166B2C 3C018019 */  lui   $at, %hi(D_8019719C) # $at, 0x8019
/* 0C7570 80166B30 46062032 */  c.eq.s $f4, $f6
/* 0C7574 80166B34 00000000 */  nop   
/* 0C7578 80166B38 45000005 */  bc1f  .L80166B50_ovl3
/* 0C757C 80166B3C 00000000 */   nop   
/* 0C7580 80166B40 C4E80000 */  lwc1  $f8, ($a3)
/* 0C7584 80166B44 02445021 */  addu  $t2, $s2, $a0
/* 0C7588 80166B48 10000006 */  b     .L80166B64_ovl3
/* 0C758C 80166B4C E5480000 */   swc1  $f8, ($t2)
.L80166B50_ovl3:
/* 0C7590 80166B50 C42A719C */  lwc1  $f10, %lo(D_8019719C)($at)
/* 0C7594 80166B54 C4F00000 */  lwc1  $f16, ($a3)
/* 0C7598 80166B58 02445821 */  addu  $t3, $s2, $a0
/* 0C759C 80166B5C 46105481 */  sub.s $f18, $f10, $f16
/* 0C75A0 80166B60 E5720000 */  swc1  $f18, ($t3)
.L80166B64_ovl3:
/* 0C75A4 80166B64 8E0C0000 */  lw    $t4, ($s0)
/* 0C75A8 80166B68 24A50001 */  addiu $a1, $a1, 1
/* 0C75AC 80166B6C 8D820000 */  lw    $v0, ($t4)
/* 0C75B0 80166B70 00026880 */  sll   $t5, $v0, 2
/* 0C75B4 80166B74 010D7021 */  addu  $t6, $t0, $t5
/* 0C75B8 80166B78 8DCF0000 */  lw    $t7, ($t6)
/* 0C75BC 80166B7C 00AF082A */  slt   $at, $a1, $t7
/* 0C75C0 80166B80 5420FFC9 */  bnezl $at, .L80166AA8_ovl3
/* 0C75C4 80166B84 24040007 */   li    $a0, 7
.L80166B88_ovl3:
/* 0C75C8 80166B88 0C02C640 */  jal   func_800B1900
/* 0C75CC 80166B8C 3044FFFF */   andi  $a0, $v0, 0xffff
.L80166B90_ovl3:
/* 0C75D0 80166B90 8FBF0034 */  lw    $ra, 0x34($sp)
.L80166B94_ovl3:
/* 0C75D4 80166B94 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 0C75D8 80166B98 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C75DC 80166B9C 8FB10024 */  lw    $s1, 0x24($sp)
/* 0C75E0 80166BA0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0C75E4 80166BA4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0C75E8 80166BA8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0C75EC 80166BAC 03E00008 */  jr    $ra
/* 0C75F0 80166BB0 27BD0060 */   addiu $sp, $sp, 0x60

.type func_80166768_ovl3, @function
.size func_80166768_ovl3, . - func_80166768_ovl3

glabel func_80166BB4_ovl3
/* 0C75F4 80166BB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C75F8 80166BB8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C75FC 80166BBC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0C7600 80166BC0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0C7604 80166BC4 8E220000 */  lw    $v0, ($s1)
/* 0C7608 80166BC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C760C 80166BCC AFB00014 */  sw    $s0, 0x14($sp)
/* 0C7610 80166BD0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0C7614 80166BD4 8C4E0000 */  lw    $t6, ($v0)
/* 0C7618 80166BD8 3C018019 */  lui   $at, %hi(D_801971A0) # $at, 0x8019
/* 0C761C 80166BDC C42071A0 */  lwc1  $f0, %lo(D_801971A0)($at)
/* 0C7620 80166BE0 3C01800F */  lui   $at, 0x800f
/* 0C7624 80166BE4 000E7880 */  sll   $t7, $t6, 2
/* 0C7628 80166BE8 002F0821 */  addu  $at, $at, $t7
/* 0C762C 80166BEC AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0C7630 80166BF0 8C590000 */  lw    $t9, ($v0)
/* 0C7634 80166BF4 3C01800E */  lui   $at, 0x800e
/* 0C7638 80166BF8 3C188016 */  lui   $t8, %hi(D_80166E2C) # $t8, 0x8016
/* 0C763C 80166BFC 00194080 */  sll   $t0, $t9, 2
/* 0C7640 80166C00 00280821 */  addu  $at, $at, $t0
/* 0C7644 80166C04 27186E2C */  addiu $t8, %lo(D_80166E2C) # addiu $t8, $t8, 0x6e2c
/* 0C7648 80166C08 AC38F150 */  sw    $t8, -0xeb0($at)
/* 0C764C 80166C0C 8C490000 */  lw    $t1, ($v0)
/* 0C7650 80166C10 3C01800E */  lui   $at, 0x800e
/* 0C7654 80166C14 3C0F800F */  lui   $t7, 0x800f
/* 0C7658 80166C18 00095080 */  sll   $t2, $t1, 2
/* 0C765C 80166C1C 002A0821 */  addu  $at, $at, $t2
/* 0C7660 80166C20 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C7664 80166C24 8C4B0000 */  lw    $t3, ($v0)
/* 0C7668 80166C28 3C01800E */  lui   $at, 0x800e
/* 0C766C 80166C2C 3C040002 */  lui   $a0, (0x00020053 >> 16) # lui $a0, 2
/* 0C7670 80166C30 000B6080 */  sll   $t4, $t3, 2
/* 0C7674 80166C34 002C0821 */  addu  $at, $at, $t4
/* 0C7678 80166C38 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C767C 80166C3C 8C4D0000 */  lw    $t5, ($v0)
/* 0C7680 80166C40 3C01800E */  lui   $at, 0x800e
/* 0C7684 80166C44 24080008 */  li    $t0, 8
/* 0C7688 80166C48 000D7080 */  sll   $t6, $t5, 2
/* 0C768C 80166C4C 002E0821 */  addu  $at, $at, $t6
/* 0C7690 80166C50 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C7694 80166C54 8C430000 */  lw    $v1, ($v0)
/* 0C7698 80166C58 3C01800E */  lui   $at, 0x800e
/* 0C769C 80166C5C 34840053 */  ori   $a0, (0x00020053 & 0xFFFF) # ori $a0, $a0, 0x53
/* 0C76A0 80166C60 00031880 */  sll   $v1, $v1, 2
/* 0C76A4 80166C64 01E37821 */  addu  $t7, $t7, $v1
/* 0C76A8 80166C68 8DEFC2E0 */  lw    $t7, -0x3d20($t7)
/* 0C76AC 80166C6C 00230821 */  addu  $at, $at, $v1
/* 0C76B0 80166C70 24050022 */  li    $a1, 34
/* 0C76B4 80166C74 15E00064 */  bnez  $t7, .L80166E08_ovl3
/* 0C76B8 80166C78 24060010 */   li    $a2, 16
/* 0C76BC 80166C7C 3C01800E */  lui   $at, 0x800e
/* 0C76C0 80166C80 00230821 */  addu  $at, $at, $v1
/* 0C76C4 80166C84 24190001 */  li    $t9, 1
/* 0C76C8 80166C88 AC390650 */  sw    $t9, 0x650($at)
/* 0C76CC 80166C8C 8C580000 */  lw    $t8, ($v0)
/* 0C76D0 80166C90 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 0C76D4 80166C94 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 0C76D8 80166C98 00184080 */  sll   $t0, $t8, 2
/* 0C76DC 80166C9C 02084821 */  addu  $t1, $s0, $t0
/* 0C76E0 80166CA0 8D2A0000 */  lw    $t2, ($t1)
/* 0C76E4 80166CA4 3C01800E */  lui   $at, 0x800e
/* 0C76E8 80166CA8 000A5880 */  sll   $t3, $t2, 2
/* 0C76EC 80166CAC 002B0821 */  addu  $at, $at, $t3
/* 0C76F0 80166CB0 0C02BB30 */  jal   func_800AECC0
/* 0C76F4 80166CB4 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C76F8 80166CB8 8E2C0000 */  lw    $t4, ($s1)
/* 0C76FC 80166CBC 3C01800E */  lui   $at, 0x800e
/* 0C7700 80166CC0 8D8D0000 */  lw    $t5, ($t4)
/* 0C7704 80166CC4 000D7080 */  sll   $t6, $t5, 2
/* 0C7708 80166CC8 020E7821 */  addu  $t7, $s0, $t6
/* 0C770C 80166CCC 8DF90000 */  lw    $t9, ($t7)
/* 0C7710 80166CD0 0019C080 */  sll   $t8, $t9, 2
/* 0C7714 80166CD4 00380821 */  addu  $at, $at, $t8
/* 0C7718 80166CD8 0C02BB48 */  jal   func_800AED20
/* 0C771C 80166CDC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7720 80166CE0 8E290000 */  lw    $t1, ($s1)
/* 0C7724 80166CE4 3C01800E */  lui   $at, 0x800e
/* 0C7728 80166CE8 24080002 */  li    $t0, 2
/* 0C772C 80166CEC 8D2A0000 */  lw    $t2, ($t1)
/* 0C7730 80166CF0 3C040002 */  lui   $a0, (0x00020052 >> 16) # lui $a0, 2
/* 0C7734 80166CF4 34840052 */  ori   $a0, (0x00020052 & 0xFFFF) # ori $a0, $a0, 0x52
/* 0C7738 80166CF8 000A5880 */  sll   $t3, $t2, 2
/* 0C773C 80166CFC 002B0821 */  addu  $at, $at, $t3
/* 0C7740 80166D00 AC280F10 */  sw    $t0, 0xf10($at)
/* 0C7744 80166D04 24050022 */  li    $a1, 34
/* 0C7748 80166D08 0C02A619 */  jal   func_800A9864
/* 0C774C 80166D0C 24060010 */   li    $a2, 16
/* 0C7750 80166D10 3C040002 */  lui   $a0, (0x000202B9 >> 16) # lui $a0, 2
/* 0C7754 80166D14 0C02A855 */  jal   func_800AA154
/* 0C7758 80166D18 348402B9 */   ori   $a0, (0x000202B9 & 0xFFFF) # ori $a0, $a0, 0x2b9
/* 0C775C 80166D1C 8E2C0000 */  lw    $t4, ($s1)
/* 0C7760 80166D20 3C09800E */  lui   $t1, 0x800e
/* 0C7764 80166D24 24040001 */  li    $a0, 1
/* 0C7768 80166D28 8D8D0000 */  lw    $t5, ($t4)
/* 0C776C 80166D2C 24050001 */  li    $a1, 1
/* 0C7770 80166D30 24060024 */  li    $a2, 36
/* 0C7774 80166D34 000D7080 */  sll   $t6, $t5, 2
/* 0C7778 80166D38 020E7821 */  addu  $t7, $s0, $t6
/* 0C777C 80166D3C 8DF90000 */  lw    $t9, ($t7)
/* 0C7780 80166D40 0019C080 */  sll   $t8, $t9, 2
/* 0C7784 80166D44 01384821 */  addu  $t1, $t1, $t8
/* 0C7788 80166D48 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 0C778C 80166D4C 0C02A040 */  jal   func_800A8100
/* 0C7790 80166D50 8D270008 */   lw    $a3, 8($t1)
/* 0C7794 80166D54 8E2A0000 */  lw    $t2, ($s1)
/* 0C7798 80166D58 3C01800F */  lui   $at, 0x800f
/* 0C779C 80166D5C 3C040002 */  lui   $a0, (0x000202BA >> 16) # lui $a0, 2
/* 0C77A0 80166D60 8D480000 */  lw    $t0, ($t2)
/* 0C77A4 80166D64 348402BA */  ori   $a0, (0x000202BA & 0xFFFF) # ori $a0, $a0, 0x2ba
/* 0C77A8 80166D68 00085880 */  sll   $t3, $t0, 2
/* 0C77AC 80166D6C 002B0821 */  addu  $at, $at, $t3
/* 0C77B0 80166D70 0C02A806 */  jal   func_800AA018
/* 0C77B4 80166D74 AC22A520 */   sw    $v0, -0x5ae0($at)
/* 0C77B8 80166D78 3C108013 */  lui   $s0, %hi(gKirbyState) # $s0, 0x8013
/* 0C77BC 80166D7C 2610E7C0 */  addiu $s0, %lo(gKirbyState) # addiu $s0, $s0, -0x1840
/* 0C77C0 80166D80 8E0C0044 */  lw    $t4, 0x44($s0)
/* 0C77C4 80166D84 55800007 */  bnezl $t4, .L80166DA4_ovl3
/* 0C77C8 80166D88 8E2E0000 */   lw    $t6, ($s1)
.L80166D8C_ovl3:
/* 0C77CC 80166D8C 0C002DAF */  jal   finish_current_thread
/* 0C77D0 80166D90 24040001 */   li    $a0, 1
/* 0C77D4 80166D94 8E0D0044 */  lw    $t5, 0x44($s0)
/* 0C77D8 80166D98 11A0FFFC */  beqz  $t5, .L80166D8C_ovl3
/* 0C77DC 80166D9C 00000000 */   nop   
/* 0C77E0 80166DA0 8E2E0000 */  lw    $t6, ($s1)
.L80166DA4_ovl3:
/* 0C77E4 80166DA4 3C04800F */  lui   $a0, 0x800f
/* 0C77E8 80166DA8 8DCF0000 */  lw    $t7, ($t6)
/* 0C77EC 80166DAC 000FC880 */  sll   $t9, $t7, 2
/* 0C77F0 80166DB0 00992021 */  addu  $a0, $a0, $t9
/* 0C77F4 80166DB4 0C0288B5 */  jal   func_800A22D4
/* 0C77F8 80166DB8 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C77FC 80166DBC 8E220000 */  lw    $v0, ($s1)
/* 0C7800 80166DC0 3C01800F */  lui   $at, 0x800f
/* 0C7804 80166DC4 3C040002 */  lui   $a0, (0x000202BB >> 16) # lui $a0, 2
/* 0C7808 80166DC8 8C580000 */  lw    $t8, ($v0)
/* 0C780C 80166DCC 00184880 */  sll   $t1, $t8, 2
/* 0C7810 80166DD0 00290821 */  addu  $at, $at, $t1
/* 0C7814 80166DD4 AC20A520 */  sw    $zero, -0x5ae0($at)
/* 0C7818 80166DD8 8E0A0044 */  lw    $t2, 0x44($s0)
/* 0C781C 80166DDC 24010005 */  li    $at, 5
/* 0C7820 80166DE0 15410005 */  bne   $t2, $at, .L80166DF8_ovl3
/* 0C7824 80166DE4 00000000 */   nop   
/* 0C7828 80166DE8 0C02A855 */  jal   func_800AA154
/* 0C782C 80166DEC 348402BB */   ori   $a0, (0x000202BB & 0xFFFF) # ori $a0, $a0, 0x2bb
/* 0C7830 80166DF0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C7834 80166DF4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
.L80166DF8_ovl3:
/* 0C7838 80166DF8 0C02C640 */  jal   func_800B1900
/* 0C783C 80166DFC 94440002 */   lhu   $a0, 2($v0)
/* 0C7840 80166E00 10000006 */  b     .L80166E1C_ovl3
/* 0C7844 80166E04 8FBF001C */   lw    $ra, 0x1c($sp)
.L80166E08_ovl3:
/* 0C7848 80166E08 0C02A619 */  jal   func_800A9864
/* 0C784C 80166E0C AC280F10 */   sw    $t0, 0xf10($at)
/* 0C7850 80166E10 0C02BE85 */  jal   func_800AFA14
/* 0C7854 80166E14 00000000 */   nop   
/* 0C7858 80166E18 8FBF001C */  lw    $ra, 0x1c($sp)
.L80166E1C_ovl3:
/* 0C785C 80166E1C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C7860 80166E20 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C7864 80166E24 03E00008 */  jr    $ra
/* 0C7868 80166E28 27BD0020 */   addiu $sp, $sp, 0x20

.type func_80166BB4_ovl3, @function
.size func_80166BB4_ovl3, . - func_80166BB4_ovl3

glabel func_80166E2C_ovl3
/* 0C786C 80166E2C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C7870 80166E30 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C7874 80166E34 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C7878 80166E38 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C787C 80166E3C AFA40040 */  sw    $a0, 0x40($sp)
/* 0C7880 80166E40 8DC30000 */  lw    $v1, ($t6)
/* 0C7884 80166E44 3C06800E */  lui   $a2, 0x800e
/* 0C7888 80166E48 3C19800E */  lui   $t9, 0x800e
/* 0C788C 80166E4C 00031880 */  sll   $v1, $v1, 2
/* 0C7890 80166E50 00C33021 */  addu  $a2, $a2, $v1
/* 0C7894 80166E54 8CC60D50 */  lw    $a2, 0xd50($a2)
/* 0C7898 80166E58 0323C821 */  addu  $t9, $t9, $v1
/* 0C789C 80166E5C 3C18800E */  lui   $t8, 0x800e
/* 0C78A0 80166E60 00067880 */  sll   $t7, $a2, 2
/* 0C78A4 80166E64 8F390F10 */  lw    $t9, 0xf10($t9)
/* 0C78A8 80166E68 030FC021 */  addu  $t8, $t8, $t7
/* 0C78AC 80166E6C 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 0C78B0 80166E70 00195080 */  sll   $t2, $t9, 2
/* 0C78B4 80166E74 27A40034 */  addiu $a0, $sp, 0x34
/* 0C78B8 80166E78 030A5821 */  addu  $t3, $t8, $t2
/* 0C78BC 80166E7C 0C02C8D0 */  jal   func_800B2340
/* 0C78C0 80166E80 8D650000 */   lw    $a1, ($t3)
/* 0C78C4 80166E84 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C78C8 80166E88 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C78CC 80166E8C C7A40034 */  lwc1  $f4, 0x34($sp)
/* 0C78D0 80166E90 3C01800E */  lui   $at, 0x800e
/* 0C78D4 80166E94 8C4C0000 */  lw    $t4, ($v0)
/* 0C78D8 80166E98 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 0C78DC 80166E9C C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 0C78E0 80166EA0 000C6880 */  sll   $t5, $t4, 2
/* 0C78E4 80166EA4 002D0821 */  addu  $at, $at, $t5
/* 0C78E8 80166EA8 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0C78EC 80166EAC 8C4E0000 */  lw    $t6, ($v0)
/* 0C78F0 80166EB0 3C01800E */  lui   $at, 0x800e
/* 0C78F4 80166EB4 3C06800E */  lui   $a2, 0x800e
/* 0C78F8 80166EB8 000E7880 */  sll   $t7, $t6, 2
/* 0C78FC 80166EBC 002F0821 */  addu  $at, $at, $t7
/* 0C7900 80166EC0 E4262790 */  swc1  $f6, 0x2790($at)
/* 0C7904 80166EC4 8C590000 */  lw    $t9, ($v0)
/* 0C7908 80166EC8 3C01800E */  lui   $at, 0x800e
/* 0C790C 80166ECC 3C0C800E */  lui   $t4, 0x800e
/* 0C7910 80166ED0 0019C080 */  sll   $t8, $t9, 2
/* 0C7914 80166ED4 00380821 */  addu  $at, $at, $t8
/* 0C7918 80166ED8 E4282950 */  swc1  $f8, 0x2950($at)
/* 0C791C 80166EDC 8C430000 */  lw    $v1, ($v0)
/* 0C7920 80166EE0 3C0B800E */  lui   $t3, 0x800e
/* 0C7924 80166EE4 27A40028 */  addiu $a0, $sp, 0x28
/* 0C7928 80166EE8 00031880 */  sll   $v1, $v1, 2
/* 0C792C 80166EEC 00C33021 */  addu  $a2, $a2, $v1
/* 0C7930 80166EF0 8CC60D50 */  lw    $a2, 0xd50($a2)
/* 0C7934 80166EF4 01836021 */  addu  $t4, $t4, $v1
/* 0C7938 80166EF8 8D8C0F10 */  lw    $t4, 0xf10($t4)
/* 0C793C 80166EFC 00065080 */  sll   $t2, $a2, 2
/* 0C7940 80166F00 016A5821 */  addu  $t3, $t3, $t2
/* 0C7944 80166F04 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 0C7948 80166F08 000C6880 */  sll   $t5, $t4, 2
/* 0C794C 80166F0C 016D7021 */  addu  $t6, $t3, $t5
/* 0C7950 80166F10 0C02C9B6 */  jal   func_800B26D8
/* 0C7954 80166F14 8DC50000 */   lw    $a1, ($t6)
/* 0C7958 80166F18 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C795C 80166F1C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C7960 80166F20 C7AA0028 */  lwc1  $f10, 0x28($sp)
/* 0C7964 80166F24 3C01800E */  lui   $at, 0x800e
/* 0C7968 80166F28 8C4F0000 */  lw    $t7, ($v0)
/* 0C796C 80166F2C C7B0002C */  lwc1  $f16, 0x2c($sp)
/* 0C7970 80166F30 C7B20030 */  lwc1  $f18, 0x30($sp)
/* 0C7974 80166F34 000FC880 */  sll   $t9, $t7, 2
/* 0C7978 80166F38 00390821 */  addu  $at, $at, $t9
/* 0C797C 80166F3C E42A4010 */  swc1  $f10, 0x4010($at)
/* 0C7980 80166F40 8C580000 */  lw    $t8, ($v0)
/* 0C7984 80166F44 3C01800E */  lui   $at, 0x800e
/* 0C7988 80166F48 3C04800F */  lui   $a0, 0x800f
/* 0C798C 80166F4C 00185080 */  sll   $t2, $t8, 2
/* 0C7990 80166F50 002A0821 */  addu  $at, $at, $t2
/* 0C7994 80166F54 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 0C7998 80166F58 8C4C0000 */  lw    $t4, ($v0)
/* 0C799C 80166F5C 3C01800E */  lui   $at, 0x800e
/* 0C79A0 80166F60 000C5880 */  sll   $t3, $t4, 2
/* 0C79A4 80166F64 002B0821 */  addu  $at, $at, $t3
/* 0C79A8 80166F68 E4324390 */  swc1  $f18, 0x4390($at)
/* 0C79AC 80166F6C 8C480000 */  lw    $t0, ($v0)
/* 0C79B0 80166F70 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0C79B4 80166F74 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0C79B8 80166F78 00081880 */  sll   $v1, $t0, 2
/* 0C79BC 80166F7C 00832021 */  addu  $a0, $a0, $v1
/* 0C79C0 80166F80 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C79C4 80166F84 24010005 */  li    $at, 5
/* 0C79C8 80166F88 50800006 */  beql  $a0, $zero, .L80166FA4_ovl3
/* 0C79CC 80166F8C 8C4D0044 */   lw    $t5, 0x44($v0)
/* 0C79D0 80166F90 10810048 */  beq   $a0, $at, .L801670B4_ovl3
/* 0C79D4 80166F94 3C028013 */   lui   $v0, 0x8013
/* 0C79D8 80166F98 10000058 */  b     .L801670FC_ovl3
/* 0C79DC 80166F9C 3C028013 */   lui   $v0, %hi(D_80130005) # $v0, 0x8013
/* 0C79E0 80166FA0 8C4D0044 */  lw    $t5, %lo(D_80130044)($v0)
.L80166FA4_ovl3:
/* 0C79E4 80166FA4 55A00066 */  bnezl $t5, .L80167140_ovl3
/* 0C79E8 80166FA8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C79EC 80166FAC 904E0005 */  lbu   $t6, %lo(D_80130005)($v0)
/* 0C79F0 80166FB0 2401001A */  li    $at, 26
/* 0C79F4 80166FB4 3C04800F */  lui   $a0, 0x800f
/* 0C79F8 80166FB8 15C10032 */  bne   $t6, $at, .L80167084_ovl3
/* 0C79FC 80166FBC 00832021 */   addu  $a0, $a0, $v1
/* 0C7A00 80166FC0 3C0F800F */  lui   $t7, 0x800f
/* 0C7A04 80166FC4 01E37821 */  addu  $t7, $t7, $v1
/* 0C7A08 80166FC8 8DEFA520 */  lw    $t7, -0x5ae0($t7)
/* 0C7A0C 80166FCC 00085140 */  sll   $t2, $t0, 5
/* 0C7A10 80166FD0 3C018019 */  lui   $at, 0x8019
/* 0C7A14 80166FD4 11E00029 */  beqz  $t7, .L8016707C_ovl3
/* 0C7A18 80166FD8 002A0821 */   addu  $at, $at, $t2
/* 0C7A1C 80166FDC 3C048019 */  lui   $a0, %hi(D_801919D8) # $a0, 0x8019
/* 0C7A20 80166FE0 248419D8 */  addiu $a0, %lo(D_801919D8) # addiu $a0, $a0, 0x19d8
/* 0C7A24 80166FE4 0C044681 */  jal   func_80111A04
/* 0C7A28 80166FE8 01002825 */   move  $a1, $t0
/* 0C7A2C 80166FEC 0C044713 */  jal   func_80111C4C
/* 0C7A30 80166FF0 00402025 */   move  $a0, $v0
/* 0C7A34 80166FF4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C7A38 80166FF8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C7A3C 80166FFC 3C19800E */  lui   $t9, 0x800e
/* 0C7A40 80167000 3C09800E */  lui   $t1, %hi(gEntitiesAngleYArray) # $t1, 0x800e
/* 0C7A44 80167004 8C430000 */  lw    $v1, ($v0)
/* 0C7A48 80167008 252941D0 */  addiu $t1, %lo(gEntitiesAngleYArray) # addiu $t1, $t1, 0x41d0
/* 0C7A4C 8016700C 3C0E801A */  lui   $t6, %hi(D_80198540) # $t6, 0x801a
/* 0C7A50 80167010 00031880 */  sll   $v1, $v1, 2
/* 0C7A54 80167014 0323C821 */  addu  $t9, $t9, $v1
/* 0C7A58 80167018 8F390D50 */  lw    $t9, 0xd50($t9)
/* 0C7A5C 8016701C 01236021 */  addu  $t4, $t1, $v1
/* 0C7A60 80167020 25CE8540 */  addiu $t6, %lo(D_80198540) # addiu $t6, $t6, -0x7ac0
/* 0C7A64 80167024 0019C080 */  sll   $t8, $t9, 2
/* 0C7A68 80167028 01385021 */  addu  $t2, $t1, $t8
/* 0C7A6C 8016702C C5440000 */  lwc1  $f4, ($t2)
/* 0C7A70 80167030 3C058019 */  lui   $a1, %hi(D_80195164) # $a1, 0x8019
/* 0C7A74 80167034 24A55164 */  addiu $a1, %lo(D_80195164) # addiu $a1, $a1, 0x5164
/* 0C7A78 80167038 E5840000 */  swc1  $f4, ($t4)
/* 0C7A7C 8016703C 8C480000 */  lw    $t0, ($v0)
/* 0C7A80 80167040 00003025 */  move  $a2, $zero
/* 0C7A84 80167044 00085940 */  sll   $t3, $t0, 5
/* 0C7A88 80167048 256DF880 */  addiu $t5, $t3, -0x780
/* 0C7A8C 8016704C 01AE2021 */  addu  $a0, $t5, $t6
/* 0C7A90 80167050 0C055754 */  jal   func_80155D50_ovl3
/* 0C7A94 80167054 01003825 */   move  $a3, $t0
/* 0C7A98 80167058 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7A9C 8016705C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7AA0 80167060 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 0C7AA4 80167064 3C01800E */  lui   $at, 0x800e
/* 0C7AA8 80167068 8DF90000 */  lw    $t9, ($t7)
/* 0C7AAC 8016706C 0019C080 */  sll   $t8, $t9, 2
/* 0C7AB0 80167070 00380821 */  addu  $at, $at, $t8
/* 0C7AB4 80167074 10000031 */  b     .L8016713C_ovl3
/* 0C7AB8 80167078 E42641D0 */   swc1  $f6, 0x41d0($at)
.L8016707C_ovl3:
/* 0C7ABC 8016707C 1000002F */  b     .L8016713C_ovl3
/* 0C7AC0 80167080 AC207DDC */   sw    $zero, 0x7ddc($at)
.L80167084_ovl3:
/* 0C7AC4 80167084 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C7AC8 80167088 10800006 */  beqz  $a0, .L801670A4_ovl3
/* 0C7ACC 8016708C 00000000 */   nop   
/* 0C7AD0 80167090 0C0288B5 */  jal   func_800A22D4
/* 0C7AD4 80167094 00000000 */   nop   
/* 0C7AD8 80167098 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C7ADC 8016709C 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C7AE0 801670A0 8D880000 */  lw    $t0, ($t4)
.L801670A4_ovl3:
/* 0C7AE4 801670A4 0C02C640 */  jal   func_800B1900
/* 0C7AE8 801670A8 3104FFFF */   andi  $a0, $t0, 0xffff
/* 0C7AEC 801670AC 10000024 */  b     .L80167140_ovl3
/* 0C7AF0 801670B0 8FBF0014 */   lw    $ra, 0x14($sp)
.L801670B4_ovl3:
/* 0C7AF4 801670B4 2442E7C0 */  addiu $v0, $v0, -0x1840
/* 0C7AF8 801670B8 8C4B0030 */  lw    $t3, 0x30($v0)
/* 0C7AFC 801670BC 3C04800F */  lui   $a0, 0x800f
/* 0C7B00 801670C0 00832021 */  addu  $a0, $a0, $v1
/* 0C7B04 801670C4 5160001E */  beql  $t3, $zero, .L80167140_ovl3
/* 0C7B08 801670C8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C7B0C 801670CC 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C7B10 801670D0 10800006 */  beqz  $a0, .L801670EC_ovl3
/* 0C7B14 801670D4 00000000 */   nop   
/* 0C7B18 801670D8 0C0288B5 */  jal   func_800A22D4
/* 0C7B1C 801670DC 00000000 */   nop   
/* 0C7B20 801670E0 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C7B24 801670E4 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C7B28 801670E8 8DA80000 */  lw    $t0, ($t5)
.L801670EC_ovl3:
/* 0C7B2C 801670EC 0C02C640 */  jal   func_800B1900
/* 0C7B30 801670F0 3104FFFF */   andi  $a0, $t0, 0xffff
/* 0C7B34 801670F4 10000012 */  b     .L80167140_ovl3
/* 0C7B38 801670F8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801670FC_ovl3:
/* 0C7B3C 801670FC 2442E7C0 */  addiu $v0, $v0, -0x1840
/* 0C7B40 80167100 8C4E00A0 */  lw    $t6, 0xa0($v0)
/* 0C7B44 80167104 3C04800F */  lui   $a0, 0x800f
/* 0C7B48 80167108 00832021 */  addu  $a0, $a0, $v1
/* 0C7B4C 8016710C 55C0000C */  bnezl $t6, .L80167140_ovl3
/* 0C7B50 80167110 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C7B54 80167114 8C84A520 */  lw    $a0, -0x5ae0($a0)
/* 0C7B58 80167118 10800006 */  beqz  $a0, .L80167134_ovl3
/* 0C7B5C 8016711C 00000000 */   nop   
/* 0C7B60 80167120 0C0288B5 */  jal   func_800A22D4
/* 0C7B64 80167124 00000000 */   nop   
/* 0C7B68 80167128 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7B6C 8016712C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7B70 80167130 8DE80000 */  lw    $t0, ($t7)
.L80167134_ovl3:
/* 0C7B74 80167134 0C02C640 */  jal   func_800B1900
/* 0C7B78 80167138 3104FFFF */   andi  $a0, $t0, 0xffff
.L8016713C_ovl3:
/* 0C7B7C 8016713C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80167140_ovl3:
/* 0C7B80 80167140 27BD0040 */  addiu $sp, $sp, 0x40
/* 0C7B84 80167144 03E00008 */  jr    $ra
/* 0C7B88 80167148 00000000 */   nop   

.type func_80166E2C_ovl3, @function
.size func_80166E2C_ovl3, . - func_80166E2C_ovl3

glabel func_8016714C_ovl3
/* 0C7B8C 8016714C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C7B90 80167150 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C7B94 80167154 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C7B98 80167158 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C7B9C 8016715C AFA40018 */  sw    $a0, 0x18($sp)
/* 0C7BA0 80167160 8C4F0000 */  lw    $t7, ($v0)
/* 0C7BA4 80167164 3C018019 */  lui   $at, %hi(D_801971A4) # $at, 0x8019
/* 0C7BA8 80167168 C42071A4 */  lwc1  $f0, %lo(D_801971A4)($at)
/* 0C7BAC 8016716C 3C01800E */  lui   $at, 0x800e
/* 0C7BB0 80167170 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 0C7BB4 80167174 000FC080 */  sll   $t8, $t7, 2
/* 0C7BB8 80167178 00380821 */  addu  $at, $at, $t8
/* 0C7BBC 8016717C 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 0C7BC0 80167180 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C7BC4 80167184 8C480000 */  lw    $t0, ($v0)
/* 0C7BC8 80167188 3C01800E */  lui   $at, 0x800e
/* 0C7BCC 8016718C 24190002 */  li    $t9, 2
/* 0C7BD0 80167190 00084880 */  sll   $t1, $t0, 2
/* 0C7BD4 80167194 00290821 */  addu  $at, $at, $t1
/* 0C7BD8 80167198 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C7BDC 8016719C 8C4B0000 */  lw    $t3, ($v0)
/* 0C7BE0 801671A0 3C01800E */  lui   $at, 0x800e
/* 0C7BE4 801671A4 3C0A8016 */  lui   $t2, %hi(D_80167290) # $t2, 0x8016
/* 0C7BE8 801671A8 000B6080 */  sll   $t4, $t3, 2
/* 0C7BEC 801671AC 002C0821 */  addu  $at, $at, $t4
/* 0C7BF0 801671B0 254A7290 */  addiu $t2, %lo(D_80167290) # addiu $t2, $t2, 0x7290
/* 0C7BF4 801671B4 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 0C7BF8 801671B8 8C4D0000 */  lw    $t5, ($v0)
/* 0C7BFC 801671BC 3C01800E */  lui   $at, 0x800e
/* 0C7C00 801671C0 3C0A800E */  lui   $t2, 0x800e
/* 0C7C04 801671C4 000D7880 */  sll   $t7, $t5, 2
/* 0C7C08 801671C8 002F0821 */  addu  $at, $at, $t7
/* 0C7C0C 801671CC E4204550 */  swc1  $f0, 0x4550($at)
/* 0C7C10 801671D0 8C4E0000 */  lw    $t6, ($v0)
/* 0C7C14 801671D4 3C01800E */  lui   $at, 0x800e
/* 0C7C18 801671D8 000EC080 */  sll   $t8, $t6, 2
/* 0C7C1C 801671DC 00380821 */  addu  $at, $at, $t8
/* 0C7C20 801671E0 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C7C24 801671E4 8C480000 */  lw    $t0, ($v0)
/* 0C7C28 801671E8 3C01800E */  lui   $at, 0x800e
/* 0C7C2C 801671EC 0008C880 */  sll   $t9, $t0, 2
/* 0C7C30 801671F0 00390821 */  addu  $at, $at, $t9
/* 0C7C34 801671F4 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C7C38 801671F8 8C490000 */  lw    $t1, ($v0)
/* 0C7C3C 801671FC 3C01800E */  lui   $at, 0x800e
/* 0C7C40 80167200 00095880 */  sll   $t3, $t1, 2
/* 0C7C44 80167204 014B5021 */  addu  $t2, $t2, $t3
/* 0C7C48 80167208 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 0C7C4C 8016720C 000A6080 */  sll   $t4, $t2, 2
/* 0C7C50 80167210 002C0821 */  addu  $at, $at, $t4
/* 0C7C54 80167214 0C02BB30 */  jal   func_800AECC0
/* 0C7C58 80167218 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7C5C 8016721C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C7C60 80167220 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C7C64 80167224 3C18800E */  lui   $t8, 0x800e
/* 0C7C68 80167228 3C01800E */  lui   $at, 0x800e
/* 0C7C6C 8016722C 8DAF0000 */  lw    $t7, ($t5)
/* 0C7C70 80167230 000F7080 */  sll   $t6, $t7, 2
/* 0C7C74 80167234 030EC021 */  addu  $t8, $t8, $t6
/* 0C7C78 80167238 8F180D50 */  lw    $t8, 0xd50($t8)
/* 0C7C7C 8016723C 00184080 */  sll   $t0, $t8, 2
/* 0C7C80 80167240 00280821 */  addu  $at, $at, $t0
/* 0C7C84 80167244 0C02BB48 */  jal   func_800AED20
/* 0C7C88 80167248 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7C8C 8016724C 3C040002 */  lui   $a0, (0x00020054 >> 16) # lui $a0, 2
/* 0C7C90 80167250 34840054 */  ori   $a0, (0x00020054 & 0xFFFF) # ori $a0, $a0, 0x54
/* 0C7C94 80167254 24050022 */  li    $a1, 34
/* 0C7C98 80167258 0C02A619 */  jal   func_800A9864
/* 0C7C9C 8016725C 24060010 */   li    $a2, 16
/* 0C7CA0 80167260 3C040002 */  lui   $a0, (0x000202BF >> 16) # lui $a0, 2
/* 0C7CA4 80167264 3C050002 */  lui   $a1, (0x000202C0 >> 16) # lui $a1, 2
/* 0C7CA8 80167268 34A502C0 */  ori   $a1, (0x000202C0 & 0xFFFF) # ori $a1, $a1, 0x2c0
/* 0C7CAC 8016726C 348402BF */  ori   $a0, (0x000202BF & 0xFFFF) # ori $a0, $a0, 0x2bf
/* 0C7CB0 80167270 0C048C3A */  jal   func_801230E8
/* 0C7CB4 80167274 24060001 */   li    $a2, 1
/* 0C7CB8 80167278 0C02BE85 */  jal   func_800AFA14
/* 0C7CBC 8016727C 00000000 */   nop   
/* 0C7CC0 80167280 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C7CC4 80167284 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C7CC8 80167288 03E00008 */  jr    $ra
/* 0C7CCC 8016728C 00000000 */   nop   

.type func_8016714C_ovl3, @function
.size func_8016714C_ovl3, . - func_8016714C_ovl3

glabel func_80167290_ovl3
/* 0C7CD0 80167290 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C7CD4 80167294 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C7CD8 80167298 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C7CDC 8016729C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C7CE0 801672A0 11C0001B */  beqz  $t6, .L80167310_ovl3
/* 0C7CE4 801672A4 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C7CE8 801672A8 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7CEC 801672AC 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7CF0 801672B0 3C08800E */  lui   $t0, 0x800e
/* 0C7CF4 801672B4 3C01800E */  lui   $at, 0x800e
/* 0C7CF8 801672B8 8DF80000 */  lw    $t8, ($t7)
/* 0C7CFC 801672BC 0018C880 */  sll   $t9, $t8, 2
/* 0C7D00 801672C0 01194021 */  addu  $t0, $t0, $t9
/* 0C7D04 801672C4 8D080D50 */  lw    $t0, 0xd50($t0)
/* 0C7D08 801672C8 00084880 */  sll   $t1, $t0, 2
/* 0C7D0C 801672CC 00290821 */  addu  $at, $at, $t1
/* 0C7D10 801672D0 0C02BB30 */  jal   func_800AECC0
/* 0C7D14 801672D4 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7D18 801672D8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C7D1C 801672DC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C7D20 801672E0 3C0D800E */  lui   $t5, 0x800e
/* 0C7D24 801672E4 3C01800E */  lui   $at, 0x800e
/* 0C7D28 801672E8 8D4B0000 */  lw    $t3, ($t2)
/* 0C7D2C 801672EC 000B6080 */  sll   $t4, $t3, 2
/* 0C7D30 801672F0 01AC6821 */  addu  $t5, $t5, $t4
/* 0C7D34 801672F4 8DAD0D50 */  lw    $t5, 0xd50($t5)
/* 0C7D38 801672F8 000D7080 */  sll   $t6, $t5, 2
/* 0C7D3C 801672FC 002E0821 */  addu  $at, $at, $t6
/* 0C7D40 80167300 0C02BB48 */  jal   func_800AED20
/* 0C7D44 80167304 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7D48 80167308 10000006 */  b     .L80167324_ovl3
/* 0C7D4C 8016730C 8FBF0014 */   lw    $ra, 0x14($sp)
.L80167310_ovl3:
/* 0C7D50 80167310 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7D54 80167314 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7D58 80167318 0C02C640 */  jal   func_800B1900
/* 0C7D5C 8016731C 95E40002 */   lhu   $a0, 2($t7)
/* 0C7D60 80167320 8FBF0014 */  lw    $ra, 0x14($sp)
.L80167324_ovl3:
/* 0C7D64 80167324 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C7D68 80167328 03E00008 */  jr    $ra
/* 0C7D6C 8016732C 00000000 */   nop   

.type func_80167290_ovl3, @function
.size func_80167290_ovl3, . - func_80167290_ovl3

glabel func_80167330_ovl3
/* 0C7D70 80167330 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C7D74 80167334 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C7D78 80167338 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C7D7C 8016733C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C7D80 80167340 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C7D84 80167344 8C4F0000 */  lw    $t7, ($v0)
/* 0C7D88 80167348 3C0E800B */  lui   $t6, %hi(D_800B4B9C) # $t6, 0x800b
/* 0C7D8C 8016734C 3C01800E */  lui   $at, 0x800e
/* 0C7D90 80167350 000FC080 */  sll   $t8, $t7, 2
/* 0C7D94 80167354 00380821 */  addu  $at, $at, $t8
/* 0C7D98 80167358 25CE4B9C */  addiu $t6, %lo(D_800B4B9C) # addiu $t6, $t6, 0x4b9c
/* 0C7D9C 8016735C AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C7DA0 80167360 8C480000 */  lw    $t0, ($v0)
/* 0C7DA4 80167364 3C01800E */  lui   $at, 0x800e
/* 0C7DA8 80167368 3C198016 */  lui   $t9, %hi(D_80167578) # $t9, 0x8016
/* 0C7DAC 8016736C 00084880 */  sll   $t1, $t0, 2
/* 0C7DB0 80167370 00290821 */  addu  $at, $at, $t1
/* 0C7DB4 80167374 27397578 */  addiu $t9, %lo(D_80167578) # addiu $t9, $t9, 0x7578
/* 0C7DB8 80167378 AC39F150 */  sw    $t9, -0xeb0($at)
/* 0C7DBC 8016737C 8C4B0000 */  lw    $t3, ($v0)
/* 0C7DC0 80167380 3C01800F */  lui   $at, 0x800f
/* 0C7DC4 80167384 27AA0028 */  addiu $t2, $sp, 0x28
/* 0C7DC8 80167388 000B6080 */  sll   $t4, $t3, 2
/* 0C7DCC 8016738C 002C0821 */  addu  $at, $at, $t4
/* 0C7DD0 80167390 AC2A9FE0 */  sw    $t2, -0x6020($at)
/* 0C7DD4 80167394 AFA00028 */  sw    $zero, 0x28($sp)
/* 0C7DD8 80167398 8C450000 */  lw    $a1, ($v0)
/* 0C7DDC 8016739C 3C04800F */  lui   $a0, 0x800f
/* 0C7DE0 801673A0 3C01800E */  lui   $at, 0x800e
/* 0C7DE4 801673A4 00051880 */  sll   $v1, $a1, 2
/* 0C7DE8 801673A8 00832021 */  addu  $a0, $a0, $v1
/* 0C7DEC 801673AC 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C7DF0 801673B0 00230821 */  addu  $at, $at, $v1
/* 0C7DF4 801673B4 240D0001 */  li    $t5, 1
/* 0C7DF8 801673B8 10800006 */  beqz  $a0, .L801673D4_ovl3
/* 0C7DFC 801673BC 00000000 */   nop   
/* 0C7E00 801673C0 24010001 */  li    $at, 1
/* 0C7E04 801673C4 10810026 */  beq   $a0, $at, .L80167460_ovl3
/* 0C7E08 801673C8 24060010 */   li    $a2, 16
/* 0C7E0C 801673CC 10000064 */  b     .L80167560_ovl3
/* 0C7E10 801673D0 00000000 */   nop   
.L801673D4_ovl3:
/* 0C7E14 801673D4 AC2D0650 */  sw    $t5, 0x650($at)
/* 0C7E18 801673D8 8C4F0000 */  lw    $t7, ($v0)
/* 0C7E1C 801673DC 3C18800E */  lui   $t8, 0x800e
/* 0C7E20 801673E0 3C01800E */  lui   $at, 0x800e
/* 0C7E24 801673E4 000F7080 */  sll   $t6, $t7, 2
/* 0C7E28 801673E8 030EC021 */  addu  $t8, $t8, $t6
/* 0C7E2C 801673EC 8F180D50 */  lw    $t8, 0xd50($t8)
/* 0C7E30 801673F0 00184080 */  sll   $t0, $t8, 2
/* 0C7E34 801673F4 00280821 */  addu  $at, $at, $t0
/* 0C7E38 801673F8 0C02BB30 */  jal   func_800AECC0
/* 0C7E3C 801673FC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7E40 80167400 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 0C7E44 80167404 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 0C7E48 80167408 3C0A800E */  lui   $t2, 0x800e
/* 0C7E4C 8016740C 3C01800E */  lui   $at, 0x800e
/* 0C7E50 80167410 8F290000 */  lw    $t1, ($t9)
/* 0C7E54 80167414 00095880 */  sll   $t3, $t1, 2
/* 0C7E58 80167418 014B5021 */  addu  $t2, $t2, $t3
/* 0C7E5C 8016741C 8D4A0D50 */  lw    $t2, 0xd50($t2)
/* 0C7E60 80167420 000A6080 */  sll   $t4, $t2, 2
/* 0C7E64 80167424 002C0821 */  addu  $at, $at, $t4
/* 0C7E68 80167428 0C02BB48 */  jal   func_800AED20
/* 0C7E6C 8016742C C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7E70 80167430 3C040002 */  lui   $a0, (0x0002005A >> 16) # lui $a0, 2
/* 0C7E74 80167434 3484005A */  ori   $a0, (0x0002005A & 0xFFFF) # ori $a0, $a0, 0x5a
/* 0C7E78 80167438 24050022 */  li    $a1, 34
/* 0C7E7C 8016743C 0C02A619 */  jal   func_800A9864
/* 0C7E80 80167440 24060010 */   li    $a2, 16
/* 0C7E84 80167444 3C040002 */  lui   $a0, (0x000202C9 >> 16) # lui $a0, 2
/* 0C7E88 80167448 0C02A855 */  jal   func_800AA154
/* 0C7E8C 8016744C 348402C9 */   ori   $a0, (0x000202C9 & 0xFFFF) # ori $a0, $a0, 0x2c9
/* 0C7E90 80167450 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C7E94 80167454 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C7E98 80167458 10000041 */  b     .L80167560_ovl3
/* 0C7E9C 8016745C 8DA50000 */   lw    $a1, ($t5)
.L80167460_ovl3:
/* 0C7EA0 80167460 3C040002 */  lui   $a0, (0x0002005B >> 16) # lui $a0, 2
/* 0C7EA4 80167464 3484005B */  ori   $a0, (0x0002005B & 0xFFFF) # ori $a0, $a0, 0x5b
/* 0C7EA8 80167468 0C02A619 */  jal   func_800A9864
/* 0C7EAC 8016746C 24050022 */   li    $a1, 34
/* 0C7EB0 80167470 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7EB4 80167474 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7EB8 80167478 3C08800E */  lui   $t0, 0x800e
/* 0C7EBC 8016747C 3C09800F */  lui   $t1, 0x800f
/* 0C7EC0 80167480 8DEE0000 */  lw    $t6, ($t7)
/* 0C7EC4 80167484 3C01800E */  lui   $at, 0x800e
/* 0C7EC8 80167488 000EC080 */  sll   $t8, $t6, 2
/* 0C7ECC 8016748C 01184021 */  addu  $t0, $t0, $t8
/* 0C7ED0 80167490 8D080D50 */  lw    $t0, 0xd50($t0)
/* 0C7ED4 80167494 0008C880 */  sll   $t9, $t0, 2
/* 0C7ED8 80167498 01394821 */  addu  $t1, $t1, $t9
/* 0C7EDC 8016749C 8D29BBE0 */  lw    $t1, -0x4420($t1)
/* 0C7EE0 801674A0 00095880 */  sll   $t3, $t1, 2
/* 0C7EE4 801674A4 002B0821 */  addu  $at, $at, $t3
/* 0C7EE8 801674A8 0C02BB30 */  jal   func_800AECC0
/* 0C7EEC 801674AC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7EF0 801674B0 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C7EF4 801674B4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C7EF8 801674B8 3C0F800E */  lui   $t7, 0x800e
/* 0C7EFC 801674BC 3C18800F */  lui   $t8, 0x800f
/* 0C7F00 801674C0 8D4C0000 */  lw    $t4, ($t2)
/* 0C7F04 801674C4 3C01800E */  lui   $at, 0x800e
/* 0C7F08 801674C8 000C6880 */  sll   $t5, $t4, 2
/* 0C7F0C 801674CC 01ED7821 */  addu  $t7, $t7, $t5
/* 0C7F10 801674D0 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0C7F14 801674D4 000F7080 */  sll   $t6, $t7, 2
/* 0C7F18 801674D8 030EC021 */  addu  $t8, $t8, $t6
/* 0C7F1C 801674DC 8F18BBE0 */  lw    $t8, -0x4420($t8)
/* 0C7F20 801674E0 00184080 */  sll   $t0, $t8, 2
/* 0C7F24 801674E4 00280821 */  addu  $at, $at, $t0
/* 0C7F28 801674E8 0C02BB48 */  jal   func_800AED20
/* 0C7F2C 801674EC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C7F30 801674F0 2404003F */  li    $a0, 63
/* 0C7F34 801674F4 27A50028 */  addiu $a1, $sp, 0x28
/* 0C7F38 801674F8 0C029DFA */  jal   func_800A77E8
/* 0C7F3C 801674FC 27A6002C */   addiu $a2, $sp, 0x2c
/* 0C7F40 80167500 3C040002 */  lui   $a0, (0x000202CB >> 16) # lui $a0, 2
/* 0C7F44 80167504 3C050002 */  lui   $a1, (0x000202CC >> 16) # lui $a1, 2
/* 0C7F48 80167508 34A502CC */  ori   $a1, (0x000202CC & 0xFFFF) # ori $a1, $a1, 0x2cc
/* 0C7F4C 8016750C 348402CB */  ori   $a0, (0x000202CB & 0xFFFF) # ori $a0, $a0, 0x2cb
/* 0C7F50 80167510 0C048C3A */  jal   func_801230E8
/* 0C7F54 80167514 24060001 */   li    $a2, 1
/* 0C7F58 80167518 27A40028 */  addiu $a0, $sp, 0x28
/* 0C7F5C 8016751C 0C029E1C */  jal   func_800A7870
/* 0C7F60 80167520 27A5002C */   addiu $a1, $sp, 0x2c
/* 0C7F64 80167524 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C7F68 80167528 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C7F6C 8016752C 3C0B800E */  lui   $t3, 0x800e
/* 0C7F70 80167530 3C0C800F */  lui   $t4, %hi(D_800EA520) # $t4, 0x800f
/* 0C7F74 80167534 8C590000 */  lw    $t9, ($v0)
/* 0C7F78 80167538 258CA520 */  addiu $t4, %lo(D_800EA520) # addiu $t4, $t4, -0x5ae0
/* 0C7F7C 8016753C 00194880 */  sll   $t1, $t9, 2
/* 0C7F80 80167540 01695821 */  addu  $t3, $t3, $t1
/* 0C7F84 80167544 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 0C7F88 80167548 000B5080 */  sll   $t2, $t3, 2
/* 0C7F8C 8016754C 014C1821 */  addu  $v1, $t2, $t4
/* 0C7F90 80167550 8C6D0000 */  lw    $t5, ($v1)
/* 0C7F94 80167554 25AF0001 */  addiu $t7, $t5, 1
/* 0C7F98 80167558 AC6F0000 */  sw    $t7, ($v1)
/* 0C7F9C 8016755C 8C450000 */  lw    $a1, ($v0)
.L80167560_ovl3:
/* 0C7FA0 80167560 0C02C640 */  jal   func_800B1900
/* 0C7FA4 80167564 30A4FFFF */   andi  $a0, $a1, 0xffff
/* 0C7FA8 80167568 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C7FAC 8016756C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C7FB0 80167570 03E00008 */  jr    $ra
/* 0C7FB4 80167574 00000000 */   nop   

.type func_80167330_ovl3, @function
.size func_80167330_ovl3, . - func_80167330_ovl3

glabel func_80167578_ovl3
/* 0C7FB8 80167578 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C7FBC 8016757C 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C7FC0 80167580 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C7FC4 80167584 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C7FC8 80167588 15C00014 */  bnez  $t6, .L801675DC_ovl3
/* 0C7FCC 8016758C AFA40018 */   sw    $a0, 0x18($sp)
/* 0C7FD0 80167590 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C7FD4 80167594 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C7FD8 80167598 3C04800F */  lui   $a0, 0x800f
/* 0C7FDC 8016759C 8DE20000 */  lw    $v0, ($t7)
/* 0C7FE0 801675A0 0002C080 */  sll   $t8, $v0, 2
/* 0C7FE4 801675A4 00982021 */  addu  $a0, $a0, $t8
/* 0C7FE8 801675A8 8C849FE0 */  lw    $a0, -0x6020($a0)
/* 0C7FEC 801675AC 8C990000 */  lw    $t9, ($a0)
/* 0C7FF0 801675B0 13200006 */  beqz  $t9, .L801675CC_ovl3
/* 0C7FF4 801675B4 00000000 */   nop   
/* 0C7FF8 801675B8 0C029E1C */  jal   func_800A7870
/* 0C7FFC 801675BC 24850004 */   addiu $a1, $a0, 4
/* 0C8000 801675C0 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0C8004 801675C4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0C8008 801675C8 8D420000 */  lw    $v0, ($t2)
.L801675CC_ovl3:
/* 0C800C 801675CC 0C02C640 */  jal   func_800B1900
/* 0C8010 801675D0 3044FFFF */   andi  $a0, $v0, 0xffff
/* 0C8014 801675D4 1000002E */  b     .L80167690_ovl3
/* 0C8018 801675D8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801675DC_ovl3:
/* 0C801C 801675DC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C8020 801675E0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C8024 801675E4 3C0B800F */  lui   $t3, 0x800f
/* 0C8028 801675E8 3C01800E */  lui   $at, 0x800e
/* 0C802C 801675EC 8C680000 */  lw    $t0, ($v1)
/* 0C8030 801675F0 00084080 */  sll   $t0, $t0, 2
/* 0C8034 801675F4 01685821 */  addu  $t3, $t3, $t0
/* 0C8038 801675F8 8D6BC2E0 */  lw    $t3, -0x3d20($t3)
/* 0C803C 801675FC 00280821 */  addu  $at, $at, $t0
/* 0C8040 80167600 55600023 */  bnezl $t3, .L80167690_ovl3
/* 0C8044 80167604 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0C8048 80167608 44802000 */  mtc1  $zero, $f4
/* 0C804C 8016760C 3C048019 */  lui   $a0, %hi(D_80192170) # $a0, 0x8019
/* 0C8050 80167610 24842170 */  addiu $a0, %lo(D_80192170) # addiu $a0, $a0, 0x2170
/* 0C8054 80167614 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C8058 80167618 0C044681 */  jal   func_80111A04
/* 0C805C 8016761C 8C650000 */   lw    $a1, ($v1)
/* 0C8060 80167620 0C044713 */  jal   func_80111C4C
/* 0C8064 80167624 00402025 */   move  $a0, $v0
/* 0C8068 80167628 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C806C 8016762C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C8070 80167630 3C0C800E */  lui   $t4, 0x800e
/* 0C8074 80167634 3C09800E */  lui   $t1, %hi(gEntitiesAngleYArray) # $t1, 0x800e
/* 0C8078 80167638 8C680000 */  lw    $t0, ($v1)
/* 0C807C 8016763C 252941D0 */  addiu $t1, %lo(gEntitiesAngleYArray) # addiu $t1, $t1, 0x41d0
/* 0C8080 80167640 3C0A801A */  lui   $t2, %hi(D_80198540) # $t2, 0x801a
/* 0C8084 80167644 00084080 */  sll   $t0, $t0, 2
/* 0C8088 80167648 01886021 */  addu  $t4, $t4, $t0
/* 0C808C 8016764C 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0C8090 80167650 01287821 */  addu  $t7, $t1, $t0
/* 0C8094 80167654 254A8540 */  addiu $t2, %lo(D_80198540) # addiu $t2, $t2, -0x7ac0
/* 0C8098 80167658 000C6880 */  sll   $t5, $t4, 2
/* 0C809C 8016765C 012D7021 */  addu  $t6, $t1, $t5
/* 0C80A0 80167660 C5C60000 */  lwc1  $f6, ($t6)
/* 0C80A4 80167664 3C058019 */  lui   $a1, %hi(D_80196154) # $a1, 0x8019
/* 0C80A8 80167668 24A56154 */  addiu $a1, %lo(D_80196154) # addiu $a1, $a1, 0x6154
/* 0C80AC 8016766C E5E60000 */  swc1  $f6, ($t7)
/* 0C80B0 80167670 8C620000 */  lw    $v0, ($v1)
/* 0C80B4 80167674 00003025 */  move  $a2, $zero
/* 0C80B8 80167678 0002C140 */  sll   $t8, $v0, 5
/* 0C80BC 8016767C 2719F880 */  addiu $t9, $t8, -0x780
/* 0C80C0 80167680 032A2021 */  addu  $a0, $t9, $t2
/* 0C80C4 80167684 0C055754 */  jal   func_80155D50_ovl3
/* 0C80C8 80167688 00403825 */   move  $a3, $v0
/* 0C80CC 8016768C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80167690_ovl3:
/* 0C80D0 80167690 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C80D4 80167694 03E00008 */  jr    $ra
/* 0C80D8 80167698 00000000 */   nop   

.type func_80167578_ovl3, @function
.size func_80167578_ovl3, . - func_80167578_ovl3

glabel func_8016769C_ovl3
/* 0C80DC 8016769C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C80E0 801676A0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C80E4 801676A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C80E8 801676A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C80EC 801676AC AFA40018 */  sw    $a0, 0x18($sp)
/* 0C80F0 801676B0 8C6F0000 */  lw    $t7, ($v1)
/* 0C80F4 801676B4 3C018019 */  lui   $at, %hi(D_801971A8) # $at, 0x8019
/* 0C80F8 801676B8 C42071A8 */  lwc1  $f0, %lo(D_801971A8)($at)
/* 0C80FC 801676BC 3C01800E */  lui   $at, 0x800e
/* 0C8100 801676C0 3C0E800B */  lui   $t6, %hi(func_800B5064) # $t6, 0x800b
/* 0C8104 801676C4 000FC080 */  sll   $t8, $t7, 2
/* 0C8108 801676C8 00380821 */  addu  $at, $at, $t8
/* 0C810C 801676CC 25CE5064 */  addiu $t6, %lo(func_800B5064) # addiu $t6, $t6, 0x5064
/* 0C8110 801676D0 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C8114 801676D4 8C680000 */  lw    $t0, ($v1)
/* 0C8118 801676D8 3C01800E */  lui   $at, 0x800e
/* 0C811C 801676DC 24190002 */  li    $t9, 2
/* 0C8120 801676E0 00084880 */  sll   $t1, $t0, 2
/* 0C8124 801676E4 00290821 */  addu  $at, $at, $t1
/* 0C8128 801676E8 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C812C 801676EC 8C6B0000 */  lw    $t3, ($v1)
/* 0C8130 801676F0 3C01800E */  lui   $at, 0x800e
/* 0C8134 801676F4 3C0A8016 */  lui   $t2, %hi(D_80167800) # $t2, 0x8016
/* 0C8138 801676F8 000B6080 */  sll   $t4, $t3, 2
/* 0C813C 801676FC 002C0821 */  addu  $at, $at, $t4
/* 0C8140 80167700 254A7800 */  addiu $t2, %lo(D_80167800) # addiu $t2, $t2, 0x7800
/* 0C8144 80167704 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 0C8148 80167708 8C6D0000 */  lw    $t5, ($v1)
/* 0C814C 8016770C 3C01800E */  lui   $at, 0x800e
/* 0C8150 80167710 3C040002 */  lui   $a0, (0x0002005C >> 16) # lui $a0, 2
/* 0C8154 80167714 000D7880 */  sll   $t7, $t5, 2
/* 0C8158 80167718 002F0821 */  addu  $at, $at, $t7
/* 0C815C 8016771C E4204550 */  swc1  $f0, 0x4550($at)
/* 0C8160 80167720 8C6E0000 */  lw    $t6, ($v1)
/* 0C8164 80167724 3C01800E */  lui   $at, 0x800e
/* 0C8168 80167728 3484005C */  ori   $a0, (0x0002005C & 0xFFFF) # ori $a0, $a0, 0x5c
/* 0C816C 8016772C 000EC080 */  sll   $t8, $t6, 2
/* 0C8170 80167730 00380821 */  addu  $at, $at, $t8
/* 0C8174 80167734 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C8178 80167738 8C680000 */  lw    $t0, ($v1)
/* 0C817C 8016773C 3C01800E */  lui   $at, 0x800e
/* 0C8180 80167740 24050022 */  li    $a1, 34
/* 0C8184 80167744 0008C880 */  sll   $t9, $t0, 2
/* 0C8188 80167748 00390821 */  addu  $at, $at, $t9
/* 0C818C 8016774C 24060010 */  li    $a2, 16
/* 0C8190 80167750 0C02A619 */  jal   func_800A9864
/* 0C8194 80167754 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C8198 80167758 24040002 */  li    $a0, 2
/* 0C819C 8016775C 24050001 */  li    $a1, 1
/* 0C81A0 80167760 0C02A08D */  jal   func_800A8234
/* 0C81A4 80167764 24060015 */   li    $a2, 21
/* 0C81A8 80167768 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0C81AC 8016776C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0C81B0 80167770 3C01800F */  lui   $at, 0x800f
/* 0C81B4 80167774 3C0D800E */  lui   $t5, 0x800e
/* 0C81B8 80167778 8C690000 */  lw    $t1, ($v1)
/* 0C81BC 8016777C 00095880 */  sll   $t3, $t1, 2
/* 0C81C0 80167780 002B0821 */  addu  $at, $at, $t3
/* 0C81C4 80167784 AC22A520 */  sw    $v0, -0x5ae0($at)
/* 0C81C8 80167788 8C6A0000 */  lw    $t2, ($v1)
/* 0C81CC 8016778C 3C01800E */  lui   $at, 0x800e
/* 0C81D0 80167790 000A6080 */  sll   $t4, $t2, 2
/* 0C81D4 80167794 01AC6821 */  addu  $t5, $t5, $t4
/* 0C81D8 80167798 8DAD0D50 */  lw    $t5, 0xd50($t5)
/* 0C81DC 8016779C 000D7880 */  sll   $t7, $t5, 2
/* 0C81E0 801677A0 002F0821 */  addu  $at, $at, $t7
/* 0C81E4 801677A4 0C02BB30 */  jal   func_800AECC0
/* 0C81E8 801677A8 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C81EC 801677AC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C81F0 801677B0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C81F4 801677B4 3C19800E */  lui   $t9, 0x800e
/* 0C81F8 801677B8 3C01800E */  lui   $at, 0x800e
/* 0C81FC 801677BC 8DD80000 */  lw    $t8, ($t6)
/* 0C8200 801677C0 00184080 */  sll   $t0, $t8, 2
/* 0C8204 801677C4 0328C821 */  addu  $t9, $t9, $t0
/* 0C8208 801677C8 8F390D50 */  lw    $t9, 0xd50($t9)
/* 0C820C 801677CC 00194880 */  sll   $t1, $t9, 2
/* 0C8210 801677D0 00290821 */  addu  $at, $at, $t1
/* 0C8214 801677D4 0C02BB48 */  jal   func_800AED20
/* 0C8218 801677D8 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C821C 801677DC 3C040002 */  lui   $a0, (0x000202CD >> 16) # lui $a0, 2
/* 0C8220 801677E0 0C02A806 */  jal   func_800AA018
/* 0C8224 801677E4 348402CD */   ori   $a0, (0x000202CD & 0xFFFF) # ori $a0, $a0, 0x2cd
/* 0C8228 801677E8 0C02BE85 */  jal   func_800AFA14
/* 0C822C 801677EC 00000000 */   nop   
/* 0C8230 801677F0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8234 801677F4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8238 801677F8 03E00008 */  jr    $ra
/* 0C823C 801677FC 00000000 */   nop   

.type func_8016769C_ovl3, @function
.size func_8016769C_ovl3, . - func_8016769C_ovl3

glabel func_80167800_ovl3
/* 0C8240 80167800 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0C8244 80167804 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0C8248 80167808 8C6E00A0 */  lw    $t6, 0xa0($v1)
/* 0C824C 8016780C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C8250 80167810 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C8254 80167814 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C8258 80167818 11C00009 */  beqz  $t6, .L80167840_ovl3
/* 0C825C 8016781C AFA40020 */   sw    $a0, 0x20($sp)
/* 0C8260 80167820 8C620044 */  lw    $v0, 0x44($v1)
/* 0C8264 80167824 24010004 */  li    $at, 4
/* 0C8268 80167828 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C826C 8016782C 10410012 */  beq   $v0, $at, .L80167878_ovl3
/* 0C8270 80167830 2610A7C4 */   addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C8274 80167834 24010005 */  li    $at, 5
/* 0C8278 80167838 50410010 */  beql  $v0, $at, .L8016787C_ovl3
/* 0C827C 8016783C 8E090000 */   lw    $t1, ($s0)
.L80167840_ovl3:
/* 0C8280 80167840 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C8284 80167844 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C8288 80167848 8E0F0000 */  lw    $t7, ($s0)
/* 0C828C 8016784C 3C04800F */  lui   $a0, 0x800f
/* 0C8290 80167850 8DF80000 */  lw    $t8, ($t7)
/* 0C8294 80167854 0018C880 */  sll   $t9, $t8, 2
/* 0C8298 80167858 00992021 */  addu  $a0, $a0, $t9
/* 0C829C 8016785C 0C0288B5 */  jal   func_800A22D4
/* 0C82A0 80167860 8C84A520 */   lw    $a0, -0x5ae0($a0)
/* 0C82A4 80167864 8E080000 */  lw    $t0, ($s0)
/* 0C82A8 80167868 0C02C640 */  jal   func_800B1900
/* 0C82AC 8016786C 95040002 */   lhu   $a0, 2($t0)
/* 0C82B0 80167870 1000003C */  b     .L80167964_ovl3
/* 0C82B4 80167874 8FBF001C */   lw    $ra, 0x1c($sp)
.L80167878_ovl3:
/* 0C82B8 80167878 8E090000 */  lw    $t1, ($s0)
.L8016787C_ovl3:
/* 0C82BC 8016787C 3C03800F */  lui   $v1, 0x800f
/* 0C82C0 80167880 3C01800E */  lui   $at, 0x800e
/* 0C82C4 80167884 8D220000 */  lw    $v0, ($t1)
/* 0C82C8 80167888 3C09800E */  lui   $t1, 0x800e
/* 0C82CC 8016788C 3C07800E */  lui   $a3, %hi(gEntitiesAngleYArray) # $a3, 0x800e
/* 0C82D0 80167890 00021080 */  sll   $v0, $v0, 2
/* 0C82D4 80167894 00621821 */  addu  $v1, $v1, $v0
/* 0C82D8 80167898 8C63A520 */  lw    $v1, -0x5ae0($v1)
/* 0C82DC 8016789C 00220821 */  addu  $at, $at, $v0
/* 0C82E0 801678A0 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0C82E4 801678A4 8C6A004C */  lw    $t2, 0x4c($v1)
/* 0C82E8 801678A8 3C01800E */  lui   $at, 0x800e
/* 0C82EC 801678AC 24E741D0 */  addiu $a3, %lo(gEntitiesAngleYArray) # addiu $a3, $a3, 0x41d0
/* 0C82F0 801678B0 E5440004 */  swc1  $f4, 4($t2)
/* 0C82F4 801678B4 8E0B0000 */  lw    $t3, ($s0)
/* 0C82F8 801678B8 8C6E004C */  lw    $t6, 0x4c($v1)
/* 0C82FC 801678BC 3C048019 */  lui   $a0, %hi(D_80191EE4) # $a0, 0x8019
/* 0C8300 801678C0 8D6C0000 */  lw    $t4, ($t3)
/* 0C8304 801678C4 24841EE4 */  addiu $a0, %lo(D_80191EE4) # addiu $a0, $a0, 0x1ee4
/* 0C8308 801678C8 000C6880 */  sll   $t5, $t4, 2
/* 0C830C 801678CC 002D0821 */  addu  $at, $at, $t5
/* 0C8310 801678D0 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0C8314 801678D4 3C01800E */  lui   $at, 0x800e
/* 0C8318 801678D8 E5C60008 */  swc1  $f6, 8($t6)
/* 0C831C 801678DC 8E0F0000 */  lw    $t7, ($s0)
/* 0C8320 801678E0 8C68004C */  lw    $t0, 0x4c($v1)
/* 0C8324 801678E4 8DF80000 */  lw    $t8, ($t7)
/* 0C8328 801678E8 0018C880 */  sll   $t9, $t8, 2
/* 0C832C 801678EC 00390821 */  addu  $at, $at, $t9
/* 0C8330 801678F0 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0C8334 801678F4 E508000C */  swc1  $f8, 0xc($t0)
/* 0C8338 801678F8 8E060000 */  lw    $a2, ($s0)
/* 0C833C 801678FC 8CC20000 */  lw    $v0, ($a2)
/* 0C8340 80167900 00021080 */  sll   $v0, $v0, 2
/* 0C8344 80167904 01224821 */  addu  $t1, $t1, $v0
/* 0C8348 80167908 8D290D50 */  lw    $t1, 0xd50($t1)
/* 0C834C 8016790C 00E26021 */  addu  $t4, $a3, $v0
/* 0C8350 80167910 00095080 */  sll   $t2, $t1, 2
/* 0C8354 80167914 00EA5821 */  addu  $t3, $a3, $t2
/* 0C8358 80167918 C56A0000 */  lwc1  $f10, ($t3)
/* 0C835C 8016791C E58A0000 */  swc1  $f10, ($t4)
/* 0C8360 80167920 0C044681 */  jal   func_80111A04
/* 0C8364 80167924 8CC50000 */   lw    $a1, ($a2)
/* 0C8368 80167928 0C044713 */  jal   func_80111C4C
/* 0C836C 8016792C 00402025 */   move  $a0, $v0
/* 0C8370 80167930 8E0D0000 */  lw    $t5, ($s0)
/* 0C8374 80167934 3C18801A */  lui   $t8, %hi(D_80198540) # $t8, 0x801a
/* 0C8378 80167938 27188540 */  addiu $t8, %lo(D_80198540) # addiu $t8, $t8, -0x7ac0
/* 0C837C 8016793C 8DA20000 */  lw    $v0, ($t5)
/* 0C8380 80167940 3C058019 */  lui   $a1, %hi(D_801962D8) # $a1, 0x8019
/* 0C8384 80167944 24A562D8 */  addiu $a1, %lo(D_801962D8) # addiu $a1, $a1, 0x62d8
/* 0C8388 80167948 00027140 */  sll   $t6, $v0, 5
/* 0C838C 8016794C 25CFF880 */  addiu $t7, $t6, -0x780
/* 0C8390 80167950 01F82021 */  addu  $a0, $t7, $t8
/* 0C8394 80167954 00003025 */  move  $a2, $zero
/* 0C8398 80167958 0C055754 */  jal   func_80155D50_ovl3
/* 0C839C 8016795C 00403825 */   move  $a3, $v0
/* 0C83A0 80167960 8FBF001C */  lw    $ra, 0x1c($sp)
.L80167964_ovl3:
/* 0C83A4 80167964 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C83A8 80167968 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C83AC 8016796C 03E00008 */  jr    $ra
/* 0C83B0 80167970 00000000 */   nop   

.type func_80167800_ovl3, @function
.size func_80167800_ovl3, . - func_80167800_ovl3

glabel func_80167974_ovl3
/* 0C83B4 80167974 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C83B8 80167978 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C83BC 8016797C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C83C0 80167980 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C83C4 80167984 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C83C8 80167988 8C4F0000 */  lw    $t7, ($v0)
/* 0C83CC 8016798C 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 0C83D0 80167990 3C01800E */  lui   $at, 0x800e
/* 0C83D4 80167994 000FC080 */  sll   $t8, $t7, 2
/* 0C83D8 80167998 00380821 */  addu  $at, $at, $t8
/* 0C83DC 8016799C 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 0C83E0 801679A0 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C83E4 801679A4 8C480000 */  lw    $t0, ($v0)
/* 0C83E8 801679A8 3C01800E */  lui   $at, 0x800e
/* 0C83EC 801679AC 2419000E */  li    $t9, 14
/* 0C83F0 801679B0 00084880 */  sll   $t1, $t0, 2
/* 0C83F4 801679B4 00290821 */  addu  $at, $at, $t1
/* 0C83F8 801679B8 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C83FC 801679BC 8C4A0000 */  lw    $t2, ($v0)
/* 0C8400 801679C0 3C0C800E */  lui   $t4, 0x800e
/* 0C8404 801679C4 3C01800E */  lui   $at, 0x800e
/* 0C8408 801679C8 000A5880 */  sll   $t3, $t2, 2
/* 0C840C 801679CC 018B6021 */  addu  $t4, $t4, $t3
/* 0C8410 801679D0 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0C8414 801679D4 000C6880 */  sll   $t5, $t4, 2
/* 0C8418 801679D8 002D0821 */  addu  $at, $at, $t5
/* 0C841C 801679DC 0C02BB30 */  jal   func_800AECC0
/* 0C8420 801679E0 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8424 801679E4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C8428 801679E8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C842C 801679EC 3C08800E */  lui   $t0, 0x800e
/* 0C8430 801679F0 3C01800E */  lui   $at, 0x800e
/* 0C8434 801679F4 8DEE0000 */  lw    $t6, ($t7)
/* 0C8438 801679F8 000EC080 */  sll   $t8, $t6, 2
/* 0C843C 801679FC 01184021 */  addu  $t0, $t0, $t8
/* 0C8440 80167A00 8D080D50 */  lw    $t0, 0xd50($t0)
/* 0C8444 80167A04 0008C880 */  sll   $t9, $t0, 2
/* 0C8448 80167A08 00390821 */  addu  $at, $at, $t9
/* 0C844C 80167A0C 0C02BB48 */  jal   func_800AED20
/* 0C8450 80167A10 C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8454 80167A14 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C8458 80167A18 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C845C 80167A1C 3C018019 */  lui   $at, %hi(D_801971AC) # $at, 0x8019
/* 0C8460 80167A20 C42071AC */  lwc1  $f0, %lo(D_801971AC)($at)
/* 0C8464 80167A24 8C4A0000 */  lw    $t2, ($v0)
/* 0C8468 80167A28 3C01800E */  lui   $at, 0x800e
/* 0C846C 80167A2C 3C098016 */  lui   $t1, %hi(D_80167B48) # $t1, 0x8016
/* 0C8470 80167A30 000A5880 */  sll   $t3, $t2, 2
/* 0C8474 80167A34 002B0821 */  addu  $at, $at, $t3
/* 0C8478 80167A38 25297B48 */  addiu $t1, %lo(D_80167B48) # addiu $t1, $t1, 0x7b48
/* 0C847C 80167A3C AC29F150 */  sw    $t1, -0xeb0($at)
/* 0C8480 80167A40 8C4C0000 */  lw    $t4, ($v0)
/* 0C8484 80167A44 3C01800E */  lui   $at, 0x800e
/* 0C8488 80167A48 3C040002 */  lui   $a0, (0x0002005E >> 16) # lui $a0, 2
/* 0C848C 80167A4C 000C6880 */  sll   $t5, $t4, 2
/* 0C8490 80167A50 002D0821 */  addu  $at, $at, $t5
/* 0C8494 80167A54 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C8498 80167A58 8C4F0000 */  lw    $t7, ($v0)
/* 0C849C 80167A5C 3C01800E */  lui   $at, 0x800e
/* 0C84A0 80167A60 24060010 */  li    $a2, 16
/* 0C84A4 80167A64 000F7080 */  sll   $t6, $t7, 2
/* 0C84A8 80167A68 002E0821 */  addu  $at, $at, $t6
/* 0C84AC 80167A6C E4204710 */  swc1  $f0, 0x4710($at)
/* 0C84B0 80167A70 8C580000 */  lw    $t8, ($v0)
/* 0C84B4 80167A74 3C01800E */  lui   $at, 0x800e
/* 0C84B8 80167A78 3484005E */  ori   $a0, (0x0002005E & 0xFFFF) # ori $a0, $a0, 0x5e
/* 0C84BC 80167A7C 00184080 */  sll   $t0, $t8, 2
/* 0C84C0 80167A80 00280821 */  addu  $at, $at, $t0
/* 0C84C4 80167A84 E42048D0 */  swc1  $f0, 0x48d0($at)
/* 0C84C8 80167A88 8C590000 */  lw    $t9, ($v0)
/* 0C84CC 80167A8C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0C84D0 80167A90 44812000 */  mtc1  $at, $f4
/* 0C84D4 80167A94 3C01800E */  lui   $at, 0x800e
/* 0C84D8 80167A98 00195080 */  sll   $t2, $t9, 2
/* 0C84DC 80167A9C 002A0821 */  addu  $at, $at, $t2
/* 0C84E0 80167AA0 C42609D0 */  lwc1  $f6, 0x9d0($at)
/* 0C84E4 80167AA4 24050022 */  li    $a1, 34
/* 0C84E8 80167AA8 46062032 */  c.eq.s $f4, $f6
/* 0C84EC 80167AAC 00000000 */  nop   
/* 0C84F0 80167AB0 4500000F */  bc1f  .L80167AF0_ovl3
/* 0C84F4 80167AB4 00000000 */   nop   
/* 0C84F8 80167AB8 3C040002 */  lui   $a0, (0x0002005D >> 16) # lui $a0, 2
/* 0C84FC 80167ABC 3484005D */  ori   $a0, (0x0002005D & 0xFFFF) # ori $a0, $a0, 0x5d
/* 0C8500 80167AC0 0C02A619 */  jal   func_800A9864
/* 0C8504 80167AC4 24050022 */   li    $a1, 34
/* 0C8508 80167AC8 0C029D9E */  jal   play_sound
/* 0C850C 80167ACC 24040011 */   li    $a0, 17
/* 0C8510 80167AD0 3C040002 */  lui   $a0, (0x000202CF >> 16) # lui $a0, 2
/* 0C8514 80167AD4 3C050002 */  lui   $a1, (0x000202D0 >> 16) # lui $a1, 2
/* 0C8518 80167AD8 34A502D0 */  ori   $a1, (0x000202D0 & 0xFFFF) # ori $a1, $a1, 0x2d0
/* 0C851C 80167ADC 348402CF */  ori   $a0, (0x000202CF & 0xFFFF) # ori $a0, $a0, 0x2cf
/* 0C8520 80167AE0 0C048C3A */  jal   func_801230E8
/* 0C8524 80167AE4 24060001 */   li    $a2, 1
/* 0C8528 80167AE8 1000000F */  b     .L80167B28_ovl3
/* 0C852C 80167AEC 00000000 */   nop   
.L80167AF0_ovl3:
/* 0C8530 80167AF0 0C02A619 */  jal   func_800A9864
/* 0C8534 80167AF4 24060010 */   li    $a2, 16
/* 0C8538 80167AF8 3C040002 */  lui   $a0, (0x000202D2 >> 16) # lui $a0, 2
/* 0C853C 80167AFC 3C050002 */  lui   $a1, (0x000202D3 >> 16) # lui $a1, 2
/* 0C8540 80167B00 34A502D3 */  ori   $a1, (0x000202D3 & 0xFFFF) # ori $a1, $a1, 0x2d3
/* 0C8544 80167B04 348402D2 */  ori   $a0, (0x000202D2 & 0xFFFF) # ori $a0, $a0, 0x2d2
/* 0C8548 80167B08 0C048C3A */  jal   func_801230E8
/* 0C854C 80167B0C 00003025 */   move  $a2, $zero
/* 0C8550 80167B10 0C002DAF */  jal   finish_current_thread
/* 0C8554 80167B14 24040005 */   li    $a0, 5
/* 0C8558 80167B18 0C029D9E */  jal   play_sound
/* 0C855C 80167B1C 24040011 */   li    $a0, 17
/* 0C8560 80167B20 0C02BC9F */  jal   func_800AF27C
/* 0C8564 80167B24 00000000 */   nop   
.L80167B28_ovl3:
/* 0C8568 80167B28 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0C856C 80167B2C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0C8570 80167B30 0C02C640 */  jal   func_800B1900
/* 0C8574 80167B34 95240002 */   lhu   $a0, 2($t1)
/* 0C8578 80167B38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C857C 80167B3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8580 80167B40 03E00008 */  jr    $ra
/* 0C8584 80167B44 00000000 */   nop   

.type func_80167974_ovl3, @function
.size func_80167974_ovl3, . - func_80167974_ovl3

glabel func_80167B48_ovl3
/* 0C8588 80167B48 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C858C 80167B4C 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C8590 80167B50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C8594 80167B54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C8598 80167B58 15C00005 */  bnez  $t6, .L80167B70_ovl3
/* 0C859C 80167B5C AFA40018 */   sw    $a0, 0x18($sp)
/* 0C85A0 80167B60 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C85A4 80167B64 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C85A8 80167B68 0C02C640 */  jal   func_800B1900
/* 0C85AC 80167B6C 95E40002 */   lhu   $a0, 2($t7)
.L80167B70_ovl3:
/* 0C85B0 80167B70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C85B4 80167B74 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C85B8 80167B78 03E00008 */  jr    $ra
/* 0C85BC 80167B7C 00000000 */   nop   

.type func_80167B48_ovl3, @function
.size func_80167B48_ovl3, . - func_80167B48_ovl3

glabel func_80167B80_ovl3
/* 0C85C0 80167B80 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C85C4 80167B84 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C85C8 80167B88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C85CC 80167B8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C85D0 80167B90 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C85D4 80167B94 8C4F0000 */  lw    $t7, ($v0)
/* 0C85D8 80167B98 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 0C85DC 80167B9C 3C01800E */  lui   $at, 0x800e
/* 0C85E0 80167BA0 000FC080 */  sll   $t8, $t7, 2
/* 0C85E4 80167BA4 00380821 */  addu  $at, $at, $t8
/* 0C85E8 80167BA8 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 0C85EC 80167BAC AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C85F0 80167BB0 8C480000 */  lw    $t0, ($v0)
/* 0C85F4 80167BB4 3C01800E */  lui   $at, 0x800e
/* 0C85F8 80167BB8 2419000E */  li    $t9, 14
/* 0C85FC 80167BBC 00084880 */  sll   $t1, $t0, 2
/* 0C8600 80167BC0 00290821 */  addu  $at, $at, $t1
/* 0C8604 80167BC4 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C8608 80167BC8 8C4A0000 */  lw    $t2, ($v0)
/* 0C860C 80167BCC 3C0C800E */  lui   $t4, 0x800e
/* 0C8610 80167BD0 3C01800E */  lui   $at, 0x800e
/* 0C8614 80167BD4 000A5880 */  sll   $t3, $t2, 2
/* 0C8618 80167BD8 018B6021 */  addu  $t4, $t4, $t3
/* 0C861C 80167BDC 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0C8620 80167BE0 000C6880 */  sll   $t5, $t4, 2
/* 0C8624 80167BE4 002D0821 */  addu  $at, $at, $t5
/* 0C8628 80167BE8 0C02BB30 */  jal   func_800AECC0
/* 0C862C 80167BEC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8630 80167BF0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C8634 80167BF4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C8638 80167BF8 3C08800E */  lui   $t0, 0x800e
/* 0C863C 80167BFC 3C01800E */  lui   $at, 0x800e
/* 0C8640 80167C00 8DEE0000 */  lw    $t6, ($t7)
/* 0C8644 80167C04 000EC080 */  sll   $t8, $t6, 2
/* 0C8648 80167C08 01184021 */  addu  $t0, $t0, $t8
/* 0C864C 80167C0C 8D080D50 */  lw    $t0, 0xd50($t0)
/* 0C8650 80167C10 0008C880 */  sll   $t9, $t0, 2
/* 0C8654 80167C14 00390821 */  addu  $at, $at, $t9
/* 0C8658 80167C18 0C02BB48 */  jal   func_800AED20
/* 0C865C 80167C1C C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8660 80167C20 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C8664 80167C24 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C8668 80167C28 3C018019 */  lui   $at, %hi(D_801971B0) # $at, 0x8019
/* 0C866C 80167C2C C42071B0 */  lwc1  $f0, %lo(D_801971B0)($at)
/* 0C8670 80167C30 8C4A0000 */  lw    $t2, ($v0)
/* 0C8674 80167C34 3C01800E */  lui   $at, 0x800e
/* 0C8678 80167C38 3C098016 */  lui   $t1, %hi(D_80167CCC) # $t1, 0x8016
/* 0C867C 80167C3C 000A5880 */  sll   $t3, $t2, 2
/* 0C8680 80167C40 002B0821 */  addu  $at, $at, $t3
/* 0C8684 80167C44 25297CCC */  addiu $t1, %lo(D_80167CCC) # addiu $t1, $t1, 0x7ccc
/* 0C8688 80167C48 AC29F150 */  sw    $t1, -0xeb0($at)
/* 0C868C 80167C4C 8C4C0000 */  lw    $t4, ($v0)
/* 0C8690 80167C50 3C01800E */  lui   $at, 0x800e
/* 0C8694 80167C54 3C040002 */  lui   $a0, (0x0002005F >> 16) # lui $a0, 2
/* 0C8698 80167C58 000C6880 */  sll   $t5, $t4, 2
/* 0C869C 80167C5C 002D0821 */  addu  $at, $at, $t5
/* 0C86A0 80167C60 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C86A4 80167C64 8C4F0000 */  lw    $t7, ($v0)
/* 0C86A8 80167C68 3C01800E */  lui   $at, 0x800e
/* 0C86AC 80167C6C 3484005F */  ori   $a0, (0x0002005F & 0xFFFF) # ori $a0, $a0, 0x5f
/* 0C86B0 80167C70 000F7080 */  sll   $t6, $t7, 2
/* 0C86B4 80167C74 002E0821 */  addu  $at, $at, $t6
/* 0C86B8 80167C78 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C86BC 80167C7C 8C580000 */  lw    $t8, ($v0)
/* 0C86C0 80167C80 3C01800E */  lui   $at, 0x800e
/* 0C86C4 80167C84 24050022 */  li    $a1, 34
/* 0C86C8 80167C88 00184080 */  sll   $t0, $t8, 2
/* 0C86CC 80167C8C 00280821 */  addu  $at, $at, $t0
/* 0C86D0 80167C90 24060010 */  li    $a2, 16
/* 0C86D4 80167C94 0C02A619 */  jal   func_800A9864
/* 0C86D8 80167C98 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C86DC 80167C9C 3C040002 */  lui   $a0, (0x000202D5 >> 16) # lui $a0, 2
/* 0C86E0 80167CA0 0C02A855 */  jal   func_800AA154
/* 0C86E4 80167CA4 348402D5 */   ori   $a0, (0x000202D5 & 0xFFFF) # ori $a0, $a0, 0x2d5
/* 0C86E8 80167CA8 3C040002 */  lui   $a0, (0x000202D4 >> 16) # lui $a0, 2
/* 0C86EC 80167CAC 0C02A806 */  jal   func_800AA018
/* 0C86F0 80167CB0 348402D4 */   ori   $a0, (0x000202D4 & 0xFFFF) # ori $a0, $a0, 0x2d4
/* 0C86F4 80167CB4 0C02BE85 */  jal   func_800AFA14
/* 0C86F8 80167CB8 00000000 */   nop   
/* 0C86FC 80167CBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8700 80167CC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8704 80167CC4 03E00008 */  jr    $ra
/* 0C8708 80167CC8 00000000 */   nop   

.type func_80167B80_ovl3, @function
.size func_80167B80_ovl3, . - func_80167B80_ovl3

glabel func_80167CCC_ovl3
/* 0C870C 80167CCC 3C0E8013 */  lui   $t6, %hi(D_8012E860) # $t6, 0x8013
/* 0C8710 80167CD0 8DCEE860 */  lw    $t6, %lo(D_8012E860)($t6)
/* 0C8714 80167CD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C8718 80167CD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C871C 80167CDC 15C00005 */  bnez  $t6, .L80167CF4_ovl3
/* 0C8720 80167CE0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0C8724 80167CE4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C8728 80167CE8 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C872C 80167CEC 0C02C640 */  jal   func_800B1900
/* 0C8730 80167CF0 95E40002 */   lhu   $a0, 2($t7)
.L80167CF4_ovl3:
/* 0C8734 80167CF4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8738 80167CF8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C873C 80167CFC 03E00008 */  jr    $ra
/* 0C8740 80167D00 00000000 */   nop   

.type func_80167CCC_ovl3, @function
.size func_80167CCC_ovl3, . - func_80167CCC_ovl3

glabel func_80167D04_ovl3
/* 0C8744 80167D04 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C8748 80167D08 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C874C 80167D0C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C8750 80167D10 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C8754 80167D14 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C8758 80167D18 8C4F0000 */  lw    $t7, ($v0)
/* 0C875C 80167D1C 3C0E8016 */  lui   $t6, %hi(D_80167F54) # $t6, 0x8016
/* 0C8760 80167D20 3C01800E */  lui   $at, 0x800e
/* 0C8764 80167D24 000FC080 */  sll   $t8, $t7, 2
/* 0C8768 80167D28 00380821 */  addu  $at, $at, $t8
/* 0C876C 80167D2C 25CE7F54 */  addiu $t6, %lo(D_80167F54) # addiu $t6, $t6, 0x7f54
/* 0C8770 80167D30 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 0C8774 80167D34 8C590000 */  lw    $t9, ($v0)
/* 0C8778 80167D38 3C01800F */  lui   $at, 0x800f
/* 0C877C 80167D3C 27A90028 */  addiu $t1, $sp, 0x28
/* 0C8780 80167D40 00194080 */  sll   $t0, $t9, 2
/* 0C8784 80167D44 00280821 */  addu  $at, $at, $t0
/* 0C8788 80167D48 AC2098E0 */  sw    $zero, -0x6720($at)
/* 0C878C 80167D4C 8C4A0000 */  lw    $t2, ($v0)
/* 0C8790 80167D50 3C01800F */  lui   $at, 0x800f
/* 0C8794 80167D54 AFA00028 */  sw    $zero, 0x28($sp)
/* 0C8798 80167D58 000A5880 */  sll   $t3, $t2, 2
/* 0C879C 80167D5C 002B0821 */  addu  $at, $at, $t3
/* 0C87A0 80167D60 AC299FE0 */  sw    $t1, -0x6020($at)
/* 0C87A4 80167D64 8C430000 */  lw    $v1, ($v0)
/* 0C87A8 80167D68 3C04800F */  lui   $a0, 0x800f
/* 0C87AC 80167D6C 3C01800E */  lui   $at, 0x800e
/* 0C87B0 80167D70 00031880 */  sll   $v1, $v1, 2
/* 0C87B4 80167D74 00832021 */  addu  $a0, $a0, $v1
/* 0C87B8 80167D78 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C87BC 80167D7C 3C0C800B */  lui   $t4, %hi(D_800B4B9C) # $t4, 0x800b
/* 0C87C0 80167D80 258C4B9C */  addiu $t4, %lo(D_800B4B9C) # addiu $t4, $t4, 0x4b9c
/* 0C87C4 80167D84 10800008 */  beqz  $a0, .L80167DA8_ovl3
/* 0C87C8 80167D88 00230821 */   addu  $at, $at, $v1
/* 0C87CC 80167D8C 24010001 */  li    $at, 1
/* 0C87D0 80167D90 10810014 */  beq   $a0, $at, .L80167DE4_ovl3
/* 0C87D4 80167D94 24010002 */   li    $at, 2
/* 0C87D8 80167D98 10810029 */  beq   $a0, $at, .L80167E40_ovl3
/* 0C87DC 80167D9C 00000000 */   nop   
/* 0C87E0 80167DA0 10000069 */  b     .L80167F48_ovl3
/* 0C87E4 80167DA4 8FBF0014 */   lw    $ra, 0x14($sp)
.L80167DA8_ovl3:
/* 0C87E8 80167DA8 3C040002 */  lui   $a0, (0x00020043 >> 16) # lui $a0, 2
/* 0C87EC 80167DAC AC2CEF90 */  sw    $t4, -0x1070($at)
/* 0C87F0 80167DB0 34840043 */  ori   $a0, (0x00020043 & 0xFFFF) # ori $a0, $a0, 0x43
/* 0C87F4 80167DB4 24050022 */  li    $a1, 34
/* 0C87F8 80167DB8 0C02A619 */  jal   func_800A9864
/* 0C87FC 80167DBC 24060010 */   li    $a2, 16
/* 0C8800 80167DC0 3C040002 */  lui   $a0, (0x00020295 >> 16) # lui $a0, 2
/* 0C8804 80167DC4 0C02A806 */  jal   func_800AA018
/* 0C8808 80167DC8 34840295 */   ori   $a0, (0x00020295 & 0xFFFF) # ori $a0, $a0, 0x295
/* 0C880C 80167DCC 0C02BE85 */  jal   func_800AFA14
/* 0C8810 80167DD0 00000000 */   nop   
/* 0C8814 80167DD4 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0C8818 80167DD8 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0C881C 80167DDC 8DA30000 */  lw    $v1, ($t5)
/* 0C8820 80167DE0 00031880 */  sll   $v1, $v1, 2
.L80167DE4_ovl3:
/* 0C8824 80167DE4 3C0F800B */  lui   $t7, %hi(D_800B4B9C) # $t7, 0x800b
/* 0C8828 80167DE8 3C01800E */  lui   $at, 0x800e
/* 0C882C 80167DEC 00230821 */  addu  $at, $at, $v1
/* 0C8830 80167DF0 25EF4B9C */  addiu $t7, %lo(D_800B4B9C) # addiu $t7, $t7, 0x4b9c
/* 0C8834 80167DF4 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 0C8838 80167DF8 2404004E */  li    $a0, 78
/* 0C883C 80167DFC 27A50028 */  addiu $a1, $sp, 0x28
/* 0C8840 80167E00 0C029DFA */  jal   func_800A77E8
/* 0C8844 80167E04 27A6002C */   addiu $a2, $sp, 0x2c
/* 0C8848 80167E08 3C040002 */  lui   $a0, (0x00020058 >> 16) # lui $a0, 2
/* 0C884C 80167E0C 34840058 */  ori   $a0, (0x00020058 & 0xFFFF) # ori $a0, $a0, 0x58
/* 0C8850 80167E10 24050022 */  li    $a1, 34
/* 0C8854 80167E14 0C02A619 */  jal   func_800A9864
/* 0C8858 80167E18 24060010 */   li    $a2, 16
/* 0C885C 80167E1C 3C040002 */  lui   $a0, (0x000202C5 >> 16) # lui $a0, 2
/* 0C8860 80167E20 0C02A806 */  jal   func_800AA018
/* 0C8864 80167E24 348402C5 */   ori   $a0, (0x000202C5 & 0xFFFF) # ori $a0, $a0, 0x2c5
/* 0C8868 80167E28 0C02BE85 */  jal   func_800AFA14
/* 0C886C 80167E2C 00000000 */   nop   
/* 0C8870 80167E30 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C8874 80167E34 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C8878 80167E38 8C430000 */  lw    $v1, ($v0)
/* 0C887C 80167E3C 00031880 */  sll   $v1, $v1, 2
.L80167E40_ovl3:
/* 0C8880 80167E40 3C018019 */  lui   $at, %hi(D_801971B4) # $at, 0x8019
/* 0C8884 80167E44 C42471B4 */  lwc1  $f4, %lo(D_801971B4)($at)
/* 0C8888 80167E48 3C01800F */  lui   $at, 0x800f
/* 0C888C 80167E4C 00230821 */  addu  $at, $at, $v1
/* 0C8890 80167E50 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 0C8894 80167E54 8C580000 */  lw    $t8, ($v0)
/* 0C8898 80167E58 3C01800E */  lui   $at, 0x800e
/* 0C889C 80167E5C 3C0E800B */  lui   $t6, %hi(func_800B5064) # $t6, 0x800b
/* 0C88A0 80167E60 0018C880 */  sll   $t9, $t8, 2
/* 0C88A4 80167E64 00390821 */  addu  $at, $at, $t9
/* 0C88A8 80167E68 25CE5064 */  addiu $t6, %lo(func_800B5064) # addiu $t6, $t6, 0x5064
/* 0C88AC 80167E6C AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C88B0 80167E70 8C4A0000 */  lw    $t2, ($v0)
/* 0C88B4 80167E74 3C01800E */  lui   $at, 0x800e
/* 0C88B8 80167E78 24080002 */  li    $t0, 2
/* 0C88BC 80167E7C 000A4880 */  sll   $t1, $t2, 2
/* 0C88C0 80167E80 00290821 */  addu  $at, $at, $t1
/* 0C88C4 80167E84 AC280F10 */  sw    $t0, 0xf10($at)
/* 0C88C8 80167E88 8C4B0000 */  lw    $t3, ($v0)
/* 0C88CC 80167E8C 3C01800F */  lui   $at, 0x800f
/* 0C88D0 80167E90 3C06800D */  lui   $a2, %hi(D_800D7238) # $a2, 0x800d
/* 0C88D4 80167E94 000B6080 */  sll   $t4, $t3, 2
/* 0C88D8 80167E98 002C0821 */  addu  $at, $at, $t4
/* 0C88DC 80167E9C C426C660 */  lwc1  $f6, -0x39a0($at)
/* 0C88E0 80167EA0 3C018019 */  lui   $at, %hi(D_801971B8) # $at, 0x8019
/* 0C88E4 80167EA4 C42871B8 */  lwc1  $f8, %lo(D_801971B8)($at)
/* 0C88E8 80167EA8 24C67238 */  addiu $a2, %lo(D_800D7238) # addiu $a2, $a2, 0x7238
/* 0C88EC 80167EAC 3C01800E */  lui   $at, 0x800e
/* 0C88F0 80167EB0 46083282 */  mul.s $f10, $f6, $f8
/* 0C88F4 80167EB4 24040006 */  li    $a0, 6
/* 0C88F8 80167EB8 24050010 */  li    $a1, 16
/* 0C88FC 80167EBC E4CA0000 */  swc1  $f10, ($a2)
/* 0C8900 80167EC0 8C4D0000 */  lw    $t5, ($v0)
/* 0C8904 80167EC4 C4C00000 */  lwc1  $f0, ($a2)
/* 0C8908 80167EC8 000D7880 */  sll   $t7, $t5, 2
/* 0C890C 80167ECC 002F0821 */  addu  $at, $at, $t7
/* 0C8910 80167ED0 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C8914 80167ED4 8C580000 */  lw    $t8, ($v0)
/* 0C8918 80167ED8 3C01800E */  lui   $at, 0x800e
/* 0C891C 80167EDC 00187080 */  sll   $t6, $t8, 2
/* 0C8920 80167EE0 002E0821 */  addu  $at, $at, $t6
/* 0C8924 80167EE4 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C8928 80167EE8 8C590000 */  lw    $t9, ($v0)
/* 0C892C 80167EEC 3C01800E */  lui   $at, 0x800e
/* 0C8930 80167EF0 00195080 */  sll   $t2, $t9, 2
/* 0C8934 80167EF4 002A0821 */  addu  $at, $at, $t2
/* 0C8938 80167EF8 0C02ED1A */  jal   func_800BB468
/* 0C893C 80167EFC E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C8940 80167F00 0C029D9E */  jal   play_sound
/* 0C8944 80167F04 2404004F */   li    $a0, 79
/* 0C8948 80167F08 3C040002 */  lui   $a0, (0x00020059 >> 16) # lui $a0, 2
/* 0C894C 80167F0C 34840059 */  ori   $a0, (0x00020059 & 0xFFFF) # ori $a0, $a0, 0x59
/* 0C8950 80167F10 24050022 */  li    $a1, 34
/* 0C8954 80167F14 0C02A619 */  jal   func_800A9864
/* 0C8958 80167F18 24060010 */   li    $a2, 16
/* 0C895C 80167F1C 3C040002 */  lui   $a0, (0x000202C7 >> 16) # lui $a0, 2
/* 0C8960 80167F20 3C050002 */  lui   $a1, (0x000202C8 >> 16) # lui $a1, 2
/* 0C8964 80167F24 34A502C8 */  ori   $a1, (0x000202C8 & 0xFFFF) # ori $a1, $a1, 0x2c8
/* 0C8968 80167F28 348402C7 */  ori   $a0, (0x000202C7 & 0xFFFF) # ori $a0, $a0, 0x2c7
/* 0C896C 80167F2C 0C048C3A */  jal   func_801230E8
/* 0C8970 80167F30 24060001 */   li    $a2, 1
/* 0C8974 80167F34 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0C8978 80167F38 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0C897C 80167F3C 0C02C640 */  jal   func_800B1900
/* 0C8980 80167F40 95040002 */   lhu   $a0, 2($t0)
/* 0C8984 80167F44 8FBF0014 */  lw    $ra, 0x14($sp)
.L80167F48_ovl3:
/* 0C8988 80167F48 27BD0030 */  addiu $sp, $sp, 0x30
/* 0C898C 80167F4C 03E00008 */  jr    $ra
/* 0C8990 80167F50 00000000 */   nop   

.type func_80167D04_ovl3, @function
.size func_80167D04_ovl3, . - func_80167D04_ovl3

glabel func_80167F54_ovl3
/* 0C8994 80167F54 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0C8998 80167F58 AFB00020 */  sw    $s0, 0x20($sp)
/* 0C899C 80167F5C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0C89A0 80167F60 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0C89A4 80167F64 8E030000 */  lw    $v1, ($s0)
/* 0C89A8 80167F68 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C89AC 80167F6C AFA40040 */  sw    $a0, 0x40($sp)
/* 0C89B0 80167F70 8C680000 */  lw    $t0, ($v1)
/* 0C89B4 80167F74 3C098013 */  lui   $t1, %hi(gKirbyState) # $t1, 0x8013
/* 0C89B8 80167F78 2529E7C0 */  addiu $t1, %lo(gKirbyState) # addiu $t1, $t1, -0x1840
/* 0C89BC 80167F7C 8D2500A0 */  lw    $a1, 0xa0($t1)
/* 0C89C0 80167F80 3C06800F */  lui   $a2, 0x800f
/* 0C89C4 80167F84 00081080 */  sll   $v0, $t0, 2
/* 0C89C8 80167F88 00C23021 */  addu  $a2, $a2, $v0
/* 0C89CC 80167F8C 10A0010E */  beqz  $a1, .L801683C8_ovl3
/* 0C89D0 80167F90 8CC69FE0 */   lw    $a2, -0x6020($a2)
/* 0C89D4 80167F94 3C04800F */  lui   $a0, 0x800f
/* 0C89D8 80167F98 00822021 */  addu  $a0, $a0, $v0
/* 0C89DC 80167F9C 8C84C2E0 */  lw    $a0, -0x3d20($a0)
/* 0C89E0 80167FA0 24070001 */  li    $a3, 1
/* 0C89E4 80167FA4 50800008 */  beql  $a0, $zero, .L80167FC8_ovl3
/* 0C89E8 80167FA8 8D2E0044 */   lw    $t6, 0x44($t1)
/* 0C89EC 80167FAC 10870025 */  beq   $a0, $a3, .L80168044_ovl3
/* 0C89F0 80167FB0 24010002 */   li    $at, 2
/* 0C89F4 80167FB4 108100B1 */  beq   $a0, $at, .L8016827C_ovl3
/* 0C89F8 80167FB8 3C0E800F */   lui   $t6, 0x800f
/* 0C89FC 80167FBC 10000103 */  b     .L801683CC_ovl3
/* 0C8A00 80167FC0 8CCB0000 */   lw    $t3, ($a2)
/* 0C8A04 80167FC4 8D2E0044 */  lw    $t6, 0x44($t1)
.L80167FC8_ovl3:
/* 0C8A08 80167FC8 3C0F800E */  lui   $t7, 0x800e
/* 0C8A0C 80167FCC 01E27821 */  addu  $t7, $t7, $v0
/* 0C8A10 80167FD0 15C000FD */  bnez  $t6, .L801683C8_ovl3
/* 0C8A14 80167FD4 3C01800E */   lui   $at, 0x800e
/* 0C8A18 80167FD8 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0C8A1C 80167FDC 3C048019 */  lui   $a0, %hi(D_80191CAC) # $a0, 0x8019
/* 0C8A20 80167FE0 24841CAC */  addiu $a0, %lo(D_80191CAC) # addiu $a0, $a0, 0x1cac
/* 0C8A24 80167FE4 000FC080 */  sll   $t8, $t7, 2
/* 0C8A28 80167FE8 00380821 */  addu  $at, $at, $t8
/* 0C8A2C 80167FEC C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C8A30 80167FF0 3C01800E */  lui   $at, 0x800e
/* 0C8A34 80167FF4 00220821 */  addu  $at, $at, $v0
/* 0C8A38 80167FF8 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C8A3C 80167FFC 0C044681 */  jal   func_80111A04
/* 0C8A40 80168000 8C650000 */   lw    $a1, ($v1)
/* 0C8A44 80168004 0C044713 */  jal   func_80111C4C
/* 0C8A48 80168008 00402025 */   move  $a0, $v0
/* 0C8A4C 8016800C 8E190000 */  lw    $t9, ($s0)
/* 0C8A50 80168010 3C0C801A */  lui   $t4, %hi(D_80198540) # $t4, 0x801a
/* 0C8A54 80168014 258C8540 */  addiu $t4, %lo(D_80198540) # addiu $t4, $t4, -0x7ac0
/* 0C8A58 80168018 8F280000 */  lw    $t0, ($t9)
/* 0C8A5C 8016801C 3C058019 */  lui   $a1, %hi(D_8019570C) # $a1, 0x8019
/* 0C8A60 80168020 24A5570C */  addiu $a1, %lo(D_8019570C) # addiu $a1, $a1, 0x570c
/* 0C8A64 80168024 00085140 */  sll   $t2, $t0, 5
/* 0C8A68 80168028 254BF880 */  addiu $t3, $t2, -0x780
/* 0C8A6C 8016802C 016C2021 */  addu  $a0, $t3, $t4
/* 0C8A70 80168030 00003025 */  move  $a2, $zero
/* 0C8A74 80168034 0C055754 */  jal   func_80155D50_ovl3
/* 0C8A78 80168038 01003825 */   move  $a3, $t0
/* 0C8A7C 8016803C 100000EE */  b     .L801683F8_ovl3
/* 0C8A80 80168040 8FBF0024 */   lw    $ra, 0x24($sp)
.L80168044_ovl3:
/* 0C8A84 80168044 14A00003 */  bnez  $a1, .L80168054_ovl3
/* 0C8A88 80168048 3C0E800F */   lui   $t6, %hi(D_800E98E0) # $t6, 0x800f
/* 0C8A8C 8016804C 8D2D0044 */  lw    $t5, 0x44($t1)
/* 0C8A90 80168050 10ED00DD */  beq   $a3, $t5, .L801683C8_ovl3
.L80168054_ovl3:
/* 0C8A94 80168054 25CE98E0 */   addiu $t6, %lo(D_800E98E0) # addiu $t6, $t6, -0x6720
/* 0C8A98 80168058 004E2021 */  addu  $a0, $v0, $t6
/* 0C8A9C 8016805C 8C8F0000 */  lw    $t7, ($a0)
/* 0C8AA0 80168060 3C19800F */  lui   $t9, 0x800f
/* 0C8AA4 80168064 39F80001 */  xori  $t8, $t7, 1
/* 0C8AA8 80168068 AC980000 */  sw    $t8, ($a0)
/* 0C8AAC 8016806C 8C620000 */  lw    $v0, ($v1)
/* 0C8AB0 80168070 3C03800E */  lui   $v1, %hi(D_800DFBD0) # $v1, 0x800e
/* 0C8AB4 80168074 2463FBD0 */  addiu $v1, %lo(D_800DFBD0) # addiu $v1, $v1, -0x430
/* 0C8AB8 80168078 00021080 */  sll   $v0, $v0, 2
/* 0C8ABC 8016807C 0322C821 */  addu  $t9, $t9, $v0
/* 0C8AC0 80168080 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 0C8AC4 80168084 00625021 */  addu  $t2, $v1, $v0
/* 0C8AC8 80168088 1720001B */  bnez  $t9, .L801680F8_ovl3
/* 0C8ACC 8016808C 00000000 */   nop   
/* 0C8AD0 80168090 8D4B0000 */  lw    $t3, ($t2)
/* 0C8AD4 80168094 3C048019 */  lui   $a0, %hi(D_80196904) # $a0, 0x8019
/* 0C8AD8 80168098 24846904 */  addiu $a0, %lo(D_80196904) # addiu $a0, $a0, 0x6904
/* 0C8ADC 8016809C 8D6C000C */  lw    $t4, 0xc($t3)
/* 0C8AE0 801680A0 8C8F0000 */  lw    $t7, ($a0)
/* 0C8AE4 801680A4 8D8D0080 */  lw    $t5, 0x80($t4)
/* 0C8AE8 801680A8 ADAF0058 */  sw    $t7, 0x58($t5)
/* 0C8AEC 801680AC 8E180000 */  lw    $t8, ($s0)
/* 0C8AF0 801680B0 8F190000 */  lw    $t9, ($t8)
/* 0C8AF4 801680B4 8C980000 */  lw    $t8, ($a0)
/* 0C8AF8 801680B8 00195080 */  sll   $t2, $t9, 2
/* 0C8AFC 801680BC 006A5821 */  addu  $t3, $v1, $t2
/* 0C8B00 801680C0 8D6C0000 */  lw    $t4, ($t3)
/* 0C8B04 801680C4 8D8D0014 */  lw    $t5, 0x14($t4)
/* 0C8B08 801680C8 8DAE0080 */  lw    $t6, 0x80($t5)
/* 0C8B0C 801680CC ADD80058 */  sw    $t8, 0x58($t6)
/* 0C8B10 801680D0 8E190000 */  lw    $t9, ($s0)
/* 0C8B14 801680D4 8F2A0000 */  lw    $t2, ($t9)
/* 0C8B18 801680D8 8C990000 */  lw    $t9, ($a0)
/* 0C8B1C 801680DC 000A5880 */  sll   $t3, $t2, 2
/* 0C8B20 801680E0 006B6021 */  addu  $t4, $v1, $t3
/* 0C8B24 801680E4 8D8D0000 */  lw    $t5, ($t4)
/* 0C8B28 801680E8 8DAE001C */  lw    $t6, 0x1c($t5)
/* 0C8B2C 801680EC 8DCF0080 */  lw    $t7, 0x80($t6)
/* 0C8B30 801680F0 1000001D */  b     .L80168168_ovl3
/* 0C8B34 801680F4 ADF90058 */   sw    $t9, 0x58($t7)
.L801680F8_ovl3:
/* 0C8B38 801680F8 3C03800E */  lui   $v1, %hi(D_800DFBD0) # $v1, 0x800e
/* 0C8B3C 801680FC 2463FBD0 */  addiu $v1, %lo(D_800DFBD0) # addiu $v1, $v1, -0x430
/* 0C8B40 80168100 00625021 */  addu  $t2, $v1, $v0
/* 0C8B44 80168104 8D4B0000 */  lw    $t3, ($t2)
/* 0C8B48 80168108 3C048019 */  lui   $a0, %hi(D_80196908) # $a0, 0x8019
/* 0C8B4C 8016810C 24846908 */  addiu $a0, %lo(D_80196908) # addiu $a0, $a0, 0x6908
/* 0C8B50 80168110 8D6C000C */  lw    $t4, 0xc($t3)
/* 0C8B54 80168114 8C8F0000 */  lw    $t7, ($a0)
/* 0C8B58 80168118 8D8D0080 */  lw    $t5, 0x80($t4)
/* 0C8B5C 8016811C ADAF0058 */  sw    $t7, 0x58($t5)
/* 0C8B60 80168120 8E180000 */  lw    $t8, ($s0)
/* 0C8B64 80168124 8F190000 */  lw    $t9, ($t8)
/* 0C8B68 80168128 8C980000 */  lw    $t8, ($a0)
/* 0C8B6C 8016812C 00195080 */  sll   $t2, $t9, 2
/* 0C8B70 80168130 006A5821 */  addu  $t3, $v1, $t2
/* 0C8B74 80168134 8D6C0000 */  lw    $t4, ($t3)
/* 0C8B78 80168138 8D8D0014 */  lw    $t5, 0x14($t4)
/* 0C8B7C 8016813C 8DAE0080 */  lw    $t6, 0x80($t5)
/* 0C8B80 80168140 ADD80058 */  sw    $t8, 0x58($t6)
/* 0C8B84 80168144 8E190000 */  lw    $t9, ($s0)
/* 0C8B88 80168148 8F2A0000 */  lw    $t2, ($t9)
/* 0C8B8C 8016814C 8C990000 */  lw    $t9, ($a0)
/* 0C8B90 80168150 000A5880 */  sll   $t3, $t2, 2
/* 0C8B94 80168154 006B6021 */  addu  $t4, $v1, $t3
/* 0C8B98 80168158 8D8D0000 */  lw    $t5, ($t4)
/* 0C8B9C 8016815C 8DAE001C */  lw    $t6, 0x1c($t5)
/* 0C8BA0 80168160 8DCF0080 */  lw    $t7, 0x80($t6)
/* 0C8BA4 80168164 ADF90058 */  sw    $t9, 0x58($t7)
.L80168168_ovl3:
/* 0C8BA8 80168168 8E0A0000 */  lw    $t2, ($s0)
/* 0C8BAC 8016816C C5260040 */  lwc1  $f6, 0x40($t1)
/* 0C8BB0 80168170 3C01800E */  lui   $at, 0x800e
/* 0C8BB4 80168174 8D4B0000 */  lw    $t3, ($t2)
/* 0C8BB8 80168178 44802000 */  mtc1  $zero, $f4
/* 0C8BBC 8016817C 3C048019 */  lui   $a0, %hi(D_80195500) # $a0, 0x8019
/* 0C8BC0 80168180 000B6080 */  sll   $t4, $t3, 2
/* 0C8BC4 80168184 006C6821 */  addu  $t5, $v1, $t4
/* 0C8BC8 80168188 8DAE0000 */  lw    $t6, ($t5)
/* 0C8BCC 8016818C 3C05801A */  lui   $a1, %hi(D_80198700) # $a1, 0x801a
/* 0C8BD0 80168190 24A58700 */  addiu $a1, %lo(D_80198700) # addiu $a1, $a1, -0x7900
/* 0C8BD4 80168194 8DCF0004 */  lw    $t7, 4($t6)
/* 0C8BD8 80168198 24845500 */  addiu $a0, %lo(D_80195500) # addiu $a0, $a0, 0x5500
/* 0C8BDC 8016819C 24060010 */  li    $a2, 16
/* 0C8BE0 801681A0 E5E60040 */  swc1  $f6, 0x40($t7)
/* 0C8BE4 801681A4 8E180000 */  lw    $t8, ($s0)
/* 0C8BE8 801681A8 C5280040 */  lwc1  $f8, 0x40($t1)
/* 0C8BEC 801681AC 8F190000 */  lw    $t9, ($t8)
/* 0C8BF0 801681B0 00195080 */  sll   $t2, $t9, 2
/* 0C8BF4 801681B4 006A5821 */  addu  $t3, $v1, $t2
/* 0C8BF8 801681B8 8D6C0000 */  lw    $t4, ($t3)
/* 0C8BFC 801681BC 8D8D0004 */  lw    $t5, 4($t4)
/* 0C8C00 801681C0 E5A80044 */  swc1  $f8, 0x44($t5)
/* 0C8C04 801681C4 8E0E0000 */  lw    $t6, ($s0)
/* 0C8C08 801681C8 C52A0040 */  lwc1  $f10, 0x40($t1)
/* 0C8C0C 801681CC 3C0D800E */  lui   $t5, 0x800e
/* 0C8C10 801681D0 8DCF0000 */  lw    $t7, ($t6)
/* 0C8C14 801681D4 000FC080 */  sll   $t8, $t7, 2
/* 0C8C18 801681D8 0078C821 */  addu  $t9, $v1, $t8
/* 0C8C1C 801681DC 8F2A0000 */  lw    $t2, ($t9)
/* 0C8C20 801681E0 8D4B0004 */  lw    $t3, 4($t2)
/* 0C8C24 801681E4 E56A0048 */  swc1  $f10, 0x48($t3)
/* 0C8C28 801681E8 8E0C0000 */  lw    $t4, ($s0)
/* 0C8C2C 801681EC 8D820000 */  lw    $v0, ($t4)
/* 0C8C30 801681F0 E7A40014 */  swc1  $f4, 0x14($sp)
/* 0C8C34 801681F4 00021080 */  sll   $v0, $v0, 2
/* 0C8C38 801681F8 01A26821 */  addu  $t5, $t5, $v0
/* 0C8C3C 801681FC 8DAD0D50 */  lw    $t5, 0xd50($t5)
/* 0C8C40 80168200 000D7080 */  sll   $t6, $t5, 2
/* 0C8C44 80168204 002E0821 */  addu  $at, $at, $t6
/* 0C8C48 80168208 C43017D0 */  lwc1  $f16, 0x17d0($at)
/* 0C8C4C 8016820C 3C01800E */  lui   $at, 0x800e
/* 0C8C50 80168210 00220821 */  addu  $at, $at, $v0
/* 0C8C54 80168214 E43041D0 */  swc1  $f16, 0x41d0($at)
/* 0C8C58 80168218 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0C8C5C 8016821C 44819000 */  mtc1  $at, $f18
/* 0C8C60 80168220 8D270040 */  lw    $a3, 0x40($t1)
/* 0C8C64 80168224 0C054849 */  jal   func_80152124_ovl3
/* 0C8C68 80168228 E7B20010 */   swc1  $f18, 0x10($sp)
/* 0C8C6C 8016822C 8E0F0000 */  lw    $t7, ($s0)
/* 0C8C70 80168230 3C0A801A */  lui   $t2, %hi(D_80198540) # $t2, 0x801a
/* 0C8C74 80168234 254A8540 */  addiu $t2, %lo(D_80198540) # addiu $t2, $t2, -0x7ac0
/* 0C8C78 80168238 8DE80000 */  lw    $t0, ($t7)
/* 0C8C7C 8016823C 3C058019 */  lui   $a1, %hi(D_80195600) # $a1, 0x8019
/* 0C8C80 80168240 24A55600 */  addiu $a1, %lo(D_80195600) # addiu $a1, $a1, 0x5600
/* 0C8C84 80168244 0008C140 */  sll   $t8, $t0, 5
/* 0C8C88 80168248 2719F880 */  addiu $t9, $t8, -0x780
/* 0C8C8C 8016824C 032A2021 */  addu  $a0, $t9, $t2
/* 0C8C90 80168250 00003025 */  move  $a2, $zero
/* 0C8C94 80168254 0C055754 */  jal   func_80155D50_ovl3
/* 0C8C98 80168258 01003825 */   move  $a3, $t0
/* 0C8C9C 8016825C 8E0B0000 */  lw    $t3, ($s0)
/* 0C8CA0 80168260 44803000 */  mtc1  $zero, $f6
/* 0C8CA4 80168264 3C01800E */  lui   $at, 0x800e
/* 0C8CA8 80168268 8D6C0000 */  lw    $t4, ($t3)
/* 0C8CAC 8016826C 000C6880 */  sll   $t5, $t4, 2
/* 0C8CB0 80168270 002D0821 */  addu  $at, $at, $t5
/* 0C8CB4 80168274 1000005F */  b     .L801683F4_ovl3
/* 0C8CB8 80168278 E42641D0 */   swc1  $f6, 0x41d0($at)
.L8016827C_ovl3:
/* 0C8CBC 8016827C 01C27021 */  addu  $t6, $t6, $v0
/* 0C8CC0 80168280 8DCE98E0 */  lw    $t6, -0x6720($t6)
/* 0C8CC4 80168284 3C04800E */  lui   $a0, %hi(gEntitiesNextPosXArray) # $a0, 0x800e
/* 0C8CC8 80168288 248425D0 */  addiu $a0, %lo(gEntitiesNextPosXArray) # addiu $a0, $a0, 0x25d0
/* 0C8CCC 8016828C 15C00041 */  bnez  $t6, .L80168394_ovl3
/* 0C8CD0 80168290 3C05800E */   lui   $a1, %hi(gEntitiesNextPosYArray) # $a1, 0x800e
/* 0C8CD4 80168294 3C03800E */  lui   $v1, 0x800e
/* 0C8CD8 80168298 00621821 */  addu  $v1, $v1, $v0
/* 0C8CDC 8016829C 8C631D10 */  lw    $v1, 0x1d10($v1)
/* 0C8CE0 801682A0 0082C021 */  addu  $t8, $a0, $v0
/* 0C8CE4 801682A4 C70A0000 */  lwc1  $f10, ($t8)
/* 0C8CE8 801682A8 00031880 */  sll   $v1, $v1, 2
/* 0C8CEC 801682AC 00837821 */  addu  $t7, $a0, $v1
/* 0C8CF0 801682B0 C5E80000 */  lwc1  $f8, ($t7)
/* 0C8CF4 801682B4 3C06800E */  lui   $a2, %hi(gEntitiesNextPosZArray) # $a2, 0x800e
/* 0C8CF8 801682B8 24C62950 */  addiu $a2, %lo(gEntitiesNextPosZArray) # addiu $a2, $a2, 0x2950
/* 0C8CFC 801682BC 24A52790 */  addiu $a1, %lo(gEntitiesNextPosYArray) # addiu $a1, $a1, 0x2790
/* 0C8D00 801682C0 460A4301 */  sub.s $f12, $f8, $f10
/* 0C8D04 801682C4 00A3C821 */  addu  $t9, $a1, $v1
/* 0C8D08 801682C8 00A25021 */  addu  $t2, $a1, $v0
/* 0C8D0C 801682CC 00C35821 */  addu  $t3, $a2, $v1
/* 0C8D10 801682D0 00C26021 */  addu  $t4, $a2, $v0
/* 0C8D14 801682D4 C5520000 */  lwc1  $f18, ($t2)
/* 0C8D18 801682D8 C7300000 */  lwc1  $f16, ($t9)
/* 0C8D1C 801682DC C5880000 */  lwc1  $f8, ($t4)
/* 0C8D20 801682E0 C5660000 */  lwc1  $f6, ($t3)
/* 0C8D24 801682E4 46128101 */  sub.s $f4, $f16, $f18
/* 0C8D28 801682E8 E7AC002C */  swc1  $f12, 0x2c($sp)
/* 0C8D2C 801682EC 46083381 */  sub.s $f14, $f6, $f8
/* 0C8D30 801682F0 E7A40030 */  swc1  $f4, 0x30($sp)
/* 0C8D34 801682F4 0C0061C3 */  jal   atan2f
/* 0C8D38 801682F8 E7AE0034 */   swc1  $f14, 0x34($sp)
/* 0C8D3C 801682FC C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 0C8D40 80168300 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 0C8D44 80168304 8E0D0000 */  lw    $t5, ($s0)
/* 0C8D48 80168308 46021282 */  mul.s $f10, $f2, $f2
/* 0C8D4C 8016830C 3C01800E */  lui   $at, 0x800e
/* 0C8D50 80168310 8DAE0000 */  lw    $t6, ($t5)
/* 0C8D54 80168314 460E7402 */  mul.s $f16, $f14, $f14
/* 0C8D58 80168318 000E7880 */  sll   $t7, $t6, 2
/* 0C8D5C 8016831C 002F0821 */  addu  $at, $at, $t7
/* 0C8D60 80168320 E42041D0 */  swc1  $f0, 0x41d0($at)
/* 0C8D64 80168324 0C00CAC8 */  jal   sqrtf
/* 0C8D68 80168328 46105300 */   add.s $f12, $f10, $f16
/* 0C8D6C 8016832C C7AC0030 */  lwc1  $f12, 0x30($sp)
/* 0C8D70 80168330 0C0061C3 */  jal   atan2f
/* 0C8D74 80168334 46000386 */   mov.s $f14, $f0
/* 0C8D78 80168338 8E030000 */  lw    $v1, ($s0)
/* 0C8D7C 8016833C 46000487 */  neg.s $f18, $f0
/* 0C8D80 80168340 3C01800E */  lui   $at, 0x800e
/* 0C8D84 80168344 8C780000 */  lw    $t8, ($v1)
/* 0C8D88 80168348 44802000 */  mtc1  $zero, $f4
/* 0C8D8C 8016834C 3C0E800F */  lui   $t6, %hi(D_800E98E0) # $t6, 0x800f
/* 0C8D90 80168350 0018C880 */  sll   $t9, $t8, 2
/* 0C8D94 80168354 00390821 */  addu  $at, $at, $t9
/* 0C8D98 80168358 E4324010 */  swc1  $f18, 0x4010($at)
/* 0C8D9C 8016835C 8C6A0000 */  lw    $t2, ($v1)
/* 0C8DA0 80168360 3C01800E */  lui   $at, 0x800e
/* 0C8DA4 80168364 25CE98E0 */  addiu $t6, %lo(D_800E98E0) # addiu $t6, $t6, -0x6720
/* 0C8DA8 80168368 000A5880 */  sll   $t3, $t2, 2
/* 0C8DAC 8016836C 002B0821 */  addu  $at, $at, $t3
/* 0C8DB0 80168370 E4244390 */  swc1  $f4, 0x4390($at)
/* 0C8DB4 80168374 8C6C0000 */  lw    $t4, ($v1)
/* 0C8DB8 80168378 000C6880 */  sll   $t5, $t4, 2
/* 0C8DBC 8016837C 01AE2021 */  addu  $a0, $t5, $t6
/* 0C8DC0 80168380 8C8F0000 */  lw    $t7, ($a0)
/* 0C8DC4 80168384 25F80001 */  addiu $t8, $t7, 1
/* 0C8DC8 80168388 AC980000 */  sw    $t8, ($a0)
/* 0C8DCC 8016838C 8C620000 */  lw    $v0, ($v1)
/* 0C8DD0 80168390 00021080 */  sll   $v0, $v0, 2
.L80168394_ovl3:
/* 0C8DD4 80168394 3C03800E */  lui   $v1, %hi(D_800DFBD0) # $v1, 0x800e
/* 0C8DD8 80168398 2463FBD0 */  addiu $v1, %lo(D_800DFBD0) # addiu $v1, $v1, -0x430
/* 0C8DDC 8016839C 0062C821 */  addu  $t9, $v1, $v0
/* 0C8DE0 801683A0 8F2A0000 */  lw    $t2, ($t9)
/* 0C8DE4 801683A4 3C048019 */  lui   $a0, %hi(D_80191C68) # $a0, 0x8019
/* 0C8DE8 801683A8 24841C68 */  addiu $a0, %lo(D_80191C68) # addiu $a0, $a0, 0x1c68
/* 0C8DEC 801683AC 8D450008 */  lw    $a1, 8($t2)
/* 0C8DF0 801683B0 C4A00044 */  lwc1  $f0, 0x44($a1)
/* 0C8DF4 801683B4 44060000 */  mfc1  $a2, $f0
/* 0C8DF8 801683B8 0C05A153 */  jal   func_8016854C_ovl3
/* 0C8DFC 801683BC 00000000 */   nop   
/* 0C8E00 801683C0 1000000D */  b     .L801683F8_ovl3
/* 0C8E04 801683C4 8FBF0024 */   lw    $ra, 0x24($sp)
.L801683C8_ovl3:
/* 0C8E08 801683C8 8CCB0000 */  lw    $t3, ($a2)
.L801683CC_ovl3:
/* 0C8E0C 801683CC 00C02025 */  move  $a0, $a2
/* 0C8E10 801683D0 11600006 */  beqz  $t3, .L801683EC_ovl3
/* 0C8E14 801683D4 00000000 */   nop   
/* 0C8E18 801683D8 0C029E1C */  jal   func_800A7870
/* 0C8E1C 801683DC 24C50004 */   addiu $a1, $a2, 4
/* 0C8E20 801683E0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 0C8E24 801683E4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 0C8E28 801683E8 8D880000 */  lw    $t0, ($t4)
.L801683EC_ovl3:
/* 0C8E2C 801683EC 0C02C640 */  jal   func_800B1900
/* 0C8E30 801683F0 3104FFFF */   andi  $a0, $t0, 0xffff
.L801683F4_ovl3:
/* 0C8E34 801683F4 8FBF0024 */  lw    $ra, 0x24($sp)
.L801683F8_ovl3:
/* 0C8E38 801683F8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0C8E3C 801683FC 27BD0040 */  addiu $sp, $sp, 0x40
/* 0C8E40 80168400 03E00008 */  jr    $ra
/* 0C8E44 80168404 00000000 */   nop   

.type func_80167F54_ovl3, @function
.size func_80167F54_ovl3, . - func_80167F54_ovl3

glabel func_80168408_ovl3
/* 0C8E48 80168408 44866000 */  mtc1  $a2, $f12
/* 0C8E4C 8016840C 44802000 */  mtc1  $zero, $f4
/* 0C8E50 80168410 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C8E54 80168414 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C8E58 80168418 46046032 */  c.eq.s $f12, $f4
/* 0C8E5C 8016841C AFA5001C */  sw    $a1, 0x1c($sp)
/* 0C8E60 80168420 00A03025 */  move  $a2, $a1
/* 0C8E64 80168424 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C8E68 80168428 45000003 */  bc1f  .L80168438_ovl3
/* 0C8E6C 8016842C 00000000 */   nop   
/* 0C8E70 80168430 10000042 */  b     .L8016853C_ovl3
/* 0C8E74 80168434 00001025 */   move  $v0, $zero
.L80168438_ovl3:
/* 0C8E78 80168438 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C8E7C 8016843C 8DC50000 */  lw    $a1, ($t6)
/* 0C8E80 80168440 E7AC0020 */  swc1  $f12, 0x20($sp)
/* 0C8E84 80168444 0C044681 */  jal   func_80111A04
/* 0C8E88 80168448 AFA6001C */   sw    $a2, 0x1c($sp)
/* 0C8E8C 8016844C 8C4F001C */  lw    $t7, 0x1c($v0)
/* 0C8E90 80168450 8FA6001C */  lw    $a2, 0x1c($sp)
/* 0C8E94 80168454 C7AC0020 */  lwc1  $f12, 0x20($sp)
/* 0C8E98 80168458 00404025 */  move  $t0, $v0
/* 0C8E9C 8016845C 00002025 */  move  $a0, $zero
/* 0C8EA0 80168460 19E00035 */  blez  $t7, .L80168538_ovl3
/* 0C8EA4 80168464 8C430020 */   lw    $v1, 0x20($v0)
/* 0C8EA8 80168468 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C8EAC 8016846C 44810000 */  mtc1  $at, $f0
/* 0C8EB0 80168470 24070002 */  li    $a3, 2
/* 0C8EB4 80168474 24050001 */  li    $a1, 1
/* 0C8EB8 80168478 46006032 */  c.eq.s $f12, $f0
.L8016847C_ovl3:
/* 0C8EBC 8016847C 00000000 */  nop   
/* 0C8EC0 80168480 45030022 */  bc1tl .L8016850C_ovl3
/* 0C8EC4 80168484 8C780008 */   lw    $t8, 8($v1)
/* 0C8EC8 80168488 90620004 */  lbu   $v0, 4($v1)
/* 0C8ECC 8016848C 50450006 */  beql  $v0, $a1, .L801684A8_ovl3
/* 0C8ED0 80168490 C4660018 */   lwc1  $f6, 0x18($v1)
/* 0C8ED4 80168494 50470008 */  beql  $v0, $a3, .L801684B8_ovl3
/* 0C8ED8 80168498 C46A000C */   lwc1  $f10, 0xc($v1)
/* 0C8EDC 8016849C 1000001B */  b     .L8016850C_ovl3
/* 0C8EE0 801684A0 8C780008 */   lw    $t8, 8($v1)
/* 0C8EE4 801684A4 C4660018 */  lwc1  $f6, 0x18($v1)
.L801684A8_ovl3:
/* 0C8EE8 801684A8 460C3202 */  mul.s $f8, $f6, $f12
/* 0C8EEC 801684AC 10000016 */  b     .L80168508_ovl3
/* 0C8EF0 801684B0 E4680018 */   swc1  $f8, 0x18($v1)
/* 0C8EF4 801684B4 C46A000C */  lwc1  $f10, 0xc($v1)
.L801684B8_ovl3:
/* 0C8EF8 801684B8 C4720010 */  lwc1  $f18, 0x10($v1)
/* 0C8EFC 801684BC C4660014 */  lwc1  $f6, 0x14($v1)
/* 0C8F00 801684C0 460C5402 */  mul.s $f16, $f10, $f12
/* 0C8F04 801684C4 C46A0018 */  lwc1  $f10, 0x18($v1)
/* 0C8F08 801684C8 460C9102 */  mul.s $f4, $f18, $f12
/* 0C8F0C 801684CC C472001C */  lwc1  $f18, 0x1c($v1)
/* 0C8F10 801684D0 460C3202 */  mul.s $f8, $f6, $f12
/* 0C8F14 801684D4 E470000C */  swc1  $f16, 0xc($v1)
/* 0C8F18 801684D8 C4660020 */  lwc1  $f6, 0x20($v1)
/* 0C8F1C 801684DC 460C5402 */  mul.s $f16, $f10, $f12
/* 0C8F20 801684E0 E4640010 */  swc1  $f4, 0x10($v1)
/* 0C8F24 801684E4 C46A0024 */  lwc1  $f10, 0x24($v1)
/* 0C8F28 801684E8 460C9102 */  mul.s $f4, $f18, $f12
/* 0C8F2C 801684EC E4680014 */  swc1  $f8, 0x14($v1)
/* 0C8F30 801684F0 460C3202 */  mul.s $f8, $f6, $f12
/* 0C8F34 801684F4 E4700018 */  swc1  $f16, 0x18($v1)
/* 0C8F38 801684F8 460C5402 */  mul.s $f16, $f10, $f12
/* 0C8F3C 801684FC E464001C */  swc1  $f4, 0x1c($v1)
/* 0C8F40 80168500 E4680020 */  swc1  $f8, 0x20($v1)
/* 0C8F44 80168504 E4700024 */  swc1  $f16, 0x24($v1)
.L80168508_ovl3:
/* 0C8F48 80168508 8C780008 */  lw    $t8, 8($v1)
.L8016850C_ovl3:
/* 0C8F4C 8016850C 57000005 */  bnezl $t8, .L80168524_ovl3
/* 0C8F50 80168510 8D19001C */   lw    $t9, 0x1c($t0)
/* 0C8F54 80168514 50C00003 */  beql  $a2, $zero, .L80168524_ovl3
/* 0C8F58 80168518 8D19001C */   lw    $t9, 0x1c($t0)
/* 0C8F5C 8016851C AC660008 */  sw    $a2, 8($v1)
/* 0C8F60 80168520 8D19001C */  lw    $t9, 0x1c($t0)
.L80168524_ovl3:
/* 0C8F64 80168524 24840001 */  addiu $a0, $a0, 1
/* 0C8F68 80168528 24630028 */  addiu $v1, $v1, 0x28
/* 0C8F6C 8016852C 0099082A */  slt   $at, $a0, $t9
/* 0C8F70 80168530 5420FFD2 */  bnezl $at, .L8016847C_ovl3
/* 0C8F74 80168534 46006032 */   c.eq.s $f12, $f0
.L80168538_ovl3:
/* 0C8F78 80168538 01001025 */  move  $v0, $t0
.L8016853C_ovl3:
/* 0C8F7C 8016853C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8F80 80168540 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8F84 80168544 03E00008 */  jr    $ra
/* 0C8F88 80168548 00000000 */   nop   

.type func_80168408_ovl3, @function
.size func_80168408_ovl3, . - func_80168408_ovl3

glabel func_8016854C_ovl3
/* 0C8F8C 8016854C 44866000 */  mtc1  $a2, $f12
/* 0C8F90 80168550 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C8F94 80168554 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C8F98 80168558 44066000 */  mfc1  $a2, $f12
/* 0C8F9C 8016855C 0C05A102 */  jal   func_80168408_ovl3
/* 0C8FA0 80168560 00000000 */   nop   
/* 0C8FA4 80168564 10400004 */  beqz  $v0, .L80168578_ovl3
/* 0C8FA8 80168568 00402025 */   move  $a0, $v0
/* 0C8FAC 8016856C 0C044713 */  jal   func_80111C4C
/* 0C8FB0 80168570 AFA2001C */   sw    $v0, 0x1c($sp)
/* 0C8FB4 80168574 8FA4001C */  lw    $a0, 0x1c($sp)
.L80168578_ovl3:
/* 0C8FB8 80168578 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8FBC 8016857C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C8FC0 80168580 00801025 */  move  $v0, $a0
/* 0C8FC4 80168584 03E00008 */  jr    $ra
/* 0C8FC8 80168588 00000000 */   nop   

.type func_8016854C_ovl3, @function
.size func_8016854C_ovl3, . - func_8016854C_ovl3

glabel func_8016858C_ovl3
/* 0C8FCC 8016858C 27BDFE98 */  addiu $sp, $sp, -0x168
/* 0C8FD0 80168590 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C8FD4 80168594 AFB10018 */  sw    $s1, 0x18($sp)
/* 0C8FD8 80168598 AFB00014 */  sw    $s0, 0x14($sp)
/* 0C8FDC 8016859C 8C820000 */  lw    $v0, ($a0)
/* 0C8FE0 801685A0 3C0E800E */  lui   $t6, 0x800e
/* 0C8FE4 801685A4 00023080 */  sll   $a2, $v0, 2
/* 0C8FE8 801685A8 01C67021 */  addu  $t6, $t6, $a2
/* 0C8FEC 801685AC 8DCED8D0 */  lw    $t6, -0x2730($t6)
/* 0C8FF0 801685B0 31CF0040 */  andi  $t7, $t6, 0x40
/* 0C8FF4 801685B4 55E0037F */  bnezl $t7, .L801693B4_ovl3
/* 0C8FF8 801685B8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0C8FFC 801685BC AFA20164 */  sw    $v0, 0x164($sp)
/* 0C9000 801685C0 AFA40168 */  sw    $a0, 0x168($sp)
/* 0C9004 801685C4 0C02AC3D */  jal   func_800AB0F4
/* 0C9008 801685C8 AFA60020 */   sw    $a2, 0x20($sp)
/* 0C900C 801685CC 2458FFED */  addiu $t8, $v0, -0x13
/* 0C9010 801685D0 2F01000C */  sltiu $at, $t8, 0xc
/* 0C9014 801685D4 10200376 */  beqz  $at, .L801693B0_ovl3
/* 0C9018 801685D8 8FA60020 */   lw    $a2, 0x20($sp)
/* 0C901C 801685DC 0018C080 */  sll   $t8, $t8, 2
/* 0C9020 801685E0 3C018019 */  lui   $at, 0x8019
/* 0C9024 801685E4 00380821 */  addu  $at, $at, $t8
/* 0C9028 801685E8 8C3871BC */  lw    $t8, 0x71bc($at)
/* 0C902C 801685EC 03000008 */  jr    $t8
/* 0C9030 801685F0 00000000 */   nop   
/* 0C9034 801685F4 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C9038 801685F8 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C903C 801685FC 8E020000 */  lw    $v0, ($s0)
/* 0C9040 80168600 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C9044 80168604 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9048 80168608 24590008 */  addiu $t9, $v0, 8
/* 0C904C 8016860C AE190000 */  sw    $t9, ($s0)
/* 0C9050 80168610 3C0E800E */  lui   $t6, 0x800e
/* 0C9054 80168614 01C67021 */  addu  $t6, $t6, $a2
/* 0C9058 80168618 AC480000 */  sw    $t0, ($v0)
/* 0C905C 8016861C 8DCEF4D0 */  lw    $t6, -0xb30($t6)
/* 0C9060 80168620 3C0F800E */  lui   $t7, 0x800e
/* 0C9064 80168624 01E67821 */  addu  $t7, $t7, $a2
/* 0C9068 80168628 AC4E0004 */  sw    $t6, 4($v0)
/* 0C906C 8016862C 8DEF0650 */  lw    $t7, 0x650($t7)
/* 0C9070 80168630 3C18800E */  lui   $t8, 0x800e
/* 0C9074 80168634 0306C021 */  addu  $t8, $t8, $a2
/* 0C9078 80168638 11E0002D */  beqz  $t7, .L801686F0_ovl3
/* 0C907C 8016863C 00000000 */   nop   
/* 0C9080 80168640 8F185F90 */  lw    $t8, 0x5f90($t8)
/* 0C9084 80168644 2401FFFF */  li    $at, -1
/* 0C9088 80168648 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C908C 8016864C 1701000A */  bne   $t8, $at, .L80168678_ovl3
/* 0C9090 80168650 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9094 80168654 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9098 80168658 3C04800E */  lui   $a0, 0x800e
/* 0C909C 8016865C 00862021 */  addu  $a0, $a0, $a2
/* 0C90A0 80168660 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C90A4 80168664 8E25000C */  lw    $a1, 0xc($s1)
/* 0C90A8 80168668 0C03E430 */  jal   func_800F90C0
/* 0C90AC 8016866C 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C90B0 80168670 10000005 */  b     .L80168688_ovl3
/* 0C90B4 80168674 8E020000 */   lw    $v0, ($s0)
.L80168678_ovl3:
/* 0C90B8 80168678 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C90BC 8016867C 0C03E430 */  jal   func_800F90C0
/* 0C90C0 80168680 8E25000C */   lw    $a1, 0xc($s1)
/* 0C90C4 80168684 8E020000 */  lw    $v0, ($s0)
.L80168688_ovl3:
/* 0C90C8 80168688 3C0EDB02 */  lui   $t6, 0xdb02
/* 0C90CC 8016868C 240F0018 */  li    $t7, 24
/* 0C90D0 80168690 24590008 */  addiu $t9, $v0, 8
/* 0C90D4 80168694 AE190000 */  sw    $t9, ($s0)
/* 0C90D8 80168698 AC4F0004 */  sw    $t7, 4($v0)
/* 0C90DC 8016869C AC4E0000 */  sw    $t6, ($v0)
/* 0C90E0 801686A0 8E020000 */  lw    $v0, ($s0)
/* 0C90E4 801686A4 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 0C90E8 801686A8 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 0C90EC 801686AC 24580008 */  addiu $t8, $v0, 8
/* 0C90F0 801686B0 AE180000 */  sw    $t8, ($s0)
/* 0C90F4 801686B4 AC590000 */  sw    $t9, ($v0)
/* 0C90F8 801686B8 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C90FC 801686BC 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 0C9100 801686C0 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 0C9104 801686C4 25CF0008 */  addiu $t7, $t6, 8
/* 0C9108 801686C8 AC4F0004 */  sw    $t7, 4($v0)
/* 0C910C 801686CC 8E020000 */  lw    $v0, ($s0)
/* 0C9110 801686D0 24580008 */  addiu $t8, $v0, 8
/* 0C9114 801686D4 AE180000 */  sw    $t8, ($s0)
/* 0C9118 801686D8 AC590000 */  sw    $t9, ($v0)
/* 0C911C 801686DC 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C9120 801686E0 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9124 801686E4 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C9128 801686E8 25F80018 */  addiu $t8, $t7, 0x18
/* 0C912C 801686EC AE38000C */  sw    $t8, 0xc($s1)
.L801686F0_ovl3:
/* 0C9130 801686F0 0C02AC48 */  jal   func_800AB120
/* 0C9134 801686F4 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9138 801686F8 8E020000 */  lw    $v0, ($s0)
/* 0C913C 801686FC 3C0EDB02 */  lui   $t6, 0xdb02
/* 0C9140 80168700 240F0018 */  li    $t7, 24
/* 0C9144 80168704 24590008 */  addiu $t9, $v0, 8
/* 0C9148 80168708 AE190000 */  sw    $t9, ($s0)
/* 0C914C 8016870C AC4F0004 */  sw    $t7, 4($v0)
/* 0C9150 80168710 AC4E0000 */  sw    $t6, ($v0)
/* 0C9154 80168714 8E020000 */  lw    $v0, ($s0)
/* 0C9158 80168718 3C0E800C */  lui   $t6, %hi(D_800BE550) # $t6, 0x800c
/* 0C915C 8016871C 3C19DC08 */  lui   $t9, (0xDC08060A >> 16) # lui $t9, 0xdc08
/* 0C9160 80168720 24580008 */  addiu $t8, $v0, 8
/* 0C9164 80168724 AE180000 */  sw    $t8, ($s0)
/* 0C9168 80168728 3739060A */  ori   $t9, (0xDC08060A & 0xFFFF) # ori $t9, $t9, 0x60a
/* 0C916C 8016872C 25CEE550 */  addiu $t6, %lo(D_800BE550) # addiu $t6, $t6, -0x1ab0
/* 0C9170 80168730 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9174 80168734 AC590000 */  sw    $t9, ($v0)
/* 0C9178 80168738 8E020000 */  lw    $v0, ($s0)
/* 0C917C 8016873C 3C19800C */  lui   $t9, %hi(D_800BE548) # $t9, 0x800c
/* 0C9180 80168740 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C9184 80168744 244F0008 */  addiu $t7, $v0, 8
/* 0C9188 80168748 AE0F0000 */  sw    $t7, ($s0)
/* 0C918C 8016874C 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C9190 80168750 2739E548 */  addiu $t9, %lo(D_800BE548) # addiu $t9, $t9, -0x1ab8
/* 0C9194 80168754 AC590004 */  sw    $t9, 4($v0)
/* 0C9198 80168758 10000315 */  b     .L801693B0_ovl3
/* 0C919C 8016875C AC580000 */   sw    $t8, ($v0)
/* 0C91A0 80168760 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C91A4 80168764 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C91A8 80168768 8E020000 */  lw    $v0, ($s0)
/* 0C91AC 8016876C 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C91B0 80168770 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C91B4 80168774 244E0008 */  addiu $t6, $v0, 8
/* 0C91B8 80168778 AE0E0000 */  sw    $t6, ($s0)
/* 0C91BC 8016877C 3C0F800E */  lui   $t7, 0x800e
/* 0C91C0 80168780 01E67821 */  addu  $t7, $t7, $a2
/* 0C91C4 80168784 AC480000 */  sw    $t0, ($v0)
/* 0C91C8 80168788 8DEFF4D0 */  lw    $t7, -0xb30($t7)
/* 0C91CC 8016878C 3C18800E */  lui   $t8, 0x800e
/* 0C91D0 80168790 0306C021 */  addu  $t8, $t8, $a2
/* 0C91D4 80168794 AC4F0004 */  sw    $t7, 4($v0)
/* 0C91D8 80168798 8F180650 */  lw    $t8, 0x650($t8)
/* 0C91DC 8016879C 3C19800E */  lui   $t9, 0x800e
/* 0C91E0 801687A0 0326C821 */  addu  $t9, $t9, $a2
/* 0C91E4 801687A4 1300002D */  beqz  $t8, .L8016885C_ovl3
/* 0C91E8 801687A8 00000000 */   nop   
/* 0C91EC 801687AC 8F395F90 */  lw    $t9, 0x5f90($t9)
/* 0C91F0 801687B0 2401FFFF */  li    $at, -1
/* 0C91F4 801687B4 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C91F8 801687B8 1721000A */  bne   $t9, $at, .L801687E4_ovl3
/* 0C91FC 801687BC 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9200 801687C0 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9204 801687C4 3C04800E */  lui   $a0, 0x800e
/* 0C9208 801687C8 00862021 */  addu  $a0, $a0, $a2
/* 0C920C 801687CC 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9210 801687D0 8E25000C */  lw    $a1, 0xc($s1)
/* 0C9214 801687D4 0C03E430 */  jal   func_800F90C0
/* 0C9218 801687D8 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C921C 801687DC 10000005 */  b     .L801687F4_ovl3
/* 0C9220 801687E0 8E020000 */   lw    $v0, ($s0)
.L801687E4_ovl3:
/* 0C9224 801687E4 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9228 801687E8 0C03E430 */  jal   func_800F90C0
/* 0C922C 801687EC 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9230 801687F0 8E020000 */  lw    $v0, ($s0)
.L801687F4_ovl3:
/* 0C9234 801687F4 3C0FDB02 */  lui   $t7, 0xdb02
/* 0C9238 801687F8 24180018 */  li    $t8, 24
/* 0C923C 801687FC 244E0008 */  addiu $t6, $v0, 8
/* 0C9240 80168800 AE0E0000 */  sw    $t6, ($s0)
/* 0C9244 80168804 AC580004 */  sw    $t8, 4($v0)
/* 0C9248 80168808 AC4F0000 */  sw    $t7, ($v0)
/* 0C924C 8016880C 8E020000 */  lw    $v0, ($s0)
/* 0C9250 80168810 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 0C9254 80168814 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 0C9258 80168818 24590008 */  addiu $t9, $v0, 8
/* 0C925C 8016881C AE190000 */  sw    $t9, ($s0)
/* 0C9260 80168820 AC4E0000 */  sw    $t6, ($v0)
/* 0C9264 80168824 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C9268 80168828 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 0C926C 8016882C 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 0C9270 80168830 25F80008 */  addiu $t8, $t7, 8
/* 0C9274 80168834 AC580004 */  sw    $t8, 4($v0)
/* 0C9278 80168838 8E020000 */  lw    $v0, ($s0)
/* 0C927C 8016883C 24590008 */  addiu $t9, $v0, 8
/* 0C9280 80168840 AE190000 */  sw    $t9, ($s0)
/* 0C9284 80168844 AC4E0000 */  sw    $t6, ($v0)
/* 0C9288 80168848 8E2F000C */  lw    $t7, 0xc($s1)
/* 0C928C 8016884C AC4F0004 */  sw    $t7, 4($v0)
/* 0C9290 80168850 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9294 80168854 27190018 */  addiu $t9, $t8, 0x18
/* 0C9298 80168858 AE39000C */  sw    $t9, 0xc($s1)
.L8016885C_ovl3:
/* 0C929C 8016885C 0C02AC7C */  jal   func_800AB1F0
/* 0C92A0 80168860 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C92A4 80168864 8E020000 */  lw    $v0, ($s0)
/* 0C92A8 80168868 3C0FDB02 */  lui   $t7, 0xdb02
/* 0C92AC 8016886C 24180018 */  li    $t8, 24
/* 0C92B0 80168870 244E0008 */  addiu $t6, $v0, 8
/* 0C92B4 80168874 AE0E0000 */  sw    $t6, ($s0)
/* 0C92B8 80168878 AC580004 */  sw    $t8, 4($v0)
/* 0C92BC 8016887C AC4F0000 */  sw    $t7, ($v0)
/* 0C92C0 80168880 8E020000 */  lw    $v0, ($s0)
/* 0C92C4 80168884 3C0F800C */  lui   $t7, %hi(D_800BE550) # $t7, 0x800c
/* 0C92C8 80168888 3C0EDC08 */  lui   $t6, (0xDC08060A >> 16) # lui $t6, 0xdc08
/* 0C92CC 8016888C 24590008 */  addiu $t9, $v0, 8
/* 0C92D0 80168890 AE190000 */  sw    $t9, ($s0)
/* 0C92D4 80168894 35CE060A */  ori   $t6, (0xDC08060A & 0xFFFF) # ori $t6, $t6, 0x60a
/* 0C92D8 80168898 25EFE550 */  addiu $t7, %lo(D_800BE550) # addiu $t7, $t7, -0x1ab0
/* 0C92DC 8016889C AC4F0004 */  sw    $t7, 4($v0)
/* 0C92E0 801688A0 AC4E0000 */  sw    $t6, ($v0)
/* 0C92E4 801688A4 8E020000 */  lw    $v0, ($s0)
/* 0C92E8 801688A8 3C0E800C */  lui   $t6, %hi(D_800BE548) # $t6, 0x800c
/* 0C92EC 801688AC 3C19DC08 */  lui   $t9, (0xDC08090A >> 16) # lui $t9, 0xdc08
/* 0C92F0 801688B0 24580008 */  addiu $t8, $v0, 8
/* 0C92F4 801688B4 AE180000 */  sw    $t8, ($s0)
/* 0C92F8 801688B8 3739090A */  ori   $t9, (0xDC08090A & 0xFFFF) # ori $t9, $t9, 0x90a
/* 0C92FC 801688BC 25CEE548 */  addiu $t6, %lo(D_800BE548) # addiu $t6, $t6, -0x1ab8
/* 0C9300 801688C0 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9304 801688C4 100002BA */  b     .L801693B0_ovl3
/* 0C9308 801688C8 AC590000 */   sw    $t9, ($v0)
/* 0C930C 801688CC 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C9310 801688D0 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C9314 801688D4 8E020000 */  lw    $v0, ($s0)
/* 0C9318 801688D8 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C931C 801688DC 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9320 801688E0 244F0008 */  addiu $t7, $v0, 8
/* 0C9324 801688E4 AE0F0000 */  sw    $t7, ($s0)
/* 0C9328 801688E8 3C18800E */  lui   $t8, 0x800e
/* 0C932C 801688EC 0306C021 */  addu  $t8, $t8, $a2
/* 0C9330 801688F0 AC480000 */  sw    $t0, ($v0)
/* 0C9334 801688F4 8F18F4D0 */  lw    $t8, -0xb30($t8)
/* 0C9338 801688F8 3C19800E */  lui   $t9, 0x800e
/* 0C933C 801688FC 0326C821 */  addu  $t9, $t9, $a2
/* 0C9340 80168900 AC580004 */  sw    $t8, 4($v0)
/* 0C9344 80168904 8F390650 */  lw    $t9, 0x650($t9)
/* 0C9348 80168908 1320002E */  beqz  $t9, .L801689C4_ovl3
/* 0C934C 8016890C 3C0E800E */   lui   $t6, 0x800e
/* 0C9350 80168910 01C67021 */  addu  $t6, $t6, $a2
/* 0C9354 80168914 8DCE5F90 */  lw    $t6, 0x5f90($t6)
/* 0C9358 80168918 2401FFFF */  li    $at, -1
/* 0C935C 8016891C 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9360 80168920 15C1000A */  bne   $t6, $at, .L8016894C_ovl3
/* 0C9364 80168924 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9368 80168928 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C936C 8016892C 3C04800E */  lui   $a0, 0x800e
/* 0C9370 80168930 00862021 */  addu  $a0, $a0, $a2
/* 0C9374 80168934 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9378 80168938 8E25000C */  lw    $a1, 0xc($s1)
/* 0C937C 8016893C 0C03E430 */  jal   func_800F90C0
/* 0C9380 80168940 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C9384 80168944 10000005 */  b     .L8016895C_ovl3
/* 0C9388 80168948 8E020000 */   lw    $v0, ($s0)
.L8016894C_ovl3:
/* 0C938C 8016894C 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9390 80168950 0C03E430 */  jal   func_800F90C0
/* 0C9394 80168954 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9398 80168958 8E020000 */  lw    $v0, ($s0)
.L8016895C_ovl3:
/* 0C939C 8016895C 3C18DB02 */  lui   $t8, 0xdb02
/* 0C93A0 80168960 24190018 */  li    $t9, 24
/* 0C93A4 80168964 244F0008 */  addiu $t7, $v0, 8
/* 0C93A8 80168968 AE0F0000 */  sw    $t7, ($s0)
/* 0C93AC 8016896C AC590004 */  sw    $t9, 4($v0)
/* 0C93B0 80168970 AC580000 */  sw    $t8, ($v0)
/* 0C93B4 80168974 8E020000 */  lw    $v0, ($s0)
/* 0C93B8 80168978 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C93BC 8016897C 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C93C0 80168980 244E0008 */  addiu $t6, $v0, 8
/* 0C93C4 80168984 AE0E0000 */  sw    $t6, ($s0)
/* 0C93C8 80168988 AC4F0000 */  sw    $t7, ($v0)
/* 0C93CC 8016898C 8E38000C */  lw    $t8, 0xc($s1)
/* 0C93D0 80168990 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C93D4 80168994 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C93D8 80168998 27190008 */  addiu $t9, $t8, 8
/* 0C93DC 8016899C AC590004 */  sw    $t9, 4($v0)
/* 0C93E0 801689A0 8E020000 */  lw    $v0, ($s0)
/* 0C93E4 801689A4 244E0008 */  addiu $t6, $v0, 8
/* 0C93E8 801689A8 AE0E0000 */  sw    $t6, ($s0)
/* 0C93EC 801689AC AC4F0000 */  sw    $t7, ($v0)
/* 0C93F0 801689B0 8E38000C */  lw    $t8, 0xc($s1)
/* 0C93F4 801689B4 AC580004 */  sw    $t8, 4($v0)
/* 0C93F8 801689B8 8E39000C */  lw    $t9, 0xc($s1)
/* 0C93FC 801689BC 272E0018 */  addiu $t6, $t9, 0x18
/* 0C9400 801689C0 AE2E000C */  sw    $t6, 0xc($s1)
.L801689C4_ovl3:
/* 0C9404 801689C4 0C0050E9 */  jal   func_800143A4_ovl3
/* 0C9408 801689C8 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C940C 801689CC 8E020000 */  lw    $v0, ($s0)
/* 0C9410 801689D0 3C18DB02 */  lui   $t8, 0xdb02
/* 0C9414 801689D4 24190018 */  li    $t9, 24
/* 0C9418 801689D8 244F0008 */  addiu $t7, $v0, 8
/* 0C941C 801689DC AE0F0000 */  sw    $t7, ($s0)
/* 0C9420 801689E0 AC590004 */  sw    $t9, 4($v0)
/* 0C9424 801689E4 AC580000 */  sw    $t8, ($v0)
/* 0C9428 801689E8 8E020000 */  lw    $v0, ($s0)
/* 0C942C 801689EC 3C18800C */  lui   $t8, %hi(D_800BE550) # $t8, 0x800c
/* 0C9430 801689F0 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C9434 801689F4 244E0008 */  addiu $t6, $v0, 8
/* 0C9438 801689F8 AE0E0000 */  sw    $t6, ($s0)
/* 0C943C 801689FC 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C9440 80168A00 2718E550 */  addiu $t8, %lo(D_800BE550) # addiu $t8, $t8, -0x1ab0
/* 0C9444 80168A04 AC580004 */  sw    $t8, 4($v0)
/* 0C9448 80168A08 AC4F0000 */  sw    $t7, ($v0)
/* 0C944C 80168A0C 8E020000 */  lw    $v0, ($s0)
/* 0C9450 80168A10 3C0F800C */  lui   $t7, %hi(D_800BE548) # $t7, 0x800c
/* 0C9454 80168A14 3C0EDC08 */  lui   $t6, (0xDC08090A >> 16) # lui $t6, 0xdc08
/* 0C9458 80168A18 24590008 */  addiu $t9, $v0, 8
/* 0C945C 80168A1C AE190000 */  sw    $t9, ($s0)
/* 0C9460 80168A20 35CE090A */  ori   $t6, (0xDC08090A & 0xFFFF) # ori $t6, $t6, 0x90a
/* 0C9464 80168A24 25EFE548 */  addiu $t7, %lo(D_800BE548) # addiu $t7, $t7, -0x1ab8
/* 0C9468 80168A28 AC4F0004 */  sw    $t7, 4($v0)
/* 0C946C 80168A2C 10000260 */  b     .L801693B0_ovl3
/* 0C9470 80168A30 AC4E0000 */   sw    $t6, ($v0)
/* 0C9474 80168A34 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C9478 80168A38 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C947C 80168A3C 8E020000 */  lw    $v0, ($s0)
/* 0C9480 80168A40 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C9484 80168A44 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9488 80168A48 24580008 */  addiu $t8, $v0, 8
/* 0C948C 80168A4C AE180000 */  sw    $t8, ($s0)
/* 0C9490 80168A50 3C19800E */  lui   $t9, 0x800e
/* 0C9494 80168A54 0326C821 */  addu  $t9, $t9, $a2
/* 0C9498 80168A58 AC480000 */  sw    $t0, ($v0)
/* 0C949C 80168A5C 8F39F4D0 */  lw    $t9, -0xb30($t9)
/* 0C94A0 80168A60 3C0E800E */  lui   $t6, 0x800e
/* 0C94A4 80168A64 01C67021 */  addu  $t6, $t6, $a2
/* 0C94A8 80168A68 AC590004 */  sw    $t9, 4($v0)
/* 0C94AC 80168A6C 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C94B0 80168A70 11C0002E */  beqz  $t6, .L80168B2C_ovl3
/* 0C94B4 80168A74 3C0F800E */   lui   $t7, 0x800e
/* 0C94B8 80168A78 01E67821 */  addu  $t7, $t7, $a2
/* 0C94BC 80168A7C 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 0C94C0 80168A80 2401FFFF */  li    $at, -1
/* 0C94C4 80168A84 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C94C8 80168A88 15E1000A */  bne   $t7, $at, .L80168AB4_ovl3
/* 0C94CC 80168A8C 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C94D0 80168A90 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C94D4 80168A94 3C04800E */  lui   $a0, 0x800e
/* 0C94D8 80168A98 00862021 */  addu  $a0, $a0, $a2
/* 0C94DC 80168A9C 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C94E0 80168AA0 8E25000C */  lw    $a1, 0xc($s1)
/* 0C94E4 80168AA4 0C03E430 */  jal   func_800F90C0
/* 0C94E8 80168AA8 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C94EC 80168AAC 10000005 */  b     .L80168AC4_ovl3
/* 0C94F0 80168AB0 8E020000 */   lw    $v0, ($s0)
.L80168AB4_ovl3:
/* 0C94F4 80168AB4 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C94F8 80168AB8 0C03E430 */  jal   func_800F90C0
/* 0C94FC 80168ABC 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9500 80168AC0 8E020000 */  lw    $v0, ($s0)
.L80168AC4_ovl3:
/* 0C9504 80168AC4 3C19DB02 */  lui   $t9, 0xdb02
/* 0C9508 80168AC8 240E0018 */  li    $t6, 24
/* 0C950C 80168ACC 24580008 */  addiu $t8, $v0, 8
/* 0C9510 80168AD0 AE180000 */  sw    $t8, ($s0)
/* 0C9514 80168AD4 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9518 80168AD8 AC590000 */  sw    $t9, ($v0)
/* 0C951C 80168ADC 8E020000 */  lw    $v0, ($s0)
/* 0C9520 80168AE0 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C9524 80168AE4 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C9528 80168AE8 244F0008 */  addiu $t7, $v0, 8
/* 0C952C 80168AEC AE0F0000 */  sw    $t7, ($s0)
/* 0C9530 80168AF0 AC580000 */  sw    $t8, ($v0)
/* 0C9534 80168AF4 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9538 80168AF8 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C953C 80168AFC 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C9540 80168B00 272E0008 */  addiu $t6, $t9, 8
/* 0C9544 80168B04 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9548 80168B08 8E020000 */  lw    $v0, ($s0)
/* 0C954C 80168B0C 244F0008 */  addiu $t7, $v0, 8
/* 0C9550 80168B10 AE0F0000 */  sw    $t7, ($s0)
/* 0C9554 80168B14 AC580000 */  sw    $t8, ($v0)
/* 0C9558 80168B18 8E39000C */  lw    $t9, 0xc($s1)
/* 0C955C 80168B1C AC590004 */  sw    $t9, 4($v0)
/* 0C9560 80168B20 8E2E000C */  lw    $t6, 0xc($s1)
/* 0C9564 80168B24 25CF0018 */  addiu $t7, $t6, 0x18
/* 0C9568 80168B28 AE2F000C */  sw    $t7, 0xc($s1)
.L80168B2C_ovl3:
/* 0C956C 80168B2C 0C005617 */  jal   func_8001585C_ovl3
/* 0C9570 80168B30 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9574 80168B34 8E020000 */  lw    $v0, ($s0)
/* 0C9578 80168B38 3C19DB02 */  lui   $t9, 0xdb02
/* 0C957C 80168B3C 240E0018 */  li    $t6, 24
/* 0C9580 80168B40 24580008 */  addiu $t8, $v0, 8
/* 0C9584 80168B44 AE180000 */  sw    $t8, ($s0)
/* 0C9588 80168B48 AC4E0004 */  sw    $t6, 4($v0)
/* 0C958C 80168B4C AC590000 */  sw    $t9, ($v0)
/* 0C9590 80168B50 8E020000 */  lw    $v0, ($s0)
/* 0C9594 80168B54 3C19800C */  lui   $t9, %hi(D_800BE550) # $t9, 0x800c
/* 0C9598 80168B58 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C959C 80168B5C 244F0008 */  addiu $t7, $v0, 8
/* 0C95A0 80168B60 AE0F0000 */  sw    $t7, ($s0)
/* 0C95A4 80168B64 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C95A8 80168B68 2739E550 */  addiu $t9, %lo(D_800BE550) # addiu $t9, $t9, -0x1ab0
/* 0C95AC 80168B6C AC590004 */  sw    $t9, 4($v0)
/* 0C95B0 80168B70 AC580000 */  sw    $t8, ($v0)
/* 0C95B4 80168B74 8E020000 */  lw    $v0, ($s0)
/* 0C95B8 80168B78 3C18800C */  lui   $t8, %hi(D_800BE548) # $t8, 0x800c
/* 0C95BC 80168B7C 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C95C0 80168B80 244E0008 */  addiu $t6, $v0, 8
/* 0C95C4 80168B84 AE0E0000 */  sw    $t6, ($s0)
/* 0C95C8 80168B88 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C95CC 80168B8C 2718E548 */  addiu $t8, %lo(D_800BE548) # addiu $t8, $t8, -0x1ab8
/* 0C95D0 80168B90 AC580004 */  sw    $t8, 4($v0)
/* 0C95D4 80168B94 10000206 */  b     .L801693B0_ovl3
/* 0C95D8 80168B98 AC4F0000 */   sw    $t7, ($v0)
/* 0C95DC 80168B9C 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C95E0 80168BA0 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C95E4 80168BA4 8E020000 */  lw    $v0, ($s0)
/* 0C95E8 80168BA8 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C95EC 80168BAC 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0C95F0 80168BB0 24590008 */  addiu $t9, $v0, 8
/* 0C95F4 80168BB4 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C95F8 80168BB8 AE190000 */  sw    $t9, ($s0)
/* 0C95FC 80168BBC 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0C9600 80168BC0 00CE2021 */  addu  $a0, $a2, $t6
/* 0C9604 80168BC4 AC480000 */  sw    $t0, ($v0)
/* 0C9608 80168BC8 8C8F0000 */  lw    $t7, ($a0)
/* 0C960C 80168BCC 3C0E800E */  lui   $t6, 0x800e
/* 0C9610 80168BD0 01C67021 */  addu  $t6, $t6, $a2
/* 0C9614 80168BD4 AC4F0004 */  sw    $t7, 4($v0)
/* 0C9618 80168BD8 8E030004 */  lw    $v1, 4($s0)
/* 0C961C 80168BDC 3C0F800E */  lui   $t7, 0x800e
/* 0C9620 80168BE0 01E67821 */  addu  $t7, $t7, $a2
/* 0C9624 80168BE4 24780008 */  addiu $t8, $v1, 8
/* 0C9628 80168BE8 AE180004 */  sw    $t8, 4($s0)
/* 0C962C 80168BEC AC680000 */  sw    $t0, ($v1)
/* 0C9630 80168BF0 8C990000 */  lw    $t9, ($a0)
/* 0C9634 80168BF4 AC790004 */  sw    $t9, 4($v1)
/* 0C9638 80168BF8 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C963C 80168BFC 11C0003E */  beqz  $t6, .L80168CF8_ovl3
/* 0C9640 80168C00 00000000 */   nop   
/* 0C9644 80168C04 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 0C9648 80168C08 2401FFFF */  li    $at, -1
/* 0C964C 80168C0C 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9650 80168C10 15E1000A */  bne   $t7, $at, .L80168C3C_ovl3
/* 0C9654 80168C14 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9658 80168C18 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C965C 80168C1C 3C04800E */  lui   $a0, 0x800e
/* 0C9660 80168C20 00862021 */  addu  $a0, $a0, $a2
/* 0C9664 80168C24 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9668 80168C28 8E25000C */  lw    $a1, 0xc($s1)
/* 0C966C 80168C2C 0C03E430 */  jal   func_800F90C0
/* 0C9670 80168C30 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C9674 80168C34 10000005 */  b     .L80168C4C_ovl3
/* 0C9678 80168C38 8E020000 */   lw    $v0, ($s0)
.L80168C3C_ovl3:
/* 0C967C 80168C3C 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9680 80168C40 0C03E430 */  jal   func_800F90C0
/* 0C9684 80168C44 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9688 80168C48 8E020000 */  lw    $v0, ($s0)
.L80168C4C_ovl3:
/* 0C968C 80168C4C 3C19DB02 */  lui   $t9, 0xdb02
/* 0C9690 80168C50 240E0018 */  li    $t6, 24
/* 0C9694 80168C54 24580008 */  addiu $t8, $v0, 8
/* 0C9698 80168C58 AE180000 */  sw    $t8, ($s0)
/* 0C969C 80168C5C AC4E0004 */  sw    $t6, 4($v0)
/* 0C96A0 80168C60 AC590000 */  sw    $t9, ($v0)
/* 0C96A4 80168C64 8E020000 */  lw    $v0, ($s0)
/* 0C96A8 80168C68 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C96AC 80168C6C 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C96B0 80168C70 244F0008 */  addiu $t7, $v0, 8
/* 0C96B4 80168C74 AE0F0000 */  sw    $t7, ($s0)
/* 0C96B8 80168C78 AC580000 */  sw    $t8, ($v0)
/* 0C96BC 80168C7C 8E39000C */  lw    $t9, 0xc($s1)
/* 0C96C0 80168C80 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C96C4 80168C84 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C96C8 80168C88 272E0008 */  addiu $t6, $t9, 8
/* 0C96CC 80168C8C AC4E0004 */  sw    $t6, 4($v0)
/* 0C96D0 80168C90 8E020000 */  lw    $v0, ($s0)
/* 0C96D4 80168C94 244F0008 */  addiu $t7, $v0, 8
/* 0C96D8 80168C98 AE0F0000 */  sw    $t7, ($s0)
/* 0C96DC 80168C9C AC580000 */  sw    $t8, ($v0)
/* 0C96E0 80168CA0 8E39000C */  lw    $t9, 0xc($s1)
/* 0C96E4 80168CA4 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C96E8 80168CA8 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C96EC 80168CAC AC590004 */  sw    $t9, 4($v0)
/* 0C96F0 80168CB0 8E030004 */  lw    $v1, 4($s0)
/* 0C96F4 80168CB4 246E0008 */  addiu $t6, $v1, 8
/* 0C96F8 80168CB8 AE0E0004 */  sw    $t6, 4($s0)
/* 0C96FC 80168CBC AC6F0000 */  sw    $t7, ($v1)
/* 0C9700 80168CC0 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9704 80168CC4 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C9708 80168CC8 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C970C 80168CCC 27190008 */  addiu $t9, $t8, 8
/* 0C9710 80168CD0 AC790004 */  sw    $t9, 4($v1)
/* 0C9714 80168CD4 8E030004 */  lw    $v1, 4($s0)
/* 0C9718 80168CD8 246E0008 */  addiu $t6, $v1, 8
/* 0C971C 80168CDC AE0E0004 */  sw    $t6, 4($s0)
/* 0C9720 80168CE0 AC6F0000 */  sw    $t7, ($v1)
/* 0C9724 80168CE4 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9728 80168CE8 AC780004 */  sw    $t8, 4($v1)
/* 0C972C 80168CEC 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9730 80168CF0 272E0018 */  addiu $t6, $t9, 0x18
/* 0C9734 80168CF4 AE2E000C */  sw    $t6, 0xc($s1)
.L80168CF8_ovl3:
/* 0C9738 80168CF8 0C02AC5D */  jal   func_800AB174
/* 0C973C 80168CFC 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9740 80168D00 8E020000 */  lw    $v0, ($s0)
/* 0C9744 80168D04 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C9748 80168D08 24110018 */  li    $s1, 24
/* 0C974C 80168D0C 244F0008 */  addiu $t7, $v0, 8
/* 0C9750 80168D10 AE0F0000 */  sw    $t7, ($s0)
/* 0C9754 80168D14 AC510004 */  sw    $s1, 4($v0)
/* 0C9758 80168D18 AC5F0000 */  sw    $ra, ($v0)
/* 0C975C 80168D1C 8E020000 */  lw    $v0, ($s0)
/* 0C9760 80168D20 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C9764 80168D24 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C9768 80168D28 24580008 */  addiu $t8, $v0, 8
/* 0C976C 80168D2C AE180000 */  sw    $t8, ($s0)
/* 0C9770 80168D30 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C9774 80168D34 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C9778 80168D38 AC440004 */  sw    $a0, 4($v0)
/* 0C977C 80168D3C AC4C0000 */  sw    $t4, ($v0)
/* 0C9780 80168D40 8E020000 */  lw    $v0, ($s0)
/* 0C9784 80168D44 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C9788 80168D48 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C978C 80168D4C 24590008 */  addiu $t9, $v0, 8
/* 0C9790 80168D50 AE190000 */  sw    $t9, ($s0)
/* 0C9794 80168D54 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C9798 80168D58 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C979C 80168D5C AC450004 */  sw    $a1, 4($v0)
/* 0C97A0 80168D60 AC4D0000 */  sw    $t5, ($v0)
/* 0C97A4 80168D64 8E030004 */  lw    $v1, 4($s0)
/* 0C97A8 80168D68 246E0008 */  addiu $t6, $v1, 8
/* 0C97AC 80168D6C AE0E0004 */  sw    $t6, 4($s0)
/* 0C97B0 80168D70 AC710004 */  sw    $s1, 4($v1)
/* 0C97B4 80168D74 AC7F0000 */  sw    $ra, ($v1)
/* 0C97B8 80168D78 8E030004 */  lw    $v1, 4($s0)
/* 0C97BC 80168D7C 246F0008 */  addiu $t7, $v1, 8
/* 0C97C0 80168D80 AE0F0004 */  sw    $t7, 4($s0)
/* 0C97C4 80168D84 AC640004 */  sw    $a0, 4($v1)
/* 0C97C8 80168D88 AC6C0000 */  sw    $t4, ($v1)
/* 0C97CC 80168D8C 8E030004 */  lw    $v1, 4($s0)
/* 0C97D0 80168D90 24780008 */  addiu $t8, $v1, 8
/* 0C97D4 80168D94 AE180004 */  sw    $t8, 4($s0)
/* 0C97D8 80168D98 AC650004 */  sw    $a1, 4($v1)
/* 0C97DC 80168D9C 10000184 */  b     .L801693B0_ovl3
/* 0C97E0 80168DA0 AC6D0000 */   sw    $t5, ($v1)
/* 0C97E4 80168DA4 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C97E8 80168DA8 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C97EC 80168DAC 8E020000 */  lw    $v0, ($s0)
/* 0C97F0 80168DB0 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C97F4 80168DB4 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0C97F8 80168DB8 24590008 */  addiu $t9, $v0, 8
/* 0C97FC 80168DBC 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9800 80168DC0 AE190000 */  sw    $t9, ($s0)
/* 0C9804 80168DC4 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0C9808 80168DC8 00CE2021 */  addu  $a0, $a2, $t6
/* 0C980C 80168DCC AC480000 */  sw    $t0, ($v0)
/* 0C9810 80168DD0 8C8F0000 */  lw    $t7, ($a0)
/* 0C9814 80168DD4 3C0E800E */  lui   $t6, 0x800e
/* 0C9818 80168DD8 01C67021 */  addu  $t6, $t6, $a2
/* 0C981C 80168DDC AC4F0004 */  sw    $t7, 4($v0)
/* 0C9820 80168DE0 8E030004 */  lw    $v1, 4($s0)
/* 0C9824 80168DE4 3C0F800E */  lui   $t7, 0x800e
/* 0C9828 80168DE8 01E67821 */  addu  $t7, $t7, $a2
/* 0C982C 80168DEC 24780008 */  addiu $t8, $v1, 8
/* 0C9830 80168DF0 AE180004 */  sw    $t8, 4($s0)
/* 0C9834 80168DF4 AC680000 */  sw    $t0, ($v1)
/* 0C9838 80168DF8 8C990000 */  lw    $t9, ($a0)
/* 0C983C 80168DFC AC790004 */  sw    $t9, 4($v1)
/* 0C9840 80168E00 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C9844 80168E04 11C0003E */  beqz  $t6, .L80168F00_ovl3
/* 0C9848 80168E08 00000000 */   nop   
/* 0C984C 80168E0C 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 0C9850 80168E10 2401FFFF */  li    $at, -1
/* 0C9854 80168E14 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9858 80168E18 15E1000A */  bne   $t7, $at, .L80168E44_ovl3
/* 0C985C 80168E1C 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9860 80168E20 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9864 80168E24 3C04800E */  lui   $a0, 0x800e
/* 0C9868 80168E28 00862021 */  addu  $a0, $a0, $a2
/* 0C986C 80168E2C 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9870 80168E30 8E25000C */  lw    $a1, 0xc($s1)
/* 0C9874 80168E34 0C03E430 */  jal   func_800F90C0
/* 0C9878 80168E38 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C987C 80168E3C 10000005 */  b     .L80168E54_ovl3
/* 0C9880 80168E40 8E020000 */   lw    $v0, ($s0)
.L80168E44_ovl3:
/* 0C9884 80168E44 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9888 80168E48 0C03E430 */  jal   func_800F90C0
/* 0C988C 80168E4C 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9890 80168E50 8E020000 */  lw    $v0, ($s0)
.L80168E54_ovl3:
/* 0C9894 80168E54 3C19DB02 */  lui   $t9, 0xdb02
/* 0C9898 80168E58 240E0018 */  li    $t6, 24
/* 0C989C 80168E5C 24580008 */  addiu $t8, $v0, 8
/* 0C98A0 80168E60 AE180000 */  sw    $t8, ($s0)
/* 0C98A4 80168E64 AC4E0004 */  sw    $t6, 4($v0)
/* 0C98A8 80168E68 AC590000 */  sw    $t9, ($v0)
/* 0C98AC 80168E6C 8E020000 */  lw    $v0, ($s0)
/* 0C98B0 80168E70 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C98B4 80168E74 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C98B8 80168E78 244F0008 */  addiu $t7, $v0, 8
/* 0C98BC 80168E7C AE0F0000 */  sw    $t7, ($s0)
/* 0C98C0 80168E80 AC580000 */  sw    $t8, ($v0)
/* 0C98C4 80168E84 8E39000C */  lw    $t9, 0xc($s1)
/* 0C98C8 80168E88 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C98CC 80168E8C 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C98D0 80168E90 272E0008 */  addiu $t6, $t9, 8
/* 0C98D4 80168E94 AC4E0004 */  sw    $t6, 4($v0)
/* 0C98D8 80168E98 8E020000 */  lw    $v0, ($s0)
/* 0C98DC 80168E9C 244F0008 */  addiu $t7, $v0, 8
/* 0C98E0 80168EA0 AE0F0000 */  sw    $t7, ($s0)
/* 0C98E4 80168EA4 AC580000 */  sw    $t8, ($v0)
/* 0C98E8 80168EA8 8E39000C */  lw    $t9, 0xc($s1)
/* 0C98EC 80168EAC 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C98F0 80168EB0 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C98F4 80168EB4 AC590004 */  sw    $t9, 4($v0)
/* 0C98F8 80168EB8 8E030004 */  lw    $v1, 4($s0)
/* 0C98FC 80168EBC 246E0008 */  addiu $t6, $v1, 8
/* 0C9900 80168EC0 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9904 80168EC4 AC6F0000 */  sw    $t7, ($v1)
/* 0C9908 80168EC8 8E38000C */  lw    $t8, 0xc($s1)
/* 0C990C 80168ECC 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C9910 80168ED0 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C9914 80168ED4 27190008 */  addiu $t9, $t8, 8
/* 0C9918 80168ED8 AC790004 */  sw    $t9, 4($v1)
/* 0C991C 80168EDC 8E030004 */  lw    $v1, 4($s0)
/* 0C9920 80168EE0 246E0008 */  addiu $t6, $v1, 8
/* 0C9924 80168EE4 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9928 80168EE8 AC6F0000 */  sw    $t7, ($v1)
/* 0C992C 80168EEC 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9930 80168EF0 AC780004 */  sw    $t8, 4($v1)
/* 0C9934 80168EF4 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9938 80168EF8 272E0018 */  addiu $t6, $t9, 0x18
/* 0C993C 80168EFC AE2E000C */  sw    $t6, 0xc($s1)
.L80168F00_ovl3:
/* 0C9940 80168F00 0C02AC91 */  jal   func_800AB244
/* 0C9944 80168F04 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9948 80168F08 8E020000 */  lw    $v0, ($s0)
/* 0C994C 80168F0C 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C9950 80168F10 24110018 */  li    $s1, 24
/* 0C9954 80168F14 244F0008 */  addiu $t7, $v0, 8
/* 0C9958 80168F18 AE0F0000 */  sw    $t7, ($s0)
/* 0C995C 80168F1C AC510004 */  sw    $s1, 4($v0)
/* 0C9960 80168F20 AC5F0000 */  sw    $ra, ($v0)
/* 0C9964 80168F24 8E020000 */  lw    $v0, ($s0)
/* 0C9968 80168F28 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C996C 80168F2C 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C9970 80168F30 24580008 */  addiu $t8, $v0, 8
/* 0C9974 80168F34 AE180000 */  sw    $t8, ($s0)
/* 0C9978 80168F38 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C997C 80168F3C 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C9980 80168F40 AC440004 */  sw    $a0, 4($v0)
/* 0C9984 80168F44 AC4C0000 */  sw    $t4, ($v0)
/* 0C9988 80168F48 8E020000 */  lw    $v0, ($s0)
/* 0C998C 80168F4C 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C9990 80168F50 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C9994 80168F54 24590008 */  addiu $t9, $v0, 8
/* 0C9998 80168F58 AE190000 */  sw    $t9, ($s0)
/* 0C999C 80168F5C 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C99A0 80168F60 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C99A4 80168F64 AC450004 */  sw    $a1, 4($v0)
/* 0C99A8 80168F68 AC4D0000 */  sw    $t5, ($v0)
/* 0C99AC 80168F6C 8E030004 */  lw    $v1, 4($s0)
/* 0C99B0 80168F70 246E0008 */  addiu $t6, $v1, 8
/* 0C99B4 80168F74 AE0E0004 */  sw    $t6, 4($s0)
/* 0C99B8 80168F78 AC710004 */  sw    $s1, 4($v1)
/* 0C99BC 80168F7C AC7F0000 */  sw    $ra, ($v1)
/* 0C99C0 80168F80 8E030004 */  lw    $v1, 4($s0)
/* 0C99C4 80168F84 246F0008 */  addiu $t7, $v1, 8
/* 0C99C8 80168F88 AE0F0004 */  sw    $t7, 4($s0)
/* 0C99CC 80168F8C AC640004 */  sw    $a0, 4($v1)
/* 0C99D0 80168F90 AC6C0000 */  sw    $t4, ($v1)
/* 0C99D4 80168F94 8E030004 */  lw    $v1, 4($s0)
/* 0C99D8 80168F98 24780008 */  addiu $t8, $v1, 8
/* 0C99DC 80168F9C AE180004 */  sw    $t8, 4($s0)
/* 0C99E0 80168FA0 AC650004 */  sw    $a1, 4($v1)
/* 0C99E4 80168FA4 10000102 */  b     .L801693B0_ovl3
/* 0C99E8 80168FA8 AC6D0000 */   sw    $t5, ($v1)
/* 0C99EC 80168FAC 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C99F0 80168FB0 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C99F4 80168FB4 8E020000 */  lw    $v0, ($s0)
/* 0C99F8 80168FB8 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C99FC 80168FBC 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0C9A00 80168FC0 24590008 */  addiu $t9, $v0, 8
/* 0C9A04 80168FC4 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9A08 80168FC8 AE190000 */  sw    $t9, ($s0)
/* 0C9A0C 80168FCC 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0C9A10 80168FD0 00CE2021 */  addu  $a0, $a2, $t6
/* 0C9A14 80168FD4 AC480000 */  sw    $t0, ($v0)
/* 0C9A18 80168FD8 8C8F0000 */  lw    $t7, ($a0)
/* 0C9A1C 80168FDC 3C0E800E */  lui   $t6, 0x800e
/* 0C9A20 80168FE0 01C67021 */  addu  $t6, $t6, $a2
/* 0C9A24 80168FE4 AC4F0004 */  sw    $t7, 4($v0)
/* 0C9A28 80168FE8 8E030004 */  lw    $v1, 4($s0)
/* 0C9A2C 80168FEC 24780008 */  addiu $t8, $v1, 8
/* 0C9A30 80168FF0 AE180004 */  sw    $t8, 4($s0)
/* 0C9A34 80168FF4 AC680000 */  sw    $t0, ($v1)
/* 0C9A38 80168FF8 8C990000 */  lw    $t9, ($a0)
/* 0C9A3C 80168FFC AC790004 */  sw    $t9, 4($v1)
/* 0C9A40 80169000 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C9A44 80169004 11C0003F */  beqz  $t6, .L80169104_ovl3
/* 0C9A48 80169008 3C0F800E */   lui   $t7, 0x800e
/* 0C9A4C 8016900C 01E67821 */  addu  $t7, $t7, $a2
/* 0C9A50 80169010 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 0C9A54 80169014 2401FFFF */  li    $at, -1
/* 0C9A58 80169018 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9A5C 8016901C 15E1000A */  bne   $t7, $at, .L80169048_ovl3
/* 0C9A60 80169020 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9A64 80169024 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9A68 80169028 3C04800E */  lui   $a0, 0x800e
/* 0C9A6C 8016902C 00862021 */  addu  $a0, $a0, $a2
/* 0C9A70 80169030 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9A74 80169034 8E25000C */  lw    $a1, 0xc($s1)
/* 0C9A78 80169038 0C03E430 */  jal   func_800F90C0
/* 0C9A7C 8016903C 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C9A80 80169040 10000005 */  b     .L80169058_ovl3
/* 0C9A84 80169044 8E020000 */   lw    $v0, ($s0)
.L80169048_ovl3:
/* 0C9A88 80169048 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9A8C 8016904C 0C03E430 */  jal   func_800F90C0
/* 0C9A90 80169050 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9A94 80169054 8E020000 */  lw    $v0, ($s0)
.L80169058_ovl3:
/* 0C9A98 80169058 3C19DB02 */  lui   $t9, 0xdb02
/* 0C9A9C 8016905C 240E0018 */  li    $t6, 24
/* 0C9AA0 80169060 24580008 */  addiu $t8, $v0, 8
/* 0C9AA4 80169064 AE180000 */  sw    $t8, ($s0)
/* 0C9AA8 80169068 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9AAC 8016906C AC590000 */  sw    $t9, ($v0)
/* 0C9AB0 80169070 8E020000 */  lw    $v0, ($s0)
/* 0C9AB4 80169074 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C9AB8 80169078 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C9ABC 8016907C 244F0008 */  addiu $t7, $v0, 8
/* 0C9AC0 80169080 AE0F0000 */  sw    $t7, ($s0)
/* 0C9AC4 80169084 AC580000 */  sw    $t8, ($v0)
/* 0C9AC8 80169088 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9ACC 8016908C 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C9AD0 80169090 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C9AD4 80169094 272E0008 */  addiu $t6, $t9, 8
/* 0C9AD8 80169098 AC4E0004 */  sw    $t6, 4($v0)
/* 0C9ADC 8016909C 8E020000 */  lw    $v0, ($s0)
/* 0C9AE0 801690A0 244F0008 */  addiu $t7, $v0, 8
/* 0C9AE4 801690A4 AE0F0000 */  sw    $t7, ($s0)
/* 0C9AE8 801690A8 AC580000 */  sw    $t8, ($v0)
/* 0C9AEC 801690AC 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9AF0 801690B0 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C9AF4 801690B4 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C9AF8 801690B8 AC590004 */  sw    $t9, 4($v0)
/* 0C9AFC 801690BC 8E030004 */  lw    $v1, 4($s0)
/* 0C9B00 801690C0 246E0008 */  addiu $t6, $v1, 8
/* 0C9B04 801690C4 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9B08 801690C8 AC6F0000 */  sw    $t7, ($v1)
/* 0C9B0C 801690CC 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9B10 801690D0 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C9B14 801690D4 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C9B18 801690D8 27190008 */  addiu $t9, $t8, 8
/* 0C9B1C 801690DC AC790004 */  sw    $t9, 4($v1)
/* 0C9B20 801690E0 8E030004 */  lw    $v1, 4($s0)
/* 0C9B24 801690E4 246E0008 */  addiu $t6, $v1, 8
/* 0C9B28 801690E8 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9B2C 801690EC AC6F0000 */  sw    $t7, ($v1)
/* 0C9B30 801690F0 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9B34 801690F4 AC780004 */  sw    $t8, 4($v1)
/* 0C9B38 801690F8 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9B3C 801690FC 272E0018 */  addiu $t6, $t9, 0x18
/* 0C9B40 80169100 AE2E000C */  sw    $t6, 0xc($s1)
.L80169104_ovl3:
/* 0C9B44 80169104 0C0052B5 */  jal   func_80014AD4_ovl3
/* 0C9B48 80169108 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9B4C 8016910C 8E020000 */  lw    $v0, ($s0)
/* 0C9B50 80169110 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C9B54 80169114 24110018 */  li    $s1, 24
/* 0C9B58 80169118 244F0008 */  addiu $t7, $v0, 8
/* 0C9B5C 8016911C AE0F0000 */  sw    $t7, ($s0)
/* 0C9B60 80169120 AC510004 */  sw    $s1, 4($v0)
/* 0C9B64 80169124 AC5F0000 */  sw    $ra, ($v0)
/* 0C9B68 80169128 8E020000 */  lw    $v0, ($s0)
/* 0C9B6C 8016912C 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C9B70 80169130 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C9B74 80169134 24580008 */  addiu $t8, $v0, 8
/* 0C9B78 80169138 AE180000 */  sw    $t8, ($s0)
/* 0C9B7C 8016913C 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C9B80 80169140 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C9B84 80169144 AC440004 */  sw    $a0, 4($v0)
/* 0C9B88 80169148 AC4C0000 */  sw    $t4, ($v0)
/* 0C9B8C 8016914C 8E020000 */  lw    $v0, ($s0)
/* 0C9B90 80169150 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C9B94 80169154 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C9B98 80169158 24590008 */  addiu $t9, $v0, 8
/* 0C9B9C 8016915C AE190000 */  sw    $t9, ($s0)
/* 0C9BA0 80169160 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C9BA4 80169164 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C9BA8 80169168 AC450004 */  sw    $a1, 4($v0)
/* 0C9BAC 8016916C AC4D0000 */  sw    $t5, ($v0)
/* 0C9BB0 80169170 8E030004 */  lw    $v1, 4($s0)
/* 0C9BB4 80169174 246E0008 */  addiu $t6, $v1, 8
/* 0C9BB8 80169178 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9BBC 8016917C AC710004 */  sw    $s1, 4($v1)
/* 0C9BC0 80169180 AC7F0000 */  sw    $ra, ($v1)
/* 0C9BC4 80169184 8E030004 */  lw    $v1, 4($s0)
/* 0C9BC8 80169188 246F0008 */  addiu $t7, $v1, 8
/* 0C9BCC 8016918C AE0F0004 */  sw    $t7, 4($s0)
/* 0C9BD0 80169190 AC640004 */  sw    $a0, 4($v1)
/* 0C9BD4 80169194 AC6C0000 */  sw    $t4, ($v1)
/* 0C9BD8 80169198 8E030004 */  lw    $v1, 4($s0)
/* 0C9BDC 8016919C 24780008 */  addiu $t8, $v1, 8
/* 0C9BE0 801691A0 AE180004 */  sw    $t8, 4($s0)
/* 0C9BE4 801691A4 AC650004 */  sw    $a1, 4($v1)
/* 0C9BE8 801691A8 10000081 */  b     .L801693B0_ovl3
/* 0C9BEC 801691AC AC6D0000 */   sw    $t5, ($v1)
/* 0C9BF0 801691B0 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 0C9BF4 801691B4 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 0C9BF8 801691B8 8E020000 */  lw    $v0, ($s0)
/* 0C9BFC 801691BC 3C08DB06 */  lui   $t0, (0xDB060010 >> 16) # lui $t0, 0xdb06
/* 0C9C00 801691C0 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0C9C04 801691C4 24590008 */  addiu $t9, $v0, 8
/* 0C9C08 801691C8 35080010 */  ori   $t0, (0xDB060010 & 0xFFFF) # ori $t0, $t0, 0x10
/* 0C9C0C 801691CC AE190000 */  sw    $t9, ($s0)
/* 0C9C10 801691D0 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0C9C14 801691D4 00CE2021 */  addu  $a0, $a2, $t6
/* 0C9C18 801691D8 AC480000 */  sw    $t0, ($v0)
/* 0C9C1C 801691DC 8C8F0000 */  lw    $t7, ($a0)
/* 0C9C20 801691E0 3C0E800E */  lui   $t6, 0x800e
/* 0C9C24 801691E4 01C67021 */  addu  $t6, $t6, $a2
/* 0C9C28 801691E8 AC4F0004 */  sw    $t7, 4($v0)
/* 0C9C2C 801691EC 8E030004 */  lw    $v1, 4($s0)
/* 0C9C30 801691F0 24780008 */  addiu $t8, $v1, 8
/* 0C9C34 801691F4 AE180004 */  sw    $t8, 4($s0)
/* 0C9C38 801691F8 AC680000 */  sw    $t0, ($v1)
/* 0C9C3C 801691FC 8C990000 */  lw    $t9, ($a0)
/* 0C9C40 80169200 AC790004 */  sw    $t9, 4($v1)
/* 0C9C44 80169204 8DCE0650 */  lw    $t6, 0x650($t6)
/* 0C9C48 80169208 11C0003F */  beqz  $t6, .L80169308_ovl3
/* 0C9C4C 8016920C 3C0F800E */   lui   $t7, 0x800e
/* 0C9C50 80169210 01E67821 */  addu  $t7, $t7, $a2
/* 0C9C54 80169214 8DEF5F90 */  lw    $t7, 0x5f90($t7)
/* 0C9C58 80169218 2401FFFF */  li    $at, -1
/* 0C9C5C 8016921C 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9C60 80169220 15E1000A */  bne   $t7, $at, .L8016924C_ovl3
/* 0C9C64 80169224 2631A3F8 */   addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9C68 80169228 3C118005 */  lui   $s1, %hi(gDynamicBuffer1) # $s1, 0x8005
/* 0C9C6C 8016922C 3C04800E */  lui   $a0, 0x800e
/* 0C9C70 80169230 00862021 */  addu  $a0, $a0, $a2
/* 0C9C74 80169234 2631A3F8 */  addiu $s1, %lo(gDynamicBuffer1) # addiu $s1, $s1, -0x5c08
/* 0C9C78 80169238 8E25000C */  lw    $a1, 0xc($s1)
/* 0C9C7C 8016923C 0C03E430 */  jal   func_800F90C0
/* 0C9C80 80169240 8C840D50 */   lw    $a0, 0xd50($a0)
/* 0C9C84 80169244 10000005 */  b     .L8016925C_ovl3
/* 0C9C88 80169248 8E020000 */   lw    $v0, ($s0)
.L8016924C_ovl3:
/* 0C9C8C 8016924C 8FA40164 */  lw    $a0, 0x164($sp)
/* 0C9C90 80169250 0C03E430 */  jal   func_800F90C0
/* 0C9C94 80169254 8E25000C */   lw    $a1, 0xc($s1)
/* 0C9C98 80169258 8E020000 */  lw    $v0, ($s0)
.L8016925C_ovl3:
/* 0C9C9C 8016925C 3C19DB02 */  lui   $t9, 0xdb02
/* 0C9CA0 80169260 240E0018 */  li    $t6, 24
/* 0C9CA4 80169264 24580008 */  addiu $t8, $v0, 8
/* 0C9CA8 80169268 AE180000 */  sw    $t8, ($s0)
/* 0C9CAC 8016926C AC4E0004 */  sw    $t6, 4($v0)
/* 0C9CB0 80169270 AC590000 */  sw    $t9, ($v0)
/* 0C9CB4 80169274 8E020000 */  lw    $v0, ($s0)
/* 0C9CB8 80169278 3C18DC08 */  lui   $t8, (0xDC08060A >> 16) # lui $t8, 0xdc08
/* 0C9CBC 8016927C 3718060A */  ori   $t8, (0xDC08060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0C9CC0 80169280 244F0008 */  addiu $t7, $v0, 8
/* 0C9CC4 80169284 AE0F0000 */  sw    $t7, ($s0)
/* 0C9CC8 80169288 AC580000 */  sw    $t8, ($v0)
/* 0C9CCC 8016928C 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9CD0 80169290 3C18DC08 */  lui   $t8, (0xDC08090A >> 16) # lui $t8, 0xdc08
/* 0C9CD4 80169294 3718090A */  ori   $t8, (0xDC08090A & 0xFFFF) # ori $t8, $t8, 0x90a
/* 0C9CD8 80169298 272E0008 */  addiu $t6, $t9, 8
/* 0C9CDC 8016929C AC4E0004 */  sw    $t6, 4($v0)
/* 0C9CE0 801692A0 8E020000 */  lw    $v0, ($s0)
/* 0C9CE4 801692A4 244F0008 */  addiu $t7, $v0, 8
/* 0C9CE8 801692A8 AE0F0000 */  sw    $t7, ($s0)
/* 0C9CEC 801692AC AC580000 */  sw    $t8, ($v0)
/* 0C9CF0 801692B0 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9CF4 801692B4 3C0FDC08 */  lui   $t7, (0xDC08060A >> 16) # lui $t7, 0xdc08
/* 0C9CF8 801692B8 35EF060A */  ori   $t7, (0xDC08060A & 0xFFFF) # ori $t7, $t7, 0x60a
/* 0C9CFC 801692BC AC590004 */  sw    $t9, 4($v0)
/* 0C9D00 801692C0 8E030004 */  lw    $v1, 4($s0)
/* 0C9D04 801692C4 246E0008 */  addiu $t6, $v1, 8
/* 0C9D08 801692C8 AE0E0004 */  sw    $t6, 4($s0)
/* 0C9D0C 801692CC AC6F0000 */  sw    $t7, ($v1)
/* 0C9D10 801692D0 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9D14 801692D4 3C0FDC08 */  lui   $t7, (0xDC08090A >> 16) # lui $t7, 0xdc08
/* 0C9D18 801692D8 35EF090A */  ori   $t7, (0xDC08090A & 0xFFFF) # ori $t7, $t7, 0x90a
/* 0C9D1C 801692DC 27190008 */  addiu $t9, $t8, 8
/* 0C9D20 801692E0 AC790004 */  sw    $t9, 4($v1)
/* 0C9D24 801692E4 8E030004 */  lw    $v1, 4($s0)
/* 0C9D28 801692E8 246E0008 */  addiu $t6, $v1, 8
/* 0C9D2C 801692EC AE0E0004 */  sw    $t6, 4($s0)
/* 0C9D30 801692F0 AC6F0000 */  sw    $t7, ($v1)
/* 0C9D34 801692F4 8E38000C */  lw    $t8, 0xc($s1)
/* 0C9D38 801692F8 AC780004 */  sw    $t8, 4($v1)
/* 0C9D3C 801692FC 8E39000C */  lw    $t9, 0xc($s1)
/* 0C9D40 80169300 272E0018 */  addiu $t6, $t9, 0x18
/* 0C9D44 80169304 AE2E000C */  sw    $t6, 0xc($s1)
.L80169308_ovl3:
/* 0C9D48 80169308 0C0056F3 */  jal   func_80015BCC_ovl3
/* 0C9D4C 8016930C 8FA40168 */   lw    $a0, 0x168($sp)
/* 0C9D50 80169310 8E020000 */  lw    $v0, ($s0)
/* 0C9D54 80169314 3C1FDB02 */  lui   $ra, 0xdb02
/* 0C9D58 80169318 24110018 */  li    $s1, 24
/* 0C9D5C 8016931C 244F0008 */  addiu $t7, $v0, 8
/* 0C9D60 80169320 AE0F0000 */  sw    $t7, ($s0)
/* 0C9D64 80169324 AC510004 */  sw    $s1, 4($v0)
/* 0C9D68 80169328 AC5F0000 */  sw    $ra, ($v0)
/* 0C9D6C 8016932C 8E020000 */  lw    $v0, ($s0)
/* 0C9D70 80169330 3C0CDC08 */  lui   $t4, (0xDC08060A >> 16) # lui $t4, 0xdc08
/* 0C9D74 80169334 3C04800C */  lui   $a0, %hi(D_800BE550) # $a0, 0x800c
/* 0C9D78 80169338 24580008 */  addiu $t8, $v0, 8
/* 0C9D7C 8016933C AE180000 */  sw    $t8, ($s0)
/* 0C9D80 80169340 358C060A */  ori   $t4, (0xDC08060A & 0xFFFF) # ori $t4, $t4, 0x60a
/* 0C9D84 80169344 2484E550 */  addiu $a0, %lo(D_800BE550) # addiu $a0, $a0, -0x1ab0
/* 0C9D88 80169348 AC440004 */  sw    $a0, 4($v0)
/* 0C9D8C 8016934C AC4C0000 */  sw    $t4, ($v0)
/* 0C9D90 80169350 8E020000 */  lw    $v0, ($s0)
/* 0C9D94 80169354 3C0DDC08 */  lui   $t5, (0xDC08090A >> 16) # lui $t5, 0xdc08
/* 0C9D98 80169358 3C05800C */  lui   $a1, %hi(D_800BE548) # $a1, 0x800c
/* 0C9D9C 8016935C 24590008 */  addiu $t9, $v0, 8
/* 0C9DA0 80169360 AE190000 */  sw    $t9, ($s0)
/* 0C9DA4 80169364 35AD090A */  ori   $t5, (0xDC08090A & 0xFFFF) # ori $t5, $t5, 0x90a
/* 0C9DA8 80169368 24A5E548 */  addiu $a1, %lo(D_800BE548) # addiu $a1, $a1, -0x1ab8
/* 0C9DAC 8016936C AC450004 */  sw    $a1, 4($v0)
/* 0C9DB0 80169370 AC4D0000 */  sw    $t5, ($v0)
/* 0C9DB4 80169374 8E030004 */  lw    $v1, 4($s0)
/* 0C9DB8 80169378 246E0008 */  addiu $t6, $v1, 8
/* 0C9DBC 8016937C AE0E0004 */  sw    $t6, 4($s0)
/* 0C9DC0 80169380 AC710004 */  sw    $s1, 4($v1)
/* 0C9DC4 80169384 AC7F0000 */  sw    $ra, ($v1)
/* 0C9DC8 80169388 8E030004 */  lw    $v1, 4($s0)
/* 0C9DCC 8016938C 246F0008 */  addiu $t7, $v1, 8
/* 0C9DD0 80169390 AE0F0004 */  sw    $t7, 4($s0)
/* 0C9DD4 80169394 AC640004 */  sw    $a0, 4($v1)
/* 0C9DD8 80169398 AC6C0000 */  sw    $t4, ($v1)
/* 0C9DDC 8016939C 8E030004 */  lw    $v1, 4($s0)
/* 0C9DE0 801693A0 24780008 */  addiu $t8, $v1, 8
/* 0C9DE4 801693A4 AE180004 */  sw    $t8, 4($s0)
/* 0C9DE8 801693A8 AC650004 */  sw    $a1, 4($v1)
/* 0C9DEC 801693AC AC6D0000 */  sw    $t5, ($v1)
.L801693B0_ovl3:
/* 0C9DF0 801693B0 8FBF001C */  lw    $ra, 0x1c($sp)
.L801693B4_ovl3:
/* 0C9DF4 801693B4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0C9DF8 801693B8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0C9DFC 801693BC 03E00008 */  jr    $ra
/* 0C9E00 801693C0 27BD0168 */   addiu $sp, $sp, 0x168

.type func_8016858C_ovl3, @function
.size func_8016858C_ovl3, . - func_8016858C_ovl3

glabel func_801693C4_ovl3
/* 0C9E04 801693C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C9E08 801693C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C9E0C 801693CC AFA40020 */  sw    $a0, 0x20($sp)
/* 0C9E10 801693D0 24040015 */  li    $a0, 21
/* 0C9E14 801693D4 2405003C */  li    $a1, 60
/* 0C9E18 801693D8 0C02BB02 */  jal   request_track_general
/* 0C9E1C 801693DC 24060050 */   li    $a2, 80
/* 0C9E20 801693E0 2401FFFF */  li    $at, -1
/* 0C9E24 801693E4 10410007 */  beq   $v0, $at, .L80169404_ovl3
/* 0C9E28 801693E8 00401825 */   move  $v1, $v0
/* 0C9E2C 801693EC 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0C9E30 801693F0 00027880 */  sll   $t7, $v0, 2
/* 0C9E34 801693F4 3C01800E */  lui   $at, 0x800e
/* 0C9E38 801693F8 002F0821 */  addu  $at, $at, $t7
/* 0C9E3C 801693FC 10000006 */  b     .L80169418_ovl3
/* 0C9E40 80169400 AC2EDC50 */   sw    $t6, -0x23b0($at)
.L80169404_ovl3:
/* 0C9E44 80169404 3C048019 */  lui   $a0, %hi(D_80197120) # $a0, 0x8019
/* 0C9E48 80169408 24847120 */  addiu $a0, %lo(D_80197120) # addiu $a0, $a0, 0x7120
/* 0C9E4C 8016940C 0C02909C */  jal   print_error_stub
/* 0C9E50 80169410 AFA3001C */   sw    $v1, 0x1c($sp)
/* 0C9E54 80169414 8FA3001C */  lw    $v1, 0x1c($sp)
.L80169418_ovl3:
/* 0C9E58 80169418 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C9E5C 8016941C 27BD0020 */  addiu $sp, $sp, 0x20
/* 0C9E60 80169420 00601025 */  move  $v0, $v1
/* 0C9E64 80169424 03E00008 */  jr    $ra
/* 0C9E68 80169428 00000000 */   nop   

.type func_801693C4_ovl3, @function
.size func_801693C4_ovl3, . - func_801693C4_ovl3

/* 0C9E6C 8016942C 00000000 */  nop   

