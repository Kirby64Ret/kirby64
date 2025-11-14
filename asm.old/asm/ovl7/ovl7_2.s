.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_8019F3B0
/* 145420 8019F3B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 145424 8019F3B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 145428 8019F3B8 0C067D04 */  jal   func_8019F410_ovl7
/* 14542C 8019F3BC 00002025 */   move  $a0, $zero
/* 145430 8019F3C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145434 8019F3C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 145438 8019F3C8 03E00008 */  jr    $ra
/* 14543C 8019F3CC 00000000 */   nop   

.type func_8019F3B0, @function
.size func_8019F3B0, . - func_8019F3B0

glabel func_8019F3D0_ovl7
/* 145440 8019F3D0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 145444 8019F3D4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 145448 8019F3D8 0C067D34 */  jal   func_8019F4D0_ovl7
/* 14544C 8019F3DC 00002025 */   move  $a0, $zero
/* 145450 8019F3E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145454 8019F3E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 145458 8019F3E8 03E00008 */  jr    $ra
/* 14545C 8019F3EC 00000000 */   nop   

.type func_8019F3D0_ovl7, @function
.size func_8019F3D0_ovl7, . - func_8019F3D0_ovl7

glabel func_8019F3F0_ovl7
/* 145460 8019F3F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 145464 8019F3F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 145468 8019F3F8 0C067D64 */  jal   func_8019F590_ovl7
/* 14546C 8019F3FC 00002025 */   move  $a0, $zero
/* 145470 8019F400 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145474 8019F404 27BD0018 */  addiu $sp, $sp, 0x18
/* 145478 8019F408 03E00008 */  jr    $ra
/* 14547C 8019F40C 00000000 */   nop   

.type func_8019F3F0_ovl7, @function
.size func_8019F3F0_ovl7, . - func_8019F3F0_ovl7

glabel func_8019F410_ovl7
/* 145480 8019F410 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 145484 8019F414 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 145488 8019F418 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14548C 8019F41C AFBF0014 */  sw    $ra, 0x14($sp)
/* 145490 8019F420 AFA40020 */  sw    $a0, 0x20($sp)
/* 145494 8019F424 8DC20000 */  lw    $v0, ($t6)
/* 145498 8019F428 3C03800E */  lui   $v1, 0x800e
/* 14549C 8019F42C 00027880 */  sll   $t7, $v0, 2
/* 1454A0 8019F430 006F1821 */  addu  $v1, $v1, $t7
/* 1454A4 8019F434 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 1454A8 8019F438 54600004 */  bnezl $v1, .L8019F44C_ovl7
/* 1454AC 8019F43C 8C78008C */   lw    $t8, 0x8c($v1)
/* 1454B0 8019F440 1000001F */  b     .L8019F4C0_ovl7
/* 1454B4 8019F444 00001025 */   move  $v0, $zero
/* 1454B8 8019F448 8C78008C */  lw    $t8, 0x8c($v1)
.L8019F44C_ovl7:
/* 1454BC 8019F44C 00402025 */  move  $a0, $v0
/* 1454C0 8019F450 17000003 */  bnez  $t8, .L8019F460_ovl7
/* 1454C4 8019F454 00000000 */   nop   
/* 1454C8 8019F458 10000019 */  b     .L8019F4C0_ovl7
/* 1454CC 8019F45C 00001025 */   move  $v0, $zero
.L8019F460_ovl7:
/* 1454D0 8019F460 0C044554 */  jal   func_80111550
/* 1454D4 8019F464 AFA3001C */   sw    $v1, 0x1c($sp)
/* 1454D8 8019F468 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1454DC 8019F46C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 1454E0 8019F470 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1454E4 8019F474 8C64008C */  lw    $a0, 0x8c($v1)
/* 1454E8 8019F478 0C044722 */  jal   func_80111C88
/* 1454EC 8019F47C 8F250000 */   lw    $a1, ($t9)
/* 1454F0 8019F480 8FA3001C */  lw    $v1, 0x1c($sp)
/* 1454F4 8019F484 00402825 */  move  $a1, $v0
/* 1454F8 8019F488 8C68008C */  lw    $t0, 0x8c($v1)
/* 1454FC 8019F48C 8FA30020 */  lw    $v1, 0x20($sp)
/* 145500 8019F490 8D040008 */  lw    $a0, 8($t0)
/* 145504 8019F494 8C890004 */  lw    $t1, 4($a0)
/* 145508 8019F498 15200005 */  bnez  $t1, .L8019F4B0_ovl7
/* 14550C 8019F49C 00000000 */   nop   
/* 145510 8019F4A0 10600003 */  beqz  $v1, .L8019F4B0_ovl7
/* 145514 8019F4A4 00000000 */   nop   
/* 145518 8019F4A8 8C4A0024 */  lw    $t2, 0x24($v0)
/* 14551C 8019F4AC AD430008 */  sw    $v1, 8($t2)
.L8019F4B0_ovl7:
/* 145520 8019F4B0 0C0447B3 */  jal   func_80111ECC
/* 145524 8019F4B4 00A02025 */   move  $a0, $a1
/* 145528 8019F4B8 0C067D94 */  jal   func_8019F650_ovl7
/* 14552C 8019F4BC 00000000 */   nop   
.L8019F4C0_ovl7:
/* 145530 8019F4C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145534 8019F4C4 27BD0020 */  addiu $sp, $sp, 0x20
/* 145538 8019F4C8 03E00008 */  jr    $ra
/* 14553C 8019F4CC 00000000 */   nop   

.type func_8019F410_ovl7, @function
.size func_8019F410_ovl7, . - func_8019F410_ovl7

glabel func_8019F4D0_ovl7
/* 145540 8019F4D0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 145544 8019F4D4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 145548 8019F4D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14554C 8019F4DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 145550 8019F4E0 AFA40020 */  sw    $a0, 0x20($sp)
/* 145554 8019F4E4 8DC20000 */  lw    $v0, ($t6)
/* 145558 8019F4E8 3C03800E */  lui   $v1, 0x800e
/* 14555C 8019F4EC 00027880 */  sll   $t7, $v0, 2
/* 145560 8019F4F0 006F1821 */  addu  $v1, $v1, $t7
/* 145564 8019F4F4 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 145568 8019F4F8 54600004 */  bnezl $v1, .L8019F50C_ovl7
/* 14556C 8019F4FC 8C78008C */   lw    $t8, 0x8c($v1)
/* 145570 8019F500 1000001F */  b     .L8019F580_ovl7
/* 145574 8019F504 00001025 */   move  $v0, $zero
/* 145578 8019F508 8C78008C */  lw    $t8, 0x8c($v1)
.L8019F50C_ovl7:
/* 14557C 8019F50C 00402025 */  move  $a0, $v0
/* 145580 8019F510 17000003 */  bnez  $t8, .L8019F520_ovl7
/* 145584 8019F514 00000000 */   nop   
/* 145588 8019F518 10000019 */  b     .L8019F580_ovl7
/* 14558C 8019F51C 00001025 */   move  $v0, $zero
.L8019F520_ovl7:
/* 145590 8019F520 0C044554 */  jal   func_80111550
/* 145594 8019F524 AFA3001C */   sw    $v1, 0x1c($sp)
/* 145598 8019F528 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 14559C 8019F52C 8FA3001C */  lw    $v1, 0x1c($sp)
/* 1455A0 8019F530 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1455A4 8019F534 8C64008C */  lw    $a0, 0x8c($v1)
/* 1455A8 8019F538 0C044722 */  jal   func_80111C88
/* 1455AC 8019F53C 8F250000 */   lw    $a1, ($t9)
/* 1455B0 8019F540 8FA3001C */  lw    $v1, 0x1c($sp)
/* 1455B4 8019F544 00402825 */  move  $a1, $v0
/* 1455B8 8019F548 8C68008C */  lw    $t0, 0x8c($v1)
/* 1455BC 8019F54C 8FA30020 */  lw    $v1, 0x20($sp)
/* 1455C0 8019F550 8D040008 */  lw    $a0, 8($t0)
/* 1455C4 8019F554 8C890004 */  lw    $t1, 4($a0)
/* 1455C8 8019F558 15200005 */  bnez  $t1, .L8019F570_ovl7
/* 1455CC 8019F55C 00000000 */   nop   
/* 1455D0 8019F560 10600003 */  beqz  $v1, .L8019F570_ovl7
/* 1455D4 8019F564 00000000 */   nop   
/* 1455D8 8019F568 8C4A0024 */  lw    $t2, 0x24($v0)
/* 1455DC 8019F56C AD430008 */  sw    $v1, 8($t2)
.L8019F570_ovl7:
/* 1455E0 8019F570 0C0447B3 */  jal   func_80111ECC
/* 1455E4 8019F574 00A02025 */   move  $a0, $a1
/* 1455E8 8019F578 0C067E9A */  jal   func_8019FA68_ovl7
/* 1455EC 8019F57C 00000000 */   nop   
.L8019F580_ovl7:
/* 1455F0 8019F580 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1455F4 8019F584 27BD0020 */  addiu $sp, $sp, 0x20
/* 1455F8 8019F588 03E00008 */  jr    $ra
/* 1455FC 8019F58C 00000000 */   nop   

.type func_8019F4D0_ovl7, @function
.size func_8019F4D0_ovl7, . - func_8019F4D0_ovl7

glabel func_8019F590_ovl7
/* 145600 8019F590 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 145604 8019F594 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 145608 8019F598 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 14560C 8019F59C AFBF0014 */  sw    $ra, 0x14($sp)
/* 145610 8019F5A0 AFA40020 */  sw    $a0, 0x20($sp)
/* 145614 8019F5A4 8DC20000 */  lw    $v0, ($t6)
/* 145618 8019F5A8 3C03800E */  lui   $v1, 0x800e
/* 14561C 8019F5AC 00027880 */  sll   $t7, $v0, 2
/* 145620 8019F5B0 006F1821 */  addu  $v1, $v1, $t7
/* 145624 8019F5B4 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 145628 8019F5B8 54600004 */  bnezl $v1, .L8019F5CC_ovl7
/* 14562C 8019F5BC 8C78008C */   lw    $t8, 0x8c($v1)
/* 145630 8019F5C0 1000001F */  b     .L8019F640_ovl7
/* 145634 8019F5C4 00001025 */   move  $v0, $zero
/* 145638 8019F5C8 8C78008C */  lw    $t8, 0x8c($v1)
.L8019F5CC_ovl7:
/* 14563C 8019F5CC 00402025 */  move  $a0, $v0
/* 145640 8019F5D0 17000003 */  bnez  $t8, .L8019F5E0_ovl7
/* 145644 8019F5D4 00000000 */   nop   
/* 145648 8019F5D8 10000019 */  b     .L8019F640_ovl7
/* 14564C 8019F5DC 00001025 */   move  $v0, $zero
.L8019F5E0_ovl7:
/* 145650 8019F5E0 0C044554 */  jal   func_80111550
/* 145654 8019F5E4 AFA3001C */   sw    $v1, 0x1c($sp)
/* 145658 8019F5E8 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 14565C 8019F5EC 8FA3001C */  lw    $v1, 0x1c($sp)
/* 145660 8019F5F0 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 145664 8019F5F4 8C64008C */  lw    $a0, 0x8c($v1)
/* 145668 8019F5F8 0C044722 */  jal   func_80111C88
/* 14566C 8019F5FC 8F250000 */   lw    $a1, ($t9)
/* 145670 8019F600 8FA3001C */  lw    $v1, 0x1c($sp)
/* 145674 8019F604 00402825 */  move  $a1, $v0
/* 145678 8019F608 8C68008C */  lw    $t0, 0x8c($v1)
/* 14567C 8019F60C 8FA30020 */  lw    $v1, 0x20($sp)
/* 145680 8019F610 8D040008 */  lw    $a0, 8($t0)
/* 145684 8019F614 8C890004 */  lw    $t1, 4($a0)
/* 145688 8019F618 15200005 */  bnez  $t1, .L8019F630_ovl7
/* 14568C 8019F61C 00000000 */   nop   
/* 145690 8019F620 10600003 */  beqz  $v1, .L8019F630_ovl7
/* 145694 8019F624 00000000 */   nop   
/* 145698 8019F628 8C4A0024 */  lw    $t2, 0x24($v0)
/* 14569C 8019F62C AD430008 */  sw    $v1, 8($t2)
.L8019F630_ovl7:
/* 1456A0 8019F630 0C0447B3 */  jal   func_80111ECC
/* 1456A4 8019F634 00A02025 */   move  $a0, $a1
/* 1456A8 8019F638 0C067F7A */  jal   func_8019FDE8_ovl7
/* 1456AC 8019F63C 00000000 */   nop   
.L8019F640_ovl7:
/* 1456B0 8019F640 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1456B4 8019F644 27BD0020 */  addiu $sp, $sp, 0x20
/* 1456B8 8019F648 03E00008 */  jr    $ra
/* 1456BC 8019F64C 00000000 */   nop   

.type func_8019F590_ovl7, @function
.size func_8019F590_ovl7, . - func_8019F590_ovl7

