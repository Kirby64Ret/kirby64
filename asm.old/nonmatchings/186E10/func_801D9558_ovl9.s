glabel func_801D9558_ovl9
/* 1875A8 801D9558 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1875AC 801D955C AFB00018 */  sw         $s0, 0x18($sp)
/* 1875B0 801D9560 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1875B4 801D9564 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1875B8 801D9568 8E020000 */  lw         $v0, 0x0($s0)
/* 1875BC 801D956C AFBF0024 */  sw         $ra, 0x24($sp)
/* 1875C0 801D9570 AFB20020 */  sw         $s2, 0x20($sp)
/* 1875C4 801D9574 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1875C8 801D9578 AFA40028 */  sw         $a0, 0x28($sp)
/* 1875CC 801D957C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1875D0 801D9580 3C0E800B */  lui        $t6, %hi(func_800B6A2C)
/* 1875D4 801D9584 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1875D8 801D9588 000FC080 */  sll        $t8, $t7, 2
/* 1875DC 801D958C 00380821 */  addu       $at, $at, $t8
/* 1875E0 801D9590 25CE6A2C */  addiu      $t6, $t6, %lo(func_800B6A2C)
/* 1875E4 801D9594 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 1875E8 801D9598 8C480000 */  lw         $t0, 0x0($v0)
/* 1875EC 801D959C 3C01800E */  lui        $at, %hi(D_800DF150)
/* 1875F0 801D95A0 3C19801E */  lui        $t9, %hi(func_801D98B8_ovl9)
/* 1875F4 801D95A4 00084880 */  sll        $t1, $t0, 2
/* 1875F8 801D95A8 00290821 */  addu       $at, $at, $t1
/* 1875FC 801D95AC 273998B8 */  addiu      $t9, $t9, %lo(func_801D98B8_ovl9)
/* 187600 801D95B0 AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 187604 801D95B4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 187608 801D95B8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 18760C 801D95BC 240A0001 */  addiu      $t2, $zero, 0x1
/* 187610 801D95C0 000B6080 */  sll        $t4, $t3, 2
/* 187614 801D95C4 002C0821 */  addu       $at, $at, $t4
/* 187618 801D95C8 AC2A8920 */  sw         $t2, %lo(D_800E8920)($at)
/* 18761C 801D95CC 8C4F0000 */  lw         $t7, 0x0($v0)
/* 187620 801D95D0 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 187624 801D95D4 24631B50 */  addiu      $v1, $v1, %lo(D_800E1B50)
/* 187628 801D95D8 000F7080 */  sll        $t6, $t7, 2
/* 18762C 801D95DC 006EC021 */  addu       $t8, $v1, $t6
/* 187630 801D95E0 8F080000 */  lw         $t0, 0x0($t8)
/* 187634 801D95E4 3C0D801D */  lui        $t5, %hi(D_801C834C)
/* 187638 801D95E8 25AD834C */  addiu      $t5, $t5, %lo(D_801C834C)
/* 18763C 801D95EC AD0D008C */  sw         $t5, 0x8C($t0)
/* 187640 801D95F0 8E090000 */  lw         $t1, 0x0($s0)
/* 187644 801D95F4 3C19801E */  lui        $t9, %hi(func_801D9698_ovl9)
/* 187648 801D95F8 27399698 */  addiu      $t9, $t9, %lo(func_801D9698_ovl9)
/* 18764C 801D95FC 8D2B0000 */  lw         $t3, 0x0($t1)
/* 187650 801D9600 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 187654 801D9604 3C068022 */  lui        $a2, %hi(D_8021BC6C_ovl9)
/* 187658 801D9608 000B5080 */  sll        $t2, $t3, 2
/* 18765C 801D960C 006A6021 */  addu       $t4, $v1, $t2
/* 187660 801D9610 8D8F0000 */  lw         $t7, 0x0($t4)
/* 187664 801D9614 24C6BC6C */  addiu      $a2, $a2, %lo(D_8021BC6C_ovl9)
/* 187668 801D9618 24050002 */  addiu      $a1, $zero, 0x2
/* 18766C 801D961C ADF9009C */  sw         $t9, 0x9C($t7)
/* 187670 801D9620 8E0E0000 */  lw         $t6, 0x0($s0)
/* 187674 801D9624 8DD80000 */  lw         $t8, 0x0($t6)
/* 187678 801D9628 00982021 */  addu       $a0, $a0, $t8
/* 18767C 801D962C 0C02911F */  jal        call_virtual_function
/* 187680 801D9630 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 187684 801D9634 3C128022 */  lui        $s2, %hi(D_8021BC74_ovl9)
/* 187688 801D9638 3C11800E */  lui        $s1, %hi(gEntityVtableIndexArray)
/* 18768C 801D963C 2631DC50 */  addiu      $s1, $s1, %lo(gEntityVtableIndexArray)
/* 187690 801D9640 2652BC74 */  addiu      $s2, $s2, %lo(D_8021BC74_ovl9)
/* 187694 801D9644 8E0D0000 */  lw         $t5, 0x0($s0)
.L801D9648_ovl9:
/* 187698 801D9648 24050006 */  addiu      $a1, $zero, 0x6
/* 18769C 801D964C 02403025 */  or         $a2, $s2, $zero
/* 1876A0 801D9650 8DA80000 */  lw         $t0, 0x0($t5)
/* 1876A4 801D9654 00084880 */  sll        $t1, $t0, 2
/* 1876A8 801D9658 02295821 */  addu       $t3, $s1, $t1
/* 1876AC 801D965C 0C02911F */  jal        call_virtual_function
/* 1876B0 801D9660 8D640000 */   lw        $a0, 0x0($t3)
/* 1876B4 801D9664 1000FFF8 */  b          .L801D9648_ovl9
/* 1876B8 801D9668 8E0D0000 */   lw        $t5, 0x0($s0)
/* 1876BC 801D966C 00000000 */  nop
/* 1876C0 801D9670 00000000 */  nop
/* 1876C4 801D9674 00000000 */  nop
glabel D_801D9678
/* 1876C8 801D9678 00000000 */  nop
/* 1876CC 801D967C 00000000 */  nop
/* 1876D0 801D9680 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1876D4 801D9684 8FB00018 */  lw         $s0, 0x18($sp)
/* 1876D8 801D9688 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1876DC 801D968C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1876E0 801D9690 03E00008 */  jr         $ra
/* 1876E4 801D9694 27BD0028 */   addiu     $sp, $sp, 0x28
