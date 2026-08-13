nonmatching func_80188238_ovl3, 0x16DC

glabel func_80188238_ovl3
    /* E8C78 80188238 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E8C7C 8018823C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E8C80 80188240 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* E8C84 80188244 AFBF0014 */  sw         $ra, 0x14($sp)
    /* E8C88 80188248 AFA40080 */  sw         $a0, 0x80($sp)
    /* E8C8C 8018824C 8CE30000 */  lw         $v1, 0x0($a3)
    /* E8C90 80188250 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* E8C94 80188254 3C01800F */  lui        $at, %hi(D_800E9FE0)
    /* E8C98 80188258 00031880 */  sll        $v1, $v1, 2
    /* E8C9C 8018825C 01C37021 */  addu       $t6, $t6, $v1
    /* E8CA0 80188260 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* E8CA4 80188264 00230821 */  addu       $at, $at, $v1
    /* E8CA8 80188268 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8CAC 8018826C AC2E9FE0 */  sw         $t6, %lo(D_800E9FE0)($at)
    /* E8CB0 80188270 8CF80000 */  lw         $t8, 0x0($a3)
    /* E8CB4 80188274 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8CB8 80188278 910F0150 */  lbu        $t7, 0x150($t0)
    /* E8CBC 8018827C 3C01800F */  lui        $at, %hi(D_800EA520)
    /* E8CC0 80188280 0018C880 */  sll        $t9, $t8, 2
    /* E8CC4 80188284 00390821 */  addu       $at, $at, $t9
    /* E8CC8 80188288 0C054E61 */  jal        func_80153984_ovl3
    /* E8CCC 8018828C AC2FA520 */   sw        $t7, %lo(D_800EA520)($at)
    /* E8CD0 80188290 0C0473D6 */  jal        func_8011CF58
    /* E8CD4 80188294 00000000 */   nop
    /* E8CD8 80188298 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8CDC 8018829C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8CE0 801882A0 8D0A0044 */  lw         $t2, 0x44($t0)
    /* E8CE4 801882A4 24060003 */  addiu      $a2, $zero, 0x3
    /* E8CE8 801882A8 50CA0006 */  beql       $a2, $t2, .L801882C4_ovl3
    /* E8CEC 801882AC 8D0B0030 */   lw        $t3, 0x30($t0)
    /* E8CF0 801882B0 0C0485EE */  jal        func_801217B8
    /* E8CF4 801882B4 00000000 */   nop
    /* E8CF8 801882B8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8CFC 801882BC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8D00 801882C0 8D0B0030 */  lw         $t3, 0x30($t0)
  .L801882C4_ovl3:
    /* E8D04 801882C4 15600004 */  bnez       $t3, .L801882D8_ovl3
    /* E8D08 801882C8 00000000 */   nop
    /* E8D0C 801882CC 910C0017 */  lbu        $t4, 0x17($t0)
    /* E8D10 801882D0 1180000B */  beqz       $t4, .L80188300_ovl3
    /* E8D14 801882D4 00000000 */   nop
  .L801882D8_ovl3:
    /* E8D18 801882D8 0C04783A */  jal        func_8011E0E8
    /* E8D1C 801882DC 00000000 */   nop
    /* E8D20 801882E0 0C047717 */  jal        func_8011DC5C
    /* E8D24 801882E4 00000000 */   nop
    /* E8D28 801882E8 0C04759F */  jal        func_8011D67C
    /* E8D2C 801882EC 00000000 */   nop
    /* E8D30 801882F0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8D34 801882F4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8D38 801882F8 10000582 */  b          .L80189904_ovl3
    /* E8D3C 801882FC AD0000A0 */   sw        $zero, 0xA0($t0)
  .L80188300_ovl3:
    /* E8D40 80188300 0C048918 */  jal        func_80122460
    /* E8D44 80188304 00000000 */   nop
    /* E8D48 80188308 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8D4C 8018830C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8D50 80188310 10400004 */  beqz       $v0, .L80188324_ovl3
    /* E8D54 80188314 24060003 */   addiu     $a2, $zero, 0x3
    /* E8D58 80188318 8D0D00E4 */  lw         $t5, 0xE4($t0)
    /* E8D5C 8018831C 15A0000B */  bnez       $t5, .L8018834C_ovl3
    /* E8D60 80188320 00000000 */   nop
  .L80188324_ovl3:
    /* E8D64 80188324 8D0E00E8 */  lw         $t6, 0xE8($t0)
    /* E8D68 80188328 3C18800D */  lui        $t8, %hi(gKirbyController)
    /* E8D6C 8018832C 51C0001A */  beql       $t6, $zero, .L80188398_ovl3
    /* E8D70 80188330 8D0B00FC */   lw        $t3, 0xFC($t0)
    /* E8D74 80188334 97186FE8 */  lhu        $t8, %lo(gKirbyController)($t8)
    /* E8D78 80188338 330F0400 */  andi       $t7, $t8, 0x400
    /* E8D7C 8018833C 51E00016 */  beql       $t7, $zero, .L80188398_ovl3
    /* E8D80 80188340 8D0B00FC */   lw        $t3, 0xFC($t0)
    /* E8D84 80188344 50400014 */  beql       $v0, $zero, .L80188398_ovl3
    /* E8D88 80188348 8D0B00FC */   lw        $t3, 0xFC($t0)
  .L8018834C_ovl3:
    /* E8D8C 8018834C 0C047585 */  jal        func_8011D614
    /* E8D90 80188350 00000000 */   nop
    /* E8D94 80188354 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* E8D98 80188358 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* E8D9C 8018835C 94590000 */  lhu        $t9, 0x0($v0)
    /* E8DA0 80188360 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8DA4 80188364 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8DA8 80188368 332A0007 */  andi       $t2, $t9, 0x7
    /* E8DAC 8018836C A44A0000 */  sh         $t2, 0x0($v0)
    /* E8DB0 80188370 0C04783A */  jal        func_8011E0E8
    /* E8DB4 80188374 AD0000A0 */   sw        $zero, 0xA0($t0)
    /* E8DB8 80188378 0C047717 */  jal        func_8011DC5C
    /* E8DBC 8018837C 00000000 */   nop
    /* E8DC0 80188380 2404000A */  addiu      $a0, $zero, 0xA
    /* E8DC4 80188384 0C048BDB */  jal        set_kirby_action_1
    /* E8DC8 80188388 2405000D */   addiu     $a1, $zero, 0xD
    /* E8DCC 8018838C 1000055E */  b          .L80189908_ovl3
    /* E8DD0 80188390 8FBF0014 */   lw        $ra, 0x14($sp)
    /* E8DD4 80188394 8D0B00FC */  lw         $t3, 0xFC($t0)
  .L80188398_ovl3:
    /* E8DD8 80188398 5160001A */  beql       $t3, $zero, .L80188404_ovl3
    /* E8DDC 8018839C 8D040044 */   lw        $a0, 0x44($t0)
    /* E8DE0 801883A0 0C048956 */  jal        func_80122558
    /* E8DE4 801883A4 00000000 */   nop
    /* E8DE8 801883A8 14400007 */  bnez       $v0, .L801883C8_ovl3
    /* E8DEC 801883AC 00000000 */   nop
    /* E8DF0 801883B0 0C0489BF */  jal        func_801226FC
    /* E8DF4 801883B4 00000000 */   nop
    /* E8DF8 801883B8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8DFC 801883BC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8E00 801883C0 1040000F */  beqz       $v0, .L80188400_ovl3
    /* E8E04 801883C4 24060003 */   addiu     $a2, $zero, 0x3
  .L801883C8_ovl3:
    /* E8E08 801883C8 0C047585 */  jal        func_8011D614
    /* E8E0C 801883CC 00000000 */   nop
    /* E8E10 801883D0 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* E8E14 801883D4 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* E8E18 801883D8 944C0000 */  lhu        $t4, 0x0($v0)
    /* E8E1C 801883DC 318D0007 */  andi       $t5, $t4, 0x7
    /* E8E20 801883E0 0C04783A */  jal        func_8011E0E8
    /* E8E24 801883E4 A44D0000 */   sh        $t5, 0x0($v0)
    /* E8E28 801883E8 0C047717 */  jal        func_8011DC5C
    /* E8E2C 801883EC 00000000 */   nop
    /* E8E30 801883F0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8E34 801883F4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8E38 801883F8 10000542 */  b          .L80189904_ovl3
    /* E8E3C 801883FC AD0000A0 */   sw        $zero, 0xA0($t0)
  .L80188400_ovl3:
    /* E8E40 80188400 8D040044 */  lw         $a0, 0x44($t0)
  .L80188404_ovl3:
    /* E8E44 80188404 2C81000B */  sltiu      $at, $a0, 0xB
    /* E8E48 80188408 1020053E */  beqz       $at, .L80189904_ovl3
    /* E8E4C 8018840C 00047080 */   sll       $t6, $a0, 2
    /* E8E50 80188410 3C018019 */  lui        $at, %hi(jtbl_801978B0_ovl3)
    /* E8E54 80188414 002E0821 */  addu       $at, $at, $t6
    /* E8E58 80188418 8C2E78B0 */  lw         $t6, %lo(jtbl_801978B0_ovl3)($at)
    /* E8E5C 8018841C 01C00008 */  jr         $t6
    /* E8E60 80188420 00000000 */   nop
  jlabel .L80188424_ovl3
    /* E8E64 80188424 0C048724 */  jal        func_80121C90
    /* E8E68 80188428 00000000 */   nop
    /* E8E6C 8018842C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8E70 80188430 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8E74 80188434 10400008 */  beqz       $v0, .L80188458_ovl3
    /* E8E78 80188438 24060003 */   addiu     $a2, $zero, 0x3
    /* E8E7C 8018843C 24180002 */  addiu      $t8, $zero, 0x2
    /* E8E80 80188440 AD180044 */  sw         $t8, 0x44($t0)
    /* E8E84 80188444 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* E8E88 80188448 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* E8E8C 8018844C 8DE20000 */  lw         $v0, 0x0($t7)
    /* E8E90 80188450 1000034F */  b          .L80189190_ovl3
    /* E8E94 80188454 00021880 */   sll       $v1, $v0, 2
  .L80188458_ovl3:
    /* E8E98 80188458 3C19800D */  lui        $t9, %hi(gKirbyController + 0x2)
    /* E8E9C 8018845C 97396FEA */  lhu        $t9, %lo(gKirbyController + 0x2)($t9)
    /* E8EA0 80188460 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E8EA4 80188464 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E8EA8 80188468 332A8000 */  andi       $t2, $t9, 0x8000
    /* E8EAC 8018846C 11400006 */  beqz       $t2, .L80188488_ovl3
    /* E8EB0 80188470 00000000 */   nop
    /* E8EB4 80188474 AD060044 */  sw         $a2, 0x44($t0)
    /* E8EB8 80188478 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E8EBC 8018847C 8D620000 */  lw         $v0, 0x0($t3)
    /* E8EC0 80188480 10000343 */  b          .L80189190_ovl3
    /* E8EC4 80188484 00021880 */   sll       $v1, $v0, 2
  .L80188488_ovl3:
    /* E8EC8 80188488 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E8ECC 8018848C 3C0C800F */  lui        $t4, %hi(D_800E8920)
    /* E8ED0 80188490 240D0004 */  addiu      $t5, $zero, 0x4
    /* E8ED4 80188494 8CE20000 */  lw         $v0, 0x0($a3)
    /* E8ED8 80188498 00021880 */  sll        $v1, $v0, 2
    /* E8EDC 8018849C 01836021 */  addu       $t4, $t4, $v1
    /* E8EE0 801884A0 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* E8EE4 801884A4 55800006 */  bnel       $t4, $zero, .L801884C0_ovl3
    /* E8EE8 801884A8 91060150 */   lbu       $a2, 0x150($t0)
    /* E8EEC 801884AC AD0D0044 */  sw         $t5, 0x44($t0)
    /* E8EF0 801884B0 8CE20000 */  lw         $v0, 0x0($a3)
    /* E8EF4 801884B4 10000336 */  b          .L80189190_ovl3
    /* E8EF8 801884B8 00021880 */   sll       $v1, $v0, 2
    /* E8EFC 801884BC 91060150 */  lbu        $a2, 0x150($t0)
  .L801884C0_ovl3:
    /* E8F00 801884C0 3C09800F */  lui        $t1, %hi(D_800E9720)
    /* E8F04 801884C4 25299720 */  addiu      $t1, $t1, %lo(D_800E9720)
    /* E8F08 801884C8 10C00014 */  beqz       $a2, .L8018851C_ovl3
    /* E8F0C 801884CC 01232021 */   addu      $a0, $t1, $v1
    /* E8F10 801884D0 8C850000 */  lw         $a1, 0x0($a0)
    /* E8F14 801884D4 10A00011 */  beqz       $a1, .L8018851C_ovl3
    /* E8F18 801884D8 24AEFFFF */   addiu     $t6, $a1, -0x1
    /* E8F1C 801884DC AC8E0000 */  sw         $t6, 0x0($a0)
    /* E8F20 801884E0 8CE20000 */  lw         $v0, 0x0($a3)
    /* E8F24 801884E4 00021880 */  sll        $v1, $v0, 2
    /* E8F28 801884E8 0123C021 */  addu       $t8, $t1, $v1
    /* E8F2C 801884EC 8F0F0000 */  lw         $t7, 0x0($t8)
    /* E8F30 801884F0 15E0000A */  bnez       $t7, .L8018851C_ovl3
    /* E8F34 801884F4 00000000 */   nop
    /* E8F38 801884F8 0C029D9E */  jal        play_sound
    /* E8F3C 801884FC 240400EB */   addiu     $a0, $zero, 0xEB
    /* E8F40 80188500 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E8F44 80188504 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E8F48 80188508 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8F4C 8018850C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8F50 80188510 8F220000 */  lw         $v0, 0x0($t9)
    /* E8F54 80188514 91060150 */  lbu        $a2, 0x150($t0)
    /* E8F58 80188518 00021880 */  sll        $v1, $v0, 2
  .L8018851C_ovl3:
    /* E8F5C 8018851C 3C0A800F */  lui        $t2, %hi(D_800EA520)
    /* E8F60 80188520 01435021 */  addu       $t2, $t2, $v1
    /* E8F64 80188524 8D4AA520 */  lw         $t2, %lo(D_800EA520)($t2)
    /* E8F68 80188528 3C0D800D */  lui        $t5, %hi(D_800D6F58 + 0x50)
    /* E8F6C 8018852C 3C0E800D */  lui        $t6, %hi(D_800D6F58 + 0x54)
    /* E8F70 80188530 10CA0010 */  beq        $a2, $t2, .L80188574_ovl3
    /* E8F74 80188534 3C0F800D */   lui       $t7, %hi(D_800D6F58 + 0x58)
    /* E8F78 80188538 8D0B0020 */  lw         $t3, 0x20($t0)
    /* E8F7C 8018853C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* E8F80 80188540 00832021 */  addu       $a0, $a0, $v1
    /* E8F84 80188544 1560000B */  bnez       $t3, .L80188574_ovl3
    /* E8F88 80188548 3C058017 */   lui       $a1, %hi(func_8016C510_ovl3)
    /* E8F8C 8018854C 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* E8F90 80188550 0C02C7B2 */  jal        assign_new_process_entry
    /* E8F94 80188554 24A5C510 */   addiu     $a1, $a1, %lo(func_8016C510_ovl3)
    /* E8F98 80188558 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* E8F9C 8018855C 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* E8FA0 80188560 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E8FA4 80188564 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E8FA8 80188568 8D820000 */  lw         $v0, 0x0($t4)
    /* E8FAC 8018856C 10000308 */  b          .L80189190_ovl3
    /* E8FB0 80188570 00021880 */   sll       $v1, $v0, 2
  .L80188574_ovl3:
    /* E8FB4 80188574 8DAD6FA8 */  lw         $t5, %lo(D_800D6F58 + 0x50)($t5)
    /* E8FB8 80188578 8DCE6FAC */  lw         $t6, %lo(D_800D6F58 + 0x54)($t6)
    /* E8FBC 8018857C 95EF6FB0 */  lhu        $t7, %lo(D_800D6F58 + 0x58)($t7)
    /* E8FC0 80188580 3C0A800D */  lui        $t2, %hi(gKirbyController + 0x2)
    /* E8FC4 80188584 01AEC025 */  or         $t8, $t5, $t6
    /* E8FC8 80188588 030FC825 */  or         $t9, $t8, $t7
    /* E8FCC 8018858C 17200300 */  bnez       $t9, .L80189190_ovl3
    /* E8FD0 80188590 00000000 */   nop
    /* E8FD4 80188594 954A6FEA */  lhu        $t2, %lo(gKirbyController + 0x2)($t2)
    /* E8FD8 80188598 314B003F */  andi       $t3, $t2, 0x3F
    /* E8FDC 8018859C 116002FC */  beqz       $t3, .L80189190_ovl3
    /* E8FE0 801885A0 00000000 */   nop
    /* E8FE4 801885A4 A1000007 */  sb         $zero, 0x7($t0)
    /* E8FE8 801885A8 0C04783A */  jal        func_8011E0E8
    /* E8FEC 801885AC AD0000A0 */   sw        $zero, 0xA0($t0)
    /* E8FF0 801885B0 0C047717 */  jal        func_8011DC5C
    /* E8FF4 801885B4 00000000 */   nop
    /* E8FF8 801885B8 0C047585 */  jal        func_8011D614
    /* E8FFC 801885BC 00000000 */   nop
    /* E9000 801885C0 24040011 */  addiu      $a0, $zero, 0x11
    /* E9004 801885C4 0C048BDB */  jal        set_kirby_action_1
    /* E9008 801885C8 24050011 */   addiu     $a1, $zero, 0x11
    /* E900C 801885CC 100004CE */  b          .L80189908_ovl3
    /* E9010 801885D0 8FBF0014 */   lw        $ra, 0x14($sp)
  jlabel .L801885D4_ovl3
    /* E9014 801885D4 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9018 801885D8 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E901C 801885DC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E9020 801885E0 44802000 */  mtc1       $zero, $f4
    /* E9024 801885E4 8CE30000 */  lw         $v1, 0x0($a3)
    /* E9028 801885E8 3C0D800D */  lui        $t5, %hi(gKirbyController + 0x2)
    /* E902C 801885EC 00031880 */  sll        $v1, $v1, 2
    /* E9030 801885F0 00230821 */  addu       $at, $at, $v1
    /* E9034 801885F4 C42664D0 */  lwc1       $f6, %lo(D_800E64D0)($at)
    /* E9038 801885F8 24010002 */  addiu      $at, $zero, 0x2
    /* E903C 801885FC 46062032 */  c.eq.s     $f4, $f6
    /* E9040 80188600 00000000 */  nop
    /* E9044 80188604 45000004 */  bc1f       .L80188618_ovl3
    /* E9048 80188608 00000000 */   nop
    /* E904C 8018860C 24040001 */  addiu      $a0, $zero, 0x1
    /* E9050 80188610 1000000F */  b          .L80188650_ovl3
    /* E9054 80188614 AD040044 */   sw        $a0, 0x44($t0)
  .L80188618_ovl3:
    /* E9058 80188618 95AD6FEA */  lhu        $t5, %lo(gKirbyController + 0x2)($t5)
    /* E905C 8018861C 3C18800F */  lui        $t8, %hi(D_800E8920)
    /* E9060 80188620 0303C021 */  addu       $t8, $t8, $v1
    /* E9064 80188624 31AE8000 */  andi       $t6, $t5, 0x8000
    /* E9068 80188628 11C00004 */  beqz       $t6, .L8018863C_ovl3
    /* E906C 8018862C 00000000 */   nop
    /* E9070 80188630 AD060044 */  sw         $a2, 0x44($t0)
    /* E9074 80188634 10000006 */  b          .L80188650_ovl3
    /* E9078 80188638 00C02025 */   or        $a0, $a2, $zero
  .L8018863C_ovl3:
    /* E907C 8018863C 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
    /* E9080 80188640 57000004 */  bnel       $t8, $zero, .L80188654_ovl3
    /* E9084 80188644 8D190034 */   lw        $t9, 0x34($t0)
    /* E9088 80188648 24040004 */  addiu      $a0, $zero, 0x4
    /* E908C 8018864C AD040044 */  sw         $a0, 0x44($t0)
  .L80188650_ovl3:
    /* E9090 80188650 8D190034 */  lw         $t9, 0x34($t0)
  .L80188654_ovl3:
    /* E9094 80188654 332A0001 */  andi       $t2, $t9, 0x1
    /* E9098 80188658 5540003D */  bnel       $t2, $zero, .L80188750_ovl3
    /* E909C 8018865C 8CEF0000 */   lw        $t7, 0x0($a3)
    /* E90A0 80188660 14810034 */  bne        $a0, $at, .L80188734_ovl3
    /* E90A4 80188664 00000000 */   nop
    /* E90A8 80188668 910B0007 */  lbu        $t3, 0x7($t0)
    /* E90AC 8018866C 1560002F */  bnez       $t3, .L8018872C_ovl3
    /* E90B0 80188670 00000000 */   nop
    /* E90B4 80188674 0C04843F */  jal        func_801210FC
    /* E90B8 80188678 00000000 */   nop
    /* E90BC 8018867C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E90C0 80188680 14400013 */  bnez       $v0, .L801886D0_ovl3
    /* E90C4 80188684 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E90C8 80188688 3C0C800D */  lui        $t4, %hi(gKirbyController)
    /* E90CC 8018868C 958C6FE8 */  lhu        $t4, %lo(gKirbyController)($t4)
    /* E90D0 80188690 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* E90D4 80188694 318D0300 */  andi       $t5, $t4, 0x300
    /* E90D8 80188698 15A00024 */  bnez       $t5, .L8018872C_ovl3
    /* E90DC 8018869C 00000000 */   nop
    /* E90E0 801886A0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* E90E4 801886A4 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* E90E8 801886A8 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E90EC 801886AC 8DD80000 */  lw         $t8, 0x0($t6)
    /* E90F0 801886B0 00187880 */  sll        $t7, $t8, 2
    /* E90F4 801886B4 012F1021 */  addu       $v0, $t1, $t7
    /* E90F8 801886B8 8C430000 */  lw         $v1, 0x0($v0)
    /* E90FC 801886BC 2861000A */  slti       $at, $v1, 0xA
    /* E9100 801886C0 1020001A */  beqz       $at, .L8018872C_ovl3
    /* E9104 801886C4 24790001 */   addiu     $t9, $v1, 0x1
    /* E9108 801886C8 10000018 */  b          .L8018872C_ovl3
    /* E910C 801886CC AC590000 */   sw        $t9, 0x0($v0)
  .L801886D0_ovl3:
    /* E9110 801886D0 3C0A800D */  lui        $t2, %hi(gKirbyController)
    /* E9114 801886D4 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
    /* E9118 801886D8 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* E911C 801886DC 314B0300 */  andi       $t3, $t2, 0x300
    /* E9120 801886E0 11600012 */  beqz       $t3, .L8018872C_ovl3
    /* E9124 801886E4 00000000 */   nop
    /* E9128 801886E8 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* E912C 801886EC 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* E9130 801886F0 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E9134 801886F4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* E9138 801886F8 000D7080 */  sll        $t6, $t5, 2
    /* E913C 801886FC 012E1021 */  addu       $v0, $t1, $t6
    /* E9140 80188700 8C430000 */  lw         $v1, 0x0($v0)
    /* E9144 80188704 18600008 */  blez       $v1, .L80188728_ovl3
    /* E9148 80188708 28610007 */   slti      $at, $v1, 0x7
    /* E914C 8018870C 10200006 */  beqz       $at, .L80188728_ovl3
    /* E9150 80188710 24180001 */   addiu     $t8, $zero, 0x1
    /* E9154 80188714 0C048AA0 */  jal        func_80122A80
    /* E9158 80188718 A1180007 */   sb        $t8, 0x7($t0)
    /* E915C 8018871C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9160 80188720 10000002 */  b          .L8018872C_ovl3
    /* E9164 80188724 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
  .L80188728_ovl3:
    /* E9168 80188728 AC400000 */  sw         $zero, 0x0($v0)
  .L8018872C_ovl3:
    /* E916C 8018872C 1000000D */  b          .L80188764_ovl3
    /* E9170 80188730 8D040044 */   lw        $a0, 0x44($t0)
  .L80188734_ovl3:
    /* E9174 80188734 0C0473D6 */  jal        func_8011CF58
    /* E9178 80188738 00000000 */   nop
    /* E917C 8018873C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9180 80188740 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E9184 80188744 10000007 */  b          .L80188764_ovl3
    /* E9188 80188748 8D040044 */   lw        $a0, 0x44($t0)
    /* E918C 8018874C 8CEF0000 */  lw         $t7, 0x0($a3)
  .L80188750_ovl3:
    /* E9190 80188750 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* E9194 80188754 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E9198 80188758 000FC880 */  sll        $t9, $t7, 2
    /* E919C 8018875C 01395021 */  addu       $t2, $t1, $t9
    /* E91A0 80188760 AD400000 */  sw         $zero, 0x0($t2)
  .L80188764_ovl3:
    /* E91A4 80188764 8D0B003C */  lw         $t3, 0x3C($t0)
    /* E91A8 80188768 15640003 */  bne        $t3, $a0, .L80188778_ovl3
    /* E91AC 8018876C 00000000 */   nop
    /* E91B0 80188770 0C048672 */  jal        func_801219C8
    /* E91B4 80188774 00000000 */   nop
  .L80188778_ovl3:
    /* E91B8 80188778 0C047B5A */  jal        func_8011ED68
    /* E91BC 8018877C 00000000 */   nop
    /* E91C0 80188780 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E91C4 80188784 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E91C8 80188788 910C0007 */  lbu        $t4, 0x7($t0)
    /* E91CC 8018878C 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* E91D0 80188790 5580000D */  bnel       $t4, $zero, .L801887C8_ovl3
    /* E91D4 80188794 44816000 */   mtc1      $at, $f12
    /* E91D8 80188798 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* E91DC 8018879C 44816000 */  mtc1       $at, $f12
    /* E91E0 801887A0 0C02BB30 */  jal        func_800AECC0
    /* E91E4 801887A4 00000000 */   nop
    /* E91E8 801887A8 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
    /* E91EC 801887AC 44816000 */  mtc1       $at, $f12
    /* E91F0 801887B0 0C02BB48 */  jal        func_800AED20
    /* E91F4 801887B4 00000000 */   nop
    /* E91F8 801887B8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E91FC 801887BC 1000000A */  b          .L801887E8_ovl3
    /* E9200 801887C0 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9204 801887C4 44816000 */  mtc1       $at, $f12
  .L801887C8_ovl3:
    /* E9208 801887C8 0C02BB30 */  jal        func_800AECC0
    /* E920C 801887CC 00000000 */   nop
    /* E9210 801887D0 3C014010 */  lui        $at, (0x40100000 >> 16)
    /* E9214 801887D4 44816000 */  mtc1       $at, $f12
    /* E9218 801887D8 0C02BB48 */  jal        func_800AED20
    /* E921C 801887DC 00000000 */   nop
    /* E9220 801887E0 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9224 801887E4 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L801887E8_ovl3:
    /* E9228 801887E8 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* E922C 801887EC 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* E9230 801887F0 8DA20000 */  lw         $v0, 0x0($t5)
    /* E9234 801887F4 10000266 */  b          .L80189190_ovl3
    /* E9238 801887F8 00021880 */   sll       $v1, $v0, 2
  jlabel .L801887FC_ovl3
    /* E923C 801887FC 8D0E0034 */  lw         $t6, 0x34($t0)
    /* E9240 80188800 31D80001 */  andi       $t8, $t6, 0x1
    /* E9244 80188804 5700000A */  bnel       $t8, $zero, .L80188830_ovl3
    /* E9248 80188808 8D0A00E4 */   lw        $t2, 0xE4($t0)
    /* E924C 8018880C 0C048465 */  jal        func_80121194
    /* E9250 80188810 00000000 */   nop
    /* E9254 80188814 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9258 80188818 10400004 */  beqz       $v0, .L8018882C_ovl3
    /* E925C 8018881C 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9260 80188820 8D0F0034 */  lw         $t7, 0x34($t0)
    /* E9264 80188824 35F90001 */  ori        $t9, $t7, 0x1
    /* E9268 80188828 AD190034 */  sw         $t9, 0x34($t0)
  .L8018882C_ovl3:
    /* E926C 8018882C 8D0A00E4 */  lw         $t2, 0xE4($t0)
  .L80188830_ovl3:
    /* E9270 80188830 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9274 80188834 5140002C */  beql       $t2, $zero, .L801888E8_ovl3
    /* E9278 80188838 950C00D2 */   lhu       $t4, 0xD2($t0)
    /* E927C 8018883C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E9280 80188840 44804000 */  mtc1       $zero, $f8
    /* E9284 80188844 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E9288 80188848 8CEB0000 */  lw         $t3, 0x0($a3)
    /* E928C 8018884C 240D0004 */  addiu      $t5, $zero, 0x4
    /* E9290 80188850 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
    /* E9294 80188854 000B6080 */  sll        $t4, $t3, 2
    /* E9298 80188858 002C0821 */  addu       $at, $at, $t4
    /* E929C 8018885C E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
    /* E92A0 80188860 AD0D0044 */  sw         $t5, 0x44($t0)
    /* E92A4 80188864 8CE30000 */  lw         $v1, 0x0($a3)
    /* E92A8 80188868 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* E92AC 8018886C 00031880 */  sll        $v1, $v1, 2
    /* E92B0 80188870 01C37021 */  addu       $t6, $t6, $v1
    /* E92B4 80188874 8DCE8AE0 */  lw         $t6, %lo(D_800E8AE0)($t6)
    /* E92B8 80188878 01E37821 */  addu       $t7, $t7, $v1
    /* E92BC 8018887C 31D80006 */  andi       $t8, $t6, 0x6
    /* E92C0 80188880 57000019 */  bnel       $t8, $zero, .L801888E8_ovl3
    /* E92C4 80188884 950C00D2 */   lhu       $t4, 0xD2($t0)
    /* E92C8 80188888 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
    /* E92CC 8018888C 3C048019 */  lui        $a0, %hi(D_8019395C_ovl3)
    /* E92D0 80188890 2484395C */  addiu      $a0, $a0, %lo(D_8019395C_ovl3)
    /* E92D4 80188894 55E00014 */  bnel       $t7, $zero, .L801888E8_ovl3
    /* E92D8 80188898 950C00D2 */   lhu       $t4, 0xD2($t0)
    /* E92DC 8018889C 0C055127 */  jal        func_8015449C_ovl3
    /* E92E0 801888A0 00002825 */   or        $a1, $zero, $zero
    /* E92E4 801888A4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E92E8 801888A8 1040000E */  beqz       $v0, .L801888E4_ovl3
    /* E92EC 801888AC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E92F0 801888B0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E92F4 801888B4 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E92F8 801888B8 44805000 */  mtc1       $zero, $f10
    /* E92FC 801888BC 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E9300 801888C0 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9304 801888C4 2404000B */  addiu      $a0, $zero, 0xB
    /* E9308 801888C8 2405000A */  addiu      $a1, $zero, 0xA
    /* E930C 801888CC 000A5880 */  sll        $t3, $t2, 2
    /* E9310 801888D0 002B0821 */  addu       $at, $at, $t3
    /* E9314 801888D4 0C02ED1A */  jal        func_800BB468
    /* E9318 801888D8 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
    /* E931C 801888DC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9320 801888E0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L801888E4_ovl3:
    /* E9324 801888E4 950C00D2 */  lhu        $t4, 0xD2($t0)
  .L801888E8_ovl3:
    /* E9328 801888E8 15800005 */  bnez       $t4, .L80188900_ovl3
    /* E932C 801888EC 00000000 */   nop
    /* E9330 801888F0 0C047AF5 */  jal        func_8011EBD4
    /* E9334 801888F4 00000000 */   nop
    /* E9338 801888F8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E933C 801888FC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L80188900_ovl3:
    /* E9340 80188900 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9344 80188904 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E9348 80188908 3C0D800F */  lui        $t5, %hi(D_800E83E0)
    /* E934C 8018890C 24010002 */  addiu      $at, $zero, 0x2
    /* E9350 80188910 8CE30000 */  lw         $v1, 0x0($a3)
    /* E9354 80188914 3C0C800F */  lui        $t4, %hi(D_800E8AE0)
    /* E9358 80188918 3C02800E */  lui        $v0, %hi(D_800E3750)
    /* E935C 8018891C 00031880 */  sll        $v1, $v1, 2
    /* E9360 80188920 01A36821 */  addu       $t5, $t5, $v1
    /* E9364 80188924 8DAD83E0 */  lw         $t5, %lo(D_800E83E0)($t5)
    /* E9368 80188928 01836021 */  addu       $t4, $t4, $v1
    /* E936C 8018892C 31AEFFFF */  andi       $t6, $t5, 0xFFFF
    /* E9370 80188930 15C1001B */  bne        $t6, $at, .L801889A0_ovl3
    /* E9374 80188934 00000000 */   nop
    /* E9378 80188938 44808000 */  mtc1       $zero, $f16
    /* E937C 8018893C 24423750 */  addiu      $v0, $v0, %lo(D_800E3750)
    /* E9380 80188940 0043C021 */  addu       $t8, $v0, $v1
    /* E9384 80188944 E7100000 */  swc1       $f16, 0x0($t8)
    /* E9388 80188948 8CE30000 */  lw         $v1, 0x0($a3)
    /* E938C 8018894C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E9390 80188950 2404000B */  addiu      $a0, $zero, 0xB
    /* E9394 80188954 00031880 */  sll        $v1, $v1, 2
    /* E9398 80188958 00437821 */  addu       $t7, $v0, $v1
    /* E939C 8018895C C5F20000 */  lwc1       $f18, 0x0($t7)
    /* E93A0 80188960 00230821 */  addu       $at, $at, $v1
    /* E93A4 80188964 2405000A */  addiu      $a1, $zero, 0xA
    /* E93A8 80188968 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
    /* E93AC 8018896C 8CF90000 */  lw         $t9, 0x0($a3)
    /* E93B0 80188970 3C018019 */  lui        $at, %hi(D_801978DC_ovl3)
    /* E93B4 80188974 C42478DC */  lwc1       $f4, %lo(D_801978DC_ovl3)($at)
    /* E93B8 80188978 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E93BC 8018897C 00195080 */  sll        $t2, $t9, 2
    /* E93C0 80188980 002A0821 */  addu       $at, $at, $t2
    /* E93C4 80188984 0C02ED1A */  jal        func_800BB468
    /* E93C8 80188988 E4243C90 */   swc1      $f4, %lo(D_800E3C90)($at)
    /* E93CC 8018898C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E93D0 80188990 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E93D4 80188994 240B0004 */  addiu      $t3, $zero, 0x4
    /* E93D8 80188998 10000018 */  b          .L801889FC_ovl3
    /* E93DC 8018899C AD0B0044 */   sw        $t3, 0x44($t0)
  .L801889A0_ovl3:
    /* E93E0 801889A0 8D8C8AE0 */  lw         $t4, %lo(D_800E8AE0)($t4)
    /* E93E4 801889A4 318D0006 */  andi       $t5, $t4, 0x6
    /* E93E8 801889A8 15A00014 */  bnez       $t5, .L801889FC_ovl3
    /* E93EC 801889AC 00000000 */   nop
    /* E93F0 801889B0 910E0009 */  lbu        $t6, 0x9($t0)
    /* E93F4 801889B4 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E93F8 801889B8 00230821 */  addu       $at, $at, $v1
    /* E93FC 801889BC 31D80001 */  andi       $t8, $t6, 0x1
    /* E9400 801889C0 1700000E */  bnez       $t8, .L801889FC_ovl3
    /* E9404 801889C4 00000000 */   nop
    /* E9408 801889C8 C50600CC */  lwc1       $f6, 0xCC($t0)
    /* E940C 801889CC C4283210 */  lwc1       $f8, %lo(D_800E3210)($at)
    /* E9410 801889D0 8FAF0080 */  lw         $t7, 0x80($sp)
    /* E9414 801889D4 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
    /* E9418 801889D8 4608303C */  c.lt.s     $f6, $f8
    /* E941C 801889DC 00000000 */  nop
    /* E9420 801889E0 45000006 */  bc1f       .L801889FC_ovl3
    /* E9424 801889E4 00000000 */   nop
    /* E9428 801889E8 8DF9003C */  lw         $t9, 0x3C($t7)
    /* E942C 801889EC 3C048019 */  lui        $a0, %hi(D_80190F2C_ovl3)
    /* E9430 801889F0 24840F2C */  addiu      $a0, $a0, %lo(D_80190F2C_ovl3)
    /* E9434 801889F4 0C05A153 */  jal        func_8016854C_ovl3
    /* E9438 801889F8 8F250010 */   lw        $a1, 0x10($t9)
  .L801889FC_ovl3:
    /* E943C 801889FC 0C048672 */  jal        func_801219C8
    /* E9440 80188A00 00000000 */   nop
    /* E9444 80188A04 0C047B5A */  jal        func_8011ED68
    /* E9448 80188A08 00000000 */   nop
    /* E944C 80188A0C 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E9450 80188A10 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E9454 80188A14 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9458 80188A18 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E945C 80188A1C 8D420000 */  lw         $v0, 0x0($t2)
    /* E9460 80188A20 100001DB */  b          .L80189190_ovl3
    /* E9464 80188A24 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188A28_ovl3
    /* E9468 80188A28 8D0B0034 */  lw         $t3, 0x34($t0)
    /* E946C 80188A2C 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* E9470 80188A30 316C0001 */  andi       $t4, $t3, 0x1
    /* E9474 80188A34 5580000C */  bnel       $t4, $zero, .L80188A68_ovl3
    /* E9478 80188A38 8D0A003C */   lw        $t2, 0x3C($t0)
    /* E947C 80188A3C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* E9480 80188A40 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* E9484 80188A44 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9488 80188A48 000EC080 */  sll        $t8, $t6, 2
    /* E948C 80188A4C 01F87821 */  addu       $t7, $t7, $t8
    /* E9490 80188A50 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* E9494 80188A54 51E00004 */  beql       $t7, $zero, .L80188A68_ovl3
    /* E9498 80188A58 8D0A003C */   lw        $t2, 0x3C($t0)
    /* E949C 80188A5C 24040005 */  addiu      $a0, $zero, 0x5
    /* E94A0 80188A60 AD040044 */  sw         $a0, 0x44($t0)
    /* E94A4 80188A64 8D0A003C */  lw         $t2, 0x3C($t0)
  .L80188A68_ovl3:
    /* E94A8 80188A68 15440003 */  bne        $t2, $a0, .L80188A78_ovl3
    /* E94AC 80188A6C 00000000 */   nop
    /* E94B0 80188A70 0C048672 */  jal        func_801219C8
    /* E94B4 80188A74 00000000 */   nop
  .L80188A78_ovl3:
    /* E94B8 80188A78 0C047B5A */  jal        func_8011ED68
    /* E94BC 80188A7C 00000000 */   nop
    /* E94C0 80188A80 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E94C4 80188A84 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E94C8 80188A88 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E94CC 80188A8C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E94D0 80188A90 8D620000 */  lw         $v0, 0x0($t3)
    /* E94D4 80188A94 100001BE */  b          .L80189190_ovl3
    /* E94D8 80188A98 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188A9C_ovl3
    /* E94DC 80188A9C 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* E94E0 80188AA0 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* E94E4 80188AA4 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E94E8 80188AA8 44805000 */  mtc1       $zero, $f10
    /* E94EC 80188AAC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* E94F0 80188AB0 24180002 */  addiu      $t8, $zero, 0x2
    /* E94F4 80188AB4 3C0F800D */  lui        $t7, %hi(gKirbyController + 0x2)
    /* E94F8 80188AB8 000D7080 */  sll        $t6, $t5, 2
    /* E94FC 80188ABC 002E0821 */  addu       $at, $at, $t6
    /* E9500 80188AC0 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
    /* E9504 80188AC4 46105032 */  c.eq.s     $f10, $f16
    /* E9508 80188AC8 00000000 */  nop
    /* E950C 80188ACC 45010003 */  bc1t       .L80188ADC_ovl3
    /* E9510 80188AD0 00000000 */   nop
    /* E9514 80188AD4 1000000E */  b          .L80188B10_ovl3
    /* E9518 80188AD8 AD180044 */   sw        $t8, 0x44($t0)
  .L80188ADC_ovl3:
    /* E951C 80188ADC 95EF6FEA */  lhu        $t7, %lo(gKirbyController + 0x2)($t7)
    /* E9520 80188AE0 31F98000 */  andi       $t9, $t7, 0x8000
    /* E9524 80188AE4 13200003 */  beqz       $t9, .L80188AF4_ovl3
    /* E9528 80188AE8 00000000 */   nop
    /* E952C 80188AEC 10000008 */  b          .L80188B10_ovl3
    /* E9530 80188AF0 AD060044 */   sw        $a2, 0x44($t0)
  .L80188AF4_ovl3:
    /* E9534 80188AF4 0C02BC8C */  jal        func_800AF230
    /* E9538 80188AF8 00000000 */   nop
    /* E953C 80188AFC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9540 80188B00 10400003 */  beqz       $v0, .L80188B10_ovl3
    /* E9544 80188B04 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9548 80188B08 240A0001 */  addiu      $t2, $zero, 0x1
    /* E954C 80188B0C AD0A0044 */  sw         $t2, 0x44($t0)
  .L80188B10_ovl3:
    /* E9550 80188B10 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E9554 80188B14 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E9558 80188B18 8D620000 */  lw         $v0, 0x0($t3)
    /* E955C 80188B1C 1000019C */  b          .L80189190_ovl3
    /* E9560 80188B20 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188B24_ovl3
    /* E9564 80188B24 3C05800D */  lui        $a1, %hi(gKirbyController)
    /* E9568 80188B28 94A56FE8 */  lhu        $a1, %lo(gKirbyController)($a1)
    /* E956C 80188B2C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9570 80188B30 30A50F00 */  andi       $a1, $a1, 0xF00
    /* E9574 80188B34 10A0000A */  beqz       $a1, .L80188B60_ovl3
    /* E9578 80188B38 00000000 */   nop
    /* E957C 80188B3C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E9580 80188B40 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* E9584 80188B44 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E9588 80188B48 8CED0000 */  lw         $t5, 0x0($a3)
    /* E958C 80188B4C 240C001E */  addiu      $t4, $zero, 0x1E
    /* E9590 80188B50 000D7080 */  sll        $t6, $t5, 2
    /* E9594 80188B54 012EC021 */  addu       $t8, $t1, $t6
    /* E9598 80188B58 10000018 */  b          .L80188BBC_ovl3
    /* E959C 80188B5C AF0C0000 */   sw        $t4, 0x0($t8)
  .L80188B60_ovl3:
    /* E95A0 80188B60 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E95A4 80188B64 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E95A8 80188B68 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E95AC 80188B6C 44809000 */  mtc1       $zero, $f18
    /* E95B0 80188B70 8CE30000 */  lw         $v1, 0x0($a3)
    /* E95B4 80188B74 00031880 */  sll        $v1, $v1, 2
    /* E95B8 80188B78 00230821 */  addu       $at, $at, $v1
    /* E95BC 80188B7C C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
    /* E95C0 80188B80 4604903C */  c.lt.s     $f18, $f4
    /* E95C4 80188B84 00000000 */  nop
    /* E95C8 80188B88 45000006 */  bc1f       .L80188BA4_ovl3
    /* E95CC 80188B8C 3C09800F */   lui       $t1, %hi(D_800E9560)
    /* E95D0 80188B90 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E95D4 80188B94 0123C821 */  addu       $t9, $t1, $v1
    /* E95D8 80188B98 240F001E */  addiu      $t7, $zero, 0x1E
    /* E95DC 80188B9C 10000007 */  b          .L80188BBC_ovl3
    /* E95E0 80188BA0 AF2F0000 */   sw        $t7, 0x0($t9)
  .L80188BA4_ovl3:
    /* E95E4 80188BA4 3C09800F */  lui        $t1, %hi(D_800E9560)
    /* E95E8 80188BA8 25299560 */  addiu      $t1, $t1, %lo(D_800E9560)
    /* E95EC 80188BAC 01231021 */  addu       $v0, $t1, $v1
    /* E95F0 80188BB0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* E95F4 80188BB4 254BFFFF */  addiu      $t3, $t2, -0x1
    /* E95F8 80188BB8 AC4B0000 */  sw         $t3, 0x0($v0)
  .L80188BBC_ovl3:
    /* E95FC 80188BBC 8CE30000 */  lw         $v1, 0x0($a3)
    /* E9600 80188BC0 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
    /* E9604 80188BC4 00031880 */  sll        $v1, $v1, 2
    /* E9608 80188BC8 01A36821 */  addu       $t5, $t5, $v1
    /* E960C 80188BCC 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
    /* E9610 80188BD0 31AE0006 */  andi       $t6, $t5, 0x6
    /* E9614 80188BD4 11C00030 */  beqz       $t6, .L80188C98_ovl3
    /* E9618 80188BD8 3C0C800F */   lui       $t4, %hi(D_800E8920)
    /* E961C 80188BDC 01836021 */  addu       $t4, $t4, $v1
    /* E9620 80188BE0 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* E9624 80188BE4 11800011 */  beqz       $t4, .L80188C2C_ovl3
    /* E9628 80188BE8 00000000 */   nop
    /* E962C 80188BEC 0C04842D */  jal        func_801210B4
    /* E9630 80188BF0 00000000 */   nop
    /* E9634 80188BF4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9638 80188BF8 10400004 */  beqz       $v0, .L80188C0C_ovl3
    /* E963C 80188BFC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9640 80188C00 24180002 */  addiu      $t8, $zero, 0x2
    /* E9644 80188C04 10000003 */  b          .L80188C14_ovl3
    /* E9648 80188C08 AD180044 */   sw        $t8, 0x44($t0)
  .L80188C0C_ovl3:
    /* E964C 80188C0C 240F0001 */  addiu      $t7, $zero, 0x1
    /* E9650 80188C10 AD0F0044 */  sw         $t7, 0x44($t0)
  .L80188C14_ovl3:
    /* E9654 80188C14 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9658 80188C18 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E965C 80188C1C 8D040044 */  lw         $a0, 0x44($t0)
    /* E9660 80188C20 8CE30000 */  lw         $v1, 0x0($a3)
    /* E9664 80188C24 1000002A */  b          .L80188CD0_ovl3
    /* E9668 80188C28 00031880 */   sll       $v1, $v1, 2
  .L80188C2C_ovl3:
    /* E966C 80188C2C 14A00028 */  bnez       $a1, .L80188CD0_ovl3
    /* E9670 80188C30 0123C821 */   addu      $t9, $t1, $v1
    /* E9674 80188C34 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9678 80188C38 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E967C 80188C3C 00230821 */  addu       $at, $at, $v1
    /* E9680 80188C40 15400023 */  bnez       $t2, .L80188CD0_ovl3
    /* E9684 80188C44 00000000 */   nop
    /* E9688 80188C48 44803000 */  mtc1       $zero, $f6
    /* E968C 80188C4C C42864D0 */  lwc1       $f8, %lo(D_800E64D0)($at)
    /* E9690 80188C50 3C018019 */  lui        $at, %hi(D_801978E0_ovl3)
    /* E9694 80188C54 46083032 */  c.eq.s     $f6, $f8
    /* E9698 80188C58 00000000 */  nop
    /* E969C 80188C5C 4500001C */  bc1f       .L80188CD0_ovl3
    /* E96A0 80188C60 00000000 */   nop
    /* E96A4 80188C64 C42A78E0 */  lwc1       $f10, %lo(D_801978E0_ovl3)($at)
    /* E96A8 80188C68 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E96AC 80188C6C 00230821 */  addu       $at, $at, $v1
    /* E96B0 80188C70 C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
    /* E96B4 80188C74 460A803E */  c.le.s     $f16, $f10
    /* E96B8 80188C78 00000000 */  nop
    /* E96BC 80188C7C 45000014 */  bc1f       .L80188CD0_ovl3
    /* E96C0 80188C80 00000000 */   nop
    /* E96C4 80188C84 24040004 */  addiu      $a0, $zero, 0x4
    /* E96C8 80188C88 AD040044 */  sw         $a0, 0x44($t0)
    /* E96CC 80188C8C 8CE30000 */  lw         $v1, 0x0($a3)
    /* E96D0 80188C90 1000000F */  b          .L80188CD0_ovl3
    /* E96D4 80188C94 00031880 */   sll       $v1, $v1, 2
  .L80188C98_ovl3:
    /* E96D8 80188C98 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* E96DC 80188C9C 01A36821 */  addu       $t5, $t5, $v1
    /* E96E0 80188CA0 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* E96E4 80188CA4 24040002 */  addiu      $a0, $zero, 0x2
    /* E96E8 80188CA8 51A00006 */  beql       $t5, $zero, .L80188CC4_ovl3
    /* E96EC 80188CAC AD060044 */   sw        $a2, 0x44($t0)
    /* E96F0 80188CB0 AD040044 */  sw         $a0, 0x44($t0)
    /* E96F4 80188CB4 8CE30000 */  lw         $v1, 0x0($a3)
    /* E96F8 80188CB8 10000005 */  b          .L80188CD0_ovl3
    /* E96FC 80188CBC 00031880 */   sll       $v1, $v1, 2
    /* E9700 80188CC0 AD060044 */  sw         $a2, 0x44($t0)
  .L80188CC4_ovl3:
    /* E9704 80188CC4 8CE30000 */  lw         $v1, 0x0($a3)
    /* E9708 80188CC8 00C02025 */  or         $a0, $a2, $zero
    /* E970C 80188CCC 00031880 */  sll        $v1, $v1, 2
  .L80188CD0_ovl3:
    /* E9710 80188CD0 3C0C800F */  lui        $t4, %hi(D_800E93A0)
    /* E9714 80188CD4 258C93A0 */  addiu      $t4, $t4, %lo(D_800E93A0)
    /* E9718 80188CD8 006C1021 */  addu       $v0, $v1, $t4
    /* E971C 80188CDC 8C450000 */  lw         $a1, 0x0($v0)
    /* E9720 80188CE0 10A00002 */  beqz       $a1, .L80188CEC_ovl3
    /* E9724 80188CE4 24B8FFFF */   addiu     $t8, $a1, -0x1
    /* E9728 80188CE8 AC580000 */  sw         $t8, 0x0($v0)
  .L80188CEC_ovl3:
    /* E972C 80188CEC 8D0F003C */  lw         $t7, 0x3C($t0)
    /* E9730 80188CF0 55E40008 */  bnel       $t7, $a0, .L80188D14_ovl3
    /* E9734 80188CF4 91190017 */   lbu       $t9, 0x17($t0)
    /* E9738 80188CF8 0C048672 */  jal        func_801219C8
    /* E973C 80188CFC 00000000 */   nop
    /* E9740 80188D00 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9744 80188D04 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9748 80188D08 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E974C 80188D0C 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E9750 80188D10 91190017 */  lbu        $t9, 0x17($t0)
  .L80188D14_ovl3:
    /* E9754 80188D14 8CE20000 */  lw         $v0, 0x0($a3)
    /* E9758 80188D18 1720011D */  bnez       $t9, .L80189190_ovl3
    /* E975C 80188D1C 00021880 */   sll       $v1, $v0, 2
    /* E9760 80188D20 3C0A800D */  lui        $t2, %hi(gKirbyController)
    /* E9764 80188D24 954A6FE8 */  lhu        $t2, %lo(gKirbyController)($t2)
    /* E9768 80188D28 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* E976C 80188D2C 00230821 */  addu       $at, $at, $v1
    /* E9770 80188D30 314B0300 */  andi       $t3, $t2, 0x300
    /* E9774 80188D34 15600013 */  bnez       $t3, .L80188D84_ovl3
    /* E9778 80188D38 00000000 */   nop
    /* E977C 80188D3C 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* E9780 80188D40 00230821 */  addu       $at, $at, $v1
    /* E9784 80188D44 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
    /* E9788 80188D48 3C018019 */  lui        $at, %hi(D_801978E4_ovl3)
    /* E978C 80188D4C C42478E4 */  lwc1       $f4, %lo(D_801978E4_ovl3)($at)
    /* E9790 80188D50 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E9794 80188D54 00230821 */  addu       $at, $at, $v1
    /* E9798 80188D58 46049182 */  mul.s      $f6, $f18, $f4
    /* E979C 80188D5C 44804000 */  mtc1       $zero, $f8
    /* E97A0 80188D60 E4266690 */  swc1       $f6, %lo(D_800E6690)($at)
    /* E97A4 80188D64 8CED0000 */  lw         $t5, 0x0($a3)
    /* E97A8 80188D68 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E97AC 80188D6C 000D7080 */  sll        $t6, $t5, 2
    /* E97B0 80188D70 002E0821 */  addu       $at, $at, $t6
    /* E97B4 80188D74 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
    /* E97B8 80188D78 8CE20000 */  lw         $v0, 0x0($a3)
    /* E97BC 80188D7C 10000104 */  b          .L80189190_ovl3
    /* E97C0 80188D80 00021880 */   sll       $v1, $v0, 2
  .L80188D84_ovl3:
    /* E97C4 80188D84 C42A6A10 */  lwc1       $f10, %lo(D_800E6A10)($at)
    /* E97C8 80188D88 3C018019 */  lui        $at, %hi(D_801978E8_ovl3)
    /* E97CC 80188D8C C43078E8 */  lwc1       $f16, %lo(D_801978E8_ovl3)($at)
    /* E97D0 80188D90 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E97D4 80188D94 00230821 */  addu       $at, $at, $v1
    /* E97D8 80188D98 46105482 */  mul.s      $f18, $f10, $f16
    /* E97DC 80188D9C E4326690 */  swc1       $f18, %lo(D_800E6690)($at)
    /* E97E0 80188DA0 8CEC0000 */  lw         $t4, 0x0($a3)
    /* E97E4 80188DA4 3C018019 */  lui        $at, %hi(D_801978EC_ovl3)
    /* E97E8 80188DA8 C42478EC */  lwc1       $f4, %lo(D_801978EC_ovl3)($at)
    /* E97EC 80188DAC 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E97F0 80188DB0 000CC080 */  sll        $t8, $t4, 2
    /* E97F4 80188DB4 00380821 */  addu       $at, $at, $t8
    /* E97F8 80188DB8 E4246850 */  swc1       $f4, %lo(D_800E6850)($at)
    /* E97FC 80188DBC 8CE20000 */  lw         $v0, 0x0($a3)
    /* E9800 80188DC0 100000F3 */  b          .L80189190_ovl3
    /* E9804 80188DC4 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188DC8_ovl3
    /* E9808 80188DC8 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* E980C 80188DCC 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* E9810 80188DD0 3C19800F */  lui        $t9, %hi(D_800EA360)
    /* E9814 80188DD4 3C0A800F */  lui        $t2, %hi(D_800E8920)
    /* E9818 80188DD8 8DE20000 */  lw         $v0, 0x0($t7)
    /* E981C 80188DDC 00021880 */  sll        $v1, $v0, 2
    /* E9820 80188DE0 0323C821 */  addu       $t9, $t9, $v1
    /* E9824 80188DE4 8F39A360 */  lw         $t9, %lo(D_800EA360)($t9)
    /* E9828 80188DE8 01435021 */  addu       $t2, $t2, $v1
    /* E982C 80188DEC 132000E8 */  beqz       $t9, .L80189190_ovl3
    /* E9830 80188DF0 00000000 */   nop
    /* E9834 80188DF4 8D4A8920 */  lw         $t2, %lo(D_800E8920)($t2)
    /* E9838 80188DF8 240E0004 */  addiu      $t6, $zero, 0x4
    /* E983C 80188DFC 5140000D */  beql       $t2, $zero, .L80188E34_ovl3
    /* E9840 80188E00 AD0E0044 */   sw        $t6, 0x44($t0)
    /* E9844 80188E04 0C04842D */  jal        func_801210B4
    /* E9848 80188E08 00000000 */   nop
    /* E984C 80188E0C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9850 80188E10 10400004 */  beqz       $v0, .L80188E24_ovl3
    /* E9854 80188E14 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9858 80188E18 240B0002 */  addiu      $t3, $zero, 0x2
    /* E985C 80188E1C 10000005 */  b          .L80188E34_ovl3
    /* E9860 80188E20 AD0B0044 */   sw        $t3, 0x44($t0)
  .L80188E24_ovl3:
    /* E9864 80188E24 240D0001 */  addiu      $t5, $zero, 0x1
    /* E9868 80188E28 10000002 */  b          .L80188E34_ovl3
    /* E986C 80188E2C AD0D0044 */   sw        $t5, 0x44($t0)
    /* E9870 80188E30 AD0E0044 */  sw         $t6, 0x44($t0)
  .L80188E34_ovl3:
    /* E9874 80188E34 0C047734 */  jal        func_8011DCD0
    /* E9878 80188E38 00000000 */   nop
    /* E987C 80188E3C 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* E9880 80188E40 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* E9884 80188E44 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9888 80188E48 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E988C 80188E4C 8D820000 */  lw         $v0, 0x0($t4)
    /* E9890 80188E50 100000CF */  b          .L80189190_ovl3
    /* E9894 80188E54 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188E58_ovl3
    /* E9898 80188E58 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E989C 80188E5C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E98A0 80188E60 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* E98A4 80188E64 3C09800F */  lui        $t1, %hi(D_800E9720)
    /* E98A8 80188E68 8CE20000 */  lw         $v0, 0x0($a3)
    /* E98AC 80188E6C 24010001 */  addiu      $at, $zero, 0x1
    /* E98B0 80188E70 3C0F800F */  lui        $t7, %hi(D_800E8920)
    /* E98B4 80188E74 00021880 */  sll        $v1, $v0, 2
    /* E98B8 80188E78 0303C021 */  addu       $t8, $t8, $v1
    /* E98BC 80188E7C 8F1898E0 */  lw         $t8, %lo(D_800E98E0)($t8)
    /* E98C0 80188E80 25299720 */  addiu      $t1, $t1, %lo(D_800E9720)
    /* E98C4 80188E84 01E37821 */  addu       $t7, $t7, $v1
    /* E98C8 80188E88 17010012 */  bne        $t8, $at, .L80188ED4_ovl3
    /* E98CC 80188E8C 01232021 */   addu      $a0, $t1, $v1
    /* E98D0 80188E90 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
    /* E98D4 80188E94 3C0A800F */  lui        $t2, %hi(D_800E9E20)
    /* E98D8 80188E98 24190004 */  addiu      $t9, $zero, 0x4
    /* E98DC 80188E9C 15E00003 */  bnez       $t7, .L80188EAC_ovl3
    /* E98E0 80188EA0 01435021 */   addu      $t2, $t2, $v1
    /* E98E4 80188EA4 10000008 */  b          .L80188EC8_ovl3
    /* E98E8 80188EA8 AD190044 */   sw        $t9, 0x44($t0)
  .L80188EAC_ovl3:
    /* E98EC 80188EAC 8D4A9E20 */  lw         $t2, %lo(D_800E9E20)($t2)
    /* E98F0 80188EB0 240B0001 */  addiu      $t3, $zero, 0x1
    /* E98F4 80188EB4 51400004 */  beql       $t2, $zero, .L80188EC8_ovl3
    /* E98F8 80188EB8 AD0B0044 */   sw        $t3, 0x44($t0)
    /* E98FC 80188EBC 10000002 */  b          .L80188EC8_ovl3
    /* E9900 80188EC0 AD060044 */   sw        $a2, 0x44($t0)
    /* E9904 80188EC4 AD0B0044 */  sw         $t3, 0x44($t0)
  .L80188EC8_ovl3:
    /* E9908 80188EC8 8CE20000 */  lw         $v0, 0x0($a3)
    /* E990C 80188ECC 100000B0 */  b          .L80189190_ovl3
    /* E9910 80188ED0 00021880 */   sll       $v1, $v0, 2
  .L80188ED4_ovl3:
    /* E9914 80188ED4 8C850000 */  lw         $a1, 0x0($a0)
    /* E9918 80188ED8 3C0D800D */  lui        $t5, %hi(gKirbyController)
    /* E991C 80188EDC 10A000AC */  beqz       $a1, .L80189190_ovl3
    /* E9920 80188EE0 00000000 */   nop
    /* E9924 80188EE4 95AD6FE8 */  lhu        $t5, %lo(gKirbyController)($t5)
    /* E9928 80188EE8 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* E992C 80188EEC 00230821 */  addu       $at, $at, $v1
    /* E9930 80188EF0 31AE8000 */  andi       $t6, $t5, 0x8000
    /* E9934 80188EF4 11C00008 */  beqz       $t6, .L80188F18_ovl3
    /* E9938 80188EF8 240C0001 */   addiu     $t4, $zero, 0x1
    /* E993C 80188EFC AC2C9E20 */  sw         $t4, %lo(D_800E9E20)($at)
    /* E9940 80188F00 8CF80000 */  lw         $t8, 0x0($a3)
    /* E9944 80188F04 3C19800F */  lui        $t9, %hi(D_800E9720)
    /* E9948 80188F08 27399720 */  addiu      $t9, $t9, %lo(D_800E9720)
    /* E994C 80188F0C 00187880 */  sll        $t7, $t8, 2
    /* E9950 80188F10 01F92021 */  addu       $a0, $t7, $t9
    /* E9954 80188F14 8C850000 */  lw         $a1, 0x0($a0)
  .L80188F18_ovl3:
    /* E9958 80188F18 24AAFFFF */  addiu      $t2, $a1, -0x1
    /* E995C 80188F1C AC8A0000 */  sw         $t2, 0x0($a0)
    /* E9960 80188F20 8CE20000 */  lw         $v0, 0x0($a3)
    /* E9964 80188F24 1000009A */  b          .L80189190_ovl3
    /* E9968 80188F28 00021880 */   sll       $v1, $v0, 2
  jlabel .L80188F2C_ovl3
    /* E996C 80188F2C 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* E9970 80188F30 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* E9974 80188F34 3C0B800F */  lui        $t3, %hi(D_800E98E0)
    /* E9978 80188F38 3C09800F */  lui        $t1, %hi(D_800E9720)
    /* E997C 80188F3C 8CE20000 */  lw         $v0, 0x0($a3)
    /* E9980 80188F40 3C0D800F */  lui        $t5, %hi(D_800E8920)
    /* E9984 80188F44 25299720 */  addiu      $t1, $t1, %lo(D_800E9720)
    /* E9988 80188F48 00021880 */  sll        $v1, $v0, 2
    /* E998C 80188F4C 01635821 */  addu       $t3, $t3, $v1
    /* E9990 80188F50 8D6B98E0 */  lw         $t3, %lo(D_800E98E0)($t3)
    /* E9994 80188F54 01A36821 */  addu       $t5, $t5, $v1
    /* E9998 80188F58 01232021 */  addu       $a0, $t1, $v1
    /* E999C 80188F5C 55600013 */  bnel       $t3, $zero, .L80188FAC_ovl3
    /* E99A0 80188F60 8C850000 */   lw        $a1, 0x0($a0)
    /* E99A4 80188F64 8DAD8920 */  lw         $t5, %lo(D_800E8920)($t5)
    /* E99A8 80188F68 3C0C800F */  lui        $t4, %hi(D_800E9E20)
    /* E99AC 80188F6C 240E0004 */  addiu      $t6, $zero, 0x4
    /* E99B0 80188F70 15A00003 */  bnez       $t5, .L80188F80_ovl3
    /* E99B4 80188F74 01836021 */   addu      $t4, $t4, $v1
    /* E99B8 80188F78 10000008 */  b          .L80188F9C_ovl3
    /* E99BC 80188F7C AD0E0044 */   sw        $t6, 0x44($t0)
  .L80188F80_ovl3:
    /* E99C0 80188F80 8D8C9E20 */  lw         $t4, %lo(D_800E9E20)($t4)
    /* E99C4 80188F84 24180001 */  addiu      $t8, $zero, 0x1
    /* E99C8 80188F88 51800004 */  beql       $t4, $zero, .L80188F9C_ovl3
    /* E99CC 80188F8C AD180044 */   sw        $t8, 0x44($t0)
    /* E99D0 80188F90 10000002 */  b          .L80188F9C_ovl3
    /* E99D4 80188F94 AD060044 */   sw        $a2, 0x44($t0)
    /* E99D8 80188F98 AD180044 */  sw         $t8, 0x44($t0)
  .L80188F9C_ovl3:
    /* E99DC 80188F9C 8CE20000 */  lw         $v0, 0x0($a3)
    /* E99E0 80188FA0 1000007B */  b          .L80189190_ovl3
    /* E99E4 80188FA4 00021880 */   sll       $v1, $v0, 2
    /* E99E8 80188FA8 8C850000 */  lw         $a1, 0x0($a0)
  .L80188FAC_ovl3:
    /* E99EC 80188FAC 3C0F800D */  lui        $t7, %hi(gKirbyController)
    /* E99F0 80188FB0 10A00077 */  beqz       $a1, .L80189190_ovl3
    /* E99F4 80188FB4 00000000 */   nop
    /* E99F8 80188FB8 95EF6FE8 */  lhu        $t7, %lo(gKirbyController)($t7)
    /* E99FC 80188FBC 3C01800F */  lui        $at, %hi(D_800E9E20)
    /* E9A00 80188FC0 00230821 */  addu       $at, $at, $v1
    /* E9A04 80188FC4 31F98000 */  andi       $t9, $t7, 0x8000
    /* E9A08 80188FC8 13200008 */  beqz       $t9, .L80188FEC_ovl3
    /* E9A0C 80188FCC 240A0001 */   addiu     $t2, $zero, 0x1
    /* E9A10 80188FD0 AC2A9E20 */  sw         $t2, %lo(D_800E9E20)($at)
    /* E9A14 80188FD4 8CEB0000 */  lw         $t3, 0x0($a3)
    /* E9A18 80188FD8 3C0E800F */  lui        $t6, %hi(D_800E9720)
    /* E9A1C 80188FDC 25CE9720 */  addiu      $t6, $t6, %lo(D_800E9720)
    /* E9A20 80188FE0 000B6880 */  sll        $t5, $t3, 2
    /* E9A24 80188FE4 01AE2021 */  addu       $a0, $t5, $t6
    /* E9A28 80188FE8 8C850000 */  lw         $a1, 0x0($a0)
  .L80188FEC_ovl3:
    /* E9A2C 80188FEC 24ACFFFF */  addiu      $t4, $a1, -0x1
    /* E9A30 80188FF0 AC8C0000 */  sw         $t4, 0x0($a0)
    /* E9A34 80188FF4 8CE20000 */  lw         $v0, 0x0($a3)
    /* E9A38 80188FF8 10000065 */  b          .L80189190_ovl3
    /* E9A3C 80188FFC 00021880 */   sll       $v1, $v0, 2
  jlabel .L80189000_ovl3
    /* E9A40 80189000 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* E9A44 80189004 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* E9A48 80189008 8F020000 */  lw         $v0, 0x0($t8)
    /* E9A4C 8018900C 10000060 */  b          .L80189190_ovl3
    /* E9A50 80189010 00021880 */   sll       $v1, $v0, 2
  jlabel .L80189014_ovl3
    /* E9A54 80189014 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* E9A58 80189018 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* E9A5C 8018901C 3C0A800E */  lui        $t2, %hi(D_800DFBD0)
    /* E9A60 80189020 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E9A64 80189024 8DE20000 */  lw         $v0, 0x0($t7)
    /* E9A68 80189028 44813000 */  mtc1       $at, $f6
    /* E9A6C 8018902C 0002C880 */  sll        $t9, $v0, 2
    /* E9A70 80189030 01595021 */  addu       $t2, $t2, $t9
    /* E9A74 80189034 8D4AFBD0 */  lw         $t2, %lo(D_800DFBD0)($t2)
    /* E9A78 80189038 8D4B0040 */  lw         $t3, 0x40($t2)
    /* E9A7C 8018903C C5620040 */  lwc1       $f2, 0x40($t3)
    /* E9A80 80189040 4606103C */  c.lt.s     $f2, $f6
    /* E9A84 80189044 00000000 */  nop
    /* E9A88 80189048 4500022E */  bc1f       .L80189904_ovl3
    /* E9A8C 8018904C 3C048019 */   lui       $a0, %hi(D_80191D68_ovl3)
    /* E9A90 80189050 24841D68 */  addiu      $a0, $a0, %lo(D_80191D68_ovl3)
    /* E9A94 80189054 00402825 */  or         $a1, $v0, $zero
    /* E9A98 80189058 0C044681 */  jal        func_80111A04
    /* E9A9C 8018905C E7A2006C */   swc1      $f2, 0x6C($sp)
    /* E9AA0 80189060 3C038019 */  lui        $v1, %hi(D_80191CCC_ovl3)
    /* E9AA4 80189064 24631CCC */  addiu      $v1, $v1, %lo(D_80191CCC_ovl3)
    /* E9AA8 80189068 C4680038 */  lwc1       $f8, 0x38($v1)
    /* E9AAC 8018906C 8C4D0020 */  lw         $t5, 0x20($v0)
    /* E9AB0 80189070 C7A2006C */  lwc1       $f2, 0x6C($sp)
    /* E9AB4 80189074 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* E9AB8 80189078 E5A8000C */  swc1       $f8, 0xC($t5)
    /* E9ABC 8018907C 8C4E0020 */  lw         $t6, 0x20($v0)
    /* E9AC0 80189080 C46A003C */  lwc1       $f10, 0x3C($v1)
    /* E9AC4 80189084 00402025 */  or         $a0, $v0, $zero
    /* E9AC8 80189088 E5CA0010 */  swc1       $f10, 0x10($t6)
    /* E9ACC 8018908C C4700040 */  lwc1       $f16, 0x40($v1)
    /* E9AD0 80189090 8C4C0020 */  lw         $t4, 0x20($v0)
    /* E9AD4 80189094 46028482 */  mul.s      $f18, $f16, $f2
    /* E9AD8 80189098 E5920014 */  swc1       $f18, 0x14($t4)
    /* E9ADC 8018909C 8C580020 */  lw         $t8, 0x20($v0)
    /* E9AE0 801890A0 C4640044 */  lwc1       $f4, 0x44($v1)
    /* E9AE4 801890A4 3C0C800E */  lui        $t4, %hi(D_800DFBD0)
    /* E9AE8 801890A8 E7040018 */  swc1       $f4, 0x18($t8)
    /* E9AEC 801890AC 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9AF0 801890B0 C4660048 */  lwc1       $f6, 0x48($v1)
    /* E9AF4 801890B4 E5E6001C */  swc1       $f6, 0x1C($t7)
    /* E9AF8 801890B8 C468004C */  lwc1       $f8, 0x4C($v1)
    /* E9AFC 801890BC 8C590020 */  lw         $t9, 0x20($v0)
    /* E9B00 801890C0 46024282 */  mul.s      $f10, $f8, $f2
    /* E9B04 801890C4 E72A0020 */  swc1       $f10, 0x20($t9)
    /* E9B08 801890C8 8C4A0020 */  lw         $t2, 0x20($v0)
    /* E9B0C 801890CC C4700050 */  lwc1       $f16, 0x50($v1)
    /* E9B10 801890D0 E5500024 */  swc1       $f16, 0x24($t2)
    /* E9B14 801890D4 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* E9B18 801890D8 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9B1C 801890DC 8D6D0000 */  lw         $t5, 0x0($t3)
    /* E9B20 801890E0 000D7080 */  sll        $t6, $t5, 2
    /* E9B24 801890E4 018E6021 */  addu       $t4, $t4, $t6
    /* E9B28 801890E8 8D8CFBD0 */  lw         $t4, %lo(D_800DFBD0)($t4)
    /* E9B2C 801890EC 8D980004 */  lw         $t8, 0x4($t4)
    /* E9B30 801890F0 0C044713 */  jal        func_80111C4C
    /* E9B34 801890F4 ADF80008 */   sw        $t8, 0x8($t7)
    /* E9B38 801890F8 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* E9B3C 801890FC 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* E9B40 80189100 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* E9B44 80189104 27A40070 */  addiu      $a0, $sp, 0x70
    /* E9B48 80189108 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9B4C 8018910C 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* E9B50 80189110 000A5880 */  sll        $t3, $t2, 2
    /* E9B54 80189114 01AB6821 */  addu       $t5, $t5, $t3
    /* E9B58 80189118 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* E9B5C 8018911C 0C02C8D0 */  jal        func_800B2340
    /* E9B60 80189120 8DA50038 */   lw        $a1, 0x38($t5)
    /* E9B64 80189124 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* E9B68 80189128 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* E9B6C 8018912C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* E9B70 80189130 C7A2006C */  lwc1       $f2, 0x6C($sp)
    /* E9B74 80189134 8DCC0000 */  lw         $t4, 0x0($t6)
    /* E9B78 80189138 C7B20074 */  lwc1       $f18, 0x74($sp)
    /* E9B7C 8018913C 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* E9B80 80189140 000CC080 */  sll        $t8, $t4, 2
    /* E9B84 80189144 00380821 */  addu       $at, $at, $t8
    /* E9B88 80189148 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* E9B8C 8018914C 3C01C120 */  lui        $at, (0xC1200000 >> 16)
    /* E9B90 80189150 44813000 */  mtc1       $at, $f6
    /* E9B94 80189154 3C014302 */  lui        $at, (0x43020000 >> 16)
    /* E9B98 80189158 44814000 */  mtc1       $at, $f8
    /* E9B9C 8018915C 46049001 */  sub.s      $f0, $f18, $f4
    /* E9BA0 80189160 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* E9BA4 80189164 46024282 */  mul.s      $f10, $f8, $f2
    /* E9BA8 80189168 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* E9BAC 8018916C E4400008 */  swc1       $f0, 0x8($v0)
    /* E9BB0 80189170 E4400000 */  swc1       $f0, 0x0($v0)
    /* E9BB4 80189174 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* E9BB8 80189178 00002825 */  or         $a1, $zero, $zero
    /* E9BBC 8018917C E4460004 */  swc1       $f6, 0x4($v0)
    /* E9BC0 80189180 0C055127 */  jal        func_8015449C_ovl3
    /* E9BC4 80189184 E44A000C */   swc1      $f10, 0xC($v0)
    /* E9BC8 80189188 100001DF */  b          .L80189908_ovl3
    /* E9BCC 8018918C 8FBF0014 */   lw        $ra, 0x14($sp)
  .L80189190_ovl3:
    /* E9BD0 80189190 3C07800E */  lui        $a3, %hi(D_800DFBD0)
    /* E9BD4 80189194 00E33821 */  addu       $a3, $a3, $v1
    /* E9BD8 80189198 8CE7FBD0 */  lw         $a3, %lo(D_800DFBD0)($a3)
    /* E9BDC 8018919C 24010002 */  addiu      $at, $zero, 0x2
    /* E9BE0 801891A0 8CEF0038 */  lw         $t7, 0x38($a3)
    /* E9BE4 801891A4 91E40054 */  lbu        $a0, 0x54($t7)
    /* E9BE8 801891A8 50810154 */  beql       $a0, $at, .L801896FC_ovl3
    /* E9BEC 801891AC 24010002 */   addiu     $at, $zero, 0x2
    /* E9BF0 801891B0 8D040044 */  lw         $a0, 0x44($t0)
    /* E9BF4 801891B4 24010008 */  addiu      $at, $zero, 0x8
    /* E9BF8 801891B8 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
    /* E9BFC 801891BC 54810009 */  bnel       $a0, $at, .L801891E4_ovl3
    /* E9C00 801891C0 24010007 */   addiu     $at, $zero, 0x7
    /* E9C04 801891C4 3C048019 */  lui        $a0, %hi(D_80191DD0_ovl3)
    /* E9C08 801891C8 24841DD0 */  addiu      $a0, $a0, %lo(D_80191DD0_ovl3)
    /* E9C0C 801891CC 0C05A153 */  jal        func_8016854C_ovl3
    /* E9C10 801891D0 8CE5003C */   lw        $a1, 0x3C($a3)
    /* E9C14 801891D4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9C18 801891D8 10000070 */  b          .L8018939C_ovl3
    /* E9C1C 801891DC 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
    /* E9C20 801891E0 24010007 */  addiu      $at, $zero, 0x7
  .L801891E4_ovl3:
    /* E9C24 801891E4 14810009 */  bne        $a0, $at, .L8018920C_ovl3
    /* E9C28 801891E8 00402825 */   or        $a1, $v0, $zero
    /* E9C2C 801891EC 3C048019 */  lui        $a0, %hi(D_80191E38_ovl3)
    /* E9C30 801891F0 24841E38 */  addiu      $a0, $a0, %lo(D_80191E38_ovl3)
    /* E9C34 801891F4 8CE5003C */  lw         $a1, 0x3C($a3)
    /* E9C38 801891F8 0C05A153 */  jal        func_8016854C_ovl3
    /* E9C3C 801891FC 3C063F80 */   lui       $a2, (0x3F800000 >> 16)
    /* E9C40 80189200 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9C44 80189204 10000065 */  b          .L8018939C_ovl3
    /* E9C48 80189208 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
  .L8018920C_ovl3:
    /* E9C4C 8018920C 3C048019 */  lui        $a0, %hi(D_80191D68_ovl3)
    /* E9C50 80189210 0C044681 */  jal        func_80111A04
    /* E9C54 80189214 24841D68 */   addiu     $a0, $a0, %lo(D_80191D68_ovl3)
    /* E9C58 80189218 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* E9C5C 8018921C 24C6A7C4 */  addiu      $a2, $a2, %lo(omCurrentObj)
    /* E9C60 80189220 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9C64 80189224 3C07800F */  lui        $a3, %hi(D_800E98E0)
    /* E9C68 80189228 24E798E0 */  addiu      $a3, $a3, %lo(D_800E98E0)
    /* E9C6C 8018922C 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9C70 80189230 2405001C */  addiu      $a1, $zero, 0x1C
    /* E9C74 80189234 3C038019 */  lui        $v1, %hi(D_80191CCC_ovl3)
    /* E9C78 80189238 000A5880 */  sll        $t3, $t2, 2
    /* E9C7C 8018923C 00EB6821 */  addu       $t5, $a3, $t3
    /* E9C80 80189240 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9C84 80189244 24631CCC */  addiu      $v1, $v1, %lo(D_80191CCC_ovl3)
    /* E9C88 80189248 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9C8C 8018924C 01C50019 */  multu      $t6, $a1
    /* E9C90 80189250 00402025 */  or         $a0, $v0, $zero
    /* E9C94 80189254 00006012 */  mflo       $t4
    /* E9C98 80189258 006CC021 */  addu       $t8, $v1, $t4
    /* E9C9C 8018925C C7100000 */  lwc1       $f16, 0x0($t8)
    /* E9CA0 80189260 E5F0000C */  swc1       $f16, 0xC($t7)
    /* E9CA4 80189264 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9CA8 80189268 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9CAC 8018926C 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9CB0 80189270 000A5880 */  sll        $t3, $t2, 2
    /* E9CB4 80189274 00EB6821 */  addu       $t5, $a3, $t3
    /* E9CB8 80189278 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9CBC 8018927C 01C50019 */  multu      $t6, $a1
    /* E9CC0 80189280 00006012 */  mflo       $t4
    /* E9CC4 80189284 006CC021 */  addu       $t8, $v1, $t4
    /* E9CC8 80189288 C7120004 */  lwc1       $f18, 0x4($t8)
    /* E9CCC 8018928C E5F20010 */  swc1       $f18, 0x10($t7)
    /* E9CD0 80189290 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9CD4 80189294 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9CD8 80189298 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9CDC 8018929C 000A5880 */  sll        $t3, $t2, 2
    /* E9CE0 801892A0 00EB6821 */  addu       $t5, $a3, $t3
    /* E9CE4 801892A4 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9CE8 801892A8 01C50019 */  multu      $t6, $a1
    /* E9CEC 801892AC 00006012 */  mflo       $t4
    /* E9CF0 801892B0 006CC021 */  addu       $t8, $v1, $t4
    /* E9CF4 801892B4 C7040008 */  lwc1       $f4, 0x8($t8)
    /* E9CF8 801892B8 E5E40014 */  swc1       $f4, 0x14($t7)
    /* E9CFC 801892BC 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9D00 801892C0 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9D04 801892C4 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9D08 801892C8 000A5880 */  sll        $t3, $t2, 2
    /* E9D0C 801892CC 00EB6821 */  addu       $t5, $a3, $t3
    /* E9D10 801892D0 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9D14 801892D4 01C50019 */  multu      $t6, $a1
    /* E9D18 801892D8 00006012 */  mflo       $t4
    /* E9D1C 801892DC 006CC021 */  addu       $t8, $v1, $t4
    /* E9D20 801892E0 C706000C */  lwc1       $f6, 0xC($t8)
    /* E9D24 801892E4 E5E60018 */  swc1       $f6, 0x18($t7)
    /* E9D28 801892E8 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9D2C 801892EC 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9D30 801892F0 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9D34 801892F4 000A5880 */  sll        $t3, $t2, 2
    /* E9D38 801892F8 00EB6821 */  addu       $t5, $a3, $t3
    /* E9D3C 801892FC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9D40 80189300 01C50019 */  multu      $t6, $a1
    /* E9D44 80189304 00006012 */  mflo       $t4
    /* E9D48 80189308 006CC021 */  addu       $t8, $v1, $t4
    /* E9D4C 8018930C C7080010 */  lwc1       $f8, 0x10($t8)
    /* E9D50 80189310 E5E8001C */  swc1       $f8, 0x1C($t7)
    /* E9D54 80189314 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9D58 80189318 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9D5C 8018931C 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9D60 80189320 000A5880 */  sll        $t3, $t2, 2
    /* E9D64 80189324 00EB6821 */  addu       $t5, $a3, $t3
    /* E9D68 80189328 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9D6C 8018932C 01C50019 */  multu      $t6, $a1
    /* E9D70 80189330 00006012 */  mflo       $t4
    /* E9D74 80189334 006CC021 */  addu       $t8, $v1, $t4
    /* E9D78 80189338 C70A0014 */  lwc1       $f10, 0x14($t8)
    /* E9D7C 8018933C E5EA0020 */  swc1       $f10, 0x20($t7)
    /* E9D80 80189340 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9D84 80189344 8C4F0020 */  lw         $t7, 0x20($v0)
    /* E9D88 80189348 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9D8C 8018934C 000A5880 */  sll        $t3, $t2, 2
    /* E9D90 80189350 00EB6821 */  addu       $t5, $a3, $t3
    /* E9D94 80189354 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E9D98 80189358 3C0D800E */  lui        $t5, %hi(D_800DFBD0)
    /* E9D9C 8018935C 01C50019 */  multu      $t6, $a1
    /* E9DA0 80189360 00006012 */  mflo       $t4
    /* E9DA4 80189364 006CC021 */  addu       $t8, $v1, $t4
    /* E9DA8 80189368 C7100018 */  lwc1       $f16, 0x18($t8)
    /* E9DAC 8018936C E5F00024 */  swc1       $f16, 0x24($t7)
    /* E9DB0 80189370 8CD90000 */  lw         $t9, 0x0($a2)
    /* E9DB4 80189374 8C4C0020 */  lw         $t4, 0x20($v0)
    /* E9DB8 80189378 8F2A0000 */  lw         $t2, 0x0($t9)
    /* E9DBC 8018937C 000A5880 */  sll        $t3, $t2, 2
    /* E9DC0 80189380 01AB6821 */  addu       $t5, $t5, $t3
    /* E9DC4 80189384 8DADFBD0 */  lw         $t5, %lo(D_800DFBD0)($t5)
    /* E9DC8 80189388 8DAE0004 */  lw         $t6, 0x4($t5)
    /* E9DCC 8018938C 0C044713 */  jal        func_80111C4C
    /* E9DD0 80189390 AD8E0008 */   sw        $t6, 0x8($t4)
    /* E9DD4 80189394 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9DD8 80189398 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L8018939C_ovl3:
    /* E9DDC 8018939C 8D020044 */  lw         $v0, 0x44($t0)
    /* E9DE0 801893A0 24010008 */  addiu      $at, $zero, 0x8
    /* E9DE4 801893A4 8FB80080 */  lw         $t8, 0x80($sp)
    /* E9DE8 801893A8 10410008 */  beq        $v0, $at, .L801893CC_ovl3
    /* E9DEC 801893AC 24010009 */   addiu     $at, $zero, 0x9
    /* E9DF0 801893B0 1041002B */  beq        $v0, $at, .L80189460_ovl3
    /* E9DF4 801893B4 8FB80080 */   lw        $t8, 0x80($sp)
    /* E9DF8 801893B8 2401000A */  addiu      $at, $zero, 0xA
    /* E9DFC 801893BC 1041004E */  beq        $v0, $at, .L801894F8_ovl3
    /* E9E00 801893C0 8FB80080 */   lw        $t8, 0x80($sp)
    /* E9E04 801893C4 10000072 */  b          .L80189590_ovl3
    /* E9E08 801893C8 3C188005 */   lui       $t8, %hi(omCurrentObj)
  .L801893CC_ovl3:
    /* E9E0C 801893CC 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E9E10 801893D0 44812000 */  mtc1       $at, $f4
    /* E9E14 801893D4 C7120040 */  lwc1       $f18, 0x40($t8)
    /* E9E18 801893D8 3C078019 */  lui        $a3, %hi(D_80195718_ovl3)
    /* E9E1C 801893DC 24E75718 */  addiu      $a3, $a3, %lo(D_80195718_ovl3)
    /* E9E20 801893E0 46049182 */  mul.s      $f6, $f18, $f4
    /* E9E24 801893E4 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* E9E28 801893E8 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* E9E2C 801893EC 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* E9E30 801893F0 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* E9E34 801893F4 00002825 */  or         $a1, $zero, $zero
    /* E9E38 801893F8 4600320D */  trunc.w.s  $f8, $f6
    /* E9E3C 801893FC 44064000 */  mfc1       $a2, $f8
    /* E9E40 80189400 00000000 */  nop
    /* E9E44 80189404 0006C900 */  sll        $t9, $a2, 4
    /* E9E48 80189408 00F91821 */  addu       $v1, $a3, $t9
    /* E9E4C 8018940C C46A0000 */  lwc1       $f10, 0x0($v1)
    /* E9E50 80189410 C4700004 */  lwc1       $f16, 0x4($v1)
    /* E9E54 80189414 C4720008 */  lwc1       $f18, 0x8($v1)
    /* E9E58 80189418 C464000C */  lwc1       $f4, 0xC($v1)
    /* E9E5C 8018941C E44A0000 */  swc1       $f10, 0x0($v0)
    /* E9E60 80189420 E4500004 */  swc1       $f16, 0x4($v0)
    /* E9E64 80189424 E4520008 */  swc1       $f18, 0x8($v0)
    /* E9E68 80189428 0C055127 */  jal        func_8015449C_ovl3
    /* E9E6C 8018942C E444000C */   swc1      $f4, 0xC($v0)
    /* E9E70 80189430 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E9E74 80189434 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E9E78 80189438 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* E9E7C 8018943C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9E80 80189440 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E9E84 80189444 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* E9E88 80189448 000B6880 */  sll        $t5, $t3, 2
    /* E9E8C 8018944C 01CD7021 */  addu       $t6, $t6, $t5
    /* E9E90 80189450 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* E9E94 80189454 8DCC0038 */  lw         $t4, 0x38($t6)
    /* E9E98 80189458 100000A7 */  b          .L801896F8_ovl3
    /* E9E9C 8018945C 91840054 */   lbu       $a0, 0x54($t4)
  .L80189460_ovl3:
    /* E9EA0 80189460 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E9EA4 80189464 44814000 */  mtc1       $at, $f8
    /* E9EA8 80189468 C7060040 */  lwc1       $f6, 0x40($t8)
    /* E9EAC 8018946C 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* E9EB0 80189470 3C078019 */  lui        $a3, %hi(D_80195718_ovl3)
    /* E9EB4 80189474 46083282 */  mul.s      $f10, $f6, $f8
    /* E9EB8 80189478 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* E9EBC 8018947C 24E75718 */  addiu      $a3, $a3, %lo(D_80195718_ovl3)
    /* E9EC0 80189480 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* E9EC4 80189484 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* E9EC8 80189488 00002825 */  or         $a1, $zero, $zero
    /* E9ECC 8018948C 4600540D */  trunc.w.s  $f16, $f10
    /* E9ED0 80189490 44068000 */  mfc1       $a2, $f16
    /* E9ED4 80189494 00000000 */  nop
    /* E9ED8 80189498 10C0000D */  beqz       $a2, .L801894D0_ovl3
    /* E9EDC 8018949C 0006C900 */   sll       $t9, $a2, 4
    /* E9EE0 801894A0 00F91821 */  addu       $v1, $a3, $t9
    /* E9EE4 801894A4 C4720050 */  lwc1       $f18, 0x50($v1)
    /* E9EE8 801894A8 C4640054 */  lwc1       $f4, 0x54($v1)
    /* E9EEC 801894AC C4660058 */  lwc1       $f6, 0x58($v1)
    /* E9EF0 801894B0 C468005C */  lwc1       $f8, 0x5C($v1)
    /* E9EF4 801894B4 E4520000 */  swc1       $f18, 0x0($v0)
    /* E9EF8 801894B8 E4440004 */  swc1       $f4, 0x4($v0)
    /* E9EFC 801894BC E4460008 */  swc1       $f6, 0x8($v0)
    /* E9F00 801894C0 0C055127 */  jal        func_8015449C_ovl3
    /* E9F04 801894C4 E448000C */   swc1      $f8, 0xC($v0)
    /* E9F08 801894C8 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9F0C 801894CC 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L801894D0_ovl3:
    /* E9F10 801894D0 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E9F14 801894D4 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E9F18 801894D8 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* E9F1C 801894DC 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E9F20 801894E0 000B6880 */  sll        $t5, $t3, 2
    /* E9F24 801894E4 01CD7021 */  addu       $t6, $t6, $t5
    /* E9F28 801894E8 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* E9F2C 801894EC 8DCC0038 */  lw         $t4, 0x38($t6)
    /* E9F30 801894F0 10000081 */  b          .L801896F8_ovl3
    /* E9F34 801894F4 91840054 */   lbu       $a0, 0x54($t4)
  .L801894F8_ovl3:
    /* E9F38 801894F8 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E9F3C 801894FC 44818000 */  mtc1       $at, $f16
    /* E9F40 80189500 C70A0040 */  lwc1       $f10, 0x40($t8)
    /* E9F44 80189504 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* E9F48 80189508 3C078019 */  lui        $a3, %hi(D_80195718_ovl3)
    /* E9F4C 8018950C 46105482 */  mul.s      $f18, $f10, $f16
    /* E9F50 80189510 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* E9F54 80189514 24E75718 */  addiu      $a3, $a3, %lo(D_80195718_ovl3)
    /* E9F58 80189518 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* E9F5C 8018951C 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* E9F60 80189520 00002825 */  or         $a1, $zero, $zero
    /* E9F64 80189524 4600910D */  trunc.w.s  $f4, $f18
    /* E9F68 80189528 44062000 */  mfc1       $a2, $f4
    /* E9F6C 8018952C 00000000 */  nop
    /* E9F70 80189530 10C0000D */  beqz       $a2, .L80189568_ovl3
    /* E9F74 80189534 0006C900 */   sll       $t9, $a2, 4
    /* E9F78 80189538 00F91821 */  addu       $v1, $a3, $t9
    /* E9F7C 8018953C C4660070 */  lwc1       $f6, 0x70($v1)
    /* E9F80 80189540 C4680074 */  lwc1       $f8, 0x74($v1)
    /* E9F84 80189544 C46A0078 */  lwc1       $f10, 0x78($v1)
    /* E9F88 80189548 C470007C */  lwc1       $f16, 0x7C($v1)
    /* E9F8C 8018954C E4460000 */  swc1       $f6, 0x0($v0)
    /* E9F90 80189550 E4480004 */  swc1       $f8, 0x4($v0)
    /* E9F94 80189554 E44A0008 */  swc1       $f10, 0x8($v0)
    /* E9F98 80189558 0C055127 */  jal        func_8015449C_ovl3
    /* E9F9C 8018955C E450000C */   swc1      $f16, 0xC($v0)
    /* E9FA0 80189560 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* E9FA4 80189564 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L80189568_ovl3:
    /* E9FA8 80189568 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* E9FAC 8018956C 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* E9FB0 80189570 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* E9FB4 80189574 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E9FB8 80189578 000B6880 */  sll        $t5, $t3, 2
    /* E9FBC 8018957C 01CD7021 */  addu       $t6, $t6, $t5
    /* E9FC0 80189580 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* E9FC4 80189584 8DCC0038 */  lw         $t4, 0x38($t6)
    /* E9FC8 80189588 1000005B */  b          .L801896F8_ovl3
    /* E9FCC 8018958C 91840054 */   lbu       $a0, 0x54($t4)
  .L80189590_ovl3:
    /* E9FD0 80189590 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* E9FD4 80189594 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* E9FD8 80189598 24010001 */  addiu      $at, $zero, 0x1
    /* E9FDC 8018959C 8F030000 */  lw         $v1, 0x0($t8)
    /* E9FE0 801895A0 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* E9FE4 801895A4 3C19800E */  lui        $t9, %hi(D_800DFBD0)
    /* E9FE8 801895A8 00031880 */  sll        $v1, $v1, 2
    /* E9FEC 801895AC 01E37821 */  addu       $t7, $t7, $v1
    /* E9FF0 801895B0 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
    /* E9FF4 801895B4 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* E9FF8 801895B8 0323C821 */  addu       $t9, $t9, $v1
    /* E9FFC 801895BC 15E10012 */  bne        $t7, $at, .L80189608_ovl3
    /* EA000 801895C0 27A40048 */   addiu     $a0, $sp, 0x48
    /* EA004 801895C4 3C078019 */  lui        $a3, %hi(D_80195718_ovl3)
    /* EA008 801895C8 24E75718 */  addiu      $a3, $a3, %lo(D_80195718_ovl3)
    /* EA00C 801895CC C4F20000 */  lwc1       $f18, 0x0($a3)
    /* EA010 801895D0 C4E40004 */  lwc1       $f4, 0x4($a3)
    /* EA014 801895D4 C4E60008 */  lwc1       $f6, 0x8($a3)
    /* EA018 801895D8 C4E8000C */  lwc1       $f8, 0xC($a3)
    /* EA01C 801895DC 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* EA020 801895E0 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* EA024 801895E4 00002825 */  or         $a1, $zero, $zero
    /* EA028 801895E8 E4520000 */  swc1       $f18, 0x0($v0)
    /* EA02C 801895EC E4440004 */  swc1       $f4, 0x4($v0)
    /* EA030 801895F0 E4460008 */  swc1       $f6, 0x8($v0)
    /* EA034 801895F4 0C055127 */  jal        func_8015449C_ovl3
    /* EA038 801895F8 E448000C */   swc1      $f8, 0xC($v0)
    /* EA03C 801895FC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EA040 80189600 10000034 */  b          .L801896D4_ovl3
    /* EA044 80189604 2508E7C0 */   addiu     $t0, $t0, %lo(gKirbyState)
  .L80189608_ovl3:
    /* EA048 80189608 8F39FBD0 */  lw         $t9, %lo(D_800DFBD0)($t9)
    /* EA04C 8018960C 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* EA050 80189610 0C02C8D0 */  jal        func_800B2340
    /* EA054 80189614 8F250038 */   lw        $a1, 0x38($t9)
    /* EA058 80189618 3C078005 */  lui        $a3, %hi(omCurrentObj)
    /* EA05C 8018961C 8CE7A7C4 */  lw         $a3, %lo(omCurrentObj)($a3)
    /* EA060 80189620 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* EA064 80189624 C7AA004C */  lwc1       $f10, 0x4C($sp)
    /* EA068 80189628 8CEA0000 */  lw         $t2, 0x0($a3)
    /* EA06C 8018962C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EA070 80189630 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EA074 80189634 000A5880 */  sll        $t3, $t2, 2
    /* EA078 80189638 002B0821 */  addu       $at, $at, $t3
    /* EA07C 8018963C C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* EA080 80189640 3C028013 */  lui        $v0, %hi(D_8012E9B8 + 0x10)
    /* EA084 80189644 3C01C2F0 */  lui        $at, (0xC2F00000 >> 16)
    /* EA088 80189648 46105001 */  sub.s      $f0, $f10, $f16
    /* EA08C 8018964C 44812000 */  mtc1       $at, $f4
    /* EA090 80189650 8D0D0044 */  lw         $t5, 0x44($t0)
    /* EA094 80189654 2442E9C8 */  addiu      $v0, $v0, %lo(D_8012E9B8 + 0x10)
    /* EA098 80189658 44809000 */  mtc1       $zero, $f18
    /* EA09C 8018965C 24010007 */  addiu      $at, $zero, 0x7
    /* EA0A0 80189660 E4400008 */  swc1       $f0, 0x8($v0)
    /* EA0A4 80189664 E4400000 */  swc1       $f0, 0x0($v0)
    /* EA0A8 80189668 E444000C */  swc1       $f4, 0xC($v0)
    /* EA0AC 8018966C 15A1000D */  bne        $t5, $at, .L801896A4_ovl3
    /* EA0B0 80189670 E4520004 */   swc1      $f18, 0x4($v0)
    /* EA0B4 80189674 8CEE0000 */  lw         $t6, 0x0($a3)
    /* EA0B8 80189678 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* EA0BC 8018967C 27A40048 */  addiu      $a0, $sp, 0x48
    /* EA0C0 80189680 000E6080 */  sll        $t4, $t6, 2
    /* EA0C4 80189684 030CC021 */  addu       $t8, $t8, $t4
    /* EA0C8 80189688 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* EA0CC 8018968C 3406FFFF */  ori        $a2, $zero, 0xFFFF
    /* EA0D0 80189690 0C02C9B6 */  jal        func_800B26D8
    /* EA0D4 80189694 8F050038 */   lw        $a1, 0x38($t8)
    /* EA0D8 80189698 C7A00048 */  lwc1       $f0, 0x48($sp)
    /* EA0DC 8018969C 10000006 */  b          .L801896B8_ovl3
    /* EA0E0 801896A0 46000007 */   neg.s     $f0, $f0
  .L801896A4_ovl3:
    /* EA0E4 801896A4 8CEF0000 */  lw         $t7, 0x0($a3)
    /* EA0E8 801896A8 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* EA0EC 801896AC 000FC880 */  sll        $t9, $t7, 2
    /* EA0F0 801896B0 00390821 */  addu       $at, $at, $t9
    /* EA0F4 801896B4 C42041D0 */  lwc1       $f0, %lo(gEntitiesAngleYArray)($at)
  .L801896B8_ovl3:
    /* EA0F8 801896B8 3C048019 */  lui        $a0, %hi(D_801957B8_ovl3)
    /* EA0FC 801896BC 44060000 */  mfc1       $a2, $f0
    /* EA100 801896C0 248457B8 */  addiu      $a0, $a0, %lo(D_801957B8_ovl3)
    /* EA104 801896C4 0C05515E */  jal        func_80154578_ovl3
    /* EA108 801896C8 00002825 */   or        $a1, $zero, $zero
    /* EA10C 801896CC 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EA110 801896D0 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
  .L801896D4_ovl3:
    /* EA114 801896D4 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* EA118 801896D8 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* EA11C 801896DC 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
    /* EA120 801896E0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* EA124 801896E4 000B6880 */  sll        $t5, $t3, 2
    /* EA128 801896E8 01CD7021 */  addu       $t6, $t6, $t5
    /* EA12C 801896EC 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
    /* EA130 801896F0 8DCC0038 */  lw         $t4, 0x38($t6)
    /* EA134 801896F4 91840054 */  lbu        $a0, 0x54($t4)
  .L801896F8_ovl3:
    /* EA138 801896F8 24010002 */  addiu      $at, $zero, 0x2
  .L801896FC_ovl3:
    /* EA13C 801896FC 54810006 */  bnel       $a0, $at, .L80189718_ovl3
    /* EA140 80189700 8D040044 */   lw        $a0, 0x44($t0)
    /* EA144 80189704 0C04783A */  jal        func_8011E0E8
    /* EA148 80189708 00000000 */   nop
    /* EA14C 8018970C 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EA150 80189710 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EA154 80189714 8D040044 */  lw         $a0, 0x44($t0)
  .L80189718_ovl3:
    /* EA158 80189718 24020007 */  addiu      $v0, $zero, 0x7
    /* EA15C 8018971C 8D07003C */  lw         $a3, 0x3C($t0)
    /* EA160 80189720 10440069 */  beq        $v0, $a0, .L801898C8_ovl3
    /* EA164 80189724 24010008 */   addiu     $at, $zero, 0x8
    /* EA168 80189728 10810067 */  beq        $a0, $at, .L801898C8_ovl3
    /* EA16C 8018972C 24010009 */   addiu     $at, $zero, 0x9
    /* EA170 80189730 10810065 */  beq        $a0, $at, .L801898C8_ovl3
    /* EA174 80189734 2401000A */   addiu     $at, $zero, 0xA
    /* EA178 80189738 10810063 */  beq        $a0, $at, .L801898C8_ovl3
    /* EA17C 8018973C 3C05800D */   lui       $a1, %hi(gKirbyController + 0x2)
    /* EA180 80189740 94A56FEA */  lhu        $a1, %lo(gKirbyController + 0x2)($a1)
    /* EA184 80189744 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* EA188 80189748 30B80C00 */  andi       $t8, $a1, 0xC00
    /* EA18C 8018974C 53000018 */  beql       $t8, $zero, .L801897B0_ovl3
    /* EA190 80189750 30B84000 */   andi      $t8, $a1, 0x4000
    /* EA194 80189754 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* EA198 80189758 3C02800F */  lui        $v0, %hi(D_800E98E0)
    /* EA19C 8018975C 30AB0800 */  andi       $t3, $a1, 0x800
    /* EA1A0 80189760 8DF90000 */  lw         $t9, 0x0($t7)
    /* EA1A4 80189764 24010001 */  addiu      $at, $zero, 0x1
    /* EA1A8 80189768 00195080 */  sll        $t2, $t9, 2
    /* EA1AC 8018976C 004A1021 */  addu       $v0, $v0, $t2
    /* EA1B0 80189770 8C4298E0 */  lw         $v0, %lo(D_800E98E0)($v0)
    /* EA1B4 80189774 14400006 */  bnez       $v0, .L80189790_ovl3
    /* EA1B8 80189778 00000000 */   nop
    /* EA1BC 8018977C 11600004 */  beqz       $t3, .L80189790_ovl3
    /* EA1C0 80189780 00000000 */   nop
    /* EA1C4 80189784 24040009 */  addiu      $a0, $zero, 0x9
    /* EA1C8 80189788 1000004F */  b          .L801898C8_ovl3
    /* EA1CC 8018978C AD040044 */   sw        $a0, 0x44($t0)
  .L80189790_ovl3:
    /* EA1D0 80189790 1441004D */  bne        $v0, $at, .L801898C8_ovl3
    /* EA1D4 80189794 30AE0400 */   andi      $t6, $a1, 0x400
    /* EA1D8 80189798 11C0004B */  beqz       $t6, .L801898C8_ovl3
    /* EA1DC 8018979C 00000000 */   nop
    /* EA1E0 801897A0 2404000A */  addiu      $a0, $zero, 0xA
    /* EA1E4 801897A4 10000048 */  b          .L801898C8_ovl3
    /* EA1E8 801897A8 AD040044 */   sw        $a0, 0x44($t0)
    /* EA1EC 801897AC 30B84000 */  andi       $t8, $a1, 0x4000
  .L801897B0_ovl3:
    /* EA1F0 801897B0 13000010 */  beqz       $t8, .L801897F4_ovl3
    /* EA1F4 801897B4 24060006 */   addiu     $a2, $zero, 0x6
    /* EA1F8 801897B8 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* EA1FC 801897BC 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* EA200 801897C0 3C0B800F */  lui        $t3, %hi(D_800E98E0)
    /* EA204 801897C4 240D0008 */  addiu      $t5, $zero, 0x8
    /* EA208 801897C8 8DF90000 */  lw         $t9, 0x0($t7)
    /* EA20C 801897CC 00195080 */  sll        $t2, $t9, 2
    /* EA210 801897D0 016A5821 */  addu       $t3, $t3, $t2
    /* EA214 801897D4 8D6B98E0 */  lw         $t3, %lo(D_800E98E0)($t3)
    /* EA218 801897D8 55600004 */  bnel       $t3, $zero, .L801897EC_ovl3
    /* EA21C 801897DC AD0D0044 */   sw        $t5, 0x44($t0)
    /* EA220 801897E0 10000002 */  b          .L801897EC_ovl3
    /* EA224 801897E4 AD020044 */   sw        $v0, 0x44($t0)
    /* EA228 801897E8 AD0D0044 */  sw         $t5, 0x44($t0)
  .L801897EC_ovl3:
    /* EA22C 801897EC 10000036 */  b          .L801898C8_ovl3
    /* EA230 801897F0 8D040044 */   lw        $a0, 0x44($t0)
  .L801897F4_ovl3:
    /* EA234 801897F4 10C40034 */  beq        $a2, $a0, .L801898C8_ovl3
    /* EA238 801897F8 3C0E8005 */   lui       $t6, %hi(omCurrentObj)
    /* EA23C 801897FC 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* EA240 80189800 3C0C800F */  lui        $t4, %hi(D_800E8920)
    /* EA244 80189804 3C02800F */  lui        $v0, %hi(D_800E8AE0)
    /* EA248 80189808 8DC30000 */  lw         $v1, 0x0($t6)
    /* EA24C 8018980C 24010007 */  addiu      $at, $zero, 0x7
    /* EA250 80189810 00031880 */  sll        $v1, $v1, 2
    /* EA254 80189814 01836021 */  addu       $t4, $t4, $v1
    /* EA258 80189818 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
    /* EA25C 8018981C 00431021 */  addu       $v0, $v0, $v1
    /* EA260 80189820 8C428AE0 */  lw         $v0, %lo(D_800E8AE0)($v0)
    /* EA264 80189824 11800014 */  beqz       $t4, .L80189878_ovl3
    /* EA268 80189828 30580007 */   andi      $t8, $v0, 0x7
    /* EA26C 8018982C 17010026 */  bne        $t8, $at, .L801898C8_ovl3
    /* EA270 80189830 3C02800D */   lui       $v0, %hi(gKirbyController)
    /* EA274 80189834 94426FE8 */  lhu        $v0, %lo(gKirbyController)($v0)
    /* EA278 80189838 30AA8000 */  andi       $t2, $a1, 0x8000
    /* EA27C 8018983C 304F0400 */  andi       $t7, $v0, 0x400
    /* EA280 80189840 15E00003 */  bnez       $t7, .L80189850_ovl3
    /* EA284 80189844 30590800 */   andi      $t9, $v0, 0x800
    /* EA288 80189848 17200004 */  bnez       $t9, .L8018985C_ovl3
    /* EA28C 8018984C 00000000 */   nop
  .L80189850_ovl3:
    /* EA290 80189850 1140001D */  beqz       $t2, .L801898C8_ovl3
    /* EA294 80189854 304B0300 */   andi      $t3, $v0, 0x300
    /* EA298 80189858 1160001B */  beqz       $t3, .L801898C8_ovl3
  .L8018985C_ovl3:
    /* EA29C 8018985C 3C01800F */   lui       $at, %hi(D_800EA1A0)
    /* EA2A0 80189860 00230821 */  addu       $at, $at, $v1
    /* EA2A4 80189864 240D0001 */  addiu      $t5, $zero, 0x1
    /* EA2A8 80189868 AC2DA1A0 */  sw         $t5, %lo(D_800EA1A0)($at)
    /* EA2AC 8018986C AD060044 */  sw         $a2, 0x44($t0)
    /* EA2B0 80189870 10000015 */  b          .L801898C8_ovl3
    /* EA2B4 80189874 00C02025 */   or        $a0, $a2, $zero
  .L80189878_ovl3:
    /* EA2B8 80189878 304E0006 */  andi       $t6, $v0, 0x6
    /* EA2BC 8018987C 11C00012 */  beqz       $t6, .L801898C8_ovl3
    /* EA2C0 80189880 30A28000 */   andi      $v0, $a1, 0x8000
    /* EA2C4 80189884 14400005 */  bnez       $v0, .L8018989C_ovl3
    /* EA2C8 80189888 3C0C800D */   lui       $t4, %hi(gKirbyController)
    /* EA2CC 8018988C 958C6FE8 */  lhu        $t4, %lo(gKirbyController)($t4)
    /* EA2D0 80189890 31980F00 */  andi       $t8, $t4, 0xF00
    /* EA2D4 80189894 1300000C */  beqz       $t8, .L801898C8_ovl3
    /* EA2D8 80189898 00000000 */   nop
  .L8018989C_ovl3:
    /* EA2DC 8018989C 10400006 */  beqz       $v0, .L801898B8_ovl3
    /* EA2E0 801898A0 00C02025 */   or        $a0, $a2, $zero
    /* EA2E4 801898A4 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* EA2E8 801898A8 00230821 */  addu       $at, $at, $v1
    /* EA2EC 801898AC 240F0001 */  addiu      $t7, $zero, 0x1
    /* EA2F0 801898B0 10000004 */  b          .L801898C4_ovl3
    /* EA2F4 801898B4 AC2FA1A0 */   sw        $t7, %lo(D_800EA1A0)($at)
  .L801898B8_ovl3:
    /* EA2F8 801898B8 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* EA2FC 801898BC 00230821 */  addu       $at, $at, $v1
    /* EA300 801898C0 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
  .L801898C4_ovl3:
    /* EA304 801898C4 AD060044 */  sw         $a2, 0x44($t0)
  .L801898C8_ovl3:
    /* EA308 801898C8 10E4000E */  beq        $a3, $a0, .L80189904_ovl3
    /* EA30C 801898CC 3C198005 */   lui       $t9, %hi(omCurrentObj)
    /* EA310 801898D0 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* EA314 801898D4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* EA318 801898D8 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* EA31C 801898DC 8F2A0000 */  lw         $t2, 0x0($t9)
    /* EA320 801898E0 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* EA324 801898E4 000A5880 */  sll        $t3, $t2, 2
    /* EA328 801898E8 008B2021 */  addu       $a0, $a0, $t3
    /* EA32C 801898EC 0C02C7B2 */  jal        assign_new_process_entry
    /* EA330 801898F0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* EA334 801898F4 3C088013 */  lui        $t0, %hi(gKirbyState)
    /* EA338 801898F8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
    /* EA33C 801898FC 8D0D0044 */  lw         $t5, 0x44($t0)
    /* EA340 80189900 AD0D003C */  sw         $t5, 0x3C($t0)
  .L80189904_ovl3:
    /* EA344 80189904 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80189908_ovl3:
    /* EA348 80189908 27BD0080 */  addiu      $sp, $sp, 0x80
    /* EA34C 8018990C 03E00008 */  jr         $ra
    /* EA350 80189910 00000000 */   nop
endlabel func_80188238_ovl3
.size func_80188238_ovl3, . - func_80188238_ovl3