glabel func_8019F650_ovl7
/* 1456C0 8019F650 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1456C4 8019F654 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1456C8 8019F658 8CCE0000 */  lw    $t6, ($a2)
/* 1456CC 8019F65C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1456D0 8019F660 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1456D4 8019F664 8DCF0000 */  lw    $t7, ($t6)
/* 1456D8 8019F668 3C03800E */  lui   $v1, 0x800e
/* 1456DC 8019F66C 27A40024 */  addiu $a0, $sp, 0x24
/* 1456E0 8019F670 000FC080 */  sll   $t8, $t7, 2
/* 1456E4 8019F674 00781821 */  addu  $v1, $v1, $t8
/* 1456E8 8019F678 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 1456EC 8019F67C 0C0442C0 */  jal   func_80110B00
/* 1456F0 8019F680 AFA30040 */   sw    $v1, 0x40($sp)
/* 1456F4 8019F684 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1456F8 8019F688 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1456FC 8019F68C 10400013 */  beqz  $v0, .L8019F6DC_ovl7
/* 145700 8019F690 8FA30040 */   lw    $v1, 0x40($sp)
/* 145704 8019F694 8CCA0000 */  lw    $t2, ($a2)
/* 145708 8019F698 93B90026 */  lbu   $t9, 0x26($sp)
/* 14570C 8019F69C 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145710 8019F6A0 8D4B0000 */  lw    $t3, ($t2)
/* 145714 8019F6A4 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145718 8019F6A8 2409FFFF */  li    $t1, -1
/* 14571C 8019F6AC 000B6080 */  sll   $t4, $t3, 2
/* 145720 8019F6B0 010C6821 */  addu  $t5, $t0, $t4
/* 145724 8019F6B4 ADB90000 */  sw    $t9, ($t5)
/* 145728 8019F6B8 93AE0027 */  lbu   $t6, 0x27($sp)
/* 14572C 8019F6BC A06E0043 */  sb    $t6, 0x43($v1)
/* 145730 8019F6C0 93AF0024 */  lbu   $t7, 0x24($sp)
/* 145734 8019F6C4 A06F003E */  sb    $t7, 0x3e($v1)
/* 145738 8019F6C8 93B80025 */  lbu   $t8, 0x25($sp)
/* 14573C 8019F6CC A078003F */  sb    $t8, 0x3f($v1)
/* 145740 8019F6D0 8FAA0030 */  lw    $t2, 0x30($sp)
/* 145744 8019F6D4 1000003D */  b     .L8019F7CC_ovl7
/* 145748 8019F6D8 A06A003A */   sb    $t2, 0x3a($v1)
.L8019F6DC_ovl7:
/* 14574C 8019F6DC 27A40024 */  addiu $a0, $sp, 0x24
/* 145750 8019F6E0 0C0443F5 */  jal   func_80110FD4
/* 145754 8019F6E4 AFA30040 */   sw    $v1, 0x40($sp)
/* 145758 8019F6E8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 14575C 8019F6EC 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145760 8019F6F0 10400013 */  beqz  $v0, .L8019F740_ovl7
/* 145764 8019F6F4 8FA30040 */   lw    $v1, 0x40($sp)
/* 145768 8019F6F8 8CCC0000 */  lw    $t4, ($a2)
/* 14576C 8019F6FC 93AB0026 */  lbu   $t3, 0x26($sp)
/* 145770 8019F700 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145774 8019F704 8D990000 */  lw    $t9, ($t4)
/* 145778 8019F708 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 14577C 8019F70C 2409FFFF */  li    $t1, -1
/* 145780 8019F710 00196880 */  sll   $t5, $t9, 2
/* 145784 8019F714 010D7021 */  addu  $t6, $t0, $t5
/* 145788 8019F718 ADCB0000 */  sw    $t3, ($t6)
/* 14578C 8019F71C 93AF0027 */  lbu   $t7, 0x27($sp)
/* 145790 8019F720 A06F0043 */  sb    $t7, 0x43($v1)
/* 145794 8019F724 93B80024 */  lbu   $t8, 0x24($sp)
/* 145798 8019F728 A078003E */  sb    $t8, 0x3e($v1)
/* 14579C 8019F72C 93AA0025 */  lbu   $t2, 0x25($sp)
/* 1457A0 8019F730 A06A003F */  sb    $t2, 0x3f($v1)
/* 1457A4 8019F734 8FAC0030 */  lw    $t4, 0x30($sp)
/* 1457A8 8019F738 10000024 */  b     .L8019F7CC_ovl7
/* 1457AC 8019F73C A06C003A */   sb    $t4, 0x3a($v1)
.L8019F740_ovl7:
/* 1457B0 8019F740 27A40024 */  addiu $a0, $sp, 0x24
/* 1457B4 8019F744 0C044054 */  jal   func_80110150
/* 1457B8 8019F748 AFA30040 */   sw    $v1, 0x40($sp)
/* 1457BC 8019F74C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1457C0 8019F750 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1457C4 8019F754 10400013 */  beqz  $v0, .L8019F7A4_ovl7
/* 1457C8 8019F758 8FA30040 */   lw    $v1, 0x40($sp)
/* 1457CC 8019F75C 8CCD0000 */  lw    $t5, ($a2)
/* 1457D0 8019F760 93B90026 */  lbu   $t9, 0x26($sp)
/* 1457D4 8019F764 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 1457D8 8019F768 8DAB0000 */  lw    $t3, ($t5)
/* 1457DC 8019F76C 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 1457E0 8019F770 2409FFFF */  li    $t1, -1
/* 1457E4 8019F774 000B7080 */  sll   $t6, $t3, 2
/* 1457E8 8019F778 010E7821 */  addu  $t7, $t0, $t6
/* 1457EC 8019F77C ADF90000 */  sw    $t9, ($t7)
/* 1457F0 8019F780 93B80027 */  lbu   $t8, 0x27($sp)
/* 1457F4 8019F784 A0780043 */  sb    $t8, 0x43($v1)
/* 1457F8 8019F788 93AA0024 */  lbu   $t2, 0x24($sp)
/* 1457FC 8019F78C A06A003E */  sb    $t2, 0x3e($v1)
/* 145800 8019F790 93AC0025 */  lbu   $t4, 0x25($sp)
/* 145804 8019F794 A06C003F */  sb    $t4, 0x3f($v1)
/* 145808 8019F798 8FAD0030 */  lw    $t5, 0x30($sp)
/* 14580C 8019F79C 1000000B */  b     .L8019F7CC_ovl7
/* 145810 8019F7A0 A06D003A */   sb    $t5, 0x3a($v1)
.L8019F7A4_ovl7:
/* 145814 8019F7A4 8CCB0000 */  lw    $t3, ($a2)
/* 145818 8019F7A8 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 14581C 8019F7AC 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145820 8019F7B0 8D6E0000 */  lw    $t6, ($t3)
/* 145824 8019F7B4 2409FFFF */  li    $t1, -1
/* 145828 8019F7B8 000EC880 */  sll   $t9, $t6, 2
/* 14582C 8019F7BC 01197821 */  addu  $t7, $t0, $t9
/* 145830 8019F7C0 ADE00000 */  sw    $zero, ($t7)
/* 145834 8019F7C4 A0600043 */  sb    $zero, 0x43($v1)
/* 145838 8019F7C8 A069003A */  sb    $t1, 0x3a($v1)
.L8019F7CC_ovl7:
/* 14583C 8019F7CC 8CC70000 */  lw    $a3, ($a2)
/* 145840 8019F7D0 24010001 */  li    $at, 1
/* 145844 8019F7D4 8CE50000 */  lw    $a1, ($a3)
/* 145848 8019F7D8 00052880 */  sll   $a1, $a1, 2
/* 14584C 8019F7DC 0105C021 */  addu  $t8, $t0, $a1
/* 145850 8019F7E0 8F020000 */  lw    $v0, ($t8)
/* 145854 8019F7E4 1041000A */  beq   $v0, $at, .L8019F810_ovl7
/* 145858 8019F7E8 24010002 */   li    $at, 2
/* 14585C 8019F7EC 10410037 */  beq   $v0, $at, .L8019F8CC_ovl7
/* 145860 8019F7F0 3C04800E */   lui   $a0, 0x800e
/* 145864 8019F7F4 24010003 */  li    $at, 3
/* 145868 8019F7F8 1041003B */  beq   $v0, $at, .L8019F8E8_ovl7
/* 14586C 8019F7FC 24010004 */   li    $at, 4
/* 145870 8019F800 10410052 */  beq   $v0, $at, .L8019F94C_ovl7
/* 145874 8019F804 00000000 */   nop   
/* 145878 8019F808 1000006D */  b     .L8019F9C0_ovl7
/* 14587C 8019F80C 00001025 */   move  $v0, $zero
.L8019F810_ovl7:
/* 145880 8019F810 8FA40030 */  lw    $a0, 0x30($sp)
/* 145884 8019F814 0C068091 */  jal   func_801A0244_ovl7
/* 145888 8019F818 AFA30040 */   sw    $v1, 0x40($sp)
/* 14588C 8019F81C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145890 8019F820 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145894 8019F824 2409FFFF */  li    $t1, -1
/* 145898 8019F828 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 14589C 8019F82C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1458A0 8019F830 1049001B */  beq   $v0, $t1, .L8019F8A0_ovl7
/* 1458A4 8019F834 8FA30040 */   lw    $v1, 0x40($sp)
/* 1458A8 8019F838 8CCC0000 */  lw    $t4, ($a2)
/* 1458AC 8019F83C 240A0012 */  li    $t2, 18
/* 1458B0 8019F840 240400F4 */  li    $a0, 244
/* 1458B4 8019F844 8D8D0000 */  lw    $t5, ($t4)
/* 1458B8 8019F848 000D5880 */  sll   $t3, $t5, 2
/* 1458BC 8019F84C 010B7021 */  addu  $t6, $t0, $t3
/* 1458C0 8019F850 ADCA0000 */  sw    $t2, ($t6)
/* 1458C4 8019F854 0C029D9E */  jal   play_sound
/* 1458C8 8019F858 AFA30040 */   sw    $v1, 0x40($sp)
/* 1458CC 8019F85C 8FA30040 */  lw    $v1, 0x40($sp)
/* 1458D0 8019F860 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1458D4 8019F864 24190001 */  li    $t9, 1
/* 1458D8 8019F868 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1458DC 8019F86C AC600094 */  sw    $zero, 0x94($v1)
/* 1458E0 8019F870 A0790040 */  sb    $t9, 0x40($v1)
/* 1458E4 8019F874 8CCF0000 */  lw    $t7, ($a2)
/* 1458E8 8019F878 3C04800E */  lui   $a0, 0x800e
/* 1458EC 8019F87C 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 1458F0 8019F880 8DF80000 */  lw    $t8, ($t7)
/* 1458F4 8019F884 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 1458F8 8019F888 00186080 */  sll   $t4, $t8, 2
/* 1458FC 8019F88C 008C2021 */  addu  $a0, $a0, $t4
/* 145900 8019F890 0C02C7B2 */  jal   assign_new_process_entry
/* 145904 8019F894 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 145908 8019F898 10000049 */  b     .L8019F9C0_ovl7
/* 14590C 8019F89C 24020001 */   li    $v0, 1
.L8019F8A0_ovl7:
/* 145910 8019F8A0 8CCD0000 */  lw    $t5, ($a2)
/* 145914 8019F8A4 3C04800E */  lui   $a0, 0x800e
/* 145918 8019F8A8 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 14591C 8019F8AC 8DAB0000 */  lw    $t3, ($t5)
/* 145920 8019F8B0 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 145924 8019F8B4 000B5080 */  sll   $t2, $t3, 2
/* 145928 8019F8B8 008A2021 */  addu  $a0, $a0, $t2
/* 14592C 8019F8BC 0C02C7B2 */  jal   assign_new_process_entry
/* 145930 8019F8C0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 145934 8019F8C4 1000003E */  b     .L8019F9C0_ovl7
/* 145938 8019F8C8 24020001 */   li    $v0, 1
.L8019F8CC_ovl7:
/* 14593C 8019F8CC 00852021 */  addu  $a0, $a0, $a1
/* 145940 8019F8D0 0C067AF3 */  jal   func_8019EBCC_ovl7
/* 145944 8019F8D4 8C84E350 */   lw    $a0, -0x1cb0($a0)
/* 145948 8019F8D8 0C068EE9 */  jal   func_801A3BA4_ovl7
/* 14594C 8019F8DC 00000000 */   nop   
/* 145950 8019F8E0 10000037 */  b     .L8019F9C0_ovl7
/* 145954 8019F8E4 24020001 */   li    $v0, 1
.L8019F8E8_ovl7:
/* 145958 8019F8E8 8FAE0030 */  lw    $t6, 0x30($sp)
/* 14595C 8019F8EC 3C01800F */  lui   $at, 0x800f
/* 145960 8019F8F0 00250821 */  addu  $at, $at, $a1
/* 145964 8019F8F4 11C90006 */  beq   $t6, $t1, .L8019F910_ovl7
/* 145968 8019F8F8 AC208220 */   sw    $zero, -0x7de0($at)
/* 14596C 8019F8FC 8CF90000 */  lw    $t9, ($a3)
/* 145970 8019F900 3C01800E */  lui   $at, 0x800e
/* 145974 8019F904 00197880 */  sll   $t7, $t9, 2
/* 145978 8019F908 002F0821 */  addu  $at, $at, $t7
/* 14597C 8019F90C AC2E0D50 */  sw    $t6, 0xd50($at)
.L8019F910_ovl7:
/* 145980 8019F910 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 145984 8019F914 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 145988 8019F918 845800B2 */  lh    $t8, 0xb2($v0)
/* 14598C 8019F91C 3C04800E */  lui   $a0, 0x800e
/* 145990 8019F920 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 145994 8019F924 270C0001 */  addiu $t4, $t8, 1
/* 145998 8019F928 A44C00B2 */  sh    $t4, 0xb2($v0)
/* 14599C 8019F92C 8CED0000 */  lw    $t5, ($a3)
/* 1459A0 8019F930 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 1459A4 8019F934 000D5880 */  sll   $t3, $t5, 2
/* 1459A8 8019F938 008B2021 */  addu  $a0, $a0, $t3
/* 1459AC 8019F93C 0C02C7B2 */  jal   assign_new_process_entry
/* 1459B0 8019F940 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1459B4 8019F944 1000001E */  b     .L8019F9C0_ovl7
/* 1459B8 8019F948 24020001 */   li    $v0, 1
.L8019F94C_ovl7:
/* 1459BC 8019F94C 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 1459C0 8019F950 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 1459C4 8019F954 904A0004 */  lbu   $t2, 4($v0)
/* 1459C8 8019F958 3C01800F */  lui   $at, 0x800f
/* 1459CC 8019F95C 00250821 */  addu  $at, $at, $a1
/* 1459D0 8019F960 15400015 */  bnez  $t2, .L8019F9B8_ovl7
/* 1459D4 8019F964 24190001 */   li    $t9, 1
/* 1459D8 8019F968 8FAF0030 */  lw    $t7, 0x30($sp)
/* 1459DC 8019F96C AC398220 */  sw    $t9, -0x7de0($at)
/* 1459E0 8019F970 240E0002 */  li    $t6, 2
/* 1459E4 8019F974 11E90006 */  beq   $t7, $t1, .L8019F990_ovl7
/* 1459E8 8019F978 A04E0004 */   sb    $t6, 4($v0)
/* 1459EC 8019F97C 8CF80000 */  lw    $t8, ($a3)
/* 1459F0 8019F980 3C01800E */  lui   $at, 0x800e
/* 1459F4 8019F984 00186080 */  sll   $t4, $t8, 2
/* 1459F8 8019F988 002C0821 */  addu  $at, $at, $t4
/* 1459FC 8019F98C AC2F0D50 */  sw    $t7, 0xd50($at)
.L8019F990_ovl7:
/* 145A00 8019F990 8CED0000 */  lw    $t5, ($a3)
/* 145A04 8019F994 3C04800E */  lui   $a0, 0x800e
/* 145A08 8019F998 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 145A0C 8019F99C 000D5880 */  sll   $t3, $t5, 2
/* 145A10 8019F9A0 008B2021 */  addu  $a0, $a0, $t3
/* 145A14 8019F9A4 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 145A18 8019F9A8 0C02C7B2 */  jal   assign_new_process_entry
/* 145A1C 8019F9AC 24A57000 */   addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 145A20 8019F9B0 10000003 */  b     .L8019F9C0_ovl7
/* 145A24 8019F9B4 24020001 */   li    $v0, 1
.L8019F9B8_ovl7:
/* 145A28 8019F9B8 10000001 */  b     .L8019F9C0_ovl7
/* 145A2C 8019F9BC 00001025 */   move  $v0, $zero
.L8019F9C0_ovl7:
/* 145A30 8019F9C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145A34 8019F9C4 27BD0048 */  addiu $sp, $sp, 0x48
/* 145A38 8019F9C8 03E00008 */  jr    $ra
/* 145A3C 8019F9CC 00000000 */   nop   

.type func_8019F650_ovl7, @function
.size func_8019F650_ovl7, . - func_8019F650_ovl7

glabel func_8019F9D0_ovl7
/* 145A40 8019F9D0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 145A44 8019F9D4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 145A48 8019F9D8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 145A4C 8019F9DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 145A50 8019F9E0 AFA40038 */  sw    $a0, 0x38($sp)
/* 145A54 8019F9E4 8DC40000 */  lw    $a0, ($t6)
/* 145A58 8019F9E8 3C18800E */  lui   $t8, 0x800e
/* 145A5C 8019F9EC 00047880 */  sll   $t7, $a0, 2
/* 145A60 8019F9F0 030FC021 */  addu  $t8, $t8, $t7
/* 145A64 8019F9F4 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 145A68 8019F9F8 0C044554 */  jal   func_80111550
/* 145A6C 8019F9FC AFB80018 */   sw    $t8, 0x18($sp)
/* 145A70 8019FA00 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 145A74 8019FA04 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 145A78 8019FA08 8FB90018 */  lw    $t9, 0x18($sp)
/* 145A7C 8019FA0C 8D050000 */  lw    $a1, ($t0)
/* 145A80 8019FA10 0C044722 */  jal   func_80111C88
/* 145A84 8019FA14 8F24008C */   lw    $a0, 0x8c($t9)
/* 145A88 8019FA18 8FA90018 */  lw    $t1, 0x18($sp)
/* 145A8C 8019FA1C 00402025 */  move  $a0, $v0
/* 145A90 8019FA20 8D2A008C */  lw    $t2, 0x8c($t1)
/* 145A94 8019FA24 8D430008 */  lw    $v1, 8($t2)
/* 145A98 8019FA28 8C6B0004 */  lw    $t3, 4($v1)
/* 145A9C 8019FA2C 8FA30038 */  lw    $v1, 0x38($sp)
/* 145AA0 8019FA30 15600005 */  bnez  $t3, .L8019FA48_ovl7
/* 145AA4 8019FA34 00000000 */   nop   
/* 145AA8 8019FA38 10600003 */  beqz  $v1, .L8019FA48_ovl7
/* 145AAC 8019FA3C 00000000 */   nop   
/* 145AB0 8019FA40 8C4C0024 */  lw    $t4, 0x24($v0)
/* 145AB4 8019FA44 AD830008 */  sw    $v1, 8($t4)
.L8019FA48_ovl7:
/* 145AB8 8019FA48 0C0447B3 */  jal   func_80111ECC
/* 145ABC 8019FA4C 00000000 */   nop   
/* 145AC0 8019FA50 0C06831C */  jal   func_801A0C70_ovl7
/* 145AC4 8019FA54 00000000 */   nop   
/* 145AC8 8019FA58 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145ACC 8019FA5C 27BD0038 */  addiu $sp, $sp, 0x38
/* 145AD0 8019FA60 03E00008 */  jr    $ra
/* 145AD4 8019FA64 00000000 */   nop   

