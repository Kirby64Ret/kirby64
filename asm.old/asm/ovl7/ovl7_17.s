.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_801BF220
/* 165290 801BF220 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 165294 801BF224 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 165298 801BF228 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16529C 801BF22C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1652A0 801BF230 AFA40018 */  sw    $a0, 0x18($sp)
/* 1652A4 801BF234 8C4F0000 */  lw    $t7, ($v0)
/* 1652A8 801BF238 3C0E800D */  lui   $t6, %hi(D_800D7058) # $t6, 0x800d
/* 1652AC 801BF23C 3C01800E */  lui   $at, 0x800e
/* 1652B0 801BF240 000FC080 */  sll   $t8, $t7, 2
/* 1652B4 801BF244 00380821 */  addu  $at, $at, $t8
/* 1652B8 801BF248 25CE7058 */  addiu $t6, %lo(D_800D7058) # addiu $t6, $t6, 0x7058
/* 1652BC 801BF24C AC2E0650 */  sw    $t6, 0x650($at)
/* 1652C0 801BF250 8C480000 */  lw    $t0, ($v0)
/* 1652C4 801BF254 3C01800E */  lui   $at, 0x800e
/* 1652C8 801BF258 3C19800B */  lui   $t9, %hi(D_800B74D8) # $t9, 0x800b
/* 1652CC 801BF25C 00084880 */  sll   $t1, $t0, 2
/* 1652D0 801BF260 00290821 */  addu  $at, $at, $t1
/* 1652D4 801BF264 273974D8 */  addiu $t9, %lo(D_800B74D8) # addiu $t9, $t9, 0x74d8
/* 1652D8 801BF268 AC39EF90 */  sw    $t9, -0x1070($at)
/* 1652DC 801BF26C 8C4B0000 */  lw    $t3, ($v0)
/* 1652E0 801BF270 3C01800E */  lui   $at, 0x800e
/* 1652E4 801BF274 3C0A801C */  lui   $t2, %hi(D_801BF390) # $t2, 0x801c
/* 1652E8 801BF278 000B6080 */  sll   $t4, $t3, 2
/* 1652EC 801BF27C 002C0821 */  addu  $at, $at, $t4
/* 1652F0 801BF280 254AF390 */  addiu $t2, %lo(D_801BF390) # addiu $t2, $t2, -0xc70
/* 1652F4 801BF284 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 1652F8 801BF288 8C4D0000 */  lw    $t5, ($v0)
/* 1652FC 801BF28C 3C04800F */  lui   $a0, %hi(D_800E8920) # $a0, 0x800f
/* 165300 801BF290 24848920 */  addiu $a0, %lo(D_800E8920) # addiu $a0, $a0, -0x76e0
/* 165304 801BF294 000D7880 */  sll   $t7, $t5, 2
/* 165308 801BF298 008F7021 */  addu  $t6, $a0, $t7
/* 16530C 801BF29C ADC00000 */  sw    $zero, ($t6)
/* 165310 801BF2A0 8C580000 */  lw    $t8, ($v0)
/* 165314 801BF2A4 44802000 */  mtc1  $zero, $f4
/* 165318 801BF2A8 3C01800E */  lui   $at, 0x800e
/* 16531C 801BF2AC 00184080 */  sll   $t0, $t8, 2
/* 165320 801BF2B0 00280821 */  addu  $at, $at, $t0
/* 165324 801BF2B4 E4247B20 */  swc1  $f4, 0x7b20($at)
/* 165328 801BF2B8 8C590000 */  lw    $t9, ($v0)
/* 16532C 801BF2BC 3C05800E */  lui   $a1, %hi(D_800E7EA0) # $a1, 0x800e
/* 165330 801BF2C0 24A57EA0 */  addiu $a1, %lo(D_800E7EA0) # addiu $a1, $a1, 0x7ea0
/* 165334 801BF2C4 00194880 */  sll   $t1, $t9, 2
/* 165338 801BF2C8 00A95821 */  addu  $t3, $a1, $t1
/* 16533C 801BF2CC AD600000 */  sw    $zero, ($t3)
/* 165340 801BF2D0 8C430000 */  lw    $v1, ($v0)
/* 165344 801BF2D4 3C01800E */  lui   $at, 0x800e
/* 165348 801BF2D8 00031880 */  sll   $v1, $v1, 2
/* 16534C 801BF2DC 00A35021 */  addu  $t2, $a1, $v1
/* 165350 801BF2E0 8D4C0000 */  lw    $t4, ($t2)
/* 165354 801BF2E4 00230821 */  addu  $at, $at, $v1
/* 165358 801BF2E8 AC2C7CE0 */  sw    $t4, 0x7ce0($at)
/* 16535C 801BF2EC 8C4D0000 */  lw    $t5, ($v0)
/* 165360 801BF2F0 3C01800F */  lui   $at, 0x800f
/* 165364 801BF2F4 000D7880 */  sll   $t7, $t5, 2
/* 165368 801BF2F8 008F7021 */  addu  $t6, $a0, $t7
/* 16536C 801BF2FC ADC00000 */  sw    $zero, ($t6)
/* 165370 801BF300 8C430000 */  lw    $v1, ($v0)
/* 165374 801BF304 00031880 */  sll   $v1, $v1, 2
/* 165378 801BF308 0083C021 */  addu  $t8, $a0, $v1
/* 16537C 801BF30C 8F080000 */  lw    $t0, ($t8)
/* 165380 801BF310 00230821 */  addu  $at, $at, $v1
/* 165384 801BF314 AC288AE0 */  sw    $t0, -0x7520($at)
/* 165388 801BF318 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 16538C 801BF31C 0C02BB30 */  jal   func_800AECC0
/* 165390 801BF320 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 165394 801BF324 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 165398 801BF328 0C02BB48 */  jal   func_800AED20
/* 16539C 801BF32C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1653A0 801BF330 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1653A4 801BF334 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1653A8 801BF338 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1653AC 801BF33C 44810000 */  mtc1  $at, $f0
/* 1653B0 801BF340 8C590000 */  lw    $t9, ($v0)
/* 1653B4 801BF344 3C01800E */  lui   $at, 0x800e
/* 1653B8 801BF348 00194880 */  sll   $t1, $t9, 2
/* 1653BC 801BF34C 00290821 */  addu  $at, $at, $t1
/* 1653C0 801BF350 E4204550 */  swc1  $f0, 0x4550($at)
/* 1653C4 801BF354 8C4B0000 */  lw    $t3, ($v0)
/* 1653C8 801BF358 3C01800E */  lui   $at, 0x800e
/* 1653CC 801BF35C 000B5080 */  sll   $t2, $t3, 2
/* 1653D0 801BF360 002A0821 */  addu  $at, $at, $t2
/* 1653D4 801BF364 E4204710 */  swc1  $f0, 0x4710($at)
/* 1653D8 801BF368 8C4C0000 */  lw    $t4, ($v0)
/* 1653DC 801BF36C 3C01800E */  lui   $at, 0x800e
/* 1653E0 801BF370 000C6880 */  sll   $t5, $t4, 2
/* 1653E4 801BF374 002D0821 */  addu  $at, $at, $t5
/* 1653E8 801BF378 0C02BE85 */  jal   func_800AFA14
/* 1653EC 801BF37C E42048D0 */   swc1  $f0, 0x48d0($at)
/* 1653F0 801BF380 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1653F4 801BF384 27BD0018 */  addiu $sp, $sp, 0x18
/* 1653F8 801BF388 03E00008 */  jr    $ra
/* 1653FC 801BF38C 00000000 */   nop   

.type func_801BF220, @function
.size func_801BF220, . - func_801BF220

glabel func_801BF390_ovl7
/* 165400 801BF390 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165404 801BF394 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165408 801BF398 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16540C 801BF39C AFBF0014 */  sw    $ra, 0x14($sp)
/* 165410 801BF3A0 AFA40018 */  sw    $a0, 0x18($sp)
/* 165414 801BF3A4 8C620000 */  lw    $v0, ($v1)
/* 165418 801BF3A8 3C0E800E */  lui   $t6, 0x800e
/* 16541C 801BF3AC 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 165420 801BF3B0 00021080 */  sll   $v0, $v0, 2
/* 165424 801BF3B4 01C27021 */  addu  $t6, $t6, $v0
/* 165428 801BF3B8 8DCE0D50 */  lw    $t6, 0xd50($t6)
/* 16542C 801BF3BC 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 165430 801BF3C0 0082C821 */  addu  $t9, $a0, $v0
/* 165434 801BF3C4 000E7880 */  sll   $t7, $t6, 2
/* 165438 801BF3C8 008FC021 */  addu  $t8, $a0, $t7
/* 16543C 801BF3CC C7040000 */  lwc1  $f4, ($t8)
/* 165440 801BF3D0 3C08800F */  lui   $t0, 0x800f
/* 165444 801BF3D4 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 165448 801BF3D8 E7240000 */  swc1  $f4, ($t9)
/* 16544C 801BF3DC 8C620000 */  lw    $v0, ($v1)
/* 165450 801BF3E0 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 165454 801BF3E4 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 165458 801BF3E8 00021080 */  sll   $v0, $v0, 2
/* 16545C 801BF3EC 01024021 */  addu  $t0, $t0, $v0
/* 165460 801BF3F0 8D088220 */  lw    $t0, -0x7de0($t0)
/* 165464 801BF3F4 3C0B800F */  lui   $t3, 0x800f
/* 165468 801BF3F8 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 16546C 801BF3FC 55000007 */  bnezl $t0, .L801BF41C_ovl7
/* 165470 801BF400 01625821 */   addu  $t3, $t3, $v0
/* 165474 801BF404 848900B2 */  lh    $t1, 0xb2($a0)
/* 165478 801BF408 252A0001 */  addiu $t2, $t1, 1
/* 16547C 801BF40C A48A00B2 */  sh    $t2, 0xb2($a0)
/* 165480 801BF410 8C620000 */  lw    $v0, ($v1)
/* 165484 801BF414 00021080 */  sll   $v0, $v0, 2
/* 165488 801BF418 01625821 */  addu  $t3, $t3, $v0
.L801BF41C_ovl7:
/* 16548C 801BF41C 8D6B83E0 */  lw    $t3, -0x7c20($t3)
/* 165490 801BF420 3C04800E */  lui   $a0, 0x800e
/* 165494 801BF424 00822021 */  addu  $a0, $a0, $v0
/* 165498 801BF428 51600004 */  beql  $t3, $zero, .L801BF43C_ovl7
/* 16549C 801BF42C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1654A0 801BF430 0C02C7B2 */  jal   assign_new_process_entry
/* 1654A4 801BF434 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1654A8 801BF438 8FBF0014 */  lw    $ra, 0x14($sp)
.L801BF43C_ovl7:
/* 1654AC 801BF43C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1654B0 801BF440 03E00008 */  jr    $ra
/* 1654B4 801BF444 00000000 */   nop   

.type func_801BF390_ovl7, @function
.size func_801BF390_ovl7, . - func_801BF390_ovl7

glabel func_801BF448_ovl7
/* 1654B8 801BF448 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1654BC 801BF44C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1654C0 801BF450 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1654C4 801BF454 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1654C8 801BF458 AFA40018 */  sw    $a0, 0x18($sp)
/* 1654CC 801BF45C 8C4F0000 */  lw    $t7, ($v0)
/* 1654D0 801BF460 3C0E800B */  lui   $t6, %hi(D_800B658C) # $t6, 0x800b
/* 1654D4 801BF464 3C01800E */  lui   $at, 0x800e
/* 1654D8 801BF468 000FC080 */  sll   $t8, $t7, 2
/* 1654DC 801BF46C 00380821 */  addu  $at, $at, $t8
/* 1654E0 801BF470 25CE658C */  addiu $t6, %lo(D_800B658C) # addiu $t6, $t6, 0x658c
/* 1654E4 801BF474 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1654E8 801BF478 8C430000 */  lw    $v1, ($v0)
/* 1654EC 801BF47C 3C08800E */  lui   $t0, 0x800e
/* 1654F0 801BF480 3C01800F */  lui   $at, 0x800f
/* 1654F4 801BF484 0003C840 */  sll   $t9, $v1, 1
/* 1654F8 801BF488 01194021 */  addu  $t0, $t0, $t9
/* 1654FC 801BF48C 950877A0 */  lhu   $t0, 0x77a0($t0)
/* 165500 801BF490 00034880 */  sll   $t1, $v1, 2
/* 165504 801BF494 00290821 */  addu  $at, $at, $t1
/* 165508 801BF498 AC289AA0 */  sw    $t0, -0x6560($at)
/* 16550C 801BF49C 8C4B0000 */  lw    $t3, ($v0)
/* 165510 801BF4A0 3C01800F */  lui   $at, 0x800f
/* 165514 801BF4A4 240A003C */  li    $t2, 60
/* 165518 801BF4A8 000B6080 */  sll   $t4, $t3, 2
/* 16551C 801BF4AC 002C0821 */  addu  $at, $at, $t4
/* 165520 801BF4B0 AC2A9E20 */  sw    $t2, -0x61e0($at)
/* 165524 801BF4B4 8C4D0000 */  lw    $t5, ($v0)
/* 165528 801BF4B8 3C01800F */  lui   $at, 0x800f
/* 16552C 801BF4BC 3C04800E */  lui   $a0, 0x800e
/* 165530 801BF4C0 000D7880 */  sll   $t7, $t5, 2
/* 165534 801BF4C4 002F0821 */  addu  $at, $at, $t7
/* 165538 801BF4C8 AC209FE0 */  sw    $zero, -0x6020($at)
/* 16553C 801BF4CC 8C4E0000 */  lw    $t6, ($v0)
/* 165540 801BF4D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 165544 801BF4D4 44812000 */  mtc1  $at, $f4
/* 165548 801BF4D8 3C01800F */  lui   $at, 0x800f
/* 16554C 801BF4DC 000EC080 */  sll   $t8, $t6, 2
/* 165550 801BF4E0 00380821 */  addu  $at, $at, $t8
/* 165554 801BF4E4 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 165558 801BF4E8 8C590000 */  lw    $t9, ($v0)
/* 16555C 801BF4EC 3C01800F */  lui   $at, 0x800f
/* 165560 801BF4F0 3C06801D */  lui   $a2, %hi(D_801CD8F0) # $a2, 0x801d
/* 165564 801BF4F4 00194080 */  sll   $t0, $t9, 2
/* 165568 801BF4F8 00280821 */  addu  $at, $at, $t0
/* 16556C 801BF4FC AC208920 */  sw    $zero, -0x76e0($at)
/* 165570 801BF500 8C490000 */  lw    $t1, ($v0)
/* 165574 801BF504 24C6D8F0 */  addiu $a2, %lo(D_801CD8F0) # addiu $a2, $a2, -0x2710
/* 165578 801BF508 24050001 */  li    $a1, 1
/* 16557C 801BF50C 00892021 */  addu  $a0, $a0, $t1
/* 165580 801BF510 0C02911F */  jal   call_virtual_function
/* 165584 801BF514 90847880 */   lbu   $a0, 0x7880($a0)
/* 165588 801BF518 8FBF0014 */  lw    $ra, 0x14($sp)
/* 16558C 801BF51C 27BD0018 */  addiu $sp, $sp, 0x18
/* 165590 801BF520 03E00008 */  jr    $ra
/* 165594 801BF524 00000000 */   nop   

.type func_801BF448_ovl7, @function
.size func_801BF448_ovl7, . - func_801BF448_ovl7

glabel func_801BF528_ovl7
/* 165598 801BF528 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 16559C 801BF52C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1655A0 801BF530 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1655A4 801BF534 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1655A8 801BF538 AFA40018 */  sw    $a0, 0x18($sp)
/* 1655AC 801BF53C 8DF80000 */  lw    $t8, ($t7)
/* 1655B0 801BF540 3C0E801C */  lui   $t6, %hi(D_801BF618) # $t6, 0x801c
/* 1655B4 801BF544 3C01800E */  lui   $at, 0x800e
/* 1655B8 801BF548 0018C880 */  sll   $t9, $t8, 2
/* 1655BC 801BF54C 00390821 */  addu  $at, $at, $t9
/* 1655C0 801BF550 25CEF618 */  addiu $t6, %lo(D_801BF618) # addiu $t6, $t6, -0x9e8
/* 1655C4 801BF554 3C04801C */  lui   $a0, %hi(D_801BF598) # $a0, 0x801c
/* 1655C8 801BF558 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 1655CC 801BF55C 0C068354 */  jal   func_801A0D50
/* 1655D0 801BF560 2484F598 */   addiu $a0, %lo(D_801BF598) # addiu $a0, $a0, -0xa68
/* 1655D4 801BF564 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1655D8 801BF568 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1655DC 801BF56C 3C01800E */  lui   $at, 0x800e
/* 1655E0 801BF570 8FA40018 */  lw    $a0, 0x18($sp)
/* 1655E4 801BF574 8D090000 */  lw    $t1, ($t0)
/* 1655E8 801BF578 00095080 */  sll   $t2, $t1, 2
/* 1655EC 801BF57C 002A0821 */  addu  $at, $at, $t2
/* 1655F0 801BF580 0C06FD66 */  jal   D_801BF598_ovl7
/* 1655F4 801BF584 AC20DC50 */   sw    $zero, -0x23b0($at)
/* 1655F8 801BF588 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1655FC 801BF58C 27BD0018 */  addiu $sp, $sp, 0x18
/* 165600 801BF590 03E00008 */  jr    $ra
/* 165604 801BF594 00000000 */   nop   

.type func_801BF528_ovl7, @function
.size func_801BF528_ovl7, . - func_801BF528_ovl7

glabel func_801BF598_ovl7
/* 165608 801BF598 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 16560C 801BF59C AFB20020 */  sw    $s2, 0x20($sp)
/* 165610 801BF5A0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 165614 801BF5A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 165618 801BF5A8 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 16561C 801BF5AC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 165620 801BF5B0 3C12801D */  lui   $s2, %hi(D_801CD8F4) # $s2, 0x801d
/* 165624 801BF5B4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 165628 801BF5B8 AFA40028 */  sw    $a0, 0x28($sp)
/* 16562C 801BF5BC 2652D8F4 */  addiu $s2, %lo(D_801CD8F4) # addiu $s2, $s2, -0x270c
/* 165630 801BF5C0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 165634 801BF5C4 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 165638 801BF5C8 8E2E0000 */  lw    $t6, ($s1)
.L801BF5CC_ovl7:
/* 16563C 801BF5CC 24050004 */  li    $a1, 4
/* 165640 801BF5D0 02403025 */  move  $a2, $s2
/* 165644 801BF5D4 8DCF0000 */  lw    $t7, ($t6)
/* 165648 801BF5D8 000FC080 */  sll   $t8, $t7, 2
/* 16564C 801BF5DC 0218C821 */  addu  $t9, $s0, $t8
/* 165650 801BF5E0 0C02911F */  jal   call_virtual_function
/* 165654 801BF5E4 8F240000 */   lw    $a0, ($t9)
/* 165658 801BF5E8 1000FFF8 */  b     .L801BF5CC_ovl7
/* 16565C 801BF5EC 8E2E0000 */   lw    $t6, ($s1)
/* 165660 801BF5F0 00000000 */  nop   
/* 165664 801BF5F4 00000000 */  nop   
/* 165668 801BF5F8 00000000 */  nop   
/* 16566C 801BF5FC 00000000 */  nop   
/* 165670 801BF600 8FBF0024 */  lw    $ra, 0x24($sp)
/* 165674 801BF604 8FB00018 */  lw    $s0, 0x18($sp)
/* 165678 801BF608 8FB1001C */  lw    $s1, 0x1c($sp)
/* 16567C 801BF60C 8FB20020 */  lw    $s2, 0x20($sp)
/* 165680 801BF610 03E00008 */  jr    $ra
/* 165684 801BF614 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801BF598_ovl7, @function
.size func_801BF598_ovl7, . - func_801BF598_ovl7

glabel func_801BF618_ovl7
/* 165688 801BF618 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 16568C 801BF61C AFBF0014 */  sw    $ra, 0x14($sp)
/* 165690 801BF620 0C070162 */  jal   func_801C0588_ovl7
/* 165694 801BF624 AFA40020 */   sw    $a0, 0x20($sp)
/* 165698 801BF628 1440004D */  bnez  $v0, .L801BF760_ovl7
/* 16569C 801BF62C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1656A0 801BF630 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1656A4 801BF634 3C01800E */  lui   $at, 0x800e
/* 1656A8 801BF638 3C04800E */  lui   $a0, 0x800e
/* 1656AC 801BF63C 8DC20000 */  lw    $v0, ($t6)
/* 1656B0 801BF640 3C05801C */  lui   $a1, %hi(D_801C0610) # $a1, 0x801c
/* 1656B4 801BF644 24A50610 */  addiu $a1, %lo(D_801C0610) # addiu $a1, $a1, 0x610
/* 1656B8 801BF648 00021080 */  sll   $v0, $v0, 2
/* 1656BC 801BF64C 00220821 */  addu  $at, $at, $v0
/* 1656C0 801BF650 C4242790 */  lwc1  $f4, 0x2790($at)
/* 1656C4 801BF654 3C01801D */  lui   $at, %hi(D_801CE5E0) # $at, 0x801d
/* 1656C8 801BF658 C426E5E0 */  lwc1  $f6, %lo(D_801CE5E0)($at)
/* 1656CC 801BF65C 00822021 */  addu  $a0, $a0, $v0
/* 1656D0 801BF660 4606203C */  c.lt.s $f4, $f6
/* 1656D4 801BF664 00000000 */  nop   
/* 1656D8 801BF668 45000005 */  bc1f  .L801BF680_ovl7
/* 1656DC 801BF66C 00000000 */   nop   
/* 1656E0 801BF670 0C02C7B2 */  jal   assign_new_process_entry
/* 1656E4 801BF674 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1656E8 801BF678 1000003A */  b     .L801BF764_ovl7
/* 1656EC 801BF67C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801BF680_ovl7:
/* 1656F0 801BF680 0C06835D */  jal   func_801A0D74_ovl7
/* 1656F4 801BF684 8FA40020 */   lw    $a0, 0x20($sp)
/* 1656F8 801BF688 AFA2001C */  sw    $v0, 0x1c($sp)
/* 1656FC 801BF68C 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 165700 801BF690 24040001 */   li    $a0, 1
/* 165704 801BF694 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 165708 801BF698 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 16570C 801BF69C 3C0F800F */  lui   $t7, 0x800f
/* 165710 801BF6A0 3C188013 */  lui   $t8, %hi(D_8012BCA0) # $t8, 0x8013
/* 165714 801BF6A4 8C820000 */  lw    $v0, ($a0)
/* 165718 801BF6A8 00021080 */  sll   $v0, $v0, 2
/* 16571C 801BF6AC 01E27821 */  addu  $t7, $t7, $v0
/* 165720 801BF6B0 8DEF8920 */  lw    $t7, -0x76e0($t7)
/* 165724 801BF6B4 55E0000D */  bnezl $t7, .L801BF6EC_ovl7
/* 165728 801BF6B8 8FA9001C */   lw    $t1, 0x1c($sp)
/* 16572C 801BF6BC 8F18BCA0 */  lw    $t8, %lo(D_8012BCA0)($t8)
/* 165730 801BF6C0 0018CCC2 */  srl   $t9, $t8, 0x13
/* 165734 801BF6C4 332801FF */  andi  $t0, $t9, 0x1ff
/* 165738 801BF6C8 51000008 */  beql  $t0, $zero, .L801BF6EC_ovl7
/* 16573C 801BF6CC 8FA9001C */   lw    $t1, 0x1c($sp)
/* 165740 801BF6D0 0C029D9E */  jal   play_sound
/* 165744 801BF6D4 24040119 */   li    $a0, 281
/* 165748 801BF6D8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 16574C 801BF6DC 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 165750 801BF6E0 8C820000 */  lw    $v0, ($a0)
/* 165754 801BF6E4 00021080 */  sll   $v0, $v0, 2
/* 165758 801BF6E8 8FA9001C */  lw    $t1, 0x1c($sp)
.L801BF6EC_ovl7:
/* 16575C 801BF6EC 3C06801D */  lui   $a2, %hi(D_801CD904) # $a2, 0x801d
/* 165760 801BF6F0 24C6D904 */  addiu $a2, %lo(D_801CD904) # addiu $a2, $a2, -0x26fc
/* 165764 801BF6F4 15200009 */  bnez  $t1, .L801BF71C_ovl7
/* 165768 801BF6F8 24050004 */   li    $a1, 4
/* 16576C 801BF6FC 3C04800E */  lui   $a0, 0x800e
/* 165770 801BF700 00822021 */  addu  $a0, $a0, $v0
/* 165774 801BF704 0C02911F */  jal   call_virtual_function
/* 165778 801BF708 8C84DFD0 */   lw    $a0, -0x2030($a0)
/* 16577C 801BF70C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 165780 801BF710 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 165784 801BF714 8C820000 */  lw    $v0, ($a0)
/* 165788 801BF718 00021080 */  sll   $v0, $v0, 2
.L801BF71C_ovl7:
/* 16578C 801BF71C 3C0A800F */  lui   $t2, %hi(D_800E9E20) # $t2, 0x800f
/* 165790 801BF720 254A9E20 */  addiu $t2, %lo(D_800E9E20) # addiu $t2, $t2, -0x61e0
/* 165794 801BF724 004A2821 */  addu  $a1, $v0, $t2
/* 165798 801BF728 8CA30000 */  lw    $v1, ($a1)
/* 16579C 801BF72C 18600007 */  blez  $v1, .L801BF74C_ovl7
/* 1657A0 801BF730 246BFFFF */   addiu $t3, $v1, -1
/* 1657A4 801BF734 ACAB0000 */  sw    $t3, ($a1)
/* 1657A8 801BF738 8C8C0000 */  lw    $t4, ($a0)
/* 1657AC 801BF73C 3C03800F */  lui   $v1, 0x800f
/* 1657B0 801BF740 000C6880 */  sll   $t5, $t4, 2
/* 1657B4 801BF744 006D1821 */  addu  $v1, $v1, $t5
/* 1657B8 801BF748 8C639E20 */  lw    $v1, -0x61e0($v1)
.L801BF74C_ovl7:
/* 1657BC 801BF74C 28610033 */  slti  $at, $v1, 0x33
/* 1657C0 801BF750 50200004 */  beql  $at, $zero, .L801BF764_ovl7
/* 1657C4 801BF754 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1657C8 801BF758 0C0700B4 */  jal   func_801C02D0_ovl7
/* 1657CC 801BF75C 00000000 */   nop   
.L801BF760_ovl7:
/* 1657D0 801BF760 8FBF0014 */  lw    $ra, 0x14($sp)
.L801BF764_ovl7:
/* 1657D4 801BF764 27BD0020 */  addiu $sp, $sp, 0x20
/* 1657D8 801BF768 03E00008 */  jr    $ra
/* 1657DC 801BF76C 00000000 */   nop   

.type func_801BF618_ovl7, @function
.size func_801BF618_ovl7, . - func_801BF618_ovl7

glabel func_801BF770_ovl7
/* 1657E0 801BF770 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1657E4 801BF774 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1657E8 801BF778 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1657EC 801BF77C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1657F0 801BF780 AFA40018 */  sw    $a0, 0x18($sp)
/* 1657F4 801BF784 8DC20000 */  lw    $v0, ($t6)
/* 1657F8 801BF788 3C03800E */  lui   $v1, 0x800e
/* 1657FC 801BF78C 3C01800E */  lui   $at, 0x800e
/* 165800 801BF790 00021080 */  sll   $v0, $v0, 2
/* 165804 801BF794 00621821 */  addu  $v1, $v1, $v0
/* 165808 801BF798 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 16580C 801BF79C 00220821 */  addu  $at, $at, $v0
/* 165810 801BF7A0 3C0F801D */  lui   $t7, %hi(D_801CD090) # $t7, 0x801d
/* 165814 801BF7A4 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 165818 801BF7A8 25EFD090 */  addiu $t7, %lo(D_801CD090) # addiu $t7, $t7, -0x2f70
/* 16581C 801BF7AC 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 165820 801BF7B0 AC6F0098 */  sw    $t7, 0x98($v1)
/* 165824 801BF7B4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 165828 801BF7B8 3C0C800F */  lui   $t4, %hi(D_800E8920) # $t4, 0x800f
/* 16582C 801BF7BC 258C8920 */  addiu $t4, %lo(D_800E8920) # addiu $t4, $t4, -0x76e0
/* 165830 801BF7C0 8F190000 */  lw    $t9, ($t8)
/* 165834 801BF7C4 24010001 */  li    $at, 1
/* 165838 801BF7C8 00195880 */  sll   $t3, $t9, 2
/* 16583C 801BF7CC 016C2821 */  addu  $a1, $t3, $t4
/* 165840 801BF7D0 8CAD0000 */  lw    $t5, ($a1)
/* 165844 801BF7D4 55A1000B */  bnel  $t5, $at, .L801BF804_ovl7
/* 165848 801BF7D8 3C040001 */   lui   $a0, 1
/* 16584C 801BF7DC 0C029D9E */  jal   play_sound
/* 165850 801BF7E0 24040119 */   li    $a0, 281
/* 165854 801BF7E4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 165858 801BF7E8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 16585C 801BF7EC 3C19800F */  lui   $t9, %hi(D_800E8920) # $t9, 0x800f
/* 165860 801BF7F0 27398920 */  addiu $t9, %lo(D_800E8920) # addiu $t9, $t9, -0x76e0
/* 165864 801BF7F4 8DCF0000 */  lw    $t7, ($t6)
/* 165868 801BF7F8 000FC080 */  sll   $t8, $t7, 2
/* 16586C 801BF7FC 03192821 */  addu  $a1, $t8, $t9
/* 165870 801BF800 3C040001 */  lui   $a0, (0x00010606 >> 16) # lui $a0, 1
.L801BF804_ovl7:
/* 165874 801BF804 ACA00000 */  sw    $zero, ($a1)
/* 165878 801BF808 0C02A7A9 */  jal   func_800A9EA4
/* 16587C 801BF80C 34840606 */   ori   $a0, (0x00010606 & 0xFFFF) # ori $a0, $a0, 0x606
/* 165880 801BF810 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165884 801BF814 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165888 801BF818 3C06800F */  lui   $a2, %hi(D_800EA6E0) # $a2, 0x800f
/* 16588C 801BF81C 24C6A6E0 */  addiu $a2, %lo(D_800EA6E0) # addiu $a2, $a2, -0x5920
/* 165890 801BF820 8C620000 */  lw    $v0, ($v1)
/* 165894 801BF824 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 165898 801BF828 44810000 */  mtc1  $at, $f0
/* 16589C 801BF82C 00021080 */  sll   $v0, $v0, 2
/* 1658A0 801BF830 00C25821 */  addu  $t3, $a2, $v0
/* 1658A4 801BF834 C5640000 */  lwc1  $f4, ($t3)
/* 1658A8 801BF838 3C07800E */  lui   $a3, %hi(D_800E6A10) # $a3, 0x800e
/* 1658AC 801BF83C 24E76A10 */  addiu $a3, %lo(D_800E6A10) # addiu $a3, $a3, 0x6a10
/* 1658B0 801BF840 46002182 */  mul.s $f6, $f4, $f0
/* 1658B4 801BF844 00E26021 */  addu  $t4, $a3, $v0
/* 1658B8 801BF848 C5880000 */  lwc1  $f8, ($t4)
/* 1658BC 801BF84C 3C01800E */  lui   $at, 0x800e
/* 1658C0 801BF850 00220821 */  addu  $at, $at, $v0
/* 1658C4 801BF854 44808000 */  mtc1  $zero, $f16
/* 1658C8 801BF858 3C08800E */  lui   $t0, %hi(D_800E6690) # $t0, 0x800e
/* 1658CC 801BF85C 46083282 */  mul.s $f10, $f6, $f8
/* 1658D0 801BF860 25086690 */  addiu $t0, %lo(D_800E6690) # addiu $t0, $t0, 0x6690
/* 1658D4 801BF864 3C09800E */  lui   $t1, %hi(D_800E3210) # $t1, 0x800e
/* 1658D8 801BF868 25293210 */  addiu $t1, %lo(D_800E3210) # addiu $t1, $t1, 0x3210
/* 1658DC 801BF86C 3C0A800E */  lui   $t2, %hi(D_800E3750) # $t2, 0x800e
/* 1658E0 801BF870 254A3750 */  addiu $t2, %lo(D_800E3750) # addiu $t2, $t2, 0x3750
/* 1658E4 801BF874 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 1658E8 801BF878 8C6D0000 */  lw    $t5, ($v1)
/* 1658EC 801BF87C 3C01800E */  lui   $at, 0x800e
/* 1658F0 801BF880 000D7080 */  sll   $t6, $t5, 2
/* 1658F4 801BF884 010E7821 */  addu  $t7, $t0, $t6
/* 1658F8 801BF888 E5F00000 */  swc1  $f16, ($t7)
/* 1658FC 801BF88C 8C780000 */  lw    $t8, ($v1)
/* 165900 801BF890 0018C880 */  sll   $t9, $t8, 2
/* 165904 801BF894 00390821 */  addu  $at, $at, $t9
/* 165908 801BF898 E4206850 */  swc1  $f0, 0x6850($at)
/* 16590C 801BF89C 8C620000 */  lw    $v0, ($v1)
/* 165910 801BF8A0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 165914 801BF8A4 44812000 */  mtc1  $at, $f4
/* 165918 801BF8A8 00021080 */  sll   $v0, $v0, 2
/* 16591C 801BF8AC 00C25821 */  addu  $t3, $a2, $v0
/* 165920 801BF8B0 C5720000 */  lwc1  $f18, ($t3)
/* 165924 801BF8B4 01226021 */  addu  $t4, $t1, $v0
/* 165928 801BF8B8 3C01801D */  lui   $at, %hi(D_801CE5E4) # $at, 0x801d
/* 16592C 801BF8BC 46049182 */  mul.s $f6, $f18, $f4
/* 165930 801BF8C0 3C0B800F */  lui   $t3, 0x800f
/* 165934 801BF8C4 E5860000 */  swc1  $f6, ($t4)
/* 165938 801BF8C8 8C6D0000 */  lw    $t5, ($v1)
/* 16593C 801BF8CC C428E5E4 */  lwc1  $f8, %lo(D_801CE5E4)($at)
/* 165940 801BF8D0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 165944 801BF8D4 000D7080 */  sll   $t6, $t5, 2
/* 165948 801BF8D8 014E7821 */  addu  $t7, $t2, $t6
/* 16594C 801BF8DC E5E80000 */  swc1  $f8, ($t7)
/* 165950 801BF8E0 8C780000 */  lw    $t8, ($v1)
/* 165954 801BF8E4 44815000 */  mtc1  $at, $f10
/* 165958 801BF8E8 3C01800E */  lui   $at, 0x800e
/* 16595C 801BF8EC 0018C880 */  sll   $t9, $t8, 2
/* 165960 801BF8F0 00390821 */  addu  $at, $at, $t9
/* 165964 801BF8F4 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 165968 801BF8F8 8C620000 */  lw    $v0, ($v1)
/* 16596C 801BF8FC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 165970 801BF900 00021080 */  sll   $v0, $v0, 2
/* 165974 801BF904 01625821 */  addu  $t3, $t3, $v0
/* 165978 801BF908 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 16597C 801BF90C 00E26821 */  addu  $t5, $a3, $v0
/* 165980 801BF910 316C0001 */  andi  $t4, $t3, 1
/* 165984 801BF914 51800017 */  beql  $t4, $zero, .L801BF974_ovl7
/* 165988 801BF918 00C21821 */   addu  $v1, $a2, $v0
/* 16598C 801BF91C 44810000 */  mtc1  $at, $f0
/* 165990 801BF920 3C01801D */  lui   $at, %hi(D_801CE5E8) # $at, 0x801d
/* 165994 801BF924 C432E5E8 */  lwc1  $f18, %lo(D_801CE5E8)($at)
/* 165998 801BF928 C5B00000 */  lwc1  $f16, ($t5)
/* 16599C 801BF92C 01027021 */  addu  $t6, $t0, $v0
/* 1659A0 801BF930 46128102 */  mul.s $f4, $f16, $f18
/* 1659A4 801BF934 E5C40000 */  swc1  $f4, ($t6)
/* 1659A8 801BF938 8C6F0000 */  lw    $t7, ($v1)
/* 1659AC 801BF93C 000FC080 */  sll   $t8, $t7, 2
/* 1659B0 801BF940 01382021 */  addu  $a0, $t1, $t8
/* 1659B4 801BF944 C4860000 */  lwc1  $f6, ($a0)
/* 1659B8 801BF948 46003202 */  mul.s $f8, $f6, $f0
/* 1659BC 801BF94C E4880000 */  swc1  $f8, ($a0)
/* 1659C0 801BF950 8C790000 */  lw    $t9, ($v1)
/* 1659C4 801BF954 00195880 */  sll   $t3, $t9, 2
/* 1659C8 801BF958 014B2821 */  addu  $a1, $t2, $t3
/* 1659CC 801BF95C C4AA0000 */  lwc1  $f10, ($a1)
/* 1659D0 801BF960 46005402 */  mul.s $f16, $f10, $f0
/* 1659D4 801BF964 E4B00000 */  swc1  $f16, ($a1)
/* 1659D8 801BF968 8C620000 */  lw    $v0, ($v1)
/* 1659DC 801BF96C 00021080 */  sll   $v0, $v0, 2
/* 1659E0 801BF970 00C21821 */  addu  $v1, $a2, $v0
.L801BF974_ovl7:
/* 1659E4 801BF974 3C01801D */  lui   $at, %hi(D_801CE5EC) # $at, 0x801d
/* 1659E8 801BF978 C424E5EC */  lwc1  $f4, %lo(D_801CE5EC)($at)
/* 1659EC 801BF97C C4720000 */  lwc1  $f18, ($v1)
/* 1659F0 801BF980 46049182 */  mul.s $f6, $f18, $f4
/* 1659F4 801BF984 0C02BE85 */  jal   func_800AFA14
/* 1659F8 801BF988 E4660000 */   swc1  $f6, ($v1)
/* 1659FC 801BF98C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 165A00 801BF990 27BD0018 */  addiu $sp, $sp, 0x18
/* 165A04 801BF994 03E00008 */  jr    $ra
/* 165A08 801BF998 00000000 */   nop   

