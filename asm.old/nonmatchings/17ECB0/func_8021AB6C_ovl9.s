glabel func_8021AB6C_ovl9
/* 1C8BBC 8021AB6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C8BC0 8021AB70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C8BC4 8021AB74 0C066ED6 */  jal        func_8019BB58_ovl7
/* 1C8BC8 8021AB78 AFA40018 */   sw        $a0, 0x18($sp)
/* 1C8BCC 8021AB7C 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1C8BD0 8021AB80 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C8BD4 8021AB84 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 1C8BD8 8021AB88 3C068022 */  lui        $a2, %hi(D_8021CE1C_ovl9)
/* 1C8BDC 8021AB8C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1C8BE0 8021AB90 24C6CE1C */  addiu      $a2, $a2, %lo(D_8021CE1C_ovl9)
/* 1C8BE4 8021AB94 24050001 */  addiu      $a1, $zero, 0x1
/* 1C8BE8 8021AB98 008F2021 */  addu       $a0, $a0, $t7
/* 1C8BEC 8021AB9C 0C02911F */  jal        call_virtual_function
/* 1C8BF0 8021ABA0 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 1C8BF4 8021ABA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C8BF8 8021ABA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1C8BFC 8021ABAC 03E00008 */  jr         $ra
/* 1C8C00 8021ABB0 00000000 */   nop
