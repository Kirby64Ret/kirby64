glabel func_801E7990_ovl10
/* 1D8700 801E7990 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D8704 801E7994 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D8708 801E7998 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 1D870C 801E799C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D8710 801E79A0 AFA40060 */  sw    $a0, 0x60($sp)
/* 1D8714 801E79A4 8C430000 */  lw    $v1, ($v0)
/* 1D8718 801E79A8 3C0E800E */ lui $t6, %hi(D_800DFBD0)
/* 1D871C 801E79AC 3C01800F */ lui $at, %hi(D_800E9C60)
/* 1D8720 801E79B0 00031880 */  sll   $v1, $v1, 2
/* 1D8724 801E79B4 01C37021 */  addu  $t6, $t6, $v1
/* 1D8728 801E79B8 8DCEFBD0 */ lw $t6, %lo(D_800DFBD0)($t6)
/* 1D872C 801E79BC 00230821 */  addu  $at, $at, $v1
/* 1D8730 801E79C0 24090001 */  li    $t1, 1
/* 1D8734 801E79C4 8DCF0008 */  lw    $t7, 8($t6)
/* 1D8738 801E79C8 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 1D873C 801E79CC 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D8740 801E79D0 AFAF005C */  sw    $t7, 0x5c($sp)
/* 1D8744 801E79D4 8C580000 */  lw    $t8, ($v0)
/* 1D8748 801E79D8 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 1D874C 801E79DC 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 1D8750 801E79E0 0018C880 */  sll   $t9, $t8, 2
/* 1D8754 801E79E4 00390821 */  addu  $at, $at, $t9
/* 1D8758 801E79E8 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 1D875C 801E79EC 8C4A0000 */  lw    $t2, ($v0)
/* 1D8760 801E79F0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1D8764 801E79F4 3C040001 */  lui   $a0, (0x000103AC >> 16) # lui $a0, 1
/* 1D8768 801E79F8 000A5880 */  sll   $t3, $t2, 2
/* 1D876C 801E79FC 002B0821 */  addu  $at, $at, $t3
/* 1D8770 801E7A00 AC29DFD0 */ sw $t1, %lo(D_800DDFD0)($at)
/* 1D8774 801E7A04 8C4C0000 */  lw    $t4, ($v0)
/* 1D8778 801E7A08 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1D877C 801E7A0C 44812000 */  mtc1  $at, $f4
/* 1D8780 801E7A10 000C6880 */  sll   $t5, $t4, 2
/* 1D8784 801E7A14 00AD7021 */  addu  $t6, $a1, $t5
/* 1D8788 801E7A18 E5C40000 */  swc1  $f4, ($t6)
/* 1D878C 801E7A1C 8C430000 */  lw    $v1, ($v0)
/* 1D8790 801E7A20 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 1D8794 801E7A24 348403AC */  ori   $a0, (0x000103AC & 0xFFFF) # ori $a0, $a0, 0x3ac
/* 1D8798 801E7A28 00031880 */  sll   $v1, $v1, 2
/* 1D879C 801E7A2C 00A37821 */  addu  $t7, $a1, $v1
/* 1D87A0 801E7A30 C5E60000 */  lwc1  $f6, ($t7)
/* 1D87A4 801E7A34 00230821 */  addu  $at, $at, $v1
/* 1D87A8 801E7A38 4600320D */  trunc.w.s $f8, $f6
/* 1D87AC 801E7A3C 44194000 */  mfc1  $t9, $f8
/* 1D87B0 801E7A40 0C02A7A9 */  jal   func_800A9EA4
/* 1D87B4 801E7A44 AC399FE0 */ sw $t9, %lo(D_800E9FE0)($at)
/* 1D87B8 801E7A48 3C040001 */  lui   $a0, (0x000103AB >> 16) # lui $a0, 1
/* 1D87BC 801E7A4C 348403AB */  ori   $a0, (0x000103AB & 0xFFFF) # ori $a0, $a0, 0x3ab
/* 1D87C0 801E7A50 0C02AA19 */  jal   func_800AA864
/* 1D87C4 801E7A54 24050002 */   li    $a1, 2
/* 1D87C8 801E7A58 3C040001 */  lui   $a0, (0x000103B2 >> 16) # lui $a0, 1
/* 1D87CC 801E7A5C 0C02A7A9 */  jal   func_800A9EA4
/* 1D87D0 801E7A60 348403B2 */   ori   $a0, (0x000103B2 & 0xFFFF) # ori $a0, $a0, 0x3b2
/* 1D87D4 801E7A64 3C040001 */  lui   $a0, (0x000103B1 >> 16) # lui $a0, 1
/* 1D87D8 801E7A68 348403B1 */  ori   $a0, (0x000103B1 & 0xFFFF) # ori $a0, $a0, 0x3b1
/* 1D87DC 801E7A6C 0C02AA19 */  jal   func_800AA864
/* 1D87E0 801E7A70 24050001 */   li    $a1, 1
/* 1D87E4 801E7A74 8FA9005C */  lw    $t1, 0x5c($sp)
/* 1D87E8 801E7A78 240A0002 */  li    $t2, 2
/* 1D87EC 801E7A7C 3C040001 */  lui   $a0, (0x000103A8 >> 16) # lui $a0, 1
/* 1D87F0 801E7A80 348403A8 */  ori   $a0, (0x000103A8 & 0xFFFF) # ori $a0, $a0, 0x3a8
/* 1D87F4 801E7A84 0C02A7A9 */  jal   func_800A9EA4
/* 1D87F8 801E7A88 A12A0054 */   sb    $t2, 0x54($t1)
/* 1D87FC 801E7A8C 3C040001 */  lui   $a0, (0x000103A7 >> 16) # lui $a0, 1
/* 1D8800 801E7A90 0C02A7A9 */  jal   func_800A9EA4
/* 1D8804 801E7A94 348403A7 */   ori   $a0, (0x000103A7 & 0xFFFF) # ori $a0, $a0, 0x3a7
/* 1D8808 801E7A98 0C0798F9 */  jal   func_801E63E4_ovl10
/* 1D880C 801E7A9C 27A40054 */   addiu $a0, $sp, 0x54
/* 1D8810 801E7AA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D8814 801E7AA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D8818 801E7AA8 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 1D881C 801E7AAC 3C08800F */  lui   $t0, %hi(D_800EA8A0) # $t0, 0x800f
/* 1D8820 801E7AB0 8C4B0000 */  lw    $t3, ($v0)
/* 1D8824 801E7AB4 2508A8A0 */  addiu $t0, %lo(D_800EA8A0) # addiu $t0, $t0, -0x5760
/* 1D8828 801E7AB8 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 1D882C 801E7ABC 000B6080 */  sll   $t4, $t3, 2
/* 1D8830 801E7AC0 010C6821 */  addu  $t5, $t0, $t4
/* 1D8834 801E7AC4 E5AA0000 */  swc1  $f10, ($t5)
/* 1D8838 801E7AC8 8C4E0000 */  lw    $t6, ($v0)
/* 1D883C 801E7ACC 93A30058 */  lbu   $v1, 0x58($sp)
/* 1D8840 801E7AD0 44819000 */  mtc1  $at, $f18
/* 1D8844 801E7AD4 000E7880 */  sll   $t7, $t6, 2
/* 1D8848 801E7AD8 010FC021 */  addu  $t8, $t0, $t7
/* 1D884C 801E7ADC C7100000 */  lwc1  $f16, ($t8)
/* 1D8850 801E7AE0 44802000 */  mtc1  $zero, $f4
/* 1D8854 801E7AE4 3C06BE4C */  lui   $a2, (0xBE4CCCCD >> 16) # lui $a2, 0xbe4c
/* 1D8858 801E7AE8 24670014 */  addiu $a3, $v1, 0x14
/* 1D885C 801E7AEC 30E500FF */  andi  $a1, $a3, 0xff
/* 1D8860 801E7AF0 A3A70053 */  sb    $a3, 0x53($sp)
/* 1D8864 801E7AF4 34C6CCCD */  ori   $a2, (0xBE4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 1D8868 801E7AF8 27A40044 */  addiu $a0, $sp, 0x44
/* 1D886C 801E7AFC E7B20048 */  swc1  $f18, 0x48($sp)
/* 1D8870 801E7B00 E7B00044 */  swc1  $f16, 0x44($sp)
/* 1D8874 801E7B04 0C0796C2 */  jal   func_801E5B08_ovl10
/* 1D8878 801E7B08 E7A4004C */   swc1  $f4, 0x4c($sp)
/* 1D887C 801E7B0C 0C002DAF */  jal   finish_current_thread
/* 1D8880 801E7B10 24040004 */   li    $a0, 4
/* 1D8884 801E7B14 93A70053 */  lbu   $a3, 0x53($sp)
/* 1D8888 801E7B18 8FB9005C */  lw    $t9, 0x5c($sp)
/* 1D888C 801E7B1C 24E7FFFC */  addiu $a3, $a3, -4
/* 1D8890 801E7B20 30E400FF */  andi  $a0, $a3, 0xff
/* 1D8894 801E7B24 0C002DAF */  jal   finish_current_thread
/* 1D8898 801E7B28 A3200054 */   sb    $zero, 0x54($t9)
/* 1D889C 801E7B2C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D88A0 801E7B30 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D88A4 801E7B34 44803000 */  mtc1  $zero, $f6
/* 1D88A8 801E7B38 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1D88AC 801E7B3C 8C4A0000 */  lw    $t2, ($v0)
/* 1D88B0 801E7B40 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1D88B4 801E7B44 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D88B8 801E7B48 000A4880 */  sll   $t1, $t2, 2
/* 1D88BC 801E7B4C 00895821 */  addu  $t3, $a0, $t1
/* 1D88C0 801E7B50 E5660000 */  swc1  $f6, ($t3)
/* 1D88C4 801E7B54 8C430000 */  lw    $v1, ($v0)
/* 1D88C8 801E7B58 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 1D88CC 801E7B5C 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 1D88D0 801E7B60 00031880 */  sll   $v1, $v1, 2
/* 1D88D4 801E7B64 00836021 */  addu  $t4, $a0, $v1
/* 1D88D8 801E7B68 C5800000 */  lwc1  $f0, ($t4)
/* 1D88DC 801E7B6C 00230821 */  addu  $at, $at, $v1
/* 1D88E0 801E7B70 E4203750 */ swc1 $f0, %lo(D_800E3750)($at)
/* 1D88E4 801E7B74 8C4D0000 */  lw    $t5, ($v0)
/* 1D88E8 801E7B78 3C01800E */ lui $at, %hi(D_800E3590)
/* 1D88EC 801E7B7C 000D7080 */  sll   $t6, $t5, 2
/* 1D88F0 801E7B80 002E0821 */  addu  $at, $at, $t6
/* 1D88F4 801E7B84 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 1D88F8 801E7B88 8C4F0000 */  lw    $t7, ($v0)
/* 1D88FC 801E7B8C 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D8900 801E7B90 000FC080 */  sll   $t8, $t7, 2
/* 1D8904 801E7B94 00380821 */  addu  $at, $at, $t8
/* 1D8908 801E7B98 E42033D0 */ swc1 $f0, %lo(D_800E33D0)($at)
/* 1D890C 801E7B9C 8C590000 */  lw    $t9, ($v0)
/* 1D8910 801E7BA0 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D8914 801E7BA4 00195080 */  sll   $t2, $t9, 2
/* 1D8918 801E7BA8 002A0821 */  addu  $at, $at, $t2
/* 1D891C 801E7BAC E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 1D8920 801E7BB0 8C490000 */  lw    $t1, ($v0)
/* 1D8924 801E7BB4 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D8928 801E7BB8 240A0001 */  li    $t2, 1
/* 1D892C 801E7BBC 00095880 */  sll   $t3, $t1, 2
/* 1D8930 801E7BC0 002B0821 */  addu  $at, $at, $t3
/* 1D8934 801E7BC4 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 1D8938 801E7BC8 8C4C0000 */  lw    $t4, ($v0)
/* 1D893C 801E7BCC 3C01801F */  lui   $at, %hi(D_801F4B3C_ovl10) # $at, 0x801f
/* 1D8940 801E7BD0 C4284B3C */  lwc1  $f8, %lo(D_801F4B3C_ovl10)($at)
/* 1D8944 801E7BD4 000C6880 */  sll   $t5, $t4, 2
/* 1D8948 801E7BD8 00AD7021 */  addu  $t6, $a1, $t5
/* 1D894C 801E7BDC E5C80000 */  swc1  $f8, ($t6)
/* 1D8950 801E7BE0 8C430000 */  lw    $v1, ($v0)
/* 1D8954 801E7BE4 3C01800E */ lui $at, %hi(D_800E3C90)
/* 1D8958 801E7BE8 00031880 */  sll   $v1, $v1, 2
/* 1D895C 801E7BEC 00A37821 */  addu  $t7, $a1, $v1
/* 1D8960 801E7BF0 C5E20000 */  lwc1  $f2, ($t7)
/* 1D8964 801E7BF4 00230821 */  addu  $at, $at, $v1
/* 1D8968 801E7BF8 E4223C90 */ swc1 $f2, %lo(D_800E3C90)($at)
/* 1D896C 801E7BFC 8C580000 */  lw    $t8, ($v0)
/* 1D8970 801E7C00 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 1D8974 801E7C04 0018C880 */  sll   $t9, $t8, 2
/* 1D8978 801E7C08 00390821 */  addu  $at, $at, $t9
/* 1D897C 801E7C0C E4223AD0 */ swc1 $f2, %lo(D_800E3AD0)($at)
/* 1D8980 801E7C10 8C490000 */  lw    $t1, ($v0)
/* 1D8984 801E7C14 3C01800F */ lui $at, %hi(D_800E9E20)
/* 1D8988 801E7C18 00095880 */  sll   $t3, $t1, 2
/* 1D898C 801E7C1C 002B0821 */  addu  $at, $at, $t3
/* 1D8990 801E7C20 0C02BE85 */  jal   func_800AFA14
/* 1D8994 801E7C24 AC2A9E20 */ sw $t2, %lo(D_800E9E20)($at)
/* 1D8998 801E7C28 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D899C 801E7C2C 27BD0060 */  addiu $sp, $sp, 0x60
/* 1D89A0 801E7C30 03E00008 */  jr    $ra
/* 1D89A4 801E7C34 00000000 */   nop   
.type func_801E7990_ovl10, @function
.size func_801E7990_ovl10, . - func_801E7990_ovl10