.type func_801BF770_ovl7, @function
.size func_801BF770_ovl7, . - func_801BF770_ovl7

glabel func_801BF99C_ovl7
/* 165A0C 801BF99C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 165A10 801BF9A0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 165A14 801BF9A4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 165A18 801BF9A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 165A1C 801BF9AC AFB00018 */  sw    $s0, 0x18($sp)
/* 165A20 801BF9B0 AFA40020 */  sw    $a0, 0x20($sp)
/* 165A24 801BF9B4 8C500000 */  lw    $s0, ($v0)
/* 165A28 801BF9B8 3C0E800F */  lui   $t6, 0x800f
/* 165A2C 801BF9BC 3C01800E */  lui   $at, 0x800e
/* 165A30 801BF9C0 00108080 */  sll   $s0, $s0, 2
/* 165A34 801BF9C4 01D07021 */  addu  $t6, $t6, $s0
/* 165A38 801BF9C8 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 165A3C 801BF9CC 00300821 */  addu  $at, $at, $s0
/* 165A40 801BF9D0 240F0003 */  li    $t7, 3
/* 165A44 801BF9D4 1DC0000D */  bgtz  $t6, .L801BFA0C_ovl7
/* 165A48 801BF9D8 3C04800E */   lui   $a0, 0x800e
/* 165A4C 801BF9DC AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 165A50 801BF9E0 8C580000 */  lw    $t8, ($v0)
/* 165A54 801BF9E4 3C05801C */  lui   $a1, %hi(D_801BF598) # $a1, 0x801c
/* 165A58 801BF9E8 24A5F598 */  addiu $a1, %lo(D_801BF598) # addiu $a1, $a1, -0xa68
/* 165A5C 801BF9EC 0018C880 */  sll   $t9, $t8, 2
/* 165A60 801BF9F0 00992021 */  addu  $a0, $a0, $t9
/* 165A64 801BF9F4 0C02C7B2 */  jal   assign_new_process_entry
/* 165A68 801BF9F8 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 165A6C 801BF9FC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 165A70 801BFA00 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 165A74 801BFA04 8C500000 */  lw    $s0, ($v0)
/* 165A78 801BFA08 00108080 */  sll   $s0, $s0, 2
.L801BFA0C_ovl7:
/* 165A7C 801BFA0C 3C01801D */  lui   $at, %hi(D_801CE5F0) # $at, 0x801d
/* 165A80 801BFA10 C424E5F0 */  lwc1  $f4, %lo(D_801CE5F0)($at)
/* 165A84 801BFA14 3C01800F */  lui   $at, 0x800f
/* 165A88 801BFA18 00300821 */  addu  $at, $at, $s0
/* 165A8C 801BFA1C C426A6E0 */  lwc1  $f6, -0x5920($at)
/* 165A90 801BFA20 3C01800E */  lui   $at, 0x800e
/* 165A94 801BFA24 00300821 */  addu  $at, $at, $s0
/* 165A98 801BFA28 4604303E */  c.le.s $f6, $f4
/* 165A9C 801BFA2C 24080003 */  li    $t0, 3
/* 165AA0 801BFA30 3C04800E */  lui   $a0, 0x800e
/* 165AA4 801BFA34 4500000D */  bc1f  .L801BFA6C_ovl7
/* 165AA8 801BFA38 00000000 */   nop   
/* 165AAC 801BFA3C AC28DC50 */  sw    $t0, -0x23b0($at)
/* 165AB0 801BFA40 8C490000 */  lw    $t1, ($v0)
/* 165AB4 801BFA44 3C05801C */  lui   $a1, %hi(D_801BF598) # $a1, 0x801c
/* 165AB8 801BFA48 24A5F598 */  addiu $a1, %lo(D_801BF598) # addiu $a1, $a1, -0xa68
/* 165ABC 801BFA4C 00095080 */  sll   $t2, $t1, 2
/* 165AC0 801BFA50 008A2021 */  addu  $a0, $a0, $t2
/* 165AC4 801BFA54 0C02C7B2 */  jal   assign_new_process_entry
/* 165AC8 801BFA58 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 165ACC 801BFA5C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 165AD0 801BFA60 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 165AD4 801BFA64 8C500000 */  lw    $s0, ($v0)
/* 165AD8 801BFA68 00108080 */  sll   $s0, $s0, 2
.L801BFA6C_ovl7:
/* 165ADC 801BFA6C 3C01800E */  lui   $at, 0x800e
/* 165AE0 801BFA70 00300821 */  addu  $at, $at, $s0
/* 165AE4 801BFA74 C4283210 */  lwc1  $f8, 0x3210($at)
/* 165AE8 801BFA78 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 165AEC 801BFA7C 44815000 */  mtc1  $at, $f10
/* 165AF0 801BFA80 3C0B800F */  lui   $t3, 0x800f
/* 165AF4 801BFA84 01705821 */  addu  $t3, $t3, $s0
/* 165AF8 801BFA88 460A403C */  c.lt.s $f8, $f10
/* 165AFC 801BFA8C 00000000 */  nop   
/* 165B00 801BFA90 45000023 */  bc1f  .L801BFB20_ovl7
/* 165B04 801BFA94 00000000 */   nop   
/* 165B08 801BFA98 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 165B0C 801BFA9C 240D0003 */  li    $t5, 3
/* 165B10 801BFAA0 3C04800E */  lui   $a0, 0x800e
/* 165B14 801BFAA4 316C0001 */  andi  $t4, $t3, 1
/* 165B18 801BFAA8 11800010 */  beqz  $t4, .L801BFAEC_ovl7
/* 165B1C 801BFAAC 3C01801D */   lui   $at, 0x801d
/* 165B20 801BFAB0 3C01800E */  lui   $at, 0x800e
/* 165B24 801BFAB4 00300821 */  addu  $at, $at, $s0
/* 165B28 801BFAB8 AC2DDC50 */  sw    $t5, -0x23b0($at)
/* 165B2C 801BFABC 8C4E0000 */  lw    $t6, ($v0)
/* 165B30 801BFAC0 3C05801C */  lui   $a1, %hi(D_801BF598) # $a1, 0x801c
/* 165B34 801BFAC4 24A5F598 */  addiu $a1, %lo(D_801BF598) # addiu $a1, $a1, -0xa68
/* 165B38 801BFAC8 000E7880 */  sll   $t7, $t6, 2
/* 165B3C 801BFACC 008F2021 */  addu  $a0, $a0, $t7
/* 165B40 801BFAD0 0C02C7B2 */  jal   assign_new_process_entry
/* 165B44 801BFAD4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 165B48 801BFAD8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 165B4C 801BFADC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 165B50 801BFAE0 8F100000 */  lw    $s0, ($t8)
/* 165B54 801BFAE4 1000000E */  b     .L801BFB20_ovl7
/* 165B58 801BFAE8 00108080 */   sll   $s0, $s0, 2
.L801BFAEC_ovl7:
/* 165B5C 801BFAEC C430E5F4 */  lwc1  $f16, -0x1a0c($at)
/* 165B60 801BFAF0 3C01800E */  lui   $at, 0x800e
/* 165B64 801BFAF4 00300821 */  addu  $at, $at, $s0
/* 165B68 801BFAF8 E4303750 */  swc1  $f16, 0x3750($at)
/* 165B6C 801BFAFC 8C590000 */  lw    $t9, ($v0)
/* 165B70 801BFB00 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 165B74 801BFB04 44819000 */  mtc1  $at, $f18
/* 165B78 801BFB08 3C01800E */  lui   $at, 0x800e
/* 165B7C 801BFB0C 00194080 */  sll   $t0, $t9, 2
/* 165B80 801BFB10 00280821 */  addu  $at, $at, $t0
/* 165B84 801BFB14 E4323C90 */  swc1  $f18, 0x3c90($at)
/* 165B88 801BFB18 8C500000 */  lw    $s0, ($v0)
/* 165B8C 801BFB1C 00108080 */  sll   $s0, $s0, 2
.L801BFB20_ovl7:
/* 165B90 801BFB20 3C09800F */  lui   $t1, 0x800f
/* 165B94 801BFB24 01304821 */  addu  $t1, $t1, $s0
/* 165B98 801BFB28 8D298920 */  lw    $t1, -0x76e0($t1)
/* 165B9C 801BFB2C 24010001 */  li    $at, 1
/* 165BA0 801BFB30 3C0A800F */  lui   $t2, 0x800f
/* 165BA4 801BFB34 15210007 */  bne   $t1, $at, .L801BFB54_ovl7
/* 165BA8 801BFB38 01505021 */   addu  $t2, $t2, $s0
/* 165BAC 801BFB3C 8D4A8AE0 */  lw    $t2, -0x7520($t2)
/* 165BB0 801BFB40 314B0001 */  andi  $t3, $t2, 1
/* 165BB4 801BFB44 51600004 */  beql  $t3, $zero, .L801BFB58_ovl7
/* 165BB8 801BFB48 8FBF001C */   lw    $ra, 0x1c($sp)
/* 165BBC 801BFB4C 0C02CD48 */  jal   func_800B3520
/* 165BC0 801BFB50 00000000 */   nop   
.L801BFB54_ovl7:
/* 165BC4 801BFB54 8FBF001C */  lw    $ra, 0x1c($sp)
.L801BFB58_ovl7:
/* 165BC8 801BFB58 8FB00018 */  lw    $s0, 0x18($sp)
/* 165BCC 801BFB5C 27BD0020 */  addiu $sp, $sp, 0x20
/* 165BD0 801BFB60 03E00008 */  jr    $ra
/* 165BD4 801BFB64 00000000 */   nop   

.type func_801BF99C_ovl7, @function
.size func_801BF99C_ovl7, . - func_801BF99C_ovl7

glabel func_801BFB68_ovl7
/* 165BD8 801BFB68 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165BDC 801BFB6C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165BE0 801BFB70 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 165BE4 801BFB74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 165BE8 801BFB78 AFA40018 */  sw    $a0, 0x18($sp)
/* 165BEC 801BFB7C 8C620000 */  lw    $v0, ($v1)
/* 165BF0 801BFB80 3C01800E */  lui   $at, 0x800e
/* 165BF4 801BFB84 240E0001 */  li    $t6, 1
/* 165BF8 801BFB88 00021080 */  sll   $v0, $v0, 2
/* 165BFC 801BFB8C 00220821 */  addu  $at, $at, $v0
/* 165C00 801BFB90 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 165C04 801BFB94 8C6F0000 */  lw    $t7, ($v1)
/* 165C08 801BFB98 3C19800F */  lui   $t9, 0x800f
/* 165C0C 801BFB9C 3C04800E */  lui   $a0, 0x800e
/* 165C10 801BFBA0 000FC080 */  sll   $t8, $t7, 2
/* 165C14 801BFBA4 0338C821 */  addu  $t9, $t9, $t8
/* 165C18 801BFBA8 8F399FE0 */  lw    $t9, -0x6020($t9)
/* 165C1C 801BFBAC 00822021 */  addu  $a0, $a0, $v0
/* 165C20 801BFBB0 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 165C24 801BFBB4 2B210002 */  slti  $at, $t9, 2
/* 165C28 801BFBB8 10200005 */  beqz  $at, .L801BFBD0_ovl7
/* 165C2C 801BFBBC 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165C30 801BFBC0 3C08801D */  lui   $t0, %hi(D_801CD0B4) # $t0, 0x801d
/* 165C34 801BFBC4 2508D0B4 */  addiu $t0, %lo(D_801CD0B4) # addiu $t0, $t0, -0x2f4c
/* 165C38 801BFBC8 10000004 */  b     .L801BFBDC_ovl7
/* 165C3C 801BFBCC AC880098 */   sw    $t0, 0x98($a0)
.L801BFBD0_ovl7:
/* 165C40 801BFBD0 3C09801D */  lui   $t1, %hi(D_801CD0D8) # $t1, 0x801d
/* 165C44 801BFBD4 2529D0D8 */  addiu $t1, %lo(D_801CD0D8) # addiu $t1, $t1, -0x2f28
/* 165C48 801BFBD8 AC890098 */  sw    $t1, 0x98($a0)
.L801BFBDC_ovl7:
/* 165C4C 801BFBDC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165C50 801BFBE0 3C0C800F */  lui   $t4, %hi(D_800E8920) # $t4, 0x800f
/* 165C54 801BFBE4 258C8920 */  addiu $t4, %lo(D_800E8920) # addiu $t4, $t4, -0x76e0
/* 165C58 801BFBE8 8C6A0000 */  lw    $t2, ($v1)
/* 165C5C 801BFBEC 24010001 */  li    $at, 1
/* 165C60 801BFBF0 000A5880 */  sll   $t3, $t2, 2
/* 165C64 801BFBF4 016C2021 */  addu  $a0, $t3, $t4
/* 165C68 801BFBF8 8C8D0000 */  lw    $t5, ($a0)
/* 165C6C 801BFBFC 55A1000B */  bnel  $t5, $at, .L801BFC2C_ovl7
/* 165C70 801BFC00 AC800000 */   sw    $zero, ($a0)
/* 165C74 801BFC04 0C029D9E */  jal   play_sound
/* 165C78 801BFC08 24040119 */   li    $a0, 281
/* 165C7C 801BFC0C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165C80 801BFC10 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165C84 801BFC14 3C18800F */  lui   $t8, %hi(D_800E8920) # $t8, 0x800f
/* 165C88 801BFC18 27188920 */  addiu $t8, %lo(D_800E8920) # addiu $t8, $t8, -0x76e0
/* 165C8C 801BFC1C 8C6E0000 */  lw    $t6, ($v1)
/* 165C90 801BFC20 000E7880 */  sll   $t7, $t6, 2
/* 165C94 801BFC24 01F82021 */  addu  $a0, $t7, $t8
/* 165C98 801BFC28 AC800000 */  sw    $zero, ($a0)
.L801BFC2C_ovl7:
/* 165C9C 801BFC2C 8C790000 */  lw    $t9, ($v1)
/* 165CA0 801BFC30 3C09800F */  lui   $t1, %hi(D_800E9FE0) # $t1, 0x800f
/* 165CA4 801BFC34 25299FE0 */  addiu $t1, %lo(D_800E9FE0) # addiu $t1, $t1, -0x6020
/* 165CA8 801BFC38 00194080 */  sll   $t0, $t9, 2
/* 165CAC 801BFC3C 01091021 */  addu  $v0, $t0, $t1
/* 165CB0 801BFC40 8C4A0000 */  lw    $t2, ($v0)
/* 165CB4 801BFC44 254B0001 */  addiu $t3, $t2, 1
/* 165CB8 801BFC48 0C066C59 */  jal   func_8019B164_ovl7
/* 165CBC 801BFC4C AC4B0000 */   sw    $t3, ($v0)
/* 165CC0 801BFC50 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 165CC4 801BFC54 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 165CC8 801BFC58 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 165CCC 801BFC5C 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 165CD0 801BFC60 8C6C0000 */  lw    $t4, ($v1)
/* 165CD4 801BFC64 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 165CD8 801BFC68 44813000 */  mtc1  $at, $f6
/* 165CDC 801BFC6C 000C6880 */  sll   $t5, $t4, 2
/* 165CE0 801BFC70 00AD1021 */  addu  $v0, $a1, $t5
/* 165CE4 801BFC74 C4440000 */  lwc1  $f4, ($v0)
/* 165CE8 801BFC78 3C06800E */  lui   $a2, %hi(D_800E64D0) # $a2, 0x800e
/* 165CEC 801BFC7C 24C664D0 */  addiu $a2, %lo(D_800E64D0) # addiu $a2, $a2, 0x64d0
/* 165CF0 801BFC80 C4C00000 */  lwc1  $f0, ($a2)
/* 165CF4 801BFC84 44805000 */  mtc1  $zero, $f10
/* 165CF8 801BFC88 46062202 */  mul.s $f8, $f4, $f6
/* 165CFC 801BFC8C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 165D00 801BFC90 460A003C */  c.lt.s $f0, $f10
/* 165D04 801BFC94 44818000 */  mtc1  $at, $f16
/* 165D08 801BFC98 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 165D0C 801BFC9C 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 165D10 801BFCA0 45000003 */  bc1f  .L801BFCB0_ovl7
/* 165D14 801BFCA4 E4480000 */   swc1  $f8, ($v0)
/* 165D18 801BFCA8 10000002 */  b     .L801BFCB4_ovl7
/* 165D1C 801BFCAC 46000087 */   neg.s $f2, $f0
.L801BFCB0_ovl7:
/* 165D20 801BFCB0 46000086 */  mov.s $f2, $f0
.L801BFCB4_ovl7:
/* 165D24 801BFCB4 4602803E */  c.le.s $f16, $f2
/* 165D28 801BFCB8 3C01801D */  lui   $at, %hi(D_801CE5F8) # $at, 0x801d
/* 165D2C 801BFCBC 4502000A */  bc1fl .L801BFCE8_ovl7
/* 165D30 801BFCC0 8C790000 */   lw    $t9, ($v1)
/* 165D34 801BFCC4 8C6E0000 */  lw    $t6, ($v1)
/* 165D38 801BFCC8 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 165D3C 801BFCCC C432E5F8 */  lwc1  $f18, %lo(D_801CE5F8)($at)
/* 165D40 801BFCD0 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 165D44 801BFCD4 000E7880 */  sll   $t7, $t6, 2
/* 165D48 801BFCD8 008FC021 */  addu  $t8, $a0, $t7
/* 165D4C 801BFCDC 10000007 */  b     .L801BFCFC_ovl7
/* 165D50 801BFCE0 E7120000 */   swc1  $f18, ($t8)
/* 165D54 801BFCE4 8C790000 */  lw    $t9, ($v1)
.L801BFCE8_ovl7:
/* 165D58 801BFCE8 3C01801D */  lui   $at, %hi(D_801CE5FC) # $at, 0x801d
/* 165D5C 801BFCEC C424E5FC */  lwc1  $f4, %lo(D_801CE5FC)($at)
/* 165D60 801BFCF0 00194080 */  sll   $t0, $t9, 2
/* 165D64 801BFCF4 00884821 */  addu  $t1, $a0, $t0
/* 165D68 801BFCF8 E5240000 */  swc1  $f4, ($t1)
.L801BFCFC_ovl7:
/* 165D6C 801BFCFC 8C620000 */  lw    $v0, ($v1)
/* 165D70 801BFD00 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 165D74 801BFD04 44814000 */  mtc1  $at, $f8
/* 165D78 801BFD08 00021080 */  sll   $v0, $v0, 2
/* 165D7C 801BFD0C 00825021 */  addu  $t2, $a0, $v0
/* 165D80 801BFD10 C5460000 */  lwc1  $f6, ($t2)
/* 165D84 801BFD14 00A25821 */  addu  $t3, $a1, $v0
/* 165D88 801BFD18 C5700000 */  lwc1  $f16, ($t3)
/* 165D8C 801BFD1C 46083002 */  mul.s $f0, $f6, $f8
/* 165D90 801BFD20 00C26021 */  addu  $t4, $a2, $v0
/* 165D94 801BFD24 44802000 */  mtc1  $zero, $f4
/* 165D98 801BFD28 3C01800E */  lui   $at, 0x800e
/* 165D9C 801BFD2C 46000280 */  add.s $f10, $f0, $f0
/* 165DA0 801BFD30 46105482 */  mul.s $f18, $f10, $f16
/* 165DA4 801BFD34 E5920000 */  swc1  $f18, ($t4)
/* 165DA8 801BFD38 8C6D0000 */  lw    $t5, ($v1)
/* 165DAC 801BFD3C 240C003C */  li    $t4, 60
/* 165DB0 801BFD40 000D7080 */  sll   $t6, $t5, 2
/* 165DB4 801BFD44 002E0821 */  addu  $at, $at, $t6
/* 165DB8 801BFD48 E4246690 */  swc1  $f4, 0x6690($at)
/* 165DBC 801BFD4C 8C6F0000 */  lw    $t7, ($v1)
/* 165DC0 801BFD50 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 165DC4 801BFD54 44813000 */  mtc1  $at, $f6
/* 165DC8 801BFD58 3C01800E */  lui   $at, 0x800e
/* 165DCC 801BFD5C 000FC080 */  sll   $t8, $t7, 2
/* 165DD0 801BFD60 00380821 */  addu  $at, $at, $t8
/* 165DD4 801BFD64 E4266850 */  swc1  $f6, 0x6850($at)
/* 165DD8 801BFD68 8C620000 */  lw    $v0, ($v1)
/* 165DDC 801BFD6C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 165DE0 801BFD70 44815000 */  mtc1  $at, $f10
/* 165DE4 801BFD74 00021080 */  sll   $v0, $v0, 2
/* 165DE8 801BFD78 0082C821 */  addu  $t9, $a0, $v0
/* 165DEC 801BFD7C C7280000 */  lwc1  $f8, ($t9)
/* 165DF0 801BFD80 3C01800E */  lui   $at, 0x800e
/* 165DF4 801BFD84 00220821 */  addu  $at, $at, $v0
/* 165DF8 801BFD88 460A4402 */  mul.s $f16, $f8, $f10
/* 165DFC 801BFD8C E4303210 */  swc1  $f16, 0x3210($at)
/* 165E00 801BFD90 8C680000 */  lw    $t0, ($v1)
/* 165E04 801BFD94 3C01801D */  lui   $at, %hi(D_801CE600) # $at, 0x801d
/* 165E08 801BFD98 C432E600 */  lwc1  $f18, %lo(D_801CE600)($at)
/* 165E0C 801BFD9C 3C01800E */  lui   $at, 0x800e
/* 165E10 801BFDA0 00084880 */  sll   $t1, $t0, 2
/* 165E14 801BFDA4 00290821 */  addu  $at, $at, $t1
/* 165E18 801BFDA8 E4323750 */  swc1  $f18, 0x3750($at)
/* 165E1C 801BFDAC 8C6A0000 */  lw    $t2, ($v1)
/* 165E20 801BFDB0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 165E24 801BFDB4 44812000 */  mtc1  $at, $f4
/* 165E28 801BFDB8 3C01800E */  lui   $at, 0x800e
/* 165E2C 801BFDBC 000A5880 */  sll   $t3, $t2, 2
/* 165E30 801BFDC0 002B0821 */  addu  $at, $at, $t3
/* 165E34 801BFDC4 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 165E38 801BFDC8 8C6D0000 */  lw    $t5, ($v1)
/* 165E3C 801BFDCC 3C01800F */  lui   $at, 0x800f
/* 165E40 801BFDD0 000D7080 */  sll   $t6, $t5, 2
/* 165E44 801BFDD4 002E0821 */  addu  $at, $at, $t6
/* 165E48 801BFDD8 0C02BE85 */  jal   func_800AFA14
/* 165E4C 801BFDDC AC2C9E20 */   sw    $t4, -0x61e0($at)
/* 165E50 801BFDE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 165E54 801BFDE4 27BD0018 */  addiu $sp, $sp, 0x18
/* 165E58 801BFDE8 03E00008 */  jr    $ra
/* 165E5C 801BFDEC 00000000 */   nop   

.type func_801BFB68_ovl7, @function
.size func_801BFB68_ovl7, . - func_801BFB68_ovl7

glabel func_801BFDF0_ovl7
/* 165E60 801BFDF0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 165E64 801BFDF4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 165E68 801BFDF8 AFA40000 */  sw    $a0, ($sp)
/* 165E6C 801BFDFC 3C0E800F */  lui   $t6, 0x800f
/* 165E70 801BFE00 8C430000 */  lw    $v1, ($v0)
/* 165E74 801BFE04 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 165E78 801BFE08 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 165E7C 801BFE0C 00031880 */  sll   $v1, $v1, 2
/* 165E80 801BFE10 01C37021 */  addu  $t6, $t6, $v1
/* 165E84 801BFE14 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 165E88 801BFE18 00A32021 */  addu  $a0, $a1, $v1
/* 165E8C 801BFE1C 3C01801D */  lui   $at, 0x801d
/* 165E90 801BFE20 31CF0001 */  andi  $t7, $t6, 1
/* 165E94 801BFE24 11E00035 */  beqz  $t7, .L801BFEFC_ovl7
/* 165E98 801BFE28 00000000 */   nop   
/* 165E9C 801BFE2C C4800000 */  lwc1  $f0, ($a0)
/* 165EA0 801BFE30 44802000 */  mtc1  $zero, $f4
/* 165EA4 801BFE34 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 165EA8 801BFE38 44813000 */  mtc1  $at, $f6
/* 165EAC 801BFE3C 4604003C */  c.lt.s $f0, $f4
/* 165EB0 801BFE40 3C01801D */  lui   $at, %hi(D_801CE604) # $at, 0x801d
/* 165EB4 801BFE44 45020004 */  bc1fl .L801BFE58_ovl7
/* 165EB8 801BFE48 46000086 */   mov.s $f2, $f0
/* 165EBC 801BFE4C 10000002 */  b     .L801BFE58_ovl7
/* 165EC0 801BFE50 46000087 */   neg.s $f2, $f0
/* 165EC4 801BFE54 46000086 */  mov.s $f2, $f0
.L801BFE58_ovl7:
/* 165EC8 801BFE58 4602303C */  c.lt.s $f6, $f2
/* 165ECC 801BFE5C 00000000 */  nop   
/* 165ED0 801BFE60 45020006 */  bc1fl .L801BFE7C_ovl7
/* 165ED4 801BFE64 44808000 */   mtc1  $zero, $f16
/* 165ED8 801BFE68 C428E604 */  lwc1  $f8, %lo(D_801CE604)($at)
/* 165EDC 801BFE6C 46080282 */  mul.s $f10, $f0, $f8
/* 165EE0 801BFE70 10000013 */  b     .L801BFEC0_ovl7
/* 165EE4 801BFE74 E48A0000 */   swc1  $f10, ($a0)
/* 165EE8 801BFE78 44808000 */  mtc1  $zero, $f16
.L801BFE7C_ovl7:
/* 165EEC 801BFE7C 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 165EF0 801BFE80 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 165EF4 801BFE84 0083C021 */  addu  $t8, $a0, $v1
/* 165EF8 801BFE88 E7100000 */  swc1  $f16, ($t8)
/* 165EFC 801BFE8C 8C430000 */  lw    $v1, ($v0)
/* 165F00 801BFE90 3C01801D */  lui   $at, %hi(D_801CE608) # $at, 0x801d
/* 165F04 801BFE94 00031880 */  sll   $v1, $v1, 2
/* 165F08 801BFE98 0083C821 */  addu  $t9, $a0, $v1
/* 165F0C 801BFE9C C7320000 */  lwc1  $f18, ($t9)
/* 165F10 801BFEA0 00A34021 */  addu  $t0, $a1, $v1
/* 165F14 801BFEA4 E5120000 */  swc1  $f18, ($t0)
/* 165F18 801BFEA8 8C490000 */  lw    $t1, ($v0)
/* 165F1C 801BFEAC C424E608 */  lwc1  $f4, %lo(D_801CE608)($at)
/* 165F20 801BFEB0 3C01800E */  lui   $at, 0x800e
/* 165F24 801BFEB4 00095080 */  sll   $t2, $t1, 2
/* 165F28 801BFEB8 002A0821 */  addu  $at, $at, $t2
/* 165F2C 801BFEBC E4246850 */  swc1  $f4, 0x6850($at)
.L801BFEC0_ovl7:
/* 165F30 801BFEC0 8C4B0000 */  lw    $t3, ($v0)
/* 165F34 801BFEC4 3C01801D */  lui   $at, %hi(D_801CE60C) # $at, 0x801d
/* 165F38 801BFEC8 C426E60C */  lwc1  $f6, %lo(D_801CE60C)($at)
/* 165F3C 801BFECC 3C01800E */  lui   $at, 0x800e
/* 165F40 801BFED0 000B6080 */  sll   $t4, $t3, 2
/* 165F44 801BFED4 002C0821 */  addu  $at, $at, $t4
/* 165F48 801BFED8 E4263750 */  swc1  $f6, 0x3750($at)
/* 165F4C 801BFEDC 8C4D0000 */  lw    $t5, ($v0)
/* 165F50 801BFEE0 3C01801D */  lui   $at, %hi(D_801CE610) # $at, 0x801d
/* 165F54 801BFEE4 C428E610 */  lwc1  $f8, %lo(D_801CE610)($at)
/* 165F58 801BFEE8 3C01800E */  lui   $at, 0x800e
/* 165F5C 801BFEEC 000D7080 */  sll   $t6, $t5, 2
/* 165F60 801BFEF0 002E0821 */  addu  $at, $at, $t6
/* 165F64 801BFEF4 03E00008 */  jr    $ra
/* 165F68 801BFEF8 E4283C90 */   swc1  $f8, 0x3c90($at)

.L801BFEFC_ovl7:
/* 165F6C 801BFEFC C42AE614 */  lwc1  $f10, -0x19ec($at)
/* 165F70 801BFF00 3C01800E */  lui   $at, 0x800e
/* 165F74 801BFF04 00230821 */  addu  $at, $at, $v1
/* 165F78 801BFF08 E42A3750 */  swc1  $f10, 0x3750($at)
/* 165F7C 801BFF0C 8C4F0000 */  lw    $t7, ($v0)
/* 165F80 801BFF10 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 165F84 801BFF14 44818000 */  mtc1  $at, $f16
/* 165F88 801BFF18 3C01800E */  lui   $at, 0x800e
/* 165F8C 801BFF1C 000FC080 */  sll   $t8, $t7, 2
/* 165F90 801BFF20 00380821 */  addu  $at, $at, $t8
/* 165F94 801BFF24 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 165F98 801BFF28 03E00008 */  jr    $ra
/* 165F9C 801BFF2C 00000000 */   nop   

.type func_801BFDF0_ovl7, @function
.size func_801BFDF0_ovl7, . - func_801BFDF0_ovl7

