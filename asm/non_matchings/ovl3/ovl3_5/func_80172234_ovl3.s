glabel func_80172234_ovl3
/* 0D2C74 80172234 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0D2C78 80172238 3C0F8019 */  lui   $t7, %hi(D_80196C94) # $t7, 0x8019
/* 0D2C7C 8017223C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D2C80 80172240 AFA40040 */  sw    $a0, 0x40($sp)
/* 0D2C84 80172244 25EF6C94 */  addiu $t7, %lo(D_80196C94) # addiu $t7, $t7, 0x6c94
/* 0D2C88 80172248 99F90002 */  lwr   $t9, 2($t7)
/* 0D2C8C 8017224C 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2C90 80172250 27AE003C */  addiu $t6, $sp, 0x3c
/* 0D2C94 80172254 24A5E7C0 */  addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
/* 0D2C98 80172258 B9D90002 */  swr   $t9, 2($t6)
/* 0D2C9C 8017225C 90A80017 */  lbu   $t0, 0x17($a1)
/* 0D2CA0 80172260 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0D2CA4 80172264 550000ED */  bnezl $t0, .L8017261C_ovl3
/* 0D2CA8 80172268 90A2000B */   lbu   $v0, 0xb($a1)
/* 0D2CAC 8017226C 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0D2CB0 80172270 3C03800F */  lui   $v1, 0x800f
/* 0D2CB4 80172274 24010006 */  li    $at, 6
/* 0D2CB8 80172278 8D220000 */  lw    $v0, ($t1)
/* 0D2CBC 8017227C 3C0A800F */  lui   $t2, 0x800f
/* 0D2CC0 80172280 00021080 */  sll   $v0, $v0, 2
/* 0D2CC4 80172284 00621821 */  addu  $v1, $v1, $v0
/* 0D2CC8 80172288 8C6398E0 */  lw    $v1, -0x6720($v1)
/* 0D2CCC 8017228C 01425021 */  addu  $t2, $t2, $v0
/* 0D2CD0 80172290 10610003 */  beq   $v1, $at, .L801722A0_ovl3
/* 0D2CD4 80172294 24010005 */   li    $at, 5
/* 0D2CD8 80172298 1461000E */  bne   $v1, $at, .L801722D4_ovl3
/* 0D2CDC 8017229C 00000000 */   nop   
.L801722A0_ovl3:
/* 0D2CE0 801722A0 8D4A8920 */  lw    $t2, -0x76e0($t2)
/* 0D2CE4 801722A4 11400006 */  beqz  $t2, .L801722C0_ovl3
/* 0D2CE8 801722A8 00000000 */   nop   
/* 0D2CEC 801722AC 0C054E61 */  jal   func_80153984_ovl3
/* 0D2CF0 801722B0 00000000 */   nop   
/* 0D2CF4 801722B4 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2CF8 801722B8 1000000A */  b     .L801722E4_ovl3
/* 0D2CFC 801722BC 24A5E7C0 */   addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
.L801722C0_ovl3:
/* 0D2D00 801722C0 0C054EE6 */  jal   func_80153B98_ovl3
/* 0D2D04 801722C4 00000000 */   nop   
/* 0D2D08 801722C8 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2D0C 801722CC 10000005 */  b     .L801722E4_ovl3
/* 0D2D10 801722D0 24A5E7C0 */   addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
.L801722D4_ovl3:
/* 0D2D14 801722D4 0C054EE6 */  jal   func_80153B98_ovl3
/* 0D2D18 801722D8 00000000 */   nop   
/* 0D2D1C 801722DC 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2D20 801722E0 24A5E7C0 */  addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
.L801722E4_ovl3:
/* 0D2D24 801722E4 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0D2D28 801722E8 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0D2D2C 801722EC 3C0E800F */  lui   $t6, 0x800f
/* 0D2D30 801722F0 8D6C0000 */  lw    $t4, ($t3)
/* 0D2D34 801722F4 000C6880 */  sll   $t5, $t4, 2
/* 0D2D38 801722F8 01CD7021 */  addu  $t6, $t6, $t5
/* 0D2D3C 801722FC 8DCE98E0 */  lw    $t6, -0x6720($t6)
/* 0D2D40 80172300 51C00132 */  beql  $t6, $zero, .L801727CC_ovl3
/* 0D2D44 80172304 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D2D48 80172308 8CAF003C */  lw    $t7, 0x3c($a1)
/* 0D2D4C 8017230C 15E000A1 */  bnez  $t7, .L80172594_ovl3
/* 0D2D50 80172310 00000000 */   nop   
/* 0D2D54 80172314 0C0547A5 */  jal   func_80151E94_ovl3
/* 0D2D58 80172318 27A4003C */   addiu $a0, $sp, 0x3c
/* 0D2D5C 8017231C 1040009D */  beqz  $v0, .L80172594_ovl3
/* 0D2D60 80172320 00000000 */   nop   
/* 0D2D64 80172324 0C0473D6 */  jal   func_8011CF58
/* 0D2D68 80172328 00000000 */   nop   
/* 0D2D6C 8017232C 0C04788D */  jal   func_8011E234
/* 0D2D70 80172330 00000000 */   nop   
/* 0D2D74 80172334 0C047717 */  jal   func_8011DC5C
/* 0D2D78 80172338 00000000 */   nop   
/* 0D2D7C 8017233C 0C04783A */  jal   func_8011E0E8
/* 0D2D80 80172340 00000000 */   nop   
/* 0D2D84 80172344 3C18800D */  lui   $t8, %hi(D_800D6FEA) # $t8, 0x800d
/* 0D2D88 80172348 97186FEA */  lhu   $t8, %lo(D_800D6FEA)($t8)
/* 0D2D8C 8017234C 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2D90 80172350 24A5E7C0 */  addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
/* 0D2D94 80172354 33194000 */  andi  $t9, $t8, 0x4000
/* 0D2D98 80172358 13200017 */  beqz  $t9, .L801723B8_ovl3
/* 0D2D9C 8017235C 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D2DA0 80172360 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D2DA4 80172364 44802000 */  mtc1  $zero, $f4
/* 0D2DA8 80172368 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 0D2DAC 8017236C 8C680000 */  lw    $t0, ($v1)
/* 0D2DB0 80172370 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 0D2DB4 80172374 3C01800E */  lui   $at, 0x800e
/* 0D2DB8 80172378 00084880 */  sll   $t1, $t0, 2
/* 0D2DBC 8017237C 00895021 */  addu  $t2, $a0, $t1
/* 0D2DC0 80172380 E5440000 */  swc1  $f4, ($t2)
/* 0D2DC4 80172384 8C620000 */  lw    $v0, ($v1)
/* 0D2DC8 80172388 00021080 */  sll   $v0, $v0, 2
/* 0D2DCC 8017238C 00825821 */  addu  $t3, $a0, $v0
/* 0D2DD0 80172390 C5660000 */  lwc1  $f6, ($t3)
/* 0D2DD4 80172394 00220821 */  addu  $at, $at, $v0
/* 0D2DD8 80172398 E4263210 */  swc1  $f6, 0x3210($at)
/* 0D2DDC 8017239C 8C6C0000 */  lw    $t4, ($v1)
/* 0D2DE0 801723A0 3C018019 */  lui   $at, %hi(D_80197410) # $at, 0x8019
/* 0D2DE4 801723A4 C4287410 */  lwc1  $f8, %lo(D_80197410)($at)
/* 0D2DE8 801723A8 3C01800E */  lui   $at, 0x800e
/* 0D2DEC 801723AC 000C6880 */  sll   $t5, $t4, 2
/* 0D2DF0 801723B0 002D0821 */  addu  $at, $at, $t5
/* 0D2DF4 801723B4 E4283C90 */  swc1  $f8, 0x3c90($at)
.L801723B8_ovl3:
/* 0D2DF8 801723B8 90AE0005 */  lbu   $t6, 5($a1)
/* 0D2DFC 801723BC 24010005 */  li    $at, 5
/* 0D2E00 801723C0 55C1006A */  bnel  $t6, $at, .L8017256C_ovl3
/* 0D2E04 801723C4 8CB90034 */   lw    $t9, 0x34($a1)
/* 0D2E08 801723C8 0C048465 */  jal   func_80121194
/* 0D2E0C 801723CC 00000000 */   nop   
/* 0D2E10 801723D0 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2E14 801723D4 10400049 */  beqz  $v0, .L801724FC_ovl3
/* 0D2E18 801723D8 24A5E7C0 */   addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
/* 0D2E1C 801723DC 8CAF0034 */  lw    $t7, 0x34($a1)
/* 0D2E20 801723E0 2401FFFB */  li    $at, -5
/* 0D2E24 801723E4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D2E28 801723E8 01E1C024 */  and   $t8, $t7, $at
/* 0D2E2C 801723EC ACB80034 */  sw    $t8, 0x34($a1)
/* 0D2E30 801723F0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D2E34 801723F4 3C19800F */  lui   $t9, 0x800f
/* 0D2E38 801723F8 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 0D2E3C 801723FC 8C620000 */  lw    $v0, ($v1)
/* 0D2E40 80172400 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 0D2E44 80172404 3C01C0C0 */  lui   $at, 0xc0c0
/* 0D2E48 80172408 00021080 */  sll   $v0, $v0, 2
/* 0D2E4C 8017240C 0322C821 */  addu  $t9, $t9, $v0
/* 0D2E50 80172410 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 0D2E54 80172414 00827021 */  addu  $t6, $a0, $v0
/* 0D2E58 80172418 33280006 */  andi  $t0, $t9, 6
/* 0D2E5C 8017241C 5100001F */  beql  $t0, $zero, .L8017249C_ovl3
/* 0D2E60 80172420 C5D00000 */   lwc1  $f16, ($t6)
/* 0D2E64 80172424 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 0D2E68 80172428 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 0D2E6C 8017242C 00824821 */  addu  $t1, $a0, $v0
/* 0D2E70 80172430 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 0D2E74 80172434 44818000 */  mtc1  $at, $f16
/* 0D2E78 80172438 C52A0000 */  lwc1  $f10, ($t1)
/* 0D2E7C 8017243C 3C01800E */  lui   $at, 0x800e
/* 0D2E80 80172440 00220821 */  addu  $at, $at, $v0
/* 0D2E84 80172444 46105482 */  mul.s $f18, $f10, $f16
/* 0D2E88 80172448 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0D2E8C 8017244C 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0D2E90 80172450 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 0D2E94 80172454 8C620000 */  lw    $v0, ($v1)
/* 0D2E98 80172458 3C018019 */  lui   $at, %hi(D_80197414) # $at, 0x8019
/* 0D2E9C 8017245C C4267414 */  lwc1  $f6, %lo(D_80197414)($at)
/* 0D2EA0 80172460 00021080 */  sll   $v0, $v0, 2
/* 0D2EA4 80172464 00825021 */  addu  $t2, $a0, $v0
/* 0D2EA8 80172468 C5440000 */  lwc1  $f4, ($t2)
/* 0D2EAC 8017246C 00C25821 */  addu  $t3, $a2, $v0
/* 0D2EB0 80172470 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0D2EB4 80172474 46062202 */  mul.s $f8, $f4, $f6
/* 0D2EB8 80172478 44815000 */  mtc1  $at, $f10
/* 0D2EBC 8017247C 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0D2EC0 80172480 E5680000 */  swc1  $f8, ($t3)
/* 0D2EC4 80172484 8C6C0000 */  lw    $t4, ($v1)
/* 0D2EC8 80172488 000C6880 */  sll   $t5, $t4, 2
/* 0D2ECC 8017248C 002D0821 */  addu  $at, $at, $t5
/* 0D2ED0 80172490 10000039 */  b     .L80172578_ovl3
/* 0D2ED4 80172494 E42A6850 */   swc1  $f10, 0x6850($at)
/* 0D2ED8 80172498 C5D00000 */  lwc1  $f16, ($t6)
.L8017249C_ovl3:
/* 0D2EDC 8017249C 44819000 */  mtc1  $at, $f18
/* 0D2EE0 801724A0 3C01800E */  lui   $at, 0x800e
/* 0D2EE4 801724A4 00220821 */  addu  $at, $at, $v0
/* 0D2EE8 801724A8 46128102 */  mul.s $f4, $f16, $f18
/* 0D2EEC 801724AC 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0D2EF0 801724B0 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0D2EF4 801724B4 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0D2EF8 801724B8 8C620000 */  lw    $v0, ($v1)
/* 0D2EFC 801724BC 3C013E00 */  li    $at, 0x3E000000 # 0.125000
/* 0D2F00 801724C0 44814000 */  mtc1  $at, $f8
/* 0D2F04 801724C4 00021080 */  sll   $v0, $v0, 2
/* 0D2F08 801724C8 00827821 */  addu  $t7, $a0, $v0
/* 0D2F0C 801724CC C5E60000 */  lwc1  $f6, ($t7)
/* 0D2F10 801724D0 00C2C021 */  addu  $t8, $a2, $v0
/* 0D2F14 801724D4 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0D2F18 801724D8 46083282 */  mul.s $f10, $f6, $f8
/* 0D2F1C 801724DC 44818000 */  mtc1  $at, $f16
/* 0D2F20 801724E0 3C01800E */  lui   $at, 0x800e
/* 0D2F24 801724E4 E70A0000 */  swc1  $f10, ($t8)
/* 0D2F28 801724E8 8C790000 */  lw    $t9, ($v1)
/* 0D2F2C 801724EC 00194080 */  sll   $t0, $t9, 2
/* 0D2F30 801724F0 00280821 */  addu  $at, $at, $t0
/* 0D2F34 801724F4 10000020 */  b     .L80172578_ovl3
/* 0D2F38 801724F8 E4306850 */   swc1  $f16, 0x6850($at)
.L801724FC_ovl3:
/* 0D2F3C 801724FC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D2F40 80172500 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D2F44 80172504 44809000 */  mtc1  $zero, $f18
/* 0D2F48 80172508 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0D2F4C 8017250C 8C690000 */  lw    $t1, ($v1)
/* 0D2F50 80172510 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0D2F54 80172514 3C01800E */  lui   $at, 0x800e
/* 0D2F58 80172518 00095080 */  sll   $t2, $t1, 2
/* 0D2F5C 8017251C 00CA5821 */  addu  $t3, $a2, $t2
/* 0D2F60 80172520 E5720000 */  swc1  $f18, ($t3)
/* 0D2F64 80172524 8C620000 */  lw    $v0, ($v1)
/* 0D2F68 80172528 00021080 */  sll   $v0, $v0, 2
/* 0D2F6C 8017252C 00C26021 */  addu  $t4, $a2, $v0
/* 0D2F70 80172530 C5840000 */  lwc1  $f4, ($t4)
/* 0D2F74 80172534 00220821 */  addu  $at, $at, $v0
/* 0D2F78 80172538 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0D2F7C 8017253C 8C6D0000 */  lw    $t5, ($v1)
/* 0D2F80 80172540 3C018019 */  lui   $at, %hi(D_80197418) # $at, 0x8019
/* 0D2F84 80172544 C4267418 */  lwc1  $f6, %lo(D_80197418)($at)
/* 0D2F88 80172548 3C01800E */  lui   $at, 0x800e
/* 0D2F8C 8017254C 000D7080 */  sll   $t6, $t5, 2
/* 0D2F90 80172550 002E0821 */  addu  $at, $at, $t6
/* 0D2F94 80172554 E4266850 */  swc1  $f6, 0x6850($at)
/* 0D2F98 80172558 8CAF0034 */  lw    $t7, 0x34($a1)
/* 0D2F9C 8017255C 35F80004 */  ori   $t8, $t7, 4
/* 0D2FA0 80172560 10000005 */  b     .L80172578_ovl3
/* 0D2FA4 80172564 ACB80034 */   sw    $t8, 0x34($a1)
/* 0D2FA8 80172568 8CB90034 */  lw    $t9, 0x34($a1)
.L8017256C_ovl3:
/* 0D2FAC 8017256C 2401FFFB */  li    $at, -5
/* 0D2FB0 80172570 03214024 */  and   $t0, $t9, $at
/* 0D2FB4 80172574 ACA80034 */  sw    $t0, 0x34($a1)
.L80172578_ovl3:
/* 0D2FB8 80172578 90A90006 */  lbu   $t1, 6($a1)
/* 0D2FBC 8017257C 2401000B */  li    $at, 11
/* 0D2FC0 80172580 240A0008 */  li    $t2, 8
/* 0D2FC4 80172584 55210091 */  bnel  $t1, $at, .L801727CC_ovl3
/* 0D2FC8 80172588 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D2FCC 8017258C 1000008E */  b     .L801727C8_ovl3
/* 0D2FD0 80172590 A0AA0015 */   sb    $t2, 0x15($a1)
.L80172594_ovl3:
/* 0D2FD4 80172594 0C047FBE */  jal   func_8011FEF8
/* 0D2FD8 80172598 00000000 */   nop   
/* 0D2FDC 8017259C 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D2FE0 801725A0 10400011 */  beqz  $v0, .L801725E8_ovl3
/* 0D2FE4 801725A4 24A5E7C0 */   addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
/* 0D2FE8 801725A8 0C047717 */  jal   func_8011DC5C
/* 0D2FEC 801725AC 00000000 */   nop   
/* 0D2FF0 801725B0 0C04783A */  jal   func_8011E0E8
/* 0D2FF4 801725B4 00000000 */   nop   
/* 0D2FF8 801725B8 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0D2FFC 801725BC 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0D3000 801725C0 3C04800E */  lui   $a0, 0x800e
/* 0D3004 801725C4 3C058017 */  lui   $a1, %hi(D_8016C510) # $a1, 0x8017
/* 0D3008 801725C8 8D6C0000 */  lw    $t4, ($t3)
/* 0D300C 801725CC 24A5C510 */  addiu $a1, %lo(D_8016C510) # addiu $a1, $a1, -0x3af0
/* 0D3010 801725D0 000C6880 */  sll   $t5, $t4, 2
/* 0D3014 801725D4 008D2021 */  addu  $a0, $a0, $t5
/* 0D3018 801725D8 0C02C7B2 */  jal   func_800B1EC8
/* 0D301C 801725DC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0D3020 801725E0 1000007A */  b     .L801727CC_ovl3
/* 0D3024 801725E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L801725E8_ovl3:
/* 0D3028 801725E8 90AE0005 */  lbu   $t6, 5($a1)
/* 0D302C 801725EC 2401000B */  li    $at, 11
/* 0D3030 801725F0 51C10076 */  beql  $t6, $at, .L801727CC_ovl3
/* 0D3034 801725F4 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D3038 801725F8 0C04788D */  jal   func_8011E234
/* 0D303C 801725FC 00000000 */   nop   
/* 0D3040 80172600 0C047717 */  jal   func_8011DC5C
/* 0D3044 80172604 00000000 */   nop   
/* 0D3048 80172608 0C04783A */  jal   func_8011E0E8
/* 0D304C 8017260C 00000000 */   nop   
/* 0D3050 80172610 1000006E */  b     .L801727CC_ovl3
/* 0D3054 80172614 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D3058 80172618 90A2000B */  lbu   $v0, 0xb($a1)
.L8017261C_ovl3:
/* 0D305C 8017261C 3C048019 */  lui   $a0, %hi(D_801972F8) # $a0, 0x8019
/* 0D3060 80172620 24010001 */  li    $at, 1
/* 0D3064 80172624 14400005 */  bnez  $v0, .L8017263C_ovl3
/* 0D3068 80172628 3C08800F */   lui   $t0, 0x800f
/* 0D306C 8017262C 0C02909C */  jal   print_error_stub
/* 0D3070 80172630 248472F8 */   addiu $a0, %lo(D_801972F8) # addiu $a0, $a0, 0x72f8
.L80172634_ovl3:
/* 0D3074 80172634 1000FFFF */  b     .L80172634_ovl3
/* 0D3078 80172638 00000000 */   nop   
.L8017263C_ovl3:
/* 0D307C 8017263C 14410008 */  bne   $v0, $at, .L80172660_ovl3
/* 0D3080 80172640 3C188005 */   lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0D3084 80172644 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D3088 80172648 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D308C 8017264C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 0D3090 80172650 44810000 */  mtc1  $at, $f0
/* 0D3094 80172654 8DE20000 */  lw    $v0, ($t7)
/* 0D3098 80172658 10000010 */  b     .L8017269C_ovl3
/* 0D309C 8017265C 00021080 */   sll   $v0, $v0, 2
.L80172660_ovl3:
/* 0D30A0 80172660 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0D30A4 80172664 3C19800F */  lui   $t9, 0x800f
/* 0D30A8 80172668 24010004 */  li    $at, 4
/* 0D30AC 8017266C 8F020000 */  lw    $v0, ($t8)
/* 0D30B0 80172670 00021080 */  sll   $v0, $v0, 2
/* 0D30B4 80172674 0322C821 */  addu  $t9, $t9, $v0
/* 0D30B8 80172678 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 0D30BC 8017267C 13210004 */  beq   $t9, $at, .L80172690_ovl3
/* 0D30C0 80172680 3C01C080 */   li    $at, 0xC0800000 # -4.000000
/* 0D30C4 80172684 44810000 */  mtc1  $at, $f0
/* 0D30C8 80172688 10000005 */  b     .L801726A0_ovl3
/* 0D30CC 8017268C 01024021 */   addu  $t0, $t0, $v0
.L80172690_ovl3:
/* 0D30D0 80172690 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 0D30D4 80172694 44810000 */  mtc1  $at, $f0
/* 0D30D8 80172698 00000000 */  nop   
.L8017269C_ovl3:
/* 0D30DC 8017269C 01024021 */  addu  $t0, $t0, $v0
.L801726A0_ovl3:
/* 0D30E0 801726A0 8D088AE0 */  lw    $t0, -0x7520($t0)
/* 0D30E4 801726A4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 0D30E8 801726A8 44817000 */  mtc1  $at, $f14
/* 0D30EC 801726AC 31090006 */  andi  $t1, $t0, 6
/* 0D30F0 801726B0 11200008 */  beqz  $t1, .L801726D4_ovl3
/* 0D30F4 801726B4 46007306 */   mov.s $f12, $f14
/* 0D30F8 801726B8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0D30FC 801726BC 44811000 */  mtc1  $at, $f2
/* 0D3100 801726C0 00000000 */  nop   
/* 0D3104 801726C4 46020002 */  mul.s $f0, $f0, $f2
/* 0D3108 801726C8 00000000 */  nop   
/* 0D310C 801726CC 46027302 */  mul.s $f12, $f14, $f2
/* 0D3110 801726D0 00000000 */  nop   
.L801726D4_ovl3:
/* 0D3114 801726D4 E7A00038 */  swc1  $f0, 0x38($sp)
/* 0D3118 801726D8 0C02BB30 */  jal   func_800AECC0
/* 0D311C 801726DC E7AC0034 */   swc1  $f12, 0x34($sp)
/* 0D3120 801726E0 0C02BB48 */  jal   func_800AED20
/* 0D3124 801726E4 C7AC0034 */   lwc1  $f12, 0x34($sp)
/* 0D3128 801726E8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0D312C 801726EC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0D3130 801726F0 C7A00038 */  lwc1  $f0, 0x38($sp)
/* 0D3134 801726F4 44806000 */  mtc1  $zero, $f12
/* 0D3138 801726F8 8C6A0000 */  lw    $t2, ($v1)
/* 0D313C 801726FC 3C01800E */  lui   $at, 0x800e
/* 0D3140 80172700 460C003C */  c.lt.s $f0, $f12
/* 0D3144 80172704 000A5880 */  sll   $t3, $t2, 2
/* 0D3148 80172708 3C058013 */  lui   $a1, %hi(gKirbyState) # $a1, 0x8013
/* 0D314C 8017270C 002B0821 */  addu  $at, $at, $t3
/* 0D3150 80172710 24A5E7C0 */  addiu $a1, %lo(gKirbyState) # addiu $a1, $a1, -0x1840
/* 0D3154 80172714 45000003 */  bc1f  .L80172724_ovl3
/* 0D3158 80172718 E4203210 */   swc1  $f0, 0x3210($at)
/* 0D315C 8017271C 10000002 */  b     .L80172728_ovl3
/* 0D3160 80172720 46000087 */   neg.s $f2, $f0
.L80172724_ovl3:
/* 0D3164 80172724 46000086 */  mov.s $f2, $f0
.L80172728_ovl3:
/* 0D3168 80172728 460C103C */  c.lt.s $f2, $f12
/* 0D316C 8017272C 24190002 */  li    $t9, 2
/* 0D3170 80172730 45020010 */  bc1fl .L80172774_ovl3
/* 0D3174 80172734 460C003C */   c.lt.s $f0, $f12
/* 0D3178 80172738 460C003C */  c.lt.s $f0, $f12
/* 0D317C 8017273C 00000000 */  nop   
/* 0D3180 80172740 45020004 */  bc1fl .L80172754_ovl3
/* 0D3184 80172744 46000086 */   mov.s $f2, $f0
/* 0D3188 80172748 10000002 */  b     .L80172754_ovl3
/* 0D318C 8017274C 46000087 */   neg.s $f2, $f0
/* 0D3190 80172750 46000086 */  mov.s $f2, $f0
.L80172754_ovl3:
/* 0D3194 80172754 8C6C0000 */  lw    $t4, ($v1)
/* 0D3198 80172758 3C01800E */  lui   $at, 0x800e
/* 0D319C 8017275C 46001207 */  neg.s $f8, $f2
/* 0D31A0 80172760 000C6880 */  sll   $t5, $t4, 2
/* 0D31A4 80172764 002D0821 */  addu  $at, $at, $t5
/* 0D31A8 80172768 1000000D */  b     .L801727A0_ovl3
/* 0D31AC 8017276C E4283C90 */   swc1  $f8, 0x3c90($at)
/* 0D31B0 80172770 460C003C */  c.lt.s $f0, $f12
.L80172774_ovl3:
/* 0D31B4 80172774 00000000 */  nop   
/* 0D31B8 80172778 45020004 */  bc1fl .L8017278C_ovl3
/* 0D31BC 8017277C 46000086 */   mov.s $f2, $f0
/* 0D31C0 80172780 10000002 */  b     .L8017278C_ovl3
/* 0D31C4 80172784 46000087 */   neg.s $f2, $f0
/* 0D31C8 80172788 46000086 */  mov.s $f2, $f0
.L8017278C_ovl3:
/* 0D31CC 8017278C 8C6E0000 */  lw    $t6, ($v1)
/* 0D31D0 80172790 3C01800E */  lui   $at, 0x800e
/* 0D31D4 80172794 000E7880 */  sll   $t7, $t6, 2
/* 0D31D8 80172798 002F0821 */  addu  $at, $at, $t7
/* 0D31DC 8017279C E4223C90 */  swc1  $f2, 0x3c90($at)
.L801727A0_ovl3:
/* 0D31E0 801727A0 8CA2002C */  lw    $v0, 0x2c($a1)
/* 0D31E4 801727A4 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0D31E8 801727A8 2C430001 */  sltiu $v1, $v0, 1
/* 0D31EC 801727AC 2458FFFF */  addiu $t8, $v0, -1
/* 0D31F0 801727B0 10600005 */  beqz  $v1, .L801727C8_ovl3
/* 0D31F4 801727B4 ACB8002C */   sw    $t8, 0x2c($a1)
/* 0D31F8 801727B8 0C047717 */  jal   func_8011DC5C
/* 0D31FC 801727BC AC39E4F8 */   sw    $t9, %lo(D_800BE4F8)($at)
/* 0D3200 801727C0 0C04783A */  jal   func_8011E0E8
/* 0D3204 801727C4 00000000 */   nop   
.L801727C8_ovl3:
/* 0D3208 801727C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801727CC_ovl3:
/* 0D320C 801727CC 27BD0040 */  addiu $sp, $sp, 0x40
/* 0D3210 801727D0 03E00008 */  jr    $ra
/* 0D3214 801727D4 00000000 */   nop   
