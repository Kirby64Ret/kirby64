glabel func_80111A04
/* 09A474 80111A04 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 09A478 80111A08 AFBF0014 */  sw    $ra, 0x14($sp)
/* 09A47C 80111A0C AFA5001C */  sw    $a1, 0x1c($sp)
/* 09A480 80111A10 8C8E0000 */  lw    $t6, ($a0)
/* 09A484 80111A14 3C078013 */  lui   $a3, %hi(D_8012D190) # $a3, 0x8013
/* 09A488 80111A18 00803025 */  move  $a2, $a0
/* 09A48C 80111A1C 11C00003 */  beqz  $t6, .L80111A2C_ovl2
/* 09A490 80111A20 24E7D190 */   addiu $a3, %lo(D_8012D190) # addiu $a3, $a3, -0x2e70
/* 09A494 80111A24 10000002 */  b     .L80111A30_ovl2
/* 09A498 80111A28 24020001 */   li    $v0, 1
.L80111A2C_ovl2:
/* 09A49C 80111A2C 00001025 */  move  $v0, $zero
.L80111A30_ovl2:
/* 09A4A0 80111A30 8CEF0000 */  lw    $t7, ($a3)
/* 09A4A4 80111A34 8CD90004 */  lw    $t9, 4($a2)
/* 09A4A8 80111A38 3C088013 */  lui   $t0, %hi(D_8012D58C) # $t0, 0x8013
/* 09A4AC 80111A3C 004FC021 */  addu  $t8, $v0, $t7
/* 09A4B0 80111A40 03194821 */  addu  $t1, $t8, $t9
/* 09A4B4 80111A44 2921001A */  slti  $at, $t1, 0x1a
/* 09A4B8 80111A48 14200007 */  bnez  $at, .L80111A68_ovl2
/* 09A4BC 80111A4C 2508D58C */   addiu $t0, %lo(D_8012D58C) # addiu $t0, $t0, -0x2a74
/* 09A4C0 80111A50 3C048013 */  lui   $a0, %hi(D_80128C00) # $a0, 0x8013
/* 09A4C4 80111A54 24848C00 */  addiu $a0, %lo(D_80128C00) # addiu $a0, $a0, -0x7400
/* 09A4C8 80111A58 0C02909C */  jal   print_error_stub
/* 09A4CC 80111A5C 00001025 */   move  $v0, $zero
.L80111A60_ovl2:
/* 09A4D0 80111A60 1000FFFF */  b     .L80111A60_ovl2
/* 09A4D4 80111A64 00000000 */   nop   
.L80111A68_ovl2:
/* 09A4D8 80111A68 8D020000 */  lw    $v0, ($t0)
/* 09A4DC 80111A6C 2401000A */  li    $at, 10
/* 09A4E0 80111A70 3C0B8013 */  lui   $t3, %hi(D_8012D7B0) # $t3, 0x8013
/* 09A4E4 80111A74 14410007 */  bne   $v0, $at, .L80111A94_ovl2
/* 09A4E8 80111A78 000250C0 */   sll   $t2, $v0, 3
/* 09A4EC 80111A7C 3C048013 */  lui   $a0, %hi(D_80128C30) # $a0, 0x8013
/* 09A4F0 80111A80 24848C30 */  addiu $a0, %lo(D_80128C30) # addiu $a0, $a0, -0x73d0
/* 09A4F4 80111A84 0C02909C */  jal   print_error_stub
/* 09A4F8 80111A88 00001025 */   move  $v0, $zero
.L80111A8C_ovl2:
/* 09A4FC 80111A8C 1000FFFF */  b     .L80111A8C_ovl2
/* 09A500 80111A90 00000000 */   nop   
.L80111A94_ovl2:
/* 09A504 80111A94 8FAC001C */  lw    $t4, 0x1c($sp)
/* 09A508 80111A98 01425021 */  addu  $t2, $t2, $v0
/* 09A50C 80111A9C 000A5080 */  sll   $t2, $t2, 2
/* 09A510 80111AA0 256BD7B0 */  addiu $t3, %lo(D_8012D7B0) # addiu $t3, $t3, -0x2850
/* 09A514 80111AA4 014B2821 */  addu  $a1, $t2, $t3
/* 09A518 80111AA8 ACAC0000 */  sw    $t4, ($a1)
/* 09A51C 80111AAC 8CCE000C */  lw    $t6, 0xc($a2)
/* 09A520 80111AB0 ACAE0004 */  sw    $t6, 4($a1)
/* 09A524 80111AB4 8CCD0010 */  lw    $t5, 0x10($a2)
/* 09A528 80111AB8 ACAD0008 */  sw    $t5, 8($a1)
/* 09A52C 80111ABC 8CCE0014 */  lw    $t6, 0x14($a2)
/* 09A530 80111AC0 ACAE000C */  sw    $t6, 0xc($a1)
/* 09A534 80111AC4 8CCD0018 */  lw    $t5, 0x18($a2)
/* 09A538 80111AC8 ACAD0010 */  sw    $t5, 0x10($a1)
/* 09A53C 80111ACC 8CCE001C */  lw    $t6, 0x1c($a2)
/* 09A540 80111AD0 ACAE0014 */  sw    $t6, 0x14($a1)
/* 09A544 80111AD4 8CCF0000 */  lw    $t7, ($a2)
/* 09A548 80111AD8 51E00026 */  beql  $t7, $zero, .L80111B74_ovl2
/* 09A54C 80111ADC ACA00018 */   sw    $zero, 0x18($a1)
/* 09A550 80111AE0 8CF80000 */  lw    $t8, ($a3)
/* 09A554 80111AE4 3C098013 */  lui   $t1, %hi(D_8012D198) # $t1, 0x8013
/* 09A558 80111AE8 2529D198 */  addiu $t1, %lo(D_8012D198) # addiu $t1, $t1, -0x2e68
/* 09A55C 80111AEC 0018C880 */  sll   $t9, $t8, 2
/* 09A560 80111AF0 0338C821 */  addu  $t9, $t9, $t8
/* 09A564 80111AF4 0019C8C0 */  sll   $t9, $t9, 3
/* 09A568 80111AF8 03295021 */  addu  $t2, $t9, $t1
/* 09A56C 80111AFC ACAA0018 */  sw    $t2, 0x18($a1)
/* 09A570 80111B00 8CEB0000 */  lw    $t3, ($a3)
/* 09A574 80111B04 256C0001 */  addiu $t4, $t3, 1
/* 09A578 80111B08 ACEC0000 */  sw    $t4, ($a3)
/* 09A57C 80111B0C 8CAD0018 */  lw    $t5, 0x18($a1)
/* 09A580 80111B10 A1A00000 */  sb    $zero, ($t5)
/* 09A584 80111B14 8CCF0000 */  lw    $t7, ($a2)
/* 09A588 80111B18 8CAE0018 */  lw    $t6, 0x18($a1)
/* 09A58C 80111B1C 8DF90000 */  lw    $t9, ($t7)
/* 09A590 80111B20 ADD90004 */  sw    $t9, 4($t6)
/* 09A594 80111B24 8DF80004 */  lw    $t8, 4($t7)
/* 09A598 80111B28 ADD80008 */  sw    $t8, 8($t6)
/* 09A59C 80111B2C 8CCA0000 */  lw    $t2, ($a2)
/* 09A5A0 80111B30 8CA90018 */  lw    $t1, 0x18($a1)
/* 09A5A4 80111B34 8D4C0008 */  lw    $t4, 8($t2)
/* 09A5A8 80111B38 AD2C000C */  sw    $t4, 0xc($t1)
/* 09A5AC 80111B3C 8D4B000C */  lw    $t3, 0xc($t2)
/* 09A5B0 80111B40 AD2B0010 */  sw    $t3, 0x10($t1)
/* 09A5B4 80111B44 8D4C0010 */  lw    $t4, 0x10($t2)
/* 09A5B8 80111B48 AD2C0014 */  sw    $t4, 0x14($t1)
/* 09A5BC 80111B4C 8D4B0014 */  lw    $t3, 0x14($t2)
/* 09A5C0 80111B50 AD2B0018 */  sw    $t3, 0x18($t1)
/* 09A5C4 80111B54 8D4C0018 */  lw    $t4, 0x18($t2)
/* 09A5C8 80111B58 AD2C001C */  sw    $t4, 0x1c($t1)
/* 09A5CC 80111B5C 8D4B001C */  lw    $t3, 0x1c($t2)
/* 09A5D0 80111B60 AD2B0020 */  sw    $t3, 0x20($t1)
/* 09A5D4 80111B64 8D4C0020 */  lw    $t4, 0x20($t2)
/* 09A5D8 80111B68 10000002 */  b     .L80111B74_ovl2
/* 09A5DC 80111B6C AD2C0024 */   sw    $t4, 0x24($t1)
/* 09A5E0 80111B70 ACA00018 */  sw    $zero, 0x18($a1)
.L80111B74_ovl2:
/* 09A5E4 80111B74 8CCD0004 */  lw    $t5, 4($a2)
/* 09A5E8 80111B78 3C188013 */  lui   $t8, %hi(D_8012D198) # $t8, 0x8013
/* 09A5EC 80111B7C 2718D198 */  addiu $t8, %lo(D_8012D198) # addiu $t8, $t8, -0x2e68
/* 09A5F0 80111B80 ACAD001C */  sw    $t5, 0x1c($a1)
/* 09A5F4 80111B84 8CEE0000 */  lw    $t6, ($a3)
/* 09A5F8 80111B88 00002025 */  move  $a0, $zero
/* 09A5FC 80111B8C 000E7880 */  sll   $t7, $t6, 2
/* 09A600 80111B90 01EE7821 */  addu  $t7, $t7, $t6
/* 09A604 80111B94 000F78C0 */  sll   $t7, $t7, 3
/* 09A608 80111B98 01F81021 */  addu  $v0, $t7, $t8
/* 09A60C 80111B9C ACA20020 */  sw    $v0, 0x20($a1)
/* 09A610 80111BA0 19A0001B */  blez  $t5, .L80111C10_ovl2
/* 09A614 80111BA4 8CC30008 */   lw    $v1, 8($a2)
/* 09A618 80111BA8 A0400000 */  sb    $zero, ($v0)
.L80111BAC_ovl2:
/* 09A61C 80111BAC 8C6B0000 */  lw    $t3, ($v1)
/* 09A620 80111BB0 24840001 */  addiu $a0, $a0, 1
/* 09A624 80111BB4 24630024 */  addiu $v1, $v1, 0x24
/* 09A628 80111BB8 AC4B0004 */  sw    $t3, 4($v0)
/* 09A62C 80111BBC 8C6AFFE0 */  lw    $t2, -0x20($v1)
/* 09A630 80111BC0 24420028 */  addiu $v0, $v0, 0x28
/* 09A634 80111BC4 AC4AFFE0 */  sw    $t2, -0x20($v0)
/* 09A638 80111BC8 8C6DFFE4 */  lw    $t5, -0x1c($v1)
/* 09A63C 80111BCC AC4DFFE4 */  sw    $t5, -0x1c($v0)
/* 09A640 80111BD0 8C6CFFE8 */  lw    $t4, -0x18($v1)
/* 09A644 80111BD4 AC4CFFE8 */  sw    $t4, -0x18($v0)
/* 09A648 80111BD8 8C6DFFEC */  lw    $t5, -0x14($v1)
/* 09A64C 80111BDC AC4DFFEC */  sw    $t5, -0x14($v0)
/* 09A650 80111BE0 8C6CFFF0 */  lw    $t4, -0x10($v1)
/* 09A654 80111BE4 AC4CFFF0 */  sw    $t4, -0x10($v0)
/* 09A658 80111BE8 8C6DFFF4 */  lw    $t5, -0xc($v1)
/* 09A65C 80111BEC AC4DFFF4 */  sw    $t5, -0xc($v0)
/* 09A660 80111BF0 8C6CFFF8 */  lw    $t4, -8($v1)
/* 09A664 80111BF4 AC4CFFF8 */  sw    $t4, -8($v0)
/* 09A668 80111BF8 8C6DFFFC */  lw    $t5, -4($v1)
/* 09A66C 80111BFC AC4DFFFC */  sw    $t5, -4($v0)
/* 09A670 80111C00 8CAE001C */  lw    $t6, 0x1c($a1)
/* 09A674 80111C04 008E082A */  slt   $at, $a0, $t6
/* 09A678 80111C08 5420FFE8 */  bnezl $at, .L80111BAC_ovl2
/* 09A67C 80111C0C A0400000 */   sb    $zero, ($v0)
.L80111C10_ovl2:
/* 09A680 80111C10 8CEF0000 */  lw    $t7, ($a3)
/* 09A684 80111C14 8CD80004 */  lw    $t8, 4($a2)
/* 09A688 80111C18 8D090000 */  lw    $t1, ($t0)
/* 09A68C 80111C1C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 09A690 80111C20 3C0B00FF */  lui   $t3, (0x00FF0080 >> 16) # lui $t3, 0xff
/* 09A694 80111C24 01F8C821 */  addu  $t9, $t7, $t8
/* 09A698 80111C28 252A0001 */  addiu $t2, $t1, 1
/* 09A69C 80111C2C ACF90000 */  sw    $t9, ($a3)
/* 09A6A0 80111C30 AD0A0000 */  sw    $t2, ($t0)
/* 09A6A4 80111C34 356B0080 */  ori   $t3, (0x00FF0080 & 0xFFFF) # ori $t3, $t3, 0x80
/* 09A6A8 80111C38 3C018013 */  lui   $at, %hi(D_8012D924) # $at, 0x8013
/* 09A6AC 80111C3C AC2BD924 */  sw    $t3, %lo(D_8012D924)($at)
/* 09A6B0 80111C40 27BD0018 */  addiu $sp, $sp, 0x18
/* 09A6B4 80111C44 03E00008 */  jr    $ra
/* 09A6B8 80111C48 00A01025 */   move  $v0, $a1
.type func_80111A04, @function
.size func_80111A04, . - func_80111A04
