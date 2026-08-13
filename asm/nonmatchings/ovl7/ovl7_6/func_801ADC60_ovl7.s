nonmatching func_801ADC60_ovl7, 0x1B0

glabel func_801ADC60_ovl7
    /* 153CD0 801ADC60 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 153CD4 801ADC64 AFA40020 */  sw         $a0, 0x20($sp)
    /* 153CD8 801ADC68 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 153CDC 801ADC6C 3C040001 */  lui        $a0, (0x100A7 >> 16)
    /* 153CE0 801ADC70 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 153CE4 801ADC74 AFB10018 */  sw         $s1, 0x18($sp)
    /* 153CE8 801ADC78 AFB00014 */  sw         $s0, 0x14($sp)
    /* 153CEC 801ADC7C 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 153CF0 801ADC80 348400A7 */  ori        $a0, $a0, (0x100A7 & 0xFFFF)
    /* 153CF4 801ADC84 0C02A619 */  jal        func_800A9864
    /* 153CF8 801ADC88 24060010 */   addiu     $a2, $zero, 0x10
    /* 153CFC 801ADC8C 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 153D00 801ADC90 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 153D04 801ADC94 8E230000 */  lw         $v1, 0x0($s1)
    /* 153D08 801ADC98 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* 153D0C 801ADC9C 240E0025 */  addiu      $t6, $zero, 0x25
    /* 153D10 801ADCA0 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 153D14 801ADCA4 3C19801B */  lui        $t9, %hi(func_801ADE10_ovl7)
    /* 153D18 801ADCA8 2739DE10 */  addiu      $t9, $t9, %lo(func_801ADE10_ovl7)
    /* 153D1C 801ADCAC 000FC080 */  sll        $t8, $t7, 2
    /* 153D20 801ADCB0 00380821 */  addu       $at, $at, $t8
    /* 153D24 801ADCB4 AC2EDA90 */  sw         $t6, %lo(D_800DDA90)($at)
    /* 153D28 801ADCB8 8C680000 */  lw         $t0, 0x0($v1)
    /* 153D2C 801ADCBC 3C01800E */  lui        $at, %hi(D_800DF150)
    /* 153D30 801ADCC0 3C0A800C */  lui        $t2, %hi(func_800B8300)
    /* 153D34 801ADCC4 00084880 */  sll        $t1, $t0, 2
    /* 153D38 801ADCC8 00290821 */  addu       $at, $at, $t1
    /* 153D3C 801ADCCC AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* 153D40 801ADCD0 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 153D44 801ADCD4 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* 153D48 801ADCD8 254A8300 */  addiu      $t2, $t2, %lo(func_800B8300)
    /* 153D4C 801ADCDC 000B6080 */  sll        $t4, $t3, 2
    /* 153D50 801ADCE0 002C0821 */  addu       $at, $at, $t4
    /* 153D54 801ADCE4 AC2AEF90 */  sw         $t2, %lo(D_800DEF90)($at)
    /* 153D58 801ADCE8 8C640000 */  lw         $a0, 0x0($v1)
    /* 153D5C 801ADCEC 3C05800E */  lui        $a1, %hi(D_800E0D50)
    /* 153D60 801ADCF0 24A50D50 */  addiu      $a1, $a1, %lo(D_800E0D50)
    /* 153D64 801ADCF4 00042080 */  sll        $a0, $a0, 2
    /* 153D68 801ADCF8 00A46821 */  addu       $t5, $a1, $a0
    /* 153D6C 801ADCFC 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 153D70 801ADD00 3C02800F */  lui        $v0, %hi(D_800E98E0)
    /* 153D74 801ADD04 244298E0 */  addiu      $v0, $v0, %lo(D_800E98E0)
    /* 153D78 801ADD08 00447021 */  addu       $t6, $v0, $a0
    /* 153D7C 801ADD0C ADCF0000 */  sw         $t7, 0x0($t6)
    /* 153D80 801ADD10 8C780000 */  lw         $t8, 0x0($v1)
    /* 153D84 801ADD14 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 153D88 801ADD18 3C10800F */  lui        $s0, %hi(D_800E9AA0)
    /* 153D8C 801ADD1C 00184080 */  sll        $t0, $t8, 2
    /* 153D90 801ADD20 00280821 */  addu       $at, $at, $t0
    /* 153D94 801ADD24 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
    /* 153D98 801ADD28 8C790000 */  lw         $t9, 0x0($v1)
    /* 153D9C 801ADD2C 26109AA0 */  addiu      $s0, $s0, %lo(D_800E9AA0)
    /* 153DA0 801ADD30 3C06800E */  lui        $a2, %hi(gEntitiesAngleYArray)
    /* 153DA4 801ADD34 00194880 */  sll        $t1, $t9, 2
    /* 153DA8 801ADD38 02095821 */  addu       $t3, $s0, $t1
    /* 153DAC 801ADD3C AD600000 */  sw         $zero, 0x0($t3)
    /* 153DB0 801ADD40 8C640000 */  lw         $a0, 0x0($v1)
    /* 153DB4 801ADD44 24C641D0 */  addiu      $a2, $a2, %lo(gEntitiesAngleYArray)
    /* 153DB8 801ADD48 3C09800F */  lui        $t1, %hi(D_800E8E60)
    /* 153DBC 801ADD4C 00042080 */  sll        $a0, $a0, 2
    /* 153DC0 801ADD50 00A45021 */  addu       $t2, $a1, $a0
    /* 153DC4 801ADD54 8D4C0000 */  lw         $t4, 0x0($t2)
    /* 153DC8 801ADD58 00C47021 */  addu       $t6, $a2, $a0
    /* 153DCC 801ADD5C 24010001 */  addiu      $at, $zero, 0x1
    /* 153DD0 801ADD60 000C6880 */  sll        $t5, $t4, 2
    /* 153DD4 801ADD64 00CD7821 */  addu       $t7, $a2, $t5
    /* 153DD8 801ADD68 C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 153DDC 801ADD6C E5C40000 */  swc1       $f4, 0x0($t6)
    /* 153DE0 801ADD70 8C640000 */  lw         $a0, 0x0($v1)
    /* 153DE4 801ADD74 00042080 */  sll        $a0, $a0, 2
    /* 153DE8 801ADD78 0044C021 */  addu       $t8, $v0, $a0
    /* 153DEC 801ADD7C 8F080000 */  lw         $t0, 0x0($t8)
    /* 153DF0 801ADD80 0008C880 */  sll        $t9, $t0, 2
    /* 153DF4 801ADD84 01394821 */  addu       $t1, $t1, $t9
    /* 153DF8 801ADD88 8D298E60 */  lw         $t1, %lo(D_800E8E60)($t1)
    /* 153DFC 801ADD8C 15210006 */  bne        $t1, $at, .L801ADDA8_ovl7
    /* 153E00 801ADD90 00000000 */   nop
    /* 153E04 801ADD94 0C002DAF */  jal        ohSleep
    /* 153E08 801ADD98 2404001E */   addiu     $a0, $zero, 0x1E
    /* 153E0C 801ADD9C 8E230000 */  lw         $v1, 0x0($s1)
    /* 153E10 801ADDA0 8C640000 */  lw         $a0, 0x0($v1)
    /* 153E14 801ADDA4 00042080 */  sll        $a0, $a0, 2
  .L801ADDA8_ovl7:
    /* 153E18 801ADDA8 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* 153E1C 801ADDAC 00240821 */  addu       $at, $at, $a0
    /* 153E20 801ADDB0 240B0001 */  addiu      $t3, $zero, 0x1
    /* 153E24 801ADDB4 AC2B9E20 */  sw         $t3, %lo(D_800E9E20)($at)
    /* 153E28 801ADDB8 8C620000 */  lw         $v0, 0x0($v1)
    /* 153E2C 801ADDBC 00025080 */  sll        $t2, $v0, 2
    /* 153E30 801ADDC0 020A6021 */  addu       $t4, $s0, $t2
    /* 153E34 801ADDC4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 153E38 801ADDC8 15A0000A */  bnez       $t5, .L801ADDF4_ovl7
    /* 153E3C 801ADDCC 00000000 */   nop
  .L801ADDD0_ovl7:
    /* 153E40 801ADDD0 0C002DAF */  jal        ohSleep
    /* 153E44 801ADDD4 24040001 */   addiu     $a0, $zero, 0x1
    /* 153E48 801ADDD8 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 153E4C 801ADDDC 8DE20000 */  lw         $v0, 0x0($t7)
    /* 153E50 801ADDE0 00027080 */  sll        $t6, $v0, 2
    /* 153E54 801ADDE4 020EC021 */  addu       $t8, $s0, $t6
    /* 153E58 801ADDE8 8F080000 */  lw         $t0, 0x0($t8)
    /* 153E5C 801ADDEC 1100FFF8 */  beqz       $t0, .L801ADDD0_ovl7
    /* 153E60 801ADDF0 00000000 */   nop
  .L801ADDF4_ovl7:
    /* 153E64 801ADDF4 0C02C640 */  jal        func_800B1900
    /* 153E68 801ADDF8 3044FFFF */   andi      $a0, $v0, 0xFFFF
    /* 153E6C 801ADDFC 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 153E70 801ADE00 8FB00014 */  lw         $s0, 0x14($sp)
    /* 153E74 801ADE04 8FB10018 */  lw         $s1, 0x18($sp)
    /* 153E78 801ADE08 03E00008 */  jr         $ra
    /* 153E7C 801ADE0C 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_801ADC60_ovl7
.size func_801ADC60_ovl7, . - func_801ADC60_ovl7
