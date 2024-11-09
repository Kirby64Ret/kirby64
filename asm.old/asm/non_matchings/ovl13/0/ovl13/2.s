glabel func_801DB358_ovl13 # 2
/* 1F32D8 801DB358 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F32DC 801DB35C 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F32E0 801DB360 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F32E4 801DB364 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F32E8 801DB368 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F32EC 801DB36C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F32F0 801DB370 3C04800E */  lui         $a0, %hi(D_800DDFD0)
/* 1F32F4 801DB374 3C06801E */  lui         $a2, %hi(D_801E5AD8_ovl13)
/* 1F32F8 801DB378 000FC080 */  sll         $t8, $t7, 2
/* 1F32FC 801DB37C 00982021 */  addu        $a0, $a0, $t8
/* 1F3300 801DB380 8C84DFD0 */  lw          $a0, %lo(D_800DDFD0)($a0)
/* 1F3304 801DB384 24C65AD8 */  addiu       $a2, $a2, %lo(D_801E5AD8_ovl13)
/* 1F3308 801DB388 0C02911F */  jal         call_virtual_function
/* 1F330C 801DB38C 2405000F */   addiu      $a1, $zero, 0xF
/* 1F3310 801DB390 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F3314 801DB394 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F3318 801DB398 03E00008 */  jr          $ra
/* 1F331C 801DB39C 00000000 */   nop
.type func_801DB358_ovl13, @function

.size func_801DB358_ovl13, . - func_801DB358_ovl13
