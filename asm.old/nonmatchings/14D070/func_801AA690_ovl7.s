glabel func_801AA690_ovl7
/* 150700 801AA690 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 150704 801AA694 AFBF0014 */  sw         $ra, 0x14($sp)
/* 150708 801AA698 AFA40018 */  sw         $a0, 0x18($sp)
/* 15070C 801AA69C 8C850000 */  lw         $a1, 0x0($a0)
/* 150710 801AA6A0 2401FFFF */  addiu      $at, $zero, -0x1
/* 150714 801AA6A4 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* 150718 801AA6A8 10A10012 */  beq        $a1, $at, .L801AA6F4_ovl7
/* 15071C 801AA6AC 00000000 */   nop
/* 150720 801AA6B0 0C02A806 */  jal        func_800AA018
/* 150724 801AA6B4 00A02025 */   or        $a0, $a1, $zero
/* 150728 801AA6B8 8FAF0018 */  lw         $t7, 0x18($sp)
/* 15072C 801AA6BC 0C02BB30 */  jal        func_800AECC0
/* 150730 801AA6C0 C5EC0008 */   lwc1      $f12, 0x8($t7)
/* 150734 801AA6C4 8FB80018 */  lw         $t8, 0x18($sp)
/* 150738 801AA6C8 2401FFFF */  addiu      $at, $zero, -0x1
/* 15073C 801AA6CC 8F040004 */  lw         $a0, 0x4($t8)
/* 150740 801AA6D0 50810010 */  beql       $a0, $at, .L801AA714_ovl7
/* 150744 801AA6D4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 150748 801AA6D8 0C02A806 */  jal        func_800AA018
/* 15074C 801AA6DC 00000000 */   nop
/* 150750 801AA6E0 8FB90018 */  lw         $t9, 0x18($sp)
/* 150754 801AA6E4 0C02BB48 */  jal        func_800AED20
/* 150758 801AA6E8 C72C0008 */   lwc1      $f12, 0x8($t9)
/* 15075C 801AA6EC 10000009 */  b          .L801AA714_ovl7
/* 150760 801AA6F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L801AA6F4_ovl7:
/* 150764 801AA6F4 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* 150768 801AA6F8 3C04800E */  lui        $a0, %hi(D_800DFA10)
/* 15076C 801AA6FC 8D090000 */  lw         $t1, 0x0($t0)
/* 150770 801AA700 00095080 */  sll        $t2, $t1, 2
/* 150774 801AA704 008A2021 */  addu       $a0, $a0, $t2
/* 150778 801AA708 0C02BE95 */  jal        func_800AFA54
/* 15077C 801AA70C 8C84FA10 */   lw        $a0, %lo(D_800DFA10)($a0)
/* 150780 801AA710 8FBF0014 */  lw         $ra, 0x14($sp)
.L801AA714_ovl7:
/* 150784 801AA714 27BD0018 */  addiu      $sp, $sp, 0x18
/* 150788 801AA718 03E00008 */  jr         $ra
/* 15078C 801AA71C 00000000 */   nop
