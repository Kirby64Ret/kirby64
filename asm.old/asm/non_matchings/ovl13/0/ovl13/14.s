glabel func_801DD3A8_ovl13 # 14
/* 1F5328 801DD3A8 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 1F532C 801DD3AC 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 1F5330 801DD3B0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5334 801DD3B4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5338 801DD3B8 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F533C 801DD3BC 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F5340 801DD3C0 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F5344 801DD3C4 000FC080 */  sll         $t8, $t7, 2
/* 1F5348 801DD3C8 00380821 */  addu        $at, $at, $t8
/* 1F534C 801DD3CC 0C06835D */  jal         func_801A0D74_ovl7
/* 1F5350 801DD3D0 AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1F5354 801DD3D4 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F5358 801DD3D8 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F535C 801DD3DC 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1F5360 801DD3E0 8F280000 */  lw          $t0, 0x0($t9)
/* 1F5364 801DD3E4 00084880 */  sll         $t1, $t0, 2
/* 1F5368 801DD3E8 00491021 */  addu        $v0, $v0, $t1
/* 1F536C 801DD3EC 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1F5370 801DD3F0 8C44005C */  lw          $a0, 0x5C($v0)
/* 1F5374 801DD3F4 8C450010 */  lw          $a1, 0x10($v0)
/* 1F5378 801DD3F8 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1F537C 801DD3FC 8C460018 */   lw         $a2, 0x18($v0)
/* 1F5380 801DD400 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F5384 801DD404 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1F5388 801DD408 3C0A800F */  lui         $t2, %hi(D_800E83E0)
/* 1F538C 801DD40C 24010001 */  addiu       $at, $zero, 0x1
/* 1F5390 801DD410 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5394 801DD414 240B0007 */  addiu       $t3, $zero, 0x7
/* 1F5398 801DD418 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1F539C 801DD41C 00031880 */  sll         $v1, $v1, 2
/* 1F53A0 801DD420 01435021 */  addu        $t2, $t2, $v1
/* 1F53A4 801DD424 8D4A83E0 */  lw          $t2, %lo(D_800E83E0)($t2)
/* 1F53A8 801DD428 1541000A */  bne         $t2, $at, L801DD454_ovl13
/* 1F53AC 801DD42C 3C01800E */   lui        $at, %hi(gEntityVtableIndexArray)
/* 1F53B0 801DD430 00230821 */  addu        $at, $at, $v1
/* 1F53B4 801DD434 AC2BDC50 */  sw          $t3, %lo(gEntityVtableIndexArray)($at)
/* 1F53B8 801DD438 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1F53BC 801DD43C 3C05801E */  lui         $a1, %hi(func_801DB2D8_ovl13)
/* 1F53C0 801DD440 24A5B2D8 */  addiu       $a1, $a1, %lo(func_801DB2D8_ovl13)
/* 1F53C4 801DD444 000C6880 */  sll         $t5, $t4, 2
/* 1F53C8 801DD448 008D2021 */  addu        $a0, $a0, $t5
/* 1F53CC 801DD44C 0C02C7B2 */  jal         assign_new_process_entry
/* 1F53D0 801DD450 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
glabel L801DD454_ovl13
/* 1F53D4 801DD454 0C078E56 */  jal         func_801E3958_ovl13
/* 1F53D8 801DD458 8FA40018 */   lw         $a0, 0x18($sp)
/* 1F53DC 801DD45C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F53E0 801DD460 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F53E4 801DD464 03E00008 */  jr          $ra
/* 1F53E8 801DD468 00000000 */   nop
.type func_801DD3A8_ovl13, @function

.size func_801DD3A8_ovl13, . - func_801DD3A8_ovl13