.type func_8019F9D0_ovl7, @function
.size func_8019F9D0_ovl7, . - func_8019F9D0_ovl7

glabel func_8019FA68_ovl7
/* 145AD8 8019FA68 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145ADC 8019FA6C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145AE0 8019FA70 8CCE0000 */  lw    $t6, ($a2)
/* 145AE4 8019FA74 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 145AE8 8019FA78 AFBF0014 */  sw    $ra, 0x14($sp)
/* 145AEC 8019FA7C 8DCF0000 */  lw    $t7, ($t6)
/* 145AF0 8019FA80 3C03800E */  lui   $v1, 0x800e
/* 145AF4 8019FA84 27A40024 */  addiu $a0, $sp, 0x24
/* 145AF8 8019FA88 000FC080 */  sll   $t8, $t7, 2
/* 145AFC 8019FA8C 00781821 */  addu  $v1, $v1, $t8
/* 145B00 8019FA90 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 145B04 8019FA94 0C0442C0 */  jal   func_80110B00
/* 145B08 8019FA98 AFA30040 */   sw    $v1, 0x40($sp)
/* 145B0C 8019FA9C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145B10 8019FAA0 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145B14 8019FAA4 10400013 */  beqz  $v0, .L8019FAF4_ovl7
/* 145B18 8019FAA8 8FA30040 */   lw    $v1, 0x40($sp)
/* 145B1C 8019FAAC 8CCA0000 */  lw    $t2, ($a2)
/* 145B20 8019FAB0 93B90026 */  lbu   $t9, 0x26($sp)
/* 145B24 8019FAB4 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145B28 8019FAB8 8D4B0000 */  lw    $t3, ($t2)
/* 145B2C 8019FABC 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145B30 8019FAC0 2409FFFF */  li    $t1, -1
/* 145B34 8019FAC4 000B6080 */  sll   $t4, $t3, 2
/* 145B38 8019FAC8 010C6821 */  addu  $t5, $t0, $t4
/* 145B3C 8019FACC ADB90000 */  sw    $t9, ($t5)
/* 145B40 8019FAD0 93AE0027 */  lbu   $t6, 0x27($sp)
/* 145B44 8019FAD4 A06E0043 */  sb    $t6, 0x43($v1)
/* 145B48 8019FAD8 93AF0024 */  lbu   $t7, 0x24($sp)
/* 145B4C 8019FADC A06F003E */  sb    $t7, 0x3e($v1)
/* 145B50 8019FAE0 93B80025 */  lbu   $t8, 0x25($sp)
/* 145B54 8019FAE4 A078003F */  sb    $t8, 0x3f($v1)
/* 145B58 8019FAE8 8FAA0030 */  lw    $t2, 0x30($sp)
/* 145B5C 8019FAEC 1000003D */  b     .L8019FBE4_ovl7
/* 145B60 8019FAF0 A06A003A */   sb    $t2, 0x3a($v1)
.L8019FAF4_ovl7:
/* 145B64 8019FAF4 27A40024 */  addiu $a0, $sp, 0x24
/* 145B68 8019FAF8 0C044054 */  jal   func_80110150
/* 145B6C 8019FAFC AFA30040 */   sw    $v1, 0x40($sp)
/* 145B70 8019FB00 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145B74 8019FB04 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145B78 8019FB08 10400013 */  beqz  $v0, .L8019FB58_ovl7
/* 145B7C 8019FB0C 8FA30040 */   lw    $v1, 0x40($sp)
/* 145B80 8019FB10 8CCC0000 */  lw    $t4, ($a2)
/* 145B84 8019FB14 93AB0026 */  lbu   $t3, 0x26($sp)
/* 145B88 8019FB18 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145B8C 8019FB1C 8D990000 */  lw    $t9, ($t4)
/* 145B90 8019FB20 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145B94 8019FB24 2409FFFF */  li    $t1, -1
/* 145B98 8019FB28 00196880 */  sll   $t5, $t9, 2
/* 145B9C 8019FB2C 010D7021 */  addu  $t6, $t0, $t5
/* 145BA0 8019FB30 ADCB0000 */  sw    $t3, ($t6)
/* 145BA4 8019FB34 93AF0027 */  lbu   $t7, 0x27($sp)
/* 145BA8 8019FB38 A06F0043 */  sb    $t7, 0x43($v1)
/* 145BAC 8019FB3C 93B80024 */  lbu   $t8, 0x24($sp)
/* 145BB0 8019FB40 A078003E */  sb    $t8, 0x3e($v1)
/* 145BB4 8019FB44 93AA0025 */  lbu   $t2, 0x25($sp)
/* 145BB8 8019FB48 A06A003F */  sb    $t2, 0x3f($v1)
/* 145BBC 8019FB4C 8FAC0030 */  lw    $t4, 0x30($sp)
/* 145BC0 8019FB50 10000024 */  b     .L8019FBE4_ovl7
/* 145BC4 8019FB54 A06C003A */   sb    $t4, 0x3a($v1)
.L8019FB58_ovl7:
/* 145BC8 8019FB58 27A40024 */  addiu $a0, $sp, 0x24
/* 145BCC 8019FB5C 0C0443F5 */  jal   func_80110FD4
/* 145BD0 8019FB60 AFA30040 */   sw    $v1, 0x40($sp)
/* 145BD4 8019FB64 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145BD8 8019FB68 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145BDC 8019FB6C 10400013 */  beqz  $v0, .L8019FBBC_ovl7
/* 145BE0 8019FB70 8FA30040 */   lw    $v1, 0x40($sp)
/* 145BE4 8019FB74 8CCD0000 */  lw    $t5, ($a2)
/* 145BE8 8019FB78 93B90026 */  lbu   $t9, 0x26($sp)
/* 145BEC 8019FB7C 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145BF0 8019FB80 8DAB0000 */  lw    $t3, ($t5)
/* 145BF4 8019FB84 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145BF8 8019FB88 2409FFFF */  li    $t1, -1
/* 145BFC 8019FB8C 000B7080 */  sll   $t6, $t3, 2
/* 145C00 8019FB90 010E7821 */  addu  $t7, $t0, $t6
/* 145C04 8019FB94 ADF90000 */  sw    $t9, ($t7)
/* 145C08 8019FB98 93B80027 */  lbu   $t8, 0x27($sp)
/* 145C0C 8019FB9C A0780043 */  sb    $t8, 0x43($v1)
/* 145C10 8019FBA0 93AA0024 */  lbu   $t2, 0x24($sp)
/* 145C14 8019FBA4 A06A003E */  sb    $t2, 0x3e($v1)
/* 145C18 8019FBA8 93AC0025 */  lbu   $t4, 0x25($sp)
/* 145C1C 8019FBAC A06C003F */  sb    $t4, 0x3f($v1)
/* 145C20 8019FBB0 8FAD0030 */  lw    $t5, 0x30($sp)
/* 145C24 8019FBB4 1000000B */  b     .L8019FBE4_ovl7
/* 145C28 8019FBB8 A06D003A */   sb    $t5, 0x3a($v1)
.L8019FBBC_ovl7:
/* 145C2C 8019FBBC 8CCB0000 */  lw    $t3, ($a2)
/* 145C30 8019FBC0 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145C34 8019FBC4 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145C38 8019FBC8 8D6E0000 */  lw    $t6, ($t3)
/* 145C3C 8019FBCC 2409FFFF */  li    $t1, -1
/* 145C40 8019FBD0 000EC880 */  sll   $t9, $t6, 2
/* 145C44 8019FBD4 01197821 */  addu  $t7, $t0, $t9
/* 145C48 8019FBD8 ADE00000 */  sw    $zero, ($t7)
/* 145C4C 8019FBDC A0600043 */  sb    $zero, 0x43($v1)
/* 145C50 8019FBE0 A069003A */  sb    $t1, 0x3a($v1)
.L8019FBE4_ovl7:
/* 145C54 8019FBE4 8CC70000 */  lw    $a3, ($a2)
/* 145C58 8019FBE8 24010001 */  li    $at, 1
/* 145C5C 8019FBEC 8CE50000 */  lw    $a1, ($a3)
/* 145C60 8019FBF0 00052880 */  sll   $a1, $a1, 2
/* 145C64 8019FBF4 0105C021 */  addu  $t8, $t0, $a1
/* 145C68 8019FBF8 8F020000 */  lw    $v0, ($t8)
/* 145C6C 8019FBFC 1041000A */  beq   $v0, $at, .L8019FC28_ovl7
/* 145C70 8019FC00 24010002 */   li    $at, 2
/* 145C74 8019FC04 10410037 */  beq   $v0, $at, .L8019FCE4_ovl7
/* 145C78 8019FC08 3C04800E */   lui   $a0, 0x800e
/* 145C7C 8019FC0C 24010003 */  li    $at, 3
/* 145C80 8019FC10 1041003B */  beq   $v0, $at, .L8019FD00_ovl7
/* 145C84 8019FC14 24010004 */   li    $at, 4
/* 145C88 8019FC18 10410052 */  beq   $v0, $at, .L8019FD64_ovl7
/* 145C8C 8019FC1C 00000000 */   nop   
/* 145C90 8019FC20 1000006D */  b     .L8019FDD8_ovl7
/* 145C94 8019FC24 00001025 */   move  $v0, $zero
.L8019FC28_ovl7:
/* 145C98 8019FC28 8FA40030 */  lw    $a0, 0x30($sp)
/* 145C9C 8019FC2C 0C068091 */  jal   func_801A0244_ovl7
/* 145CA0 8019FC30 AFA30040 */   sw    $v1, 0x40($sp)
/* 145CA4 8019FC34 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145CA8 8019FC38 3C08800F */  lui   $t0, %hi(D_800E83E0) # $t0, 0x800f
/* 145CAC 8019FC3C 2409FFFF */  li    $t1, -1
/* 145CB0 8019FC40 250883E0 */  addiu $t0, %lo(D_800E83E0) # addiu $t0, $t0, -0x7c20
/* 145CB4 8019FC44 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145CB8 8019FC48 1049001B */  beq   $v0, $t1, .L8019FCB8_ovl7
/* 145CBC 8019FC4C 8FA30040 */   lw    $v1, 0x40($sp)
/* 145CC0 8019FC50 8CCC0000 */  lw    $t4, ($a2)
/* 145CC4 8019FC54 240A0012 */  li    $t2, 18
/* 145CC8 8019FC58 240400F4 */  li    $a0, 244
/* 145CCC 8019FC5C 8D8D0000 */  lw    $t5, ($t4)
/* 145CD0 8019FC60 000D5880 */  sll   $t3, $t5, 2
/* 145CD4 8019FC64 010B7021 */  addu  $t6, $t0, $t3
/* 145CD8 8019FC68 ADCA0000 */  sw    $t2, ($t6)
/* 145CDC 8019FC6C 0C029D9E */  jal   play_sound
/* 145CE0 8019FC70 AFA30040 */   sw    $v1, 0x40($sp)
/* 145CE4 8019FC74 8FA30040 */  lw    $v1, 0x40($sp)
/* 145CE8 8019FC78 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145CEC 8019FC7C 24190001 */  li    $t9, 1
/* 145CF0 8019FC80 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145CF4 8019FC84 AC600094 */  sw    $zero, 0x94($v1)
/* 145CF8 8019FC88 A0790040 */  sb    $t9, 0x40($v1)
/* 145CFC 8019FC8C 8CCF0000 */  lw    $t7, ($a2)
/* 145D00 8019FC90 3C04800E */  lui   $a0, 0x800e
/* 145D04 8019FC94 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 145D08 8019FC98 8DF80000 */  lw    $t8, ($t7)
/* 145D0C 8019FC9C 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 145D10 8019FCA0 00186080 */  sll   $t4, $t8, 2
/* 145D14 8019FCA4 008C2021 */  addu  $a0, $a0, $t4
/* 145D18 8019FCA8 0C02C7B2 */  jal   assign_new_process_entry
/* 145D1C 8019FCAC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 145D20 8019FCB0 10000049 */  b     .L8019FDD8_ovl7
/* 145D24 8019FCB4 24020001 */   li    $v0, 1
.L8019FCB8_ovl7:
/* 145D28 8019FCB8 8CCD0000 */  lw    $t5, ($a2)
/* 145D2C 8019FCBC 3C04800E */  lui   $a0, 0x800e
/* 145D30 8019FCC0 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 145D34 8019FCC4 8DAB0000 */  lw    $t3, ($t5)
/* 145D38 8019FCC8 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 145D3C 8019FCCC 000B5080 */  sll   $t2, $t3, 2
/* 145D40 8019FCD0 008A2021 */  addu  $a0, $a0, $t2
/* 145D44 8019FCD4 0C02C7B2 */  jal   assign_new_process_entry
/* 145D48 8019FCD8 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 145D4C 8019FCDC 1000003E */  b     .L8019FDD8_ovl7
/* 145D50 8019FCE0 24020001 */   li    $v0, 1
.L8019FCE4_ovl7:
/* 145D54 8019FCE4 00852021 */  addu  $a0, $a0, $a1
/* 145D58 8019FCE8 0C067AF3 */  jal   func_8019EBCC_ovl7
/* 145D5C 8019FCEC 8C84E350 */   lw    $a0, -0x1cb0($a0)
/* 145D60 8019FCF0 0C068EE9 */  jal   func_801A3BA4_ovl7
/* 145D64 8019FCF4 00000000 */   nop   
/* 145D68 8019FCF8 10000037 */  b     .L8019FDD8_ovl7
/* 145D6C 8019FCFC 24020001 */   li    $v0, 1
.L8019FD00_ovl7:
/* 145D70 8019FD00 8FAE0030 */  lw    $t6, 0x30($sp)
/* 145D74 8019FD04 3C01800F */  lui   $at, 0x800f
/* 145D78 8019FD08 00250821 */  addu  $at, $at, $a1
/* 145D7C 8019FD0C 11C90006 */  beq   $t6, $t1, .L8019FD28_ovl7
/* 145D80 8019FD10 AC208220 */   sw    $zero, -0x7de0($at)
/* 145D84 8019FD14 8CF90000 */  lw    $t9, ($a3)
/* 145D88 8019FD18 3C01800E */  lui   $at, 0x800e
/* 145D8C 8019FD1C 00197880 */  sll   $t7, $t9, 2
/* 145D90 8019FD20 002F0821 */  addu  $at, $at, $t7
/* 145D94 8019FD24 AC2E0D50 */  sw    $t6, 0xd50($at)
.L8019FD28_ovl7:
/* 145D98 8019FD28 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 145D9C 8019FD2C 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 145DA0 8019FD30 845800B2 */  lh    $t8, 0xb2($v0)
/* 145DA4 8019FD34 3C04800E */  lui   $a0, 0x800e
/* 145DA8 8019FD38 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 145DAC 8019FD3C 270C0001 */  addiu $t4, $t8, 1
/* 145DB0 8019FD40 A44C00B2 */  sh    $t4, 0xb2($v0)
/* 145DB4 8019FD44 8CED0000 */  lw    $t5, ($a3)
/* 145DB8 8019FD48 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 145DBC 8019FD4C 000D5880 */  sll   $t3, $t5, 2
/* 145DC0 8019FD50 008B2021 */  addu  $a0, $a0, $t3
/* 145DC4 8019FD54 0C02C7B2 */  jal   assign_new_process_entry
/* 145DC8 8019FD58 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 145DCC 8019FD5C 1000001E */  b     .L8019FDD8_ovl7
/* 145DD0 8019FD60 24020001 */   li    $v0, 1
.L8019FD64_ovl7:
/* 145DD4 8019FD64 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 145DD8 8019FD68 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 145DDC 8019FD6C 904A0004 */  lbu   $t2, 4($v0)
/* 145DE0 8019FD70 3C01800F */  lui   $at, 0x800f
/* 145DE4 8019FD74 00250821 */  addu  $at, $at, $a1
/* 145DE8 8019FD78 15400015 */  bnez  $t2, .L8019FDD0_ovl7
/* 145DEC 8019FD7C 24190001 */   li    $t9, 1
/* 145DF0 8019FD80 8FAF0030 */  lw    $t7, 0x30($sp)
/* 145DF4 8019FD84 AC398220 */  sw    $t9, -0x7de0($at)
/* 145DF8 8019FD88 240E0002 */  li    $t6, 2
/* 145DFC 8019FD8C 11E90006 */  beq   $t7, $t1, .L8019FDA8_ovl7
/* 145E00 8019FD90 A04E0004 */   sb    $t6, 4($v0)
/* 145E04 8019FD94 8CF80000 */  lw    $t8, ($a3)
/* 145E08 8019FD98 3C01800E */  lui   $at, 0x800e
/* 145E0C 8019FD9C 00186080 */  sll   $t4, $t8, 2
/* 145E10 8019FDA0 002C0821 */  addu  $at, $at, $t4
/* 145E14 8019FDA4 AC2F0D50 */  sw    $t7, 0xd50($at)
.L8019FDA8_ovl7:
/* 145E18 8019FDA8 8CED0000 */  lw    $t5, ($a3)
/* 145E1C 8019FDAC 3C04800E */  lui   $a0, 0x800e
/* 145E20 8019FDB0 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 145E24 8019FDB4 000D5880 */  sll   $t3, $t5, 2
/* 145E28 8019FDB8 008B2021 */  addu  $a0, $a0, $t3
/* 145E2C 8019FDBC 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 145E30 8019FDC0 0C02C7B2 */  jal   assign_new_process_entry
/* 145E34 8019FDC4 24A57000 */   addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 145E38 8019FDC8 10000003 */  b     .L8019FDD8_ovl7
/* 145E3C 8019FDCC 24020001 */   li    $v0, 1
.L8019FDD0_ovl7:
/* 145E40 8019FDD0 10000001 */  b     .L8019FDD8_ovl7
/* 145E44 8019FDD4 00001025 */   move  $v0, $zero
.L8019FDD8_ovl7:
/* 145E48 8019FDD8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 145E4C 8019FDDC 27BD0048 */  addiu $sp, $sp, 0x48
/* 145E50 8019FDE0 03E00008 */  jr    $ra
/* 145E54 8019FDE4 00000000 */   nop   