glabel func_801BFF30_ovl7
/* 165FA0 801BFF30 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 165FA4 801BFF34 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 165FA8 801BFF38 8CAE0000 */  lw    $t6, ($a1)
/* 165FAC 801BFF3C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 165FB0 801BFF40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 165FB4 801BFF44 AFA40018 */  sw    $a0, 0x18($sp)
/* 165FB8 801BFF48 8DC20000 */  lw    $v0, ($t6)
/* 165FBC 801BFF4C 3C03800E */  lui   $v1, 0x800e
/* 165FC0 801BFF50 3C01800E */  lui   $at, 0x800e
/* 165FC4 801BFF54 00021080 */  sll   $v0, $v0, 2
/* 165FC8 801BFF58 00621821 */  addu  $v1, $v1, $v0
/* 165FCC 801BFF5C 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 165FD0 801BFF60 00220821 */  addu  $at, $at, $v0
/* 165FD4 801BFF64 240F0002 */  li    $t7, 2
/* 165FD8 801BFF68 3C18801D */  lui   $t8, %hi(D_801CD0FC) # $t8, 0x801d
/* 165FDC 801BFF6C AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 165FE0 801BFF70 2718D0FC */  addiu $t8, %lo(D_801CD0FC) # addiu $t8, $t8, -0x2f04
/* 165FE4 801BFF74 AC780098 */  sw    $t8, 0x98($v1)
/* 165FE8 801BFF78 8CA80000 */  lw    $t0, ($a1)
/* 165FEC 801BFF7C 3C01800F */  lui   $at, 0x800f
/* 165FF0 801BFF80 24190001 */  li    $t9, 1
/* 165FF4 801BFF84 8D090000 */  lw    $t1, ($t0)
/* 165FF8 801BFF88 24040119 */  li    $a0, 281
/* 165FFC 801BFF8C 00095080 */  sll   $t2, $t1, 2
/* 166000 801BFF90 002A0821 */  addu  $at, $at, $t2
/* 166004 801BFF94 0C029D9E */  jal   play_sound
/* 166008 801BFF98 AC398920 */   sw    $t9, -0x76e0($at)
/* 16600C 801BFF9C 0C02CD48 */  jal   func_800B3520
/* 166010 801BFFA0 00000000 */   nop   
/* 166014 801BFFA4 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 166018 801BFFA8 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 16601C 801BFFAC 3C0E800F */  lui   $t6, 0x800f
/* 166020 801BFFB0 8D6C0000 */  lw    $t4, ($t3)
/* 166024 801BFFB4 000C6880 */  sll   $t5, $t4, 2
/* 166028 801BFFB8 01CD7021 */  addu  $t6, $t6, $t5
/* 16602C 801BFFBC 8DCE9C60 */  lw    $t6, -0x63a0($t6)
/* 166030 801BFFC0 2DC10006 */  sltiu $at, $t6, 6
/* 166034 801BFFC4 10200016 */  beqz  $at, .L801C0020_ovl7
/* 166038 801BFFC8 000E7080 */   sll   $t6, $t6, 2
/* 16603C 801BFFCC 3C01801D */  lui   $at, 0x801d
/* 166040 801BFFD0 002E0821 */  addu  $at, $at, $t6
/* 166044 801BFFD4 8C2EE618 */  lw    $t6, -0x19e8($at)
/* 166048 801BFFD8 01C00008 */  jr    $t6
/* 16604C 801BFFDC 00000000 */   nop   
/* 166050 801BFFE0 0C002DAF */  jal   finish_current_thread
/* 166054 801BFFE4 2404003C */   li    $a0, 60
/* 166058 801BFFE8 1000000F */  b     .L801C0028_ovl7
/* 16605C 801BFFEC 00000000 */   nop   
/* 166060 801BFFF0 0C002DAF */  jal   finish_current_thread
/* 166064 801BFFF4 24040032 */   li    $a0, 50
/* 166068 801BFFF8 1000000B */  b     .L801C0028_ovl7
/* 16606C 801BFFFC 00000000 */   nop   
/* 166070 801C0000 0C002DAF */  jal   finish_current_thread
/* 166074 801C0004 24040028 */   li    $a0, 40
/* 166078 801C0008 10000007 */  b     .L801C0028_ovl7
/* 16607C 801C000C 00000000 */   nop   
/* 166080 801C0010 0C002DAF */  jal   finish_current_thread
/* 166084 801C0014 2404001E */   li    $a0, 30
/* 166088 801C0018 10000003 */  b     .L801C0028_ovl7
/* 16608C 801C001C 00000000 */   nop   
.L801C0020_ovl7:
/* 166090 801C0020 0C002DAF */  jal   finish_current_thread
/* 166094 801C0024 2404001E */   li    $a0, 30
.L801C0028_ovl7:
/* 166098 801C0028 0C070184 */  jal   D_801C0610_ovl7
/* 16609C 801C002C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1660A0 801C0030 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1660A4 801C0034 27BD0018 */  addiu $sp, $sp, 0x18
/* 1660A8 801C0038 03E00008 */  jr    $ra
/* 1660AC 801C003C 00000000 */   nop   

.type func_801BFF30_ovl7, @function
.size func_801BFF30_ovl7, . - func_801BFF30_ovl7

glabel func_801C0040_ovl7
/* 1660B0 801C0040 03E00008 */  jr    $ra
/* 1660B4 801C0044 AFA40000 */   sw    $a0, ($sp)

.type func_801C0040_ovl7, @function
.size func_801C0040_ovl7, . - func_801C0040_ovl7

glabel func_801C0048_ovl7
/* 1660B8 801C0048 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1660BC 801C004C 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1660C0 801C0050 8CAE0000 */  lw    $t6, ($a1)
/* 1660C4 801C0054 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1660C8 801C0058 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1660CC 801C005C AFA40018 */  sw    $a0, 0x18($sp)
/* 1660D0 801C0060 8DC30000 */  lw    $v1, ($t6)
/* 1660D4 801C0064 3C04800E */  lui   $a0, 0x800e
/* 1660D8 801C0068 3C01800E */  lui   $at, 0x800e
/* 1660DC 801C006C 00031880 */  sll   $v1, $v1, 2
/* 1660E0 801C0070 00832021 */  addu  $a0, $a0, $v1
/* 1660E4 801C0074 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 1660E8 801C0078 00230821 */  addu  $at, $at, $v1
/* 1660EC 801C007C 240F0003 */  li    $t7, 3
/* 1660F0 801C0080 3C18801D */  lui   $t8, %hi(D_801CD120) # $t8, 0x801d
/* 1660F4 801C0084 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 1660F8 801C0088 2718D120 */  addiu $t8, %lo(D_801CD120) # addiu $t8, $t8, -0x2ee0
/* 1660FC 801C008C AC980098 */  sw    $t8, 0x98($a0)
/* 166100 801C0090 8CA20000 */  lw    $v0, ($a1)
/* 166104 801C0094 3C01800F */  lui   $at, 0x800f
/* 166108 801C0098 44802000 */  mtc1  $zero, $f4
/* 16610C 801C009C 8C590000 */  lw    $t9, ($v0)
/* 166110 801C00A0 00194080 */  sll   $t0, $t9, 2
/* 166114 801C00A4 00280821 */  addu  $at, $at, $t0
/* 166118 801C00A8 AC208920 */  sw    $zero, -0x76e0($at)
/* 16611C 801C00AC 8C490000 */  lw    $t1, ($v0)
/* 166120 801C00B0 3C01800F */  lui   $at, 0x800f
/* 166124 801C00B4 00095080 */  sll   $t2, $t1, 2
/* 166128 801C00B8 002A0821 */  addu  $at, $at, $t2
/* 16612C 801C00BC E424A6E0 */  swc1  $f4, -0x5920($at)
/* 166130 801C00C0 8C4B0000 */  lw    $t3, ($v0)
/* 166134 801C00C4 3C01801D */  lui   $at, %hi(D_801CE630) # $at, 0x801d
/* 166138 801C00C8 C426E630 */  lwc1  $f6, %lo(D_801CE630)($at)
/* 16613C 801C00CC 3C01800E */  lui   $at, 0x800e
/* 166140 801C00D0 000B6080 */  sll   $t4, $t3, 2
/* 166144 801C00D4 002C0821 */  addu  $at, $at, $t4
/* 166148 801C00D8 E4263750 */  swc1  $f6, 0x3750($at)
/* 16614C 801C00DC 8C4D0000 */  lw    $t5, ($v0)
/* 166150 801C00E0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 166154 801C00E4 44814000 */  mtc1  $at, $f8
/* 166158 801C00E8 3C01800E */  lui   $at, 0x800e
/* 16615C 801C00EC 000D7080 */  sll   $t6, $t5, 2
/* 166160 801C00F0 002E0821 */  addu  $at, $at, $t6
/* 166164 801C00F4 0C02BE85 */  jal   func_800AFA14
/* 166168 801C00F8 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 16616C 801C00FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 166170 801C0100 27BD0018 */  addiu $sp, $sp, 0x18
/* 166174 801C0104 03E00008 */  jr    $ra
/* 166178 801C0108 00000000 */   nop   

.type func_801C0048_ovl7, @function
.size func_801C0048_ovl7, . - func_801C0048_ovl7

glabel func_801C010C_ovl7
/* 16617C 801C010C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166180 801C0110 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166184 801C0114 AFA40000 */  sw    $a0, ($sp)
/* 166188 801C0118 3C0E800F */  lui   $t6, 0x800f
/* 16618C 801C011C 8C430000 */  lw    $v1, ($v0)
/* 166190 801C0120 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 166194 801C0124 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 166198 801C0128 00031880 */  sll   $v1, $v1, 2
/* 16619C 801C012C 01C37021 */  addu  $t6, $t6, $v1
/* 1661A0 801C0130 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 1661A4 801C0134 00A32021 */  addu  $a0, $a1, $v1
/* 1661A8 801C0138 3C01801D */  lui   $at, 0x801d
/* 1661AC 801C013C 31CF0001 */  andi  $t7, $t6, 1
/* 1661B0 801C0140 11E00056 */  beqz  $t7, .L801C029C_ovl7
/* 1661B4 801C0144 00000000 */   nop   
/* 1661B8 801C0148 44806000 */  mtc1  $zero, $f12
/* 1661BC 801C014C C4800000 */  lwc1  $f0, ($a0)
/* 1661C0 801C0150 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1661C4 801C0154 44812000 */  mtc1  $at, $f4
/* 1661C8 801C0158 460C003C */  c.lt.s $f0, $f12
/* 1661CC 801C015C 3C01801D */  lui   $at, %hi(D_801CE634) # $at, 0x801d
/* 1661D0 801C0160 45020004 */  bc1fl .L801C0174_ovl7
/* 1661D4 801C0164 46000086 */   mov.s $f2, $f0
/* 1661D8 801C0168 10000002 */  b     .L801C0174_ovl7
/* 1661DC 801C016C 46000087 */   neg.s $f2, $f0
/* 1661E0 801C0170 46000086 */  mov.s $f2, $f0
.L801C0174_ovl7:
/* 1661E4 801C0174 4602203C */  c.lt.s $f4, $f2
/* 1661E8 801C0178 00000000 */  nop   
/* 1661EC 801C017C 4502000D */  bc1fl .L801C01B4_ovl7
/* 1661F0 801C0180 44807000 */   mtc1  $zero, $f14
/* 1661F4 801C0184 C426E634 */  lwc1  $f6, %lo(D_801CE634)($at)
/* 1661F8 801C0188 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 1661FC 801C018C 44807000 */  mtc1  $zero, $f14
/* 166200 801C0190 46060202 */  mul.s $f8, $f0, $f6
/* 166204 801C0194 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 166208 801C0198 E4880000 */  swc1  $f8, ($a0)
/* 16620C 801C019C 8C580000 */  lw    $t8, ($v0)
/* 166210 801C01A0 0018C880 */  sll   $t9, $t8, 2
/* 166214 801C01A4 00D94021 */  addu  $t0, $a2, $t9
/* 166218 801C01A8 10000013 */  b     .L801C01F8_ovl7
/* 16621C 801C01AC E50E0000 */   swc1  $f14, ($t0)
/* 166220 801C01B0 44807000 */  mtc1  $zero, $f14
.L801C01B4_ovl7:
/* 166224 801C01B4 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 166228 801C01B8 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 16622C 801C01BC 00C34821 */  addu  $t1, $a2, $v1
/* 166230 801C01C0 E52E0000 */  swc1  $f14, ($t1)
/* 166234 801C01C4 8C430000 */  lw    $v1, ($v0)
/* 166238 801C01C8 3C01801D */  lui   $at, %hi(D_801CE638) # $at, 0x801d
/* 16623C 801C01CC 00031880 */  sll   $v1, $v1, 2
/* 166240 801C01D0 00C35021 */  addu  $t2, $a2, $v1
/* 166244 801C01D4 C54A0000 */  lwc1  $f10, ($t2)
/* 166248 801C01D8 00A35821 */  addu  $t3, $a1, $v1
/* 16624C 801C01DC E56A0000 */  swc1  $f10, ($t3)
/* 166250 801C01E0 8C4C0000 */  lw    $t4, ($v0)
/* 166254 801C01E4 C430E638 */  lwc1  $f16, %lo(D_801CE638)($at)
/* 166258 801C01E8 3C01800E */  lui   $at, 0x800e
/* 16625C 801C01EC 000C6880 */  sll   $t5, $t4, 2
/* 166260 801C01F0 002D0821 */  addu  $at, $at, $t5
/* 166264 801C01F4 E4306850 */  swc1  $f16, 0x6850($at)
.L801C01F8_ovl7:
/* 166268 801C01F8 8C430000 */  lw    $v1, ($v0)
/* 16626C 801C01FC 3C0E800E */  lui   $t6, %hi(D_800E3210) # $t6, 0x800e
/* 166270 801C0200 25CE3210 */  addiu $t6, %lo(D_800E3210) # addiu $t6, $t6, 0x3210
/* 166274 801C0204 00031880 */  sll   $v1, $v1, 2
/* 166278 801C0208 006E2021 */  addu  $a0, $v1, $t6
/* 16627C 801C020C C4800000 */  lwc1  $f0, ($a0)
/* 166280 801C0210 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 166284 801C0214 44819000 */  mtc1  $at, $f18
/* 166288 801C0218 460C003C */  c.lt.s $f0, $f12
/* 16628C 801C021C 3C01801D */  lui   $at, %hi(D_801CE63C) # $at, 0x801d
/* 166290 801C0220 45020004 */  bc1fl .L801C0234_ovl7
/* 166294 801C0224 46000086 */   mov.s $f2, $f0
/* 166298 801C0228 10000002 */  b     .L801C0234_ovl7
/* 16629C 801C022C 46000087 */   neg.s $f2, $f0
/* 1662A0 801C0230 46000086 */  mov.s $f2, $f0
.L801C0234_ovl7:
/* 1662A4 801C0234 4602903C */  c.lt.s $f18, $f2
/* 1662A8 801C0238 00000000 */  nop   
/* 1662AC 801C023C 4500000A */  bc1f  .L801C0268_ovl7
/* 1662B0 801C0240 00000000 */   nop   
/* 1662B4 801C0244 C424E63C */  lwc1  $f4, %lo(D_801CE63C)($at)
/* 1662B8 801C0248 3C01800E */  lui   $at, 0x800e
/* 1662BC 801C024C 46040182 */  mul.s $f6, $f0, $f4
/* 1662C0 801C0250 E4860000 */  swc1  $f6, ($a0)
/* 1662C4 801C0254 8C4F0000 */  lw    $t7, ($v0)
/* 1662C8 801C0258 000FC080 */  sll   $t8, $t7, 2
/* 1662CC 801C025C 00380821 */  addu  $at, $at, $t8
/* 1662D0 801C0260 03E00008 */  jr    $ra
/* 1662D4 801C0264 E42E3750 */   swc1  $f14, 0x3750($at)

.L801C0268_ovl7:
/* 1662D8 801C0268 3C01801D */  lui   $at, %hi(D_801CE640) # $at, 0x801d
/* 1662DC 801C026C C428E640 */  lwc1  $f8, %lo(D_801CE640)($at)
/* 1662E0 801C0270 3C01800E */  lui   $at, 0x800e
/* 1662E4 801C0274 00230821 */  addu  $at, $at, $v1
/* 1662E8 801C0278 E4283750 */  swc1  $f8, 0x3750($at)
/* 1662EC 801C027C 8C590000 */  lw    $t9, ($v0)
/* 1662F0 801C0280 3C01801D */  lui   $at, %hi(D_801CE644) # $at, 0x801d
/* 1662F4 801C0284 C42AE644 */  lwc1  $f10, %lo(D_801CE644)($at)
/* 1662F8 801C0288 3C01800E */  lui   $at, 0x800e
/* 1662FC 801C028C 00194080 */  sll   $t0, $t9, 2
/* 166300 801C0290 00280821 */  addu  $at, $at, $t0
/* 166304 801C0294 03E00008 */  jr    $ra
/* 166308 801C0298 E42A3C90 */   swc1  $f10, 0x3c90($at)

.L801C029C_ovl7:
/* 16630C 801C029C C430E648 */  lwc1  $f16, -0x19b8($at)
/* 166310 801C02A0 3C01800E */  lui   $at, 0x800e
/* 166314 801C02A4 00230821 */  addu  $at, $at, $v1
/* 166318 801C02A8 E4303750 */  swc1  $f16, 0x3750($at)
/* 16631C 801C02AC 8C490000 */  lw    $t1, ($v0)
/* 166320 801C02B0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 166324 801C02B4 44819000 */  mtc1  $at, $f18
/* 166328 801C02B8 3C01800E */  lui   $at, 0x800e
/* 16632C 801C02BC 00095080 */  sll   $t2, $t1, 2
/* 166330 801C02C0 002A0821 */  addu  $at, $at, $t2
/* 166334 801C02C4 E4323C90 */  swc1  $f18, 0x3c90($at)
/* 166338 801C02C8 03E00008 */  jr    $ra
/* 16633C 801C02CC 00000000 */   nop   

.type func_801C010C_ovl7, @function
.size func_801C010C_ovl7, . - func_801C010C_ovl7

glabel func_801C02D0_ovl7
/* 166340 801C02D0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 166344 801C02D4 AFB10018 */  sw    $s1, 0x18($sp)
/* 166348 801C02D8 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 16634C 801C02DC 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 166350 801C02E0 8E2E0000 */  lw    $t6, ($s1)
/* 166354 801C02E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 166358 801C02E8 AFB00014 */  sw    $s0, 0x14($sp)
/* 16635C 801C02EC 8DC20000 */  lw    $v0, ($t6)
/* 166360 801C02F0 3C10800E */  lui   $s0, 0x800e
/* 166364 801C02F4 00027880 */  sll   $t7, $v0, 2
/* 166368 801C02F8 020F8021 */  addu  $s0, $s0, $t7
/* 16636C 801C02FC 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 166370 801C0300 8E18008C */  lw    $t8, 0x8c($s0)
/* 166374 801C0304 17000003 */  bnez  $t8, .L801C0314_ovl7
/* 166378 801C0308 00000000 */   nop   
/* 16637C 801C030C 10000099 */  b     .L801C0574_ovl7
/* 166380 801C0310 00001025 */   move  $v0, $zero
.L801C0314_ovl7:
/* 166384 801C0314 0C044554 */  jal   func_80111550
/* 166388 801C0318 00402025 */   move  $a0, $v0
/* 16638C 801C031C 8E390000 */  lw    $t9, ($s1)
/* 166390 801C0320 8E04008C */  lw    $a0, 0x8c($s0)
/* 166394 801C0324 0C044722 */  jal   func_80111C88
/* 166398 801C0328 8F250000 */   lw    $a1, ($t9)
/* 16639C 801C032C 0C0447B3 */  jal   func_80111ECC
/* 1663A0 801C0330 00402025 */   move  $a0, $v0
/* 1663A4 801C0334 0C0442C0 */  jal   func_80110B00
/* 1663A8 801C0338 27A40038 */   addiu $a0, $sp, 0x38
/* 1663AC 801C033C 1040000C */  beqz  $v0, .L801C0370_ovl7
/* 1663B0 801C0340 00000000 */   nop   
/* 1663B4 801C0344 8E290000 */  lw    $t1, ($s1)
/* 1663B8 801C0348 93A8003A */  lbu   $t0, 0x3a($sp)
/* 1663BC 801C034C 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 1663C0 801C0350 8D2A0000 */  lw    $t2, ($t1)
/* 1663C4 801C0354 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 1663C8 801C0358 000A5880 */  sll   $t3, $t2, 2
/* 1663CC 801C035C 00AB6021 */  addu  $t4, $a1, $t3
/* 1663D0 801C0360 AD880000 */  sw    $t0, ($t4)
/* 1663D4 801C0364 93AD003B */  lbu   $t5, 0x3b($sp)
/* 1663D8 801C0368 10000026 */  b     .L801C0404_ovl7
/* 1663DC 801C036C A20D0043 */   sb    $t5, 0x43($s0)
.L801C0370_ovl7:
/* 1663E0 801C0370 0C0443F5 */  jal   func_80110FD4
/* 1663E4 801C0374 27A40038 */   addiu $a0, $sp, 0x38
/* 1663E8 801C0378 1040000C */  beqz  $v0, .L801C03AC_ovl7
/* 1663EC 801C037C 00000000 */   nop   
/* 1663F0 801C0380 8E2F0000 */  lw    $t7, ($s1)
/* 1663F4 801C0384 93AE003A */  lbu   $t6, 0x3a($sp)
/* 1663F8 801C0388 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 1663FC 801C038C 8DF80000 */  lw    $t8, ($t7)
/* 166400 801C0390 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 166404 801C0394 0018C880 */  sll   $t9, $t8, 2
/* 166408 801C0398 00B94821 */  addu  $t1, $a1, $t9
/* 16640C 801C039C AD2E0000 */  sw    $t6, ($t1)
/* 166410 801C03A0 93AA003B */  lbu   $t2, 0x3b($sp)
/* 166414 801C03A4 10000017 */  b     .L801C0404_ovl7
/* 166418 801C03A8 A20A0043 */   sb    $t2, 0x43($s0)
.L801C03AC_ovl7:
/* 16641C 801C03AC 0C044054 */  jal   func_80110150
/* 166420 801C03B0 27A40038 */   addiu $a0, $sp, 0x38
/* 166424 801C03B4 5040000C */  beql  $v0, $zero, .L801C03E8_ovl7
/* 166428 801C03B8 8E380000 */   lw    $t8, ($s1)
/* 16642C 801C03BC 8E280000 */  lw    $t0, ($s1)
/* 166430 801C03C0 93AB003A */  lbu   $t3, 0x3a($sp)
/* 166434 801C03C4 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 166438 801C03C8 8D0C0000 */  lw    $t4, ($t0)
/* 16643C 801C03CC 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 166440 801C03D0 000C6880 */  sll   $t5, $t4, 2
/* 166444 801C03D4 00AD7821 */  addu  $t7, $a1, $t5
/* 166448 801C03D8 ADEB0000 */  sw    $t3, ($t7)
/* 16644C 801C03DC 10000009 */  b     .L801C0404_ovl7
/* 166450 801C03E0 A2000043 */   sb    $zero, 0x43($s0)
/* 166454 801C03E4 8E380000 */  lw    $t8, ($s1)
.L801C03E8_ovl7:
/* 166458 801C03E8 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 16645C 801C03EC 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 166460 801C03F0 8F190000 */  lw    $t9, ($t8)
/* 166464 801C03F4 00197080 */  sll   $t6, $t9, 2
/* 166468 801C03F8 00AE4821 */  addu  $t1, $a1, $t6
/* 16646C 801C03FC AD200000 */  sw    $zero, ($t1)
/* 166470 801C0400 A2000043 */  sb    $zero, 0x43($s0)
.L801C0404_ovl7:
/* 166474 801C0404 8E230000 */  lw    $v1, ($s1)
/* 166478 801C0408 24060001 */  li    $a2, 1
/* 16647C 801C040C 8C620000 */  lw    $v0, ($v1)
/* 166480 801C0410 00021080 */  sll   $v0, $v0, 2
/* 166484 801C0414 00A25021 */  addu  $t2, $a1, $v0
/* 166488 801C0418 8D440000 */  lw    $a0, ($t2)
/* 16648C 801C041C 10860005 */  beq   $a0, $a2, .L801C0434_ovl7
/* 166490 801C0420 24010003 */   li    $at, 3
/* 166494 801C0424 10810039 */  beq   $a0, $at, .L801C050C_ovl7
/* 166498 801C0428 00000000 */   nop   
/* 16649C 801C042C 10000051 */  b     .L801C0574_ovl7
/* 1664A0 801C0430 00001025 */   move  $v0, $zero
.L801C0434_ovl7:
/* 1664A4 801C0434 8FA40044 */  lw    $a0, 0x44($sp)
/* 1664A8 801C0438 3C01800E */  lui   $at, 0x800e
/* 1664AC 801C043C 00220821 */  addu  $at, $at, $v0
/* 1664B0 801C0440 1480000B */  bnez  $a0, .L801C0470_ovl7
/* 1664B4 801C0444 3C05801C */   lui   $a1, %hi(D_801BF598) # $a1, 0x801c
/* 1664B8 801C0448 AC26DC50 */  sw    $a2, -0x23b0($at)
/* 1664BC 801C044C 8C680000 */  lw    $t0, ($v1)
/* 1664C0 801C0450 3C04800E */  lui   $a0, 0x800e
/* 1664C4 801C0454 24A5F598 */  addiu $a1, %lo(D_801BF598) # addiu $a1, $a1, -0xa68
/* 1664C8 801C0458 00086080 */  sll   $t4, $t0, 2
/* 1664CC 801C045C 008C2021 */  addu  $a0, $a0, $t4
/* 1664D0 801C0460 0C02C7B2 */  jal   assign_new_process_entry
/* 1664D4 801C0464 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1664D8 801C0468 10000042 */  b     .L801C0574_ovl7
/* 1664DC 801C046C 24020001 */   li    $v0, 1
.L801C0470_ovl7:
/* 1664E0 801C0470 0C068091 */  jal   func_801A0244_ovl7
/* 1664E4 801C0474 00000000 */   nop   
/* 1664E8 801C0478 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 1664EC 801C047C 2401FFFF */  li    $at, -1
/* 1664F0 801C0480 10410017 */  beq   $v0, $at, .L801C04E0_ovl7
/* 1664F4 801C0484 24A583E0 */   addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 1664F8 801C0488 8E2B0000 */  lw    $t3, ($s1)
/* 1664FC 801C048C 240D0012 */  li    $t5, 18
/* 166500 801C0490 240400F4 */  li    $a0, 244
/* 166504 801C0494 8D6F0000 */  lw    $t7, ($t3)
/* 166508 801C0498 000FC080 */  sll   $t8, $t7, 2
/* 16650C 801C049C 00B8C821 */  addu  $t9, $a1, $t8
/* 166510 801C04A0 0C029D9E */  jal   play_sound
/* 166514 801C04A4 AF2D0000 */   sw    $t5, ($t9)
/* 166518 801C04A8 240E0001 */  li    $t6, 1
/* 16651C 801C04AC AE000094 */  sw    $zero, 0x94($s0)
/* 166520 801C04B0 A20E0040 */  sb    $t6, 0x40($s0)
/* 166524 801C04B4 8E290000 */  lw    $t1, ($s1)
/* 166528 801C04B8 3C04800E */  lui   $a0, 0x800e
/* 16652C 801C04BC 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 166530 801C04C0 8D2A0000 */  lw    $t2, ($t1)
/* 166534 801C04C4 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 166538 801C04C8 000A4080 */  sll   $t0, $t2, 2
/* 16653C 801C04CC 00882021 */  addu  $a0, $a0, $t0
/* 166540 801C04D0 0C02C7B2 */  jal   assign_new_process_entry
/* 166544 801C04D4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166548 801C04D8 10000026 */  b     .L801C0574_ovl7
/* 16654C 801C04DC 24020001 */   li    $v0, 1
.L801C04E0_ovl7:
/* 166550 801C04E0 8E2C0000 */  lw    $t4, ($s1)
/* 166554 801C04E4 3C04800E */  lui   $a0, 0x800e
/* 166558 801C04E8 3C05801C */  lui   $a1, %hi(D_801C0610) # $a1, 0x801c
/* 16655C 801C04EC 8D8B0000 */  lw    $t3, ($t4)
/* 166560 801C04F0 24A50610 */  addiu $a1, %lo(D_801C0610) # addiu $a1, $a1, 0x610
/* 166564 801C04F4 000B7880 */  sll   $t7, $t3, 2
/* 166568 801C04F8 008F2021 */  addu  $a0, $a0, $t7
/* 16656C 801C04FC 0C02C7B2 */  jal   assign_new_process_entry
/* 166570 801C0500 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166574 801C0504 1000001B */  b     .L801C0574_ovl7
/* 166578 801C0508 24020001 */   li    $v0, 1
.L801C050C_ovl7:
/* 16657C 801C050C 3C01800F */  lui   $at, 0x800f
/* 166580 801C0510 8FB80044 */  lw    $t8, 0x44($sp)
/* 166584 801C0514 00220821 */  addu  $at, $at, $v0
/* 166588 801C0518 AC208220 */  sw    $zero, -0x7de0($at)
/* 16658C 801C051C 2401FFFF */  li    $at, -1
/* 166590 801C0520 13010006 */  beq   $t8, $at, .L801C053C_ovl7
/* 166594 801C0524 3C028013 */   lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 166598 801C0528 8C6D0000 */  lw    $t5, ($v1)
/* 16659C 801C052C 3C01800E */  lui   $at, 0x800e
/* 1665A0 801C0530 000DC880 */  sll   $t9, $t5, 2
/* 1665A4 801C0534 00390821 */  addu  $at, $at, $t9
/* 1665A8 801C0538 AC380D50 */  sw    $t8, 0xd50($at)
.L801C053C_ovl7:
/* 1665AC 801C053C 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 1665B0 801C0540 844E00B2 */  lh    $t6, 0xb2($v0)
/* 1665B4 801C0544 3C04800E */  lui   $a0, 0x800e
/* 1665B8 801C0548 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 1665BC 801C054C 25C90001 */  addiu $t1, $t6, 1
/* 1665C0 801C0550 A44900B2 */  sh    $t1, 0xb2($v0)
/* 1665C4 801C0554 8C6A0000 */  lw    $t2, ($v1)
/* 1665C8 801C0558 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 1665CC 801C055C 000A4080 */  sll   $t0, $t2, 2
/* 1665D0 801C0560 00882021 */  addu  $a0, $a0, $t0
/* 1665D4 801C0564 0C02C7B2 */  jal   assign_new_process_entry
/* 1665D8 801C0568 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1665DC 801C056C 10000001 */  b     .L801C0574_ovl7
/* 1665E0 801C0570 24020001 */   li    $v0, 1
.L801C0574_ovl7:
/* 1665E4 801C0574 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1665E8 801C0578 8FB00014 */  lw    $s0, 0x14($sp)
/* 1665EC 801C057C 8FB10018 */  lw    $s1, 0x18($sp)
/* 1665F0 801C0580 03E00008 */  jr    $ra
/* 1665F4 801C0584 27BD0058 */   addiu $sp, $sp, 0x58

.type func_801C02D0_ovl7, @function
.size func_801C02D0_ovl7, . - func_801C02D0_ovl7

glabel func_801C0588_ovl7
/* 1665F8 801C0588 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1665FC 801C058C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166600 801C0590 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 166604 801C0594 AFBF0014 */  sw    $ra, 0x14($sp)
/* 166608 801C0598 8DC20000 */  lw    $v0, ($t6)
/* 16660C 801C059C 3C0F800D */  lui   $t7, %hi(D_800D7090) # $t7, 0x800d
/* 166610 801C05A0 8DEF7090 */  lw    $t7, %lo(D_800D7090)($t7)
/* 166614 801C05A4 3C04800E */  lui   $a0, 0x800e
/* 166618 801C05A8 0002C080 */  sll   $t8, $v0, 2
/* 16661C 801C05AC 104F0007 */  beq   $v0, $t7, .L801C05CC_ovl7
/* 166620 801C05B0 00982021 */   addu  $a0, $a0, $t8
/* 166624 801C05B4 3C05801C */  lui   $a1, %hi(D_801C0610) # $a1, 0x801c
/* 166628 801C05B8 24A50610 */  addiu $a1, %lo(D_801C0610) # addiu $a1, $a1, 0x610
/* 16662C 801C05BC 0C02C7B2 */  jal   assign_new_process_entry
/* 166630 801C05C0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166634 801C05C4 10000002 */  b     .L801C05D0_ovl7
/* 166638 801C05C8 24020001 */   li    $v0, 1
.L801C05CC_ovl7:
/* 16663C 801C05CC 00001025 */  move  $v0, $zero
.L801C05D0_ovl7:
/* 166640 801C05D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 166644 801C05D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 166648 801C05D8 03E00008 */  jr    $ra
/* 16664C 801C05DC 00000000 */   nop   

.type func_801C0588_ovl7, @function
.size func_801C0588_ovl7, . - func_801C0588_ovl7

glabel func_801C05E0_ovl7
/* 166650 801C05E0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 166654 801C05E4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166658 801C05E8 3C18800D */  lui   $t8, %hi(D_800D7090) # $t8, 0x800d
/* 16665C 801C05EC 8F187090 */  lw    $t8, %lo(D_800D7090)($t8)
/* 166660 801C05F0 8DCF0000 */  lw    $t7, ($t6)
/* 166664 801C05F4 00001025 */  move  $v0, $zero
/* 166668 801C05F8 11F80003 */  beq   $t7, $t8, .L801C0608_ovl7
/* 16666C 801C05FC 00000000 */   nop   
/* 166670 801C0600 03E00008 */  jr    $ra
/* 166674 801C0604 24020001 */   li    $v0, 1

.L801C0608_ovl7:
/* 166678 801C0608 03E00008 */  jr    $ra
/* 16667C 801C060C 00000000 */   nop   

.type func_801C05E0_ovl7, @function
.size func_801C05E0_ovl7, . - func_801C05E0_ovl7

