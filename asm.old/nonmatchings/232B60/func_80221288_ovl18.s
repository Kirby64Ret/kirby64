glabel func_80221288_ovl19
/* 233C28 80221288 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 233C2C 8022128C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 233C30 80221290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 233C34 80221294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 233C38 80221298 AFA40018 */  sw         $a0, 0x18($sp)
/* 233C3C 8022129C 8C4F0000 */  lw         $t7, 0x0($v0)
/* 233C40 802212A0 3C0E800B */  lui        $t6, %hi(func_800B72AC)
.L802212A4_ovl19:
/* 233C44 802212A4 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 233C48 802212A8 000FC080 */  sll        $t8, $t7, 2
/* 233C4C 802212AC 00380821 */  addu       $at, $at, $t8
/* 233C50 802212B0 25CE72AC */  addiu      $t6, $t6, %lo(func_800B72AC)
/* 233C54 802212B4 AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
.L802212B8_ovl19:
/* 233C58 802212B8 8C590000 */  lw         $t9, 0x0($v0)
.L802212BC_ovl19:
/* 233C5C 802212BC 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 233C60 802212C0 3C068023 */  lui        $a2, %hi(D_8022ABA0_ovl18)
/* 233C64 802212C4 00992021 */  addu       $a0, $a0, $t9
/* 233C68 802212C8 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
/* 233C6C 802212CC 24C6ABA0 */  addiu      $a2, $a2, %lo(D_8022ABA0_ovl18)
/* 233C70 802212D0 0C02911F */  jal        call_virtual_function
/* 233C74 802212D4 24050001 */   addiu     $a1, $zero, 0x1
/* 233C78 802212D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 233C7C 802212DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 233C80 802212E0 03E00008 */  jr         $ra
/* 233C84 802212E4 00000000 */   nop
