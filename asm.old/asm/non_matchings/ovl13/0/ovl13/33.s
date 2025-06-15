glabel func_801E15DC_ovl13 # 33
/* 1F955C 801E15DC 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F9560 801E15E0 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F9564 801E15E4 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F9568 801E15E8 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F956C 801E15EC AFA40018 */  sw          $a0, 0x18($sp)
/* 1F9570 801E15F0 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F9574 801E15F4 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F9578 801E15F8 000FC080 */  sll         $t8, $t7, 2
/* 1F957C 801E15FC 00581021 */  addu        $v0, $v0, $t8
/* 1F9580 801E1600 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F9584 801E1604 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F9588 801E1608 8C450010 */  lw          $a1, 0x10($v0)
/* 1F958C 801E160C 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F9590 801E1610 8C460018 */   lw         $a2, 0x18($v0)
/* 1F9594 801E1614 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F9598 801E1618 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F959C 801E161C 3C19800F */  lui         $t9, %hi(D_800E83E0)
/* 1F95A0 801E1620 24010001 */  addiu       $at, $zero, 0x1
/* 1F95A4 801E1624 8C430000 */  lw          $v1, 0x0($v0)
/* 1F95A8 801E1628 2408000E */  addiu       $t0, $zero, 0xE
/* 1F95AC 801E162C 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F95B0 801E1630 00031880 */  sll         $v1, $v1, 2
/* 1F95B4 801E1634 0323C821 */  addu        $t9, $t9, $v1
/* 1F95B8 801E1638 8F3983E0 */  lw          $t9, %lo(D_800E83E0)($t9)
/* 1F95BC 801E163C 1721000A */  bne         $t9, $at, L801E1668_ovl13
/* 1F95C0 801E1640 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F95C4 801E1644 00230821 */  addu        $at, $at, $v1
/* 1F95C8 801E1648 AC28DC50 */  sw          $t0, %lo(gEntityVtableIndexArray)($at)
/* 1F95CC 801E164C 8C490000 */  lw          $t1, 0x0($v0)
/* 1F95D0 801E1650 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F95D4 801E1654 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F95D8 801E1658 00095080 */  sll         $t2, $t1, 2
/* 1F95DC 801E165C 008A2021 */  addu        $a0, $a0, $t2
/* 1F95E0 801E1660 0C02C7B2 */  jal         assign_new_process_entry
/* 1F95E4 801E1664 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801E1668_ovl13
/* 1F95E8 801E1668 0C078E56 */  jal         func_801E3958_ovl13
/* 1F95EC 801E166C 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F95F0 801E1670 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F95F4 801E1674 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F95F8 801E1678 03E00008 */  jr          $ra
/* 1F95FC 801E167C 00000000 */   nop
.type func_801E15DC_ovl13, @function

.size func_801E15DC_ovl13, . - func_801E15DC_ovl13
