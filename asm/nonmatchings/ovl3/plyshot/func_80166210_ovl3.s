nonmatching func_80166210_ovl3, 0x378

glabel func_80166210_ovl3
    /* C6C50 80166210 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* C6C54 80166214 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* C6C58 80166218 8D0E00A0 */  lw         $t6, 0xA0($t0)
    /* C6C5C 8016621C 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* C6C60 80166220 AFBF001C */  sw         $ra, 0x1C($sp)
    /* C6C64 80166224 AFB00018 */  sw         $s0, 0x18($sp)
    /* C6C68 80166228 15C00008 */  bnez       $t6, .L8016624C_ovl3
    /* C6C6C 8016622C AFA40050 */   sw        $a0, 0x50($sp)
    /* C6C70 80166230 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* C6C74 80166234 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* C6C78 80166238 8E0F0000 */  lw         $t7, 0x0($s0)
    /* C6C7C 8016623C 0C02C640 */  jal        func_800B1900
    /* C6C80 80166240 95E40002 */   lhu       $a0, 0x2($t7)
    /* C6C84 80166244 100000CC */  b          .L80166578_ovl3
    /* C6C88 80166248 8FBF001C */   lw        $ra, 0x1C($sp)
  .L8016624C_ovl3:
    /* C6C8C 8016624C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* C6C90 80166250 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* C6C94 80166254 8E180000 */  lw         $t8, 0x0($s0)
    /* C6C98 80166258 3C06800E */  lui        $a2, %hi(D_800E0D50)
    /* C6C9C 8016625C 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* C6CA0 80166260 8F190000 */  lw         $t9, 0x0($t8)
    /* C6CA4 80166264 254AFBD0 */  addiu      $t2, $t2, %lo(D_800DFBD0)
    /* C6CA8 80166268 27A40044 */  addiu      $a0, $sp, 0x44
    /* C6CAC 8016626C 00196080 */  sll        $t4, $t9, 2
    /* C6CB0 80166270 00CC3021 */  addu       $a2, $a2, $t4
    /* C6CB4 80166274 8CC60D50 */  lw         $a2, %lo(D_800E0D50)($a2)
    /* C6CB8 80166278 00064880 */  sll        $t1, $a2, 2
    /* C6CBC 8016627C 01493821 */  addu       $a3, $t2, $t1
    /* C6CC0 80166280 8CED0000 */  lw         $t5, 0x0($a3)
    /* C6CC4 80166284 8DA50004 */  lw         $a1, 0x4($t5)
    /* C6CC8 80166288 AFA90030 */  sw         $t1, 0x30($sp)
    /* C6CCC 8016628C 0C02C8D0 */  jal        func_800B2340
    /* C6CD0 80166290 AFA7002C */   sw        $a3, 0x2C($sp)
    /* C6CD4 80166294 8E020000 */  lw         $v0, 0x0($s0)
    /* C6CD8 80166298 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* C6CDC 8016629C 44816000 */  mtc1       $at, $f12
    /* C6CE0 801662A0 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C6CE4 801662A4 C7A40044 */  lwc1       $f4, 0x44($sp)
    /* C6CE8 801662A8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C6CEC 801662AC 000E7880 */  sll        $t7, $t6, 2
    /* C6CF0 801662B0 002F0821 */  addu       $at, $at, $t7
    /* C6CF4 801662B4 E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* C6CF8 801662B8 8C580000 */  lw         $t8, 0x0($v0)
    /* C6CFC 801662BC C7A60048 */  lwc1       $f6, 0x48($sp)
    /* C6D00 801662C0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C6D04 801662C4 0018C880 */  sll        $t9, $t8, 2
    /* C6D08 801662C8 00390821 */  addu       $at, $at, $t9
    /* C6D0C 801662CC E4262790 */  swc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* C6D10 801662D0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* C6D14 801662D4 C7A8004C */  lwc1       $f8, 0x4C($sp)
    /* C6D18 801662D8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C6D1C 801662DC 000C6880 */  sll        $t5, $t4, 2
    /* C6D20 801662E0 002D0821 */  addu       $at, $at, $t5
    /* C6D24 801662E4 8FA7002C */  lw         $a3, 0x2C($sp)
    /* C6D28 801662E8 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* C6D2C 801662EC 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6D30 801662F0 8CEE0000 */  lw         $t6, 0x0($a3)
    /* C6D34 801662F4 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* C6D38 801662F8 254AFBD0 */  addiu      $t2, $t2, %lo(D_800DFBD0)
    /* C6D3C 801662FC 000FC080 */  sll        $t8, $t7, 2
    /* C6D40 80166300 0158C821 */  addu       $t9, $t2, $t8
    /* C6D44 80166304 8F2C0000 */  lw         $t4, 0x0($t9)
    /* C6D48 80166308 8DC30008 */  lw         $v1, 0x8($t6)
    /* C6D4C 8016630C 8FA90030 */  lw         $t1, 0x30($sp)
    /* C6D50 80166310 8D8D0008 */  lw         $t5, 0x8($t4)
    /* C6D54 80166314 C46A0030 */  lwc1       $f10, 0x30($v1)
    /* C6D58 80166318 3C04800E */  lui        $a0, %hi(gEntitiesAngleXArray)
    /* C6D5C 8016631C 24844010 */  addiu      $a0, $a0, %lo(gEntitiesAngleXArray)
    /* C6D60 80166320 E5AA0030 */  swc1       $f10, 0x30($t5)
    /* C6D64 80166324 8E0E0000 */  lw         $t6, 0x0($s0)
    /* C6D68 80166328 C4700034 */  lwc1       $f16, 0x34($v1)
    /* C6D6C 8016632C 3C0B800E */  lui        $t3, %hi(gEntitiesAngleYArray)
    /* C6D70 80166330 8DCF0000 */  lw         $t7, 0x0($t6)
    /* C6D74 80166334 256B41D0 */  addiu      $t3, $t3, %lo(gEntitiesAngleYArray)
    /* C6D78 80166338 01693021 */  addu       $a2, $t3, $t1
    /* C6D7C 8016633C 000FC080 */  sll        $t8, $t7, 2
    /* C6D80 80166340 0158C821 */  addu       $t9, $t2, $t8
    /* C6D84 80166344 8F2C0000 */  lw         $t4, 0x0($t9)
    /* C6D88 80166348 3C05800E */  lui        $a1, %hi(gEntitiesAngleZArray)
    /* C6D8C 8016634C 24A54390 */  addiu      $a1, $a1, %lo(gEntitiesAngleZArray)
    /* C6D90 80166350 8D8D0008 */  lw         $t5, 0x8($t4)
    /* C6D94 80166354 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* C6D98 80166358 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* C6D9C 8016635C E5B00034 */  swc1       $f16, 0x34($t5)
    /* C6DA0 80166360 8E0E0000 */  lw         $t6, 0x0($s0)
    /* C6DA4 80166364 C4720038 */  lwc1       $f18, 0x38($v1)
    /* C6DA8 80166368 3C018019 */  lui        $at, %hi(D_8019718C_ovl3)
    /* C6DAC 8016636C 8DCF0000 */  lw         $t7, 0x0($t6)
    /* C6DB0 80166370 00897021 */  addu       $t6, $a0, $t1
    /* C6DB4 80166374 000FC080 */  sll        $t8, $t7, 2
    /* C6DB8 80166378 0158C821 */  addu       $t9, $t2, $t8
    /* C6DBC 8016637C 8F2C0000 */  lw         $t4, 0x0($t9)
    /* C6DC0 80166380 8D8D0008 */  lw         $t5, 0x8($t4)
    /* C6DC4 80166384 E5B20038 */  swc1       $f18, 0x38($t5)
    /* C6DC8 80166388 8E020000 */  lw         $v0, 0x0($s0)
    /* C6DCC 8016638C C5C40000 */  lwc1       $f4, 0x0($t6)
    /* C6DD0 80166390 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6DD4 80166394 000FC080 */  sll        $t8, $t7, 2
    /* C6DD8 80166398 0098C821 */  addu       $t9, $a0, $t8
    /* C6DDC 8016639C E7240000 */  swc1       $f4, 0x0($t9)
    /* C6DE0 801663A0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* C6DE4 801663A4 C4C60000 */  lwc1       $f6, 0x0($a2)
    /* C6DE8 801663A8 00A97821 */  addu       $t7, $a1, $t1
    /* C6DEC 801663AC 000C6880 */  sll        $t5, $t4, 2
    /* C6DF0 801663B0 016D7021 */  addu       $t6, $t3, $t5
    /* C6DF4 801663B4 E5C60000 */  swc1       $f6, 0x0($t6)
    /* C6DF8 801663B8 8C580000 */  lw         $t8, 0x0($v0)
    /* C6DFC 801663BC C5E80000 */  lwc1       $f8, 0x0($t7)
    /* C6E00 801663C0 3C048019 */  lui        $a0, %hi(D_8019181C_ovl3)
    /* C6E04 801663C4 0018C880 */  sll        $t9, $t8, 2
    /* C6E08 801663C8 00B96021 */  addu       $t4, $a1, $t9
    /* C6E0C 801663CC E5880000 */  swc1       $f8, 0x0($t4)
    /* C6E10 801663D0 C5020040 */  lwc1       $f2, 0x40($t0)
    /* C6E14 801663D4 2484181C */  addiu      $a0, $a0, %lo(D_8019181C_ovl3)
    /* C6E18 801663D8 46026032 */  c.eq.s     $f12, $f2
    /* C6E1C 801663DC 00000000 */  nop
    /* C6E20 801663E0 4503001D */  bc1tl      .L80166458_ovl3
    /* C6E24 801663E4 8C450000 */   lw        $a1, 0x0($v0)
    /* C6E28 801663E8 C42A718C */  lwc1       $f10, %lo(D_8019718C_ovl3)($at)
    /* C6E2C 801663EC 8C4D0000 */  lw         $t5, 0x0($v0)
    /* C6E30 801663F0 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* C6E34 801663F4 460A1002 */  mul.s      $f0, $f2, $f10
    /* C6E38 801663F8 000D7080 */  sll        $t6, $t5, 2
    /* C6E3C 801663FC 002E0821 */  addu       $at, $at, $t6
    /* C6E40 80166400 E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* C6E44 80166404 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6E48 80166408 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* C6E4C 8016640C 000FC080 */  sll        $t8, $t7, 2
    /* C6E50 80166410 00380821 */  addu       $at, $at, $t8
    /* C6E54 80166414 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* C6E58 80166418 8C590000 */  lw         $t9, 0x0($v0)
    /* C6E5C 8016641C 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* C6E60 80166420 00196080 */  sll        $t4, $t9, 2
    /* C6E64 80166424 002C0821 */  addu       $at, $at, $t4
    /* C6E68 80166428 E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
    /* C6E6C 8016642C 3C018019 */  lui        $at, %hi(D_80197190_ovl3)
    /* C6E70 80166430 C4307190 */  lwc1       $f16, %lo(D_80197190_ovl3)($at)
    /* C6E74 80166434 46101480 */  add.s      $f18, $f2, $f16
    /* C6E78 80166438 E5120040 */  swc1       $f18, 0x40($t0)
    /* C6E7C 8016643C C5040040 */  lwc1       $f4, 0x40($t0)
    /* C6E80 80166440 4604603E */  c.le.s     $f12, $f4
    /* C6E84 80166444 00000000 */  nop
    /* C6E88 80166448 45020003 */  bc1fl      .L80166458_ovl3
    /* C6E8C 8016644C 8C450000 */   lw        $a1, 0x0($v0)
    /* C6E90 80166450 E50C0040 */  swc1       $f12, 0x40($t0)
    /* C6E94 80166454 8C450000 */  lw         $a1, 0x0($v0)
  .L80166458_ovl3:
    /* C6E98 80166458 AFA90030 */  sw         $t1, 0x30($sp)
    /* C6E9C 8016645C 0C044681 */  jal        func_80111A04
    /* C6EA0 80166460 AFA60028 */   sw        $a2, 0x28($sp)
    /* C6EA4 80166464 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* C6EA8 80166468 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* C6EAC 8016646C 3C014230 */  lui        $at, (0x42300000 >> 16)
    /* C6EB0 80166470 44813000 */  mtc1       $at, $f6
    /* C6EB4 80166474 C5080040 */  lwc1       $f8, 0x40($t0)
    /* C6EB8 80166478 8C4D0020 */  lw         $t5, 0x20($v0)
    /* C6EBC 8016647C 3C014216 */  lui        $at, (0x42160000 >> 16)
    /* C6EC0 80166480 46083282 */  mul.s      $f10, $f6, $f8
    /* C6EC4 80166484 44818000 */  mtc1       $at, $f16
    /* C6EC8 80166488 00402025 */  or         $a0, $v0, $zero
    /* C6ECC 8016648C E5AA0018 */  swc1       $f10, 0x18($t5)
    /* C6ED0 80166490 C5120040 */  lwc1       $f18, 0x40($t0)
    /* C6ED4 80166494 8C4E0020 */  lw         $t6, 0x20($v0)
    /* C6ED8 80166498 46128102 */  mul.s      $f4, $f16, $f18
    /* C6EDC 8016649C 0C044713 */  jal        func_80111C4C
    /* C6EE0 801664A0 E5C40010 */   swc1      $f4, 0x10($t6)
    /* C6EE4 801664A4 8FA90030 */  lw         $t1, 0x30($sp)
    /* C6EE8 801664A8 8E0F0000 */  lw         $t7, 0x0($s0)
    /* C6EEC 801664AC 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* C6EF0 801664B0 00290821 */  addu       $at, $at, $t1
    /* C6EF4 801664B4 8DF80000 */  lw         $t8, 0x0($t7)
    /* C6EF8 801664B8 C42617D0 */  lwc1       $f6, %lo(D_800E17D0)($at)
    /* C6EFC 801664BC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C6F00 801664C0 0018C880 */  sll        $t9, $t8, 2
    /* C6F04 801664C4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* C6F08 801664C8 00390821 */  addu       $at, $at, $t9
    /* C6F0C 801664CC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* C6F10 801664D0 3C048019 */  lui        $a0, %hi(D_80194E4C_ovl3)
    /* C6F14 801664D4 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C6F18 801664D8 E42641D0 */  swc1       $f6, %lo(gEntitiesAngleYArray)($at)
    /* C6F1C 801664DC 8D070040 */  lw         $a3, 0x40($t0)
    /* C6F20 801664E0 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C6F24 801664E4 24844E4C */  addiu      $a0, $a0, %lo(D_80194E4C_ovl3)
    /* C6F28 801664E8 0C05481C */  jal        func_80152070_ovl3
    /* C6F2C 801664EC 24060010 */   addiu     $a2, $zero, 0x10
    /* C6F30 801664F0 8E0C0000 */  lw         $t4, 0x0($s0)
    /* C6F34 801664F4 3C0F801A */  lui        $t7, %hi(D_80198540_ovl3)
    /* C6F38 801664F8 25EF8540 */  addiu      $t7, $t7, %lo(D_80198540_ovl3)
    /* C6F3C 801664FC 8D830000 */  lw         $v1, 0x0($t4)
    /* C6F40 80166500 3C058019 */  lui        $a1, %hi(D_80194F4C_ovl3)
    /* C6F44 80166504 24A54F4C */  addiu      $a1, $a1, %lo(D_80194F4C_ovl3)
    /* C6F48 80166508 00036940 */  sll        $t5, $v1, 5
    /* C6F4C 8016650C 25AEF880 */  addiu      $t6, $t5, -0x780
    /* C6F50 80166510 01CF2021 */  addu       $a0, $t6, $t7
    /* C6F54 80166514 00003025 */  or         $a2, $zero, $zero
    /* C6F58 80166518 0C055754 */  jal        func_80155D50_ovl3
    /* C6F5C 8016651C 00603825 */   or        $a3, $v1, $zero
    /* C6F60 80166520 5040000D */  beql       $v0, $zero, .L80166558_ovl3
    /* C6F64 80166524 8E0C0000 */   lw        $t4, 0x0($s0)
    /* C6F68 80166528 8E190000 */  lw         $t9, 0x0($s0)
    /* C6F6C 8016652C 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* C6F70 80166530 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* C6F74 80166534 8F2C0000 */  lw         $t4, 0x0($t9)
    /* C6F78 80166538 24180001 */  addiu      $t8, $zero, 0x1
    /* C6F7C 8016653C 000C6880 */  sll        $t5, $t4, 2
    /* C6F80 80166540 01CD7021 */  addu       $t6, $t6, $t5
    /* C6F84 80166544 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* C6F88 80166548 000E7880 */  sll        $t7, $t6, 2
    /* C6F8C 8016654C 002F0821 */  addu       $at, $at, $t7
    /* C6F90 80166550 AC3883E0 */  sw         $t8, %lo(D_800E83E0)($at)
    /* C6F94 80166554 8E0C0000 */  lw         $t4, 0x0($s0)
  .L80166558_ovl3:
    /* C6F98 80166558 8FB90028 */  lw         $t9, 0x28($sp)
    /* C6F9C 8016655C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C6FA0 80166560 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C6FA4 80166564 C7280000 */  lwc1       $f8, 0x0($t9)
    /* C6FA8 80166568 000D7080 */  sll        $t6, $t5, 2
    /* C6FAC 8016656C 002E0821 */  addu       $at, $at, $t6
    /* C6FB0 80166570 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
    /* C6FB4 80166574 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80166578_ovl3:
    /* C6FB8 80166578 8FB00018 */  lw         $s0, 0x18($sp)
    /* C6FBC 8016657C 27BD0050 */  addiu      $sp, $sp, 0x50
    /* C6FC0 80166580 03E00008 */  jr         $ra
    /* C6FC4 80166584 00000000 */   nop
endlabel func_80166210_ovl3
.size func_80166210_ovl3, . - func_80166210_ovl3
