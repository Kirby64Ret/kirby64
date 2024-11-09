.section .rodata

.balign 4
glabel D_800D66C0
.asciiz "Can't request job !!!\n"
.section .rodata
.balign 4
glabel D_800D66D8
.asciiz "Job Request Deep OverFlow!!\n"

.section .text
glabel request_job
/* 0569F8 800AE7A8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0569FC 800AE7AC 2402FFFF */  li    $v0, -1
/* 056A00 800AE7B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 056A04 800AE7B4 AFB00018 */  sw    $s0, 0x18($sp)
/* 056A08 800AE7B8 AFA40038 */  sw    $a0, 0x38($sp)
/* 056A0C 800AE7BC 14A20002 */  bne   $a1, $v0, .L800AE7C8_ovl1
/* 056A10 800AE7C0 AFA70044 */   sw    $a3, 0x44($sp)
/* 056A14 800AE7C4 00002825 */  move  $a1, $zero
.L800AE7C8_ovl1:
/* 056A18 800AE7C8 14C20002 */  bne   $a2, $v0, .L800AE7D4_ovl1
/* 056A1C 800AE7CC 00057080 */   sll   $t6, $a1, 2
/* 056A20 800AE7D0 24060070 */  li    $a2, 112
.L800AE7D4_ovl1:
/* 056A24 800AE7D4 00A6082B */  sltu  $at, $a1, $a2
/* 056A28 800AE7D8 1020000B */  beqz  $at, .L800AE808_ovl1
/* 056A2C 800AE7DC 00A08025 */   move  $s0, $a1
/* 056A30 800AE7E0 3C0F800E */  lui   $t7, %hi(D_800DD710) # $t7, 0x800e
/* 056A34 800AE7E4 25EFD710 */  addiu $t7, %lo(D_800DD710) # addiu $t7, $t7, -0x28f0
/* 056A38 800AE7E8 01CF1021 */  addu  $v0, $t6, $t7
/* 056A3C 800AE7EC 2403FFFF */  li    $v1, -1
.L800AE7F0_ovl1:
/* 056A40 800AE7F0 8C580000 */  lw    $t8, ($v0)
/* 056A44 800AE7F4 50780005 */  beql  $v1, $t8, .L800AE80C_ovl1
/* 056A48 800AE7F8 0206082B */   sltu  $at, $s0, $a2
/* 056A4C 800AE7FC 26100001 */  addiu $s0, $s0, 1
/* 056A50 800AE800 1606FFFB */  bne   $s0, $a2, .L800AE7F0_ovl1
/* 056A54 800AE804 24420004 */   addiu $v0, $v0, 4
.L800AE808_ovl1:
/* 056A58 800AE808 0206082B */  sltu  $at, $s0, $a2
.L800AE80C_ovl1:
/* 056A5C 800AE80C 14200006 */  bnez  $at, .L800AE828_ovl1
/* 056A60 800AE810 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 056A64 800AE814 3C04800D */  lui   $a0, %hi(D_800D66C0) # $a0, 0x800d
/* 056A68 800AE818 0C02909C */  jal   print_error_stub
/* 056A6C 800AE81C 248466C0 */   addiu $a0, %lo(D_800D66C0) # addiu $a0, $a0, 0x66c0
/* 056A70 800AE820 1000008B */  b     .L800AEA50_ovl1
/* 056A74 800AE824 2402FFFF */   li    $v0, -1
.L800AE828_ovl1:
/* 056A78 800AE828 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 056A7C 800AE82C 8FB90038 */  lw    $t9, 0x38($sp)
/* 056A80 800AE830 02002025 */  move  $a0, $s0
/* 056A84 800AE834 10600007 */  beqz  $v1, .L800AE854_ovl1
/* 056A88 800AE838 3C05800B */   lui   $a1, %hi(D_800B0D24) # $a1, 0x800b
/* 056A8C 800AE83C 9062000C */  lbu   $v0, 0xc($v1)
/* 056A90 800AE840 2401001A */  li    $at, 26
/* 056A94 800AE844 10410003 */  beq   $v0, $at, .L800AE854_ovl1
/* 056A98 800AE848 24010019 */   li    $at, 25
/* 056A9C 800AE84C 14410003 */  bne   $v0, $at, .L800AE85C_ovl1
/* 056AA0 800AE850 30430018 */   andi  $v1, $v0, 0x18
.L800AE854_ovl1:
/* 056AA4 800AE854 1000000D */  b     .L800AE88C_ovl1
/* 056AA8 800AE858 00001025 */   move  $v0, $zero
.L800AE85C_ovl1:
/* 056AAC 800AE85C 14600003 */  bnez  $v1, .L800AE86C_ovl1
/* 056AB0 800AE860 24620008 */   addiu $v0, $v1, 8
/* 056AB4 800AE864 10000009 */  b     .L800AE88C_ovl1
/* 056AB8 800AE868 24020008 */   li    $v0, 8
.L800AE86C_ovl1:
/* 056ABC 800AE86C 28410020 */  slti  $at, $v0, 0x20
/* 056AC0 800AE870 54200007 */  bnezl $at, .L800AE890_ovl1
/* 056AC4 800AE874 8FA90038 */   lw    $t1, 0x38($sp)
/* 056AC8 800AE878 3C04800D */  lui   $a0, %hi(D_800D66D8) # $a0, 0x800d
/* 056ACC 800AE87C 0C02909C */  jal   print_error_stub
/* 056AD0 800AE880 248466D8 */   addiu $a0, %lo(D_800D66D8) # addiu $a0, $a0, 0x66d8
/* 056AD4 800AE884 10000072 */  b     .L800AEA50_ovl1
/* 056AD8 800AE888 2402FFFF */   li    $v0, -1
.L800AE88C_ovl1:
/* 056ADC 800AE88C 8FA90038 */  lw    $t1, 0x38($sp)
.L800AE890_ovl1:
/* 056AE0 800AE890 00101880 */  sll   $v1, $s0, 2
/* 056AE4 800AE894 3C01800E */ lui $at, %hi(D_800DD710)
/* 056AE8 800AE898 3C0B800D */  lui   $t3, %hi(D_800D4FD0) # $t3, 0x800d
/* 056AEC 800AE89C 00230821 */  addu  $at, $at, $v1
/* 056AF0 800AE8A0 256B4FD0 */  addiu $t3, %lo(D_800D4FD0) # addiu $t3, $t3, 0x4fd0
/* 056AF4 800AE8A4 000950C0 */  sll   $t2, $t1, 3
/* 056AF8 800AE8A8 AC39D710 */ sw $t9, %lo(D_800DD710)($at)
/* 056AFC 800AE8AC 014B4021 */  addu  $t0, $t2, $t3
/* 056B00 800AE8B0 910C0000 */  lbu   $t4, ($t0)
/* 056B04 800AE8B4 AFA80024 */  sw    $t0, 0x24($sp)
/* 056B08 800AE8B8 AFA30028 */  sw    $v1, 0x28($sp)
/* 056B0C 800AE8BC 01823021 */  addu  $a2, $t4, $v0
/* 056B10 800AE8C0 30C600FF */  andi  $a2, $a2, 0xff
/* 056B14 800AE8C4 24A50D24 */  addiu $a1, %lo(D_800B0D24) # addiu $a1, $a1, 0xd24
/* 056B18 800AE8C8 0C002860 */  jal   func_8000A180
/* 056B1C 800AE8CC 00003825 */   move  $a3, $zero
/* 056B20 800AE8D0 8FA30028 */  lw    $v1, 0x28($sp)
/* 056B24 800AE8D4 3C01800E */ lui $at, %hi(D_800DE350)
/* 056B28 800AE8D8 8FAD0024 */  lw    $t5, 0x24($sp)
/* 056B2C 800AE8DC 00230821 */  addu  $at, $at, $v1
/* 056B30 800AE8E0 AC22E350 */ sw $v0, %lo(D_800DE350)($at)
/* 056B34 800AE8E4 AFA20034 */  sw    $v0, 0x34($sp)
/* 056B38 800AE8E8 00402025 */  move  $a0, $v0
/* 056B3C 800AE8EC 00003025 */  move  $a2, $zero
/* 056B40 800AE8F0 24070003 */  li    $a3, 3
/* 056B44 800AE8F4 0C002286 */  jal   func_80008A18
/* 056B48 800AE8F8 8DA50004 */   lw    $a1, 4($t5)
/* 056B4C 800AE8FC 8FA30028 */  lw    $v1, 0x28($sp)
/* 056B50 800AE900 3C01800E */ lui $at, %hi(gEntityGObjProcessArray)
/* 056B54 800AE904 3C05800B */  lui   $a1, %hi(D_800B0D90) # $a1, 0x800b
/* 056B58 800AE908 00230821 */  addu  $at, $at, $v1
/* 056B5C 800AE90C AC22E510 */ sw $v0, %lo(gEntityGObjProcessArray)($at)
/* 056B60 800AE910 24A50D90 */  addiu $a1, %lo(D_800B0D90) # addiu $a1, $a1, 0xd90
/* 056B64 800AE914 8FA40034 */  lw    $a0, 0x34($sp)
/* 056B68 800AE918 24060001 */  li    $a2, 1
/* 056B6C 800AE91C 0C002286 */  jal   func_80008A18
/* 056B70 800AE920 24070003 */   li    $a3, 3
/* 056B74 800AE924 8FA30028 */  lw    $v1, 0x28($sp)
/* 056B78 800AE928 8FAE0024 */  lw    $t6, 0x24($sp)
/* 056B7C 800AE92C 3C01800E */ lui $at, %hi(gEntityGObjProcessArray2)
/* 056B80 800AE930 00230821 */  addu  $at, $at, $v1
/* 056B84 800AE934 AC22E6D0 */ sw $v0, %lo(gEntityGObjProcessArray2)($at)
/* 056B88 800AE938 91C40001 */  lbu   $a0, 1($t6)
/* 056B8C 800AE93C 3C05800B */  lui   $a1, %hi(D_800B1878) # $a1, 0x800b
/* 056B90 800AE940 24A51878 */  addiu $a1, %lo(D_800B1878) # addiu $a1, $a1, 0x1878
/* 056B94 800AE944 308F0001 */  andi  $t7, $a0, 1
/* 056B98 800AE948 11E0000B */  beqz  $t7, .L800AE978_ovl1
/* 056B9C 800AE94C 00003025 */   move  $a2, $zero
/* 056BA0 800AE950 8FA40034 */  lw    $a0, 0x34($sp)
/* 056BA4 800AE954 24070002 */  li    $a3, 2
/* 056BA8 800AE958 0C002286 */  jal   func_80008A18
/* 056BAC 800AE95C AFA30028 */   sw    $v1, 0x28($sp)
/* 056BB0 800AE960 8FA30028 */  lw    $v1, 0x28($sp)
/* 056BB4 800AE964 8FB80024 */  lw    $t8, 0x24($sp)
/* 056BB8 800AE968 3C01800E */ lui $at, %hi(gEntityGObjProcessArray3)
/* 056BBC 800AE96C 00230821 */  addu  $at, $at, $v1
/* 056BC0 800AE970 AC22E890 */ sw $v0, %lo(gEntityGObjProcessArray3)($at)
/* 056BC4 800AE974 93040001 */  lbu   $a0, 1($t8)
.L800AE978_ovl1:
/* 056BC8 800AE978 30990002 */  andi  $t9, $a0, 2
/* 056BCC 800AE97C 1320000B */  beqz  $t9, .L800AE9AC_ovl1
/* 056BD0 800AE980 8FA40034 */   lw    $a0, 0x34($sp)
/* 056BD4 800AE984 3C05800B */  lui   $a1, %hi(D_800B1870) # $a1, 0x800b
/* 056BD8 800AE988 24A51870 */  addiu $a1, %lo(D_800B1870) # addiu $a1, $a1, 0x1870
/* 056BDC 800AE98C 24060001 */  li    $a2, 1
/* 056BE0 800AE990 24070001 */  li    $a3, 1
/* 056BE4 800AE994 0C002286 */  jal   func_80008A18
/* 056BE8 800AE998 AFA30028 */   sw    $v1, 0x28($sp)
/* 056BEC 800AE99C 8FA30028 */  lw    $v1, 0x28($sp)
/* 056BF0 800AE9A0 3C01800E */ lui $at, %hi(gEntityGObjProcessArray4)
/* 056BF4 800AE9A4 00230821 */  addu  $at, $at, $v1
/* 056BF8 800AE9A8 AC22EA50 */ sw $v0, %lo(gEntityGObjProcessArray4)($at)
.L800AE9AC_ovl1:
/* 056BFC 800AE9AC 8FA40034 */  lw    $a0, 0x34($sp)
/* 056C00 800AE9B0 8FA50048 */  lw    $a1, 0x48($sp)
/* 056C04 800AE9B4 24060001 */  li    $a2, 1
/* 056C08 800AE9B8 00003825 */  move  $a3, $zero
/* 056C0C 800AE9BC 0C002286 */  jal   func_80008A18
/* 056C10 800AE9C0 AFA30028 */   sw    $v1, 0x28($sp)
/* 056C14 800AE9C4 8FA30028 */  lw    $v1, 0x28($sp)
/* 056C18 800AE9C8 3C01800E */ lui $at, %hi(gEntityGObjProcessArray5)
/* 056C1C 800AE9CC 8FA90034 */  lw    $t1, 0x34($sp)
/* 056C20 800AE9D0 00230821 */  addu  $at, $at, $v1
/* 056C24 800AE9D4 AC22EC10 */ sw $v0, %lo(gEntityGObjProcessArray5)($at)
/* 056C28 800AE9D8 3C01800E */ lui $at, %hi(D_800DD8D0)
/* 056C2C 800AE9DC 00230821 */  addu  $at, $at, $v1
/* 056C30 800AE9E0 AC20D8D0 */ sw $zero, %lo(D_800DD8D0)($at)
/* 056C34 800AE9E4 912A000C */  lbu   $t2, 0xc($t1)
/* 056C38 800AE9E8 3C01800E */ lui $at, %hi(D_800DDA90)
/* 056C3C 800AE9EC 00230821 */  addu  $at, $at, $v1
/* 056C40 800AE9F0 8FA40044 */  lw    $a0, 0x44($sp)
/* 056C44 800AE9F4 AC2ADA90 */ sw $t2, %lo(D_800DDA90)($at)
/* 056C48 800AE9F8 3C01800E */ lui $at, %hi(D_800DF150)
/* 056C4C 800AE9FC 00230821 */  addu  $at, $at, $v1
/* 056C50 800AEA00 10800005 */  beqz  $a0, .L800AEA18_ovl1
/* 056C54 800AEA04 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 056C58 800AEA08 3C01800E */ lui $at, %hi(D_800DEF90)
/* 056C5C 800AEA0C 00230821 */  addu  $at, $at, $v1
/* 056C60 800AEA10 10000004 */  b     .L800AEA24_ovl1
/* 056C64 800AEA14 AC24EF90 */ sw $a0, %lo(D_800DEF90)($at)
.L800AEA18_ovl1:
/* 056C68 800AEA18 3C01800E */ lui $at, %hi(D_800DEF90)
/* 056C6C 800AEA1C 00230821 */  addu  $at, $at, $v1
/* 056C70 800AEA20 AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
.L800AEA24_ovl1:
/* 056C74 800AEA24 8FAC0034 */  lw    $t4, 0x34($sp)
/* 056C78 800AEA28 3C0B800B */  lui   $t3, %hi(D_800B0F28) # $t3, 0x800b
/* 056C7C 800AEA2C 256B0F28 */  addiu $t3, %lo(D_800B0F28) # addiu $t3, $t3, 0xf28
/* 056C80 800AEA30 3C01800E */ lui $at, %hi(D_800DEDD0)
/* 056C84 800AEA34 00230821 */  addu  $at, $at, $v1
/* 056C88 800AEA38 AD8B0048 */  sw    $t3, 0x48($t4)
/* 056C8C 800AEA3C AC20EDD0 */ sw $zero, %lo(D_800DEDD0)($at)
/* 056C90 800AEA40 3C01800E */ lui $at, %hi(D_800DF310)
/* 056C94 800AEA44 00230821 */  addu  $at, $at, $v1
/* 056C98 800AEA48 AC20F310 */ sw $zero, %lo(D_800DF310)($at)
/* 056C9C 800AEA4C 02001025 */  move  $v0, $s0
.L800AEA50_ovl1:
/* 056CA0 800AEA50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 056CA4 800AEA54 8FB00018 */  lw    $s0, 0x18($sp)
/* 056CA8 800AEA58 27BD0038 */  addiu $sp, $sp, 0x38
/* 056CAC 800AEA5C 03E00008 */  jr    $ra
/* 056CB0 800AEA60 00000000 */   nop   
.size request_job, . - request_job