glabel func_801C0610_ovl7
/* 166680 801C0610 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 166684 801C0614 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166688 801C0618 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 16668C 801C061C AFBF001C */  sw    $ra, 0x1c($sp)
/* 166690 801C0620 8DCF0000 */  lw    $t7, ($t6)
/* 166694 801C0624 3C19800E */  lui   $t9, 0x800e
/* 166698 801C0628 000FC080 */  sll   $t8, $t7, 2
/* 16669C 801C062C 0338C821 */  addu  $t9, $t9, $t8
/* 1666A0 801C0630 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 1666A4 801C0634 0C0701B2 */  jal   func_801C06C8_ovl7
/* 1666A8 801C0638 AFB90024 */   sw    $t9, 0x24($sp)
/* 1666AC 801C063C 8FA80024 */  lw    $t0, 0x24($sp)
/* 1666B0 801C0640 44800000 */  mtc1  $zero, $f0
/* 1666B4 801C0644 00002025 */  move  $a0, $zero
/* 1666B8 801C0648 8D090094 */  lw    $t1, 0x94($t0)
/* 1666BC 801C064C 44060000 */  mfc1  $a2, $f0
/* 1666C0 801C0650 44070000 */  mfc1  $a3, $f0
/* 1666C4 801C0654 8D250018 */  lw    $a1, 0x18($t1)
/* 1666C8 801C0658 0C03F55C */  jal   func_800FD570
/* 1666CC 801C065C E7A00010 */   swc1  $f0, 0x10($sp)
/* 1666D0 801C0660 8FAA0024 */  lw    $t2, 0x24($sp)
/* 1666D4 801C0664 8D4B0094 */  lw    $t3, 0x94($t2)
/* 1666D8 801C0668 0C029D9E */  jal   play_sound
/* 1666DC 801C066C 8D64001C */   lw    $a0, 0x1c($t3)
/* 1666E0 801C0670 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1666E4 801C0674 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1666E8 801C0678 3C01800E */  lui   $at, 0x800e
/* 1666EC 801C067C 2404007D */  li    $a0, 125
/* 1666F0 801C0680 8C4C0000 */  lw    $t4, ($v0)
/* 1666F4 801C0684 000C6880 */  sll   $t5, $t4, 2
/* 1666F8 801C0688 002D0821 */  addu  $at, $at, $t5
/* 1666FC 801C068C AC20F150 */  sw    $zero, -0xeb0($at)
/* 166700 801C0690 0C02C67D */  jal   func_800B19F4
/* 166704 801C0694 8C450000 */   lw    $a1, ($v0)
/* 166708 801C0698 0C066ED6 */  jal   func_8019BB58_ovl7
/* 16670C 801C069C 00000000 */   nop   
/* 166710 801C06A0 0C002DAF */  jal   finish_current_thread
/* 166714 801C06A4 2404000F */   li    $a0, 15
/* 166718 801C06A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 16671C 801C06AC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166720 801C06B0 0C067656 */  jal   func_8019D958_ovl7
/* 166724 801C06B4 95C40002 */   lhu   $a0, 2($t6)
/* 166728 801C06B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 16672C 801C06BC 27BD0028 */  addiu $sp, $sp, 0x28
/* 166730 801C06C0 03E00008 */  jr    $ra
/* 166734 801C06C4 00000000 */   nop   

.type func_801C0610_ovl7, @function
.size func_801C0610_ovl7, . - func_801C0610_ovl7

glabel func_801C06C8_ovl7
/* 166738 801C06C8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 16673C 801C06CC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166740 801C06D0 3C02800D */  lui   $v0, %hi(D_800D7090) # $v0, 0x800d
/* 166744 801C06D4 24427090 */  addiu $v0, %lo(D_800D7090) # addiu $v0, $v0, 0x7090
/* 166748 801C06D8 AFA40000 */  sw    $a0, ($sp)
/* 16674C 801C06DC 8C580000 */  lw    $t8, ($v0)
/* 166750 801C06E0 8DCF0000 */  lw    $t7, ($t6)
/* 166754 801C06E4 2419FFFF */  li    $t9, -1
/* 166758 801C06E8 15F80002 */  bne   $t7, $t8, .L801C06F4_ovl7
/* 16675C 801C06EC 00000000 */   nop   
/* 166760 801C06F0 AC590000 */  sw    $t9, ($v0)
.L801C06F4_ovl7:
/* 166764 801C06F4 03E00008 */  jr    $ra
/* 166768 801C06F8 00000000 */   nop   

.type func_801C06C8_ovl7, @function
.size func_801C06C8_ovl7, . - func_801C06C8_ovl7

glabel func_801C06FC_ovl7
/* 16676C 801C06FC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 166770 801C0700 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 166774 801C0704 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166778 801C0708 AFBF001C */  sw    $ra, 0x1c($sp)
/* 16677C 801C070C AFB10018 */  sw    $s1, 0x18($sp)
/* 166780 801C0710 AFB00014 */  sw    $s0, 0x14($sp)
/* 166784 801C0714 8DC20000 */  lw    $v0, ($t6)
/* 166788 801C0718 3C18800E */  lui   $t8, 0x800e
/* 16678C 801C071C 3C08800E */  lui   $t0, 0x800e
/* 166790 801C0720 00027880 */  sll   $t7, $v0, 2
/* 166794 801C0724 030FC021 */  addu  $t8, $t8, $t7
/* 166798 801C0728 0002C840 */  sll   $t9, $v0, 1
/* 16679C 801C072C 8F18E350 */  lw    $t8, -0x1cb0($t8)
/* 1667A0 801C0730 01194021 */  addu  $t0, $t0, $t9
/* 1667A4 801C0734 950877A0 */  lhu   $t0, 0x77a0($t0)
/* 1667A8 801C0738 8F11003C */  lw    $s1, 0x3c($t8)
/* 1667AC 801C073C 3C0B801D */  lui   $t3, %hi(D_801CD914) # $t3, 0x801d
/* 1667B0 801C0740 00084880 */  sll   $t1, $t0, 2
/* 1667B4 801C0744 252AFFFC */  addiu $t2, $t1, -4
/* 1667B8 801C0748 256BD914 */  addiu $t3, %lo(D_801CD914) # addiu $t3, $t3, -0x26ec
/* 1667BC 801C074C 12200011 */  beqz  $s1, .L801C0794_ovl7
/* 1667C0 801C0750 014B8021 */   addu  $s0, $t2, $t3
.L801C0754_ovl7:
/* 1667C4 801C0754 8E220080 */  lw    $v0, 0x80($s1)
/* 1667C8 801C0758 1040000A */  beqz  $v0, .L801C0784_ovl7
/* 1667CC 801C075C 00000000 */   nop   
/* 1667D0 801C0760 920C0000 */  lbu   $t4, ($s0)
.L801C0764_ovl7:
/* 1667D4 801C0764 A04C0058 */  sb    $t4, 0x58($v0)
/* 1667D8 801C0768 920D0001 */  lbu   $t5, 1($s0)
/* 1667DC 801C076C A04D0059 */  sb    $t5, 0x59($v0)
/* 1667E0 801C0770 920E0002 */  lbu   $t6, 2($s0)
/* 1667E4 801C0774 A04E005A */  sb    $t6, 0x5a($v0)
/* 1667E8 801C0778 8C420000 */  lw    $v0, ($v0)
/* 1667EC 801C077C 5440FFF9 */  bnezl $v0, .L801C0764_ovl7
/* 1667F0 801C0780 920C0000 */   lbu   $t4, ($s0)
.L801C0784_ovl7:
/* 1667F4 801C0784 0C002FA4 */  jal   func_8000BE90
/* 1667F8 801C0788 02202025 */   move  $a0, $s1
/* 1667FC 801C078C 1440FFF1 */  bnez  $v0, .L801C0754_ovl7
/* 166800 801C0790 00408825 */   move  $s1, $v0
.L801C0794_ovl7:
/* 166804 801C0794 8FBF001C */  lw    $ra, 0x1c($sp)
/* 166808 801C0798 8FB00014 */  lw    $s0, 0x14($sp)
/* 16680C 801C079C 8FB10018 */  lw    $s1, 0x18($sp)
/* 166810 801C07A0 03E00008 */  jr    $ra
/* 166814 801C07A4 27BD0020 */   addiu $sp, $sp, 0x20

.type func_801C06FC_ovl7, @function
.size func_801C06FC_ovl7, . - func_801C06FC_ovl7

glabel func_801C07A8_ovl7
/* 166818 801C07A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 16681C 801C07AC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166820 801C07B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 166824 801C07B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 166828 801C07B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 16682C 801C07BC 8C4F0000 */  lw    $t7, ($v0)
/* 166830 801C07C0 3C0E800B */  lui   $t6, %hi(D_800B658C) # $t6, 0x800b
/* 166834 801C07C4 3C01800E */  lui   $at, 0x800e
/* 166838 801C07C8 000FC080 */  sll   $t8, $t7, 2
/* 16683C 801C07CC 00380821 */  addu  $at, $at, $t8
/* 166840 801C07D0 25CE658C */  addiu $t6, %lo(D_800B658C) # addiu $t6, $t6, 0x658c
/* 166844 801C07D4 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 166848 801C07D8 8C590000 */  lw    $t9, ($v0)
/* 16684C 801C07DC 3C01800F */  lui   $at, 0x800f
/* 166850 801C07E0 2409003C */  li    $t1, 60
/* 166854 801C07E4 00194080 */  sll   $t0, $t9, 2
/* 166858 801C07E8 00280821 */  addu  $at, $at, $t0
/* 16685C 801C07EC AC2098E0 */  sw    $zero, -0x6720($at)
/* 166860 801C07F0 8C4A0000 */  lw    $t2, ($v0)
/* 166864 801C07F4 3C01800F */  lui   $at, 0x800f
/* 166868 801C07F8 3C04800E */  lui   $a0, 0x800e
/* 16686C 801C07FC 000A5880 */  sll   $t3, $t2, 2
/* 166870 801C0800 002B0821 */  addu  $at, $at, $t3
/* 166874 801C0804 AC299E20 */  sw    $t1, -0x61e0($at)
/* 166878 801C0808 8C4C0000 */  lw    $t4, ($v0)
/* 16687C 801C080C 3C01800F */  lui   $at, 0x800f
/* 166880 801C0810 3C06801D */  lui   $a2, %hi(D_801CD930) # $a2, 0x801d
/* 166884 801C0814 000C6880 */  sll   $t5, $t4, 2
/* 166888 801C0818 002D0821 */  addu  $at, $at, $t5
/* 16688C 801C081C AC209FE0 */  sw    $zero, -0x6020($at)
/* 166890 801C0820 8C4F0000 */  lw    $t7, ($v0)
/* 166894 801C0824 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 166898 801C0828 44812000 */  mtc1  $at, $f4
/* 16689C 801C082C 3C01800F */  lui   $at, 0x800f
/* 1668A0 801C0830 000F7080 */  sll   $t6, $t7, 2
/* 1668A4 801C0834 002E0821 */  addu  $at, $at, $t6
/* 1668A8 801C0838 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 1668AC 801C083C 8C580000 */  lw    $t8, ($v0)
/* 1668B0 801C0840 3C01800F */  lui   $at, 0x800f
/* 1668B4 801C0844 24C6D930 */  addiu $a2, %lo(D_801CD930) # addiu $a2, $a2, -0x26d0
/* 1668B8 801C0848 0018C880 */  sll   $t9, $t8, 2
/* 1668BC 801C084C 00390821 */  addu  $at, $at, $t9
/* 1668C0 801C0850 AC208920 */  sw    $zero, -0x76e0($at)
/* 1668C4 801C0854 8C480000 */  lw    $t0, ($v0)
/* 1668C8 801C0858 24050002 */  li    $a1, 2
/* 1668CC 801C085C 00882021 */  addu  $a0, $a0, $t0
/* 1668D0 801C0860 0C02911F */  jal   call_virtual_function
/* 1668D4 801C0864 90847880 */   lbu   $a0, 0x7880($a0)
/* 1668D8 801C0868 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1668DC 801C086C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1668E0 801C0870 03E00008 */  jr    $ra
/* 1668E4 801C0874 00000000 */   nop   

.type func_801C07A8_ovl7, @function
.size func_801C07A8_ovl7, . - func_801C07A8_ovl7

glabel func_801C0878_ovl7
/* 1668E8 801C0878 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1668EC 801C087C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1668F0 801C0880 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1668F4 801C0884 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1668F8 801C0888 AFA40018 */  sw    $a0, 0x18($sp)
/* 1668FC 801C088C 8DF80000 */  lw    $t8, ($t7)
/* 166900 801C0890 3C0E801C */  lui   $t6, %hi(D_801C0958) # $t6, 0x801c
/* 166904 801C0894 3C01800E */  lui   $at, 0x800e
/* 166908 801C0898 0018C880 */  sll   $t9, $t8, 2
/* 16690C 801C089C 00390821 */  addu  $at, $at, $t9
/* 166910 801C08A0 25CE0958 */  addiu $t6, %lo(D_801C0958) # addiu $t6, $t6, 0x958
/* 166914 801C08A4 3C04801C */  lui   $a0, %hi(D_801C08E8) # $a0, 0x801c
/* 166918 801C08A8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 16691C 801C08AC 0C068354 */  jal   func_801A0D50
/* 166920 801C08B0 248408E8 */   addiu $a0, %lo(D_801C08E8) # addiu $a0, $a0, 0x8e8
/* 166924 801C08B4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 166928 801C08B8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 16692C 801C08BC 3C01800E */  lui   $at, 0x800e
/* 166930 801C08C0 8FA40018 */  lw    $a0, 0x18($sp)
/* 166934 801C08C4 8D090000 */  lw    $t1, ($t0)
/* 166938 801C08C8 00095080 */  sll   $t2, $t1, 2
/* 16693C 801C08CC 002A0821 */  addu  $at, $at, $t2
/* 166940 801C08D0 0C07023A */  jal   D_801C08E8_ovl7
/* 166944 801C08D4 AC20DC50 */   sw    $zero, -0x23b0($at)
/* 166948 801C08D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 16694C 801C08DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 166950 801C08E0 03E00008 */  jr    $ra
/* 166954 801C08E4 00000000 */   nop   

.type func_801C0878_ovl7, @function
.size func_801C0878_ovl7, . - func_801C0878_ovl7

glabel func_801C08E8_ovl7
/* 166958 801C08E8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 16695C 801C08EC AFB20020 */  sw    $s2, 0x20($sp)
/* 166960 801C08F0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 166964 801C08F4 AFB00018 */  sw    $s0, 0x18($sp)
/* 166968 801C08F8 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 16696C 801C08FC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 166970 801C0900 3C12801D */  lui   $s2, %hi(D_801CD938) # $s2, 0x801d
/* 166974 801C0904 AFBF0024 */  sw    $ra, 0x24($sp)
/* 166978 801C0908 AFA40028 */  sw    $a0, 0x28($sp)
/* 16697C 801C090C 2652D938 */  addiu $s2, %lo(D_801CD938) # addiu $s2, $s2, -0x26c8
/* 166980 801C0910 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 166984 801C0914 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 166988 801C0918 8E2E0000 */  lw    $t6, ($s1)
.L801C091C_ovl7:
/* 16698C 801C091C 24050004 */  li    $a1, 4
/* 166990 801C0920 02403025 */  move  $a2, $s2
/* 166994 801C0924 8DCF0000 */  lw    $t7, ($t6)
/* 166998 801C0928 000FC080 */  sll   $t8, $t7, 2
/* 16699C 801C092C 0218C821 */  addu  $t9, $s0, $t8
/* 1669A0 801C0930 0C02911F */  jal   call_virtual_function
/* 1669A4 801C0934 8F240000 */   lw    $a0, ($t9)
/* 1669A8 801C0938 1000FFF8 */  b     .L801C091C_ovl7
/* 1669AC 801C093C 8E2E0000 */   lw    $t6, ($s1)
/* 1669B0 801C0940 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1669B4 801C0944 8FB00018 */  lw    $s0, 0x18($sp)
/* 1669B8 801C0948 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1669BC 801C094C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1669C0 801C0950 03E00008 */  jr    $ra
/* 1669C4 801C0954 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801C08E8_ovl7, @function
.size func_801C08E8_ovl7, . - func_801C08E8_ovl7

glabel func_801C0958_ovl7
/* 1669C8 801C0958 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1669CC 801C095C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1669D0 801C0960 0C070162 */  jal   func_801C0588_ovl7
/* 1669D4 801C0964 AFA40020 */   sw    $a0, 0x20($sp)
/* 1669D8 801C0968 1440004D */  bnez  $v0, .L801C0AA0_ovl7
/* 1669DC 801C096C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1669E0 801C0970 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1669E4 801C0974 3C01800E */  lui   $at, 0x800e
/* 1669E8 801C0978 3C04800E */  lui   $a0, 0x800e
/* 1669EC 801C097C 8DC20000 */  lw    $v0, ($t6)
/* 1669F0 801C0980 3C05801C */  lui   $a1, %hi(D_801C0610) # $a1, 0x801c
/* 1669F4 801C0984 24A50610 */  addiu $a1, %lo(D_801C0610) # addiu $a1, $a1, 0x610
/* 1669F8 801C0988 00021080 */  sll   $v0, $v0, 2
/* 1669FC 801C098C 00220821 */  addu  $at, $at, $v0
/* 166A00 801C0990 C4242790 */  lwc1  $f4, 0x2790($at)
/* 166A04 801C0994 3C01801D */  lui   $at, %hi(D_801CE64C) # $at, 0x801d
/* 166A08 801C0998 C426E64C */  lwc1  $f6, %lo(D_801CE64C)($at)
/* 166A0C 801C099C 00822021 */  addu  $a0, $a0, $v0
/* 166A10 801C09A0 4606203C */  c.lt.s $f4, $f6
/* 166A14 801C09A4 00000000 */  nop   
/* 166A18 801C09A8 45000005 */  bc1f  .L801C09C0_ovl7
/* 166A1C 801C09AC 00000000 */   nop   
/* 166A20 801C09B0 0C02C7B2 */  jal   assign_new_process_entry
/* 166A24 801C09B4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166A28 801C09B8 1000003A */  b     .L801C0AA4_ovl7
/* 166A2C 801C09BC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C09C0_ovl7:
/* 166A30 801C09C0 0C06835D */  jal   func_801A0D74_ovl7
/* 166A34 801C09C4 8FA40020 */   lw    $a0, 0x20($sp)
/* 166A38 801C09C8 AFA2001C */  sw    $v0, 0x1c($sp)
/* 166A3C 801C09CC 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 166A40 801C09D0 24040001 */   li    $a0, 1
/* 166A44 801C09D4 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 166A48 801C09D8 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 166A4C 801C09DC 3C0F800F */  lui   $t7, 0x800f
/* 166A50 801C09E0 3C188013 */  lui   $t8, %hi(D_8012BCA0) # $t8, 0x8013
/* 166A54 801C09E4 8C820000 */  lw    $v0, ($a0)
/* 166A58 801C09E8 00021080 */  sll   $v0, $v0, 2
/* 166A5C 801C09EC 01E27821 */  addu  $t7, $t7, $v0
/* 166A60 801C09F0 8DEF8920 */  lw    $t7, -0x76e0($t7)
/* 166A64 801C09F4 55E0000D */  bnezl $t7, .L801C0A2C_ovl7
/* 166A68 801C09F8 8FA9001C */   lw    $t1, 0x1c($sp)
/* 166A6C 801C09FC 8F18BCA0 */  lw    $t8, %lo(D_8012BCA0)($t8)
/* 166A70 801C0A00 0018CCC2 */  srl   $t9, $t8, 0x13
/* 166A74 801C0A04 332801FF */  andi  $t0, $t9, 0x1ff
/* 166A78 801C0A08 51000008 */  beql  $t0, $zero, .L801C0A2C_ovl7
/* 166A7C 801C0A0C 8FA9001C */   lw    $t1, 0x1c($sp)
/* 166A80 801C0A10 0C029D9E */  jal   play_sound
/* 166A84 801C0A14 24040119 */   li    $a0, 281
/* 166A88 801C0A18 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 166A8C 801C0A1C 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 166A90 801C0A20 8C820000 */  lw    $v0, ($a0)
/* 166A94 801C0A24 00021080 */  sll   $v0, $v0, 2
/* 166A98 801C0A28 8FA9001C */  lw    $t1, 0x1c($sp)
.L801C0A2C_ovl7:
/* 166A9C 801C0A2C 3C06801D */  lui   $a2, %hi(D_801CD948) # $a2, 0x801d
/* 166AA0 801C0A30 24C6D948 */  addiu $a2, %lo(D_801CD948) # addiu $a2, $a2, -0x26b8
/* 166AA4 801C0A34 15200009 */  bnez  $t1, .L801C0A5C_ovl7
/* 166AA8 801C0A38 24050004 */   li    $a1, 4
/* 166AAC 801C0A3C 3C04800E */  lui   $a0, 0x800e
/* 166AB0 801C0A40 00822021 */  addu  $a0, $a0, $v0
/* 166AB4 801C0A44 0C02911F */  jal   call_virtual_function
/* 166AB8 801C0A48 8C84DFD0 */   lw    $a0, -0x2030($a0)
/* 166ABC 801C0A4C 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 166AC0 801C0A50 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 166AC4 801C0A54 8C820000 */  lw    $v0, ($a0)
/* 166AC8 801C0A58 00021080 */  sll   $v0, $v0, 2
.L801C0A5C_ovl7:
/* 166ACC 801C0A5C 3C0A800F */  lui   $t2, %hi(D_800E9E20) # $t2, 0x800f
/* 166AD0 801C0A60 254A9E20 */  addiu $t2, %lo(D_800E9E20) # addiu $t2, $t2, -0x61e0
/* 166AD4 801C0A64 004A2821 */  addu  $a1, $v0, $t2
/* 166AD8 801C0A68 8CA30000 */  lw    $v1, ($a1)
/* 166ADC 801C0A6C 18600007 */  blez  $v1, .L801C0A8C_ovl7
/* 166AE0 801C0A70 246BFFFF */   addiu $t3, $v1, -1
/* 166AE4 801C0A74 ACAB0000 */  sw    $t3, ($a1)
/* 166AE8 801C0A78 8C8C0000 */  lw    $t4, ($a0)
/* 166AEC 801C0A7C 3C03800F */  lui   $v1, 0x800f
/* 166AF0 801C0A80 000C6880 */  sll   $t5, $t4, 2
/* 166AF4 801C0A84 006D1821 */  addu  $v1, $v1, $t5
/* 166AF8 801C0A88 8C639E20 */  lw    $v1, -0x61e0($v1)
.L801C0A8C_ovl7:
/* 166AFC 801C0A8C 28610033 */  slti  $at, $v1, 0x33
/* 166B00 801C0A90 50200004 */  beql  $at, $zero, .L801C0AA4_ovl7
/* 166B04 801C0A94 8FBF0014 */   lw    $ra, 0x14($sp)
/* 166B08 801C0A98 0C0706EE */  jal   func_801C1BB8_ovl7
/* 166B0C 801C0A9C 00000000 */   nop   
.L801C0AA0_ovl7:
/* 166B10 801C0AA0 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C0AA4_ovl7:
/* 166B14 801C0AA4 27BD0020 */  addiu $sp, $sp, 0x20
/* 166B18 801C0AA8 03E00008 */  jr    $ra
/* 166B1C 801C0AAC 00000000 */   nop   

.type func_801C0958_ovl7, @function
.size func_801C0958_ovl7, . - func_801C0958_ovl7

glabel func_801C0AB0_ovl7
/* 166B20 801C0AB0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 166B24 801C0AB4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 166B28 801C0AB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 166B2C 801C0ABC AFBF0014 */  sw    $ra, 0x14($sp)
/* 166B30 801C0AC0 AFA40018 */  sw    $a0, 0x18($sp)
/* 166B34 801C0AC4 8DC30000 */  lw    $v1, ($t6)
/* 166B38 801C0AC8 3C04800E */  lui   $a0, 0x800e
/* 166B3C 801C0ACC 3C01800E */  lui   $at, 0x800e
/* 166B40 801C0AD0 00031880 */  sll   $v1, $v1, 2
/* 166B44 801C0AD4 00832021 */  addu  $a0, $a0, $v1
/* 166B48 801C0AD8 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 166B4C 801C0ADC 00230821 */  addu  $at, $at, $v1
/* 166B50 801C0AE0 3C0F801D */  lui   $t7, %hi(D_801CD144) # $t7, 0x801d
/* 166B54 801C0AE4 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 166B58 801C0AE8 25EFD144 */  addiu $t7, %lo(D_801CD144) # addiu $t7, $t7, -0x2ebc
/* 166B5C 801C0AEC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166B60 801C0AF0 AC8F0098 */  sw    $t7, 0x98($a0)
/* 166B64 801C0AF4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166B68 801C0AF8 3C0B800F */  lui   $t3, %hi(D_800E8920) # $t3, 0x800f
/* 166B6C 801C0AFC 256B8920 */  addiu $t3, %lo(D_800E8920) # addiu $t3, $t3, -0x76e0
/* 166B70 801C0B00 8C580000 */  lw    $t8, ($v0)
/* 166B74 801C0B04 24010001 */  li    $at, 1
/* 166B78 801C0B08 0018C880 */  sll   $t9, $t8, 2
/* 166B7C 801C0B0C 032B2821 */  addu  $a1, $t9, $t3
/* 166B80 801C0B10 8CAC0000 */  lw    $t4, ($a1)
/* 166B84 801C0B14 5581000B */  bnel  $t4, $at, .L801C0B44_ovl7
/* 166B88 801C0B18 ACA00000 */   sw    $zero, ($a1)
/* 166B8C 801C0B1C 0C029D9E */  jal   play_sound
/* 166B90 801C0B20 24040119 */   li    $a0, 281
/* 166B94 801C0B24 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166B98 801C0B28 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166B9C 801C0B2C 3C0F800F */  lui   $t7, %hi(D_800E8920) # $t7, 0x800f
/* 166BA0 801C0B30 25EF8920 */  addiu $t7, %lo(D_800E8920) # addiu $t7, $t7, -0x76e0
/* 166BA4 801C0B34 8C4D0000 */  lw    $t5, ($v0)
/* 166BA8 801C0B38 000D7080 */  sll   $t6, $t5, 2
/* 166BAC 801C0B3C 01CF2821 */  addu  $a1, $t6, $t7
/* 166BB0 801C0B40 ACA00000 */  sw    $zero, ($a1)
.L801C0B44_ovl7:
/* 166BB4 801C0B44 8C590000 */  lw    $t9, ($v0)
/* 166BB8 801C0B48 3C01800F */  lui   $at, 0x800f
/* 166BBC 801C0B4C 24180001 */  li    $t8, 1
/* 166BC0 801C0B50 00195880 */  sll   $t3, $t9, 2
/* 166BC4 801C0B54 002B0821 */  addu  $at, $at, $t3
/* 166BC8 801C0B58 3C040001 */  lui   $a0, (0x00010609 >> 16) # lui $a0, 1
/* 166BCC 801C0B5C AC3898E0 */  sw    $t8, -0x6720($at)
/* 166BD0 801C0B60 0C02A7A9 */  jal   func_800A9EA4
/* 166BD4 801C0B64 34840609 */   ori   $a0, (0x00010609 & 0xFFFF) # ori $a0, $a0, 0x609
/* 166BD8 801C0B68 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166BDC 801C0B6C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166BE0 801C0B70 3C06800F */  lui   $a2, %hi(D_800EA6E0) # $a2, 0x800f
/* 166BE4 801C0B74 24C6A6E0 */  addiu $a2, %lo(D_800EA6E0) # addiu $a2, $a2, -0x5920
/* 166BE8 801C0B78 8C430000 */  lw    $v1, ($v0)
/* 166BEC 801C0B7C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 166BF0 801C0B80 44810000 */  mtc1  $at, $f0
/* 166BF4 801C0B84 00031880 */  sll   $v1, $v1, 2
/* 166BF8 801C0B88 00C36021 */  addu  $t4, $a2, $v1
/* 166BFC 801C0B8C C5840000 */  lwc1  $f4, ($t4)
/* 166C00 801C0B90 3C07800E */  lui   $a3, %hi(D_800E6A10) # $a3, 0x800e
/* 166C04 801C0B94 24E76A10 */  addiu $a3, %lo(D_800E6A10) # addiu $a3, $a3, 0x6a10
/* 166C08 801C0B98 46002182 */  mul.s $f6, $f4, $f0
/* 166C0C 801C0B9C 00E36821 */  addu  $t5, $a3, $v1
/* 166C10 801C0BA0 C5A80000 */  lwc1  $f8, ($t5)
/* 166C14 801C0BA4 3C01800E */  lui   $at, 0x800e
/* 166C18 801C0BA8 00230821 */  addu  $at, $at, $v1
/* 166C1C 801C0BAC 44808000 */  mtc1  $zero, $f16
/* 166C20 801C0BB0 3C08800E */  lui   $t0, %hi(D_800E6690) # $t0, 0x800e
/* 166C24 801C0BB4 46083282 */  mul.s $f10, $f6, $f8
/* 166C28 801C0BB8 25086690 */  addiu $t0, %lo(D_800E6690) # addiu $t0, $t0, 0x6690
/* 166C2C 801C0BBC 3C09800E */  lui   $t1, %hi(D_800E3210) # $t1, 0x800e
/* 166C30 801C0BC0 25293210 */  addiu $t1, %lo(D_800E3210) # addiu $t1, $t1, 0x3210
/* 166C34 801C0BC4 3C0A800E */  lui   $t2, %hi(D_800E3750) # $t2, 0x800e
/* 166C38 801C0BC8 254A3750 */  addiu $t2, %lo(D_800E3750) # addiu $t2, $t2, 0x3750
/* 166C3C 801C0BCC E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 166C40 801C0BD0 8C4E0000 */  lw    $t6, ($v0)
/* 166C44 801C0BD4 3C01800E */  lui   $at, 0x800e
/* 166C48 801C0BD8 000E7880 */  sll   $t7, $t6, 2
/* 166C4C 801C0BDC 010FC821 */  addu  $t9, $t0, $t7
/* 166C50 801C0BE0 E7300000 */  swc1  $f16, ($t9)
/* 166C54 801C0BE4 8C580000 */  lw    $t8, ($v0)
/* 166C58 801C0BE8 00185880 */  sll   $t3, $t8, 2
/* 166C5C 801C0BEC 002B0821 */  addu  $at, $at, $t3
/* 166C60 801C0BF0 E4206850 */  swc1  $f0, 0x6850($at)
/* 166C64 801C0BF4 8C430000 */  lw    $v1, ($v0)
/* 166C68 801C0BF8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 166C6C 801C0BFC 44812000 */  mtc1  $at, $f4
/* 166C70 801C0C00 00031880 */  sll   $v1, $v1, 2
/* 166C74 801C0C04 00C36021 */  addu  $t4, $a2, $v1
/* 166C78 801C0C08 C5920000 */  lwc1  $f18, ($t4)
/* 166C7C 801C0C0C 01236821 */  addu  $t5, $t1, $v1
/* 166C80 801C0C10 3C01801D */  lui   $at, %hi(D_801CE650) # $at, 0x801d
/* 166C84 801C0C14 46049182 */  mul.s $f6, $f18, $f4
/* 166C88 801C0C18 3C0C800F */  lui   $t4, 0x800f
/* 166C8C 801C0C1C E5A60000 */  swc1  $f6, ($t5)
/* 166C90 801C0C20 8C4E0000 */  lw    $t6, ($v0)
/* 166C94 801C0C24 C428E650 */  lwc1  $f8, %lo(D_801CE650)($at)
/* 166C98 801C0C28 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 166C9C 801C0C2C 000E7880 */  sll   $t7, $t6, 2
/* 166CA0 801C0C30 014FC821 */  addu  $t9, $t2, $t7
/* 166CA4 801C0C34 E7280000 */  swc1  $f8, ($t9)
/* 166CA8 801C0C38 8C580000 */  lw    $t8, ($v0)
/* 166CAC 801C0C3C 44815000 */  mtc1  $at, $f10
/* 166CB0 801C0C40 3C01800E */  lui   $at, 0x800e
/* 166CB4 801C0C44 00185880 */  sll   $t3, $t8, 2
/* 166CB8 801C0C48 002B0821 */  addu  $at, $at, $t3
/* 166CBC 801C0C4C E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 166CC0 801C0C50 8C430000 */  lw    $v1, ($v0)
/* 166CC4 801C0C54 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 166CC8 801C0C58 00031880 */  sll   $v1, $v1, 2
/* 166CCC 801C0C5C 01836021 */  addu  $t4, $t4, $v1
/* 166CD0 801C0C60 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 166CD4 801C0C64 00E37021 */  addu  $t6, $a3, $v1
/* 166CD8 801C0C68 318D0001 */  andi  $t5, $t4, 1
/* 166CDC 801C0C6C 51A00017 */  beql  $t5, $zero, .L801C0CCC_ovl7
/* 166CE0 801C0C70 00C31021 */   addu  $v0, $a2, $v1
/* 166CE4 801C0C74 44810000 */  mtc1  $at, $f0
/* 166CE8 801C0C78 3C01801D */  lui   $at, %hi(D_801CE654) # $at, 0x801d
/* 166CEC 801C0C7C C432E654 */  lwc1  $f18, %lo(D_801CE654)($at)
/* 166CF0 801C0C80 C5D00000 */  lwc1  $f16, ($t6)
/* 166CF4 801C0C84 01037821 */  addu  $t7, $t0, $v1
/* 166CF8 801C0C88 46128102 */  mul.s $f4, $f16, $f18
/* 166CFC 801C0C8C E5E40000 */  swc1  $f4, ($t7)
/* 166D00 801C0C90 8C590000 */  lw    $t9, ($v0)
/* 166D04 801C0C94 0019C080 */  sll   $t8, $t9, 2
/* 166D08 801C0C98 01382021 */  addu  $a0, $t1, $t8
/* 166D0C 801C0C9C C4860000 */  lwc1  $f6, ($a0)
/* 166D10 801C0CA0 46003202 */  mul.s $f8, $f6, $f0
/* 166D14 801C0CA4 E4880000 */  swc1  $f8, ($a0)
/* 166D18 801C0CA8 8C4B0000 */  lw    $t3, ($v0)
/* 166D1C 801C0CAC 000B6080 */  sll   $t4, $t3, 2
/* 166D20 801C0CB0 014C2821 */  addu  $a1, $t2, $t4
/* 166D24 801C0CB4 C4AA0000 */  lwc1  $f10, ($a1)
/* 166D28 801C0CB8 46005402 */  mul.s $f16, $f10, $f0
/* 166D2C 801C0CBC E4B00000 */  swc1  $f16, ($a1)
/* 166D30 801C0CC0 8C430000 */  lw    $v1, ($v0)
/* 166D34 801C0CC4 00031880 */  sll   $v1, $v1, 2
/* 166D38 801C0CC8 00C31021 */  addu  $v0, $a2, $v1
.L801C0CCC_ovl7:
/* 166D3C 801C0CCC 3C01801D */  lui   $at, %hi(D_801CE658) # $at, 0x801d
/* 166D40 801C0CD0 C424E658 */  lwc1  $f4, %lo(D_801CE658)($at)
/* 166D44 801C0CD4 C4520000 */  lwc1  $f18, ($v0)
/* 166D48 801C0CD8 46049182 */  mul.s $f6, $f18, $f4
/* 166D4C 801C0CDC 0C02BE85 */  jal   func_800AFA14
/* 166D50 801C0CE0 E4460000 */   swc1  $f6, ($v0)
/* 166D54 801C0CE4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 166D58 801C0CE8 27BD0018 */  addiu $sp, $sp, 0x18
/* 166D5C 801C0CEC 03E00008 */  jr    $ra
/* 166D60 801C0CF0 00000000 */   nop   

