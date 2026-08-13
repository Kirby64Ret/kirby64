nonmatching func_8016593C_ovl3, 0x39C

glabel func_8016593C_ovl3
    /* C637C 8016593C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* C6380 80165940 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* C6384 80165944 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* C6388 80165948 AFBF001C */  sw         $ra, 0x1C($sp)
    /* C638C 8016594C AFB00018 */  sw         $s0, 0x18($sp)
    /* C6390 80165950 AFA40020 */  sw         $a0, 0x20($sp)
    /* C6394 80165954 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C6398 80165958 3C018019 */  lui        $at, %hi(D_8019717C_ovl3)
    /* C639C 8016595C C420717C */  lwc1       $f0, %lo(D_8019717C_ovl3)($at)
    /* C63A0 80165960 3C01800E */  lui        $at, %hi(D_800DF150)
    /* C63A4 80165964 3C0E8016 */  lui        $t6, %hi(func_80165CD8_ovl3)
    /* C63A8 80165968 000FC080 */  sll        $t8, $t7, 2
    /* C63AC 8016596C 00380821 */  addu       $at, $at, $t8
    /* C63B0 80165970 25CE5CD8 */  addiu      $t6, $t6, %lo(func_80165CD8_ovl3)
    /* C63B4 80165974 AC2EF150 */  sw         $t6, %lo(D_800DF150)($at)
    /* C63B8 80165978 8C590000 */  lw         $t9, 0x0($v0)
    /* C63BC 8016597C 3C01800E */  lui        $at, %hi(gEntitiesScaleXArray)
    /* C63C0 80165980 3C04800F */  lui        $a0, %hi(D_800EC2E0)
    /* C63C4 80165984 00194080 */  sll        $t0, $t9, 2
    /* C63C8 80165988 00280821 */  addu       $at, $at, $t0
    /* C63CC 8016598C E4204550 */  swc1       $f0, %lo(gEntitiesScaleXArray)($at)
    /* C63D0 80165990 8C490000 */  lw         $t1, 0x0($v0)
    /* C63D4 80165994 3C01800E */  lui        $at, %hi(gEntitiesScaleYArray)
    /* C63D8 80165998 240D0001 */  addiu      $t5, $zero, 0x1
    /* C63DC 8016599C 00095080 */  sll        $t2, $t1, 2
    /* C63E0 801659A0 002A0821 */  addu       $at, $at, $t2
    /* C63E4 801659A4 E4204710 */  swc1       $f0, %lo(gEntitiesScaleYArray)($at)
    /* C63E8 801659A8 8C4B0000 */  lw         $t3, 0x0($v0)
    /* C63EC 801659AC 3C01800E */  lui        $at, %hi(gEntitiesScaleZArray)
    /* C63F0 801659B0 3C0F800B */  lui        $t7, %hi(func_800B5094)
    /* C63F4 801659B4 000B6080 */  sll        $t4, $t3, 2
    /* C63F8 801659B8 002C0821 */  addu       $at, $at, $t4
    /* C63FC 801659BC E42048D0 */  swc1       $f0, %lo(gEntitiesScaleZArray)($at)
    /* C6400 801659C0 8C430000 */  lw         $v1, 0x0($v0)
    /* C6404 801659C4 3C01800E */  lui        $at, %hi(D_800E0650)
    /* C6408 801659C8 00031880 */  sll        $v1, $v1, 2
    /* C640C 801659CC 00832021 */  addu       $a0, $a0, $v1
    /* C6410 801659D0 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
    /* C6414 801659D4 00230821 */  addu       $at, $at, $v1
    /* C6418 801659D8 10800006 */  beqz       $a0, .L801659F4_ovl3
    /* C641C 801659DC 00000000 */   nop
    /* C6420 801659E0 24010001 */  addiu      $at, $zero, 0x1
    /* C6424 801659E4 10810036 */  beq        $a0, $at, .L80165AC0_ovl3
    /* C6428 801659E8 00000000 */   nop
    /* C642C 801659EC 100000B6 */  b          .L80165CC8_ovl3
    /* C6430 801659F0 8FBF001C */   lw        $ra, 0x1C($sp)
  .L801659F4_ovl3:
    /* C6434 801659F4 AC2D0650 */  sw         $t5, %lo(D_800E0650)($at)
    /* C6438 801659F8 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C643C 801659FC 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* C6440 80165A00 25EF5094 */  addiu      $t7, $t7, %lo(func_800B5094)
    /* C6444 80165A04 000EC080 */  sll        $t8, $t6, 2
    /* C6448 80165A08 00380821 */  addu       $at, $at, $t8
    /* C644C 80165A0C AC2FEF90 */  sw         $t7, %lo(D_800DEF90)($at)
    /* C6450 80165A10 8C480000 */  lw         $t0, 0x0($v0)
    /* C6454 80165A14 3C01800E */  lui        $at, %hi(D_800E0F10)
    /* C6458 80165A18 2419000E */  addiu      $t9, $zero, 0xE
    /* C645C 80165A1C 00084880 */  sll        $t1, $t0, 2
    /* C6460 80165A20 00290821 */  addu       $at, $at, $t1
    /* C6464 80165A24 AC390F10 */  sw         $t9, %lo(D_800E0F10)($at)
    /* C6468 80165A28 8C4A0000 */  lw         $t2, 0x0($v0)
    /* C646C 80165A2C 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* C6470 80165A30 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
    /* C6474 80165A34 000A5880 */  sll        $t3, $t2, 2
    /* C6478 80165A38 020B6021 */  addu       $t4, $s0, $t3
    /* C647C 80165A3C 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C6480 80165A40 3C01800E */  lui        $at, %hi(D_800E09D0)
    /* C6484 80165A44 000D7080 */  sll        $t6, $t5, 2
    /* C6488 80165A48 002E0821 */  addu       $at, $at, $t6
    /* C648C 80165A4C 0C02BB30 */  jal        func_800AECC0
    /* C6490 80165A50 C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
    /* C6494 80165A54 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* C6498 80165A58 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* C649C 80165A5C 3C01800E */  lui        $at, %hi(D_800E09D0)
    /* C64A0 80165A60 8DF80000 */  lw         $t8, 0x0($t7)
    /* C64A4 80165A64 00184080 */  sll        $t0, $t8, 2
    /* C64A8 80165A68 0208C821 */  addu       $t9, $s0, $t0
    /* C64AC 80165A6C 8F290000 */  lw         $t1, 0x0($t9)
    /* C64B0 80165A70 00095080 */  sll        $t2, $t1, 2
    /* C64B4 80165A74 002A0821 */  addu       $at, $at, $t2
    /* C64B8 80165A78 0C02BB48 */  jal        func_800AED20
    /* C64BC 80165A7C C42C09D0 */   lwc1      $f12, %lo(D_800E09D0)($at)
    /* C64C0 80165A80 3C040002 */  lui        $a0, (0x2004C >> 16)
    /* C64C4 80165A84 3484004C */  ori        $a0, $a0, (0x2004C & 0xFFFF)
    /* C64C8 80165A88 24050022 */  addiu      $a1, $zero, 0x22
    /* C64CC 80165A8C 0C02A619 */  jal        func_800A9864
    /* C64D0 80165A90 24060010 */   addiu     $a2, $zero, 0x10
    /* C64D4 80165A94 3C040002 */  lui        $a0, (0x202AD >> 16)
    /* C64D8 80165A98 0C02A855 */  jal        func_800AA154
    /* C64DC 80165A9C 348402AD */   ori       $a0, $a0, (0x202AD & 0xFFFF)
    /* C64E0 80165AA0 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* C64E4 80165AA4 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* C64E8 80165AA8 0C02C640 */  jal        func_800B1900
    /* C64EC 80165AAC 95640002 */   lhu       $a0, 0x2($t3)
    /* C64F0 80165AB0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* C64F4 80165AB4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* C64F8 80165AB8 8C430000 */  lw         $v1, 0x0($v0)
    /* C64FC 80165ABC 00031880 */  sll        $v1, $v1, 2
  .L80165AC0_ovl3:
    /* C6500 80165AC0 3C10800E */  lui        $s0, %hi(D_800E0D50)
    /* C6504 80165AC4 26100D50 */  addiu      $s0, $s0, %lo(D_800E0D50)
    /* C6508 80165AC8 02036021 */  addu       $t4, $s0, $v1
    /* C650C 80165ACC 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C6510 80165AD0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C6514 80165AD4 3C06800F */  lui        $a2, %hi(D_800EAC20)
    /* C6518 80165AD8 000D7080 */  sll        $t6, $t5, 2
    /* C651C 80165ADC 002E0821 */  addu       $at, $at, $t6
    /* C6520 80165AE0 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* C6524 80165AE4 3C014220 */  lui        $at, (0x42200000 >> 16)
    /* C6528 80165AE8 44813000 */  mtc1       $at, $f6
    /* C652C 80165AEC 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* C6530 80165AF0 00230821 */  addu       $at, $at, $v1
    /* C6534 80165AF4 46062200 */  add.s      $f8, $f4, $f6
    /* C6538 80165AF8 24C6AC20 */  addiu      $a2, $a2, %lo(D_800EAC20)
    /* C653C 80165AFC 240D0017 */  addiu      $t5, $zero, 0x17
    /* C6540 80165B00 3C05801A */  lui        $a1, %hi(D_80198800_ovl3)
    /* C6544 80165B04 E428A6E0 */  swc1       $f8, %lo(D_800EA6E0)($at)
    /* C6548 80165B08 8C4F0000 */  lw         $t7, 0x0($v0)
    /* C654C 80165B0C 3C0141C8 */  lui        $at, (0x41C80000 >> 16)
    /* C6550 80165B10 44815000 */  mtc1       $at, $f10
    /* C6554 80165B14 3C01800F */  lui        $at, %hi(D_800EA8A0)
    /* C6558 80165B18 000FC080 */  sll        $t8, $t7, 2
    /* C655C 80165B1C 00380821 */  addu       $at, $at, $t8
    /* C6560 80165B20 E42AA8A0 */  swc1       $f10, %lo(D_800EA8A0)($at)
    /* C6564 80165B24 8C480000 */  lw         $t0, 0x0($v0)
    /* C6568 80165B28 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* C656C 80165B2C 44818000 */  mtc1       $at, $f16
    /* C6570 80165B30 3C01800F */  lui        $at, %hi(D_800EAA60)
    /* C6574 80165B34 0008C880 */  sll        $t9, $t0, 2
    /* C6578 80165B38 00390821 */  addu       $at, $at, $t9
    /* C657C 80165B3C E430AA60 */  swc1       $f16, %lo(D_800EAA60)($at)
    /* C6580 80165B40 8C490000 */  lw         $t1, 0x0($v0)
    /* C6584 80165B44 3C018019 */  lui        $at, %hi(D_80197180_ovl3)
    /* C6588 80165B48 C4327180 */  lwc1       $f18, %lo(D_80197180_ovl3)($at)
    /* C658C 80165B4C 00095080 */  sll        $t2, $t1, 2
    /* C6590 80165B50 00CA5821 */  addu       $t3, $a2, $t2
    /* C6594 80165B54 E5720000 */  swc1       $f18, 0x0($t3)
    /* C6598 80165B58 8C430000 */  lw         $v1, 0x0($v0)
    /* C659C 80165B5C 3C014170 */  lui        $at, (0x41700000 >> 16)
    /* C65A0 80165B60 44813000 */  mtc1       $at, $f6
    /* C65A4 80165B64 00031880 */  sll        $v1, $v1, 2
    /* C65A8 80165B68 00C36021 */  addu       $t4, $a2, $v1
    /* C65AC 80165B6C C5840000 */  lwc1       $f4, 0x0($t4)
    /* C65B0 80165B70 3C01800F */  lui        $at, %hi(D_800EADE0)
    /* C65B4 80165B74 00230821 */  addu       $at, $at, $v1
    /* C65B8 80165B78 46062203 */  div.s      $f8, $f4, $f6
    /* C65BC 80165B7C 24180007 */  addiu      $t8, $zero, 0x7
    /* C65C0 80165B80 44805000 */  mtc1       $zero, $f10
    /* C65C4 80165B84 24A58800 */  addiu      $a1, $a1, %lo(D_80198800_ovl3)
    /* C65C8 80165B88 E428ADE0 */  swc1       $f8, %lo(D_800EADE0)($at)
    /* C65CC 80165B8C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C65D0 80165B90 3C01800F */  lui        $at, %hi(D_800E9720)
    /* C65D4 80165B94 000E7880 */  sll        $t7, $t6, 2
    /* C65D8 80165B98 002F0821 */  addu       $at, $at, $t7
    /* C65DC 80165B9C AC2D9720 */  sw         $t5, %lo(D_800E9720)($at)
    /* C65E0 80165BA0 8C480000 */  lw         $t0, 0x0($v0)
    /* C65E4 80165BA4 3C01800F */  lui        $at, %hi(D_800E9560)
    /* C65E8 80165BA8 0008C880 */  sll        $t9, $t0, 2
    /* C65EC 80165BAC 00390821 */  addu       $at, $at, $t9
    /* C65F0 80165BB0 AC389560 */  sw         $t8, %lo(D_800E9560)($at)
    /* C65F4 80165BB4 8C490000 */  lw         $t1, 0x0($v0)
    /* C65F8 80165BB8 3C01800F */  lui        $at, %hi(D_800EAFA0)
    /* C65FC 80165BBC 00095080 */  sll        $t2, $t1, 2
    /* C6600 80165BC0 002A0821 */  addu       $at, $at, $t2
    /* C6604 80165BC4 E42AAFA0 */  swc1       $f10, %lo(D_800EAFA0)($at)
    /* C6608 80165BC8 0C055223 */  jal        func_8015488C_ovl3
    /* C660C 80165BCC 8C440000 */   lw        $a0, 0x0($v0)
    /* C6610 80165BD0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* C6614 80165BD4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* C6618 80165BD8 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* C661C 80165BDC 3C05800E */  lui        $a1, %hi(gEntitiesNextPosXArray)
    /* C6620 80165BE0 8C430000 */  lw         $v1, 0x0($v0)
    /* C6624 80165BE4 24A525D0 */  addiu      $a1, $a1, %lo(gEntitiesNextPosXArray)
    /* C6628 80165BE8 3C07800E */  lui        $a3, %hi(gEntitiesNextPosYArray)
    /* C662C 80165BEC 00031880 */  sll        $v1, $v1, 2
    /* C6630 80165BF0 02035821 */  addu       $t3, $s0, $v1
    /* C6634 80165BF4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C6638 80165BF8 24E72790 */  addiu      $a3, $a3, %lo(gEntitiesNextPosYArray)
    /* C663C 80165BFC 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
    /* C6640 80165C00 000C7080 */  sll        $t6, $t4, 2
    /* C6644 80165C04 002E0821 */  addu       $at, $at, $t6
    /* C6648 80165C08 C43017D0 */  lwc1       $f16, %lo(D_800E17D0)($at)
    /* C664C 80165C0C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C6650 80165C10 00230821 */  addu       $at, $at, $v1
    /* C6654 80165C14 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* C6658 80165C18 8C430000 */  lw         $v1, 0x0($v0)
    /* C665C 80165C1C 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
    /* C6660 80165C20 2404001C */  addiu      $a0, $zero, 0x1C
    /* C6664 80165C24 00031880 */  sll        $v1, $v1, 2
    /* C6668 80165C28 02036821 */  addu       $t5, $s0, $v1
    /* C666C 80165C2C 8DAF0000 */  lw         $t7, 0x0($t5)
    /* C6670 80165C30 00A3C821 */  addu       $t9, $a1, $v1
    /* C6674 80165C34 000F4080 */  sll        $t0, $t7, 2
    /* C6678 80165C38 00A8C021 */  addu       $t8, $a1, $t0
    /* C667C 80165C3C C7120000 */  lwc1       $f18, 0x0($t8)
    /* C6680 80165C40 E7320000 */  swc1       $f18, 0x0($t9)
    /* C6684 80165C44 8C430000 */  lw         $v1, 0x0($v0)
    /* C6688 80165C48 00031880 */  sll        $v1, $v1, 2
    /* C668C 80165C4C 02034821 */  addu       $t1, $s0, $v1
    /* C6690 80165C50 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C6694 80165C54 00E37021 */  addu       $t6, $a3, $v1
    /* C6698 80165C58 000A5880 */  sll        $t3, $t2, 2
    /* C669C 80165C5C 00EB6021 */  addu       $t4, $a3, $t3
    /* C66A0 80165C60 C5840000 */  lwc1       $f4, 0x0($t4)
    /* C66A4 80165C64 E5C40000 */  swc1       $f4, 0x0($t6)
    /* C66A8 80165C68 8C430000 */  lw         $v1, 0x0($v0)
    /* C66AC 80165C6C 00031880 */  sll        $v1, $v1, 2
    /* C66B0 80165C70 02036821 */  addu       $t5, $s0, $v1
    /* C66B4 80165C74 8DAF0000 */  lw         $t7, 0x0($t5)
    /* C66B8 80165C78 00C3C821 */  addu       $t9, $a2, $v1
    /* C66BC 80165C7C 000F4080 */  sll        $t0, $t7, 2
    /* C66C0 80165C80 00C8C021 */  addu       $t8, $a2, $t0
    /* C66C4 80165C84 C7060000 */  lwc1       $f6, 0x0($t8)
    /* C66C8 80165C88 0C029D9E */  jal        play_sound
    /* C66CC 80165C8C E7260000 */   swc1      $f6, 0x0($t9)
    /* C66D0 80165C90 3C040002 */  lui        $a0, (0x2004D >> 16)
    /* C66D4 80165C94 3484004D */  ori        $a0, $a0, (0x2004D & 0xFFFF)
    /* C66D8 80165C98 24050022 */  addiu      $a1, $zero, 0x22
    /* C66DC 80165C9C 0C02A619 */  jal        func_800A9864
    /* C66E0 80165CA0 24060010 */   addiu     $a2, $zero, 0x10
    /* C66E4 80165CA4 3C040002 */  lui        $a0, (0x202AF >> 16)
    /* C66E8 80165CA8 3C050002 */  lui        $a1, (0x202B0 >> 16)
    /* C66EC 80165CAC 34A502B0 */  ori        $a1, $a1, (0x202B0 & 0xFFFF)
    /* C66F0 80165CB0 348402AF */  ori        $a0, $a0, (0x202AF & 0xFFFF)
    /* C66F4 80165CB4 0C048C3A */  jal        func_801230E8
    /* C66F8 80165CB8 00003025 */   or        $a2, $zero, $zero
    /* C66FC 80165CBC 0C02BE85 */  jal        curObjSleepForever
    /* C6700 80165CC0 00000000 */   nop
    /* C6704 80165CC4 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80165CC8_ovl3:
    /* C6708 80165CC8 8FB00018 */  lw         $s0, 0x18($sp)
    /* C670C 80165CCC 27BD0020 */  addiu      $sp, $sp, 0x20
    /* C6710 80165CD0 03E00008 */  jr         $ra
    /* C6714 80165CD4 00000000 */   nop
endlabel func_8016593C_ovl3
.size func_8016593C_ovl3, . - func_8016593C_ovl3
