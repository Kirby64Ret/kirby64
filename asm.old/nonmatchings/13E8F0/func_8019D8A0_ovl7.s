glabel func_8019D8A0
/* 143910 8019D8A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 143914 8019D8A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 143918 8019D8A8 3090FFFF */  andi       $s0, $a0, 0xFFFF
/* 14391C 8019D8AC 00101880 */  sll        $v1, $s0, 2
/* 143920 8019D8B0 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 143924 8019D8B4 00431021 */  addu       $v0, $v0, $v1
/* 143928 8019D8B8 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 14392C 8019D8BC AFBF001C */  sw         $ra, 0x1C($sp)
/* 143930 8019D8C0 AFA40028 */  sw         $a0, 0x28($sp)
/* 143934 8019D8C4 8C450034 */  lw         $a1, 0x34($v0)
/* 143938 8019D8C8 10A00006 */  beqz       $a1, .L8019D8E4_ovl7
/* 14393C 8019D8CC 00A02025 */   or        $a0, $a1, $zero
/* 143940 8019D8D0 AFA20024 */  sw         $v0, 0x24($sp)
/* 143944 8019D8D4 0C0288B5 */  jal        func_800A22D4
/* 143948 8019D8D8 AFA30020 */   sw        $v1, 0x20($sp)
/* 14394C 8019D8DC 8FA20024 */  lw         $v0, 0x24($sp)
/* 143950 8019D8E0 8FA30020 */  lw         $v1, 0x20($sp)
.L8019D8E4_ovl7:
/* 143954 8019D8E4 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 143958 8019D8E8 00832021 */  addu       $a0, $a0, $v1
/* 14395C 8019D8EC 8C84E350 */  lw         $a0, %lo(D_800DE350)($a0)
/* 143960 8019D8F0 0C0288C0 */  jal        func_800A2300
/* 143964 8019D8F4 AFA20024 */   sw        $v0, 0x24($sp)
/* 143968 8019D8F8 8FA20024 */  lw         $v0, 0x24($sp)
/* 14396C 8019D8FC 02002025 */  or         $a0, $s0, $zero
/* 143970 8019D900 0C066EEA */  jal        func_8019BBA8_ovl7
/* 143974 8019D904 AC400034 */   sw        $zero, 0x34($v0)
/* 143978 8019D908 0C068CAA */  jal        func_801A32A8_ovl7
/* 14397C 8019D90C 02002025 */   or        $a0, $s0, $zero
/* 143980 8019D910 3C03800E */  lui        $v1, %hi(D_800E76C0)
/* 143984 8019D914 00701821 */  addu       $v1, $v1, $s0
/* 143988 8019D918 906376C0 */  lbu        $v1, %lo(D_800E76C0)($v1)
/* 14398C 8019D91C 3C0E800D */  lui        $t6, %hi(D_800D6C68 + 0x28)
/* 143990 8019D920 25CE6C90 */  addiu      $t6, $t6, %lo(D_800D6C68 + 0x28)
/* 143994 8019D924 28610040 */  slti       $at, $v1, 0x40
/* 143998 8019D928 10200004 */  beqz       $at, .L8019D93C_ovl7
/* 14399C 8019D92C 006E1021 */   addu      $v0, $v1, $t6
/* 1439A0 8019D930 904F0000 */  lbu        $t7, 0x0($v0)
/* 1439A4 8019D934 31F80080 */  andi       $t8, $t7, 0x80
/* 1439A8 8019D938 A0580000 */  sb         $t8, 0x0($v0)
.L8019D93C_ovl7:
/* 1439AC 8019D93C 0C02C640 */  jal        func_800B1900
/* 1439B0 8019D940 3204FFFF */   andi      $a0, $s0, 0xFFFF
/* 1439B4 8019D944 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1439B8 8019D948 8FB00018 */  lw         $s0, 0x18($sp)
/* 1439BC 8019D94C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1439C0 8019D950 03E00008 */  jr         $ra
/* 1439C4 8019D954 00000000 */   nop
