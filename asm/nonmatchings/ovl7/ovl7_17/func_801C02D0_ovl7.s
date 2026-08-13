nonmatching func_801C02D0_ovl7, 0x2B8

glabel func_801C02D0_ovl7
    /* 166340 801C02D0 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 166344 801C02D4 AFB10018 */  sw         $s1, 0x18($sp)
    /* 166348 801C02D8 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* 16634C 801C02DC 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* 166350 801C02E0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* 166354 801C02E4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 166358 801C02E8 AFB00014 */  sw         $s0, 0x14($sp)
    /* 16635C 801C02EC 8DC20000 */  lw         $v0, 0x0($t6)
    /* 166360 801C02F0 3C10800E */  lui        $s0, %hi(D_800E1B50)
    /* 166364 801C02F4 00027880 */  sll        $t7, $v0, 2
    /* 166368 801C02F8 020F8021 */  addu       $s0, $s0, $t7
    /* 16636C 801C02FC 8E101B50 */  lw         $s0, %lo(D_800E1B50)($s0)
    /* 166370 801C0300 8E18008C */  lw         $t8, 0x8C($s0)
    /* 166374 801C0304 17000003 */  bnez       $t8, .L801C0314_ovl7
    /* 166378 801C0308 00000000 */   nop
    /* 16637C 801C030C 10000099 */  b          .L801C0574_ovl7
    /* 166380 801C0310 00001025 */   or        $v0, $zero, $zero
  .L801C0314_ovl7:
    /* 166384 801C0314 0C044554 */  jal        func_80111550
    /* 166388 801C0318 00402025 */   or        $a0, $v0, $zero
    /* 16638C 801C031C 8E390000 */  lw         $t9, 0x0($s1)
    /* 166390 801C0320 8E04008C */  lw         $a0, 0x8C($s0)
    /* 166394 801C0324 0C044722 */  jal        func_80111C88
    /* 166398 801C0328 8F250000 */   lw        $a1, 0x0($t9)
    /* 16639C 801C032C 0C0447B3 */  jal        func_80111ECC
    /* 1663A0 801C0330 00402025 */   or        $a0, $v0, $zero
    /* 1663A4 801C0334 0C0442C0 */  jal        func_80110B00
    /* 1663A8 801C0338 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1663AC 801C033C 1040000C */  beqz       $v0, .L801C0370_ovl7
    /* 1663B0 801C0340 00000000 */   nop
    /* 1663B4 801C0344 8E290000 */  lw         $t1, 0x0($s1)
    /* 1663B8 801C0348 93A8003A */  lbu        $t0, 0x3A($sp)
    /* 1663BC 801C034C 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 1663C0 801C0350 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 1663C4 801C0354 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 1663C8 801C0358 000A5880 */  sll        $t3, $t2, 2
    /* 1663CC 801C035C 00AB6021 */  addu       $t4, $a1, $t3
    /* 1663D0 801C0360 AD880000 */  sw         $t0, 0x0($t4)
    /* 1663D4 801C0364 93AD003B */  lbu        $t5, 0x3B($sp)
    /* 1663D8 801C0368 10000026 */  b          .L801C0404_ovl7
    /* 1663DC 801C036C A20D0043 */   sb        $t5, 0x43($s0)
  .L801C0370_ovl7:
    /* 1663E0 801C0370 0C0443F5 */  jal        func_80110FD4
    /* 1663E4 801C0374 27A40038 */   addiu     $a0, $sp, 0x38
    /* 1663E8 801C0378 1040000C */  beqz       $v0, .L801C03AC_ovl7
    /* 1663EC 801C037C 00000000 */   nop
    /* 1663F0 801C0380 8E2F0000 */  lw         $t7, 0x0($s1)
    /* 1663F4 801C0384 93AE003A */  lbu        $t6, 0x3A($sp)
    /* 1663F8 801C0388 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 1663FC 801C038C 8DF80000 */  lw         $t8, 0x0($t7)
    /* 166400 801C0390 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 166404 801C0394 0018C880 */  sll        $t9, $t8, 2
    /* 166408 801C0398 00B94821 */  addu       $t1, $a1, $t9
    /* 16640C 801C039C AD2E0000 */  sw         $t6, 0x0($t1)
    /* 166410 801C03A0 93AA003B */  lbu        $t2, 0x3B($sp)
    /* 166414 801C03A4 10000017 */  b          .L801C0404_ovl7
    /* 166418 801C03A8 A20A0043 */   sb        $t2, 0x43($s0)
  .L801C03AC_ovl7:
    /* 16641C 801C03AC 0C044054 */  jal        func_80110150
    /* 166420 801C03B0 27A40038 */   addiu     $a0, $sp, 0x38
    /* 166424 801C03B4 5040000C */  beql       $v0, $zero, .L801C03E8_ovl7
    /* 166428 801C03B8 8E380000 */   lw        $t8, 0x0($s1)
    /* 16642C 801C03BC 8E280000 */  lw         $t0, 0x0($s1)
    /* 166430 801C03C0 93AB003A */  lbu        $t3, 0x3A($sp)
    /* 166434 801C03C4 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 166438 801C03C8 8D0C0000 */  lw         $t4, 0x0($t0)
    /* 16643C 801C03CC 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 166440 801C03D0 000C6880 */  sll        $t5, $t4, 2
    /* 166444 801C03D4 00AD7821 */  addu       $t7, $a1, $t5
    /* 166448 801C03D8 ADEB0000 */  sw         $t3, 0x0($t7)
    /* 16644C 801C03DC 10000009 */  b          .L801C0404_ovl7
    /* 166450 801C03E0 A2000043 */   sb        $zero, 0x43($s0)
    /* 166454 801C03E4 8E380000 */  lw         $t8, 0x0($s1)
  .L801C03E8_ovl7:
    /* 166458 801C03E8 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 16645C 801C03EC 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
    /* 166460 801C03F0 8F190000 */  lw         $t9, 0x0($t8)
    /* 166464 801C03F4 00197080 */  sll        $t6, $t9, 2
    /* 166468 801C03F8 00AE4821 */  addu       $t1, $a1, $t6
    /* 16646C 801C03FC AD200000 */  sw         $zero, 0x0($t1)
    /* 166470 801C0400 A2000043 */  sb         $zero, 0x43($s0)
  .L801C0404_ovl7:
    /* 166474 801C0404 8E230000 */  lw         $v1, 0x0($s1)
    /* 166478 801C0408 24060001 */  addiu      $a2, $zero, 0x1
    /* 16647C 801C040C 8C620000 */  lw         $v0, 0x0($v1)
    /* 166480 801C0410 00021080 */  sll        $v0, $v0, 2
    /* 166484 801C0414 00A25021 */  addu       $t2, $a1, $v0
    /* 166488 801C0418 8D440000 */  lw         $a0, 0x0($t2)
    /* 16648C 801C041C 10860005 */  beq        $a0, $a2, .L801C0434_ovl7
    /* 166490 801C0420 24010003 */   addiu     $at, $zero, 0x3
    /* 166494 801C0424 10810039 */  beq        $a0, $at, .L801C050C_ovl7
    /* 166498 801C0428 00000000 */   nop
    /* 16649C 801C042C 10000051 */  b          .L801C0574_ovl7
    /* 1664A0 801C0430 00001025 */   or        $v0, $zero, $zero
  .L801C0434_ovl7:
    /* 1664A4 801C0434 8FA40044 */  lw         $a0, 0x44($sp)
    /* 1664A8 801C0438 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 1664AC 801C043C 00220821 */  addu       $at, $at, $v0
    /* 1664B0 801C0440 1480000B */  bnez       $a0, .L801C0470_ovl7
    /* 1664B4 801C0444 3C05801C */   lui       $a1, %hi(func_801BF598_ovl7)
    /* 1664B8 801C0448 AC26DC50 */  sw         $a2, %lo(gEntityFuncListIDArray)($at)
    /* 1664BC 801C044C 8C680000 */  lw         $t0, 0x0($v1)
    /* 1664C0 801C0450 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1664C4 801C0454 24A5F598 */  addiu      $a1, $a1, %lo(func_801BF598_ovl7)
    /* 1664C8 801C0458 00086080 */  sll        $t4, $t0, 2
    /* 1664CC 801C045C 008C2021 */  addu       $a0, $a0, $t4
    /* 1664D0 801C0460 0C02C7B2 */  jal        assign_new_process_entry
    /* 1664D4 801C0464 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1664D8 801C0468 10000042 */  b          .L801C0574_ovl7
    /* 1664DC 801C046C 24020001 */   addiu     $v0, $zero, 0x1
  .L801C0470_ovl7:
    /* 1664E0 801C0470 0C068091 */  jal        func_801A0244_ovl7
    /* 1664E4 801C0474 00000000 */   nop
    /* 1664E8 801C0478 3C05800F */  lui        $a1, %hi(D_800E83E0)
    /* 1664EC 801C047C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1664F0 801C0480 10410017 */  beq        $v0, $at, .L801C04E0_ovl7
    /* 1664F4 801C0484 24A583E0 */   addiu     $a1, $a1, %lo(D_800E83E0)
    /* 1664F8 801C0488 8E2B0000 */  lw         $t3, 0x0($s1)
    /* 1664FC 801C048C 240D0012 */  addiu      $t5, $zero, 0x12
    /* 166500 801C0490 240400F4 */  addiu      $a0, $zero, 0xF4
    /* 166504 801C0494 8D6F0000 */  lw         $t7, 0x0($t3)
    /* 166508 801C0498 000FC080 */  sll        $t8, $t7, 2
    /* 16650C 801C049C 00B8C821 */  addu       $t9, $a1, $t8
    /* 166510 801C04A0 0C029D9E */  jal        play_sound
    /* 166514 801C04A4 AF2D0000 */   sw        $t5, 0x0($t9)
    /* 166518 801C04A8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 16651C 801C04AC AE000094 */  sw         $zero, 0x94($s0)
    /* 166520 801C04B0 A20E0040 */  sb         $t6, 0x40($s0)
    /* 166524 801C04B4 8E290000 */  lw         $t1, 0x0($s1)
    /* 166528 801C04B8 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 16652C 801C04BC 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
    /* 166530 801C04C0 8D2A0000 */  lw         $t2, 0x0($t1)
    /* 166534 801C04C4 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
    /* 166538 801C04C8 000A4080 */  sll        $t0, $t2, 2
    /* 16653C 801C04CC 00882021 */  addu       $a0, $a0, $t0
    /* 166540 801C04D0 0C02C7B2 */  jal        assign_new_process_entry
    /* 166544 801C04D4 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 166548 801C04D8 10000026 */  b          .L801C0574_ovl7
    /* 16654C 801C04DC 24020001 */   addiu     $v0, $zero, 0x1
  .L801C04E0_ovl7:
    /* 166550 801C04E0 8E2C0000 */  lw         $t4, 0x0($s1)
    /* 166554 801C04E4 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 166558 801C04E8 3C05801C */  lui        $a1, %hi(func_801C0610_ovl7)
    /* 16655C 801C04EC 8D8B0000 */  lw         $t3, 0x0($t4)
    /* 166560 801C04F0 24A50610 */  addiu      $a1, $a1, %lo(func_801C0610_ovl7)
    /* 166564 801C04F4 000B7880 */  sll        $t7, $t3, 2
    /* 166568 801C04F8 008F2021 */  addu       $a0, $a0, $t7
    /* 16656C 801C04FC 0C02C7B2 */  jal        assign_new_process_entry
    /* 166570 801C0500 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 166574 801C0504 1000001B */  b          .L801C0574_ovl7
    /* 166578 801C0508 24020001 */   addiu     $v0, $zero, 0x1
  .L801C050C_ovl7:
    /* 16657C 801C050C 3C01800F */  lui        $at, %hi(D_800E8220)
    /* 166580 801C0510 8FB80044 */  lw         $t8, 0x44($sp)
    /* 166584 801C0514 00220821 */  addu       $at, $at, $v0
    /* 166588 801C0518 AC208220 */  sw         $zero, %lo(D_800E8220)($at)
    /* 16658C 801C051C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 166590 801C0520 13010006 */  beq        $t8, $at, .L801C053C_ovl7
    /* 166594 801C0524 3C028013 */   lui       $v0, %hi(gKirbyState)
    /* 166598 801C0528 8C6D0000 */  lw         $t5, 0x0($v1)
    /* 16659C 801C052C 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* 1665A0 801C0530 000DC880 */  sll        $t9, $t5, 2
    /* 1665A4 801C0534 00390821 */  addu       $at, $at, $t9
    /* 1665A8 801C0538 AC380D50 */  sw         $t8, %lo(D_800E0D50)($at)
  .L801C053C_ovl7:
    /* 1665AC 801C053C 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
    /* 1665B0 801C0540 844E00B2 */  lh         $t6, 0xB2($v0)
    /* 1665B4 801C0544 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1665B8 801C0548 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
    /* 1665BC 801C054C 25C90001 */  addiu      $t1, $t6, 0x1
    /* 1665C0 801C0550 A44900B2 */  sh         $t1, 0xB2($v0)
    /* 1665C4 801C0554 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 1665C8 801C0558 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
    /* 1665CC 801C055C 000A4080 */  sll        $t0, $t2, 2
    /* 1665D0 801C0560 00882021 */  addu       $a0, $a0, $t0
    /* 1665D4 801C0564 0C02C7B2 */  jal        assign_new_process_entry
    /* 1665D8 801C0568 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1665DC 801C056C 10000001 */  b          .L801C0574_ovl7
    /* 1665E0 801C0570 24020001 */   addiu     $v0, $zero, 0x1
  .L801C0574_ovl7:
    /* 1665E4 801C0574 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 1665E8 801C0578 8FB00014 */  lw         $s0, 0x14($sp)
    /* 1665EC 801C057C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 1665F0 801C0580 03E00008 */  jr         $ra
    /* 1665F4 801C0584 27BD0058 */   addiu     $sp, $sp, 0x58
endlabel func_801C02D0_ovl7
.size func_801C02D0_ovl7, . - func_801C02D0_ovl7