.type func_801C0AB0_ovl7, @function
.size func_801C0AB0_ovl7, . - func_801C0AB0_ovl7

glabel func_801C0CF4_ovl7
/* 166D64 801C0CF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 166D68 801C0CF8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166D6C 801C0CFC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166D70 801C0D00 AFBF001C */  sw    $ra, 0x1c($sp)
/* 166D74 801C0D04 AFB00018 */  sw    $s0, 0x18($sp)
/* 166D78 801C0D08 AFA40020 */  sw    $a0, 0x20($sp)
/* 166D7C 801C0D0C 8C500000 */  lw    $s0, ($v0)
/* 166D80 801C0D10 3C0E800F */  lui   $t6, 0x800f
/* 166D84 801C0D14 3C01800E */  lui   $at, 0x800e
/* 166D88 801C0D18 00108080 */  sll   $s0, $s0, 2
/* 166D8C 801C0D1C 01D07021 */  addu  $t6, $t6, $s0
/* 166D90 801C0D20 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 166D94 801C0D24 00300821 */  addu  $at, $at, $s0
/* 166D98 801C0D28 240F0003 */  li    $t7, 3
/* 166D9C 801C0D2C 1DC0000D */  bgtz  $t6, .L801C0D64_ovl7
/* 166DA0 801C0D30 3C04800E */   lui   $a0, 0x800e
/* 166DA4 801C0D34 AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 166DA8 801C0D38 8C580000 */  lw    $t8, ($v0)
/* 166DAC 801C0D3C 3C05801C */  lui   $a1, %hi(D_801C08E8) # $a1, 0x801c
/* 166DB0 801C0D40 24A508E8 */  addiu $a1, %lo(D_801C08E8) # addiu $a1, $a1, 0x8e8
/* 166DB4 801C0D44 0018C880 */  sll   $t9, $t8, 2
/* 166DB8 801C0D48 00992021 */  addu  $a0, $a0, $t9
/* 166DBC 801C0D4C 0C02C7B2 */  jal   assign_new_process_entry
/* 166DC0 801C0D50 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166DC4 801C0D54 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166DC8 801C0D58 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166DCC 801C0D5C 8C500000 */  lw    $s0, ($v0)
/* 166DD0 801C0D60 00108080 */  sll   $s0, $s0, 2
.L801C0D64_ovl7:
/* 166DD4 801C0D64 3C01801D */  lui   $at, %hi(D_801CE65C) # $at, 0x801d
/* 166DD8 801C0D68 C424E65C */  lwc1  $f4, %lo(D_801CE65C)($at)
/* 166DDC 801C0D6C 3C01800F */  lui   $at, 0x800f
/* 166DE0 801C0D70 00300821 */  addu  $at, $at, $s0
/* 166DE4 801C0D74 C426A6E0 */  lwc1  $f6, -0x5920($at)
/* 166DE8 801C0D78 3C01800E */  lui   $at, 0x800e
/* 166DEC 801C0D7C 00300821 */  addu  $at, $at, $s0
/* 166DF0 801C0D80 4604303E */  c.le.s $f6, $f4
/* 166DF4 801C0D84 24080003 */  li    $t0, 3
/* 166DF8 801C0D88 3C04800E */  lui   $a0, 0x800e
/* 166DFC 801C0D8C 4500000D */  bc1f  .L801C0DC4_ovl7
/* 166E00 801C0D90 00000000 */   nop   
/* 166E04 801C0D94 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 166E08 801C0D98 8C490000 */  lw    $t1, ($v0)
/* 166E0C 801C0D9C 3C05801C */  lui   $a1, %hi(D_801C08E8) # $a1, 0x801c
/* 166E10 801C0DA0 24A508E8 */  addiu $a1, %lo(D_801C08E8) # addiu $a1, $a1, 0x8e8
/* 166E14 801C0DA4 00095080 */  sll   $t2, $t1, 2
/* 166E18 801C0DA8 008A2021 */  addu  $a0, $a0, $t2
/* 166E1C 801C0DAC 0C02C7B2 */  jal   assign_new_process_entry
/* 166E20 801C0DB0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166E24 801C0DB4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 166E28 801C0DB8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 166E2C 801C0DBC 8C500000 */  lw    $s0, ($v0)
/* 166E30 801C0DC0 00108080 */  sll   $s0, $s0, 2
.L801C0DC4_ovl7:
/* 166E34 801C0DC4 3C01800E */  lui   $at, 0x800e
/* 166E38 801C0DC8 00300821 */  addu  $at, $at, $s0
/* 166E3C 801C0DCC C4283210 */  lwc1  $f8, 0x3210($at)
/* 166E40 801C0DD0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 166E44 801C0DD4 44815000 */  mtc1  $at, $f10
/* 166E48 801C0DD8 3C0B800F */  lui   $t3, 0x800f
/* 166E4C 801C0DDC 01705821 */  addu  $t3, $t3, $s0
/* 166E50 801C0DE0 460A403C */  c.lt.s $f8, $f10
/* 166E54 801C0DE4 00000000 */  nop   
/* 166E58 801C0DE8 45000023 */  bc1f  .L801C0E78_ovl7
/* 166E5C 801C0DEC 00000000 */   nop   
/* 166E60 801C0DF0 8D6B8AE0 */  lw    $t3, -0x7520($t3)
/* 166E64 801C0DF4 240D0003 */  li    $t5, 3
/* 166E68 801C0DF8 3C04800E */  lui   $a0, 0x800e
/* 166E6C 801C0DFC 316C0001 */  andi  $t4, $t3, 1
/* 166E70 801C0E00 11800010 */  beqz  $t4, .L801C0E44_ovl7
/* 166E74 801C0E04 3C01801D */   lui   $at, 0x801d
/* 166E78 801C0E08 3C01800E */  lui   $at, 0x800e
/* 166E7C 801C0E0C 00300821 */  addu  $at, $at, $s0
/* 166E80 801C0E10 AC2DDC50 */  sw    $t5, -0x23b0($at)
/* 166E84 801C0E14 8C4E0000 */  lw    $t6, ($v0)
/* 166E88 801C0E18 3C05801C */  lui   $a1, %hi(D_801C08E8) # $a1, 0x801c
/* 166E8C 801C0E1C 24A508E8 */  addiu $a1, %lo(D_801C08E8) # addiu $a1, $a1, 0x8e8
/* 166E90 801C0E20 000E7880 */  sll   $t7, $t6, 2
/* 166E94 801C0E24 008F2021 */  addu  $a0, $a0, $t7
/* 166E98 801C0E28 0C02C7B2 */  jal   assign_new_process_entry
/* 166E9C 801C0E2C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 166EA0 801C0E30 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 166EA4 801C0E34 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 166EA8 801C0E38 8F100000 */  lw    $s0, ($t8)
/* 166EAC 801C0E3C 1000000E */  b     .L801C0E78_ovl7
/* 166EB0 801C0E40 00108080 */   sll   $s0, $s0, 2
.L801C0E44_ovl7:
/* 166EB4 801C0E44 C430E660 */  lwc1  $f16, -0x19a0($at)
/* 166EB8 801C0E48 3C01800E */  lui   $at, 0x800e
/* 166EBC 801C0E4C 00300821 */  addu  $at, $at, $s0
/* 166EC0 801C0E50 E4303750 */  swc1  $f16, 0x3750($at)
/* 166EC4 801C0E54 8C590000 */  lw    $t9, ($v0)
/* 166EC8 801C0E58 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 166ECC 801C0E5C 44819000 */  mtc1  $at, $f18
/* 166ED0 801C0E60 3C01800E */  lui   $at, 0x800e
/* 166ED4 801C0E64 00194080 */  sll   $t0, $t9, 2
/* 166ED8 801C0E68 00280821 */  addu  $at, $at, $t0
/* 166EDC 801C0E6C E4323C90 */  swc1  $f18, 0x3c90($at)
/* 166EE0 801C0E70 8C500000 */  lw    $s0, ($v0)
/* 166EE4 801C0E74 00108080 */  sll   $s0, $s0, 2
.L801C0E78_ovl7:
/* 166EE8 801C0E78 3C09800F */  lui   $t1, 0x800f
/* 166EEC 801C0E7C 01304821 */  addu  $t1, $t1, $s0
/* 166EF0 801C0E80 8D298920 */  lw    $t1, -0x76e0($t1)
/* 166EF4 801C0E84 24010001 */  li    $at, 1
/* 166EF8 801C0E88 3C0A800F */  lui   $t2, 0x800f
/* 166EFC 801C0E8C 15210007 */  bne   $t1, $at, .L801C0EAC_ovl7
/* 166F00 801C0E90 01505021 */   addu  $t2, $t2, $s0
/* 166F04 801C0E94 8D4A8AE0 */  lw    $t2, -0x7520($t2)
/* 166F08 801C0E98 314B0001 */  andi  $t3, $t2, 1
/* 166F0C 801C0E9C 51600004 */  beql  $t3, $zero, .L801C0EB0_ovl7
/* 166F10 801C0EA0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 166F14 801C0EA4 0C02CD48 */  jal   func_800B3520
/* 166F18 801C0EA8 00000000 */   nop   
.L801C0EAC_ovl7:
/* 166F1C 801C0EAC 8FBF001C */  lw    $ra, 0x1c($sp)
.L801C0EB0_ovl7:
/* 166F20 801C0EB0 8FB00018 */  lw    $s0, 0x18($sp)
/* 166F24 801C0EB4 27BD0020 */  addiu $sp, $sp, 0x20
/* 166F28 801C0EB8 03E00008 */  jr    $ra
/* 166F2C 801C0EBC 00000000 */   nop   

.type func_801C0CF4_ovl7, @function
.size func_801C0CF4_ovl7, . - func_801C0CF4_ovl7

glabel func_801C0EC0_ovl7
/* 166F30 801C0EC0 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 166F34 801C0EC4 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 166F38 801C0EC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 166F3C 801C0ECC AFBF0014 */  sw    $ra, 0x14($sp)
/* 166F40 801C0ED0 AFA40018 */  sw    $a0, 0x18($sp)
/* 166F44 801C0ED4 8C620000 */  lw    $v0, ($v1)
/* 166F48 801C0ED8 3C01800E */  lui   $at, 0x800e
/* 166F4C 801C0EDC 240E0001 */  li    $t6, 1
/* 166F50 801C0EE0 00021080 */  sll   $v0, $v0, 2
/* 166F54 801C0EE4 00220821 */  addu  $at, $at, $v0
/* 166F58 801C0EE8 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 166F5C 801C0EEC 8C6F0000 */  lw    $t7, ($v1)
/* 166F60 801C0EF0 3C19800F */  lui   $t9, 0x800f
/* 166F64 801C0EF4 3C04800E */  lui   $a0, 0x800e
/* 166F68 801C0EF8 000FC080 */  sll   $t8, $t7, 2
/* 166F6C 801C0EFC 0338C821 */  addu  $t9, $t9, $t8
/* 166F70 801C0F00 8F399FE0 */  lw    $t9, -0x6020($t9)
/* 166F74 801C0F04 00822021 */  addu  $a0, $a0, $v0
/* 166F78 801C0F08 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 166F7C 801C0F0C 2B210002 */  slti  $at, $t9, 2
/* 166F80 801C0F10 10200005 */  beqz  $at, .L801C0F28_ovl7
/* 166F84 801C0F14 3C038005 */   lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 166F88 801C0F18 3C08801D */  lui   $t0, %hi(D_801CD1B0) # $t0, 0x801d
/* 166F8C 801C0F1C 2508D1B0 */  addiu $t0, %lo(D_801CD1B0) # addiu $t0, $t0, -0x2e50
/* 166F90 801C0F20 10000004 */  b     .L801C0F34_ovl7
/* 166F94 801C0F24 AC880098 */   sw    $t0, 0x98($a0)
.L801C0F28_ovl7:
/* 166F98 801C0F28 3C09801D */  lui   $t1, %hi(D_801CD1D4) # $t1, 0x801d
/* 166F9C 801C0F2C 2529D1D4 */  addiu $t1, %lo(D_801CD1D4) # addiu $t1, $t1, -0x2e2c
/* 166FA0 801C0F30 AC890098 */  sw    $t1, 0x98($a0)
.L801C0F34_ovl7:
/* 166FA4 801C0F34 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 166FA8 801C0F38 3C0C800F */  lui   $t4, %hi(D_800E8920) # $t4, 0x800f
/* 166FAC 801C0F3C 258C8920 */  addiu $t4, %lo(D_800E8920) # addiu $t4, $t4, -0x76e0
/* 166FB0 801C0F40 8C6A0000 */  lw    $t2, ($v1)
/* 166FB4 801C0F44 24010001 */  li    $at, 1
/* 166FB8 801C0F48 000A5880 */  sll   $t3, $t2, 2
/* 166FBC 801C0F4C 016C2021 */  addu  $a0, $t3, $t4
/* 166FC0 801C0F50 8C8D0000 */  lw    $t5, ($a0)
/* 166FC4 801C0F54 55A1000B */  bnel  $t5, $at, .L801C0F84_ovl7
/* 166FC8 801C0F58 AC800000 */   sw    $zero, ($a0)
/* 166FCC 801C0F5C 0C029D9E */  jal   play_sound
/* 166FD0 801C0F60 24040119 */   li    $a0, 281
/* 166FD4 801C0F64 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 166FD8 801C0F68 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 166FDC 801C0F6C 3C18800F */  lui   $t8, %hi(D_800E8920) # $t8, 0x800f
/* 166FE0 801C0F70 27188920 */  addiu $t8, %lo(D_800E8920) # addiu $t8, $t8, -0x76e0
/* 166FE4 801C0F74 8C6E0000 */  lw    $t6, ($v1)
/* 166FE8 801C0F78 000E7880 */  sll   $t7, $t6, 2
/* 166FEC 801C0F7C 01F82021 */  addu  $a0, $t7, $t8
/* 166FF0 801C0F80 AC800000 */  sw    $zero, ($a0)
.L801C0F84_ovl7:
/* 166FF4 801C0F84 8C790000 */  lw    $t9, ($v1)
/* 166FF8 801C0F88 3C09800F */  lui   $t1, %hi(D_800E9FE0) # $t1, 0x800f
/* 166FFC 801C0F8C 25299FE0 */  addiu $t1, %lo(D_800E9FE0) # addiu $t1, $t1, -0x6020
/* 167000 801C0F90 00194080 */  sll   $t0, $t9, 2
/* 167004 801C0F94 01091021 */  addu  $v0, $t0, $t1
/* 167008 801C0F98 8C4A0000 */  lw    $t2, ($v0)
/* 16700C 801C0F9C 254B0001 */  addiu $t3, $t2, 1
/* 167010 801C0FA0 0C066C59 */  jal   func_8019B164_ovl7
/* 167014 801C0FA4 AC4B0000 */   sw    $t3, ($v0)
/* 167018 801C0FA8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 16701C 801C0FAC 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 167020 801C0FB0 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 167024 801C0FB4 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 167028 801C0FB8 8C6C0000 */  lw    $t4, ($v1)
/* 16702C 801C0FBC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 167030 801C0FC0 44813000 */  mtc1  $at, $f6
/* 167034 801C0FC4 000C6880 */  sll   $t5, $t4, 2
/* 167038 801C0FC8 00AD1021 */  addu  $v0, $a1, $t5
/* 16703C 801C0FCC C4440000 */  lwc1  $f4, ($v0)
/* 167040 801C0FD0 3C06800E */  lui   $a2, %hi(D_800E64D0) # $a2, 0x800e
/* 167044 801C0FD4 24C664D0 */  addiu $a2, %lo(D_800E64D0) # addiu $a2, $a2, 0x64d0
/* 167048 801C0FD8 C4C00000 */  lwc1  $f0, ($a2)
/* 16704C 801C0FDC 44805000 */  mtc1  $zero, $f10
/* 167050 801C0FE0 46062202 */  mul.s $f8, $f4, $f6
/* 167054 801C0FE4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 167058 801C0FE8 460A003C */  c.lt.s $f0, $f10
/* 16705C 801C0FEC 44818000 */  mtc1  $at, $f16
/* 167060 801C0FF0 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 167064 801C0FF4 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 167068 801C0FF8 45000003 */  bc1f  .L801C1008_ovl7
/* 16706C 801C0FFC E4480000 */   swc1  $f8, ($v0)
/* 167070 801C1000 10000002 */  b     .L801C100C_ovl7
/* 167074 801C1004 46000087 */   neg.s $f2, $f0
.L801C1008_ovl7:
/* 167078 801C1008 46000086 */  mov.s $f2, $f0
.L801C100C_ovl7:
/* 16707C 801C100C 4602803E */  c.le.s $f16, $f2
/* 167080 801C1010 3C01801D */  lui   $at, %hi(D_801CE664) # $at, 0x801d
/* 167084 801C1014 4502000A */  bc1fl .L801C1040_ovl7
/* 167088 801C1018 8C790000 */   lw    $t9, ($v1)
/* 16708C 801C101C 8C6E0000 */  lw    $t6, ($v1)
/* 167090 801C1020 3C04800F */  lui   $a0, %hi(D_800EA6E0) # $a0, 0x800f
/* 167094 801C1024 C432E664 */  lwc1  $f18, %lo(D_801CE664)($at)
/* 167098 801C1028 2484A6E0 */  addiu $a0, %lo(D_800EA6E0) # addiu $a0, $a0, -0x5920
/* 16709C 801C102C 000E7880 */  sll   $t7, $t6, 2
/* 1670A0 801C1030 008FC021 */  addu  $t8, $a0, $t7
/* 1670A4 801C1034 10000007 */  b     .L801C1054_ovl7
/* 1670A8 801C1038 E7120000 */   swc1  $f18, ($t8)
/* 1670AC 801C103C 8C790000 */  lw    $t9, ($v1)
.L801C1040_ovl7:
/* 1670B0 801C1040 3C01801D */  lui   $at, %hi(D_801CE668) # $at, 0x801d
/* 1670B4 801C1044 C424E668 */  lwc1  $f4, %lo(D_801CE668)($at)
/* 1670B8 801C1048 00194080 */  sll   $t0, $t9, 2
/* 1670BC 801C104C 00884821 */  addu  $t1, $a0, $t0
/* 1670C0 801C1050 E5240000 */  swc1  $f4, ($t1)
.L801C1054_ovl7:
/* 1670C4 801C1054 8C620000 */  lw    $v0, ($v1)
/* 1670C8 801C1058 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1670CC 801C105C 44814000 */  mtc1  $at, $f8
/* 1670D0 801C1060 00021080 */  sll   $v0, $v0, 2
/* 1670D4 801C1064 00825021 */  addu  $t2, $a0, $v0
/* 1670D8 801C1068 C5460000 */  lwc1  $f6, ($t2)
/* 1670DC 801C106C 00A25821 */  addu  $t3, $a1, $v0
/* 1670E0 801C1070 C5700000 */  lwc1  $f16, ($t3)
/* 1670E4 801C1074 46083002 */  mul.s $f0, $f6, $f8
/* 1670E8 801C1078 00C26021 */  addu  $t4, $a2, $v0
/* 1670EC 801C107C 44802000 */  mtc1  $zero, $f4
/* 1670F0 801C1080 3C01800E */  lui   $at, 0x800e
/* 1670F4 801C1084 46000280 */  add.s $f10, $f0, $f0
/* 1670F8 801C1088 46105482 */  mul.s $f18, $f10, $f16
/* 1670FC 801C108C E5920000 */  swc1  $f18, ($t4)
/* 167100 801C1090 8C6D0000 */  lw    $t5, ($v1)
/* 167104 801C1094 240C003C */  li    $t4, 60
/* 167108 801C1098 000D7080 */  sll   $t6, $t5, 2
/* 16710C 801C109C 002E0821 */  addu  $at, $at, $t6
/* 167110 801C10A0 E4246690 */  swc1  $f4, 0x6690($at)
/* 167114 801C10A4 8C6F0000 */  lw    $t7, ($v1)
/* 167118 801C10A8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 16711C 801C10AC 44813000 */  mtc1  $at, $f6
/* 167120 801C10B0 3C01800E */  lui   $at, 0x800e
/* 167124 801C10B4 000FC080 */  sll   $t8, $t7, 2
/* 167128 801C10B8 00380821 */  addu  $at, $at, $t8
/* 16712C 801C10BC E4266850 */  swc1  $f6, 0x6850($at)
/* 167130 801C10C0 8C620000 */  lw    $v0, ($v1)
/* 167134 801C10C4 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 167138 801C10C8 44815000 */  mtc1  $at, $f10
/* 16713C 801C10CC 00021080 */  sll   $v0, $v0, 2
/* 167140 801C10D0 0082C821 */  addu  $t9, $a0, $v0
/* 167144 801C10D4 C7280000 */  lwc1  $f8, ($t9)
/* 167148 801C10D8 3C01800E */  lui   $at, 0x800e
/* 16714C 801C10DC 00220821 */  addu  $at, $at, $v0
/* 167150 801C10E0 460A4402 */  mul.s $f16, $f8, $f10
/* 167154 801C10E4 E4303210 */  swc1  $f16, 0x3210($at)
/* 167158 801C10E8 8C680000 */  lw    $t0, ($v1)
/* 16715C 801C10EC 3C01801D */  lui   $at, %hi(D_801CE66C) # $at, 0x801d
/* 167160 801C10F0 C432E66C */  lwc1  $f18, %lo(D_801CE66C)($at)
/* 167164 801C10F4 3C01800E */  lui   $at, 0x800e
/* 167168 801C10F8 00084880 */  sll   $t1, $t0, 2
/* 16716C 801C10FC 00290821 */  addu  $at, $at, $t1
/* 167170 801C1100 E4323750 */  swc1  $f18, 0x3750($at)
/* 167174 801C1104 8C6A0000 */  lw    $t2, ($v1)
/* 167178 801C1108 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 16717C 801C110C 44812000 */  mtc1  $at, $f4
/* 167180 801C1110 3C01800E */  lui   $at, 0x800e
/* 167184 801C1114 000A5880 */  sll   $t3, $t2, 2
/* 167188 801C1118 002B0821 */  addu  $at, $at, $t3
/* 16718C 801C111C E4243C90 */  swc1  $f4, 0x3c90($at)
/* 167190 801C1120 8C6D0000 */  lw    $t5, ($v1)
/* 167194 801C1124 3C01800F */  lui   $at, 0x800f
/* 167198 801C1128 000D7080 */  sll   $t6, $t5, 2
/* 16719C 801C112C 002E0821 */  addu  $at, $at, $t6
/* 1671A0 801C1130 0C02BE85 */  jal   func_800AFA14
/* 1671A4 801C1134 AC2C9E20 */   sw    $t4, -0x61e0($at)
/* 1671A8 801C1138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1671AC 801C113C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1671B0 801C1140 03E00008 */  jr    $ra
/* 1671B4 801C1144 00000000 */   nop   

.type func_801C0EC0_ovl7, @function
.size func_801C0EC0_ovl7, . - func_801C0EC0_ovl7

glabel func_801C1148_ovl7
/* 1671B8 801C1148 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1671BC 801C114C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1671C0 801C1150 AFA40000 */  sw    $a0, ($sp)
/* 1671C4 801C1154 3C0E800F */  lui   $t6, 0x800f
/* 1671C8 801C1158 8C430000 */  lw    $v1, ($v0)
/* 1671CC 801C115C 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 1671D0 801C1160 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 1671D4 801C1164 00031880 */  sll   $v1, $v1, 2
/* 1671D8 801C1168 01C37021 */  addu  $t6, $t6, $v1
/* 1671DC 801C116C 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 1671E0 801C1170 00A32021 */  addu  $a0, $a1, $v1
/* 1671E4 801C1174 3C01801D */  lui   $at, 0x801d
/* 1671E8 801C1178 31CF0001 */  andi  $t7, $t6, 1
/* 1671EC 801C117C 11E00035 */  beqz  $t7, .L801C1254_ovl7
/* 1671F0 801C1180 00000000 */   nop   
/* 1671F4 801C1184 C4800000 */  lwc1  $f0, ($a0)
/* 1671F8 801C1188 44802000 */  mtc1  $zero, $f4
/* 1671FC 801C118C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 167200 801C1190 44813000 */  mtc1  $at, $f6
/* 167204 801C1194 4604003C */  c.lt.s $f0, $f4
/* 167208 801C1198 3C01801D */  lui   $at, %hi(D_801CE670) # $at, 0x801d
/* 16720C 801C119C 45020004 */  bc1fl .L801C11B0_ovl7
/* 167210 801C11A0 46000086 */   mov.s $f2, $f0
/* 167214 801C11A4 10000002 */  b     .L801C11B0_ovl7
/* 167218 801C11A8 46000087 */   neg.s $f2, $f0
/* 16721C 801C11AC 46000086 */  mov.s $f2, $f0
.L801C11B0_ovl7:
/* 167220 801C11B0 4602303C */  c.lt.s $f6, $f2
/* 167224 801C11B4 00000000 */  nop   
/* 167228 801C11B8 45020006 */  bc1fl .L801C11D4_ovl7
/* 16722C 801C11BC 44808000 */   mtc1  $zero, $f16
/* 167230 801C11C0 C428E670 */  lwc1  $f8, %lo(D_801CE670)($at)
/* 167234 801C11C4 46080282 */  mul.s $f10, $f0, $f8
/* 167238 801C11C8 10000013 */  b     .L801C1218_ovl7
/* 16723C 801C11CC E48A0000 */   swc1  $f10, ($a0)
/* 167240 801C11D0 44808000 */  mtc1  $zero, $f16
.L801C11D4_ovl7:
/* 167244 801C11D4 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 167248 801C11D8 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 16724C 801C11DC 0083C021 */  addu  $t8, $a0, $v1
/* 167250 801C11E0 E7100000 */  swc1  $f16, ($t8)
/* 167254 801C11E4 8C430000 */  lw    $v1, ($v0)
/* 167258 801C11E8 3C01801D */  lui   $at, %hi(D_801CE674) # $at, 0x801d
/* 16725C 801C11EC 00031880 */  sll   $v1, $v1, 2
/* 167260 801C11F0 0083C821 */  addu  $t9, $a0, $v1
/* 167264 801C11F4 C7320000 */  lwc1  $f18, ($t9)
/* 167268 801C11F8 00A34021 */  addu  $t0, $a1, $v1
/* 16726C 801C11FC E5120000 */  swc1  $f18, ($t0)
/* 167270 801C1200 8C490000 */  lw    $t1, ($v0)
/* 167274 801C1204 C424E674 */  lwc1  $f4, %lo(D_801CE674)($at)
/* 167278 801C1208 3C01800E */  lui   $at, 0x800e
/* 16727C 801C120C 00095080 */  sll   $t2, $t1, 2
/* 167280 801C1210 002A0821 */  addu  $at, $at, $t2
/* 167284 801C1214 E4246850 */  swc1  $f4, 0x6850($at)
.L801C1218_ovl7:
/* 167288 801C1218 8C4B0000 */  lw    $t3, ($v0)
/* 16728C 801C121C 3C01801D */  lui   $at, %hi(D_801CE678) # $at, 0x801d
/* 167290 801C1220 C426E678 */  lwc1  $f6, %lo(D_801CE678)($at)
/* 167294 801C1224 3C01800E */  lui   $at, 0x800e
/* 167298 801C1228 000B6080 */  sll   $t4, $t3, 2
/* 16729C 801C122C 002C0821 */  addu  $at, $at, $t4
/* 1672A0 801C1230 E4263750 */  swc1  $f6, 0x3750($at)
/* 1672A4 801C1234 8C4D0000 */  lw    $t5, ($v0)
/* 1672A8 801C1238 3C01801D */  lui   $at, %hi(D_801CE67C) # $at, 0x801d
/* 1672AC 801C123C C428E67C */  lwc1  $f8, %lo(D_801CE67C)($at)
/* 1672B0 801C1240 3C01800E */  lui   $at, 0x800e
/* 1672B4 801C1244 000D7080 */  sll   $t6, $t5, 2
/* 1672B8 801C1248 002E0821 */  addu  $at, $at, $t6
/* 1672BC 801C124C 03E00008 */  jr    $ra
/* 1672C0 801C1250 E4283C90 */   swc1  $f8, 0x3c90($at)

.L801C1254_ovl7:
/* 1672C4 801C1254 C42AE680 */  lwc1  $f10, -0x1980($at)
/* 1672C8 801C1258 3C01800E */  lui   $at, 0x800e
/* 1672CC 801C125C 00230821 */  addu  $at, $at, $v1
/* 1672D0 801C1260 E42A3750 */  swc1  $f10, 0x3750($at)
/* 1672D4 801C1264 8C4F0000 */  lw    $t7, ($v0)
/* 1672D8 801C1268 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 1672DC 801C126C 44818000 */  mtc1  $at, $f16
/* 1672E0 801C1270 3C01800E */  lui   $at, 0x800e
/* 1672E4 801C1274 000FC080 */  sll   $t8, $t7, 2
/* 1672E8 801C1278 00380821 */  addu  $at, $at, $t8
/* 1672EC 801C127C E4303C90 */  swc1  $f16, 0x3c90($at)
/* 1672F0 801C1280 03E00008 */  jr    $ra
/* 1672F4 801C1284 00000000 */   nop   

.type func_801C1148_ovl7, @function
.size func_801C1148_ovl7, . - func_801C1148_ovl7

glabel func_801C1288_ovl7
/* 1672F8 801C1288 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1672FC 801C128C 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 167300 801C1290 8CAE0000 */  lw    $t6, ($a1)
/* 167304 801C1294 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 167308 801C1298 AFBF0014 */  sw    $ra, 0x14($sp)
/* 16730C 801C129C AFA40018 */  sw    $a0, 0x18($sp)
/* 167310 801C12A0 8DC20000 */  lw    $v0, ($t6)
/* 167314 801C12A4 3C03800E */  lui   $v1, 0x800e
/* 167318 801C12A8 3C01800E */  lui   $at, 0x800e
/* 16731C 801C12AC 00021080 */  sll   $v0, $v0, 2
/* 167320 801C12B0 00621821 */  addu  $v1, $v1, $v0
/* 167324 801C12B4 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 167328 801C12B8 00220821 */  addu  $at, $at, $v0
/* 16732C 801C12BC 240F0002 */  li    $t7, 2
/* 167330 801C12C0 3C18801D */  lui   $t8, %hi(D_801CD168) # $t8, 0x801d
/* 167334 801C12C4 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 167338 801C12C8 2718D168 */  addiu $t8, %lo(D_801CD168) # addiu $t8, $t8, -0x2e98
/* 16733C 801C12CC AC780098 */  sw    $t8, 0x98($v1)
/* 167340 801C12D0 8CA80000 */  lw    $t0, ($a1)
/* 167344 801C12D4 3C01800F */  lui   $at, 0x800f
/* 167348 801C12D8 24190001 */  li    $t9, 1
/* 16734C 801C12DC 8D090000 */  lw    $t1, ($t0)
/* 167350 801C12E0 24040119 */  li    $a0, 281
/* 167354 801C12E4 00095080 */  sll   $t2, $t1, 2
/* 167358 801C12E8 002A0821 */  addu  $at, $at, $t2
/* 16735C 801C12EC 0C029D9E */  jal   play_sound
/* 167360 801C12F0 AC398920 */   sw    $t9, -0x76e0($at)
/* 167364 801C12F4 0C02CD48 */  jal   func_800B3520
/* 167368 801C12F8 00000000 */   nop   
/* 16736C 801C12FC 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 167370 801C1300 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 167374 801C1304 3C0E800F */  lui   $t6, 0x800f
/* 167378 801C1308 8D6C0000 */  lw    $t4, ($t3)
/* 16737C 801C130C 000C6880 */  sll   $t5, $t4, 2
/* 167380 801C1310 01CD7021 */  addu  $t6, $t6, $t5
/* 167384 801C1314 8DCE9C60 */  lw    $t6, -0x63a0($t6)
/* 167388 801C1318 2DC10007 */  sltiu $at, $t6, 7
/* 16738C 801C131C 10200016 */  beqz  $at, .L801C1378_ovl7
/* 167390 801C1320 000E7080 */   sll   $t6, $t6, 2
/* 167394 801C1324 3C01801D */  lui   $at, 0x801d
/* 167398 801C1328 002E0821 */  addu  $at, $at, $t6
/* 16739C 801C132C 8C2EE684 */  lw    $t6, -0x197c($at)
/* 1673A0 801C1330 01C00008 */  jr    $t6
/* 1673A4 801C1334 00000000 */   nop   
/* 1673A8 801C1338 0C002DAF */  jal   finish_current_thread
/* 1673AC 801C133C 2404003C */   li    $a0, 60
/* 1673B0 801C1340 1000000F */  b     .L801C1380_ovl7
/* 1673B4 801C1344 00000000 */   nop   
/* 1673B8 801C1348 0C002DAF */  jal   finish_current_thread
/* 1673BC 801C134C 24040032 */   li    $a0, 50
/* 1673C0 801C1350 1000000B */  b     .L801C1380_ovl7
/* 1673C4 801C1354 00000000 */   nop   
/* 1673C8 801C1358 0C002DAF */  jal   finish_current_thread
/* 1673CC 801C135C 24040028 */   li    $a0, 40
/* 1673D0 801C1360 10000007 */  b     .L801C1380_ovl7
/* 1673D4 801C1364 00000000 */   nop   
/* 1673D8 801C1368 0C002DAF */  jal   finish_current_thread
/* 1673DC 801C136C 2404001E */   li    $a0, 30
/* 1673E0 801C1370 10000003 */  b     .L801C1380_ovl7
/* 1673E4 801C1374 00000000 */   nop   
.L801C1378_ovl7:
/* 1673E8 801C1378 0C002DAF */  jal   finish_current_thread
/* 1673EC 801C137C 2404001E */   li    $a0, 30
.L801C1380_ovl7:
/* 1673F0 801C1380 0C070184 */  jal   D_801C0610_ovl7
/* 1673F4 801C1384 8FA40018 */   lw    $a0, 0x18($sp)
/* 1673F8 801C1388 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1673FC 801C138C 27BD0018 */  addiu $sp, $sp, 0x18
/* 167400 801C1390 03E00008 */  jr    $ra
/* 167404 801C1394 00000000 */   nop   

