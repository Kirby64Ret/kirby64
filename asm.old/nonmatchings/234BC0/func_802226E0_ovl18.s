glabel func_802226E0_ovl18
/* 235080 802226E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 235084 802226E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 235088 802226E8 0C06835D */  jal        func_801A0D74_ovl7
/* 23508C 802226EC 00000000 */   nop
/* 235090 802226F0 1440000B */  bnez       $v0, .L80222720_ovl18
/* 235094 802226F4 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 235098 802226F8 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
glabel func_802226FC_ovl19
/* 23509C 802226FC 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 2350A0 80222700 3C068023 */  lui        $a2, %hi(D_8022ABE4_ovl18)
/* 2350A4 80222704 8DCF0000 */  lw         $t7, 0x0($t6)
/* 2350A8 80222708 24C6ABE4 */  addiu      $a2, $a2, %lo(D_8022ABE4_ovl18)
/* 2350AC 8022270C 24050001 */  addiu      $a1, $zero, 0x1
/* 2350B0 80222710 000FC080 */  sll        $t8, $t7, 2
/* 2350B4 80222714 00982021 */  addu       $a0, $a0, $t8
/* 2350B8 80222718 0C02911F */  jal        call_virtual_function
/* 2350BC 8022271C 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
.L80222720_ovl18:
/* 2350C0 80222720 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 2350C4 80222724 24040001 */   addiu     $a0, $zero, 0x1
/* 2350C8 80222728 0C066CB0 */  jal        func_8019B2C0_ovl7
/* 2350CC 8022272C 24040002 */   addiu     $a0, $zero, 0x2
/* 2350D0 80222730 0C087D73 */  jal        func_8021F5CC_ovl19
/* 2350D4 80222734 00000000 */   nop
/* 2350D8 80222738 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2350DC 8022273C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2350E0 80222740 03E00008 */  jr         $ra
/* 2350E4 80222744 00000000 */   nop