.type func_8019FA68_ovl7, @function
.size func_8019FA68_ovl7, . - func_8019FA68_ovl7

glabel func_8019FDE8_ovl7
/* 145E58 8019FDE8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145E5C 8019FDEC 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145E60 8019FDF0 8CCE0000 */  lw    $t6, ($a2)
/* 145E64 8019FDF4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 145E68 8019FDF8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 145E6C 8019FDFC 8DCF0000 */  lw    $t7, ($t6)
/* 145E70 8019FE00 3C03800E */  lui   $v1, 0x800e
/* 145E74 8019FE04 27A4002C */  addiu $a0, $sp, 0x2c
/* 145E78 8019FE08 000FC080 */  sll   $t8, $t7, 2
/* 145E7C 8019FE0C 00781821 */  addu  $v1, $v1, $t8
/* 145E80 8019FE10 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 145E84 8019FE14 0C0442C0 */  jal   func_80110B00
/* 145E88 8019FE18 AFA30048 */   sw    $v1, 0x48($sp)
/* 145E8C 8019FE1C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145E90 8019FE20 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145E94 8019FE24 10400013 */  beqz  $v0, .L8019FE74_ovl7
/* 145E98 8019FE28 8FA30048 */   lw    $v1, 0x48($sp)
/* 145E9C 8019FE2C 8CCD0000 */  lw    $t5, ($a2)
/* 145EA0 8019FE30 93B9002E */  lbu   $t9, 0x2e($sp)
/* 145EA4 8019FE34 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 145EA8 8019FE38 8DAE0000 */  lw    $t6, ($t5)
/* 145EAC 8019FE3C 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 145EB0 8019FE40 2407FFFF */  li    $a3, -1
/* 145EB4 8019FE44 000E7880 */  sll   $t7, $t6, 2
/* 145EB8 8019FE48 00AFC021 */  addu  $t8, $a1, $t7
/* 145EBC 8019FE4C AF190000 */  sw    $t9, ($t8)
/* 145EC0 8019FE50 93AD002F */  lbu   $t5, 0x2f($sp)
/* 145EC4 8019FE54 A06D0043 */  sb    $t5, 0x43($v1)
/* 145EC8 8019FE58 93AE002C */  lbu   $t6, 0x2c($sp)
/* 145ECC 8019FE5C A06E003E */  sb    $t6, 0x3e($v1)
/* 145ED0 8019FE60 93AF002D */  lbu   $t7, 0x2d($sp)
/* 145ED4 8019FE64 A06F003F */  sb    $t7, 0x3f($v1)
/* 145ED8 8019FE68 8FB90038 */  lw    $t9, 0x38($sp)
/* 145EDC 8019FE6C 1000003D */  b     .L8019FF64_ovl7
/* 145EE0 8019FE70 A079003A */   sb    $t9, 0x3a($v1)
.L8019FE74_ovl7:
/* 145EE4 8019FE74 27A4002C */  addiu $a0, $sp, 0x2c
/* 145EE8 8019FE78 0C0443F5 */  jal   func_80110FD4
/* 145EEC 8019FE7C AFA30048 */   sw    $v1, 0x48($sp)
/* 145EF0 8019FE80 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145EF4 8019FE84 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145EF8 8019FE88 10400013 */  beqz  $v0, .L8019FED8_ovl7
/* 145EFC 8019FE8C 8FA30048 */   lw    $v1, 0x48($sp)
/* 145F00 8019FE90 8CCD0000 */  lw    $t5, ($a2)
/* 145F04 8019FE94 93B8002E */  lbu   $t8, 0x2e($sp)
/* 145F08 8019FE98 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 145F0C 8019FE9C 8DAE0000 */  lw    $t6, ($t5)
/* 145F10 8019FEA0 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 145F14 8019FEA4 2407FFFF */  li    $a3, -1
/* 145F18 8019FEA8 000E7880 */  sll   $t7, $t6, 2
/* 145F1C 8019FEAC 00AFC821 */  addu  $t9, $a1, $t7
/* 145F20 8019FEB0 AF380000 */  sw    $t8, ($t9)
/* 145F24 8019FEB4 93AD002F */  lbu   $t5, 0x2f($sp)
/* 145F28 8019FEB8 A06D0043 */  sb    $t5, 0x43($v1)
/* 145F2C 8019FEBC 93AE002C */  lbu   $t6, 0x2c($sp)
/* 145F30 8019FEC0 A06E003E */  sb    $t6, 0x3e($v1)
/* 145F34 8019FEC4 93AF002D */  lbu   $t7, 0x2d($sp)
/* 145F38 8019FEC8 A06F003F */  sb    $t7, 0x3f($v1)
/* 145F3C 8019FECC 8FB80038 */  lw    $t8, 0x38($sp)
/* 145F40 8019FED0 10000024 */  b     .L8019FF64_ovl7
/* 145F44 8019FED4 A078003A */   sb    $t8, 0x3a($v1)
.L8019FED8_ovl7:
/* 145F48 8019FED8 27A4002C */  addiu $a0, $sp, 0x2c
/* 145F4C 8019FEDC 0C044054 */  jal   func_80110150
/* 145F50 8019FEE0 AFA30048 */   sw    $v1, 0x48($sp)
/* 145F54 8019FEE4 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 145F58 8019FEE8 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 145F5C 8019FEEC 10400013 */  beqz  $v0, .L8019FF3C_ovl7
/* 145F60 8019FEF0 8FA30048 */   lw    $v1, 0x48($sp)
/* 145F64 8019FEF4 8CCD0000 */  lw    $t5, ($a2)
/* 145F68 8019FEF8 93B9002E */  lbu   $t9, 0x2e($sp)
/* 145F6C 8019FEFC 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 145F70 8019FF00 8DAE0000 */  lw    $t6, ($t5)
/* 145F74 8019FF04 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 145F78 8019FF08 2407FFFF */  li    $a3, -1
/* 145F7C 8019FF0C 000E7880 */  sll   $t7, $t6, 2
/* 145F80 8019FF10 00AFC021 */  addu  $t8, $a1, $t7
/* 145F84 8019FF14 AF190000 */  sw    $t9, ($t8)
/* 145F88 8019FF18 93AD002F */  lbu   $t5, 0x2f($sp)
/* 145F8C 8019FF1C A06D0043 */  sb    $t5, 0x43($v1)
/* 145F90 8019FF20 93AE002C */  lbu   $t6, 0x2c($sp)
/* 145F94 8019FF24 A06E003E */  sb    $t6, 0x3e($v1)
/* 145F98 8019FF28 93AF002D */  lbu   $t7, 0x2d($sp)
/* 145F9C 8019FF2C A06F003F */  sb    $t7, 0x3f($v1)
/* 145FA0 8019FF30 8FB90038 */  lw    $t9, 0x38($sp)
/* 145FA4 8019FF34 1000000B */  b     .L8019FF64_ovl7
/* 145FA8 8019FF38 A079003A */   sb    $t9, 0x3a($v1)
.L8019FF3C_ovl7:
/* 145FAC 8019FF3C 8CD80000 */  lw    $t8, ($a2)
/* 145FB0 8019FF40 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 145FB4 8019FF44 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 145FB8 8019FF48 8F0D0000 */  lw    $t5, ($t8)
/* 145FBC 8019FF4C 2407FFFF */  li    $a3, -1
/* 145FC0 8019FF50 000D7080 */  sll   $t6, $t5, 2
/* 145FC4 8019FF54 00AE7821 */  addu  $t7, $a1, $t6
/* 145FC8 8019FF58 ADE00000 */  sw    $zero, ($t7)
/* 145FCC 8019FF5C A0600043 */  sb    $zero, 0x43($v1)
/* 145FD0 8019FF60 A067003A */  sb    $a3, 0x3a($v1)
.L8019FF64_ovl7:
/* 145FD4 8019FF64 8CC90000 */  lw    $t1, ($a2)
/* 145FD8 8019FF68 8D280000 */  lw    $t0, ($t1)
/* 145FDC 8019FF6C 00084080 */  sll   $t0, $t0, 2
/* 145FE0 8019FF70 00A8C821 */  addu  $t9, $a1, $t0
/* 145FE4 8019FF74 8F380000 */  lw    $t8, ($t9)
/* 145FE8 8019FF78 270DFFFF */  addiu $t5, $t8, -1
/* 145FEC 8019FF7C 2DA10009 */  sltiu $at, $t5, 9
/* 145FF0 8019FF80 102000AB */  beqz  $at, .L801A0230_ovl7
/* 145FF4 8019FF84 000D6880 */   sll   $t5, $t5, 2
/* 145FF8 8019FF88 3C01801D */  lui   $at, 0x801d
/* 145FFC 8019FF8C 002D0821 */  addu  $at, $at, $t5
/* 146000 8019FF90 8C2DDEA0 */  lw    $t5, -0x2160($at)
/* 146004 8019FF94 01A00008 */  jr    $t5
/* 146008 8019FF98 00000000 */   nop   
/* 14600C 8019FF9C 8FA40038 */  lw    $a0, 0x38($sp)
/* 146010 8019FFA0 0C068091 */  jal   func_801A0244_ovl7
/* 146014 8019FFA4 AFA30048 */   sw    $v1, 0x48($sp)
/* 146018 8019FFA8 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 14601C 8019FFAC 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 146020 8019FFB0 2407FFFF */  li    $a3, -1
/* 146024 8019FFB4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 146028 8019FFB8 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 14602C 8019FFBC 1047001B */  beq   $v0, $a3, .L801A002C_ovl7
/* 146030 8019FFC0 8FA30048 */   lw    $v1, 0x48($sp)
/* 146034 8019FFC4 8CCF0000 */  lw    $t7, ($a2)
/* 146038 8019FFC8 240E0012 */  li    $t6, 18
/* 14603C 8019FFCC 240400F4 */  li    $a0, 244
/* 146040 8019FFD0 8DF90000 */  lw    $t9, ($t7)
/* 146044 8019FFD4 0019C080 */  sll   $t8, $t9, 2
/* 146048 8019FFD8 00B86821 */  addu  $t5, $a1, $t8
/* 14604C 8019FFDC ADAE0000 */  sw    $t6, ($t5)
/* 146050 8019FFE0 0C029D9E */  jal   play_sound
/* 146054 8019FFE4 AFA30048 */   sw    $v1, 0x48($sp)
/* 146058 8019FFE8 8FA30048 */  lw    $v1, 0x48($sp)
/* 14605C 8019FFEC 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 146060 8019FFF0 240F0001 */  li    $t7, 1
/* 146064 8019FFF4 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 146068 8019FFF8 AC600094 */  sw    $zero, 0x94($v1)
/* 14606C 8019FFFC A06F0040 */  sb    $t7, 0x40($v1)
/* 146070 801A0000 8CD90000 */  lw    $t9, ($a2)
/* 146074 801A0004 3C04800E */  lui   $a0, 0x800e
/* 146078 801A0008 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 14607C 801A000C 8F380000 */  lw    $t8, ($t9)
/* 146080 801A0010 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 146084 801A0014 00187080 */  sll   $t6, $t8, 2
/* 146088 801A0018 008E2021 */  addu  $a0, $a0, $t6
/* 14608C 801A001C 0C02C7B2 */  jal   assign_new_process_entry
/* 146090 801A0020 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 146094 801A0024 10000083 */  b     .L801A0234_ovl7
/* 146098 801A0028 24020001 */   li    $v0, 1
.L801A002C_ovl7:
/* 14609C 801A002C 8CCD0000 */  lw    $t5, ($a2)
/* 1460A0 801A0030 3C04800E */  lui   $a0, 0x800e
/* 1460A4 801A0034 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 1460A8 801A0038 8DAF0000 */  lw    $t7, ($t5)
/* 1460AC 801A003C 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 1460B0 801A0040 000FC880 */  sll   $t9, $t7, 2
/* 1460B4 801A0044 00992021 */  addu  $a0, $a0, $t9
/* 1460B8 801A0048 0C02C7B2 */  jal   assign_new_process_entry
/* 1460BC 801A004C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1460C0 801A0050 10000078 */  b     .L801A0234_ovl7
/* 1460C4 801A0054 24020001 */   li    $v0, 1
/* 1460C8 801A0058 3C04800E */  lui   $a0, 0x800e
/* 1460CC 801A005C 00882021 */  addu  $a0, $a0, $t0
/* 1460D0 801A0060 0C067AF3 */  jal   func_8019EBCC_ovl7
/* 1460D4 801A0064 8C84E350 */   lw    $a0, -0x1cb0($a0)
/* 1460D8 801A0068 0C068EE9 */  jal   func_801A3BA4_ovl7
/* 1460DC 801A006C 00000000 */   nop   
/* 1460E0 801A0070 10000070 */  b     .L801A0234_ovl7
/* 1460E4 801A0074 24020001 */   li    $v0, 1
/* 1460E8 801A0078 8FB80038 */  lw    $t8, 0x38($sp)
/* 1460EC 801A007C 3C01800F */  lui   $at, 0x800f
/* 1460F0 801A0080 00280821 */  addu  $at, $at, $t0
/* 1460F4 801A0084 13070006 */  beq   $t8, $a3, .L801A00A0_ovl7
/* 1460F8 801A0088 AC208220 */   sw    $zero, -0x7de0($at)
/* 1460FC 801A008C 8D2E0000 */  lw    $t6, ($t1)
/* 146100 801A0090 3C01800E */  lui   $at, 0x800e
/* 146104 801A0094 000E6880 */  sll   $t5, $t6, 2
/* 146108 801A0098 002D0821 */  addu  $at, $at, $t5
/* 14610C 801A009C AC380D50 */  sw    $t8, 0xd50($at)
.L801A00A0_ovl7:
/* 146110 801A00A0 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 146114 801A00A4 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 146118 801A00A8 844F00B2 */  lh    $t7, 0xb2($v0)
/* 14611C 801A00AC 3C04800E */  lui   $a0, 0x800e
/* 146120 801A00B0 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 146124 801A00B4 25F90001 */  addiu $t9, $t7, 1
/* 146128 801A00B8 A45900B2 */  sh    $t9, 0xb2($v0)
/* 14612C 801A00BC 8D2E0000 */  lw    $t6, ($t1)
/* 146130 801A00C0 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 146134 801A00C4 000EC080 */  sll   $t8, $t6, 2
/* 146138 801A00C8 00982021 */  addu  $a0, $a0, $t8
/* 14613C 801A00CC 0C02C7B2 */  jal   assign_new_process_entry
/* 146140 801A00D0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 146144 801A00D4 10000057 */  b     .L801A0234_ovl7
/* 146148 801A00D8 24020001 */   li    $v0, 1
/* 14614C 801A00DC 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 146150 801A00E0 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 146154 801A00E4 904D0004 */  lbu   $t5, 4($v0)
/* 146158 801A00E8 3C01800F */  lui   $at, 0x800f
/* 14615C 801A00EC 00280821 */  addu  $at, $at, $t0
/* 146160 801A00F0 15A00015 */  bnez  $t5, .L801A0148_ovl7
/* 146164 801A00F4 240F0001 */   li    $t7, 1
/* 146168 801A00F8 8FAE0038 */  lw    $t6, 0x38($sp)
/* 14616C 801A00FC AC2F8220 */  sw    $t7, -0x7de0($at)
/* 146170 801A0100 24190002 */  li    $t9, 2
/* 146174 801A0104 11C70006 */  beq   $t6, $a3, .L801A0120_ovl7
/* 146178 801A0108 A0590004 */   sb    $t9, 4($v0)
/* 14617C 801A010C 8D380000 */  lw    $t8, ($t1)
/* 146180 801A0110 3C01800E */  lui   $at, 0x800e
/* 146184 801A0114 00186880 */  sll   $t5, $t8, 2
/* 146188 801A0118 002D0821 */  addu  $at, $at, $t5
/* 14618C 801A011C AC2E0D50 */  sw    $t6, 0xd50($at)
.L801A0120_ovl7:
/* 146190 801A0120 8D2F0000 */  lw    $t7, ($t1)
/* 146194 801A0124 3C04800E */  lui   $a0, 0x800e
/* 146198 801A0128 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 14619C 801A012C 000FC880 */  sll   $t9, $t7, 2
/* 1461A0 801A0130 00992021 */  addu  $a0, $a0, $t9
/* 1461A4 801A0134 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 1461A8 801A0138 0C02C7B2 */  jal   assign_new_process_entry
/* 1461AC 801A013C 24A57000 */   addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 1461B0 801A0140 1000003C */  b     .L801A0234_ovl7
/* 1461B4 801A0144 24020001 */   li    $v0, 1
.L801A0148_ovl7:
/* 1461B8 801A0148 1000003A */  b     .L801A0234_ovl7
/* 1461BC 801A014C 00001025 */   move  $v0, $zero
/* 1461C0 801A0150 8078003A */  lb    $t8, 0x3a($v1)
/* 1461C4 801A0154 3C0D800E */  lui   $t5, 0x800e
/* 1461C8 801A0158 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosXArray) # $t2, 0x800e
/* 1461CC 801A015C 00187080 */  sll   $t6, $t8, 2
/* 1461D0 801A0160 01AE6821 */  addu  $t5, $t5, $t6
/* 1461D4 801A0164 8DADE350 */  lw    $t5, -0x1cb0($t5)
/* 1461D8 801A0168 254A25D0 */  addiu $t2, %lo(gEntitiesNextPosXArray) # addiu $t2, $t2, 0x25d0
/* 1461DC 801A016C 3C01801D */  lui   $at, %hi(D_801CDEC4) # $at, 0x801d
/* 1461E0 801A0170 11A0002D */  beqz  $t5, .L801A0228_ovl7
/* 1461E4 801A0174 240F0014 */   li    $t7, 20
/* 1461E8 801A0178 C420DEC4 */  lwc1  $f0, %lo(D_801CDEC4)($at)
/* 1461EC 801A017C 3C01800E */  lui   $at, 0x800e
/* 1461F0 801A0180 00280821 */  addu  $at, $at, $t0
/* 1461F4 801A0184 AC2F7CE0 */  sw    $t7, 0x7ce0($at)
/* 1461F8 801A0188 8D280000 */  lw    $t0, ($t1)
/* 1461FC 801A018C 8062003A */  lb    $v0, 0x3a($v1)
/* 146200 801A0190 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosYArray) # $t3, 0x800e
/* 146204 801A0194 00084080 */  sll   $t0, $t0, 2
/* 146208 801A0198 00021080 */  sll   $v0, $v0, 2
/* 14620C 801A019C 0142C821 */  addu  $t9, $t2, $v0
/* 146210 801A01A0 0148C021 */  addu  $t8, $t2, $t0
/* 146214 801A01A4 C7060000 */  lwc1  $f6, ($t8)
/* 146218 801A01A8 C7240000 */  lwc1  $f4, ($t9)
/* 14621C 801A01AC 256B2790 */  addiu $t3, %lo(gEntitiesNextPosYArray) # addiu $t3, $t3, 0x2790
/* 146220 801A01B0 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosZArray) # $t4, 0x800e
/* 146224 801A01B4 46062201 */  sub.s $f8, $f4, $f6
/* 146228 801A01B8 01627021 */  addu  $t6, $t3, $v0
/* 14622C 801A01BC 01686821 */  addu  $t5, $t3, $t0
/* 146230 801A01C0 C5B20000 */  lwc1  $f18, ($t5)
/* 146234 801A01C4 46004282 */  mul.s $f10, $f8, $f0
/* 146238 801A01C8 C5D00000 */  lwc1  $f16, ($t6)
/* 14623C 801A01CC 258C2950 */  addiu $t4, %lo(gEntitiesNextPosZArray) # addiu $t4, $t4, 0x2950
/* 146240 801A01D0 01827821 */  addu  $t7, $t4, $v0
/* 146244 801A01D4 0188C821 */  addu  $t9, $t4, $t0
/* 146248 801A01D8 46128101 */  sub.s $f4, $f16, $f18
/* 14624C 801A01DC C5E80000 */  lwc1  $f8, ($t7)
/* 146250 801A01E0 44065000 */  mfc1  $a2, $f10
/* 146254 801A01E4 C72A0000 */  lwc1  $f10, ($t9)
/* 146258 801A01E8 46002182 */  mul.s $f6, $f4, $f0
/* 14625C 801A01EC AFA30048 */  sw    $v1, 0x48($sp)
/* 146260 801A01F0 460A4401 */  sub.s $f16, $f8, $f10
/* 146264 801A01F4 00002025 */  move  $a0, $zero
/* 146268 801A01F8 24050009 */  li    $a1, 9
/* 14626C 801A01FC 46008482 */  mul.s $f18, $f16, $f0
/* 146270 801A0200 44073000 */  mfc1  $a3, $f6
/* 146274 801A0204 0C03F55C */  jal   func_800FD570
/* 146278 801A0208 E7B20010 */   swc1  $f18, 0x10($sp)
/* 14627C 801A020C 8FA30048 */  lw    $v1, 0x48($sp)
/* 146280 801A0210 3C01800F */  lui   $at, 0x800f
/* 146284 801A0214 24180001 */  li    $t8, 1
/* 146288 801A0218 806E003A */  lb    $t6, 0x3a($v1)
/* 14628C 801A021C 000E6880 */  sll   $t5, $t6, 2
/* 146290 801A0220 002D0821 */  addu  $at, $at, $t5
/* 146294 801A0224 AC388760 */  sw    $t8, -0x78a0($at)
.L801A0228_ovl7:
/* 146298 801A0228 10000002 */  b     .L801A0234_ovl7
/* 14629C 801A022C 00001025 */   move  $v0, $zero
.L801A0230_ovl7:
/* 1462A0 801A0230 00001025 */  move  $v0, $zero
.L801A0234_ovl7:
/* 1462A4 801A0234 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1462A8 801A0238 27BD0050 */  addiu $sp, $sp, 0x50
/* 1462AC 801A023C 03E00008 */  jr    $ra
/* 1462B0 801A0240 00000000 */   nop   

