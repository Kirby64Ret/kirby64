glabel func_800BB6B0
/* 063900 800BB6B0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 063904 800BB6B4 AFB00018 */  sw    $s0, 0x18($sp)
/* 063908 800BB6B8 3C108005 */  lui   $s0, %hi(gDisplayListHeads) # $s0, 0x8005
/* 06390C 800BB6BC 2610A3D0 */  addiu $s0, %lo(gDisplayListHeads) # addiu $s0, $s0, -0x5c30
/* 063910 800BB6C0 8E020000 */  lw    $v0, ($s0)
/* 063914 800BB6C4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 063918 800BB6C8 AFB20020 */  sw    $s2, 0x20($sp)
/* 06391C 800BB6CC AFB1001C */  sw    $s1, 0x1c($sp)
/* 063920 800BB6D0 8C880000 */  lw    $t0, ($a0)
/* 063924 800BB6D4 244E0008 */  addiu $t6, $v0, 8
/* 063928 800BB6D8 AE0E0000 */  sw    $t6, ($s0)
/* 06392C 800BB6DC 3C11E700 */  lui   $s1, 0xe700
/* 063930 800BB6E0 AC510000 */  sw    $s1, ($v0)
/* 063934 800BB6E4 AC400004 */  sw    $zero, 4($v0)
/* 063938 800BB6E8 8E020000 */  lw    $v0, ($s0)
/* 06393C 800BB6EC 3C18D9FF */  lui   $t8, (0xD9FFFFFE >> 16) # lui $t8, 0xd9ff
/* 063940 800BB6F0 3718FFFE */  ori   $t8, (0xD9FFFFFE & 0xFFFF) # ori $t8, $t8, 0xfffe
/* 063944 800BB6F4 244F0008 */  addiu $t7, $v0, 8
/* 063948 800BB6F8 AE0F0000 */  sw    $t7, ($s0)
/* 06394C 800BB6FC AC400004 */  sw    $zero, 4($v0)
/* 063950 800BB700 AC580000 */  sw    $t8, ($v0)
/* 063954 800BB704 8E020000 */  lw    $v0, ($s0)
/* 063958 800BB708 3C0BDB06 */  lui   $t3, (0xDB060010 >> 16) # lui $t3, 0xdb06
/* 06395C 800BB70C 3C0D800E */  lui   $t5, %hi(gSegment4StartArray) # $t5, 0x800e
/* 063960 800BB710 24590008 */  addiu $t9, $v0, 8
/* 063964 800BB714 AE190000 */  sw    $t9, ($s0)
/* 063968 800BB718 25ADF4D0 */  addiu $t5, %lo(gSegment4StartArray) # addiu $t5, $t5, -0xb30
/* 06396C 800BB71C 356B0010 */  ori   $t3, (0xDB060010 & 0xFFFF) # ori $t3, $t3, 0x10
/* 063970 800BB720 00086080 */  sll   $t4, $t0, 2
/* 063974 800BB724 018D4821 */  addu  $t1, $t4, $t5
/* 063978 800BB728 AC4B0000 */  sw    $t3, ($v0)
/* 06397C 800BB72C 8D2E0000 */  lw    $t6, ($t1)
/* 063980 800BB730 3C12E200 */  lui   $s2, (0xE200001C >> 16) # lui $s2, 0xe200
/* 063984 800BB734 3C180055 */  lui   $t8, (0x00552048 >> 16) # lui $t8, 0x55
/* 063988 800BB738 AC4E0004 */  sw    $t6, 4($v0)
/* 06398C 800BB73C 8E020000 */  lw    $v0, ($s0)
/* 063990 800BB740 3652001C */  ori   $s2, (0xE200001C & 0xFFFF) # ori $s2, $s2, 0x1c
/* 063994 800BB744 37182048 */  ori   $t8, (0x00552048 & 0xFFFF) # ori $t8, $t8, 0x2048
/* 063998 800BB748 244F0008 */  addiu $t7, $v0, 8
/* 06399C 800BB74C AE0F0000 */  sw    $t7, ($s0)
/* 0639A0 800BB750 AC580004 */  sw    $t8, 4($v0)
/* 0639A4 800BB754 AC520000 */  sw    $s2, ($v0)
/* 0639A8 800BB758 AFA9002C */  sw    $t1, 0x2c($sp)
/* 0639AC 800BB75C 0C02AC3D */  jal   func_800AB0F4
/* 0639B0 800BB760 AFA40088 */   sw    $a0, 0x88($sp)
/* 0639B4 800BB764 2459FFED */  addiu $t9, $v0, -0x13
/* 0639B8 800BB768 2F21000C */  sltiu $at, $t9, 0xc
/* 0639BC 800BB76C 3C08D9FF */  lui   $t0, (0xD9FFFFFE >> 16) # lui $t0, 0xd9ff
/* 0639C0 800BB770 3C0ADB06 */  lui   $t2, (0xDB060010 >> 16) # lui $t2, 0xdb06
/* 0639C4 800BB774 354A0010 */  ori   $t2, (0xDB060010 & 0xFFFF) # ori $t2, $t2, 0x10
/* 0639C8 800BB778 3508FFFE */  ori   $t0, (0xD9FFFFFE & 0xFFFF) # ori $t0, $t0, 0xfffe
/* 0639CC 800BB77C 8FA40088 */  lw    $a0, 0x88($sp)
/* 0639D0 800BB780 10200068 */  beqz  $at, .L800BB924_ovl1
/* 0639D4 800BB784 8FA9002C */   lw    $t1, 0x2c($sp)
/* 0639D8 800BB788 0019C880 */  sll   $t9, $t9, 2
/* 0639DC 800BB78C 3C01800D */  lui   $at, %hi(jtbl_800D6940)
/* 0639E0 800BB790 00390821 */  addu  $at, $at, $t9
/* 0639E4 800BB794 8C396940 */  lw    $t9, %lo(jtbl_800D6940)($at)
/* 0639E8 800BB798 03200008 */  jr    $t9
/* 0639EC 800BB79C 00000000 */   nop   
glabel L800BB7A0_ovl1
/* 0639F0 800BB7A0 0C0050E9 */  jal   func_800143A4_ovl1
/* 0639F4 800BB7A4 00000000 */   nop   
/* 0639F8 800BB7A8 1000005F */  b     .L800BB928_ovl1
/* 0639FC 800BB7AC 8E020000 */   lw    $v0, ($s0)
glabel L800BB7B0_ovl1
/* 063A00 800BB7B0 0C005617 */  jal   func_8001585C_ovl1
/* 063A04 800BB7B4 00000000 */   nop   
/* 063A08 800BB7B8 1000005B */  b     .L800BB928_ovl1
/* 063A0C 800BB7BC 8E020000 */   lw    $v0, ($s0)
glabel L800BB7C0_ovl1
/* 063A10 800BB7C0 8E020004 */  lw    $v0, 4($s0)
/* 063A14 800BB7C4 3C180050 */  lui   $t8, (0x005041C8 >> 16) # lui $t8, 0x50
/* 063A18 800BB7C8 371841C8 */  ori   $t8, (0x005041C8 & 0xFFFF) # ori $t8, $t8, 0x41c8
/* 063A1C 800BB7CC 244B0008 */  addiu $t3, $v0, 8
/* 063A20 800BB7D0 AE0B0004 */  sw    $t3, 4($s0)
/* 063A24 800BB7D4 AC400004 */  sw    $zero, 4($v0)
/* 063A28 800BB7D8 AC510000 */  sw    $s1, ($v0)
/* 063A2C 800BB7DC 8E020004 */  lw    $v0, 4($s0)
/* 063A30 800BB7E0 244C0008 */  addiu $t4, $v0, 8
/* 063A34 800BB7E4 AE0C0004 */  sw    $t4, 4($s0)
/* 063A38 800BB7E8 AC400004 */  sw    $zero, 4($v0)
/* 063A3C 800BB7EC AC480000 */  sw    $t0, ($v0)
/* 063A40 800BB7F0 8E020004 */  lw    $v0, 4($s0)
/* 063A44 800BB7F4 244D0008 */  addiu $t5, $v0, 8
/* 063A48 800BB7F8 AE0D0004 */  sw    $t5, 4($s0)
/* 063A4C 800BB7FC AC4A0000 */  sw    $t2, ($v0)
/* 063A50 800BB800 8D2E0000 */  lw    $t6, ($t1)
/* 063A54 800BB804 AC4E0004 */  sw    $t6, 4($v0)
/* 063A58 800BB808 8E020004 */  lw    $v0, 4($s0)
/* 063A5C 800BB80C 244F0008 */  addiu $t7, $v0, 8
/* 063A60 800BB810 AE0F0004 */  sw    $t7, 4($s0)
/* 063A64 800BB814 AC580004 */  sw    $t8, 4($v0)
/* 063A68 800BB818 0C0052B5 */  jal   func_80014AD4_ovl1
/* 063A6C 800BB81C AC520000 */   sw    $s2, ($v0)
/* 063A70 800BB820 8E020004 */  lw    $v0, 4($s0)
/* 063A74 800BB824 3C0CD9FF */  lui   $t4, (0xD9FFFFFF >> 16) # lui $t4, 0xd9ff
/* 063A78 800BB828 358CFFFF */  ori   $t4, (0xD9FFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* 063A7C 800BB82C 24590008 */  addiu $t9, $v0, 8
/* 063A80 800BB830 AE190004 */  sw    $t9, 4($s0)
/* 063A84 800BB834 AC400004 */  sw    $zero, 4($v0)
/* 063A88 800BB838 AC510000 */  sw    $s1, ($v0)
/* 063A8C 800BB83C 8E020004 */  lw    $v0, 4($s0)
/* 063A90 800BB840 240D0001 */  li    $t5, 1
/* 063A94 800BB844 3C0F0050 */  lui   $t7, (0x005049D8 >> 16) # lui $t7, 0x50
/* 063A98 800BB848 244B0008 */  addiu $t3, $v0, 8
/* 063A9C 800BB84C AE0B0004 */  sw    $t3, 4($s0)
/* 063AA0 800BB850 AC4D0004 */  sw    $t5, 4($v0)
/* 063AA4 800BB854 AC4C0000 */  sw    $t4, ($v0)
/* 063AA8 800BB858 8E020004 */  lw    $v0, 4($s0)
/* 063AAC 800BB85C 35EF49D8 */  ori   $t7, (0x005049D8 & 0xFFFF) # ori $t7, $t7, 0x49d8
/* 063AB0 800BB860 244E0008 */  addiu $t6, $v0, 8
/* 063AB4 800BB864 AE0E0004 */  sw    $t6, 4($s0)
/* 063AB8 800BB868 AC4F0004 */  sw    $t7, 4($v0)
/* 063ABC 800BB86C 1000002D */  b     .L800BB924_ovl1
/* 063AC0 800BB870 AC520000 */   sw    $s2, ($v0)
glabel L800BB874_ovl1
/* 063AC4 800BB874 8E020004 */  lw    $v0, 4($s0)
/* 063AC8 800BB878 3C0E0050 */  lui   $t6, (0x005041C8 >> 16) # lui $t6, 0x50
/* 063ACC 800BB87C 35CE41C8 */  ori   $t6, (0x005041C8 & 0xFFFF) # ori $t6, $t6, 0x41c8
/* 063AD0 800BB880 24580008 */  addiu $t8, $v0, 8
/* 063AD4 800BB884 AE180004 */  sw    $t8, 4($s0)
/* 063AD8 800BB888 AC400004 */  sw    $zero, 4($v0)
/* 063ADC 800BB88C AC510000 */  sw    $s1, ($v0)
/* 063AE0 800BB890 8E020004 */  lw    $v0, 4($s0)
/* 063AE4 800BB894 24590008 */  addiu $t9, $v0, 8
/* 063AE8 800BB898 AE190004 */  sw    $t9, 4($s0)
/* 063AEC 800BB89C AC400004 */  sw    $zero, 4($v0)
/* 063AF0 800BB8A0 AC480000 */  sw    $t0, ($v0)
/* 063AF4 800BB8A4 8E020004 */  lw    $v0, 4($s0)
/* 063AF8 800BB8A8 244B0008 */  addiu $t3, $v0, 8
/* 063AFC 800BB8AC AE0B0004 */  sw    $t3, 4($s0)
/* 063B00 800BB8B0 AC4A0000 */  sw    $t2, ($v0)
/* 063B04 800BB8B4 8D2C0000 */  lw    $t4, ($t1)
/* 063B08 800BB8B8 AC4C0004 */  sw    $t4, 4($v0)
/* 063B0C 800BB8BC 8E020004 */  lw    $v0, 4($s0)
/* 063B10 800BB8C0 244D0008 */  addiu $t5, $v0, 8
/* 063B14 800BB8C4 AE0D0004 */  sw    $t5, 4($s0)
/* 063B18 800BB8C8 AC4E0004 */  sw    $t6, 4($v0)
/* 063B1C 800BB8CC 0C0056F3 */  jal   func_80015BCC_ovl1
/* 063B20 800BB8D0 AC520000 */   sw    $s2, ($v0)
/* 063B24 800BB8D4 8E020004 */  lw    $v0, 4($s0)
/* 063B28 800BB8D8 3C19D9FF */  lui   $t9, (0xD9FFFFFF >> 16) # lui $t9, 0xd9ff
/* 063B2C 800BB8DC 3739FFFF */  ori   $t9, (0xD9FFFFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 063B30 800BB8E0 244F0008 */  addiu $t7, $v0, 8
/* 063B34 800BB8E4 AE0F0004 */  sw    $t7, 4($s0)
/* 063B38 800BB8E8 AC400004 */  sw    $zero, 4($v0)
/* 063B3C 800BB8EC AC510000 */  sw    $s1, ($v0)
/* 063B40 800BB8F0 8E020004 */  lw    $v0, 4($s0)
/* 063B44 800BB8F4 240B0001 */  li    $t3, 1
/* 063B48 800BB8F8 3C0D0050 */  lui   $t5, (0x005049D8 >> 16) # lui $t5, 0x50
/* 063B4C 800BB8FC 24580008 */  addiu $t8, $v0, 8
/* 063B50 800BB900 AE180004 */  sw    $t8, 4($s0)
/* 063B54 800BB904 AC4B0004 */  sw    $t3, 4($v0)
/* 063B58 800BB908 AC590000 */  sw    $t9, ($v0)
/* 063B5C 800BB90C 8E020004 */  lw    $v0, 4($s0)
/* 063B60 800BB910 35AD49D8 */  ori   $t5, (0x005049D8 & 0xFFFF) # ori $t5, $t5, 0x49d8
/* 063B64 800BB914 244C0008 */  addiu $t4, $v0, 8
/* 063B68 800BB918 AE0C0004 */  sw    $t4, 4($s0)
/* 063B6C 800BB91C AC4D0004 */  sw    $t5, 4($v0)
/* 063B70 800BB920 AC520000 */  sw    $s2, ($v0)
.L800BB924_ovl1:
/* 063B74 800BB924 8E020000 */  lw    $v0, ($s0)
.L800BB928_ovl1:
/* 063B78 800BB928 3C18D9FF */  lui   $t8, (0xD9FFFFFF >> 16) # lui $t8, 0xd9ff
/* 063B7C 800BB92C 3718FFFF */  ori   $t8, (0xD9FFFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 063B80 800BB930 244E0008 */  addiu $t6, $v0, 8
/* 063B84 800BB934 AE0E0000 */  sw    $t6, ($s0)
/* 063B88 800BB938 AC400004 */  sw    $zero, 4($v0)
/* 063B8C 800BB93C AC510000 */  sw    $s1, ($v0)
/* 063B90 800BB940 8E020000 */  lw    $v0, ($s0)
/* 063B94 800BB944 24190001 */  li    $t9, 1
/* 063B98 800BB948 3C0C0055 */  lui   $t4, (0x00552078 >> 16) # lui $t4, 0x55
/* 063B9C 800BB94C 244F0008 */  addiu $t7, $v0, 8
/* 063BA0 800BB950 AE0F0000 */  sw    $t7, ($s0)
/* 063BA4 800BB954 AC590004 */  sw    $t9, 4($v0)
/* 063BA8 800BB958 AC580000 */  sw    $t8, ($v0)
/* 063BAC 800BB95C 8E020000 */  lw    $v0, ($s0)
/* 063BB0 800BB960 358C2078 */  ori   $t4, (0x00552078 & 0xFFFF) # ori $t4, $t4, 0x2078
/* 063BB4 800BB964 244B0008 */  addiu $t3, $v0, 8
/* 063BB8 800BB968 AE0B0000 */  sw    $t3, ($s0)
/* 063BBC 800BB96C AC4C0004 */  sw    $t4, 4($v0)
/* 063BC0 800BB970 AC520000 */  sw    $s2, ($v0)
/* 063BC4 800BB974 8FBF0024 */  lw    $ra, 0x24($sp)
/* 063BC8 800BB978 8FB20020 */  lw    $s2, 0x20($sp)
/* 063BCC 800BB97C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 063BD0 800BB980 8FB00018 */  lw    $s0, 0x18($sp)
/* 063BD4 800BB984 03E00008 */  jr    $ra
/* 063BD8 800BB988 27BD0088 */   addiu $sp, $sp, 0x88
.type func_800BB6B0, @function
.size func_800BB6B0, . - func_800BB6B0
