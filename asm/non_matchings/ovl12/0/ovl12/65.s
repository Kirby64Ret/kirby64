glabel func_801DE16C_ovl12 # 65
/* 002F6C 801DE16C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 002F70 801DE170 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 002F74 801DE174 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 002F78 801DE178 AFBF0014 */  sw          $ra, 0x14($sp)
/* 002F7C 801DE17C AFA40018 */  sw          $a0, 0x18($sp)
/* 002F80 801DE180 8C4F0000 */  lw          $t7, 0x0($v0)
/* 002F84 801DE184 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 002F88 801DE188 240E0004 */  addiu       $t6, $zero, 0x4
/* 002F8C 801DE18C 000FC080 */  sll         $t8, $t7, 2
/* 002F90 801DE190 00380821 */  addu        $at, $at, $t8
/* 002F94 801DE194 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 002F98 801DE198 8C480000 */  lw          $t0, 0x0($v0)
/* 002F9C 801DE19C 3C01800F */  lui         $at, %hi(D_800E9720)
/* 002FA0 801DE1A0 241900B4 */  addiu       $t9, $zero, 0xB4
/* 002FA4 801DE1A4 00084880 */  sll         $t1, $t0, 2
/* 002FA8 801DE1A8 00290821 */  addu        $at, $at, $t1
/* 002FAC 801DE1AC AC399720 */  sw          $t9, %lo(D_800E9720)($at)
/* 002FB0 801DE1B0 8C4A0000 */  lw          $t2, 0x0($v0)
/* 002FB4 801DE1B4 3C0140C0 */  lui         $at, (0x40C00000 >> 16)
/* 002FB8 801DE1B8 44812000 */  mtc1        $at, $f4
/* 002FBC 801DE1BC 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 002FC0 801DE1C0 000A5880 */  sll         $t3, $t2, 2
/* 002FC4 801DE1C4 002B0821 */  addu        $at, $at, $t3
/* 002FC8 801DE1C8 E424A6E0 */  swc1        $f4, %lo(D_800EA6E0)($at)
/* 002FCC 801DE1CC 8C4C0000 */  lw          $t4, 0x0($v0)
/* 002FD0 801DE1D0 3C01BE80 */  lui         $at, (0xBE800000 >> 16)
/* 002FD4 801DE1D4 44813000 */  mtc1        $at, $f6
/* 002FD8 801DE1D8 3C01800F */  lui         $at, %hi(D_800EA8A0)
/* 002FDC 801DE1DC 000C6880 */  sll         $t5, $t4, 2
/* 002FE0 801DE1E0 002D0821 */  addu        $at, $at, $t5
/* 002FE4 801DE1E4 0C02BE85 */  jal         func_800AFA14
/* 002FE8 801DE1E8 E426A8A0 */   swc1       $f6, %lo(D_800EA8A0)($at)
/* 002FEC 801DE1EC 8FBF0014 */  lw          $ra, 0x14($sp)
/* 002FF0 801DE1F0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 002FF4 801DE1F4 03E00008 */  jr          $ra
/* 002FF8 801DE1F8 00000000 */   nop