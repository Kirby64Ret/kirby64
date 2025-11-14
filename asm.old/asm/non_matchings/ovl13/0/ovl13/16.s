glabel func_801DD550_ovl13 # 16
/* 1F54D0 801DD550 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F54D4 801DD554 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F54D8 801DD558 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F54DC 801DD55C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F54E0 801DD560 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F54E4 801DD564 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F54E8 801DD568 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F54EC 801DD56C 000FC080 */  sll         $t8, $t7, 2
/* 1F54F0 801DD570 00380821 */  addu        $at, $at, $t8
/* 1F54F4 801DD574 0C06835D */  jal         func_801A0D74_ovl7
/* 1F54F8 801DD578 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F54FC 801DD57C 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F5500 801DD580 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F5504 801DD584 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F5508 801DD588 8F280000 */  lw          $t0, 0x0($t9)
/* 1F550C 801DD58C 00084880 */  sll         $t1, $t0, 2
/* 1F5510 801DD590 00491021 */  addu        $v0, $v0, $t1
/* 1F5514 801DD594 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F5518 801DD598 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F551C 801DD59C 8C450010 */  lw          $a1, 0x10($v0)
/* 1F5520 801DD5A0 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F5524 801DD5A4 8C460018 */   lw         $a2, 0x18($v0)
/* 1F5528 801DD5A8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F552C 801DD5AC 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F5530 801DD5B0 3C0A800F */  lui         $t2, %hi(D_800E83E0)
/* 1F5534 801DD5B4 24010001 */  addiu       $at, $zero, 0x1
/* 1F5538 801DD5B8 8C430000 */  lw          $v1, 0x0($v0)
/* 1F553C 801DD5BC 240B0007 */  addiu       $t3, $zero, 0x7
/* 1F5540 801DD5C0 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F5544 801DD5C4 00031880 */  sll         $v1, $v1, 2
/* 1F5548 801DD5C8 01435021 */  addu        $t2, $t2, $v1
/* 1F554C 801DD5CC 8D4A83E0 */  lw          $t2, %lo(D_800E83E0)($t2)
/* 1F5550 801DD5D0 1541000A */  bne         $t2, $at, L801DD5FC_ovl13
/* 1F5554 801DD5D4 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F5558 801DD5D8 00230821 */  addu        $at, $at, $v1
/* 1F555C 801DD5DC AC2BDC50 */  sw          $t3, %lo(gEntityVtableIndexArray)($at)
/* 1F5560 801DD5E0 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1F5564 801DD5E4 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F5568 801DD5E8 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F556C 801DD5EC 000C6880 */  sll         $t5, $t4, 2
/* 1F5570 801DD5F0 008D2021 */  addu        $a0, $a0, $t5
/* 1F5574 801DD5F4 0C02C7B2 */  jal         assign_new_process_entry
/* 1F5578 801DD5F8 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DD5FC_ovl13
/* 1F557C 801DD5FC 0C078E56 */  jal         func_801E3958_ovl13
/* 1F5580 801DD600 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F5584 801DD604 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F5588 801DD608 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F558C 801DD60C 03E00008 */  jr          $ra
/* 1F5590 801DD610 00000000 */   nop
.type func_801DD550_ovl13, @function

.size func_801DD550_ovl13, . - func_801DD550_ovl13
