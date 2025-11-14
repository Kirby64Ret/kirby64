glabel func_801E1ED8_ovl13 # 37
/* 1F9E58 801E1ED8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F9E5C 801E1EDC 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F9E60 801E1EE0 AFA40000 */  sw          $a0, 0x0($sp)
/* 1F9E64 801E1EE4 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F9E68 801E1EE8 8C4E0000 */  lw          $t6, 0x0($v0)
/* 1F9E6C 801E1EEC 3C08800E */  lui         $t0, %hi(D_800E64D0)
/* 1F9E70 801E1EF0 250864D0 */  addiu       $t0, $t0, %lo(D_800E64D0)
/* 1F9E74 801E1EF4 000E7880 */  sll         $t7, $t6, 2
/* 1F9E78 801E1EF8 002F0821 */  addu        $at, $at, $t7
/* 1F9E7C 801E1EFC AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F9E80 801E1F00 8C580000 */  lw          $t8, 0x0($v0)
/* 1F9E84 801E1F04 0018C880 */  sll         $t9, $t8, 2
/* 1F9E88 801E1F08 03281821 */  addu        $v1, $t9, $t0
/* 1F9E8C 801E1F0C C4640000 */  lwc1        $f4, 0x0($v1)
/* 1F9E90 801E1F10 46002187 */  neg.s       $f6, $f4
/* 1F9E94 801E1F14 03E00008 */  jr          $ra
/* 1F9E98 801E1F18 E4660000 */   swc1       $f6, 0x0($v1)
.type func_801E1ED8_ovl13, @function

.size func_801E1ED8_ovl13, . - func_801E1ED8_ovl13