.type func_8019FDE8_ovl7, @function
.size func_8019FDE8_ovl7, . - func_8019FDE8_ovl7

glabel func_801A0244_ovl7
/* 1462B4 801A0244 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1462B8 801A0248 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1462BC 801A024C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1462C0 801A0250 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1462C4 801A0254 8DCF0000 */  lw    $t7, ($t6)
/* 1462C8 801A0258 3C0A800E */  lui   $t2, 0x800e
/* 1462CC 801A025C 01445021 */  addu  $t2, $t2, $a0
/* 1462D0 801A0260 914A7730 */  lbu   $t2, 0x7730($t2)
/* 1462D4 801A0264 3C09800E */  lui   $t1, %hi(D_800E1B50) # $t1, 0x800e
/* 1462D8 801A0268 25291B50 */  addiu $t1, %lo(D_800E1B50) # addiu $t1, $t1, 0x1b50
/* 1462DC 801A026C 000FC080 */  sll   $t8, $t7, 2
/* 1462E0 801A0270 0138C821 */  addu  $t9, $t1, $t8
/* 1462E4 801A0274 24010006 */  li    $at, 6
/* 1462E8 801A0278 8F230000 */  lw    $v1, ($t9)
/* 1462EC 801A027C 00003025 */  move  $a2, $zero
/* 1462F0 801A0280 1541000C */  bne   $t2, $at, .L801A02B4_ovl7
/* 1462F4 801A0284 00003825 */   move  $a3, $zero
/* 1462F8 801A0288 00045840 */  sll   $t3, $a0, 1
/* 1462FC 801A028C 3C02800E */  lui   $v0, 0x800e
/* 146300 801A0290 004B1021 */  addu  $v0, $v0, $t3
/* 146304 801A0294 944277A0 */  lhu   $v0, 0x77a0($v0)
/* 146308 801A0298 28410008 */  slti  $at, $v0, 8
/* 14630C 801A029C 14200005 */  bnez  $at, .L801A02B4_ovl7
/* 146310 801A02A0 28410024 */   slti  $at, $v0, 0x24
/* 146314 801A02A4 10200003 */  beqz  $at, .L801A02B4_ovl7
/* 146318 801A02A8 00000000 */   nop   
/* 14631C 801A02AC 1000003D */  b     .L801A03A4_ovl7
/* 146320 801A02B0 2402FFFF */   li    $v0, -1
.L801A02B4_ovl7:
/* 146324 801A02B4 3C0C800E */  lui   $t4, %hi(D_800E0D50) # $t4, 0x800e
/* 146328 801A02B8 258C0D50 */  addiu $t4, %lo(D_800E0D50) # addiu $t4, $t4, 0xd50
/* 14632C 801A02BC 00044080 */  sll   $t0, $a0, 2
/* 146330 801A02C0 010C2821 */  addu  $a1, $t0, $t4
/* 146334 801A02C4 8CAD0000 */  lw    $t5, ($a1)
/* 146338 801A02C8 51A00004 */  beql  $t5, $zero, .L801A02DC_ovl7
/* 14633C 801A02CC 8C620088 */   lw    $v0, 0x88($v1)
/* 146340 801A02D0 10000034 */  b     .L801A03A4_ovl7
/* 146344 801A02D4 2402FFFF */   li    $v0, -1
/* 146348 801A02D8 8C620088 */  lw    $v0, 0x88($v1)
.L801A02DC_ovl7:
/* 14634C 801A02DC 3C0F800E */  lui   $t7, %hi(D_800E0D88) # $t7, 0x800e
/* 146350 801A02E0 25EF0D88 */  addiu $t7, %lo(D_800E0D88) # addiu $t7, $t7, 0xd88
/* 146354 801A02E4 10400009 */  beqz  $v0, .L801A030C_ovl7
/* 146358 801A02E8 00AF082B */   sltu  $at, $a1, $t7
/* 14635C 801A02EC 8C43000C */  lw    $v1, 0xc($v0)
/* 146360 801A02F0 10600006 */  beqz  $v1, .L801A030C_ovl7
/* 146364 801A02F4 00000000 */   nop   
/* 146368 801A02F8 8C620000 */  lw    $v0, ($v1)
/* 14636C 801A02FC 10400003 */  beqz  $v0, .L801A030C_ovl7
/* 146370 801A0300 00000000 */   nop   
/* 146374 801A0304 8C4E001C */  lw    $t6, 0x1c($v0)
/* 146378 801A0308 8DC70004 */  lw    $a3, 4($t6)
.L801A030C_ovl7:
/* 14637C 801A030C 50E00025 */  beql  $a3, $zero, .L801A03A4_ovl7
/* 146380 801A0310 2402FFFF */   li    $v0, -1
/* 146384 801A0314 14200022 */  bnez  $at, .L801A03A0_ovl7
/* 146388 801A0318 3C18800E */   lui   $t8, %hi(D_800E0E40) # $t8, 0x800e
/* 14638C 801A031C 27180E40 */  addiu $t8, %lo(D_800E0E40) # addiu $t8, $t8, 0xe40
/* 146390 801A0320 00B8082B */  sltu  $at, $a1, $t8
/* 146394 801A0324 1020001E */  beqz  $at, .L801A03A0_ovl7
/* 146398 801A0328 0128C821 */   addu  $t9, $t1, $t0
/* 14639C 801A032C 8F220000 */  lw    $v0, ($t9)
/* 1463A0 801A0330 00E02025 */  move  $a0, $a3
/* 1463A4 801A0334 1040000C */  beqz  $v0, .L801A0368_ovl7
/* 1463A8 801A0338 00000000 */   nop   
/* 1463AC 801A033C 8C430088 */  lw    $v1, 0x88($v0)
/* 1463B0 801A0340 10600009 */  beqz  $v1, .L801A0368_ovl7
/* 1463B4 801A0344 00000000 */   nop   
/* 1463B8 801A0348 8C62000C */  lw    $v0, 0xc($v1)
/* 1463BC 801A034C 10400006 */  beqz  $v0, .L801A0368_ovl7
/* 1463C0 801A0350 00000000 */   nop   
/* 1463C4 801A0354 8C430000 */  lw    $v1, ($v0)
/* 1463C8 801A0358 10600003 */  beqz  $v1, .L801A0368_ovl7
/* 1463CC 801A035C 00000000 */   nop   
/* 1463D0 801A0360 8C6A001C */  lw    $t2, 0x1c($v1)
/* 1463D4 801A0364 8D460004 */  lw    $a2, 4($t2)
.L801A0368_ovl7:
/* 1463D8 801A0368 10C0000D */  beqz  $a2, .L801A03A0_ovl7
/* 1463DC 801A036C 00C02825 */   move  $a1, $a2
/* 1463E0 801A0370 0C04787A */  jal   func_8011E1E8
/* 1463E4 801A0374 AFA8001C */   sw    $t0, 0x1c($sp)
/* 1463E8 801A0378 00402025 */  move  $a0, $v0
/* 1463EC 801A037C 0C06F09F */  jal   func_801BC27C_ovl7
/* 1463F0 801A0380 24050001 */   li    $a1, 1
/* 1463F4 801A0384 10400006 */  beqz  $v0, .L801A03A0_ovl7
/* 1463F8 801A0388 8FA8001C */   lw    $t0, 0x1c($sp)
/* 1463FC 801A038C 3C01800F */  lui   $at, 0x800f
/* 146400 801A0390 00280821 */  addu  $at, $at, $t0
/* 146404 801A0394 240B0012 */  li    $t3, 18
/* 146408 801A0398 10000002 */  b     .L801A03A4_ovl7
/* 14640C 801A039C AC2B83E0 */   sw    $t3, -0x7c20($at)
.L801A03A0_ovl7:
/* 146410 801A03A0 2402FFFF */  li    $v0, -1
.L801A03A4_ovl7:
/* 146414 801A03A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 146418 801A03A8 27BD0038 */  addiu $sp, $sp, 0x38
/* 14641C 801A03AC 03E00008 */  jr    $ra
/* 146420 801A03B0 00000000 */   nop   

