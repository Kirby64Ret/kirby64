glabel func_801E8484_ovl9
/* 1964D4 801E8484 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1964D8 801E8488 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1964DC 801E848C 8C620000 */  lw         $v0, 0x0($v1)
glabel func_801E8490_ovl16
/* 1964E0 801E8490 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1964E4 801E8494 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1964E8 801E8498 AFA40018 */  sw         $a0, 0x18($sp)
/* 1964EC 801E849C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1964F0 801E84A0 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1964F4 801E84A4 3C04800E */  lui        $a0, %hi(D_800E1B50)
/* 1964F8 801E84A8 000E7880 */  sll        $t7, $t6, 2
/* 1964FC 801E84AC 002F0821 */  addu       $at, $at, $t7
/* 196500 801E84B0 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 196504 801E84B4 8C590000 */  lw         $t9, 0x0($v0)
/* 196508 801E84B8 24841B50 */  addiu      $a0, $a0, %lo(D_800E1B50)
/* 19650C 801E84BC 3C18801D */  lui        $t8, %hi(D_801C8880)
/* 196510 801E84C0 00194080 */  sll        $t0, $t9, 2
/* 196514 801E84C4 00884821 */  addu       $t1, $a0, $t0
/* 196518 801E84C8 8D2A0000 */  lw         $t2, 0x0($t1)
/* 19651C 801E84CC 27188880 */  addiu      $t8, $t8, %lo(D_801C8880)
/* 196520 801E84D0 3C0B801D */  lui        $t3, %hi(D_801CBBC0)
/* 196524 801E84D4 AD58008C */  sw         $t8, 0x8C($t2)
/* 196528 801E84D8 8C6C0000 */  lw         $t4, 0x0($v1)
/* 19652C 801E84DC 256BBBC0 */  addiu      $t3, $t3, %lo(D_801CBBC0)
/* 196530 801E84E0 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 196534 801E84E4 8D8D0000 */  lw         $t5, 0x0($t4)
/* 196538 801E84E8 000D7080 */  sll        $t6, $t5, 2
/* 19653C 801E84EC 008E7821 */  addu       $t7, $a0, $t6
/* 196540 801E84F0 8DF90000 */  lw         $t9, 0x0($t7)
/* 196544 801E84F4 AF2B0098 */  sw         $t3, 0x98($t9)
/* 196548 801E84F8 0C02BB30 */  jal        func_800AECC0
/* 19654C 801E84FC C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 196550 801E8500 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 196554 801E8504 0C02BB48 */  jal        func_800AED20
/* 196558 801E8508 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 19655C 801E850C 0C02CCFD */  jal        func_800B33F4
/* 196560 801E8510 00000000 */   nop
/* 196564 801E8514 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 196568 801E8518 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 19656C 801E851C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 196570 801E8520 24080001 */  addiu      $t0, $zero, 0x1
/* 196574 801E8524 8C490000 */  lw         $t1, 0x0($v0)
/* 196578 801E8528 3C0D800F */  lui        $t5, %hi(D_800E9E20)
/* 19657C 801E852C 25AD9E20 */  addiu      $t5, $t5, %lo(D_800E9E20)
/* 196580 801E8530 0009C080 */  sll        $t8, $t1, 2
/* 196584 801E8534 00380821 */  addu       $at, $at, $t8
/* 196588 801E8538 AC288920 */  sw         $t0, %lo(D_800E8920)($at)
/* 19658C 801E853C 8C430000 */  lw         $v1, 0x0($v0)
/* 196590 801E8540 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 196594 801E8544 00031880 */  sll        $v1, $v1, 2
glabel func_801E8548_ovl10
/* 196598 801E8548 00230821 */  addu       $at, $at, $v1
/* 19659C 801E854C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1965A0 801E8550 3C018022 */  lui        $at, %hi(D_8021D08C_ovl9)
/* 1965A4 801E8554 C426D08C */  lwc1       $f6, %lo(D_8021D08C_ovl9)($at)
/* 1965A8 801E8558 3C01800E */  lui        $at, %hi(D_800E4C50)
/* 1965AC 801E855C 00230821 */  addu       $at, $at, $v1
/* 1965B0 801E8560 46062202 */  mul.s      $f8, $f4, $f6
/* 1965B4 801E8564 E4284C50 */  swc1       $f8, %lo(D_800E4C50)($at)
/* 1965B8 801E8568 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1965BC 801E856C 000A6080 */  sll        $t4, $t2, 2
/* 1965C0 801E8570 018D2021 */  addu       $a0, $t4, $t5
/* 1965C4 801E8574 8C850000 */  lw         $a1, 0x0($a0)
/* 1965C8 801E8578 18A00002 */  blez       $a1, .L801E8584_ovl9
/* 1965CC 801E857C 24AEFFFF */   addiu     $t6, $a1, -0x1
/* 1965D0 801E8580 AC8E0000 */  sw         $t6, 0x0($a0)
.L801E8584_ovl9:
/* 1965D4 801E8584 3C040001 */  lui        $a0, (0x1021E >> 16)
/* 1965D8 801E8588 0C02A806 */  jal        func_800AA018
/* 1965DC 801E858C 3484021E */   ori       $a0, $a0, (0x1021E & 0xFFFF)
/* 1965E0 801E8590 3C040001 */  lui        $a0, (0x1021D >> 16)
/* 1965E4 801E8594 0C02A806 */  jal        func_800AA018
/* 1965E8 801E8598 3484021D */   ori       $a0, $a0, (0x1021D & 0xFFFF)
/* 1965EC 801E859C 0C02BC9F */  jal        func_800AF27C
/* 1965F0 801E85A0 00000000 */   nop
/* 1965F4 801E85A4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
.L801E85A8_ovl10:
/* 1965F8 801E85A8 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1965FC 801E85AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 196600 801E85B0 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 196604 801E85B4 8DEB0000 */  lw         $t3, 0x0($t7)
glabel func_801E85B8_ovl10
/* 196608 801E85B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 19660C 801E85BC 000BC880 */  sll        $t9, $t3, 2
/* 196610 801E85C0 00390821 */  addu       $at, $at, $t9
/* 196614 801E85C4 03E00008 */  jr         $ra
/* 196618 801E85C8 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