.type func_801C1288_ovl7, @function
.size func_801C1288_ovl7, . - func_801C1288_ovl7

glabel func_801C1398_ovl7
/* 167408 801C1398 03E00008 */  jr    $ra
/* 16740C 801C139C AFA40000 */   sw    $a0, ($sp)

.type func_801C1398_ovl7, @function
.size func_801C1398_ovl7, . - func_801C1398_ovl7

glabel func_801C13A0_ovl7
/* 167410 801C13A0 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 167414 801C13A4 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 167418 801C13A8 8CAE0000 */  lw    $t6, ($a1)
/* 16741C 801C13AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 167420 801C13B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 167424 801C13B4 AFA40018 */  sw    $a0, 0x18($sp)
/* 167428 801C13B8 8DC30000 */  lw    $v1, ($t6)
/* 16742C 801C13BC 3C04800E */  lui   $a0, 0x800e
/* 167430 801C13C0 3C01800E */  lui   $at, 0x800e
/* 167434 801C13C4 00031880 */  sll   $v1, $v1, 2
/* 167438 801C13C8 00832021 */  addu  $a0, $a0, $v1
/* 16743C 801C13CC 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 167440 801C13D0 00230821 */  addu  $at, $at, $v1
/* 167444 801C13D4 240F0003 */  li    $t7, 3
/* 167448 801C13D8 3C18801D */  lui   $t8, %hi(D_801CD18C) # $t8, 0x801d
/* 16744C 801C13DC AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 167450 801C13E0 2718D18C */  addiu $t8, %lo(D_801CD18C) # addiu $t8, $t8, -0x2e74
/* 167454 801C13E4 AC980098 */  sw    $t8, 0x98($a0)
/* 167458 801C13E8 8CA20000 */  lw    $v0, ($a1)
/* 16745C 801C13EC 3C01800F */  lui   $at, 0x800f
/* 167460 801C13F0 44802000 */  mtc1  $zero, $f4
/* 167464 801C13F4 8C590000 */  lw    $t9, ($v0)
/* 167468 801C13F8 00194080 */  sll   $t0, $t9, 2
/* 16746C 801C13FC 00280821 */  addu  $at, $at, $t0
/* 167470 801C1400 AC208920 */  sw    $zero, -0x76e0($at)
/* 167474 801C1404 8C490000 */  lw    $t1, ($v0)
/* 167478 801C1408 3C01800F */  lui   $at, 0x800f
/* 16747C 801C140C 00095080 */  sll   $t2, $t1, 2
/* 167480 801C1410 002A0821 */  addu  $at, $at, $t2
/* 167484 801C1414 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 167488 801C1418 8C4B0000 */  lw    $t3, ($v0)
/* 16748C 801C141C 3C01801D */  lui   $at, %hi(D_801CE6A0) # $at, 0x801d
/* 167490 801C1420 C426E6A0 */  lwc1  $f6, %lo(D_801CE6A0)($at)
/* 167494 801C1424 3C01800E */  lui   $at, 0x800e
/* 167498 801C1428 000B6080 */  sll   $t4, $t3, 2
/* 16749C 801C142C 002C0821 */  addu  $at, $at, $t4
/* 1674A0 801C1430 E4263750 */  swc1  $f6, 0x3750($at)
/* 1674A4 801C1434 8C4D0000 */  lw    $t5, ($v0)
/* 1674A8 801C1438 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 1674AC 801C143C 44814000 */  mtc1  $at, $f8
/* 1674B0 801C1440 3C01800E */  lui   $at, 0x800e
/* 1674B4 801C1444 000D7080 */  sll   $t6, $t5, 2
/* 1674B8 801C1448 002E0821 */  addu  $at, $at, $t6
/* 1674BC 801C144C 0C02BE85 */  jal   func_800AFA14
/* 1674C0 801C1450 E4283C90 */   swc1  $f8, 0x3c90($at)
/* 1674C4 801C1454 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1674C8 801C1458 27BD0018 */  addiu $sp, $sp, 0x18
/* 1674CC 801C145C 03E00008 */  jr    $ra
/* 1674D0 801C1460 00000000 */   nop   

.type func_801C13A0_ovl7, @function
.size func_801C13A0_ovl7, . - func_801C13A0_ovl7

glabel func_801C1464_ovl7
/* 1674D4 801C1464 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1674D8 801C1468 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1674DC 801C146C AFA40000 */  sw    $a0, ($sp)
/* 1674E0 801C1470 3C0E800F */  lui   $t6, 0x800f
/* 1674E4 801C1474 8C430000 */  lw    $v1, ($v0)
/* 1674E8 801C1478 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 1674EC 801C147C 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 1674F0 801C1480 00031880 */  sll   $v1, $v1, 2
/* 1674F4 801C1484 01C37021 */  addu  $t6, $t6, $v1
/* 1674F8 801C1488 8DCE8AE0 */  lw    $t6, -0x7520($t6)
/* 1674FC 801C148C 00A32021 */  addu  $a0, $a1, $v1
/* 167500 801C1490 3C01801D */  lui   $at, 0x801d
/* 167504 801C1494 31CF0001 */  andi  $t7, $t6, 1
/* 167508 801C1498 11E00056 */  beqz  $t7, .L801C15F4_ovl7
/* 16750C 801C149C 00000000 */   nop   
/* 167510 801C14A0 44806000 */  mtc1  $zero, $f12
/* 167514 801C14A4 C4800000 */  lwc1  $f0, ($a0)
/* 167518 801C14A8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 16751C 801C14AC 44812000 */  mtc1  $at, $f4
/* 167520 801C14B0 460C003C */  c.lt.s $f0, $f12
/* 167524 801C14B4 3C01801D */  lui   $at, %hi(D_801CE6A4) # $at, 0x801d
/* 167528 801C14B8 45020004 */  bc1fl .L801C14CC_ovl7
/* 16752C 801C14BC 46000086 */   mov.s $f2, $f0
/* 167530 801C14C0 10000002 */  b     .L801C14CC_ovl7
/* 167534 801C14C4 46000087 */   neg.s $f2, $f0
/* 167538 801C14C8 46000086 */  mov.s $f2, $f0
.L801C14CC_ovl7:
/* 16753C 801C14CC 4602203C */  c.lt.s $f4, $f2
/* 167540 801C14D0 00000000 */  nop   
/* 167544 801C14D4 4502000D */  bc1fl .L801C150C_ovl7
/* 167548 801C14D8 44807000 */   mtc1  $zero, $f14
/* 16754C 801C14DC C426E6A4 */  lwc1  $f6, %lo(D_801CE6A4)($at)
/* 167550 801C14E0 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 167554 801C14E4 44807000 */  mtc1  $zero, $f14
/* 167558 801C14E8 46060202 */  mul.s $f8, $f0, $f6
/* 16755C 801C14EC 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 167560 801C14F0 E4880000 */  swc1  $f8, ($a0)
/* 167564 801C14F4 8C580000 */  lw    $t8, ($v0)
/* 167568 801C14F8 0018C880 */  sll   $t9, $t8, 2
/* 16756C 801C14FC 00D94021 */  addu  $t0, $a2, $t9
/* 167570 801C1500 10000013 */  b     .L801C1550_ovl7
/* 167574 801C1504 E50E0000 */   swc1  $f14, ($t0)
/* 167578 801C1508 44807000 */  mtc1  $zero, $f14
.L801C150C_ovl7:
/* 16757C 801C150C 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 167580 801C1510 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 167584 801C1514 00C34821 */  addu  $t1, $a2, $v1
/* 167588 801C1518 E52E0000 */  swc1  $f14, ($t1)
/* 16758C 801C151C 8C430000 */  lw    $v1, ($v0)
/* 167590 801C1520 3C01801D */  lui   $at, %hi(D_801CE6A8) # $at, 0x801d
/* 167594 801C1524 00031880 */  sll   $v1, $v1, 2
/* 167598 801C1528 00C35021 */  addu  $t2, $a2, $v1
/* 16759C 801C152C C54A0000 */  lwc1  $f10, ($t2)
/* 1675A0 801C1530 00A35821 */  addu  $t3, $a1, $v1
/* 1675A4 801C1534 E56A0000 */  swc1  $f10, ($t3)
/* 1675A8 801C1538 8C4C0000 */  lw    $t4, ($v0)
/* 1675AC 801C153C C430E6A8 */  lwc1  $f16, %lo(D_801CE6A8)($at)
/* 1675B0 801C1540 3C01800E */  lui   $at, 0x800e
/* 1675B4 801C1544 000C6880 */  sll   $t5, $t4, 2
/* 1675B8 801C1548 002D0821 */  addu  $at, $at, $t5
/* 1675BC 801C154C E4306850 */  swc1  $f16, 0x6850($at)
.L801C1550_ovl7:
/* 1675C0 801C1550 8C430000 */  lw    $v1, ($v0)
/* 1675C4 801C1554 3C0E800E */  lui   $t6, %hi(D_800E3210) # $t6, 0x800e
/* 1675C8 801C1558 25CE3210 */  addiu $t6, %lo(D_800E3210) # addiu $t6, $t6, 0x3210
/* 1675CC 801C155C 00031880 */  sll   $v1, $v1, 2
/* 1675D0 801C1560 006E2021 */  addu  $a0, $v1, $t6
/* 1675D4 801C1564 C4800000 */  lwc1  $f0, ($a0)
/* 1675D8 801C1568 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1675DC 801C156C 44819000 */  mtc1  $at, $f18
/* 1675E0 801C1570 460C003C */  c.lt.s $f0, $f12
/* 1675E4 801C1574 3C01801D */  lui   $at, %hi(D_801CE6AC) # $at, 0x801d
/* 1675E8 801C1578 45020004 */  bc1fl .L801C158C_ovl7
/* 1675EC 801C157C 46000086 */   mov.s $f2, $f0
/* 1675F0 801C1580 10000002 */  b     .L801C158C_ovl7
/* 1675F4 801C1584 46000087 */   neg.s $f2, $f0
/* 1675F8 801C1588 46000086 */  mov.s $f2, $f0
.L801C158C_ovl7:
/* 1675FC 801C158C 4602903C */  c.lt.s $f18, $f2
/* 167600 801C1590 00000000 */  nop   
/* 167604 801C1594 4500000A */  bc1f  .L801C15C0_ovl7
/* 167608 801C1598 00000000 */   nop   
/* 16760C 801C159C C424E6AC */  lwc1  $f4, %lo(D_801CE6AC)($at)
/* 167610 801C15A0 3C01800E */  lui   $at, 0x800e
/* 167614 801C15A4 46040182 */  mul.s $f6, $f0, $f4
/* 167618 801C15A8 E4860000 */  swc1  $f6, ($a0)
/* 16761C 801C15AC 8C4F0000 */  lw    $t7, ($v0)
/* 167620 801C15B0 000FC080 */  sll   $t8, $t7, 2
/* 167624 801C15B4 00380821 */  addu  $at, $at, $t8
/* 167628 801C15B8 03E00008 */  jr    $ra
/* 16762C 801C15BC E42E3750 */   swc1  $f14, 0x3750($at)

.L801C15C0_ovl7:
/* 167630 801C15C0 3C01801D */  lui   $at, %hi(D_801CE6B0) # $at, 0x801d
/* 167634 801C15C4 C428E6B0 */  lwc1  $f8, %lo(D_801CE6B0)($at)
/* 167638 801C15C8 3C01800E */  lui   $at, 0x800e
/* 16763C 801C15CC 00230821 */  addu  $at, $at, $v1
/* 167640 801C15D0 E4283750 */  swc1  $f8, 0x3750($at)
/* 167644 801C15D4 8C590000 */  lw    $t9, ($v0)
/* 167648 801C15D8 3C01801D */  lui   $at, %hi(D_801CE6B4) # $at, 0x801d
/* 16764C 801C15DC C42AE6B4 */  lwc1  $f10, %lo(D_801CE6B4)($at)
/* 167650 801C15E0 3C01800E */  lui   $at, 0x800e
/* 167654 801C15E4 00194080 */  sll   $t0, $t9, 2
/* 167658 801C15E8 00280821 */  addu  $at, $at, $t0
/* 16765C 801C15EC 03E00008 */  jr    $ra
/* 167660 801C15F0 E42A3C90 */   swc1  $f10, 0x3c90($at)

.L801C15F4_ovl7:
/* 167664 801C15F4 C430E6B8 */  lwc1  $f16, -0x1948($at)
/* 167668 801C15F8 3C01800E */  lui   $at, 0x800e
/* 16766C 801C15FC 00230821 */  addu  $at, $at, $v1
/* 167670 801C1600 E4303750 */  swc1  $f16, 0x3750($at)
/* 167674 801C1604 8C490000 */  lw    $t1, ($v0)
/* 167678 801C1608 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 16767C 801C160C 44819000 */  mtc1  $at, $f18
/* 167680 801C1610 3C01800E */  lui   $at, 0x800e
/* 167684 801C1614 00095080 */  sll   $t2, $t1, 2
/* 167688 801C1618 002A0821 */  addu  $at, $at, $t2
/* 16768C 801C161C E4323C90 */  swc1  $f18, 0x3c90($at)
/* 167690 801C1620 03E00008 */  jr    $ra
/* 167694 801C1624 00000000 */   nop   

.type func_801C1464_ovl7, @function
.size func_801C1464_ovl7, . - func_801C1464_ovl7

glabel func_801C1628_ovl7
/* 167698 801C1628 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 16769C 801C162C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1676A0 801C1630 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1676A4 801C1634 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1676A8 801C1638 AFA40018 */  sw    $a0, 0x18($sp)
/* 1676AC 801C163C 8DF80000 */  lw    $t8, ($t7)
/* 1676B0 801C1640 3C0E801C */  lui   $t6, %hi(D_801C1718) # $t6, 0x801c
/* 1676B4 801C1644 3C01800E */  lui   $at, 0x800e
/* 1676B8 801C1648 0018C880 */  sll   $t9, $t8, 2
/* 1676BC 801C164C 00390821 */  addu  $at, $at, $t9
/* 1676C0 801C1650 25CE1718 */  addiu $t6, %lo(D_801C1718) # addiu $t6, $t6, 0x1718
/* 1676C4 801C1654 3C04801C */  lui   $a0, %hi(D_801C1698) # $a0, 0x801c
/* 1676C8 801C1658 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 1676CC 801C165C 0C068354 */  jal   func_801A0D50
/* 1676D0 801C1660 24841698 */   addiu $a0, %lo(D_801C1698) # addiu $a0, $a0, 0x1698
/* 1676D4 801C1664 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1676D8 801C1668 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1676DC 801C166C 3C01800E */  lui   $at, 0x800e
/* 1676E0 801C1670 8FA40018 */  lw    $a0, 0x18($sp)
/* 1676E4 801C1674 8D090000 */  lw    $t1, ($t0)
/* 1676E8 801C1678 00095080 */  sll   $t2, $t1, 2
/* 1676EC 801C167C 002A0821 */  addu  $at, $at, $t2
/* 1676F0 801C1680 0C0705A6 */  jal   D_801C1698_ovl7
/* 1676F4 801C1684 AC20DC50 */   sw    $zero, -0x23b0($at)
/* 1676F8 801C1688 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1676FC 801C168C 27BD0018 */  addiu $sp, $sp, 0x18
/* 167700 801C1690 03E00008 */  jr    $ra
/* 167704 801C1694 00000000 */   nop   

.type func_801C1628_ovl7, @function
.size func_801C1628_ovl7, . - func_801C1628_ovl7

glabel func_801C1698_ovl7
/* 167708 801C1698 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 16770C 801C169C AFB20020 */  sw    $s2, 0x20($sp)
/* 167710 801C16A0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 167714 801C16A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 167718 801C16A8 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 16771C 801C16AC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 167720 801C16B0 3C12801D */  lui   $s2, %hi(D_801CD958) # $s2, 0x801d
/* 167724 801C16B4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 167728 801C16B8 AFA40028 */  sw    $a0, 0x28($sp)
/* 16772C 801C16BC 2652D958 */  addiu $s2, %lo(D_801CD958) # addiu $s2, $s2, -0x26a8
/* 167730 801C16C0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 167734 801C16C4 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 167738 801C16C8 8E2E0000 */  lw    $t6, ($s1)
.L801C16CC_ovl7:
/* 16773C 801C16CC 24050004 */  li    $a1, 4
/* 167740 801C16D0 02403025 */  move  $a2, $s2
/* 167744 801C16D4 8DCF0000 */  lw    $t7, ($t6)
/* 167748 801C16D8 000FC080 */  sll   $t8, $t7, 2
/* 16774C 801C16DC 0218C821 */  addu  $t9, $s0, $t8
/* 167750 801C16E0 0C02911F */  jal   call_virtual_function
/* 167754 801C16E4 8F240000 */   lw    $a0, ($t9)
/* 167758 801C16E8 1000FFF8 */  b     .L801C16CC_ovl7
/* 16775C 801C16EC 8E2E0000 */   lw    $t6, ($s1)
/* 167760 801C16F0 00000000 */  nop   
/* 167764 801C16F4 00000000 */  nop   
/* 167768 801C16F8 00000000 */  nop   
/* 16776C 801C16FC 00000000 */  nop   
/* 167770 801C1700 8FBF0024 */  lw    $ra, 0x24($sp)
/* 167774 801C1704 8FB00018 */  lw    $s0, 0x18($sp)
/* 167778 801C1708 8FB1001C */  lw    $s1, 0x1c($sp)
/* 16777C 801C170C 8FB20020 */  lw    $s2, 0x20($sp)
/* 167780 801C1710 03E00008 */  jr    $ra
/* 167784 801C1714 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801C1698_ovl7, @function
.size func_801C1698_ovl7, . - func_801C1698_ovl7

glabel func_801C1718_ovl7
/* 167788 801C1718 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 16778C 801C171C AFBF0014 */  sw    $ra, 0x14($sp)
/* 167790 801C1720 0C070162 */  jal   func_801C0588_ovl7
/* 167794 801C1724 AFA40020 */   sw    $a0, 0x20($sp)
/* 167798 801C1728 1440003D */  bnez  $v0, .L801C1820_ovl7
/* 16779C 801C172C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1677A0 801C1730 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1677A4 801C1734 3C01800E */  lui   $at, 0x800e
/* 1677A8 801C1738 3C04800E */  lui   $a0, 0x800e
/* 1677AC 801C173C 8DC20000 */  lw    $v0, ($t6)
/* 1677B0 801C1740 3C05801C */  lui   $a1, %hi(D_801C0610) # $a1, 0x801c
/* 1677B4 801C1744 24A50610 */  addiu $a1, %lo(D_801C0610) # addiu $a1, $a1, 0x610
/* 1677B8 801C1748 00021080 */  sll   $v0, $v0, 2
/* 1677BC 801C174C 00220821 */  addu  $at, $at, $v0
/* 1677C0 801C1750 C4242790 */  lwc1  $f4, 0x2790($at)
/* 1677C4 801C1754 3C01801D */  lui   $at, %hi(D_801CE6BC) # $at, 0x801d
/* 1677C8 801C1758 C426E6BC */  lwc1  $f6, %lo(D_801CE6BC)($at)
/* 1677CC 801C175C 00822021 */  addu  $a0, $a0, $v0
/* 1677D0 801C1760 4606203C */  c.lt.s $f4, $f6
/* 1677D4 801C1764 00000000 */  nop   
/* 1677D8 801C1768 45000005 */  bc1f  .L801C1780_ovl7
/* 1677DC 801C176C 00000000 */   nop   
/* 1677E0 801C1770 0C02C7B2 */  jal   assign_new_process_entry
/* 1677E4 801C1774 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1677E8 801C1778 1000002A */  b     .L801C1824_ovl7
/* 1677EC 801C177C 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C1780_ovl7:
/* 1677F0 801C1780 0C06835D */  jal   func_801A0D74_ovl7
/* 1677F4 801C1784 8FA40020 */   lw    $a0, 0x20($sp)
/* 1677F8 801C1788 AFA2001C */  sw    $v0, 0x1c($sp)
/* 1677FC 801C178C 0C066FA7 */  jal   func_8019BE9C_ovl7
/* 167800 801C1790 24040001 */   li    $a0, 1
/* 167804 801C1794 8FAF001C */  lw    $t7, 0x1c($sp)
/* 167808 801C1798 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 16780C 801C179C 15E0000B */  bnez  $t7, .L801C17CC_ovl7
/* 167810 801C17A0 00000000 */   nop   
/* 167814 801C17A4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 167818 801C17A8 3C04800E */  lui   $a0, 0x800e
/* 16781C 801C17AC 3C06801D */  lui   $a2, %hi(D_801CD968) # $a2, 0x801d
/* 167820 801C17B0 8F190000 */  lw    $t9, ($t8)
/* 167824 801C17B4 24C6D968 */  addiu $a2, %lo(D_801CD968) # addiu $a2, $a2, -0x2698
/* 167828 801C17B8 24050004 */  li    $a1, 4
/* 16782C 801C17BC 00194080 */  sll   $t0, $t9, 2
/* 167830 801C17C0 00882021 */  addu  $a0, $a0, $t0
/* 167834 801C17C4 0C02911F */  jal   call_virtual_function
/* 167838 801C17C8 8C84DFD0 */   lw    $a0, -0x2030($a0)
.L801C17CC_ovl7:
/* 16783C 801C17CC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 167840 801C17D0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 167844 801C17D4 3C0B800F */  lui   $t3, %hi(D_800E9E20) # $t3, 0x800f
/* 167848 801C17D8 256B9E20 */  addiu $t3, %lo(D_800E9E20) # addiu $t3, $t3, -0x61e0
/* 16784C 801C17DC 8C690000 */  lw    $t1, ($v1)
/* 167850 801C17E0 00095080 */  sll   $t2, $t1, 2
/* 167854 801C17E4 014B2021 */  addu  $a0, $t2, $t3
/* 167858 801C17E8 8C820000 */  lw    $v0, ($a0)
/* 16785C 801C17EC 18400007 */  blez  $v0, .L801C180C_ovl7
/* 167860 801C17F0 244CFFFF */   addiu $t4, $v0, -1
/* 167864 801C17F4 AC8C0000 */  sw    $t4, ($a0)
/* 167868 801C17F8 8C6D0000 */  lw    $t5, ($v1)
/* 16786C 801C17FC 3C02800F */  lui   $v0, 0x800f
/* 167870 801C1800 000D7080 */  sll   $t6, $t5, 2
/* 167874 801C1804 004E1021 */  addu  $v0, $v0, $t6
/* 167878 801C1808 8C429E20 */  lw    $v0, -0x61e0($v0)
.L801C180C_ovl7:
/* 16787C 801C180C 2841003B */  slti  $at, $v0, 0x3b
/* 167880 801C1810 50200004 */  beql  $at, $zero, .L801C1824_ovl7
/* 167884 801C1814 8FBF0014 */   lw    $ra, 0x14($sp)
/* 167888 801C1818 0C0706EE */  jal   func_801C1BB8_ovl7
/* 16788C 801C181C 00000000 */   nop   
.L801C1820_ovl7:
/* 167890 801C1820 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C1824_ovl7:
/* 167894 801C1824 27BD0020 */  addiu $sp, $sp, 0x20
/* 167898 801C1828 03E00008 */  jr    $ra
/* 16789C 801C182C 00000000 */   nop   

.type func_801C1718_ovl7, @function
.size func_801C1718_ovl7, . - func_801C1718_ovl7

glabel func_801C1830_ovl7
/* 1678A0 801C1830 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1678A4 801C1834 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1678A8 801C1838 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1678AC 801C183C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1678B0 801C1840 AFA40018 */  sw    $a0, 0x18($sp)
/* 1678B4 801C1844 8DC30000 */  lw    $v1, ($t6)
/* 1678B8 801C1848 3C04800E */  lui   $a0, 0x800e
/* 1678BC 801C184C 3C01800E */  lui   $at, 0x800e
/* 1678C0 801C1850 00031880 */  sll   $v1, $v1, 2
/* 1678C4 801C1854 00832021 */  addu  $a0, $a0, $v1
/* 1678C8 801C1858 8C841B50 */  lw    $a0, 0x1b50($a0)
/* 1678CC 801C185C 00230821 */  addu  $at, $at, $v1
/* 1678D0 801C1860 3C0F801D */  lui   $t7, %hi(D_801CD1F8) # $t7, 0x801d
/* 1678D4 801C1864 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1678D8 801C1868 25EFD1F8 */  addiu $t7, %lo(D_801CD1F8) # addiu $t7, $t7, -0x2e08
/* 1678DC 801C186C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1678E0 801C1870 AC8F0098 */  sw    $t7, 0x98($a0)
/* 1678E4 801C1874 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1678E8 801C1878 3C0A800F */  lui   $t2, %hi(D_800E8920) # $t2, 0x800f
/* 1678EC 801C187C 254A8920 */  addiu $t2, %lo(D_800E8920) # addiu $t2, $t2, -0x76e0
/* 1678F0 801C1880 8C580000 */  lw    $t8, ($v0)
/* 1678F4 801C1884 24010001 */  li    $at, 1
/* 1678F8 801C1888 0018C880 */  sll   $t9, $t8, 2
/* 1678FC 801C188C 032A2821 */  addu  $a1, $t9, $t2
/* 167900 801C1890 8CAB0000 */  lw    $t3, ($a1)
/* 167904 801C1894 5561000B */  bnel  $t3, $at, .L801C18C4_ovl7
/* 167908 801C1898 ACA00000 */   sw    $zero, ($a1)
/* 16790C 801C189C 0C029D9E */  jal   play_sound
/* 167910 801C18A0 24040119 */   li    $a0, 281
/* 167914 801C18A4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 167918 801C18A8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 16791C 801C18AC 3C0E800F */  lui   $t6, %hi(D_800E8920) # $t6, 0x800f
/* 167920 801C18B0 25CE8920 */  addiu $t6, %lo(D_800E8920) # addiu $t6, $t6, -0x76e0
/* 167924 801C18B4 8C4C0000 */  lw    $t4, ($v0)
/* 167928 801C18B8 000C6880 */  sll   $t5, $t4, 2
/* 16792C 801C18BC 01AE2821 */  addu  $a1, $t5, $t6
/* 167930 801C18C0 ACA00000 */  sw    $zero, ($a1)
.L801C18C4_ovl7:
/* 167934 801C18C4 8C580000 */  lw    $t8, ($v0)
/* 167938 801C18C8 3C01800F */  lui   $at, 0x800f
/* 16793C 801C18CC 240F0001 */  li    $t7, 1
/* 167940 801C18D0 0018C880 */  sll   $t9, $t8, 2
/* 167944 801C18D4 00390821 */  addu  $at, $at, $t9
/* 167948 801C18D8 AC2F98E0 */  sw    $t7, -0x6720($at)
/* 16794C 801C18DC 8C4A0000 */  lw    $t2, ($v0)
/* 167950 801C18E0 3C01800F */  lui   $at, 0x800f
/* 167954 801C18E4 000A5880 */  sll   $t3, $t2, 2
/* 167958 801C18E8 002B0821 */  addu  $at, $at, $t3
/* 16795C 801C18EC C424A6E0 */  lwc1  $f4, -0x5920($at)
/* 167960 801C18F0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 167964 801C18F4 44813000 */  mtc1  $at, $f6
/* 167968 801C18F8 00000000 */  nop   
/* 16796C 801C18FC 4606203C */  c.lt.s $f4, $f6
/* 167970 801C1900 00000000 */  nop   
/* 167974 801C1904 45020004 */  bc1fl .L801C1918_ovl7
/* 167978 801C1908 3C040001 */   lui   $a0, 1
/* 16797C 801C190C 0C029D9E */  jal   play_sound
/* 167980 801C1910 24040119 */   li    $a0, 281
/* 167984 801C1914 3C040001 */  lui   $a0, (0x00010609 >> 16) # lui $a0, 1
.L801C1918_ovl7:
/* 167988 801C1918 0C02A7A9 */  jal   func_800A9EA4
/* 16798C 801C191C 34840609 */   ori   $a0, (0x00010609 & 0xFFFF) # ori $a0, $a0, 0x609
/* 167990 801C1920 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 167994 801C1924 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 167998 801C1928 44804000 */  mtc1  $zero, $f8
/* 16799C 801C192C 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 1679A0 801C1930 8C4C0000 */  lw    $t4, ($v0)
/* 1679A4 801C1934 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 1679A8 801C1938 3C01800E */  lui   $at, 0x800e
/* 1679AC 801C193C 000C6880 */  sll   $t5, $t4, 2
/* 1679B0 801C1940 008D7021 */  addu  $t6, $a0, $t5
/* 1679B4 801C1944 E5C80000 */  swc1  $f8, ($t6)
/* 1679B8 801C1948 8C430000 */  lw    $v1, ($v0)
/* 1679BC 801C194C 3C07800E */  lui   $a3, %hi(D_800E3210) # $a3, 0x800e
/* 1679C0 801C1950 24E73210 */  addiu $a3, %lo(D_800E3210) # addiu $a3, $a3, 0x3210
/* 1679C4 801C1954 00031880 */  sll   $v1, $v1, 2
/* 1679C8 801C1958 0083C021 */  addu  $t8, $a0, $v1
/* 1679CC 801C195C C70A0000 */  lwc1  $f10, ($t8)
/* 1679D0 801C1960 00230821 */  addu  $at, $at, $v1
/* 1679D4 801C1964 3C08800E */  lui   $t0, %hi(D_800E3750) # $t0, 0x800e
/* 1679D8 801C1968 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 1679DC 801C196C 8C4F0000 */  lw    $t7, ($v0)
/* 1679E0 801C1970 3C01801D */  lui   $at, %hi(D_801CE6C0) # $at, 0x801d
/* 1679E4 801C1974 C430E6C0 */  lwc1  $f16, %lo(D_801CE6C0)($at)
/* 1679E8 801C1978 3C01800E */  lui   $at, 0x800e
/* 1679EC 801C197C 000FC880 */  sll   $t9, $t7, 2
/* 1679F0 801C1980 00390821 */  addu  $at, $at, $t9
/* 1679F4 801C1984 E4306850 */  swc1  $f16, 0x6850($at)
/* 1679F8 801C1988 8C430000 */  lw    $v1, ($v0)
/* 1679FC 801C198C 3C01800F */  lui   $at, 0x800f
/* 167A00 801C1990 25083750 */  addiu $t0, %lo(D_800E3750) # addiu $t0, $t0, 0x3750
/* 167A04 801C1994 00031880 */  sll   $v1, $v1, 2
/* 167A08 801C1998 00230821 */  addu  $at, $at, $v1
/* 167A0C 801C199C C432A6E0 */  lwc1  $f18, -0x5920($at)
/* 167A10 801C19A0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 167A14 801C19A4 44812000 */  mtc1  $at, $f4
/* 167A18 801C19A8 00E35021 */  addu  $t2, $a3, $v1
/* 167A1C 801C19AC 3C01801D */  lui   $at, %hi(D_801CE6C4) # $at, 0x801d
/* 167A20 801C19B0 46049182 */  mul.s $f6, $f18, $f4
/* 167A24 801C19B4 3C09800E */  lui   $t1, %hi(D_800E3C90) # $t1, 0x800e
/* 167A28 801C19B8 25293C90 */  addiu $t1, %lo(D_800E3C90) # addiu $t1, $t1, 0x3c90
/* 167A2C 801C19BC 3C19800F */  lui   $t9, 0x800f
/* 167A30 801C19C0 E5460000 */  swc1  $f6, ($t2)
/* 167A34 801C19C4 8C4B0000 */  lw    $t3, ($v0)
/* 167A38 801C19C8 C428E6C4 */  lwc1  $f8, %lo(D_801CE6C4)($at)
/* 167A3C 801C19CC 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 167A40 801C19D0 000B6080 */  sll   $t4, $t3, 2
/* 167A44 801C19D4 010C6821 */  addu  $t5, $t0, $t4
/* 167A48 801C19D8 E5A80000 */  swc1  $f8, ($t5)
/* 167A4C 801C19DC 8C4E0000 */  lw    $t6, ($v0)
/* 167A50 801C19E0 44815000 */  mtc1  $at, $f10
/* 167A54 801C19E4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 167A58 801C19E8 000EC080 */  sll   $t8, $t6, 2
/* 167A5C 801C19EC 01387821 */  addu  $t7, $t1, $t8
/* 167A60 801C19F0 E5EA0000 */  swc1  $f10, ($t7)
/* 167A64 801C19F4 8C430000 */  lw    $v1, ($v0)
/* 167A68 801C19F8 3C18800F */  lui   $t8, %hi(D_800EA6E0) # $t8, 0x800f
/* 167A6C 801C19FC 2718A6E0 */  addiu $t8, %lo(D_800EA6E0) # addiu $t8, $t8, -0x5920
/* 167A70 801C1A00 00031880 */  sll   $v1, $v1, 2
/* 167A74 801C1A04 0323C821 */  addu  $t9, $t9, $v1
/* 167A78 801C1A08 8F398AE0 */  lw    $t9, -0x7520($t9)
/* 167A7C 801C1A0C 00E32021 */  addu  $a0, $a3, $v1
/* 167A80 801C1A10 332A0001 */  andi  $t2, $t9, 1
/* 167A84 801C1A14 51400014 */  beql  $t2, $zero, .L801C1A68_ovl7
/* 167A88 801C1A18 00781021 */   addu  $v0, $v1, $t8
/* 167A8C 801C1A1C 44810000 */  mtc1  $at, $f0
/* 167A90 801C1A20 C4900000 */  lwc1  $f16, ($a0)
/* 167A94 801C1A24 46008482 */  mul.s $f18, $f16, $f0
/* 167A98 801C1A28 E4920000 */  swc1  $f18, ($a0)
/* 167A9C 801C1A2C 8C4B0000 */  lw    $t3, ($v0)
/* 167AA0 801C1A30 000B6080 */  sll   $t4, $t3, 2
/* 167AA4 801C1A34 010C2821 */  addu  $a1, $t0, $t4
/* 167AA8 801C1A38 C4A40000 */  lwc1  $f4, ($a1)
/* 167AAC 801C1A3C 46002182 */  mul.s $f6, $f4, $f0
/* 167AB0 801C1A40 E4A60000 */  swc1  $f6, ($a1)
/* 167AB4 801C1A44 8C4D0000 */  lw    $t5, ($v0)
/* 167AB8 801C1A48 000D7080 */  sll   $t6, $t5, 2
/* 167ABC 801C1A4C 012E3021 */  addu  $a2, $t1, $t6
/* 167AC0 801C1A50 C4C80000 */  lwc1  $f8, ($a2)
/* 167AC4 801C1A54 46004282 */  mul.s $f10, $f8, $f0
/* 167AC8 801C1A58 E4CA0000 */  swc1  $f10, ($a2)
/* 167ACC 801C1A5C 8C430000 */  lw    $v1, ($v0)
/* 167AD0 801C1A60 00031880 */  sll   $v1, $v1, 2
/* 167AD4 801C1A64 00781021 */  addu  $v0, $v1, $t8
.L801C1A68_ovl7:
/* 167AD8 801C1A68 3C01801D */  lui   $at, %hi(D_801CE6C8) # $at, 0x801d
/* 167ADC 801C1A6C C432E6C8 */  lwc1  $f18, %lo(D_801CE6C8)($at)
/* 167AE0 801C1A70 C4500000 */  lwc1  $f16, ($v0)
/* 167AE4 801C1A74 46128102 */  mul.s $f4, $f16, $f18
/* 167AE8 801C1A78 0C02BE85 */  jal   func_800AFA14
/* 167AEC 801C1A7C E4440000 */   swc1  $f4, ($v0)
/* 167AF0 801C1A80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 167AF4 801C1A84 27BD0018 */  addiu $sp, $sp, 0x18
/* 167AF8 801C1A88 03E00008 */  jr    $ra
/* 167AFC 801C1A8C 00000000 */   nop   