.type func_801A0244_ovl7, @function
.size func_801A0244_ovl7, . - func_801A0244_ovl7

glabel func_801A03B4_ovl7
/* 146424 801A03B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 146428 801A03B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14642C 801A03BC 0C068119 */  jal   func_801A0464_ovl7
/* 146430 801A03C0 00000000 */   nop   
/* 146434 801A03C4 0C0447B3 */  jal   func_80111ECC
/* 146438 801A03C8 00402025 */   move  $a0, $v0
/* 14643C 801A03CC 0C06812E */  jal   func_801A04B8_ovl7
/* 146440 801A03D0 00000000 */   nop   
/* 146444 801A03D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 146448 801A03D8 27BD0018 */  addiu $sp, $sp, 0x18
/* 14644C 801A03DC 03E00008 */  jr    $ra
/* 146450 801A03E0 00000000 */   nop   

.type func_801A03B4_ovl7, @function
.size func_801A03B4_ovl7, . - func_801A03B4_ovl7

glabel func_801A03E4_ovl7
/* 146454 801A03E4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 146458 801A03E8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14645C 801A03EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 146460 801A03F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 146464 801A03F4 AFA40020 */  sw    $a0, 0x20($sp)
/* 146468 801A03F8 8DCF0000 */  lw    $t7, ($t6)
/* 14646C 801A03FC 3C19800E */  lui   $t9, 0x800e
/* 146470 801A0400 000FC080 */  sll   $t8, $t7, 2
/* 146474 801A0404 0338C821 */  addu  $t9, $t9, $t8
/* 146478 801A0408 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 14647C 801A040C 0C068119 */  jal   func_801A0464_ovl7
/* 146480 801A0410 AFB9001C */   sw    $t9, 0x1c($sp)
/* 146484 801A0414 8FA8001C */  lw    $t0, 0x1c($sp)
/* 146488 801A0418 8FA50020 */  lw    $a1, 0x20($sp)
/* 14648C 801A041C 00402025 */  move  $a0, $v0
/* 146490 801A0420 8D09008C */  lw    $t1, 0x8c($t0)
/* 146494 801A0424 8D230008 */  lw    $v1, 8($t1)
/* 146498 801A0428 8C6A0004 */  lw    $t2, 4($v1)
/* 14649C 801A042C 15400005 */  bnez  $t2, .L801A0444_ovl7
/* 1464A0 801A0430 00000000 */   nop   
/* 1464A4 801A0434 10A00003 */  beqz  $a1, .L801A0444_ovl7
/* 1464A8 801A0438 00000000 */   nop   
/* 1464AC 801A043C 8C4B0024 */  lw    $t3, 0x24($v0)
/* 1464B0 801A0440 AD650008 */  sw    $a1, 8($t3)
.L801A0444_ovl7:
/* 1464B4 801A0444 0C0447B3 */  jal   func_80111ECC
/* 1464B8 801A0448 00000000 */   nop   
/* 1464BC 801A044C 0C06812E */  jal   func_801A04B8_ovl7
/* 1464C0 801A0450 00000000 */   nop   
/* 1464C4 801A0454 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1464C8 801A0458 27BD0020 */  addiu $sp, $sp, 0x20
/* 1464CC 801A045C 03E00008 */  jr    $ra
/* 1464D0 801A0460 00000000 */   nop   

.type func_801A03E4_ovl7, @function
.size func_801A03E4_ovl7, . - func_801A03E4_ovl7

glabel func_801A0464_ovl7
/* 1464D4 801A0464 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1464D8 801A0468 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1464DC 801A046C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1464E0 801A0470 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1464E4 801A0474 8DC40000 */  lw    $a0, ($t6)
/* 1464E8 801A0478 3C18800E */  lui   $t8, 0x800e
/* 1464EC 801A047C 00047880 */  sll   $t7, $a0, 2
/* 1464F0 801A0480 030FC021 */  addu  $t8, $t8, $t7
/* 1464F4 801A0484 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 1464F8 801A0488 0C044554 */  jal   func_80111550
/* 1464FC 801A048C AFB8001C */   sw    $t8, 0x1c($sp)
/* 146500 801A0490 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 146504 801A0494 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 146508 801A0498 8FB9001C */  lw    $t9, 0x1c($sp)
/* 14650C 801A049C 8D050000 */  lw    $a1, ($t0)
/* 146510 801A04A0 0C044722 */  jal   func_80111C88
/* 146514 801A04A4 8F24008C */   lw    $a0, 0x8c($t9)
/* 146518 801A04A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 14651C 801A04AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 146520 801A04B0 03E00008 */  jr    $ra
/* 146524 801A04B4 00000000 */   nop   

.type func_801A0464_ovl7, @function
.size func_801A0464_ovl7, . - func_801A0464_ovl7

glabel func_801A04B8_ovl7
/* 146528 801A04B8 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 14652C 801A04BC 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 146530 801A04C0 8CAE0000 */  lw    $t6, ($a1)
/* 146534 801A04C4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 146538 801A04C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 14653C 801A04CC 8DC60000 */  lw    $a2, ($t6)
/* 146540 801A04D0 3C03800E */  lui   $v1, 0x800e
/* 146544 801A04D4 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 146548 801A04D8 00063080 */  sll   $a2, $a2, 2
/* 14654C 801A04DC 00661821 */  addu  $v1, $v1, $a2
/* 146550 801A04E0 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 146554 801A04E4 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 146558 801A04E8 00E6C021 */  addu  $t8, $a3, $a2
/* 14655C 801A04EC 8C6F008C */  lw    $t7, 0x8c($v1)
/* 146560 801A04F0 55E00004 */  bnezl $t7, .L801A0504_ovl7
/* 146564 801A04F4 8F020000 */   lw    $v0, ($t8)
/* 146568 801A04F8 100000AE */  b     .L801A07B4_ovl7
/* 14656C 801A04FC 00001025 */   move  $v0, $zero
/* 146570 801A0500 8F020000 */  lw    $v0, ($t8)
.L801A0504_ovl7:
/* 146574 801A0504 1040000F */  beqz  $v0, .L801A0544_ovl7
/* 146578 801A0508 00022080 */   sll   $a0, $v0, 2
/* 14657C 801A050C 00E4C821 */  addu  $t9, $a3, $a0
/* 146580 801A0510 8F280000 */  lw    $t0, ($t9)
/* 146584 801A0514 3C09800F */  lui   $t1, 0x800f
/* 146588 801A0518 01244821 */  addu  $t1, $t1, $a0
/* 14658C 801A051C 15000009 */  bnez  $t0, .L801A0544_ovl7
/* 146590 801A0520 00000000 */   nop   
/* 146594 801A0524 8D298220 */  lw    $t1, -0x7de0($t1)
/* 146598 801A0528 24010001 */  li    $at, 1
/* 14659C 801A052C 15210005 */  bne   $t1, $at, .L801A0544_ovl7
/* 1465A0 801A0530 00000000 */   nop   
/* 1465A4 801A0534 0C0681F1 */  jal   func_801A07C4_ovl7
/* 1465A8 801A0538 00000000 */   nop   
/* 1465AC 801A053C 1000009E */  b     .L801A07B8_ovl7
/* 1465B0 801A0540 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A0544_ovl7:
/* 1465B4 801A0544 14400005 */  bnez  $v0, .L801A055C_ovl7
/* 1465B8 801A0548 27A40024 */   addiu $a0, $sp, 0x24
/* 1465BC 801A054C 0C0681F1 */  jal   func_801A07C4_ovl7
/* 1465C0 801A0550 00000000 */   nop   
/* 1465C4 801A0554 10000098 */  b     .L801A07B8_ovl7
/* 1465C8 801A0558 8FBF0014 */   lw    $ra, 0x14($sp)
.L801A055C_ovl7:
/* 1465CC 801A055C 0C0442C0 */  jal   func_80110B00
/* 1465D0 801A0560 AFA30040 */   sw    $v1, 0x40($sp)
/* 1465D4 801A0564 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1465D8 801A0568 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1465DC 801A056C 1040000F */  beqz  $v0, .L801A05AC_ovl7
/* 1465E0 801A0570 8FA30040 */   lw    $v1, 0x40($sp)
/* 1465E4 801A0574 8CAB0000 */  lw    $t3, ($a1)
/* 1465E8 801A0578 93AA0026 */  lbu   $t2, 0x26($sp)
/* 1465EC 801A057C 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1465F0 801A0580 8D6C0000 */  lw    $t4, ($t3)
/* 1465F4 801A0584 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1465F8 801A0588 2407FFFF */  li    $a3, -1
/* 1465FC 801A058C 000C6880 */  sll   $t5, $t4, 2
/* 146600 801A0590 008D7021 */  addu  $t6, $a0, $t5
/* 146604 801A0594 ADCA0000 */  sw    $t2, ($t6)
/* 146608 801A0598 93AF0027 */  lbu   $t7, 0x27($sp)
/* 14660C 801A059C A06F0043 */  sb    $t7, 0x43($v1)
/* 146610 801A05A0 8FB80030 */  lw    $t8, 0x30($sp)
/* 146614 801A05A4 10000035 */  b     .L801A067C_ovl7
/* 146618 801A05A8 A078003A */   sb    $t8, 0x3a($v1)
.L801A05AC_ovl7:
/* 14661C 801A05AC 27A40024 */  addiu $a0, $sp, 0x24
/* 146620 801A05B0 0C0443F5 */  jal   func_80110FD4
/* 146624 801A05B4 AFA30040 */   sw    $v1, 0x40($sp)
/* 146628 801A05B8 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 14662C 801A05BC 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 146630 801A05C0 1040000F */  beqz  $v0, .L801A0600_ovl7
/* 146634 801A05C4 8FA30040 */   lw    $v1, 0x40($sp)
/* 146638 801A05C8 8CA80000 */  lw    $t0, ($a1)
/* 14663C 801A05CC 93B90026 */  lbu   $t9, 0x26($sp)
/* 146640 801A05D0 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 146644 801A05D4 8D090000 */  lw    $t1, ($t0)
/* 146648 801A05D8 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 14664C 801A05DC 2407FFFF */  li    $a3, -1
/* 146650 801A05E0 00095880 */  sll   $t3, $t1, 2
/* 146654 801A05E4 008B6021 */  addu  $t4, $a0, $t3
/* 146658 801A05E8 AD990000 */  sw    $t9, ($t4)
/* 14665C 801A05EC 93AD0027 */  lbu   $t5, 0x27($sp)
/* 146660 801A05F0 A06D0043 */  sb    $t5, 0x43($v1)
/* 146664 801A05F4 8FAA0030 */  lw    $t2, 0x30($sp)
/* 146668 801A05F8 10000020 */  b     .L801A067C_ovl7
/* 14666C 801A05FC A06A003A */   sb    $t2, 0x3a($v1)
.L801A0600_ovl7:
/* 146670 801A0600 27A40024 */  addiu $a0, $sp, 0x24
/* 146674 801A0604 0C044054 */  jal   func_80110150
/* 146678 801A0608 AFA30040 */   sw    $v1, 0x40($sp)
/* 14667C 801A060C 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 146680 801A0610 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 146684 801A0614 1040000F */  beqz  $v0, .L801A0654_ovl7
/* 146688 801A0618 8FA30040 */   lw    $v1, 0x40($sp)
/* 14668C 801A061C 8CAF0000 */  lw    $t7, ($a1)
/* 146690 801A0620 93AE0026 */  lbu   $t6, 0x26($sp)
/* 146694 801A0624 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 146698 801A0628 8DF80000 */  lw    $t8, ($t7)
/* 14669C 801A062C 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1466A0 801A0630 2407FFFF */  li    $a3, -1
/* 1466A4 801A0634 00184080 */  sll   $t0, $t8, 2
/* 1466A8 801A0638 00884821 */  addu  $t1, $a0, $t0
/* 1466AC 801A063C AD2E0000 */  sw    $t6, ($t1)
/* 1466B0 801A0640 93AB0027 */  lbu   $t3, 0x27($sp)
/* 1466B4 801A0644 A06B0043 */  sb    $t3, 0x43($v1)
/* 1466B8 801A0648 8FB90030 */  lw    $t9, 0x30($sp)
/* 1466BC 801A064C 1000000B */  b     .L801A067C_ovl7
/* 1466C0 801A0650 A079003A */   sb    $t9, 0x3a($v1)
.L801A0654_ovl7:
/* 1466C4 801A0654 8CAC0000 */  lw    $t4, ($a1)
/* 1466C8 801A0658 3C04800F */  lui   $a0, %hi(D_800E83E0) # $a0, 0x800f
/* 1466CC 801A065C 248483E0 */  addiu $a0, %lo(D_800E83E0) # addiu $a0, $a0, -0x7c20
/* 1466D0 801A0660 8D8D0000 */  lw    $t5, ($t4)
/* 1466D4 801A0664 2407FFFF */  li    $a3, -1
/* 1466D8 801A0668 000D5080 */  sll   $t2, $t5, 2
/* 1466DC 801A066C 008A7821 */  addu  $t7, $a0, $t2
/* 1466E0 801A0670 ADE00000 */  sw    $zero, ($t7)
/* 1466E4 801A0674 A0600043 */  sb    $zero, 0x43($v1)
/* 1466E8 801A0678 A067003A */  sb    $a3, 0x3a($v1)
.L801A067C_ovl7:
/* 1466EC 801A067C 8CA30000 */  lw    $v1, ($a1)
/* 1466F0 801A0680 24010001 */  li    $at, 1
/* 1466F4 801A0684 8C660000 */  lw    $a2, ($v1)
/* 1466F8 801A0688 00063080 */  sll   $a2, $a2, 2
/* 1466FC 801A068C 0086C021 */  addu  $t8, $a0, $a2
/* 146700 801A0690 8F020000 */  lw    $v0, ($t8)
/* 146704 801A0694 10410009 */  beq   $v0, $at, .L801A06BC_ovl7
/* 146708 801A0698 24010002 */   li    $at, 2
/* 14670C 801A069C 10410007 */  beq   $v0, $at, .L801A06BC_ovl7
/* 146710 801A06A0 24010003 */   li    $at, 3
/* 146714 801A06A4 1041000D */  beq   $v0, $at, .L801A06DC_ovl7
/* 146718 801A06A8 24010004 */   li    $at, 4
/* 14671C 801A06AC 10410024 */  beq   $v0, $at, .L801A0740_ovl7
/* 146720 801A06B0 00000000 */   nop   
/* 146724 801A06B4 1000003F */  b     .L801A07B4_ovl7
/* 146728 801A06B8 00001025 */   move  $v0, $zero
.L801A06BC_ovl7:
/* 14672C 801A06BC 3C04800E */  lui   $a0, 0x800e
/* 146730 801A06C0 00862021 */  addu  $a0, $a0, $a2
/* 146734 801A06C4 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 146738 801A06C8 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 14673C 801A06CC 0C02C7B2 */  jal   assign_new_process_entry
/* 146740 801A06D0 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 146744 801A06D4 10000037 */  b     .L801A07B4_ovl7
/* 146748 801A06D8 24020001 */   li    $v0, 1
.L801A06DC_ovl7:
/* 14674C 801A06DC 8FA80030 */  lw    $t0, 0x30($sp)
/* 146750 801A06E0 3C01800F */  lui   $at, 0x800f
/* 146754 801A06E4 00260821 */  addu  $at, $at, $a2
/* 146758 801A06E8 11070006 */  beq   $t0, $a3, .L801A0704_ovl7
/* 14675C 801A06EC AC208220 */   sw    $zero, -0x7de0($at)
/* 146760 801A06F0 8C6E0000 */  lw    $t6, ($v1)
/* 146764 801A06F4 3C01800E */  lui   $at, 0x800e
/* 146768 801A06F8 000E4880 */  sll   $t1, $t6, 2
/* 14676C 801A06FC 00290821 */  addu  $at, $at, $t1
/* 146770 801A0700 AC280D50 */  sw    $t0, 0xd50($at)
.L801A0704_ovl7:
/* 146774 801A0704 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 146778 801A0708 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 14677C 801A070C 844B00B2 */  lh    $t3, 0xb2($v0)
/* 146780 801A0710 3C04800E */  lui   $a0, 0x800e
/* 146784 801A0714 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 146788 801A0718 25790001 */  addiu $t9, $t3, 1
/* 14678C 801A071C A45900B2 */  sh    $t9, 0xb2($v0)
/* 146790 801A0720 8C6C0000 */  lw    $t4, ($v1)
/* 146794 801A0724 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 146798 801A0728 000C6880 */  sll   $t5, $t4, 2
/* 14679C 801A072C 008D2021 */  addu  $a0, $a0, $t5
/* 1467A0 801A0730 0C02C7B2 */  jal   assign_new_process_entry
/* 1467A4 801A0734 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 1467A8 801A0738 1000001E */  b     .L801A07B4_ovl7
/* 1467AC 801A073C 24020001 */   li    $v0, 1
.L801A0740_ovl7:
/* 1467B0 801A0740 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 1467B4 801A0744 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 1467B8 801A0748 904A0004 */  lbu   $t2, 4($v0)
/* 1467BC 801A074C 3C01800F */  lui   $at, 0x800f
/* 1467C0 801A0750 00260821 */  addu  $at, $at, $a2
/* 1467C4 801A0754 15400015 */  bnez  $t2, .L801A07AC_ovl7
/* 1467C8 801A0758 240F0001 */   li    $t7, 1
/* 1467CC 801A075C 8FAE0030 */  lw    $t6, 0x30($sp)
/* 1467D0 801A0760 AC2F8220 */  sw    $t7, -0x7de0($at)
/* 1467D4 801A0764 24180002 */  li    $t8, 2
/* 1467D8 801A0768 11C70006 */  beq   $t6, $a3, .L801A0784_ovl7
/* 1467DC 801A076C A0580004 */   sb    $t8, 4($v0)
/* 1467E0 801A0770 8C680000 */  lw    $t0, ($v1)
/* 1467E4 801A0774 3C01800E */  lui   $at, 0x800e
/* 1467E8 801A0778 00084880 */  sll   $t1, $t0, 2
/* 1467EC 801A077C 00290821 */  addu  $at, $at, $t1
/* 1467F0 801A0780 AC2E0D50 */  sw    $t6, 0xd50($at)
.L801A0784_ovl7:
/* 1467F4 801A0784 8C6B0000 */  lw    $t3, ($v1)
/* 1467F8 801A0788 3C04800E */  lui   $a0, 0x800e
/* 1467FC 801A078C 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 146800 801A0790 000BC880 */  sll   $t9, $t3, 2
/* 146804 801A0794 00992021 */  addu  $a0, $a0, $t9
/* 146808 801A0798 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 14680C 801A079C 0C02C7B2 */  jal   assign_new_process_entry
/* 146810 801A07A0 24A57000 */   addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 146814 801A07A4 10000003 */  b     .L801A07B4_ovl7
/* 146818 801A07A8 24020001 */   li    $v0, 1
.L801A07AC_ovl7:
/* 14681C 801A07AC 10000001 */  b     .L801A07B4_ovl7
/* 146820 801A07B0 00001025 */   move  $v0, $zero
.L801A07B4_ovl7:
/* 146824 801A07B4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801A07B8_ovl7:
/* 146828 801A07B8 27BD0048 */  addiu $sp, $sp, 0x48
/* 14682C 801A07BC 03E00008 */  jr    $ra
/* 146830 801A07C0 00000000 */   nop   

