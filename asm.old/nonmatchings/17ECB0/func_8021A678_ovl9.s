glabel func_8021A678_ovl9
/* 1C86C8 8021A678 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C86CC 8021A67C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C86D0 8021A680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C86D4 8021A684 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C86D8 8021A688 AFA40018 */  sw         $a0, 0x18($sp)
/* 1C86DC 8021A68C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1C86E0 8021A690 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C86E4 8021A694 24050001 */  addiu      $a1, $zero, 0x1
/* 1C86E8 8021A698 000E7880 */  sll        $t7, $t6, 2
/* 1C86EC 8021A69C 002F0821 */  addu       $at, $at, $t7
/* 1C86F0 8021A6A0 AC25DFD0 */  sw         $a1, %lo(D_800DDFD0)($at)
/* 1C86F4 8021A6A4 8C440000 */  lw         $a0, 0x0($v0)
/* 1C86F8 8021A6A8 3C03800F */  lui        $v1, %hi(D_800E98E0)
/* 1C86FC 8021A6AC 3C18800F */  lui        $t8, %hi(D_800E9AA0)
/* 1C8700 8021A6B0 00042080 */  sll        $a0, $a0, 2
/* 1C8704 8021A6B4 00641821 */  addu       $v1, $v1, $a0
/* 1C8708 8021A6B8 8C6398E0 */  lw         $v1, %lo(D_800E98E0)($v1)
/* 1C870C 8021A6BC 24010002 */  addiu      $at, $zero, 0x2
/* 1C8710 8021A6C0 0304C021 */  addu       $t8, $t8, $a0
/* 1C8714 8021A6C4 10650008 */  beq        $v1, $a1, .L8021A6E8_ovl9
/* 1C8718 8021A6C8 00000000 */   nop
/* 1C871C 8021A6CC 10610019 */  beq        $v1, $at, .L8021A734_ovl9
/* 1C8720 8021A6D0 3C19800F */   lui       $t9, %hi(D_800E9AA0)
/* 1C8724 8021A6D4 24010003 */  addiu      $at, $zero, 0x3
/* 1C8728 8021A6D8 1061002A */  beq        $v1, $at, .L8021A784_ovl9
/* 1C872C 8021A6DC 3C08800F */   lui       $t0, %hi(D_800E9AA0)
/* 1C8730 8021A6E0 1000003A */  b          .L8021A7CC_ovl9
/* 1C8734 8021A6E4 00000000 */   nop
.L8021A6E8_ovl9:
/* 1C8738 8021A6E8 8F189AA0 */  lw         $t8, %lo(D_800E9AA0)($t8)
/* 1C873C 8021A6EC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C8740 8021A6F0 44812000 */  mtc1       $at, $f4
/* 1C8744 8021A6F4 44983000 */  mtc1       $t8, $f6
/* 1C8748 8021A6F8 3C040001 */  lui        $a0, (0x105CF >> 16)
/* 1C874C 8021A6FC 46803220 */  cvt.s.w    $f8, $f6
/* 1C8750 8021A700 46082032 */  c.eq.s     $f4, $f8
/* 1C8754 8021A704 00000000 */  nop
/* 1C8758 8021A708 45000006 */  bc1f       .L8021A724_ovl9
/* 1C875C 8021A70C 00000000 */   nop
/* 1C8760 8021A710 3C040001 */  lui        $a0, (0x105D2 >> 16)
/* 1C8764 8021A714 0C02A806 */  jal        func_800AA018
/* 1C8768 8021A718 348405D2 */   ori       $a0, $a0, (0x105D2 & 0xFFFF)
/* 1C876C 8021A71C 1000002B */  b          .L8021A7CC_ovl9
/* 1C8770 8021A720 00000000 */   nop
.L8021A724_ovl9:
/* 1C8774 8021A724 0C02A806 */  jal        func_800AA018
/* 1C8778 8021A728 348405CF */   ori       $a0, $a0, (0x105CF & 0xFFFF)
/* 1C877C 8021A72C 10000027 */  b          .L8021A7CC_ovl9
/* 1C8780 8021A730 00000000 */   nop
.L8021A734_ovl9:
/* 1C8784 8021A734 0324C821 */  addu       $t9, $t9, $a0
/* 1C8788 8021A738 8F399AA0 */  lw         $t9, %lo(D_800E9AA0)($t9)
/* 1C878C 8021A73C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C8790 8021A740 44815000 */  mtc1       $at, $f10
/* 1C8794 8021A744 44998000 */  mtc1       $t9, $f16
/* 1C8798 8021A748 3C040001 */  lui        $a0, (0x105D0 >> 16)
/* 1C879C 8021A74C 468084A0 */  cvt.s.w    $f18, $f16
/* 1C87A0 8021A750 46125032 */  c.eq.s     $f10, $f18
/* 1C87A4 8021A754 00000000 */  nop
/* 1C87A8 8021A758 45000006 */  bc1f       .L8021A774_ovl9
/* 1C87AC 8021A75C 00000000 */   nop
/* 1C87B0 8021A760 3C040001 */  lui        $a0, (0x105D3 >> 16)
/* 1C87B4 8021A764 0C02A806 */  jal        func_800AA018
/* 1C87B8 8021A768 348405D3 */   ori       $a0, $a0, (0x105D3 & 0xFFFF)
/* 1C87BC 8021A76C 10000017 */  b          .L8021A7CC_ovl9
/* 1C87C0 8021A770 00000000 */   nop
.L8021A774_ovl9:
/* 1C87C4 8021A774 0C02A806 */  jal        func_800AA018
/* 1C87C8 8021A778 348405D0 */   ori       $a0, $a0, (0x105D0 & 0xFFFF)
/* 1C87CC 8021A77C 10000013 */  b          .L8021A7CC_ovl9
/* 1C87D0 8021A780 00000000 */   nop
.L8021A784_ovl9:
/* 1C87D4 8021A784 01044021 */  addu       $t0, $t0, $a0
/* 1C87D8 8021A788 8D089AA0 */  lw         $t0, %lo(D_800E9AA0)($t0)
/* 1C87DC 8021A78C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1C87E0 8021A790 44813000 */  mtc1       $at, $f6
/* 1C87E4 8021A794 44882000 */  mtc1       $t0, $f4
/* 1C87E8 8021A798 3C040001 */  lui        $a0, (0x105D1 >> 16)
/* 1C87EC 8021A79C 46802220 */  cvt.s.w    $f8, $f4
/* 1C87F0 8021A7A0 46083032 */  c.eq.s     $f6, $f8
/* 1C87F4 8021A7A4 00000000 */  nop
/* 1C87F8 8021A7A8 45000006 */  bc1f       .L8021A7C4_ovl9
/* 1C87FC 8021A7AC 00000000 */   nop
/* 1C8800 8021A7B0 3C040001 */  lui        $a0, (0x105D4 >> 16)
/* 1C8804 8021A7B4 0C02A806 */  jal        func_800AA018
/* 1C8808 8021A7B8 348405D4 */   ori       $a0, $a0, (0x105D4 & 0xFFFF)
/* 1C880C 8021A7BC 10000003 */  b          .L8021A7CC_ovl9
/* 1C8810 8021A7C0 00000000 */   nop
.L8021A7C4_ovl9:
/* 1C8814 8021A7C4 0C02A806 */  jal        func_800AA018
/* 1C8818 8021A7C8 348405D1 */   ori       $a0, $a0, (0x105D1 & 0xFFFF)
.L8021A7CC_ovl9:
/* 1C881C 8021A7CC 0C02BC9F */  jal        func_800AF27C
/* 1C8820 8021A7D0 00000000 */   nop
/* 1C8824 8021A7D4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1C8828 8021A7D8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1C882C 8021A7DC 0C067656 */  jal        func_8019D958_ovl7
/* 1C8830 8021A7E0 95240002 */   lhu       $a0, 0x2($t1)
/* 1C8834 8021A7E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C8838 8021A7E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C883C 8021A7EC 03E00008 */  jr         $ra
/* 1C8840 8021A7F0 00000000 */   nop