.type func_801C1830_ovl7, @function
.size func_801C1830_ovl7, . - func_801C1830_ovl7

glabel func_801C1A90_ovl7
/* 167B00 801C1A90 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 167B04 801C1A94 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 167B08 801C1A98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 167B0C 801C1A9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 167B10 801C1AA0 AFA40018 */  sw    $a0, 0x18($sp)
/* 167B14 801C1AA4 8C620000 */  lw    $v0, ($v1)
/* 167B18 801C1AA8 3C0E800F */  lui   $t6, 0x800f
/* 167B1C 801C1AAC 3C01800E */  lui   $at, 0x800e
/* 167B20 801C1AB0 00021080 */  sll   $v0, $v0, 2
/* 167B24 801C1AB4 01C27021 */  addu  $t6, $t6, $v0
/* 167B28 801C1AB8 8DCE9E20 */  lw    $t6, -0x61e0($t6)
/* 167B2C 801C1ABC 00220821 */  addu  $at, $at, $v0
/* 167B30 801C1AC0 240F0003 */  li    $t7, 3
/* 167B34 801C1AC4 1DC0000D */  bgtz  $t6, .L801C1AFC_ovl7
/* 167B38 801C1AC8 3C04800E */   lui   $a0, 0x800e
/* 167B3C 801C1ACC AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 167B40 801C1AD0 8C780000 */  lw    $t8, ($v1)
/* 167B44 801C1AD4 3C05801C */  lui   $a1, %hi(D_801C1698) # $a1, 0x801c
/* 167B48 801C1AD8 24A51698 */  addiu $a1, %lo(D_801C1698) # addiu $a1, $a1, 0x1698
/* 167B4C 801C1ADC 0018C880 */  sll   $t9, $t8, 2
/* 167B50 801C1AE0 00992021 */  addu  $a0, $a0, $t9
/* 167B54 801C1AE4 0C02C7B2 */  jal   assign_new_process_entry
/* 167B58 801C1AE8 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 167B5C 801C1AEC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 167B60 801C1AF0 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 167B64 801C1AF4 8C620000 */  lw    $v0, ($v1)
/* 167B68 801C1AF8 00021080 */  sll   $v0, $v0, 2
.L801C1AFC_ovl7:
/* 167B6C 801C1AFC 3C01801D */  lui   $at, %hi(D_801CE6CC) # $at, 0x801d
/* 167B70 801C1B00 C424E6CC */  lwc1  $f4, %lo(D_801CE6CC)($at)
/* 167B74 801C1B04 3C01800F */  lui   $at, 0x800f
/* 167B78 801C1B08 00220821 */  addu  $at, $at, $v0
/* 167B7C 801C1B0C C426A6E0 */  lwc1  $f6, -0x5920($at)
/* 167B80 801C1B10 3C01800E */  lui   $at, 0x800e
/* 167B84 801C1B14 00220821 */  addu  $at, $at, $v0
/* 167B88 801C1B18 4604303E */  c.le.s $f6, $f4
/* 167B8C 801C1B1C 24080003 */  li    $t0, 3
/* 167B90 801C1B20 3C04800E */  lui   $a0, 0x800e
/* 167B94 801C1B24 4500000D */  bc1f  .L801C1B5C_ovl7
/* 167B98 801C1B28 00000000 */   nop   
/* 167B9C 801C1B2C AC28DC50 */  sw    $t0, -0x23b0($at)
/* 167BA0 801C1B30 8C690000 */  lw    $t1, ($v1)
/* 167BA4 801C1B34 3C05801C */  lui   $a1, %hi(D_801C1698) # $a1, 0x801c
/* 167BA8 801C1B38 24A51698 */  addiu $a1, %lo(D_801C1698) # addiu $a1, $a1, 0x1698
/* 167BAC 801C1B3C 00095080 */  sll   $t2, $t1, 2
/* 167BB0 801C1B40 008A2021 */  addu  $a0, $a0, $t2
/* 167BB4 801C1B44 0C02C7B2 */  jal   assign_new_process_entry
/* 167BB8 801C1B48 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 167BBC 801C1B4C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 167BC0 801C1B50 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 167BC4 801C1B54 8D620000 */  lw    $v0, ($t3)
/* 167BC8 801C1B58 00021080 */  sll   $v0, $v0, 2
.L801C1B5C_ovl7:
/* 167BCC 801C1B5C 3C0C800F */  lui   $t4, 0x800f
/* 167BD0 801C1B60 01826021 */  addu  $t4, $t4, $v0
/* 167BD4 801C1B64 8D8C8AE0 */  lw    $t4, -0x7520($t4)
/* 167BD8 801C1B68 3C01800E */  lui   $at, 0x800e
/* 167BDC 801C1B6C 00220821 */  addu  $at, $at, $v0
/* 167BE0 801C1B70 318D0001 */  andi  $t5, $t4, 1
/* 167BE4 801C1B74 51A0000D */  beql  $t5, $zero, .L801C1BAC_ovl7
/* 167BE8 801C1B78 8FBF0014 */   lw    $ra, 0x14($sp)
/* 167BEC 801C1B7C C4283210 */  lwc1  $f8, 0x3210($at)
/* 167BF0 801C1B80 44805000 */  mtc1  $zero, $f10
/* 167BF4 801C1B84 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 167BF8 801C1B88 460A403C */  c.lt.s $f8, $f10
/* 167BFC 801C1B8C 00000000 */  nop   
/* 167C00 801C1B90 45020006 */  bc1fl .L801C1BAC_ovl7
/* 167C04 801C1B94 8FBF0014 */   lw    $ra, 0x14($sp)
/* 167C08 801C1B98 44818000 */  mtc1  $at, $f16
/* 167C0C 801C1B9C 3C01800E */  lui   $at, 0x800e
/* 167C10 801C1BA0 00220821 */  addu  $at, $at, $v0
/* 167C14 801C1BA4 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 167C18 801C1BA8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C1BAC_ovl7:
/* 167C1C 801C1BAC 27BD0018 */  addiu $sp, $sp, 0x18
/* 167C20 801C1BB0 03E00008 */  jr    $ra
/* 167C24 801C1BB4 00000000 */   nop   

.type func_801C1A90_ovl7, @function
.size func_801C1A90_ovl7, . - func_801C1A90_ovl7

glabel func_801C1BB8_ovl7
/* 167C28 801C1BB8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 167C2C 801C1BBC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 167C30 801C1BC0 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 167C34 801C1BC4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 167C38 801C1BC8 8DC20000 */  lw    $v0, ($t6)
/* 167C3C 801C1BCC 3C03800E */  lui   $v1, 0x800e
/* 167C40 801C1BD0 00027880 */  sll   $t7, $v0, 2
/* 167C44 801C1BD4 006F1821 */  addu  $v1, $v1, $t7
/* 167C48 801C1BD8 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 167C4C 801C1BDC 00402025 */  move  $a0, $v0
/* 167C50 801C1BE0 8C78008C */  lw    $t8, 0x8c($v1)
/* 167C54 801C1BE4 17000003 */  bnez  $t8, .L801C1BF4_ovl7
/* 167C58 801C1BE8 00000000 */   nop   
/* 167C5C 801C1BEC 10000082 */  b     .L801C1DF8_ovl7
/* 167C60 801C1BF0 00001025 */   move  $v0, $zero
.L801C1BF4_ovl7:
/* 167C64 801C1BF4 0C044554 */  jal   func_80111550
/* 167C68 801C1BF8 AFA30028 */   sw    $v1, 0x28($sp)
/* 167C6C 801C1BFC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 167C70 801C1C00 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 167C74 801C1C04 8FB90028 */  lw    $t9, 0x28($sp)
/* 167C78 801C1C08 8D050000 */  lw    $a1, ($t0)
/* 167C7C 801C1C0C 0C044722 */  jal   func_80111C88
/* 167C80 801C1C10 8F24008C */   lw    $a0, 0x8c($t9)
/* 167C84 801C1C14 0C0447B3 */  jal   func_80111ECC
/* 167C88 801C1C18 00402025 */   move  $a0, $v0
/* 167C8C 801C1C1C 0C0442C0 */  jal   func_80110B00
/* 167C90 801C1C20 27A40030 */   addiu $a0, $sp, 0x30
/* 167C94 801C1C24 1040000D */  beqz  $v0, .L801C1C5C_ovl7
/* 167C98 801C1C28 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 167C9C 801C1C2C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 167CA0 801C1C30 93A90032 */  lbu   $t1, 0x32($sp)
/* 167CA4 801C1C34 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 167CA8 801C1C38 8D4B0000 */  lw    $t3, ($t2)
/* 167CAC 801C1C3C 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 167CB0 801C1C40 000B6080 */  sll   $t4, $t3, 2
/* 167CB4 801C1C44 00AC6821 */  addu  $t5, $a1, $t4
/* 167CB8 801C1C48 ADA90000 */  sw    $t1, ($t5)
/* 167CBC 801C1C4C 8FAF0028 */  lw    $t7, 0x28($sp)
/* 167CC0 801C1C50 93AE0033 */  lbu   $t6, 0x33($sp)
/* 167CC4 801C1C54 1000002A */  b     .L801C1D00_ovl7
/* 167CC8 801C1C58 A1EE0043 */   sb    $t6, 0x43($t7)
.L801C1C5C_ovl7:
/* 167CCC 801C1C5C 0C0443F5 */  jal   func_80110FD4
/* 167CD0 801C1C60 27A40030 */   addiu $a0, $sp, 0x30
/* 167CD4 801C1C64 1040000D */  beqz  $v0, .L801C1C9C_ovl7
/* 167CD8 801C1C68 3C198005 */   lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 167CDC 801C1C6C 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 167CE0 801C1C70 93B80032 */  lbu   $t8, 0x32($sp)
/* 167CE4 801C1C74 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 167CE8 801C1C78 8F280000 */  lw    $t0, ($t9)
/* 167CEC 801C1C7C 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 167CF0 801C1C80 00085080 */  sll   $t2, $t0, 2
/* 167CF4 801C1C84 00AA5821 */  addu  $t3, $a1, $t2
/* 167CF8 801C1C88 AD780000 */  sw    $t8, ($t3)
/* 167CFC 801C1C8C 8FA90028 */  lw    $t1, 0x28($sp)
/* 167D00 801C1C90 93AC0033 */  lbu   $t4, 0x33($sp)
/* 167D04 801C1C94 1000001A */  b     .L801C1D00_ovl7
/* 167D08 801C1C98 A12C0043 */   sb    $t4, 0x43($t1)
.L801C1C9C_ovl7:
/* 167D0C 801C1C9C 0C044054 */  jal   func_80110150
/* 167D10 801C1CA0 27A40030 */   addiu $a0, $sp, 0x30
/* 167D14 801C1CA4 1040000C */  beqz  $v0, .L801C1CD8_ovl7
/* 167D18 801C1CA8 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 167D1C 801C1CAC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 167D20 801C1CB0 93AD0032 */  lbu   $t5, 0x32($sp)
/* 167D24 801C1CB4 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 167D28 801C1CB8 8DCF0000 */  lw    $t7, ($t6)
/* 167D2C 801C1CBC 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 167D30 801C1CC0 000FC880 */  sll   $t9, $t7, 2
/* 167D34 801C1CC4 00B94021 */  addu  $t0, $a1, $t9
/* 167D38 801C1CC8 AD0D0000 */  sw    $t5, ($t0)
/* 167D3C 801C1CCC 8FAA0028 */  lw    $t2, 0x28($sp)
/* 167D40 801C1CD0 1000000B */  b     .L801C1D00_ovl7
/* 167D44 801C1CD4 A1400043 */   sb    $zero, 0x43($t2)
.L801C1CD8_ovl7:
/* 167D48 801C1CD8 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 167D4C 801C1CDC 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 167D50 801C1CE0 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 167D54 801C1CE4 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 167D58 801C1CE8 8F0B0000 */  lw    $t3, ($t8)
/* 167D5C 801C1CEC 000B6080 */  sll   $t4, $t3, 2
/* 167D60 801C1CF0 00AC4821 */  addu  $t1, $a1, $t4
/* 167D64 801C1CF4 AD200000 */  sw    $zero, ($t1)
/* 167D68 801C1CF8 8FAE0028 */  lw    $t6, 0x28($sp)
/* 167D6C 801C1CFC A1C00043 */  sb    $zero, 0x43($t6)
.L801C1D00_ovl7:
/* 167D70 801C1D00 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 167D74 801C1D04 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 167D78 801C1D08 24060001 */  li    $a2, 1
/* 167D7C 801C1D0C 8C430000 */  lw    $v1, ($v0)
/* 167D80 801C1D10 00031880 */  sll   $v1, $v1, 2
/* 167D84 801C1D14 00A37821 */  addu  $t7, $a1, $v1
/* 167D88 801C1D18 8DE40000 */  lw    $a0, ($t7)
/* 167D8C 801C1D1C 10860005 */  beq   $a0, $a2, .L801C1D34_ovl7
/* 167D90 801C1D20 24010003 */   li    $at, 3
/* 167D94 801C1D24 1081001A */  beq   $a0, $at, .L801C1D90_ovl7
/* 167D98 801C1D28 00000000 */   nop   
/* 167D9C 801C1D2C 10000032 */  b     .L801C1DF8_ovl7
/* 167DA0 801C1D30 00001025 */   move  $v0, $zero
.L801C1D34_ovl7:
/* 167DA4 801C1D34 8FB9003C */  lw    $t9, 0x3c($sp)
/* 167DA8 801C1D38 3C04800E */  lui   $a0, 0x800e
/* 167DAC 801C1D3C 00832021 */  addu  $a0, $a0, $v1
/* 167DB0 801C1D40 1720000E */  bnez  $t9, .L801C1D7C_ovl7
/* 167DB4 801C1D44 3C05801C */   lui   $a1, 0x801c
/* 167DB8 801C1D48 3C01800E */  lui   $at, 0x800e
/* 167DBC 801C1D4C 00230821 */  addu  $at, $at, $v1
/* 167DC0 801C1D50 AC26DC50 */  sw    $a2, -0x23b0($at)
/* 167DC4 801C1D54 8C4D0000 */  lw    $t5, ($v0)
/* 167DC8 801C1D58 3C04800E */  lui   $a0, 0x800e
/* 167DCC 801C1D5C 3C05801C */  lui   $a1, %hi(D_801C08E8) # $a1, 0x801c
/* 167DD0 801C1D60 000D4080 */  sll   $t0, $t5, 2
/* 167DD4 801C1D64 00882021 */  addu  $a0, $a0, $t0
/* 167DD8 801C1D68 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 167DDC 801C1D6C 0C02C7B2 */  jal   assign_new_process_entry
/* 167DE0 801C1D70 24A508E8 */   addiu $a1, %lo(D_801C08E8) # addiu $a1, $a1, 0x8e8
/* 167DE4 801C1D74 10000020 */  b     .L801C1DF8_ovl7
/* 167DE8 801C1D78 24020001 */   li    $v0, 1
.L801C1D7C_ovl7:
/* 167DEC 801C1D7C 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 167DF0 801C1D80 0C02C7B2 */  jal   assign_new_process_entry
/* 167DF4 801C1D84 24A50610 */   addiu $a1, $a1, 0x610
/* 167DF8 801C1D88 1000001B */  b     .L801C1DF8_ovl7
/* 167DFC 801C1D8C 24020001 */   li    $v0, 1
.L801C1D90_ovl7:
/* 167E00 801C1D90 3C01800F */  lui   $at, 0x800f
/* 167E04 801C1D94 8FAA003C */  lw    $t2, 0x3c($sp)
/* 167E08 801C1D98 00230821 */  addu  $at, $at, $v1
/* 167E0C 801C1D9C AC208220 */  sw    $zero, -0x7de0($at)
/* 167E10 801C1DA0 2401FFFF */  li    $at, -1
/* 167E14 801C1DA4 11410006 */  beq   $t2, $at, .L801C1DC0_ovl7
/* 167E18 801C1DA8 3C038013 */   lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 167E1C 801C1DAC 8C580000 */  lw    $t8, ($v0)
/* 167E20 801C1DB0 3C01800E */  lui   $at, 0x800e
/* 167E24 801C1DB4 00185880 */  sll   $t3, $t8, 2
/* 167E28 801C1DB8 002B0821 */  addu  $at, $at, $t3
/* 167E2C 801C1DBC AC2A0D50 */  sw    $t2, 0xd50($at)
.L801C1DC0_ovl7:
/* 167E30 801C1DC0 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 167E34 801C1DC4 846C00B2 */  lh    $t4, 0xb2($v1)
/* 167E38 801C1DC8 3C04800E */  lui   $a0, 0x800e
/* 167E3C 801C1DCC 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 167E40 801C1DD0 25890001 */  addiu $t1, $t4, 1
/* 167E44 801C1DD4 A46900B2 */  sh    $t1, 0xb2($v1)
/* 167E48 801C1DD8 8C4E0000 */  lw    $t6, ($v0)
/* 167E4C 801C1DDC 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 167E50 801C1DE0 000E7880 */  sll   $t7, $t6, 2
/* 167E54 801C1DE4 008F2021 */  addu  $a0, $a0, $t7
/* 167E58 801C1DE8 0C02C7B2 */  jal   assign_new_process_entry
/* 167E5C 801C1DEC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 167E60 801C1DF0 10000001 */  b     .L801C1DF8_ovl7
/* 167E64 801C1DF4 24020001 */   li    $v0, 1
.L801C1DF8_ovl7:
/* 167E68 801C1DF8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 167E6C 801C1DFC 27BD0050 */  addiu $sp, $sp, 0x50
/* 167E70 801C1E00 03E00008 */  jr    $ra
/* 167E74 801C1E04 00000000 */   nop   

.type func_801C1BB8_ovl7, @function
.size func_801C1BB8_ovl7, . - func_801C1BB8_ovl7

glabel func_801C1E08_ovl7
/* 167E78 801C1E08 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 167E7C 801C1E0C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 167E80 801C1E10 8D0E0000 */  lw    $t6, ($t0)
/* 167E84 801C1E14 3C18800E */  lui   $t8, 0x800e
/* 167E88 801C1E18 3C0A800E */  lui   $t2, %hi(D_800DFBD0) # $t2, 0x800e
/* 167E8C 801C1E1C 8DC30000 */  lw    $v1, ($t6)
/* 167E90 801C1E20 254AFBD0 */  addiu $t2, %lo(D_800DFBD0) # addiu $t2, $t2, -0x430
/* 167E94 801C1E24 3C0C801D */  lui   $t4, %hi(D_801CD978) # $t4, 0x801d
/* 167E98 801C1E28 00037840 */  sll   $t7, $v1, 1
/* 167E9C 801C1E2C 030FC021 */  addu  $t8, $t8, $t7
/* 167EA0 801C1E30 00037080 */  sll   $t6, $v1, 2
/* 167EA4 801C1E34 971977A0 */  lhu   $t9, 0x77a0($t8)
/* 167EA8 801C1E38 014E7821 */  addu  $t7, $t2, $t6
/* 167EAC 801C1E3C 8DF80000 */  lw    $t8, ($t7)
/* 167EB0 801C1E40 258CD978 */  addiu $t4, %lo(D_801CD978) # addiu $t4, $t4, -0x2688
/* 167EB4 801C1E44 001958C0 */  sll   $t3, $t9, 3
/* 167EB8 801C1E48 8F06000C */  lw    $a2, 0xc($t8)
/* 167EBC 801C1E4C 016C2021 */  addu  $a0, $t3, $t4
/* 167EC0 801C1E50 8C82FFC0 */  lw    $v0, -0x40($a0)
/* 167EC4 801C1E54 8CC70080 */  lw    $a3, 0x80($a2)
/* 167EC8 801C1E58 3C09801D */  lui   $t1, %hi(D_801CD914) # $t1, 0x801d
/* 167ECC 801C1E5C 2529D914 */  addiu $t1, %lo(D_801CD914) # addiu $t1, $t1, -0x26ec
/* 167ED0 801C1E60 00026880 */  sll   $t5, $v0, 2
/* 167ED4 801C1E64 012D2821 */  addu  $a1, $t1, $t5
/* 167ED8 801C1E68 10E00012 */  beqz  $a3, .L801C1EB4_ovl7
/* 167EDC 801C1E6C 8C82FFC4 */   lw    $v0, -0x3c($a0)
/* 167EE0 801C1E70 90B90000 */  lbu   $t9, ($a1)
/* 167EE4 801C1E74 00026880 */  sll   $t5, $v0, 2
/* 167EE8 801C1E78 012D1821 */  addu  $v1, $t1, $t5
/* 167EEC 801C1E7C A0F90058 */  sb    $t9, 0x58($a3)
/* 167EF0 801C1E80 90AB0001 */  lbu   $t3, 1($a1)
/* 167EF4 801C1E84 A0EB0059 */  sb    $t3, 0x59($a3)
/* 167EF8 801C1E88 90AC0002 */  lbu   $t4, 2($a1)
/* 167EFC 801C1E8C A0EC005A */  sb    $t4, 0x5a($a3)
/* 167F00 801C1E90 8CE70000 */  lw    $a3, ($a3)
/* 167F04 801C1E94 50E00008 */  beql  $a3, $zero, .L801C1EB8_ovl7
/* 167F08 801C1E98 8D190000 */   lw    $t9, ($t0)
/* 167F0C 801C1E9C 906E0000 */  lbu   $t6, ($v1)
/* 167F10 801C1EA0 A0EE0058 */  sb    $t6, 0x58($a3)
/* 167F14 801C1EA4 906F0001 */  lbu   $t7, 1($v1)
/* 167F18 801C1EA8 A0EF0059 */  sb    $t7, 0x59($a3)
/* 167F1C 801C1EAC 90780002 */  lbu   $t8, 2($v1)
/* 167F20 801C1EB0 A0F8005A */  sb    $t8, 0x5a($a3)
.L801C1EB4_ovl7:
/* 167F24 801C1EB4 8D190000 */  lw    $t9, ($t0)
.L801C1EB8_ovl7:
/* 167F28 801C1EB8 8F2B0000 */  lw    $t3, ($t9)
/* 167F2C 801C1EBC 000B6080 */  sll   $t4, $t3, 2
/* 167F30 801C1EC0 014C6821 */  addu  $t5, $t2, $t4
/* 167F34 801C1EC4 8DA30000 */  lw    $v1, ($t5)
/* 167F38 801C1EC8 00026880 */  sll   $t5, $v0, 2
/* 167F3C 801C1ECC 8C660004 */  lw    $a2, 4($v1)
/* 167F40 801C1ED0 8CC70080 */  lw    $a3, 0x80($a2)
/* 167F44 801C1ED4 50E0000F */  beql  $a3, $zero, .L801C1F14_ovl7
/* 167F48 801C1ED8 8C660008 */   lw    $a2, 8($v1)
/* 167F4C 801C1EDC 90AE0000 */  lbu   $t6, ($a1)
/* 167F50 801C1EE0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 167F54 801C1EE4 3C03800E */  lui   $v1, 0x800e
/* 167F58 801C1EE8 A0EE0058 */  sb    $t6, 0x58($a3)
/* 167F5C 801C1EEC 90AF0001 */  lbu   $t7, 1($a1)
/* 167F60 801C1EF0 A0EF0059 */  sb    $t7, 0x59($a3)
/* 167F64 801C1EF4 90B80002 */  lbu   $t8, 2($a1)
/* 167F68 801C1EF8 A0F8005A */  sb    $t8, 0x5a($a3)
/* 167F6C 801C1EFC 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 167F70 801C1F00 8F2B0000 */  lw    $t3, ($t9)
/* 167F74 801C1F04 000B6080 */  sll   $t4, $t3, 2
/* 167F78 801C1F08 006C1821 */  addu  $v1, $v1, $t4
/* 167F7C 801C1F0C 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 167F80 801C1F10 8C660008 */  lw    $a2, 8($v1)
.L801C1F14_ovl7:
/* 167F84 801C1F14 012D1821 */  addu  $v1, $t1, $t5
/* 167F88 801C1F18 8CC70080 */  lw    $a3, 0x80($a2)
/* 167F8C 801C1F1C 10E00007 */  beqz  $a3, .L801C1F3C_ovl7
/* 167F90 801C1F20 00000000 */   nop   
/* 167F94 801C1F24 906E0000 */  lbu   $t6, ($v1)
/* 167F98 801C1F28 A0EE0058 */  sb    $t6, 0x58($a3)
/* 167F9C 801C1F2C 906F0001 */  lbu   $t7, 1($v1)
/* 167FA0 801C1F30 A0EF0059 */  sb    $t7, 0x59($a3)
/* 167FA4 801C1F34 90780002 */  lbu   $t8, 2($v1)
/* 167FA8 801C1F38 A0F8005A */  sb    $t8, 0x5a($a3)
.L801C1F3C_ovl7:
/* 167FAC 801C1F3C 03E00008 */  jr    $ra
/* 167FB0 801C1F40 00000000 */   nop   

.type func_801C1E08_ovl7, @function
.size func_801C1E08_ovl7, . - func_801C1E08_ovl7

glabel func_801C1F44_ovl7
/* 167FB4 801C1F44 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 167FB8 801C1F48 AFBF0014 */  sw    $ra, 0x14($sp)
/* 167FBC 801C1F4C AFA40018 */  sw    $a0, 0x18($sp)
/* 167FC0 801C1F50 2404002B */  li    $a0, 43
/* 167FC4 801C1F54 0C02BE6E */  jal   func_800AF9B8
/* 167FC8 801C1F58 24050010 */   li    $a1, 16
/* 167FCC 801C1F5C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 167FD0 801C1F60 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 167FD4 801C1F64 3C0E800B */  lui   $t6, %hi(D_800B6684) # $t6, 0x800b
/* 167FD8 801C1F68 3C01800E */  lui   $at, 0x800e
/* 167FDC 801C1F6C 8C4F0000 */  lw    $t7, ($v0)
/* 167FE0 801C1F70 25CE6684 */  addiu $t6, %lo(D_800B6684) # addiu $t6, $t6, 0x6684
/* 167FE4 801C1F74 3C04800E */  lui   $a0, 0x800e
/* 167FE8 801C1F78 000FC080 */  sll   $t8, $t7, 2
/* 167FEC 801C1F7C 00380821 */  addu  $at, $at, $t8
/* 167FF0 801C1F80 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 167FF4 801C1F84 8C590000 */  lw    $t9, ($v0)
/* 167FF8 801C1F88 3C06801D */  lui   $a2, %hi(D_801CDA58) # $a2, 0x801d
/* 167FFC 801C1F8C 24C6DA58 */  addiu $a2, %lo(D_801CDA58) # addiu $a2, $a2, -0x25a8
/* 168000 801C1F90 00992021 */  addu  $a0, $a0, $t9
/* 168004 801C1F94 90847880 */  lbu   $a0, 0x7880($a0)
/* 168008 801C1F98 0C02911F */  jal   call_virtual_function
/* 16800C 801C1F9C 24050001 */   li    $a1, 1
/* 168010 801C1FA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 168014 801C1FA4 27BD0018 */  addiu $sp, $sp, 0x18
/* 168018 801C1FA8 03E00008 */  jr    $ra
/* 16801C 801C1FAC 00000000 */   nop   

.type func_801C1F44_ovl7, @function
.size func_801C1F44_ovl7, . - func_801C1F44_ovl7

glabel func_801C1FB0_ovl7
/* 168020 801C1FB0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 168024 801C1FB4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 168028 801C1FB8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16802C 801C1FBC AFBF0014 */  sw    $ra, 0x14($sp)
/* 168030 801C1FC0 AFA40018 */  sw    $a0, 0x18($sp)
/* 168034 801C1FC4 8DF80000 */  lw    $t8, ($t7)
/* 168038 801C1FC8 3C0E801C */  lui   $t6, %hi(D_801C2098) # $t6, 0x801c
/* 16803C 801C1FCC 3C01800E */  lui   $at, 0x800e
/* 168040 801C1FD0 0018C880 */  sll   $t9, $t8, 2
/* 168044 801C1FD4 00390821 */  addu  $at, $at, $t9
/* 168048 801C1FD8 25CE2098 */  addiu $t6, %lo(D_801C2098) # addiu $t6, $t6, 0x2098
/* 16804C 801C1FDC 3C04801C */  lui   $a0, %hi(D_801C2020) # $a0, 0x801c
/* 168050 801C1FE0 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 168054 801C1FE4 0C068354 */  jal   func_801A0D50
/* 168058 801C1FE8 24842020 */   addiu $a0, %lo(D_801C2020) # addiu $a0, $a0, 0x2020
/* 16805C 801C1FEC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 168060 801C1FF0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 168064 801C1FF4 3C01800E */  lui   $at, 0x800e
/* 168068 801C1FF8 8FA40018 */  lw    $a0, 0x18($sp)
/* 16806C 801C1FFC 8D090000 */  lw    $t1, ($t0)
/* 168070 801C2000 00095080 */  sll   $t2, $t1, 2
/* 168074 801C2004 002A0821 */  addu  $at, $at, $t2
/* 168078 801C2008 0C070808 */  jal   D_801C2020_ovl7
/* 16807C 801C200C AC20DC50 */   sw    $zero, -0x23b0($at)
/* 168080 801C2010 8FBF0014 */  lw    $ra, 0x14($sp)
/* 168084 801C2014 27BD0018 */  addiu $sp, $sp, 0x18
/* 168088 801C2018 03E00008 */  jr    $ra
/* 16808C 801C201C 00000000 */   nop   

.type func_801C1FB0_ovl7, @function
.size func_801C1FB0_ovl7, . - func_801C1FB0_ovl7

glabel func_801C2020_ovl7
/* 168090 801C2020 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 168094 801C2024 AFB20020 */  sw    $s2, 0x20($sp)
/* 168098 801C2028 AFB1001C */  sw    $s1, 0x1c($sp)
/* 16809C 801C202C AFB00018 */  sw    $s0, 0x18($sp)
/* 1680A0 801C2030 3C10800E */  lui   $s0, %hi(gEntityVtableIndexArray) # $s0, 0x800e
/* 1680A4 801C2034 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1680A8 801C2038 3C12801D */  lui   $s2, %hi(D_801CDA5C) # $s2, 0x801d
/* 1680AC 801C203C AFBF0024 */  sw    $ra, 0x24($sp)
/* 1680B0 801C2040 AFA40028 */  sw    $a0, 0x28($sp)
/* 1680B4 801C2044 2652DA5C */  addiu $s2, %lo(D_801CDA5C) # addiu $s2, $s2, -0x25a4
/* 1680B8 801C2048 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1680BC 801C204C 2610DC50 */  addiu $s0, %lo(gEntityVtableIndexArray) # addiu $s0, $s0, -0x23b0
/* 1680C0 801C2050 8E2E0000 */  lw    $t6, ($s1)
.L801C2054_ovl7:
/* 1680C4 801C2054 24050001 */  li    $a1, 1
/* 1680C8 801C2058 02403025 */  move  $a2, $s2
/* 1680CC 801C205C 8DCF0000 */  lw    $t7, ($t6)
/* 1680D0 801C2060 000FC080 */  sll   $t8, $t7, 2
/* 1680D4 801C2064 0218C821 */  addu  $t9, $s0, $t8
/* 1680D8 801C2068 0C02911F */  jal   call_virtual_function
/* 1680DC 801C206C 8F240000 */   lw    $a0, ($t9)
/* 1680E0 801C2070 1000FFF8 */  b     .L801C2054_ovl7
/* 1680E4 801C2074 8E2E0000 */   lw    $t6, ($s1)
/* 1680E8 801C2078 00000000 */  nop   
/* 1680EC 801C207C 00000000 */  nop   
/* 1680F0 801C2080 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1680F4 801C2084 8FB00018 */  lw    $s0, 0x18($sp)
/* 1680F8 801C2088 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1680FC 801C208C 8FB20020 */  lw    $s2, 0x20($sp)
/* 168100 801C2090 03E00008 */  jr    $ra
/* 168104 801C2094 27BD0028 */   addiu $sp, $sp, 0x28

.type func_801C2020_ovl7, @function
.size func_801C2020_ovl7, . - func_801C2020_ovl7

glabel func_801C2098_ovl7
/* 168108 801C2098 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 16810C 801C209C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 168110 801C20A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 168114 801C20A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 168118 801C20A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 16811C 801C20AC 8DCF0000 */  lw    $t7, ($t6)
/* 168120 801C20B0 3C04800E */  lui   $a0, 0x800e
/* 168124 801C20B4 3C06801D */  lui   $a2, %hi(D_801CDA60) # $a2, 0x801d
/* 168128 801C20B8 000FC080 */  sll   $t8, $t7, 2
/* 16812C 801C20BC 00982021 */  addu  $a0, $a0, $t8
/* 168130 801C20C0 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 168134 801C20C4 24C6DA60 */  addiu $a2, %lo(D_801CDA60) # addiu $a2, $a2, -0x25a0
/* 168138 801C20C8 0C02911F */  jal   call_virtual_function
/* 16813C 801C20CC 24050001 */   li    $a1, 1
/* 168140 801C20D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 168144 801C20D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 168148 801C20D8 03E00008 */  jr    $ra
/* 16814C 801C20DC 00000000 */   nop   