.type func_801A04B8_ovl7, @function
.size func_801A04B8_ovl7, . - func_801A04B8_ovl7

glabel func_801A07C4_ovl7
/* 146834 801A07C4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 146838 801A07C8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 14683C 801A07CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 146840 801A07D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 146844 801A07D4 8DC30000 */  lw    $v1, ($t6)
/* 146848 801A07D8 3C02800E */  lui   $v0, 0x800e
/* 14684C 801A07DC 3C0F800F */  lui   $t7, 0x800f
/* 146850 801A07E0 00033080 */  sll   $a2, $v1, 2
/* 146854 801A07E4 00461021 */  addu  $v0, $v0, $a2
/* 146858 801A07E8 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 14685C 801A07EC 01E67821 */  addu  $t7, $t7, $a2
/* 146860 801A07F0 8C440090 */  lw    $a0, 0x90($v0)
/* 146864 801A07F4 14800003 */  bnez  $a0, .L801A0804_ovl7
/* 146868 801A07F8 00000000 */   nop   
/* 14686C 801A07FC 1000001C */  b     .L801A0870_ovl7
/* 146870 801A0800 00001025 */   move  $v0, $zero
.L801A0804_ovl7:
/* 146874 801A0804 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 146878 801A0808 3C18800E */  lui   $t8, 0x800e
/* 14687C 801A080C 0303C021 */  addu  $t8, $t8, $v1
/* 146880 801A0810 51E0000D */  beql  $t7, $zero, .L801A0848_ovl7
/* 146884 801A0814 9045003D */   lbu   $a1, 0x3d($v0)
/* 146888 801A0818 93187730 */  lbu   $t8, 0x7730($t8)
/* 14688C 801A081C 24010004 */  li    $at, 4
/* 146890 801A0820 3C04800E */  lui   $a0, 0x800e
/* 146894 801A0824 17010005 */  bne   $t8, $at, .L801A083C_ovl7
/* 146898 801A0828 00862021 */   addu  $a0, $a0, $a2
/* 14689C 801A082C 3C05801B */  lui   $a1, %hi(D_801ACF84) # $a1, 0x801b
/* 1468A0 801A0830 24A5CF84 */  addiu $a1, %lo(D_801ACF84) # addiu $a1, $a1, -0x307c
/* 1468A4 801A0834 0C02C7B2 */  jal   assign_new_process_entry
/* 1468A8 801A0838 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801A083C_ovl7:
/* 1468AC 801A083C 1000000C */  b     .L801A0870_ovl7
/* 1468B0 801A0840 24020001 */   li    $v0, 1
/* 1468B4 801A0844 9045003D */  lbu   $a1, 0x3d($v0)
.L801A0848_ovl7:
/* 1468B8 801A0848 14A00007 */  bnez  $a1, .L801A0868_ovl7
/* 1468BC 801A084C 24B9FFFF */   addiu $t9, $a1, -1
/* 1468C0 801A0850 0C0445EF */  jal   func_801117BC
/* 1468C4 801A0854 00602825 */   move  $a1, $v1
/* 1468C8 801A0858 0C044713 */  jal   func_80111C4C
/* 1468CC 801A085C 00402025 */   move  $a0, $v0
/* 1468D0 801A0860 10000003 */  b     .L801A0870_ovl7
/* 1468D4 801A0864 00001025 */   move  $v0, $zero
.L801A0868_ovl7:
/* 1468D8 801A0868 A059003D */  sb    $t9, 0x3d($v0)
/* 1468DC 801A086C 00001025 */  move  $v0, $zero
.L801A0870_ovl7:
/* 1468E0 801A0870 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1468E4 801A0874 27BD0018 */  addiu $sp, $sp, 0x18
/* 1468E8 801A0878 03E00008 */  jr    $ra
/* 1468EC 801A087C 00000000 */   nop   

.type func_801A07C4_ovl7, @function
.size func_801A07C4_ovl7, . - func_801A07C4_ovl7

glabel func_801A0880_ovl7
/* 1468F0 801A0880 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1468F4 801A0884 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1468F8 801A0888 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1468FC 801A088C AFBF0014 */  sw    $ra, 0x14($sp)
/* 146900 801A0890 8DC20000 */  lw    $v0, ($t6)
/* 146904 801A0894 3C03800E */  lui   $v1, 0x800e
/* 146908 801A0898 00027880 */  sll   $t7, $v0, 2
/* 14690C 801A089C 006F1821 */  addu  $v1, $v1, $t7
/* 146910 801A08A0 8C631B50 */  lw    $v1, 0x1b50($v1)
/* 146914 801A08A4 00402025 */  move  $a0, $v0
/* 146918 801A08A8 8C78008C */  lw    $t8, 0x8c($v1)
/* 14691C 801A08AC 17000003 */  bnez  $t8, .L801A08BC_ovl7
/* 146920 801A08B0 00000000 */   nop   
/* 146924 801A08B4 10000092 */  b     .L801A0B00_ovl7
/* 146928 801A08B8 00001025 */   move  $v0, $zero
.L801A08BC_ovl7:
/* 14692C 801A08BC 0C044554 */  jal   func_80111550
/* 146930 801A08C0 AFA30048 */   sw    $v1, 0x48($sp)
/* 146934 801A08C4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 146938 801A08C8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 14693C 801A08CC 8FB90048 */  lw    $t9, 0x48($sp)
/* 146940 801A08D0 8D050000 */  lw    $a1, ($t0)
/* 146944 801A08D4 0C044722 */  jal   func_80111C88
/* 146948 801A08D8 8F24008C */   lw    $a0, 0x8c($t9)
/* 14694C 801A08DC 0C0447B3 */  jal   func_80111ECC
/* 146950 801A08E0 00402025 */   move  $a0, $v0
/* 146954 801A08E4 0C044054 */  jal   func_80110150
/* 146958 801A08E8 27A40028 */   addiu $a0, $sp, 0x28
/* 14695C 801A08EC 1040000C */  beqz  $v0, .L801A0920_ovl7
/* 146960 801A08F0 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 146964 801A08F4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 146968 801A08F8 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 14696C 801A08FC 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 146970 801A0900 8D4B0000 */  lw    $t3, ($t2)
/* 146974 801A0904 24090001 */  li    $t1, 1
/* 146978 801A0908 000B6080 */  sll   $t4, $t3, 2
/* 14697C 801A090C 00AC6821 */  addu  $t5, $a1, $t4
/* 146980 801A0910 ADA90000 */  sw    $t1, ($t5)
/* 146984 801A0914 8FAE0048 */  lw    $t6, 0x48($sp)
/* 146988 801A0918 1000001B */  b     .L801A0988_ovl7
/* 14698C 801A091C A1C00043 */   sb    $zero, 0x43($t6)
.L801A0920_ovl7:
/* 146990 801A0920 0C0443F5 */  jal   func_80110FD4
/* 146994 801A0924 27A40028 */   addiu $a0, $sp, 0x28
/* 146998 801A0928 1040000D */  beqz  $v0, .L801A0960_ovl7
/* 14699C 801A092C 3C188005 */   lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1469A0 801A0930 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1469A4 801A0934 93AF002A */  lbu   $t7, 0x2a($sp)
/* 1469A8 801A0938 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 1469AC 801A093C 8F190000 */  lw    $t9, ($t8)
/* 1469B0 801A0940 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 1469B4 801A0944 00194080 */  sll   $t0, $t9, 2
/* 1469B8 801A0948 00A85021 */  addu  $t2, $a1, $t0
/* 1469BC 801A094C AD4F0000 */  sw    $t7, ($t2)
/* 1469C0 801A0950 8FAC0048 */  lw    $t4, 0x48($sp)
/* 1469C4 801A0954 93AB002B */  lbu   $t3, 0x2b($sp)
/* 1469C8 801A0958 1000000B */  b     .L801A0988_ovl7
/* 1469CC 801A095C A18B0043 */   sb    $t3, 0x43($t4)
.L801A0960_ovl7:
/* 1469D0 801A0960 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1469D4 801A0964 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1469D8 801A0968 3C05800F */  lui   $a1, %hi(D_800E83E0) # $a1, 0x800f
/* 1469DC 801A096C 24A583E0 */  addiu $a1, %lo(D_800E83E0) # addiu $a1, $a1, -0x7c20
/* 1469E0 801A0970 8D2D0000 */  lw    $t5, ($t1)
/* 1469E4 801A0974 000D7080 */  sll   $t6, $t5, 2
/* 1469E8 801A0978 00AEC021 */  addu  $t8, $a1, $t6
/* 1469EC 801A097C AF000000 */  sw    $zero, ($t8)
/* 1469F0 801A0980 8FB90048 */  lw    $t9, 0x48($sp)
/* 1469F4 801A0984 A3200043 */  sb    $zero, 0x43($t9)
.L801A0988_ovl7:
/* 1469F8 801A0988 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1469FC 801A098C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 146A00 801A0990 24010001 */  li    $at, 1
/* 146A04 801A0994 8C640000 */  lw    $a0, ($v1)
/* 146A08 801A0998 00042080 */  sll   $a0, $a0, 2
/* 146A0C 801A099C 00A44021 */  addu  $t0, $a1, $a0
/* 146A10 801A09A0 8D020000 */  lw    $v0, ($t0)
/* 146A14 801A09A4 10410007 */  beq   $v0, $at, .L801A09C4_ovl7
/* 146A18 801A09A8 24010003 */   li    $at, 3
/* 146A1C 801A09AC 10410019 */  beq   $v0, $at, .L801A0A14_ovl7
/* 146A20 801A09B0 24010004 */   li    $at, 4
/* 146A24 801A09B4 10410034 */  beq   $v0, $at, .L801A0A88_ovl7
/* 146A28 801A09B8 00000000 */   nop   
/* 146A2C 801A09BC 10000050 */  b     .L801A0B00_ovl7
/* 146A30 801A09C0 00001025 */   move  $v0, $zero
.L801A09C4_ovl7:
/* 146A34 801A09C4 8FAF0034 */  lw    $t7, 0x34($sp)
/* 146A38 801A09C8 2401FFFF */  li    $at, -1
/* 146A3C 801A09CC 11E10003 */  beq   $t7, $at, .L801A09DC_ovl7
/* 146A40 801A09D0 3C01800E */   lui   $at, 0x800e
/* 146A44 801A09D4 00240821 */  addu  $at, $at, $a0
/* 146A48 801A09D8 AC2F0D50 */  sw    $t7, 0xd50($at)
.L801A09DC_ovl7:
/* 146A4C 801A09DC 0C03DD4F */  jal   func_800F753C
/* 146A50 801A09E0 00000000 */   nop   
/* 146A54 801A09E4 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 146A58 801A09E8 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 146A5C 801A09EC 3C04800E */  lui   $a0, 0x800e
/* 146A60 801A09F0 3C05801C */  lui   $a1, %hi(D_801BD510) # $a1, 0x801c
/* 146A64 801A09F4 8D4B0000 */  lw    $t3, ($t2)
/* 146A68 801A09F8 24A5D510 */  addiu $a1, %lo(D_801BD510) # addiu $a1, $a1, -0x2af0
/* 146A6C 801A09FC 000B6080 */  sll   $t4, $t3, 2
/* 146A70 801A0A00 008C2021 */  addu  $a0, $a0, $t4
/* 146A74 801A0A04 0C02C7B2 */  jal   assign_new_process_entry
/* 146A78 801A0A08 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 146A7C 801A0A0C 1000003C */  b     .L801A0B00_ovl7
/* 146A80 801A0A10 24020001 */   li    $v0, 1
.L801A0A14_ovl7:
/* 146A84 801A0A14 3C01800F */  lui   $at, 0x800f
/* 146A88 801A0A18 8FA90034 */  lw    $t1, 0x34($sp)
/* 146A8C 801A0A1C 00240821 */  addu  $at, $at, $a0
/* 146A90 801A0A20 AC208220 */  sw    $zero, -0x7de0($at)
/* 146A94 801A0A24 2401FFFF */  li    $at, -1
/* 146A98 801A0A28 11210006 */  beq   $t1, $at, .L801A0A44_ovl7
/* 146A9C 801A0A2C 3C028013 */   lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 146AA0 801A0A30 8C6D0000 */  lw    $t5, ($v1)
/* 146AA4 801A0A34 3C01800E */  lui   $at, 0x800e
/* 146AA8 801A0A38 000D7080 */  sll   $t6, $t5, 2
/* 146AAC 801A0A3C 002E0821 */  addu  $at, $at, $t6
/* 146AB0 801A0A40 AC290D50 */  sw    $t1, 0xd50($at)
.L801A0A44_ovl7:
/* 146AB4 801A0A44 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 146AB8 801A0A48 845800B2 */  lh    $t8, 0xb2($v0)
/* 146ABC 801A0A4C 27190001 */  addiu $t9, $t8, 1
/* 146AC0 801A0A50 0C03DD4F */  jal   func_800F753C
/* 146AC4 801A0A54 A45900B2 */   sh    $t9, 0xb2($v0)
/* 146AC8 801A0A58 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 146ACC 801A0A5C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 146AD0 801A0A60 3C04800E */  lui   $a0, 0x800e
/* 146AD4 801A0A64 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 146AD8 801A0A68 8D0F0000 */  lw    $t7, ($t0)
/* 146ADC 801A0A6C 24A57000 */  addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 146AE0 801A0A70 000F5080 */  sll   $t2, $t7, 2
/* 146AE4 801A0A74 008A2021 */  addu  $a0, $a0, $t2
/* 146AE8 801A0A78 0C02C7B2 */  jal   assign_new_process_entry
/* 146AEC 801A0A7C 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 146AF0 801A0A80 1000001F */  b     .L801A0B00_ovl7
/* 146AF4 801A0A84 24020001 */   li    $v0, 1
.L801A0A88_ovl7:
/* 146AF8 801A0A88 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 146AFC 801A0A8C 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 146B00 801A0A90 904B0004 */  lbu   $t3, 4($v0)
/* 146B04 801A0A94 3C01800F */  lui   $at, 0x800f
/* 146B08 801A0A98 00240821 */  addu  $at, $at, $a0
/* 146B0C 801A0A9C 15600016 */  bnez  $t3, .L801A0AF8_ovl7
/* 146B10 801A0AA0 240C0001 */   li    $t4, 1
/* 146B14 801A0AA4 8FA90034 */  lw    $t1, 0x34($sp)
/* 146B18 801A0AA8 AC2C8220 */  sw    $t4, -0x7de0($at)
/* 146B1C 801A0AAC 240D0002 */  li    $t5, 2
/* 146B20 801A0AB0 2401FFFF */  li    $at, -1
/* 146B24 801A0AB4 11210006 */  beq   $t1, $at, .L801A0AD0_ovl7
/* 146B28 801A0AB8 A04D0004 */   sb    $t5, 4($v0)
/* 146B2C 801A0ABC 8C6E0000 */  lw    $t6, ($v1)
/* 146B30 801A0AC0 3C01800E */  lui   $at, 0x800e
/* 146B34 801A0AC4 000EC080 */  sll   $t8, $t6, 2
/* 146B38 801A0AC8 00380821 */  addu  $at, $at, $t8
/* 146B3C 801A0ACC AC290D50 */  sw    $t1, 0xd50($at)
.L801A0AD0_ovl7:
/* 146B40 801A0AD0 8C790000 */  lw    $t9, ($v1)
/* 146B44 801A0AD4 3C04800E */  lui   $a0, 0x800e
/* 146B48 801A0AD8 3C05801A */  lui   $a1, %hi(D_801A7000) # $a1, 0x801a
/* 146B4C 801A0ADC 00194080 */  sll   $t0, $t9, 2
/* 146B50 801A0AE0 00882021 */  addu  $a0, $a0, $t0
/* 146B54 801A0AE4 8C84E510 */  lw    $a0, -0x1af0($a0)
/* 146B58 801A0AE8 0C02C7B2 */  jal   assign_new_process_entry
/* 146B5C 801A0AEC 24A57000 */   addiu $a1, %lo(D_801A7000) # addiu $a1, $a1, 0x7000
/* 146B60 801A0AF0 10000003 */  b     .L801A0B00_ovl7
/* 146B64 801A0AF4 24020001 */   li    $v0, 1
.L801A0AF8_ovl7:
/* 146B68 801A0AF8 10000001 */  b     .L801A0B00_ovl7
/* 146B6C 801A0AFC 00001025 */   move  $v0, $zero
.L801A0B00_ovl7:
/* 146B70 801A0B00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 146B74 801A0B04 27BD0050 */  addiu $sp, $sp, 0x50
/* 146B78 801A0B08 03E00008 */  jr    $ra
/* 146B7C 801A0B0C 00000000 */   nop   

