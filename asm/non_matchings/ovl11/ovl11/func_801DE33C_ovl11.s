glabel func_801DE33C_ovl11
/* 1E8BFC 801DE33C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1E8C00 801DE340 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1E8C04 801DE344 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1E8C08 801DE348 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1E8C0C 801DE34C AFB00018 */  sw    $s0, 0x18($sp)
/* 1E8C10 801DE350 AFA40020 */  sw    $a0, 0x20($sp)
/* 1E8C14 801DE354 8C430000 */  lw    $v1, ($v0)
/* 1E8C18 801DE358 3C01800F */  lui   $at, 0x800f
/* 1E8C1C 801DE35C 24040001 */  li    $a0, 1
/* 1E8C20 801DE360 00031880 */  sll   $v1, $v1, 2
/* 1E8C24 801DE364 00230821 */  addu  $at, $at, $v1
/* 1E8C28 801DE368 AC249C60 */  sw    $a0, -0x63a0($at)
/* 1E8C2C 801DE36C 8C4F0000 */  lw    $t7, ($v0)
/* 1E8C30 801DE370 3C01800F */  lui   $at, 0x800f
/* 1E8C34 801DE374 240E0004 */  li    $t6, 4
/* 1E8C38 801DE378 000FC080 */  sll   $t8, $t7, 2
/* 1E8C3C 801DE37C 00380821 */  addu  $at, $at, $t8
/* 1E8C40 801DE380 AC2E9FE0 */  sw    $t6, -0x6020($at)
/* 1E8C44 801DE384 8C480000 */  lw    $t0, ($v0)
/* 1E8C48 801DE388 3C0A800F */  lui   $t2, 0x800f
/* 1E8C4C 801DE38C 3C01800F */  lui   $at, 0x800f
/* 1E8C50 801DE390 00084880 */  sll   $t1, $t0, 2
/* 1E8C54 801DE394 01495021 */  addu  $t2, $t2, $t1
/* 1E8C58 801DE398 8D4AA520 */  lw    $t2, -0x5ae0($t2)
/* 1E8C5C 801DE39C 2419FFFF */  li    $t9, -1
/* 1E8C60 801DE3A0 3C10800E */  lui   $s0, 0x800e
/* 1E8C64 801DE3A4 000A5880 */  sll   $t3, $t2, 2
/* 1E8C68 801DE3A8 002B0821 */  addu  $at, $at, $t3
/* 1E8C6C 801DE3AC AC399560 */  sw    $t9, -0x6aa0($at)
/* 1E8C70 801DE3B0 8C4C0000 */  lw    $t4, ($v0)
/* 1E8C74 801DE3B4 3C01800E */  lui   $at, 0x800e
/* 1E8C78 801DE3B8 02038021 */  addu  $s0, $s0, $v1
/* 1E8C7C 801DE3BC 000C6880 */  sll   $t5, $t4, 2
/* 1E8C80 801DE3C0 002D0821 */  addu  $at, $at, $t5
/* 1E8C84 801DE3C4 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 1E8C88 801DE3C8 0C02CD48 */  jal   func_800B3520_ovl11
/* 1E8C8C 801DE3CC AC24DFD0 */   sw    $a0, -0x2030($at)
/* 1E8C90 801DE3D0 920F003C */  lbu   $t7, 0x3c($s0)
/* 1E8C94 801DE3D4 51E00007 */  beql  $t7, $zero, .L801DE3F4_ovl11
/* 1E8C98 801DE3D8 3C040001 */   lui   $a0, 1
.L801DE3DC_ovl11:
/* 1E8C9C 801DE3DC 0C002DAF */  jal   func_8000B6BC
/* 1E8CA0 801DE3E0 24040001 */   li    $a0, 1
/* 1E8CA4 801DE3E4 920E003C */  lbu   $t6, 0x3c($s0)
/* 1E8CA8 801DE3E8 15C0FFFC */  bnez  $t6, .L801DE3DC_ovl11
/* 1E8CAC 801DE3EC 00000000 */   nop   
/* 1E8CB0 801DE3F0 3C040001 */  lui   $a0, (0x00010411 >> 16) # lui $a0, 1
.L801DE3F4_ovl11:
/* 1E8CB4 801DE3F4 0C02A806 */  jal   func_800AA018_ovl11
/* 1E8CB8 801DE3F8 34840411 */   ori   $a0, (0x00010411 & 0xFFFF) # ori $a0, $a0, 0x411
/* 1E8CBC 801DE3FC 3C040001 */  lui   $a0, (0x00010410 >> 16) # lui $a0, 1
/* 1E8CC0 801DE400 0C02A806 */  jal   func_800AA018_ovl11
/* 1E8CC4 801DE404 34840410 */   ori   $a0, (0x00010410 & 0xFFFF) # ori $a0, $a0, 0x410
/* 1E8CC8 801DE408 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1E8CCC 801DE40C 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1E8CD0 801DE410 3C01800E */  lui   $at, 0x800e
/* 1E8CD4 801DE414 8F030000 */  lw    $v1, ($t8)
/* 1E8CD8 801DE418 00031880 */  sll   $v1, $v1, 2
/* 1E8CDC 801DE41C 00230821 */  addu  $at, $at, $v1
/* 1E8CE0 801DE420 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1E8CE4 801DE424 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 1E8CE8 801DE428 44813000 */  mtc1  $at, $f6
/* 1E8CEC 801DE42C 3C01800E */  lui   $at, 0x800e
/* 1E8CF0 801DE430 00230821 */  addu  $at, $at, $v1
/* 1E8CF4 801DE434 46062202 */  mul.s $f8, $f4, $f6
/* 1E8CF8 801DE438 0C02BE85 */  jal   func_800AFA14_ovl11
/* 1E8CFC 801DE43C E42864D0 */   swc1  $f8, 0x64d0($at)
/* 1E8D00 801DE440 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1E8D04 801DE444 8FB00018 */  lw    $s0, 0x18($sp)
/* 1E8D08 801DE448 27BD0020 */  addiu $sp, $sp, 0x20
/* 1E8D0C 801DE44C 03E00008 */  jr    $ra
/* 1E8D10 801DE450 00000000 */   nop   
