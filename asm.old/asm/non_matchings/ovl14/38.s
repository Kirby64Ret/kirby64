glabel func_801DE218_ovl14 # 38
/* 200E08 801DE218 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 200E0C 801DE21C AFB00020 */  sw          $s0, 0x20($sp)
/* 200E10 801DE220 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 200E14 801DE224 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 200E18 801DE228 8E0F0000 */  lw          $t7, 0x0($s0)
/* 200E1C 801DE22C AFBF0024 */  sw          $ra, 0x24($sp)
/* 200E20 801DE230 AFA40028 */  sw          $a0, 0x28($sp)
/* 200E24 801DE234 8DF80000 */  lw          $t8, 0x0($t7)
/* 200E28 801DE238 3C0E801E */  lui         $t6, %hi(func_801DE484_ovl14)
/* 200E2C 801DE23C 3C01800E */  lui         $at, %hi(D_800DF150)
/* 200E30 801DE240 0018C880 */  sll         $t9, $t8, 2
/* 200E34 801DE244 00390821 */  addu        $at, $at, $t9
/* 200E38 801DE248 25CEE484 */  addiu       $t6, $t6, %lo(func_801DE484_ovl14)
/* 200E3C 801DE24C 0C02BCC5 */  jal         func_800AF314
/* 200E40 801DE250 AC2EF150 */   sw         $t6, %lo(D_800DF150)($at)
/* 200E44 801DE254 8E080000 */  lw          $t0, 0x0($s0)
/* 200E48 801DE258 3C0B800E */  lui         $t3, %hi(D_800DFF50)
/* 200E4C 801DE25C 3C010001 */  lui         $at, (0x1044E >> 16)
/* 200E50 801DE260 8D090000 */  lw          $t1, 0x0($t0)
/* 200E54 801DE264 3421044E */  ori         $at, $at, (0x1044E & 0xFFFF)
/* 200E58 801DE268 00095080 */  sll         $t2, $t1, 2
/* 200E5C 801DE26C 016A5821 */  addu        $t3, $t3, $t2
/* 200E60 801DE270 8D6BFF50 */  lw          $t3, %lo(D_800DFF50)($t3)
/* 200E64 801DE274 15610004 */  bne         $t3, $at, .L801DE288
/* 200E68 801DE278 00000000 */   nop
/* 200E6C 801DE27C 44806000 */  mtc1        $zero, $f12
/* 200E70 801DE280 0C077D60 */  jal         func_801DF580_ovl14
/* 200E74 801DE284 00000000 */   nop
.L801DE288:
/* 200E78 801DE288 3C01800D */  lui         $at, %hi(D_800D7154)
/* 200E7C 801DE28C 0C067C7B */  jal         func_8019F1EC_ovl7
/* 200E80 801DE290 AC207154 */   sw         $zero, %lo(D_800D7154)($at)
/* 200E84 801DE294 0C029D9E */  jal         play_sound
/* 200E88 801DE298 240401E6 */   addiu      $a0, $zero, 0x1E6
/* 200E8C 801DE29C 44802000 */  mtc1        $zero, $f4
/* 200E90 801DE2A0 00002025 */  move        $a0, $zero
/* 200E94 801DE2A4 24050002 */  addiu       $a1, $zero, 0x2
/* 200E98 801DE2A8 24060000 */  addiu       $a2, $zero, 0x0
/* 200E9C 801DE2AC 3C074320 */  lui         $a3, (0x43200000 >> 16)
/* 200EA0 801DE2B0 0C03F55C */  jal         func_800FD570
/* 200EA4 801DE2B4 E7A40010 */   swc1       $f4, 0x10($sp)
/* 200EA8 801DE2B8 0C03EE45 */  jal         func_800FB914
/* 200EAC 801DE2BC 24040004 */   addiu      $a0, $zero, 0x4
/* 200EB0 801DE2C0 24040003 */  addiu       $a0, $zero, 0x3
/* 200EB4 801DE2C4 0C02ED1A */  jal         func_800BB468
/* 200EB8 801DE2C8 00002825 */   move       $a1, $zero
/* 200EBC 801DE2CC 8E020000 */  lw          $v0, 0x0($s0)
/* 200EC0 801DE2D0 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 200EC4 801DE2D4 2404001E */  addiu       $a0, $zero, 0x1E
/* 200EC8 801DE2D8 8C4C0000 */  lw          $t4, 0x0($v0)
/* 200ECC 801DE2DC 000C6880 */  sll         $t5, $t4, 2
/* 200ED0 801DE2E0 002D0821 */  addu        $at, $at, $t5
/* 200ED4 801DE2E4 AC209E20 */  sw          $zero, %lo(D_800E9E20)($at)
/* 200ED8 801DE2E8 8C4F0000 */  lw          $t7, 0x0($v0)
/* 200EDC 801DE2EC 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200EE0 801DE2F0 000FC080 */  sll         $t8, $t7, 2
/* 200EE4 801DE2F4 00380821 */  addu        $at, $at, $t8
/* 200EE8 801DE2F8 0C002DAF */  jal         finish_current_thread
/* 200EEC 801DE2FC AC20A1A0 */   sw         $zero, %lo(D_800EA1A0)($at)
/* 200EF0 801DE300 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 200EF4 801DE304 44816000 */  mtc1        $at, $f12
/* 200EF8 801DE308 0C02BB30 */  jal         func_800AECC0
/* 200EFC 801DE30C 00000000 */   nop
/* 200F00 801DE310 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 200F04 801DE314 44816000 */  mtc1        $at, $f12
/* 200F08 801DE318 0C02BB48 */  jal         func_800AED20
/* 200F0C 801DE31C 00000000 */   nop
/* 200F10 801DE320 3C040001 */  lui         $a0, (0x10448 >> 16)
/* 200F14 801DE324 0C02A806 */  jal         func_800AA018
/* 200F18 801DE328 34840448 */   ori        $a0, $a0, (0x10448 & 0xFFFF)
/* 200F1C 801DE32C 8FAE0028 */  lw          $t6, 0x28($sp)
/* 200F20 801DE330 3C014120 */  lui         $at, (0x41200000 >> 16)
/* 200F24 801DE334 44810000 */  mtc1        $at, $f0
/* 200F28 801DE338 8DD9003C */  lw          $t9, 0x3C($t6)
/* 200F2C 801DE33C 3C050001 */  lui         $a1, (0x10447 >> 16)
/* 200F30 801DE340 3C070001 */  lui         $a3, (0x1006C >> 16)
/* 200F34 801DE344 8F240010 */  lw          $a0, 0x10($t9)
/* 200F38 801DE348 44060000 */  mfc1        $a2, $f0
/* 200F3C 801DE34C 34E7006C */  ori         $a3, $a3, (0x1006C & 0xFFFF)
/* 200F40 801DE350 34A50447 */  ori         $a1, $a1, (0x10447 & 0xFFFF)
/* 200F44 801DE354 0C02A982 */  jal         func_800AA608
/* 200F48 801DE358 E7A00010 */   swc1       $f0, 0x10($sp)
/* 200F4C 801DE35C 3C040001 */  lui         $a0, (0x10447 >> 16)
/* 200F50 801DE360 34840447 */  ori         $a0, $a0, (0x10447 & 0xFFFF)
/* 200F54 801DE364 0C02A7E6 */  jal         func_800A9F98
/* 200F58 801DE368 3C054120 */   lui        $a1, (0x41200000 >> 16)
/* 200F5C 801DE36C 8E090000 */  lw          $t1, 0x0($s0)
/* 200F60 801DE370 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200F64 801DE374 24080002 */  addiu       $t0, $zero, 0x2
/* 200F68 801DE378 8D2A0000 */  lw          $t2, 0x0($t1)
/* 200F6C 801DE37C 2404000A */  addiu       $a0, $zero, 0xA
/* 200F70 801DE380 000A5880 */  sll         $t3, $t2, 2
/* 200F74 801DE384 002B0821 */  addu        $at, $at, $t3
/* 200F78 801DE388 0C002DAF */  jal         finish_current_thread
/* 200F7C 801DE38C AC28A1A0 */   sw         $t0, %lo(D_800EA1A0)($at)
/* 200F80 801DE390 8E0D0000 */  lw          $t5, 0x0($s0)
/* 200F84 801DE394 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200F88 801DE398 240C0003 */  addiu       $t4, $zero, 0x3
/* 200F8C 801DE39C 8DAF0000 */  lw          $t7, 0x0($t5)
/* 200F90 801DE3A0 2404000A */  addiu       $a0, $zero, 0xA
/* 200F94 801DE3A4 000FC080 */  sll         $t8, $t7, 2
/* 200F98 801DE3A8 00380821 */  addu        $at, $at, $t8
/* 200F9C 801DE3AC 0C002DAF */  jal         finish_current_thread
/* 200FA0 801DE3B0 AC2CA1A0 */   sw         $t4, %lo(D_800EA1A0)($at)
/* 200FA4 801DE3B4 8E190000 */  lw          $t9, 0x0($s0)
/* 200FA8 801DE3B8 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200FAC 801DE3BC 240E0004 */  addiu       $t6, $zero, 0x4
/* 200FB0 801DE3C0 8F290000 */  lw          $t1, 0x0($t9)
/* 200FB4 801DE3C4 2404000A */  addiu       $a0, $zero, 0xA
/* 200FB8 801DE3C8 00095080 */  sll         $t2, $t1, 2
/* 200FBC 801DE3CC 002A0821 */  addu        $at, $at, $t2
/* 200FC0 801DE3D0 0C002DAF */  jal         finish_current_thread
/* 200FC4 801DE3D4 AC2EA1A0 */   sw         $t6, %lo(D_800EA1A0)($at)
/* 200FC8 801DE3D8 8E0B0000 */  lw          $t3, 0x0($s0)
/* 200FCC 801DE3DC 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200FD0 801DE3E0 24080005 */  addiu       $t0, $zero, 0x5
/* 200FD4 801DE3E4 8D6D0000 */  lw          $t5, 0x0($t3)
/* 200FD8 801DE3E8 2404000A */  addiu       $a0, $zero, 0xA
/* 200FDC 801DE3EC 000D7880 */  sll         $t7, $t5, 2
/* 200FE0 801DE3F0 002F0821 */  addu        $at, $at, $t7
/* 200FE4 801DE3F4 0C002DAF */  jal         finish_current_thread
/* 200FE8 801DE3F8 AC28A1A0 */   sw         $t0, %lo(D_800EA1A0)($at)
/* 200FEC 801DE3FC 8E180000 */  lw          $t8, 0x0($s0)
/* 200FF0 801DE400 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 200FF4 801DE404 240C0006 */  addiu       $t4, $zero, 0x6
/* 200FF8 801DE408 8F190000 */  lw          $t9, 0x0($t8)
/* 200FFC 801DE40C 2404000A */  addiu       $a0, $zero, 0xA
/* 201000 801DE410 00194880 */  sll         $t1, $t9, 2
/* 201004 801DE414 00290821 */  addu        $at, $at, $t1
/* 201008 801DE418 0C002DAF */  jal         finish_current_thread
/* 20100C 801DE41C AC2CA1A0 */   sw         $t4, %lo(D_800EA1A0)($at)
/* 201010 801DE420 8E0A0000 */  lw          $t2, 0x0($s0)
/* 201014 801DE424 3C01800F */  lui         $at, %hi(D_800EA1A0)
/* 201018 801DE428 240E0007 */  addiu       $t6, $zero, 0x7
/* 20101C 801DE42C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 201020 801DE430 24040003 */  addiu       $a0, $zero, 0x3
/* 201024 801DE434 000B6880 */  sll         $t5, $t3, 2
/* 201028 801DE438 002D0821 */  addu        $at, $at, $t5
/* 20102C 801DE43C 0C06F1E5 */  jal         func_801BC794_ovl7
/* 201030 801DE440 AC2EA1A0 */   sw         $t6, %lo(D_800EA1A0)($at)
/* 201034 801DE444 0C02BC9F */  jal         func_800AF27C
/* 201038 801DE448 00000000 */   nop
/* 20103C 801DE44C 0C02BD02 */  jal         func_800AF408
/* 201040 801DE450 00000000 */   nop
/* 201044 801DE454 0C03EE45 */  jal         func_800FB914
/* 201048 801DE458 00002025 */   move       $a0, $zero
/* 20104C 801DE45C 00002025 */  move        $a0, $zero
/* 201050 801DE460 0C02BEED */  jal         func_800AFBB4
/* 201054 801DE464 8E050000 */   lw         $a1, 0x0($s0)
/* 201058 801DE468 0C02BE85 */  jal         func_800AFA14
/* 20105C 801DE46C 00000000 */   nop
/* 201060 801DE470 8FBF0024 */  lw          $ra, 0x24($sp)
/* 201064 801DE474 8FB00020 */  lw          $s0, 0x20($sp)
/* 201068 801DE478 27BD0028 */  addiu       $sp, $sp, 0x28
/* 20106C 801DE47C 03E00008 */  jr          $ra
/* 201070 801DE480 00000000 */   nop
.type func_801DE218_ovl14, @function
.size func_801DE218_ovl14, . - func_801DE218_ovl14