.type func_801A0880_ovl7, @function
.size func_801A0880_ovl7, . - func_801A0880_ovl7

glabel func_801A0B10_ovl7
/* 146B80 801A0B10 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 146B84 801A0B14 AFB10018 */  sw    $s1, 0x18($sp)
/* 146B88 801A0B18 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 146B8C 801A0B1C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 146B90 801A0B20 8E2E0000 */  lw    $t6, ($s1)
/* 146B94 801A0B24 AFBF001C */  sw    $ra, 0x1c($sp)
/* 146B98 801A0B28 AFB00014 */  sw    $s0, 0x14($sp)
/* 146B9C 801A0B2C 8DC20000 */  lw    $v0, ($t6)
/* 146BA0 801A0B30 3C10800E */  lui   $s0, 0x800e
/* 146BA4 801A0B34 00027880 */  sll   $t7, $v0, 2
/* 146BA8 801A0B38 020F8021 */  addu  $s0, $s0, $t7
/* 146BAC 801A0B3C 8E101B50 */  lw    $s0, 0x1b50($s0)
/* 146BB0 801A0B40 8E18008C */  lw    $t8, 0x8c($s0)
/* 146BB4 801A0B44 17000003 */  bnez  $t8, .L801A0B54_ovl7
/* 146BB8 801A0B48 00000000 */   nop   
/* 146BBC 801A0B4C 10000043 */  b     .L801A0C5C_ovl7
/* 146BC0 801A0B50 00001025 */   move  $v0, $zero
.L801A0B54_ovl7:
/* 146BC4 801A0B54 0C044554 */  jal   func_80111550
/* 146BC8 801A0B58 00402025 */   move  $a0, $v0
/* 146BCC 801A0B5C 8E390000 */  lw    $t9, ($s1)
/* 146BD0 801A0B60 8E04008C */  lw    $a0, 0x8c($s0)
/* 146BD4 801A0B64 0C044722 */  jal   func_80111C88
/* 146BD8 801A0B68 8F250000 */   lw    $a1, ($t9)
/* 146BDC 801A0B6C 0C0447B3 */  jal   func_80111ECC
/* 146BE0 801A0B70 00402025 */   move  $a0, $v0
/* 146BE4 801A0B74 0C0442C0 */  jal   func_80110B00
/* 146BE8 801A0B78 27A4002C */   addiu $a0, $sp, 0x2c
/* 146BEC 801A0B7C 1040000B */  beqz  $v0, .L801A0BAC_ovl7
/* 146BF0 801A0B80 00000000 */   nop   
/* 146BF4 801A0B84 8E290000 */  lw    $t1, ($s1)
/* 146BF8 801A0B88 93A8002E */  lbu   $t0, 0x2e($sp)
/* 146BFC 801A0B8C 3C01800F */  lui   $at, 0x800f
/* 146C00 801A0B90 8D2A0000 */  lw    $t2, ($t1)
/* 146C04 801A0B94 93AC002F */  lbu   $t4, 0x2f($sp)
/* 146C08 801A0B98 000A5880 */  sll   $t3, $t2, 2
/* 146C0C 801A0B9C 002B0821 */  addu  $at, $at, $t3
/* 146C10 801A0BA0 AC2883E0 */  sw    $t0, -0x7c20($at)
/* 146C14 801A0BA4 10000024 */  b     .L801A0C38_ovl7
/* 146C18 801A0BA8 A20C0043 */   sb    $t4, 0x43($s0)
.L801A0BAC_ovl7:
/* 146C1C 801A0BAC 0C0443F5 */  jal   func_80110FD4
/* 146C20 801A0BB0 27A4002C */   addiu $a0, $sp, 0x2c
/* 146C24 801A0BB4 1040000B */  beqz  $v0, .L801A0BE4_ovl7
/* 146C28 801A0BB8 00000000 */   nop   
/* 146C2C 801A0BBC 8E2E0000 */  lw    $t6, ($s1)
/* 146C30 801A0BC0 93AD002E */  lbu   $t5, 0x2e($sp)
/* 146C34 801A0BC4 3C01800F */  lui   $at, 0x800f
/* 146C38 801A0BC8 8DCF0000 */  lw    $t7, ($t6)
/* 146C3C 801A0BCC 93B9002F */  lbu   $t9, 0x2f($sp)
/* 146C40 801A0BD0 000FC080 */  sll   $t8, $t7, 2
/* 146C44 801A0BD4 00380821 */  addu  $at, $at, $t8
/* 146C48 801A0BD8 AC2D83E0 */  sw    $t5, -0x7c20($at)
/* 146C4C 801A0BDC 10000016 */  b     .L801A0C38_ovl7
/* 146C50 801A0BE0 A2190043 */   sb    $t9, 0x43($s0)
.L801A0BE4_ovl7:
/* 146C54 801A0BE4 0C044054 */  jal   func_80110150
/* 146C58 801A0BE8 27A4002C */   addiu $a0, $sp, 0x2c
/* 146C5C 801A0BEC 5040000C */  beql  $v0, $zero, .L801A0C20_ovl7
/* 146C60 801A0BF0 8E2E0000 */   lw    $t6, ($s1)
/* 146C64 801A0BF4 8E2A0000 */  lw    $t2, ($s1)
/* 146C68 801A0BF8 93A9002E */  lbu   $t1, 0x2e($sp)
/* 146C6C 801A0BFC 3C01800F */  lui   $at, 0x800f
/* 146C70 801A0C00 8D480000 */  lw    $t0, ($t2)
/* 146C74 801A0C04 93AC002F */  lbu   $t4, 0x2f($sp)
/* 146C78 801A0C08 00085880 */  sll   $t3, $t0, 2
/* 146C7C 801A0C0C 002B0821 */  addu  $at, $at, $t3
/* 146C80 801A0C10 AC2983E0 */  sw    $t1, -0x7c20($at)
/* 146C84 801A0C14 10000008 */  b     .L801A0C38_ovl7
/* 146C88 801A0C18 A20C0043 */   sb    $t4, 0x43($s0)
/* 146C8C 801A0C1C 8E2E0000 */  lw    $t6, ($s1)
.L801A0C20_ovl7:
/* 146C90 801A0C20 3C01800F */  lui   $at, 0x800f
/* 146C94 801A0C24 8DCF0000 */  lw    $t7, ($t6)
/* 146C98 801A0C28 000F6880 */  sll   $t5, $t7, 2
/* 146C9C 801A0C2C 002D0821 */  addu  $at, $at, $t5
/* 146CA0 801A0C30 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 146CA4 801A0C34 A2000043 */  sb    $zero, 0x43($s0)
.L801A0C38_ovl7:
/* 146CA8 801A0C38 8E040090 */  lw    $a0, 0x90($s0)
/* 146CAC 801A0C3C 50800007 */  beql  $a0, $zero, .L801A0C5C_ovl7
/* 146CB0 801A0C40 00001025 */   move  $v0, $zero
/* 146CB4 801A0C44 8E380000 */  lw    $t8, ($s1)
/* 146CB8 801A0C48 0C044681 */  jal   func_80111A04
/* 146CBC 801A0C4C 8F050000 */   lw    $a1, ($t8)
/* 146CC0 801A0C50 0C044713 */  jal   func_80111C4C
/* 146CC4 801A0C54 00402025 */   move  $a0, $v0
/* 146CC8 801A0C58 00001025 */  move  $v0, $zero
.L801A0C5C_ovl7:
/* 146CCC 801A0C5C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 146CD0 801A0C60 8FB00014 */  lw    $s0, 0x14($sp)
/* 146CD4 801A0C64 8FB10018 */  lw    $s1, 0x18($sp)
/* 146CD8 801A0C68 03E00008 */  jr    $ra
/* 146CDC 801A0C6C 27BD0050 */   addiu $sp, $sp, 0x50

.type func_801A0B10_ovl7, @function
.size func_801A0B10_ovl7, . - func_801A0B10_ovl7

glabel func_801A0C70_ovl7
/* 146CE0 801A0C70 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 146CE4 801A0C74 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 146CE8 801A0C78 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 146CEC 801A0C7C AFBF0014 */  sw    $ra, 0x14($sp)
/* 146CF0 801A0C80 8DCF0000 */  lw    $t7, ($t6)
/* 146CF4 801A0C84 3C01800E */  lui   $at, 0x800e
/* 146CF8 801A0C88 AFA0003C */  sw    $zero, 0x3c($sp)
/* 146CFC 801A0C8C 000FC080 */  sll   $t8, $t7, 2
/* 146D00 801A0C90 00380821 */  addu  $at, $at, $t8
/* 146D04 801A0C94 C4247B20 */  lwc1  $f4, 0x7b20($at)
/* 146D08 801A0C98 27A40018 */  addiu $a0, $sp, 0x18
/* 146D0C 801A0C9C 0C0442C0 */  jal   func_80110B00
/* 146D10 801A0CA0 E7A40038 */   swc1  $f4, 0x38($sp)
/* 146D14 801A0CA4 10400002 */  beqz  $v0, .L801A0CB0_ovl7
/* 146D18 801A0CA8 8FA3003C */   lw    $v1, 0x3c($sp)
/* 146D1C 801A0CAC 24030001 */  li    $v1, 1
.L801A0CB0_ovl7:
/* 146D20 801A0CB0 24010001 */  li    $at, 1
/* 146D24 801A0CB4 1061000F */  beq   $v1, $at, .L801A0CF4_ovl7
/* 146D28 801A0CB8 27A40018 */   addiu $a0, $sp, 0x18
/* 146D2C 801A0CBC 0C0443F5 */  jal   func_80110FD4
/* 146D30 801A0CC0 AFA3003C */   sw    $v1, 0x3c($sp)
/* 146D34 801A0CC4 1040000B */  beqz  $v0, .L801A0CF4_ovl7
/* 146D38 801A0CC8 8FA3003C */   lw    $v1, 0x3c($sp)
/* 146D3C 801A0CCC 8FB90020 */  lw    $t9, 0x20($sp)
/* 146D40 801A0CD0 2F210024 */  sltiu $at, $t9, 0x24
/* 146D44 801A0CD4 10200007 */  beqz  $at, .L801A0CF4_ovl7
/* 146D48 801A0CD8 0019C880 */   sll   $t9, $t9, 2
/* 146D4C 801A0CDC 3C01801D */  lui   $at, 0x801d
/* 146D50 801A0CE0 00390821 */  addu  $at, $at, $t9
/* 146D54 801A0CE4 8C39DEC8 */  lw    $t9, -0x2138($at)
/* 146D58 801A0CE8 03200008 */  jr    $t9
/* 146D5C 801A0CEC 00000000 */   nop   
/* 146D60 801A0CF0 24030001 */  li    $v1, 1
.L801A0CF4_ovl7:
/* 146D64 801A0CF4 24010001 */  li    $at, 1
/* 146D68 801A0CF8 10610006 */  beq   $v1, $at, .L801A0D14_ovl7
/* 146D6C 801A0CFC 27A40018 */   addiu $a0, $sp, 0x18
/* 146D70 801A0D00 0C044054 */  jal   func_80110150
/* 146D74 801A0D04 AFA3003C */   sw    $v1, 0x3c($sp)
/* 146D78 801A0D08 10400002 */  beqz  $v0, .L801A0D14_ovl7
/* 146D7C 801A0D0C 8FA3003C */   lw    $v1, 0x3c($sp)
/* 146D80 801A0D10 24030001 */  li    $v1, 1
.L801A0D14_ovl7:
/* 146D84 801A0D14 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 146D88 801A0D18 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 146D8C 801A0D1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 146D90 801A0D20 C7A60038 */  lwc1  $f6, 0x38($sp)
/* 146D94 801A0D24 8D090000 */  lw    $t1, ($t0)
/* 146D98 801A0D28 3C01800E */  lui   $at, 0x800e
/* 146D9C 801A0D2C 27BD0040 */  addiu $sp, $sp, 0x40
/* 146DA0 801A0D30 00095080 */  sll   $t2, $t1, 2
/* 146DA4 801A0D34 002A0821 */  addu  $at, $at, $t2
/* 146DA8 801A0D38 00601025 */  move  $v0, $v1
/* 146DAC 801A0D3C 03E00008 */  jr    $ra
/* 146DB0 801A0D40 E4267B20 */   swc1  $f6, 0x7b20($at)

.type func_801A0C70_ovl7, @function
.size func_801A0C70_ovl7, . - func_801A0C70_ovl7

/* 146DB4 801A0D44 00000000 */  nop   
/* 146DB8 801A0D48 00000000 */  nop   
/* 146DBC 801A0D4C 00000000 */  nop   
