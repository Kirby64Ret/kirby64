glabel func_8015A9F8_ovl3
/* 0BB438 8015A9F8 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0BB43C 8015A9FC 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0BB440 8015AA00 90E30005 */  lbu   $v1, 5($a3)
/* 0BB444 8015AA04 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BB448 8015AA08 2401001D */  li    $at, 29
/* 0BB44C 8015AA0C 10610006 */  beq   $v1, $at, .L8015AA28_ovl3
/* 0BB450 8015AA10 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0BB454 8015AA14 2404001E */  li    $a0, 30
/* 0BB458 8015AA18 10830003 */  beq   $a0, $v1, .L8015AA28_ovl3
/* 0BB45C 8015AA1C 2405001C */   li    $a1, 28
/* 0BB460 8015AA20 54A30004 */  bnel  $a1, $v1, .L8015AA34_ovl3
/* 0BB464 8015AA24 90E2000B */   lbu   $v0, 0xb($a3)
.L8015AA28_ovl3:
/* 0BB468 8015AA28 10000094 */  b     .L8015AC7C_ovl3
/* 0BB46C 8015AA2C 00001025 */   move  $v0, $zero
/* 0BB470 8015AA30 90E2000B */  lbu   $v0, 0xb($a3)
.L8015AA34_ovl3:
/* 0BB474 8015AA34 24010001 */  li    $at, 1
/* 0BB478 8015AA38 10410009 */  beq   $v0, $at, .L8015AA60_ovl3
/* 0BB47C 8015AA3C 24010002 */   li    $at, 2
/* 0BB480 8015AA40 10410007 */  beq   $v0, $at, .L8015AA60_ovl3
/* 0BB484 8015AA44 24010003 */   li    $at, 3
/* 0BB488 8015AA48 10410020 */  beq   $v0, $at, .L8015AACC_ovl3
/* 0BB48C 8015AA4C 24010004 */   li    $at, 4
/* 0BB490 8015AA50 5041001F */  beql  $v0, $at, .L8015AAD0_ovl3
/* 0BB494 8015AA54 2401001A */   li    $at, 26
/* 0BB498 8015AA58 1000004C */  b     .L8015AB8C_ovl3
/* 0BB49C 8015AA5C 90F8000C */   lbu   $t8, 0xc($a3)
.L8015AA60_ovl3:
/* 0BB4A0 8015AA60 2401000A */  li    $at, 10
/* 0BB4A4 8015AA64 10610004 */  beq   $v1, $at, .L8015AA78_ovl3
/* 0BB4A8 8015AA68 240E001D */   li    $t6, 29
/* 0BB4AC 8015AA6C 2401000B */  li    $at, 11
/* 0BB4B0 8015AA70 54610005 */  bnel  $v1, $at, .L8015AA88_ovl3
/* 0BB4B4 8015AA74 8CEF00A0 */   lw    $t7, 0xa0($a3)
.L8015AA78_ovl3:
/* 0BB4B8 8015AA78 A0EE0005 */  sb    $t6, 5($a3)
/* 0BB4BC 8015AA7C 10000010 */  b     .L8015AAC0_ovl3
/* 0BB4C0 8015AA80 ACE4002C */   sw    $a0, 0x2c($a3)
/* 0BB4C4 8015AA84 8CEF00A0 */  lw    $t7, 0xa0($a3)
.L8015AA88_ovl3:
/* 0BB4C8 8015AA88 51E00009 */  beql  $t7, $zero, .L8015AAB0_ovl3
/* 0BB4CC 8015AA8C 24040046 */   li    $a0, 70
/* 0BB4D0 8015AA90 0C04783A */  jal   func_8011E0E8
/* 0BB4D4 8015AA94 00000000 */   nop   
/* 0BB4D8 8015AA98 0C047717 */  jal   func_8011DC5C
/* 0BB4DC 8015AA9C 00000000 */   nop   
/* 0BB4E0 8015AAA0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0BB4E4 8015AAA4 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0BB4E8 8015AAA8 ACE000A0 */  sw    $zero, 0xa0($a3)
/* 0BB4EC 8015AAAC 24040046 */  li    $a0, 70
.L8015AAB0_ovl3:
/* 0BB4F0 8015AAB0 0C048BDB */  jal   set_kirby_action_1
/* 0BB4F4 8015AAB4 2405001D */   li    $a1, 29
/* 0BB4F8 8015AAB8 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0BB4FC 8015AABC 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
.L8015AAC0_ovl3:
/* 0BB500 8015AAC0 ACE0015C */  sw    $zero, 0x15c($a3)
/* 0BB504 8015AAC4 1000006D */  b     .L8015AC7C_ovl3
/* 0BB508 8015AAC8 24020001 */   li    $v0, 1
.L8015AACC_ovl3:
/* 0BB50C 8015AACC 2401001A */  li    $at, 26
.L8015AAD0_ovl3:
/* 0BB510 8015AAD0 5061006A */  beql  $v1, $at, .L8015AC7C_ovl3
/* 0BB514 8015AAD4 00001025 */   move  $v0, $zero
/* 0BB518 8015AAD8 8CE200A0 */  lw    $v0, 0xa0($a3)
/* 0BB51C 8015AADC 24010012 */  li    $at, 18
/* 0BB520 8015AAE0 50400003 */  beql  $v0, $zero, .L8015AAF0_ovl3
/* 0BB524 8015AAE4 2401001B */   li    $at, 27
/* 0BB528 8015AAE8 14410063 */  bne   $v0, $at, .L8015AC78_ovl3
/* 0BB52C 8015AAEC 2401001B */   li    $at, 27
.L8015AAF0_ovl3:
/* 0BB530 8015AAF0 10610008 */  beq   $v1, $at, .L8015AB14_ovl3
/* 0BB534 8015AAF4 3C188005 */   lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0BB538 8015AAF8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0BB53C 8015AAFC 3C09800F */  lui   $t1, 0x800f
/* 0BB540 8015AB00 8F190000 */  lw    $t9, ($t8)
/* 0BB544 8015AB04 00194080 */  sll   $t0, $t9, 2
/* 0BB548 8015AB08 01284821 */  addu  $t1, $t1, $t0
/* 0BB54C 8015AB0C 8D298920 */  lw    $t1, -0x76e0($t1)
/* 0BB550 8015AB10 11200059 */  beqz  $t1, .L8015AC78_ovl3
.L8015AB14_ovl3:
/* 0BB554 8015AB14 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BB558 8015AB18 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BB55C 8015AB1C 44802000 */  mtc1  $zero, $f4
/* 0BB560 8015AB20 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0BB564 8015AB24 8C6A0000 */  lw    $t2, ($v1)
/* 0BB568 8015AB28 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0BB56C 8015AB2C 3C01800E */  lui   $at, 0x800e
/* 0BB570 8015AB30 000A5880 */  sll   $t3, $t2, 2
/* 0BB574 8015AB34 00CB6021 */  addu  $t4, $a2, $t3
/* 0BB578 8015AB38 E5840000 */  swc1  $f4, ($t4)
/* 0BB57C 8015AB3C 8C620000 */  lw    $v0, ($v1)
/* 0BB580 8015AB40 24040046 */  li    $a0, 70
/* 0BB584 8015AB44 2405001D */  li    $a1, 29
/* 0BB588 8015AB48 00021080 */  sll   $v0, $v0, 2
/* 0BB58C 8015AB4C 00C26821 */  addu  $t5, $a2, $v0
/* 0BB590 8015AB50 C5A60000 */  lwc1  $f6, ($t5)
/* 0BB594 8015AB54 00220821 */  addu  $at, $at, $v0
/* 0BB598 8015AB58 E4263210 */  swc1  $f6, 0x3210($at)
/* 0BB59C 8015AB5C 8C6E0000 */  lw    $t6, ($v1)
/* 0BB5A0 8015AB60 3C018019 */  lui   $at, %hi(D_80196FDC) # $at, 0x8019
/* 0BB5A4 8015AB64 C4286FDC */  lwc1  $f8, %lo(D_80196FDC)($at)
/* 0BB5A8 8015AB68 3C01800E */  lui   $at, 0x800e
/* 0BB5AC 8015AB6C 000E7880 */  sll   $t7, $t6, 2
/* 0BB5B0 8015AB70 002F0821 */  addu  $at, $at, $t7
/* 0BB5B4 8015AB74 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 0BB5B8 8015AB78 0C048BDB */  jal   set_kirby_action_1
/* 0BB5BC 8015AB7C ACE0015C */   sw    $zero, 0x15c($a3)
/* 0BB5C0 8015AB80 1000003E */  b     .L8015AC7C_ovl3
/* 0BB5C4 8015AB84 24020001 */   li    $v0, 1
/* 0BB5C8 8015AB88 90F8000C */  lbu   $t8, 0xc($a3)
.L8015AB8C_ovl3:
/* 0BB5CC 8015AB8C 5300003B */  beql  $t8, $zero, .L8015AC7C_ovl3
/* 0BB5D0 8015AB90 00001025 */   move  $v0, $zero
/* 0BB5D4 8015AB94 50A30039 */  beql  $a1, $v1, .L8015AC7C_ovl3
/* 0BB5D8 8015AB98 00001025 */   move  $v0, $zero
/* 0BB5DC 8015AB9C 8CE200A0 */  lw    $v0, 0xa0($a3)
/* 0BB5E0 8015ABA0 24010012 */  li    $at, 18
/* 0BB5E4 8015ABA4 50400006 */  beql  $v0, $zero, .L8015ABC0_ovl3
/* 0BB5E8 8015ABA8 2401001A */   li    $at, 26
/* 0BB5EC 8015ABAC 50410004 */  beql  $v0, $at, .L8015ABC0_ovl3
/* 0BB5F0 8015ABB0 2401001A */   li    $at, 26
/* 0BB5F4 8015ABB4 10000031 */  b     .L8015AC7C_ovl3
/* 0BB5F8 8015ABB8 00001025 */   move  $v0, $zero
/* 0BB5FC 8015ABBC 2401001A */  li    $at, 26
.L8015ABC0_ovl3:
/* 0BB600 8015ABC0 5061002E */  beql  $v1, $at, .L8015AC7C_ovl3
/* 0BB604 8015ABC4 00001025 */   move  $v0, $zero
/* 0BB608 8015ABC8 0C03E158 */  jal   func_800F8560
/* 0BB60C 8015ABCC AFA0001C */   sw    $zero, 0x1c($sp)
/* 0BB610 8015ABD0 3C078013 */  lui   $a3, %hi(gKirbyState) # $a3, 0x8013
/* 0BB614 8015ABD4 24010002 */  li    $at, 2
/* 0BB618 8015ABD8 24E7E7C0 */  addiu $a3, %lo(gKirbyState) # addiu $a3, $a3, -0x1840
/* 0BB61C 8015ABDC 14410003 */  bne   $v0, $at, .L8015ABEC_ovl3
/* 0BB620 8015ABE0 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0BB624 8015ABE4 1000001E */  b     .L8015AC60_ovl3
/* 0BB628 8015ABE8 24040001 */   li    $a0, 1
.L8015ABEC_ovl3:
/* 0BB62C 8015ABEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0BB630 8015ABF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0BB634 8015ABF4 3C19800F */  lui   $t9, 0x800f
/* 0BB638 8015ABF8 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 0BB63C 8015ABFC 8C620000 */  lw    $v0, ($v1)
/* 0BB640 8015AC00 00021080 */  sll   $v0, $v0, 2
/* 0BB644 8015AC04 0322C821 */  addu  $t9, $t9, $v0
/* 0BB648 8015AC08 8F398920 */  lw    $t9, -0x76e0($t9)
/* 0BB64C 8015AC0C 13200014 */  beqz  $t9, .L8015AC60_ovl3
/* 0BB650 8015AC10 00000000 */   nop   
/* 0BB654 8015AC14 44805000 */  mtc1  $zero, $f10
/* 0BB658 8015AC18 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 0BB65C 8015AC1C 00C24021 */  addu  $t0, $a2, $v0
/* 0BB660 8015AC20 E50A0000 */  swc1  $f10, ($t0)
/* 0BB664 8015AC24 8C620000 */  lw    $v0, ($v1)
/* 0BB668 8015AC28 3C01800E */  lui   $at, 0x800e
/* 0BB66C 8015AC2C 24040001 */  li    $a0, 1
/* 0BB670 8015AC30 00021080 */  sll   $v0, $v0, 2
/* 0BB674 8015AC34 00C24821 */  addu  $t1, $a2, $v0
/* 0BB678 8015AC38 C5300000 */  lwc1  $f16, ($t1)
/* 0BB67C 8015AC3C 00220821 */  addu  $at, $at, $v0
/* 0BB680 8015AC40 E4303210 */  swc1  $f16, 0x3210($at)
/* 0BB684 8015AC44 8C6A0000 */  lw    $t2, ($v1)
/* 0BB688 8015AC48 3C018019 */  lui   $at, %hi(D_80196FE0) # $at, 0x8019
/* 0BB68C 8015AC4C C4326FE0 */  lwc1  $f18, %lo(D_80196FE0)($at)
/* 0BB690 8015AC50 3C01800E */  lui   $at, 0x800e
/* 0BB694 8015AC54 000A5880 */  sll   $t3, $t2, 2
/* 0BB698 8015AC58 002B0821 */  addu  $at, $at, $t3
/* 0BB69C 8015AC5C E4323C90 */  swc1  $f18, 0x3c90($at)
.L8015AC60_ovl3:
/* 0BB6A0 8015AC60 10800005 */  beqz  $a0, .L8015AC78_ovl3
/* 0BB6A4 8015AC64 2405001C */   li    $a1, 28
/* 0BB6A8 8015AC68 0C048BDB */  jal   set_kirby_action_1
/* 0BB6AC 8015AC6C 90E4000C */   lbu   $a0, 0xc($a3)
/* 0BB6B0 8015AC70 10000002 */  b     .L8015AC7C_ovl3
/* 0BB6B4 8015AC74 24020001 */   li    $v0, 1
.L8015AC78_ovl3:
/* 0BB6B8 8015AC78 00001025 */  move  $v0, $zero
.L8015AC7C_ovl3:
/* 0BB6BC 8015AC7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BB6C0 8015AC80 27BD0020 */  addiu $sp, $sp, 0x20
/* 0BB6C4 8015AC84 03E00008 */  jr    $ra
/* 0BB6C8 8015AC88 00000000 */   nop   
.type func_8015A9F8_ovl3, @function

/* 0BB6CC 8015AC8C 00000000 */  nop   
.type func_8015A9F8_ovl3, @function
.size func_8015A9F8_ovl3, . - func_8015A9F8_ovl3
