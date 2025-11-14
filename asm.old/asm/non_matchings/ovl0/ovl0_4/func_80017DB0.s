glabel func_80017DB0
/* 0189B0 80017DB0 00047080 */  sll   $t6, $a0, 2
/* 0189B4 80017DB4 01C47021 */  addu  $t6, $t6, $a0
/* 0189B8 80017DB8 3C0F8005 */  lui   $t7, %hi(D_8004A7F8) # $t7, 0x8005
/* 0189BC 80017DBC 25EFA7F8 */  addiu $t7, %lo(D_8004A7F8) # addiu $t7, $t7, -0x5808
/* 0189C0 80017DC0 000E7080 */  sll   $t6, $t6, 2
/* 0189C4 80017DC4 01CF1821 */  addu  $v1, $t6, $t7
/* 0189C8 80017DC8 8C780004 */  lw    $t8, 4($v1)
/* 0189CC 80017DCC 3C0F8005 */  lui   $t7, %hi(gDisplayListHead3) # $t7, 0x8005
/* 0189D0 80017DD0 3C0B8005 */  lui   $t3, %hi(gDisplayListHead2) # $t3, 0x8005
/* 0189D4 80017DD4 13000009 */  beqz  $t8, .L80017DFC_ovl0
/* 0189D8 80017DD8 3C198005 */   lui   $t9, %hi(gDisplayListHeads) # $t9, 0x8005
/* 0189DC 80017DDC 8F39A3D0 */  lw    $t9, %lo(gDisplayListHeads)($t9)
/* 0189E0 80017DE0 3C018005 */  lui   $at, %hi(gDisplayListHeads) # $at, 0x8005
/* 0189E4 80017DE4 3C04DE00 */  lui   $a0, 0xde00
/* 0189E8 80017DE8 27280008 */  addiu $t0, $t9, 8
/* 0189EC 80017DEC AC28A3D0 */  sw    $t0, %lo(gDisplayListHeads)($at)
/* 0189F0 80017DF0 AF240000 */  sw    $a0, ($t9)
/* 0189F4 80017DF4 8C690004 */  lw    $t1, 4($v1)
/* 0189F8 80017DF8 AF290004 */  sw    $t1, 4($t9)
.L80017DFC_ovl0:
/* 0189FC 80017DFC 8C6A0008 */  lw    $t2, 8($v1)
/* 018A00 80017E00 3C098005 */  lui   $t1, %hi(gDisplayListHead4) # $t1, 0x8005
/* 018A04 80017E04 3C04DE00 */  lui   $a0, 0xde00
/* 018A08 80017E08 51400009 */  beql  $t2, $zero, .L80017E30_ovl0
/* 018A0C 80017E0C 8C6E000C */   lw    $t6, 0xc($v1)
/* 018A10 80017E10 8D6BA3D4 */  lw    $t3, %lo(gDisplayListHead2)($t3)
/* 018A14 80017E14 3C018005 */  lui   $at, %hi(gDisplayListHead2) # $at, 0x8005
/* 018A18 80017E18 256C0008 */  addiu $t4, $t3, 8
/* 018A1C 80017E1C AC2CA3D4 */  sw    $t4, %lo(gDisplayListHead2)($at)
/* 018A20 80017E20 AD640000 */  sw    $a0, ($t3)
/* 018A24 80017E24 8C6D0008 */  lw    $t5, 8($v1)
/* 018A28 80017E28 AD6D0004 */  sw    $t5, 4($t3)
/* 018A2C 80017E2C 8C6E000C */  lw    $t6, 0xc($v1)
.L80017E30_ovl0:
/* 018A30 80017E30 51C00009 */  beql  $t6, $zero, .L80017E58_ovl0
/* 018A34 80017E34 8C680010 */   lw    $t0, 0x10($v1)
/* 018A38 80017E38 8DEFA3D8 */  lw    $t7, %lo(gDisplayListHead3)($t7)
/* 018A3C 80017E3C 3C018005 */  lui   $at, %hi(gDisplayListHead3) # $at, 0x8005
/* 018A40 80017E40 25F80008 */  addiu $t8, $t7, 8
/* 018A44 80017E44 AC38A3D8 */  sw    $t8, %lo(gDisplayListHead3)($at)
/* 018A48 80017E48 ADE40000 */  sw    $a0, ($t7)
/* 018A4C 80017E4C 8C79000C */  lw    $t9, 0xc($v1)
/* 018A50 80017E50 ADF90004 */  sw    $t9, 4($t7)
/* 018A54 80017E54 8C680010 */  lw    $t0, 0x10($v1)
.L80017E58_ovl0:
/* 018A58 80017E58 11000008 */  beqz  $t0, .L80017E7C_ovl0
/* 018A5C 80017E5C 00000000 */   nop   
/* 018A60 80017E60 8D29A3DC */  lw    $t1, %lo(gDisplayListHead4)($t1)
/* 018A64 80017E64 3C018005 */  lui   $at, %hi(gDisplayListHead4) # $at, 0x8005
/* 018A68 80017E68 252A0008 */  addiu $t2, $t1, 8
/* 018A6C 80017E6C AC2AA3DC */  sw    $t2, %lo(gDisplayListHead4)($at)
/* 018A70 80017E70 AD240000 */  sw    $a0, ($t1)
/* 018A74 80017E74 8C6B0010 */  lw    $t3, 0x10($v1)
/* 018A78 80017E78 AD2B0004 */  sw    $t3, 4($t1)
.L80017E7C_ovl0:
/* 018A7C 80017E7C 03E00008 */  jr    $ra
/* 018A80 80017E80 00000000 */   nop   
.type func_80017DB0, @function
.size func_80017DB0, . - func_80017DB0