.type func_801C2098_ovl7, @function
.size func_801C2098_ovl7, . - func_801C2098_ovl7

glabel func_801C20E0_ovl7
/* 168150 801C20E0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 168154 801C20E4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 168158 801C20E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 16815C 801C20EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 168160 801C20F0 AFA40018 */  sw    $a0, 0x18($sp)
/* 168164 801C20F4 8DCF0000 */  lw    $t7, ($t6)
/* 168168 801C20F8 3C01800E */  lui   $at, 0x800e
/* 16816C 801C20FC 000FC080 */  sll   $t8, $t7, 2
/* 168170 801C2100 00380821 */  addu  $at, $at, $t8
/* 168174 801C2104 0C02CD48 */  jal   func_800B3520
/* 168178 801C2108 AC20DFD0 */   sw    $zero, -0x2030($at)
/* 16817C 801C210C 0C002DAF */  jal   finish_current_thread
/* 168180 801C2110 24040078 */   li    $a0, 120
/* 168184 801C2114 0C068FA0 */  jal   func_801A3E80
/* 168188 801C2118 8FA40018 */   lw    $a0, 0x18($sp)
/* 16818C 801C211C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 168190 801C2120 27BD0018 */  addiu $sp, $sp, 0x18
/* 168194 801C2124 03E00008 */  jr    $ra
/* 168198 801C2128 00000000 */   nop   

.type func_801C20E0_ovl7, @function
.size func_801C20E0_ovl7, . - func_801C20E0_ovl7

glabel func_801C212C_ovl7
/* 16819C 801C212C 03E00008 */  jr    $ra
/* 1681A0 801C2130 AFA40000 */   sw    $a0, ($sp)

.type func_801C212C_ovl7, @function
.size func_801C212C_ovl7, . - func_801C212C_ovl7

glabel func_801C2134_ovl7
/* 1681A4 801C2134 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1681A8 801C2138 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1681AC 801C213C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1681B0 801C2140 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1681B4 801C2144 AFA40028 */  sw    $a0, 0x28($sp)
/* 1681B8 801C2148 8C430000 */  lw    $v1, ($v0)
/* 1681BC 801C214C 3C05800E */  lui   $a1, 0x800e
/* 1681C0 801C2150 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1681C4 801C2154 00031880 */  sll   $v1, $v1, 2
/* 1681C8 801C2158 00A32821 */  addu  $a1, $a1, $v1
/* 1681CC 801C215C 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 1681D0 801C2160 44812000 */  mtc1  $at, $f4
/* 1681D4 801C2164 3C01800F */  lui   $at, 0x800f
/* 1681D8 801C2168 8CAE0088 */  lw    $t6, 0x88($a1)
/* 1681DC 801C216C 00230821 */  addu  $at, $at, $v1
/* 1681E0 801C2170 44803000 */  mtc1  $zero, $f6
/* 1681E4 801C2174 8DC6000C */  lw    $a2, 0xc($t6)
/* 1681E8 801C2178 8CCF0004 */  lw    $t7, 4($a2)
/* 1681EC 801C217C E424C660 */  swc1  $f4, -0x39a0($at)
/* 1681F0 801C2180 3C01800F */  lui   $at, 0x800f
/* 1681F4 801C2184 AFAF001C */  sw    $t7, 0x1c($sp)
/* 1681F8 801C2188 8C580000 */  lw    $t8, ($v0)
/* 1681FC 801C218C AFA50024 */  sw    $a1, 0x24($sp)
/* 168200 801C2190 0018C880 */  sll   $t9, $t8, 2
/* 168204 801C2194 00390821 */  addu  $at, $at, $t9
/* 168208 801C2198 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 16820C 801C219C E426C820 */   swc1  $f6, -0x37e0($at)
/* 168210 801C21A0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 168214 801C21A4 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 168218 801C21A8 8C490000 */  lw    $t1, ($v0)
/* 16821C 801C21AC 8FA50024 */  lw    $a1, 0x24($sp)
/* 168220 801C21B0 3C08801C */  lui   $t0, %hi(D_801C2264) # $t0, 0x801c
/* 168224 801C21B4 8D2A0000 */  lw    $t2, ($t1)
/* 168228 801C21B8 3C01800E */  lui   $at, 0x800e
/* 16822C 801C21BC 25082264 */  addiu $t0, %lo(D_801C2264) # addiu $t0, $t0, 0x2264
/* 168230 801C21C0 000A5880 */  sll   $t3, $t2, 2
/* 168234 801C21C4 002B0821 */  addu  $at, $at, $t3
/* 168238 801C21C8 AC28F150 */  sw    $t0, -0xeb0($at)
/* 16823C 801C21CC 3C0C801D */  lui   $t4, %hi(D_801CB500) # $t4, 0x801d
/* 168240 801C21D0 258CB500 */  addiu $t4, %lo(D_801CB500) # addiu $t4, $t4, -0x4b00
/* 168244 801C21D4 ACA00048 */  sw    $zero, 0x48($a1)
/* 168248 801C21D8 ACAC0098 */  sw    $t4, 0x98($a1)
/* 16824C 801C21DC 8C4D0000 */  lw    $t5, ($v0)
/* 168250 801C21E0 3C01800F */  lui   $at, 0x800f
/* 168254 801C21E4 8DAE0000 */  lw    $t6, ($t5)
/* 168258 801C21E8 000E7880 */  sll   $t7, $t6, 2
/* 16825C 801C21EC 002F0821 */  addu  $at, $at, $t7
/* 168260 801C21F0 AC208920 */  sw    $zero, -0x76e0($at)
/* 168264 801C21F4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 168268 801C21F8 0C02BB30 */  jal   func_800AECC0
/* 16826C 801C21FC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 168270 801C2200 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 168274 801C2204 0C02BB48 */  jal   func_800AED20
/* 168278 801C2208 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 16827C 801C220C 8FB8001C */  lw    $t8, 0x1c($sp)
/* 168280 801C2210 2401FFFF */  li    $at, -1
/* 168284 801C2214 8F040004 */  lw    $a0, 4($t8)
/* 168288 801C2218 50810004 */  beql  $a0, $at, .L801C222C_ovl7
/* 16828C 801C221C 8FB9001C */   lw    $t9, 0x1c($sp)
/* 168290 801C2220 0C02A806 */  jal   func_800AA018
/* 168294 801C2224 00000000 */   nop   
/* 168298 801C2228 8FB9001C */  lw    $t9, 0x1c($sp)
.L801C222C_ovl7:
/* 16829C 801C222C 2401FFFF */  li    $at, -1
/* 1682A0 801C2230 8F240008 */  lw    $a0, 8($t9)
/* 1682A4 801C2234 10810003 */  beq   $a0, $at, .L801C2244_ovl7
/* 1682A8 801C2238 00000000 */   nop   
/* 1682AC 801C223C 0C02A806 */  jal   func_800AA018
/* 1682B0 801C2240 00000000 */   nop   
.L801C2244_ovl7:
/* 1682B4 801C2244 0C06AB98 */  jal   func_801AAE60_ovl7
/* 1682B8 801C2248 00000000 */   nop   
/* 1682BC 801C224C 0C06B047 */  jal   func_801AC11C_ovl7
/* 1682C0 801C2250 8FA40028 */   lw    $a0, 0x28($sp)
/* 1682C4 801C2254 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1682C8 801C2258 27BD0028 */  addiu $sp, $sp, 0x28
/* 1682CC 801C225C 03E00008 */  jr    $ra
/* 1682D0 801C2260 00000000 */   nop   

.type func_801C2134_ovl7, @function
.size func_801C2134_ovl7, . - func_801C2134_ovl7

glabel func_801C2264_ovl7
/* 1682D4 801C2264 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1682D8 801C2268 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1682DC 801C226C 0C070162 */  jal   func_801C0588_ovl7
/* 1682E0 801C2270 AFA40018 */   sw    $a0, 0x18($sp)
/* 1682E4 801C2274 14400030 */  bnez  $v0, .L801C2338_ovl7
/* 1682E8 801C2278 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1682EC 801C227C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1682F0 801C2280 3C0F800F */  lui   $t7, 0x800f
/* 1682F4 801C2284 3C18800F */  lui   $t8, 0x800f
/* 1682F8 801C2288 8DC20000 */  lw    $v0, ($t6)
/* 1682FC 801C228C 3C04800E */  lui   $a0, 0x800e
/* 168300 801C2290 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 168304 801C2294 00021080 */  sll   $v0, $v0, 2
/* 168308 801C2298 01E27821 */  addu  $t7, $t7, $v0
/* 16830C 801C229C 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 168310 801C22A0 0302C021 */  addu  $t8, $t8, $v0
/* 168314 801C22A4 00822021 */  addu  $a0, $a0, $v0
/* 168318 801C22A8 15E00004 */  bnez  $t7, .L801C22BC_ovl7
/* 16831C 801C22AC 24A5C11C */   addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 168320 801C22B0 8F188760 */  lw    $t8, -0x78a0($t8)
/* 168324 801C22B4 13000005 */  beqz  $t8, .L801C22CC_ovl7
/* 168328 801C22B8 00000000 */   nop   
.L801C22BC_ovl7:
/* 16832C 801C22BC 0C02C7B2 */  jal   assign_new_process_entry
/* 168330 801C22C0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 168334 801C22C4 1000001D */  b     .L801C233C_ovl7
/* 168338 801C22C8 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C22CC_ovl7:
/* 16833C 801C22CC 3C04801D */  lui   $a0, %hi(D_801CB0F8) # $a0, 0x801d
/* 168340 801C22D0 0C068E4E */  jal   func_801A3938_ovl7
/* 168344 801C22D4 2484B0F8 */   addiu $a0, %lo(D_801CB0F8) # addiu $a0, $a0, -0x4f08
/* 168348 801C22D8 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 16834C 801C22DC 0C068DB3 */  jal   func_801A36CC_ovl7
/* 168350 801C22E0 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
/* 168354 801C22E4 0C06835D */  jal   func_801A0D74_ovl7
/* 168358 801C22E8 8FA40018 */   lw    $a0, 0x18($sp)
/* 16835C 801C22EC 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 168360 801C22F0 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 168364 801C22F4 3C08800F */  lui   $t0, %hi(D_800E8920) # $t0, 0x800f
/* 168368 801C22F8 25088920 */  addiu $t0, %lo(D_800E8920) # addiu $t0, $t0, -0x76e0
/* 16836C 801C22FC 8C830000 */  lw    $v1, ($a0)
/* 168370 801C2300 24010001 */  li    $at, 1
/* 168374 801C2304 0003C880 */  sll   $t9, $v1, 2
/* 168378 801C2308 03282821 */  addu  $a1, $t9, $t0
/* 16837C 801C230C 8CA90000 */  lw    $t1, ($a1)
/* 168380 801C2310 15210003 */  bne   $t1, $at, .L801C2320_ovl7
/* 168384 801C2314 00000000 */   nop   
/* 168388 801C2318 ACA00000 */  sw    $zero, ($a1)
/* 16838C 801C231C 8C830000 */  lw    $v1, ($a0)
.L801C2320_ovl7:
/* 168390 801C2320 3C04801D */  lui   $a0, %hi(D_801D0A38) # $a0, 0x801d
/* 168394 801C2324 24840A38 */  addiu $a0, %lo(D_801D0A38) # addiu $a0, $a0, 0xa38
/* 168398 801C2328 0C0445EF */  jal   func_801117BC
/* 16839C 801C232C 00602825 */   move  $a1, $v1
/* 1683A0 801C2330 0C044713 */  jal   func_80111C4C
/* 1683A4 801C2334 00402025 */   move  $a0, $v0
.L801C2338_ovl7:
/* 1683A8 801C2338 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C233C_ovl7:
/* 1683AC 801C233C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1683B0 801C2340 03E00008 */  jr    $ra
/* 1683B4 801C2344 00000000 */   nop   

.type func_801C2264_ovl7, @function
.size func_801C2264_ovl7, . - func_801C2264_ovl7

glabel func_801C2348_ovl7
/* 1683B8 801C2348 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1683BC 801C234C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1683C0 801C2350 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1683C4 801C2354 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1683C8 801C2358 AFA40028 */  sw    $a0, 0x28($sp)
/* 1683CC 801C235C 8C430000 */  lw    $v1, ($v0)
/* 1683D0 801C2360 3C05800E */  lui   $a1, 0x800e
/* 1683D4 801C2364 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1683D8 801C2368 00031880 */  sll   $v1, $v1, 2
/* 1683DC 801C236C 00A32821 */  addu  $a1, $a1, $v1
/* 1683E0 801C2370 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 1683E4 801C2374 44812000 */  mtc1  $at, $f4
/* 1683E8 801C2378 3C01800F */  lui   $at, 0x800f
/* 1683EC 801C237C 8CAE0088 */  lw    $t6, 0x88($a1)
/* 1683F0 801C2380 00230821 */  addu  $at, $at, $v1
/* 1683F4 801C2384 44803000 */  mtc1  $zero, $f6
/* 1683F8 801C2388 8DC6000C */  lw    $a2, 0xc($t6)
/* 1683FC 801C238C 8CCF0004 */  lw    $t7, 4($a2)
/* 168400 801C2390 E424C660 */  swc1  $f4, -0x39a0($at)
/* 168404 801C2394 3C01800F */  lui   $at, 0x800f
/* 168408 801C2398 AFAF0018 */  sw    $t7, 0x18($sp)
/* 16840C 801C239C 8C580000 */  lw    $t8, ($v0)
/* 168410 801C23A0 AFA50020 */  sw    $a1, 0x20($sp)
/* 168414 801C23A4 0018C880 */  sll   $t9, $t8, 2
/* 168418 801C23A8 00390821 */  addu  $at, $at, $t9
/* 16841C 801C23AC 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 168420 801C23B0 E426C820 */   swc1  $f6, -0x37e0($at)
/* 168424 801C23B4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 168428 801C23B8 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 16842C 801C23BC 8C490000 */  lw    $t1, ($v0)
/* 168430 801C23C0 8FA50020 */  lw    $a1, 0x20($sp)
/* 168434 801C23C4 3C08801C */  lui   $t0, %hi(D_801C2478) # $t0, 0x801c
/* 168438 801C23C8 8D2A0000 */  lw    $t2, ($t1)
/* 16843C 801C23CC 3C01800E */  lui   $at, 0x800e
/* 168440 801C23D0 25082478 */  addiu $t0, %lo(D_801C2478) # addiu $t0, $t0, 0x2478
/* 168444 801C23D4 000A5880 */  sll   $t3, $t2, 2
/* 168448 801C23D8 002B0821 */  addu  $at, $at, $t3
/* 16844C 801C23DC AC28F150 */  sw    $t0, -0xeb0($at)
/* 168450 801C23E0 3C0C801D */  lui   $t4, %hi(D_801CB500) # $t4, 0x801d
/* 168454 801C23E4 258CB500 */  addiu $t4, %lo(D_801CB500) # addiu $t4, $t4, -0x4b00
/* 168458 801C23E8 ACA00048 */  sw    $zero, 0x48($a1)
/* 16845C 801C23EC ACAC0098 */  sw    $t4, 0x98($a1)
/* 168460 801C23F0 8C4D0000 */  lw    $t5, ($v0)
/* 168464 801C23F4 3C01800F */  lui   $at, 0x800f
/* 168468 801C23F8 8DAE0000 */  lw    $t6, ($t5)
/* 16846C 801C23FC 000E7880 */  sll   $t7, $t6, 2
/* 168470 801C2400 002F0821 */  addu  $at, $at, $t7
/* 168474 801C2404 AC208920 */  sw    $zero, -0x76e0($at)
/* 168478 801C2408 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 16847C 801C240C 0C02BB30 */  jal   func_800AECC0
/* 168480 801C2410 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 168484 801C2414 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 168488 801C2418 0C02BB48 */  jal   func_800AED20
/* 16848C 801C241C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 168490 801C2420 8FB80018 */  lw    $t8, 0x18($sp)
/* 168494 801C2424 2401FFFF */  li    $at, -1
/* 168498 801C2428 8F040004 */  lw    $a0, 4($t8)
/* 16849C 801C242C 50810004 */  beql  $a0, $at, .L801C2440_ovl7
/* 1684A0 801C2430 8FB90018 */   lw    $t9, 0x18($sp)
/* 1684A4 801C2434 0C02A806 */  jal   func_800AA018
/* 1684A8 801C2438 00000000 */   nop   
/* 1684AC 801C243C 8FB90018 */  lw    $t9, 0x18($sp)
.L801C2440_ovl7:
/* 1684B0 801C2440 2401FFFF */  li    $at, -1
/* 1684B4 801C2444 8F240008 */  lw    $a0, 8($t9)
/* 1684B8 801C2448 10810003 */  beq   $a0, $at, .L801C2458_ovl7
/* 1684BC 801C244C 00000000 */   nop   
/* 1684C0 801C2450 0C02A806 */  jal   func_800AA018
/* 1684C4 801C2454 00000000 */   nop   
.L801C2458_ovl7:
/* 1684C8 801C2458 0C06AB98 */  jal   func_801AAE60_ovl7
/* 1684CC 801C245C 00000000 */   nop   
/* 1684D0 801C2460 0C06B047 */  jal   func_801AC11C_ovl7
/* 1684D4 801C2464 8FA40028 */   lw    $a0, 0x28($sp)
/* 1684D8 801C2468 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1684DC 801C246C 27BD0028 */  addiu $sp, $sp, 0x28
/* 1684E0 801C2470 03E00008 */  jr    $ra
/* 1684E4 801C2474 00000000 */   nop   

.type func_801C2348_ovl7, @function
.size func_801C2348_ovl7, . - func_801C2348_ovl7

glabel func_801C2478_ovl7
/* 1684E8 801C2478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1684EC 801C247C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1684F0 801C2480 0C070162 */  jal   func_801C0588_ovl7
/* 1684F4 801C2484 AFA40018 */   sw    $a0, 0x18($sp)
/* 1684F8 801C2488 1440003C */  bnez  $v0, .L801C257C_ovl7
/* 1684FC 801C248C 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 168500 801C2490 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 168504 801C2494 3C03800F */  lui   $v1, 0x800f
/* 168508 801C2498 3C0F800F */  lui   $t7, 0x800f
/* 16850C 801C249C 8DC20000 */  lw    $v0, ($t6)
/* 168510 801C24A0 24010012 */  li    $at, 18
/* 168514 801C24A4 00021080 */  sll   $v0, $v0, 2
/* 168518 801C24A8 00621821 */  addu  $v1, $v1, $v0
/* 16851C 801C24AC 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 168520 801C24B0 01E27821 */  addu  $t7, $t7, $v0
/* 168524 801C24B4 14600004 */  bnez  $v1, .L801C24C8_ovl7
/* 168528 801C24B8 00000000 */   nop   
/* 16852C 801C24BC 8DEF8760 */  lw    $t7, -0x78a0($t7)
/* 168530 801C24C0 11E00012 */  beqz  $t7, .L801C250C_ovl7
/* 168534 801C24C4 00000000 */   nop   
.L801C24C8_ovl7:
/* 168538 801C24C8 14610009 */  bne   $v1, $at, .L801C24F0_ovl7
/* 16853C 801C24CC 3C04800E */   lui   $a0, 0x800e
/* 168540 801C24D0 3C04800E */  lui   $a0, 0x800e
/* 168544 801C24D4 00822021 */  addu  $a0, $a0, $v0
/* 168548 801C24D8 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 16854C 801C24DC 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 168550 801C24E0 0C02C7B2 */  jal   assign_new_process_entry
/* 168554 801C24E4 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 168558 801C24E8 10000025 */  b     .L801C2580_ovl7
/* 16855C 801C24EC 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C24F0_ovl7:
/* 168560 801C24F0 00822021 */  addu  $a0, $a0, $v0
/* 168564 801C24F4 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 168568 801C24F8 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 16856C 801C24FC 0C02C7B2 */  jal   assign_new_process_entry
/* 168570 801C2500 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 168574 801C2504 1000001E */  b     .L801C2580_ovl7
/* 168578 801C2508 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C250C_ovl7:
/* 16857C 801C250C 0C06835D */  jal   func_801A0D74_ovl7
/* 168580 801C2510 8FA40018 */   lw    $a0, 0x18($sp)
/* 168584 801C2514 10400006 */  beqz  $v0, .L801C2530_ovl7
/* 168588 801C2518 3C04801D */   lui   $a0, %hi(D_801CB044) # $a0, 0x801d
/* 16858C 801C251C 0C068E4E */  jal   func_801A3938_ovl7
/* 168590 801C2520 2484B044 */   addiu $a0, %lo(D_801CB044) # addiu $a0, $a0, -0x4fbc
/* 168594 801C2524 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 168598 801C2528 0C068DB3 */  jal   func_801A36CC_ovl7
/* 16859C 801C252C 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
.L801C2530_ovl7:
/* 1685A0 801C2530 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1685A4 801C2534 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1685A8 801C2538 3C19800F */  lui   $t9, %hi(D_800E8920) # $t9, 0x800f
/* 1685AC 801C253C 27398920 */  addiu $t9, %lo(D_800E8920) # addiu $t9, $t9, -0x76e0
/* 1685B0 801C2540 8C620000 */  lw    $v0, ($v1)
/* 1685B4 801C2544 24010001 */  li    $at, 1
/* 1685B8 801C2548 0002C080 */  sll   $t8, $v0, 2
/* 1685BC 801C254C 03192021 */  addu  $a0, $t8, $t9
/* 1685C0 801C2550 8C880000 */  lw    $t0, ($a0)
/* 1685C4 801C2554 15010003 */  bne   $t0, $at, .L801C2564_ovl7
/* 1685C8 801C2558 00000000 */   nop   
/* 1685CC 801C255C AC800000 */  sw    $zero, ($a0)
/* 1685D0 801C2560 8C620000 */  lw    $v0, ($v1)
.L801C2564_ovl7:
/* 1685D4 801C2564 3C04801D */  lui   $a0, %hi(D_801D0A58) # $a0, 0x801d
/* 1685D8 801C2568 24840A58 */  addiu $a0, %lo(D_801D0A58) # addiu $a0, $a0, 0xa58
/* 1685DC 801C256C 0C0445EF */  jal   func_801117BC
/* 1685E0 801C2570 00402825 */   move  $a1, $v0
/* 1685E4 801C2574 0C044713 */  jal   func_80111C4C
/* 1685E8 801C2578 00402025 */   move  $a0, $v0
.L801C257C_ovl7:
/* 1685EC 801C257C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C2580_ovl7:
/* 1685F0 801C2580 27BD0018 */  addiu $sp, $sp, 0x18
/* 1685F4 801C2584 03E00008 */  jr    $ra
/* 1685F8 801C2588 00000000 */   nop   

.type func_801C2478_ovl7, @function
.size func_801C2478_ovl7, . - func_801C2478_ovl7

glabel func_801C258C_ovl7
/* 1685FC 801C258C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 168600 801C2590 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 168604 801C2594 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 168608 801C2598 AFBF0014 */  sw    $ra, 0x14($sp)
/* 16860C 801C259C AFA40028 */  sw    $a0, 0x28($sp)
/* 168610 801C25A0 8C430000 */  lw    $v1, ($v0)
/* 168614 801C25A4 3C05800E */  lui   $a1, 0x800e
/* 168618 801C25A8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 16861C 801C25AC 00031880 */  sll   $v1, $v1, 2
/* 168620 801C25B0 00A32821 */  addu  $a1, $a1, $v1
/* 168624 801C25B4 8CA51B50 */  lw    $a1, 0x1b50($a1)
/* 168628 801C25B8 44812000 */  mtc1  $at, $f4
/* 16862C 801C25BC 3C01800F */  lui   $at, 0x800f
/* 168630 801C25C0 8CAE0088 */  lw    $t6, 0x88($a1)
/* 168634 801C25C4 00230821 */  addu  $at, $at, $v1
/* 168638 801C25C8 44803000 */  mtc1  $zero, $f6
/* 16863C 801C25CC 8DC6000C */  lw    $a2, 0xc($t6)
/* 168640 801C25D0 8CCF0004 */  lw    $t7, 4($a2)
/* 168644 801C25D4 E424C660 */  swc1  $f4, -0x39a0($at)
/* 168648 801C25D8 3C01800F */  lui   $at, 0x800f
/* 16864C 801C25DC AFAF001C */  sw    $t7, 0x1c($sp)
/* 168650 801C25E0 8C580000 */  lw    $t8, ($v0)
/* 168654 801C25E4 AFA50024 */  sw    $a1, 0x24($sp)
/* 168658 801C25E8 0018C880 */  sll   $t9, $t8, 2
/* 16865C 801C25EC 00390821 */  addu  $at, $at, $t9
/* 168660 801C25F0 0C06AEE8 */  jal   func_801ABBA0_ovl7
/* 168664 801C25F4 E426C820 */   swc1  $f6, -0x37e0($at)
/* 168668 801C25F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 16866C 801C25FC 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 168670 801C2600 8C490000 */  lw    $t1, ($v0)
/* 168674 801C2604 8FA50024 */  lw    $a1, 0x24($sp)
/* 168678 801C2608 3C08801C */  lui   $t0, %hi(D_801C26BC) # $t0, 0x801c
/* 16867C 801C260C 8D2A0000 */  lw    $t2, ($t1)
/* 168680 801C2610 3C01800E */  lui   $at, 0x800e
/* 168684 801C2614 250826BC */  addiu $t0, %lo(D_801C26BC) # addiu $t0, $t0, 0x26bc
/* 168688 801C2618 000A5880 */  sll   $t3, $t2, 2
/* 16868C 801C261C 002B0821 */  addu  $at, $at, $t3
/* 168690 801C2620 AC28F150 */  sw    $t0, -0xeb0($at)
/* 168694 801C2624 3C0C801D */  lui   $t4, %hi(D_801CB500) # $t4, 0x801d
/* 168698 801C2628 258CB500 */  addiu $t4, %lo(D_801CB500) # addiu $t4, $t4, -0x4b00
/* 16869C 801C262C ACA00048 */  sw    $zero, 0x48($a1)
/* 1686A0 801C2630 ACAC0098 */  sw    $t4, 0x98($a1)
/* 1686A4 801C2634 8C4D0000 */  lw    $t5, ($v0)
/* 1686A8 801C2638 3C01800F */  lui   $at, 0x800f
/* 1686AC 801C263C 8DAE0000 */  lw    $t6, ($t5)
/* 1686B0 801C2640 000E7880 */  sll   $t7, $t6, 2
/* 1686B4 801C2644 002F0821 */  addu  $at, $at, $t7
/* 1686B8 801C2648 AC208920 */  sw    $zero, -0x76e0($at)
/* 1686BC 801C264C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1686C0 801C2650 0C02BB30 */  jal   func_800AECC0
/* 1686C4 801C2654 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1686C8 801C2658 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1686CC 801C265C 0C02BB48 */  jal   func_800AED20
/* 1686D0 801C2660 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1686D4 801C2664 8FB8001C */  lw    $t8, 0x1c($sp)
/* 1686D8 801C2668 2401FFFF */  li    $at, -1
/* 1686DC 801C266C 8F040004 */  lw    $a0, 4($t8)
/* 1686E0 801C2670 50810004 */  beql  $a0, $at, .L801C2684_ovl7
/* 1686E4 801C2674 8FB9001C */   lw    $t9, 0x1c($sp)
/* 1686E8 801C2678 0C02A806 */  jal   func_800AA018
/* 1686EC 801C267C 00000000 */   nop   
/* 1686F0 801C2680 8FB9001C */  lw    $t9, 0x1c($sp)
.L801C2684_ovl7:
/* 1686F4 801C2684 2401FFFF */  li    $at, -1
/* 1686F8 801C2688 8F240008 */  lw    $a0, 8($t9)
/* 1686FC 801C268C 10810003 */  beq   $a0, $at, .L801C269C_ovl7
/* 168700 801C2690 00000000 */   nop   
/* 168704 801C2694 0C02A806 */  jal   func_800AA018
/* 168708 801C2698 00000000 */   nop   
.L801C269C_ovl7:
/* 16870C 801C269C 0C06AB98 */  jal   func_801AAE60_ovl7
/* 168710 801C26A0 00000000 */   nop   
/* 168714 801C26A4 0C06B047 */  jal   func_801AC11C_ovl7
/* 168718 801C26A8 8FA40028 */   lw    $a0, 0x28($sp)
/* 16871C 801C26AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 168720 801C26B0 27BD0028 */  addiu $sp, $sp, 0x28
/* 168724 801C26B4 03E00008 */  jr    $ra
/* 168728 801C26B8 00000000 */   nop   

.type func_801C258C_ovl7, @function
.size func_801C258C_ovl7, . - func_801C258C_ovl7

glabel func_801C26BC_ovl7
/* 16872C 801C26BC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 168730 801C26C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 168734 801C26C4 0C070162 */  jal   func_801C0588_ovl7
/* 168738 801C26C8 AFA40018 */   sw    $a0, 0x18($sp)
/* 16873C 801C26CC 1440003B */  bnez  $v0, .L801C27BC_ovl7
/* 168740 801C26D0 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 168744 801C26D4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 168748 801C26D8 3C03800F */  lui   $v1, 0x800f
/* 16874C 801C26DC 3C0F800F */  lui   $t7, 0x800f
/* 168750 801C26E0 8DC20000 */  lw    $v0, ($t6)
/* 168754 801C26E4 24010012 */  li    $at, 18
/* 168758 801C26E8 00021080 */  sll   $v0, $v0, 2
/* 16875C 801C26EC 00621821 */  addu  $v1, $v1, $v0
/* 168760 801C26F0 8C6383E0 */  lw    $v1, -0x7c20($v1)
/* 168764 801C26F4 01E27821 */  addu  $t7, $t7, $v0
/* 168768 801C26F8 14600005 */  bnez  $v1, .L801C2710_ovl7
/* 16876C 801C26FC 00000000 */   nop   
/* 168770 801C2700 8DEF8760 */  lw    $t7, -0x78a0($t7)
/* 168774 801C2704 3C04801D */  lui   $a0, 0x801d
/* 168778 801C2708 11E00012 */  beqz  $t7, .L801C2754_ovl7
/* 16877C 801C270C 00000000 */   nop   
.L801C2710_ovl7:
/* 168780 801C2710 14610009 */  bne   $v1, $at, .L801C2738_ovl7
/* 168784 801C2714 3C04800E */   lui   $a0, 0x800e
/* 168788 801C2718 3C04800E */  lui   $a0, 0x800e
/* 16878C 801C271C 00822021 */  addu  $a0, $a0, $v0
/* 168790 801C2720 3C05801B */  lui   $a1, %hi(D_801AC33C) # $a1, 0x801b
/* 168794 801C2724 24A5C33C */  addiu $a1, %lo(D_801AC33C) # addiu $a1, $a1, -0x3cc4
/* 168798 801C2728 0C02C7B2 */  jal   assign_new_process_entry
/* 16879C 801C272C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1687A0 801C2730 10000023 */  b     .L801C27C0_ovl7
/* 1687A4 801C2734 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C2738_ovl7:
/* 1687A8 801C2738 00822021 */  addu  $a0, $a0, $v0
/* 1687AC 801C273C 3C05801B */  lui   $a1, %hi(func_801AC11C) # $a1, 0x801b
/* 1687B0 801C2740 24A5C11C */  addiu $a1, %lo(func_801AC11C) # addiu $a1, $a1, -0x3ee4
/* 1687B4 801C2744 0C02C7B2 */  jal   assign_new_process_entry
/* 1687B8 801C2748 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1687BC 801C274C 1000001C */  b     .L801C27C0_ovl7
/* 1687C0 801C2750 8FBF0014 */   lw    $ra, 0x14($sp)
.L801C2754_ovl7:
/* 1687C4 801C2754 0C068E4E */  jal   func_801A3938_ovl7
/* 1687C8 801C2758 2484B0F8 */   addiu $a0, $a0, -0x4f08
/* 1687CC 801C275C 3C04801A */  lui   $a0, %hi(D_801A3864) # $a0, 0x801a
/* 1687D0 801C2760 0C068DB3 */  jal   func_801A36CC_ovl7
/* 1687D4 801C2764 24843864 */   addiu $a0, %lo(D_801A3864) # addiu $a0, $a0, 0x3864
/* 1687D8 801C2768 0C06835D */  jal   func_801A0D74_ovl7
/* 1687DC 801C276C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1687E0 801C2770 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1687E4 801C2774 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1687E8 801C2778 3C19800F */  lui   $t9, %hi(D_800E8920) # $t9, 0x800f
/* 1687EC 801C277C 27398920 */  addiu $t9, %lo(D_800E8920) # addiu $t9, $t9, -0x76e0
/* 1687F0 801C2780 8C830000 */  lw    $v1, ($a0)
/* 1687F4 801C2784 24010001 */  li    $at, 1
/* 1687F8 801C2788 0003C080 */  sll   $t8, $v1, 2
/* 1687FC 801C278C 03192821 */  addu  $a1, $t8, $t9
/* 168800 801C2790 8CA80000 */  lw    $t0, ($a1)
/* 168804 801C2794 15010003 */  bne   $t0, $at, .L801C27A4_ovl7
/* 168808 801C2798 00000000 */   nop   
/* 16880C 801C279C ACA00000 */  sw    $zero, ($a1)
/* 168810 801C27A0 8C830000 */  lw    $v1, ($a0)
.L801C27A4_ovl7:
/* 168814 801C27A4 3C04801D */  lui   $a0, %hi(D_801CA7FC) # $a0, 0x801d
/* 168818 801C27A8 2484A7FC */  addiu $a0, %lo(D_801CA7FC) # addiu $a0, $a0, -0x5804
/* 16881C 801C27AC 0C0445EF */  jal   func_801117BC
/* 168820 801C27B0 00602825 */   move  $a1, $v1
/* 168824 801C27B4 0C044713 */  jal   func_80111C4C
/* 168828 801C27B8 00402025 */   move  $a0, $v0
.L801C27BC_ovl7:
/* 16882C 801C27BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801C27C0_ovl7:
/* 168830 801C27C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 168834 801C27C4 03E00008 */  jr    $ra
/* 168838 801C27C8 00000000 */   nop   

/* 16883C 801C27CC 00000000 */  nop   
# Unknown region 168840-174740 [BF00]
# .incbin "bin/kirby.u.168840.bin"

.type func_801C26BC_ovl7, @function
.size func_801C26BC_ovl7, . - func_801C26BC_ovl7
