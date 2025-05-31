glabel func_801A9618_ovl7
/* 14F688 801A9618 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 14F68C 801A961C AFBF0014 */  sw    $ra, 0x14($sp)
/* 14F690 801A9620 0C06655A */  jal   func_80199568_ovl7
/* 14F694 801A9624 AFA40018 */   sw    $a0, 0x18($sp)
/* 14F698 801A9628 0C066ED6 */  jal   func_8019BB58_ovl7
/* 14F69C 801A962C 00000000 */   nop   
/* 14F6A0 801A9630 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 14F6A4 801A9634 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 14F6A8 801A9638 3C0F800E */ lui $t7, %hi(D_800E76C0)
/* 14F6AC 801A963C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 14F6B0 801A9640 8C6E0000 */  lw    $t6, ($v1)
/* 14F6B4 801A9644 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 14F6B8 801A9648 3C09800E */ lui $t1, %hi(D_800E7730)
/* 14F6BC 801A964C 01EE7821 */  addu  $t7, $t7, $t6
/* 14F6C0 801A9650 91EF76C0 */ lbu $t7, %lo(D_800E76C0)($t7)
/* 14F6C4 801A9654 8FA40018 */  lw    $a0, 0x18($sp)
/* 14F6C8 801A9658 000FC600 */  sll   $t8, $t7, 0x18
/* 14F6CC 801A965C AC5800A8 */  sw    $t8, 0xa8($v0)
/* 14F6D0 801A9660 8C680000 */  lw    $t0, ($v1)
/* 14F6D4 801A9664 3C0F800E */ lui $t7, %hi(D_800E77A0)
/* 14F6D8 801A9668 01284821 */  addu  $t1, $t1, $t0
/* 14F6DC 801A966C 91297730 */ lbu $t1, %lo(D_800E7730)($t1)
/* 14F6E0 801A9670 00095400 */  sll   $t2, $t1, 0x10
/* 14F6E4 801A9674 030A5825 */  or    $t3, $t8, $t2
/* 14F6E8 801A9678 AC4B00A8 */  sw    $t3, 0xa8($v0)
/* 14F6EC 801A967C 8C6D0000 */  lw    $t5, ($v1)
/* 14F6F0 801A9680 3C0A800E */ lui $t2, %hi(D_800E7880)
/* 14F6F4 801A9684 000D7040 */  sll   $t6, $t5, 1
/* 14F6F8 801A9688 01EE7821 */  addu  $t7, $t7, $t6
/* 14F6FC 801A968C 95EF77A0 */ lhu $t7, %lo(D_800E77A0)($t7)
/* 14F700 801A9690 000FC200 */  sll   $t8, $t7, 8
/* 14F704 801A9694 01784025 */  or    $t0, $t3, $t8
/* 14F708 801A9698 AC4800A8 */  sw    $t0, 0xa8($v0)
/* 14F70C 801A969C 8C790000 */  lw    $t9, ($v1)
/* 14F710 801A96A0 01595021 */  addu  $t2, $t2, $t9
/* 14F714 801A96A4 914A7880 */ lbu $t2, %lo(D_800E7880)($t2)
/* 14F718 801A96A8 010A5825 */  or    $t3, $t0, $t2
/* 14F71C 801A96AC 0C06A337 */  jal   func_801A8CDC_ovl7
/* 14F720 801A96B0 AC4B00A8 */   sw    $t3, 0xa8($v0)
/* 14F724 801A96B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14F728 801A96B8 27BD0018 */  addiu $sp, $sp, 0x18
/* 14F72C 801A96BC 03E00008 */  jr    $ra
/* 14F730 801A96C0 00000000 */   nop   
.type func_801A9618_ovl7, @function
.size func_801A9618_ovl7, . - func_801A9618_ovl7
