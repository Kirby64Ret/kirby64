glabel func_801E85CC_ovl9
/* 19661C 801E85CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
.L801E85D0_ovl16:
/* 196620 801E85D0 AFB20020 */  sw         $s2, 0x20($sp)
/* 196624 801E85D4 3C128005 */  lui        $s2, %hi(D_8004A7C4)
.L801E85D8_ovl16:
/* 196628 801E85D8 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 19662C 801E85DC AFB00018 */  sw         $s0, 0x18($sp)
/* 196630 801E85E0 8E500000 */  lw         $s0, 0x0($s2)
/* 196634 801E85E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 196638 801E85E8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 19663C 801E85EC AFA40028 */  sw         $a0, 0x28($sp)
/* 196640 801E85F0 8E0F0000 */  lw         $t7, 0x0($s0)
/* 196644 801E85F4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 196648 801E85F8 240E0001 */  addiu      $t6, $zero, 0x1
/* 19664C 801E85FC 000FC080 */  sll        $t8, $t7, 2
/* 196650 801E8600 00380821 */  addu       $at, $at, $t8
/* 196654 801E8604 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 196658 801E8608 8E080000 */  lw         $t0, 0x0($s0)
/* 19665C 801E860C 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 196660 801E8610 3C19801D */  lui        $t9, %hi(D_801CBBC0)
.L801E8614_ovl16:
/* 196664 801E8614 00084880 */  sll        $t1, $t0, 2
/* 196668 801E8618 01495021 */  addu       $t2, $t2, $t1
/* 19666C 801E861C 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 196670 801E8620 3C11800D */  lui        $s1, %hi(D_800D6B10)
/* 196674 801E8624 2739BBC0 */  addiu      $t9, $t9, %lo(D_801CBBC0)
/* 196678 801E8628 26316B10 */  addiu      $s1, $s1, %lo(D_800D6B10)
/* 19667C 801E862C AD590098 */  sw         $t9, 0x98($t2)
/* 196680 801E8630 0C02BB30 */  jal        func_800AECC0
.L801E8634_ovl16:
/* 196684 801E8634 C62C0000 */   lwc1      $f12, 0x0($s1)
/* 196688 801E8638 0C02BB48 */  jal        func_800AED20
/* 19668C 801E863C C62C0000 */   lwc1      $f12, 0x0($s1)
/* 196690 801E8640 0C02CCFD */  jal        func_800B33F4
/* 196694 801E8644 00000000 */   nop
/* 196698 801E8648 8E500000 */  lw         $s0, 0x0($s2)
/* 19669C 801E864C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1966A0 801E8650 240B0001 */  addiu      $t3, $zero, 0x1
/* 1966A4 801E8654 8E0C0000 */  lw         $t4, 0x0($s0)
/* 1966A8 801E8658 240FFFFF */  addiu      $t7, $zero, -0x1
/* 1966AC 801E865C 24040003 */  addiu      $a0, $zero, 0x3
/* 1966B0 801E8660 000C6880 */  sll        $t5, $t4, 2
/* 1966B4 801E8664 002D0821 */  addu       $at, $at, $t5
/* 1966B8 801E8668 AC2B8920 */  sw         $t3, %lo(D_800E8920)($at)
/* 1966BC 801E866C 8E020000 */  lw         $v0, 0x0($s0)
/* 1966C0 801E8670 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1966C4 801E8674 00021080 */  sll        $v0, $v0, 2
/* 1966C8 801E8678 00220821 */  addu       $at, $at, $v0
/* 1966CC 801E867C C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1966D0 801E8680 3C018022 */  lui        $at, %hi(D_8021D090_ovl9)
/* 1966D4 801E8684 C426D090 */  lwc1       $f6, %lo(D_8021D090_ovl9)($at)
/* 1966D8 801E8688 3C01800E */  lui        $at, %hi(D_800E4C50)
/* 1966DC 801E868C 00220821 */  addu       $at, $at, $v0
/* 1966E0 801E8690 46062202 */  mul.s      $f8, $f4, $f6
/* 1966E4 801E8694 E4284C50 */  swc1       $f8, %lo(D_800E4C50)($at)
/* 1966E8 801E8698 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1966EC 801E869C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1966F0 801E86A0 000EC080 */  sll        $t8, $t6, 2
/* 1966F4 801E86A4 00380821 */  addu       $at, $at, $t8
/* 1966F8 801E86A8 0C006291 */  jal        random_soft_s32_range
/* 1966FC 801E86AC AC2F9C60 */   sw        $t7, %lo(D_800E9C60)($at)
/* 196700 801E86B0 8E500000 */  lw         $s0, 0x0($s2)
.L801E86B4_ovl16:
/* 196704 801E86B4 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 196708 801E86B8 24480002 */  addiu      $t0, $v0, 0x2
/* 19670C 801E86BC 8E090000 */  lw         $t1, 0x0($s0)
/* 196710 801E86C0 3C040001 */  lui        $a0, (0x10218 >> 16)
/* 196714 801E86C4 34840218 */  ori        $a0, $a0, (0x10218 & 0xFFFF)
/* 196718 801E86C8 0009C880 */  sll        $t9, $t1, 2
/* 19671C 801E86CC 00390821 */  addu       $at, $at, $t9
/* 196720 801E86D0 AC289E20 */  sw         $t0, %lo(D_800E9E20)($at)
/* 196724 801E86D4 8E0A0000 */  lw         $t2, 0x0($s0)
/* 196728 801E86D8 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 19672C 801E86DC 000A6080 */  sll        $t4, $t2, 2
/* 196730 801E86E0 002C0821 */  addu       $at, $at, $t4
/* 196734 801E86E4 0C02A806 */  jal        func_800AA018
/* 196738 801E86E8 AC209AA0 */   sw        $zero, %lo(D_800E9AA0)($at)
/* 19673C 801E86EC 3C040001 */  lui        $a0, (0x10217 >> 16)
/* 196740 801E86F0 0C02A806 */  jal        func_800AA018
glabel func_801E86F4_ovl16
/* 196744 801E86F4 34840217 */   ori       $a0, $a0, (0x10217 & 0xFFFF)
/* 196748 801E86F8 0C02BC9F */  jal        func_800AF27C
/* 19674C 801E86FC 00000000 */   nop
/* 196750 801E8700 8E4D0000 */  lw         $t5, 0x0($s2)
/* 196754 801E8704 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 196758 801E8708 240B0001 */  addiu      $t3, $zero, 0x1
/* 19675C 801E870C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 196760 801E8710 24040003 */  addiu      $a0, $zero, 0x3
/* 196764 801E8714 000E7880 */  sll        $t7, $t6, 2
/* 196768 801E8718 002F0821 */  addu       $at, $at, $t7
glabel func_801E871C_ovl10
/* 19676C 801E871C 0C006291 */  jal        random_soft_s32_range
/* 196770 801E8720 AC2B9AA0 */   sw        $t3, %lo(D_800E9AA0)($at)
/* 196774 801E8724 24500002 */  addiu      $s0, $v0, 0x2
/* 196778 801E8728 1A00000B */  blez       $s0, .L801E8758_ovl9
/* 19677C 801E872C 3C110001 */   lui       $s1, (0x10213 >> 16)
/* 196780 801E8730 36310213 */  ori        $s1, $s1, (0x10213 & 0xFFFF)
.L801E8734_ovl9:
/* 196784 801E8734 0C029D9E */  jal        play_sound
/* 196788 801E8738 2404015D */   addiu     $a0, $zero, 0x15D
/* 19678C 801E873C 0C02A806 */  jal        func_800AA018
/* 196790 801E8740 02202025 */   or        $a0, $s1, $zero
/* 196794 801E8744 0C02BC9F */  jal        func_800AF27C
.L801E8748_ovl16:
/* 196798 801E8748 00000000 */   nop
/* 19679C 801E874C 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1967A0 801E8750 1600FFF8 */  bnez       $s0, .L801E8734_ovl9
/* 1967A4 801E8754 00000000 */   nop
.L801E8758_ovl9:
/* 1967A8 801E8758 8E580000 */  lw         $t8, 0x0($s2)
/* 1967AC 801E875C 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1967B0 801E8760 3C040001 */  lui        $a0, (0x10216 >> 16)
/* 1967B4 801E8764 8F090000 */  lw         $t1, 0x0($t8)
/* 1967B8 801E8768 34840216 */  ori        $a0, $a0, (0x10216 & 0xFFFF)
/* 1967BC 801E876C 00094080 */  sll        $t0, $t1, 2
/* 1967C0 801E8770 00280821 */  addu       $at, $at, $t0
/* 1967C4 801E8774 0C02A806 */  jal        func_800AA018
/* 1967C8 801E8778 AC209AA0 */   sw        $zero, %lo(D_800E9AA0)($at)
/* 1967CC 801E877C 3C040001 */  lui        $a0, (0x10215 >> 16)
/* 1967D0 801E8780 0C02A806 */  jal        func_800AA018
/* 1967D4 801E8784 34840215 */   ori       $a0, $a0, (0x10215 & 0xFFFF)
/* 1967D8 801E8788 0C02BC9F */  jal        func_800AF27C
/* 1967DC 801E878C 00000000 */   nop
/* 1967E0 801E8790 8E590000 */  lw         $t9, 0x0($s2)
/* 1967E4 801E8794 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1967E8 801E8798 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1967EC 801E879C 8F2A0000 */  lw         $t2, 0x0($t9)
/* 1967F0 801E87A0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1967F4 801E87A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1967F8 801E87A8 000A6080 */  sll        $t4, $t2, 2
/* 1967FC 801E87AC 002C0821 */  addu       $at, $at, $t4
/* 196800 801E87B0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 196804 801E87B4 AC20DC50 */  sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 196808 801E87B8 03E00008 */  jr         $ra
/* 19680C 801E87BC 27BD0028 */   addiu     $sp, $sp, 0x28
