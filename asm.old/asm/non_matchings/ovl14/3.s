glabel func_801DB460_ovl14 # 3
/* 1FE050 801DB460 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FE054 801DB464 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FE058 801DB468 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FE05C 801DB46C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FE060 801DB470 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FE064 801DB474 8C4E0000 */  lw          $t6, 0x0($v0)
/* 1FE068 801DB478 3C06800F */  lui         $a2, %hi(D_800EA520)
/* 1FE06C 801DB47C 24C6A520 */  addiu       $a2, $a2, %lo(D_800EA520)
/* 1FE070 801DB480 000E7880 */  sll         $t7, $t6, 2
/* 1FE074 801DB484 00CF2821 */  addu        $a1, $a2, $t7
/* 1FE078 801DB488 8CB80000 */  lw          $t8, 0x0($a1)
/* 1FE07C 801DB48C 24090023 */  addiu       $t1, $zero, 0x23
/* 1FE080 801DB490 2404018D */  addiu       $a0, $zero, 0x18D
/* 1FE084 801DB494 2719FFFF */  addiu       $t9, $t8, -0x1
/* 1FE088 801DB498 ACB90000 */  sw          $t9, 0x0($a1)
/* 1FE08C 801DB49C 8C430000 */  lw          $v1, 0x0($v0)
/* 1FE090 801DB4A0 00031880 */  sll         $v1, $v1, 2
/* 1FE094 801DB4A4 00C32821 */  addu        $a1, $a2, $v1
/* 1FE098 801DB4A8 8CA80000 */  lw          $t0, 0x0($a1)
/* 1FE09C 801DB4AC 1D000007 */  bgtz        $t0, .L801DB4CC
/* 1FE0A0 801DB4B0 00000000 */   nop
/* 1FE0A4 801DB4B4 0C029D9E */  jal         play_sound
/* 1FE0A8 801DB4B8 ACA90000 */   sw         $t1, 0x0($a1)
/* 1FE0AC 801DB4BC 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FE0B0 801DB4C0 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FE0B4 801DB4C4 8C430000 */  lw          $v1, 0x0($v0)
/* 1FE0B8 801DB4C8 00031880 */  sll         $v1, $v1, 2
.L801DB4CC:
/* 1FE0BC 801DB4CC 3C05800F */  lui         $a1, %hi(D_800EC660)
/* 1FE0C0 801DB4D0 24A5C660 */  addiu       $a1, $a1, %lo(D_800EC660)
/* 1FE0C4 801DB4D4 00A35021 */  addu        $t2, $a1, $v1
/* 1FE0C8 801DB4D8 C5400000 */  lwc1        $f0, 0x0($t2)
/* 1FE0CC 801DB4DC 44802000 */  mtc1        $zero, $f4
/* 1FE0D0 801DB4E0 3C0B800E */  lui         $t3, %hi(D_800E7B20)
/* 1FE0D4 801DB4E4 256B7B20 */  addiu       $t3, $t3, %lo(D_800E7B20)
/* 1FE0D8 801DB4E8 46002032 */  c.eq.s      $f4, $f0
/* 1FE0DC 801DB4EC 006B2021 */  addu        $a0, $v1, $t3
/* 1FE0E0 801DB4F0 45010022 */  bc1t        .L801DB57C
/* 1FE0E4 801DB4F4 00000000 */   nop
/* 1FE0E8 801DB4F8 C4860000 */  lwc1        $f6, 0x0($a0)
/* 1FE0EC 801DB4FC 44805000 */  mtc1        $zero, $f10
/* 1FE0F0 801DB500 3C01800E */  lui         $at, %hi(D_800E7CE0)
/* 1FE0F4 801DB504 46003201 */  sub.s       $f8, $f6, $f0
/* 1FE0F8 801DB508 240F002D */  addiu       $t7, $zero, 0x2D
/* 1FE0FC 801DB50C 44808000 */  mtc1        $zero, $f16
/* 1FE100 801DB510 E4880000 */  swc1        $f8, 0x0($a0)
/* 1FE104 801DB514 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1FE108 801DB518 000C6880 */  sll         $t5, $t4, 2
/* 1FE10C 801DB51C 00AD7021 */  addu        $t6, $a1, $t5
/* 1FE110 801DB520 E5CA0000 */  swc1        $f10, 0x0($t6)
/* 1FE114 801DB524 8C580000 */  lw          $t8, 0x0($v0)
/* 1FE118 801DB528 0018C880 */  sll         $t9, $t8, 2
/* 1FE11C 801DB52C 00390821 */  addu        $at, $at, $t9
/* 1FE120 801DB530 AC2F7CE0 */  sw          $t7, %lo(D_800E7CE0)($at)
/* 1FE124 801DB534 3C01800D */  lui         $at, %hi(D_800D6E5C)
/* 1FE128 801DB538 C4326E5C */  lwc1        $f18, %lo(D_800D6E5C)($at)
/* 1FE12C 801DB53C 46128032 */  c.eq.s      $f16, $f18
/* 1FE130 801DB540 00000000 */  nop
/* 1FE134 801DB544 45010007 */  bc1t        .L801DB564
/* 1FE138 801DB548 00000000 */   nop
/* 1FE13C 801DB54C 8C480000 */  lw          $t0, 0x0($v0)
/* 1FE140 801DB550 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FE144 801DB554 00084880 */  sll         $t1, $t0, 2
/* 1FE148 801DB558 00290821 */  addu        $at, $at, $t1
/* 1FE14C 801DB55C 0C02F047 */  jal         func_800BC11C
/* 1FE150 801DB560 C42C7B20 */   lwc1       $f12, %lo(D_800E7B20)($at)
.L801DB564:
/* 1FE154 801DB564 0C029D9E */  jal         play_sound
/* 1FE158 801DB568 24040189 */   addiu      $a0, $zero, 0x189
/* 1FE15C 801DB56C 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FE160 801DB570 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FE164 801DB574 8C430000 */  lw          $v1, 0x0($v0)
/* 1FE168 801DB578 00031880 */  sll         $v1, $v1, 2
.L801DB57C:
/* 1FE16C 801DB57C 3C04800E */  lui         $a0, %hi(D_800E7CE0)
/* 1FE170 801DB580 00832021 */  addu        $a0, $a0, $v1
/* 1FE174 801DB584 8C847CE0 */  lw          $a0, %lo(D_800E7CE0)($a0)
/* 1FE178 801DB588 1080001F */  beqz        $a0, .L801DB608
/* 1FE17C 801DB58C 00000000 */   nop
/* 1FE180 801DB590 04810004 */  bgez        $a0, .L801DB5A4
/* 1FE184 801DB594 308A0003 */   andi       $t2, $a0, 0x3
/* 1FE188 801DB598 11400002 */  beqz        $t2, .L801DB5A4
/* 1FE18C 801DB59C 00000000 */   nop
/* 1FE190 801DB5A0 254AFFFC */  addiu       $t2, $t2, -0x4
.L801DB5A4:
/* 1FE194 801DB5A4 29410002 */  slti        $at, $t2, 0x2
/* 1FE198 801DB5A8 1420000A */  bnez        $at, .L801DB5D4
/* 1FE19C 801DB5AC 24050000 */   addiu      $a1, $zero, 0x0
/* 1FE1A0 801DB5B0 44843000 */  mtc1        $a0, $f6
/* 1FE1A4 801DB5B4 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 1FE1A8 801DB5B8 44812000 */  mtc1        $at, $f4
/* 1FE1AC 801DB5BC 46803220 */  cvt.s.w     $f8, $f6
/* 1FE1B0 801DB5C0 8FA40018 */  lw          $a0, 0x18($sp)
/* 1FE1B4 801DB5C4 4604403E */  c.le.s      $f8, $f4
/* 1FE1B8 801DB5C8 00000000 */  nop
/* 1FE1BC 801DB5CC 45000008 */  bc1f        .L801DB5F0
/* 1FE1C0 801DB5D0 00000000 */   nop
.L801DB5D4:
/* 1FE1C4 801DB5D4 0C077952 */  jal         func_801DE548_ovl14
/* 1FE1C8 801DB5D8 8FA40018 */   lw         $a0, 0x18($sp)
/* 1FE1CC 801DB5DC 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FE1D0 801DB5E0 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FE1D4 801DB5E4 8C430000 */  lw          $v1, 0x0($v0)
/* 1FE1D8 801DB5E8 10000007 */  b           .L801DB608
/* 1FE1DC 801DB5EC 00031880 */   sll        $v1, $v1, 2
.L801DB5F0:
/* 1FE1E0 801DB5F0 0C077952 */  jal         func_801DE548_ovl14
/* 1FE1E4 801DB5F4 3C053F80 */   lui        $a1, (0x3F800000 >> 16)
/* 1FE1E8 801DB5F8 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1FE1EC 801DB5FC 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 1FE1F0 801DB600 8C430000 */  lw          $v1, 0x0($v0)
/* 1FE1F4 801DB604 00031880 */  sll         $v1, $v1, 2
.L801DB608:
/* 1FE1F8 801DB608 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 1FE1FC 801DB60C 00230821 */  addu        $at, $at, $v1
/* 1FE200 801DB610 C4307B20 */  lwc1        $f16, %lo(D_800E7B20)($at)
/* 1FE204 801DB614 44805000 */  mtc1        $zero, $f10
/* 1FE208 801DB618 3C04800E */  lui         $a0, %hi(D_800DDFD0)
/* 1FE20C 801DB61C 3C06801E */  lui         $a2, %hi(D_801E2EC8_ovl14)
/* 1FE210 801DB620 460A803E */  c.le.s      $f16, $f10
/* 1FE214 801DB624 240B0006 */  addiu       $t3, $zero, 0x6
/* 1FE218 801DB628 24C62EC8 */  addiu       $a2, $a2, %lo(D_801E2EC8_ovl14)
/* 1FE21C 801DB62C 00832021 */  addu        $a0, $a0, $v1
/* 1FE220 801DB630 4500000E */  bc1f        .L801DB66C
/* 1FE224 801DB634 24050007 */   addiu      $a1, $zero, 0x7
/* 1FE228 801DB638 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FE22C 801DB63C 00230821 */  addu        $at, $at, $v1
/* 1FE230 801DB640 AC2BDC50 */  sw          $t3, %lo(gEntityVtableIndexArray)($at)
/* 1FE234 801DB644 8C4C0000 */  lw          $t4, 0x0($v0)
/* 1FE238 801DB648 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 1FE23C 801DB64C 3C05801E */  lui         $a1, %hi(func_801DB3B0_ovl14)
/* 1FE240 801DB650 000C6880 */  sll         $t5, $t4, 2
/* 1FE244 801DB654 008D2021 */  addu        $a0, $a0, $t5
/* 1FE248 801DB658 8C84E510 */  lw          $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1FE24C 801DB65C 0C02C7B2 */  jal         assign_new_process_entry
/* 1FE250 801DB660 24A5B3B0 */   addiu      $a1, $a1, %lo(func_801DB3B0_ovl14)
/* 1FE254 801DB664 10000004 */  b           .L801DB678
/* 1FE258 801DB668 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DB66C:
/* 1FE25C 801DB66C 0C02911F */  jal         call_virtual_function
/* 1FE260 801DB670 8C84DFD0 */   lw         $a0, %lo(D_800DDFD0)($a0)
/* 1FE264 801DB674 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DB678:
/* 1FE268 801DB678 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FE26C 801DB67C 03E00008 */  jr          $ra
/* 1FE270 801DB680 00000000 */   nop
.type func_801DB460_ovl14, @function
.size func_801DB460_ovl14, . - func_801DB460_ovl14
