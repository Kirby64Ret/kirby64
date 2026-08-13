nonmatching func_80186248_ovl3, 0x508

glabel func_80186248_ovl3
    /* E6C88 80186248 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* E6C8C 8018624C AFBF0014 */  sw         $ra, 0x14($sp)
    /* E6C90 80186250 0C054E61 */  jal        func_80153984_ovl3
    /* E6C94 80186254 AFA40018 */   sw        $a0, 0x18($sp)
    /* E6C98 80186258 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6C9C 8018625C 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6CA0 80186260 8CCE0044 */  lw         $t6, 0x44($a2)
    /* E6CA4 80186264 24010002 */  addiu      $at, $zero, 0x2
    /* E6CA8 80186268 51C10006 */  beql       $t6, $at, .L80186284_ovl3
    /* E6CAC 8018626C 90CF0017 */   lbu       $t7, 0x17($a2)
    /* E6CB0 80186270 0C0485EE */  jal        func_801217B8
    /* E6CB4 80186274 00000000 */   nop
    /* E6CB8 80186278 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6CBC 8018627C 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6CC0 80186280 90CF0017 */  lbu        $t7, 0x17($a2)
  .L80186284_ovl3:
    /* E6CC4 80186284 51E0000D */  beql       $t7, $zero, .L801862BC_ovl3
    /* E6CC8 80186288 8CC90030 */   lw        $t1, 0x30($a2)
    /* E6CCC 8018628C 8CD80044 */  lw         $t8, 0x44($a2)
    /* E6CD0 80186290 24070005 */  addiu      $a3, $zero, 0x5
    /* E6CD4 80186294 14F80110 */  bne        $a3, $t8, .L801866D8_ovl3
    /* E6CD8 80186298 00000000 */   nop
    /* E6CDC 8018629C 8CD90030 */  lw         $t9, 0x30($a2)
    /* E6CE0 801862A0 53200128 */  beql       $t9, $zero, .L80186744_ovl3
    /* E6CE4 801862A4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E6CE8 801862A8 0C04759F */  jal        func_8011D67C
    /* E6CEC 801862AC 00000000 */   nop
    /* E6CF0 801862B0 10000124 */  b          .L80186744_ovl3
    /* E6CF4 801862B4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E6CF8 801862B8 8CC90030 */  lw         $t1, 0x30($a2)
  .L801862BC_ovl3:
    /* E6CFC 801862BC 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E6D00 801862C0 11200005 */  beqz       $t1, .L801862D8_ovl3
    /* E6D04 801862C4 00000000 */   nop
    /* E6D08 801862C8 0C04759F */  jal        func_8011D67C
    /* E6D0C 801862CC 00000000 */   nop
    /* E6D10 801862D0 1000011C */  b          .L80186744_ovl3
    /* E6D14 801862D4 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801862D8_ovl3:
    /* E6D18 801862D8 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E6D1C 801862DC 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
    /* E6D20 801862E0 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E6D24 801862E4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E6D28 801862E8 000B6080 */  sll        $t4, $t3, 2
    /* E6D2C 801862EC 01AC6821 */  addu       $t5, $t5, $t4
    /* E6D30 801862F0 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
    /* E6D34 801862F4 31AE0006 */  andi       $t6, $t5, 0x6
    /* E6D38 801862F8 55C00006 */  bnel       $t6, $zero, .L80186314_ovl3
    /* E6D3C 801862FC 44816000 */   mtc1      $at, $f12
    /* E6D40 80186300 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6D44 80186304 44816000 */  mtc1       $at, $f12
    /* E6D48 80186308 10000003 */  b          .L80186318_ovl3
    /* E6D4C 8018630C 00000000 */   nop
    /* E6D50 80186310 44816000 */  mtc1       $at, $f12
  .L80186314_ovl3:
    /* E6D54 80186314 00000000 */  nop
  .L80186318_ovl3:
    /* E6D58 80186318 0C02BB30 */  jal        func_800AECC0
    /* E6D5C 8018631C 00000000 */   nop
    /* E6D60 80186320 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* E6D64 80186324 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* E6D68 80186328 3C09800F */  lui        $t1, %hi(D_800E8AE0)
    /* E6D6C 8018632C 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E6D70 80186330 8DF80000 */  lw         $t8, 0x0($t7)
    /* E6D74 80186334 0018C880 */  sll        $t9, $t8, 2
    /* E6D78 80186338 01394821 */  addu       $t1, $t1, $t9
    /* E6D7C 8018633C 8D298AE0 */  lw         $t1, %lo(D_800E8AE0)($t1)
    /* E6D80 80186340 312A0006 */  andi       $t2, $t1, 0x6
    /* E6D84 80186344 55400006 */  bnel       $t2, $zero, .L80186360_ovl3
    /* E6D88 80186348 44816000 */   mtc1      $at, $f12
    /* E6D8C 8018634C 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E6D90 80186350 44816000 */  mtc1       $at, $f12
    /* E6D94 80186354 10000003 */  b          .L80186364_ovl3
    /* E6D98 80186358 00000000 */   nop
    /* E6D9C 8018635C 44816000 */  mtc1       $at, $f12
  .L80186360_ovl3:
    /* E6DA0 80186360 00000000 */  nop
  .L80186364_ovl3:
    /* E6DA4 80186364 0C02BB48 */  jal        func_800AED20
    /* E6DA8 80186368 00000000 */   nop
    /* E6DAC 8018636C 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6DB0 80186370 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6DB4 80186374 8CC30044 */  lw         $v1, 0x44($a2)
    /* E6DB8 80186378 2C610005 */  sltiu      $at, $v1, 0x5
    /* E6DBC 8018637C 102000AF */  beqz       $at, .L8018663C_ovl3
    /* E6DC0 80186380 00035880 */   sll       $t3, $v1, 2
    /* E6DC4 80186384 3C018019 */  lui        $at, %hi(jtbl_8019782C_ovl3)
    /* E6DC8 80186388 002B0821 */  addu       $at, $at, $t3
    /* E6DCC 8018638C 8C2B782C */  lw         $t3, %lo(jtbl_8019782C_ovl3)($at)
    /* E6DD0 80186390 01600008 */  jr         $t3
    /* E6DD4 80186394 00000000 */   nop
  jlabel .L80186398_ovl3
    /* E6DD8 80186398 0C048724 */  jal        func_80121C90
    /* E6DDC 8018639C 00000000 */   nop
    /* E6DE0 801863A0 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6DE4 801863A4 10400004 */  beqz       $v0, .L801863B8_ovl3
    /* E6DE8 801863A8 24C6E7C0 */   addiu     $a2, $a2, %lo(gKirbyState)
    /* E6DEC 801863AC 240C0001 */  addiu      $t4, $zero, 0x1
    /* E6DF0 801863B0 10000014 */  b          .L80186404_ovl3
    /* E6DF4 801863B4 ACCC0044 */   sw        $t4, 0x44($a2)
  .L801863B8_ovl3:
    /* E6DF8 801863B8 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
    /* E6DFC 801863BC 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
    /* E6E00 801863C0 240F0002 */  addiu      $t7, $zero, 0x2
    /* E6E04 801863C4 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* E6E08 801863C8 31AE8000 */  andi       $t6, $t5, 0x8000
    /* E6E0C 801863CC 11C00003 */  beqz       $t6, .L801863DC_ovl3
    /* E6E10 801863D0 00000000 */   nop
    /* E6E14 801863D4 1000000B */  b          .L80186404_ovl3
    /* E6E18 801863D8 ACCF0044 */   sw        $t7, 0x44($a2)
  .L801863DC_ovl3:
    /* E6E1C 801863DC 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* E6E20 801863E0 3C0A800F */  lui        $t2, %hi(D_800E8920)
    /* E6E24 801863E4 240B0003 */  addiu      $t3, $zero, 0x3
    /* E6E28 801863E8 8F190000 */  lw         $t9, 0x0($t8)
    /* E6E2C 801863EC 00194880 */  sll        $t1, $t9, 2
    /* E6E30 801863F0 01495021 */  addu       $t2, $t2, $t1
    /* E6E34 801863F4 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
    /* E6E38 801863F8 15400002 */  bnez       $t2, .L80186404_ovl3
    /* E6E3C 801863FC 00000000 */   nop
    /* E6E40 80186400 ACCB0044 */  sw         $t3, 0x44($a2)
  .L80186404_ovl3:
    /* E6E44 80186404 1000008D */  b          .L8018663C_ovl3
    /* E6E48 80186408 8CC30044 */   lw        $v1, 0x44($a2)
  jlabel .L8018640C_ovl3
    /* E6E4C 8018640C 8CCC0034 */  lw         $t4, 0x34($a2)
    /* E6E50 80186410 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* E6E54 80186414 318D0001 */  andi       $t5, $t4, 0x1
    /* E6E58 80186418 55A0001F */  bnel       $t5, $zero, .L80186498_ovl3
    /* E6E5C 8018641C 8CCB003C */   lw        $t3, 0x3C($a2)
    /* E6E60 80186420 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* E6E64 80186424 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E6E68 80186428 44802000 */  mtc1       $zero, $f4
    /* E6E6C 8018642C 8DC20000 */  lw         $v0, 0x0($t6)
    /* E6E70 80186430 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
    /* E6E74 80186434 00021080 */  sll        $v0, $v0, 2
    /* E6E78 80186438 00220821 */  addu       $at, $at, $v0
    /* E6E7C 8018643C C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* E6E80 80186440 46062032 */  c.eq.s     $f4, $f6
    /* E6E84 80186444 00000000 */  nop
    /* E6E88 80186448 45000004 */  bc1f       .L8018645C_ovl3
    /* E6E8C 8018644C 00000000 */   nop
    /* E6E90 80186450 ACC00044 */  sw         $zero, 0x44($a2)
    /* E6E94 80186454 1000000F */  b          .L80186494_ovl3
    /* E6E98 80186458 00001825 */   or        $v1, $zero, $zero
  .L8018645C_ovl3:
    /* E6E9C 8018645C 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* E6EA0 80186460 3C09800F */  lui        $t1, %hi(D_800E8920)
    /* E6EA4 80186464 01224821 */  addu       $t1, $t1, $v0
    /* E6EA8 80186468 31F88000 */  andi       $t8, $t7, 0x8000
    /* E6EAC 8018646C 13000004 */  beqz       $t8, .L80186480_ovl3
    /* E6EB0 80186470 00000000 */   nop
    /* E6EB4 80186474 24030002 */  addiu      $v1, $zero, 0x2
    /* E6EB8 80186478 10000006 */  b          .L80186494_ovl3
    /* E6EBC 8018647C ACC30044 */   sw        $v1, 0x44($a2)
  .L80186480_ovl3:
    /* E6EC0 80186480 8D298920 */  lw         $t1, %lo(D_800E8920)($t1)
    /* E6EC4 80186484 55200004 */  bnel       $t1, $zero, .L80186498_ovl3
    /* E6EC8 80186488 8CCB003C */   lw        $t3, 0x3C($a2)
    /* E6ECC 8018648C 24030003 */  addiu      $v1, $zero, 0x3
    /* E6ED0 80186490 ACC30044 */  sw         $v1, 0x44($a2)
  .L80186494_ovl3:
    /* E6ED4 80186494 8CCB003C */  lw         $t3, 0x3C($a2)
  .L80186498_ovl3:
    /* E6ED8 80186498 15630003 */  bne        $t3, $v1, .L801864A8_ovl3
    /* E6EDC 8018649C 00000000 */   nop
    /* E6EE0 801864A0 0C048672 */  jal        func_801219C8
    /* E6EE4 801864A4 00000000 */   nop
  .L801864A8_ovl3:
    /* E6EE8 801864A8 0C047B5A */  jal        func_8011ED68
    /* E6EEC 801864AC 00000000 */   nop
    /* E6EF0 801864B0 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6EF4 801864B4 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6EF8 801864B8 10000060 */  b          .L8018663C_ovl3
    /* E6EFC 801864BC 8CC30044 */   lw        $v1, 0x44($a2)
  jlabel .L801864C0_ovl3
    /* E6F00 801864C0 8CCC0034 */  lw         $t4, 0x34($a2)
    /* E6F04 801864C4 318D0001 */  andi       $t5, $t4, 0x1
    /* E6F08 801864C8 55A0000A */  bnel       $t5, $zero, .L801864F4_ovl3
    /* E6F0C 801864CC 8CD800E4 */   lw        $t8, 0xE4($a2)
    /* E6F10 801864D0 0C048465 */  jal        func_80121194
    /* E6F14 801864D4 00000000 */   nop
    /* E6F18 801864D8 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6F1C 801864DC 10400004 */  beqz       $v0, .L801864F0_ovl3
    /* E6F20 801864E0 24C6E7C0 */   addiu     $a2, $a2, %lo(gKirbyState)
    /* E6F24 801864E4 8CCE0034 */  lw         $t6, 0x34($a2)
    /* E6F28 801864E8 35CF0001 */  ori        $t7, $t6, 0x1
    /* E6F2C 801864EC ACCF0034 */  sw         $t7, 0x34($a2)
  .L801864F0_ovl3:
    /* E6F30 801864F0 8CD800E4 */  lw         $t8, 0xE4($a2)
  .L801864F4_ovl3:
    /* E6F34 801864F4 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E6F38 801864F8 5300000B */  beql       $t8, $zero, .L80186528_ovl3
    /* E6F3C 801864FC 94CC00D2 */   lhu       $t4, 0xD2($a2)
    /* E6F40 80186500 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E6F44 80186504 44804000 */  mtc1       $zero, $f8
    /* E6F48 80186508 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E6F4C 8018650C 8F290000 */  lw         $t1, 0x0($t9)
    /* E6F50 80186510 240B0003 */  addiu      $t3, $zero, 0x3
    /* E6F54 80186514 00095080 */  sll        $t2, $t1, 2
    /* E6F58 80186518 002A0821 */  addu       $at, $at, $t2
    /* E6F5C 8018651C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
    /* E6F60 80186520 ACCB0044 */  sw         $t3, 0x44($a2)
    /* E6F64 80186524 94CC00D2 */  lhu        $t4, 0xD2($a2)
  .L80186528_ovl3:
    /* E6F68 80186528 15800003 */  bnez       $t4, .L80186538_ovl3
    /* E6F6C 8018652C 00000000 */   nop
    /* E6F70 80186530 0C047AF5 */  jal        func_8011EBD4
    /* E6F74 80186534 00000000 */   nop
  .L80186538_ovl3:
    /* E6F78 80186538 0C047B5A */  jal        func_8011ED68
    /* E6F7C 8018653C 00000000 */   nop
    /* E6F80 80186540 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6F84 80186544 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6F88 80186548 1000003C */  b          .L8018663C_ovl3
    /* E6F8C 8018654C 8CC30044 */   lw        $v1, 0x44($a2)
  jlabel .L80186550_ovl3
    /* E6F90 80186550 8CCD0034 */  lw         $t5, 0x34($a2)
    /* E6F94 80186554 31AE0001 */  andi       $t6, $t5, 0x1
    /* E6F98 80186558 15C00009 */  bnez       $t6, .L80186580_ovl3
    /* E6F9C 8018655C 00000000 */   nop
    /* E6FA0 80186560 0C048465 */  jal        func_80121194
    /* E6FA4 80186564 00000000 */   nop
    /* E6FA8 80186568 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6FAC 8018656C 10400004 */  beqz       $v0, .L80186580_ovl3
    /* E6FB0 80186570 24C6E7C0 */   addiu     $a2, $a2, %lo(gKirbyState)
    /* E6FB4 80186574 8CCF0034 */  lw         $t7, 0x34($a2)
    /* E6FB8 80186578 35F80001 */  ori        $t8, $t7, 0x1
    /* E6FBC 8018657C ACD80034 */  sw         $t8, 0x34($a2)
  .L80186580_ovl3:
    /* E6FC0 80186580 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E6FC4 80186584 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E6FC8 80186588 3C0B800F */  lui        $t3, %hi(D_800E8920)
    /* E6FCC 8018658C 240C0004 */  addiu      $t4, $zero, 0x4
    /* E6FD0 80186590 8F290000 */  lw         $t1, 0x0($t9)
    /* E6FD4 80186594 00095080 */  sll        $t2, $t1, 2
    /* E6FD8 80186598 016A5821 */  addu       $t3, $t3, $t2
    /* E6FDC 8018659C 8D6B8920 */  lw         $t3, %lo(D_800E8920)($t3)
    /* E6FE0 801865A0 11600002 */  beqz       $t3, .L801865AC_ovl3
    /* E6FE4 801865A4 00000000 */   nop
    /* E6FE8 801865A8 ACCC0044 */  sw         $t4, 0x44($a2)
  .L801865AC_ovl3:
    /* E6FEC 801865AC 0C047B5A */  jal        func_8011ED68
    /* E6FF0 801865B0 00000000 */   nop
    /* E6FF4 801865B4 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E6FF8 801865B8 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E6FFC 801865BC 1000001F */  b          .L8018663C_ovl3
    /* E7000 801865C0 8CC30044 */   lw        $v1, 0x44($a2)
  jlabel .L801865C4_ovl3
    /* E7004 801865C4 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* E7008 801865C8 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* E700C 801865CC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E7010 801865D0 44805000 */  mtc1       $zero, $f10
    /* E7014 801865D4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E7018 801865D8 24180001 */  addiu      $t8, $zero, 0x1
    /* E701C 801865DC 3C19800D */  lui        $t9, %hi(gKirbyController + 0x2)
    /* E7020 801865E0 000E7880 */  sll        $t7, $t6, 2
    /* E7024 801865E4 002F0821 */  addu       $at, $at, $t7
    /* E7028 801865E8 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
    /* E702C 801865EC 46105032 */  c.eq.s     $f10, $f16
    /* E7030 801865F0 00000000 */  nop
    /* E7034 801865F4 45010003 */  bc1t       .L80186604_ovl3
    /* E7038 801865F8 00000000 */   nop
    /* E703C 801865FC 1000000E */  b          .L80186638_ovl3
    /* E7040 80186600 ACD80044 */   sw        $t8, 0x44($a2)
  .L80186604_ovl3:
    /* E7044 80186604 97396FEA */  lhu        $t9, %lo(gKirbyController + 0x2)($t9)
    /* E7048 80186608 240A0002 */  addiu      $t2, $zero, 0x2
    /* E704C 8018660C 33298000 */  andi       $t1, $t9, 0x8000
    /* E7050 80186610 11200003 */  beqz       $t1, .L80186620_ovl3
    /* E7054 80186614 00000000 */   nop
    /* E7058 80186618 10000007 */  b          .L80186638_ovl3
    /* E705C 8018661C ACCA0044 */   sw        $t2, 0x44($a2)
  .L80186620_ovl3:
    /* E7060 80186620 0C02BC8C */  jal        func_800AF230
    /* E7064 80186624 00000000 */   nop
    /* E7068 80186628 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E706C 8018662C 10400002 */  beqz       $v0, .L80186638_ovl3
    /* E7070 80186630 24C6E7C0 */   addiu     $a2, $a2, %lo(gKirbyState)
    /* E7074 80186634 ACC00044 */  sw         $zero, 0x44($a2)
  .L80186638_ovl3:
    /* E7078 80186638 8CC30044 */  lw         $v1, 0x44($a2)
  .L8018663C_ovl3:
    /* E707C 8018663C 24070005 */  addiu      $a3, $zero, 0x5
    /* E7080 80186640 10E3002D */  beq        $a3, $v1, .L801866F8_ovl3
    /* E7084 80186644 3C048005 */   lui       $a0, %hi(omCurrentObj)
    /* E7088 80186648 8C84A7C4 */  lw         $a0, %lo(omCurrentObj)($a0)
    /* E708C 8018664C 3C08800F */  lui        $t0, %hi(D_800E9720)
    /* E7090 80186650 25089720 */  addiu      $t0, $t0, %lo(D_800E9720)
    /* E7094 80186654 8C8B0000 */  lw         $t3, 0x0($a0)
    /* E7098 80186658 000B6080 */  sll        $t4, $t3, 2
    /* E709C 8018665C 010C1021 */  addu       $v0, $t0, $t4
    /* E70A0 80186660 8C430000 */  lw         $v1, 0x0($v0)
    /* E70A4 80186664 2C650001 */  sltiu      $a1, $v1, 0x1
    /* E70A8 80186668 246DFFFF */  addiu      $t5, $v1, -0x1
    /* E70AC 8018666C 10A00015 */  beqz       $a1, .L801866C4_ovl3
    /* E70B0 80186670 AC4D0000 */   sw        $t5, 0x0($v0)
    /* E70B4 80186674 8C8E0000 */  lw         $t6, 0x0($a0)
    /* E70B8 80186678 3C05800F */  lui        $a1, %hi(D_800E98E0)
    /* E70BC 8018667C 24A598E0 */  addiu      $a1, $a1, %lo(D_800E98E0)
    /* E70C0 80186680 000E7880 */  sll        $t7, $t6, 2
    /* E70C4 80186684 00AF1821 */  addu       $v1, $a1, $t7
    /* E70C8 80186688 8C780000 */  lw         $t8, 0x0($v1)
    /* E70CC 8018668C 24010003 */  addiu      $at, $zero, 0x3
    /* E70D0 80186690 240B0014 */  addiu      $t3, $zero, 0x14
    /* E70D4 80186694 27190001 */  addiu      $t9, $t8, 0x1
    /* E70D8 80186698 AC790000 */  sw         $t9, 0x0($v1)
    /* E70DC 8018669C 8C820000 */  lw         $v0, 0x0($a0)
    /* E70E0 801866A0 00021080 */  sll        $v0, $v0, 2
    /* E70E4 801866A4 00A24821 */  addu       $t1, $a1, $v0
    /* E70E8 801866A8 8D2A0000 */  lw         $t2, 0x0($t1)
    /* E70EC 801866AC 01026021 */  addu       $t4, $t0, $v0
    /* E70F0 801866B0 55410004 */  bnel       $t2, $at, .L801866C4_ovl3
    /* E70F4 801866B4 AD8B0000 */   sw        $t3, 0x0($t4)
    /* E70F8 801866B8 10000002 */  b          .L801866C4_ovl3
    /* E70FC 801866BC ACC70044 */   sw        $a3, 0x44($a2)
    /* E7100 801866C0 AD8B0000 */  sw         $t3, 0x0($t4)
  .L801866C4_ovl3:
    /* E7104 801866C4 3C0D800D */  lui        $t5, %hi(gKirbyController)
    /* E7108 801866C8 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
    /* E710C 801866CC 31AE4000 */  andi       $t6, $t5, 0x4000
    /* E7110 801866D0 55C0000A */  bnel       $t6, $zero, .L801866FC_ovl3
    /* E7114 801866D4 8CCF003C */   lw        $t7, 0x3C($a2)
  .L801866D8_ovl3:
    /* E7118 801866D8 0C047717 */  jal        func_8011DC5C
    /* E711C 801866DC 00000000 */   nop
    /* E7120 801866E0 0C04759F */  jal        func_8011D67C
    /* E7124 801866E4 00000000 */   nop
    /* E7128 801866E8 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E712C 801866EC 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E7130 801866F0 10000013 */  b          .L80186740_ovl3
    /* E7134 801866F4 ACC000A0 */   sw        $zero, 0xA0($a2)
  .L801866F8_ovl3:
    /* E7138 801866F8 8CCF003C */  lw         $t7, 0x3C($a2)
  .L801866FC_ovl3:
    /* E713C 801866FC 8CD80044 */  lw         $t8, 0x44($a2)
    /* E7140 80186700 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E7144 80186704 51F8000F */  beql       $t7, $t8, .L80186744_ovl3
    /* E7148 80186708 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E714C 8018670C 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E7150 80186710 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* E7154 80186714 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* E7158 80186718 8F290000 */  lw         $t1, 0x0($t9)
    /* E715C 8018671C 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* E7160 80186720 00095080 */  sll        $t2, $t1, 2
    /* E7164 80186724 008A2021 */  addu       $a0, $a0, $t2
    /* E7168 80186728 0C02C7B2 */  jal        assign_new_process_entry
    /* E716C 8018672C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* E7170 80186730 3C068013 */  lui        $a2, %hi(gKirbyState)
    /* E7174 80186734 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
    /* E7178 80186738 8CCB0044 */  lw         $t3, 0x44($a2)
    /* E717C 8018673C ACCB003C */  sw         $t3, 0x3C($a2)
  .L80186740_ovl3:
    /* E7180 80186740 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80186744_ovl3:
    /* E7184 80186744 27BD0018 */  addiu      $sp, $sp, 0x18
    /* E7188 80186748 03E00008 */  jr         $ra
    /* E718C 8018674C 00000000 */   nop
endlabel func_80186248_ovl3
.size func_80186248_ovl3, . - func_80186248_ovl3
