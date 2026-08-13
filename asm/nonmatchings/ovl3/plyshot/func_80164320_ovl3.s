nonmatching func_80164320_ovl3, 0x1CC

glabel func_80164320_ovl3
    /* C4D60 80164320 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* C4D64 80164324 AFB10018 */  sw         $s1, 0x18($sp)
    /* C4D68 80164328 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* C4D6C 8016432C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* C4D70 80164330 8E220000 */  lw         $v0, 0x0($s1)
    /* C4D74 80164334 AFBF0034 */  sw         $ra, 0x34($sp)
    /* C4D78 80164338 AFB70030 */  sw         $s7, 0x30($sp)
    /* C4D7C 8016433C AFB6002C */  sw         $s6, 0x2C($sp)
    /* C4D80 80164340 AFB50028 */  sw         $s5, 0x28($sp)
    /* C4D84 80164344 AFB40024 */  sw         $s4, 0x24($sp)
    /* C4D88 80164348 AFB30020 */  sw         $s3, 0x20($sp)
    /* C4D8C 8016434C AFB2001C */  sw         $s2, 0x1C($sp)
    /* C4D90 80164350 AFB00014 */  sw         $s0, 0x14($sp)
    /* C4D94 80164354 AFA40038 */  sw         $a0, 0x38($sp)
    /* C4D98 80164358 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C4D9C 8016435C 3C0E800B */  lui        $t6, %hi(func_800B4B9C)
    /* C4DA0 80164360 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* C4DA4 80164364 000FC080 */  sll        $t8, $t7, 2
    /* C4DA8 80164368 00380821 */  addu       $at, $at, $t8
    /* C4DAC 8016436C 25CE4B9C */  addiu      $t6, $t6, %lo(func_800B4B9C)
    /* C4DB0 80164370 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
    /* C4DB4 80164374 8C480000 */  lw         $t0, 0x0($v0)
    /* C4DB8 80164378 3C140002 */  lui        $s4, (0x20043 >> 16)
    /* C4DBC 8016437C 3C01800E */  lui        $at, %hi(D_800DF150)
    /* C4DC0 80164380 3C198016 */  lui        $t9, %hi(func_801644EC_ovl3)
    /* C4DC4 80164384 00084880 */  sll        $t1, $t0, 2
    /* C4DC8 80164388 36940043 */  ori        $s4, $s4, (0x20043 & 0xFFFF)
    /* C4DCC 8016438C 00290821 */  addu       $at, $at, $t1
    /* C4DD0 80164390 273944EC */  addiu      $t9, $t9, %lo(func_801644EC_ovl3)
    /* C4DD4 80164394 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
    /* C4DD8 80164398 02802025 */  or         $a0, $s4, $zero
    /* C4DDC 8016439C 24050022 */  addiu      $a1, $zero, 0x22
    /* C4DE0 801643A0 0C02A619 */  jal        func_800A9864
    /* C4DE4 801643A4 24060010 */   addiu     $a2, $zero, 0x10
    /* C4DE8 801643A8 8E2A0000 */  lw         $t2, 0x0($s1)
    /* C4DEC 801643AC 3C12800F */  lui        $s2, %hi(D_800E98E0)
    /* C4DF0 801643B0 265298E0 */  addiu      $s2, $s2, %lo(D_800E98E0)
    /* C4DF4 801643B4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C4DF8 801643B8 3C160002 */  lui        $s6, (0x20044 >> 16)
    /* C4DFC 801643BC 36D60044 */  ori        $s6, $s6, (0x20044 & 0xFFFF)
    /* C4E00 801643C0 000B6080 */  sll        $t4, $t3, 2
    /* C4E04 801643C4 24150001 */  addiu      $s5, $zero, 0x1
    /* C4E08 801643C8 024C6821 */  addu       $t5, $s2, $t4
    /* C4E0C 801643CC ADB50000 */  sw         $s5, 0x0($t5)
    /* C4E10 801643D0 0C02A5D8 */  jal        func_800A9760
    /* C4E14 801643D4 02C02025 */   or        $a0, $s6, $zero
    /* C4E18 801643D8 3C170002 */  lui        $s7, (0x20298 >> 16)
    /* C4E1C 801643DC 36F70298 */  ori        $s7, $s7, (0x20298 & 0xFFFF)
    /* C4E20 801643E0 0C02A806 */  jal        func_800AA018
    /* C4E24 801643E4 02E02025 */   or        $a0, $s7, $zero
    /* C4E28 801643E8 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* C4E2C 801643EC 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* C4E30 801643F0 8E0F0044 */  lw         $t7, 0x44($s0)
    /* C4E34 801643F4 15E00006 */  bnez       $t7, .L80164410_ovl3
    /* C4E38 801643F8 00000000 */   nop
  .L801643FC_ovl3:
    /* C4E3C 801643FC 0C002DAF */  jal        ohSleep
    /* C4E40 80164400 02A02025 */   or        $a0, $s5, $zero
    /* C4E44 80164404 8E0E0044 */  lw         $t6, 0x44($s0)
    /* C4E48 80164408 11C0FFFC */  beqz       $t6, .L801643FC_ovl3
    /* C4E4C 8016440C 00000000 */   nop
  .L80164410_ovl3:
    /* C4E50 80164410 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* C4E54 80164414 94428F20 */  lhu        $v0, %lo(gPlayerControllers)($v0)
    /* C4E58 80164418 3C130002 */  lui        $s3, (0x20295 >> 16)
    /* C4E5C 8016441C 3C108005 */  lui        $s0, %hi(gPlayerControllers)
    /* C4E60 80164420 26108F20 */  addiu      $s0, $s0, %lo(gPlayerControllers)
    /* C4E64 80164424 36730295 */  ori        $s3, $s3, (0x20295 & 0xFFFF)
    /* C4E68 80164428 30420300 */  andi       $v0, $v0, 0x300
  .L8016442C_ovl3:
    /* C4E6C 8016442C 54400013 */  bnel       $v0, $zero, .L8016447C_ovl3
    /* C4E70 80164430 8E2A0000 */   lw        $t2, 0x0($s1)
    /* C4E74 80164434 8E380000 */  lw         $t8, 0x0($s1)
    /* C4E78 80164438 02802025 */  or         $a0, $s4, $zero
    /* C4E7C 8016443C 8F080000 */  lw         $t0, 0x0($t8)
    /* C4E80 80164440 0008C880 */  sll        $t9, $t0, 2
    /* C4E84 80164444 02594821 */  addu       $t1, $s2, $t9
    /* C4E88 80164448 0C02A5D8 */  jal        func_800A9760
    /* C4E8C 8016444C AD200000 */   sw        $zero, 0x0($t1)
    /* C4E90 80164450 0C02A806 */  jal        func_800AA018
    /* C4E94 80164454 02602025 */   or        $a0, $s3, $zero
    /* C4E98 80164458 96020000 */  lhu        $v0, 0x0($s0)
  .L8016445C_ovl3:
    /* C4E9C 8016445C 30420300 */  andi       $v0, $v0, 0x300
    /* C4EA0 80164460 1440FFF2 */  bnez       $v0, .L8016442C_ovl3
    /* C4EA4 80164464 00000000 */   nop
    /* C4EA8 80164468 0C002DAF */  jal        ohSleep
    /* C4EAC 8016446C 02A02025 */   or        $a0, $s5, $zero
    /* C4EB0 80164470 1000FFFA */  b          .L8016445C_ovl3
    /* C4EB4 80164474 96020000 */   lhu       $v0, 0x0($s0)
    /* C4EB8 80164478 8E2A0000 */  lw         $t2, 0x0($s1)
  .L8016447C_ovl3:
    /* C4EBC 8016447C 02C02025 */  or         $a0, $s6, $zero
    /* C4EC0 80164480 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C4EC4 80164484 000B6080 */  sll        $t4, $t3, 2
    /* C4EC8 80164488 024C6821 */  addu       $t5, $s2, $t4
    /* C4ECC 8016448C 0C02A5D8 */  jal        func_800A9760
    /* C4ED0 80164490 ADB50000 */   sw        $s5, 0x0($t5)
    /* C4ED4 80164494 0C02A806 */  jal        func_800AA018
    /* C4ED8 80164498 02E02025 */   or        $a0, $s7, $zero
    /* C4EDC 8016449C 96020000 */  lhu        $v0, 0x0($s0)
  .L801644A0_ovl3:
    /* C4EE0 801644A0 30420300 */  andi       $v0, $v0, 0x300
    /* C4EE4 801644A4 1040FFE1 */  beqz       $v0, .L8016442C_ovl3
    /* C4EE8 801644A8 00000000 */   nop
    /* C4EEC 801644AC 0C002DAF */  jal        ohSleep
    /* C4EF0 801644B0 02A02025 */   or        $a0, $s5, $zero
    /* C4EF4 801644B4 1000FFFA */  b          .L801644A0_ovl3
    /* C4EF8 801644B8 96020000 */   lhu       $v0, 0x0($s0)
    /* C4EFC 801644BC 00000000 */  nop
    /* C4F00 801644C0 8FBF0034 */  lw         $ra, 0x34($sp)
    /* C4F04 801644C4 8FB00014 */  lw         $s0, 0x14($sp)
    /* C4F08 801644C8 8FB10018 */  lw         $s1, 0x18($sp)
    /* C4F0C 801644CC 8FB2001C */  lw         $s2, 0x1C($sp)
    /* C4F10 801644D0 8FB30020 */  lw         $s3, 0x20($sp)
    /* C4F14 801644D4 8FB40024 */  lw         $s4, 0x24($sp)
    /* C4F18 801644D8 8FB50028 */  lw         $s5, 0x28($sp)
    /* C4F1C 801644DC 8FB6002C */  lw         $s6, 0x2C($sp)
    /* C4F20 801644E0 8FB70030 */  lw         $s7, 0x30($sp)
    /* C4F24 801644E4 03E00008 */  jr         $ra
    /* C4F28 801644E8 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_80164320_ovl3
.size func_80164320_ovl3, . - func_80164320_ovl3
