glabel func_801E2B08_ovl16
/* 218DB8 801E2B08 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 218DBC 801E2B0C 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 218DC0 801E2B10 8CA20000 */  lw    $v0, ($a1)
/* 218DC4 801E2B14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 218DC8 801E2B18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 218DCC 801E2B1C AFA40018 */  sw    $a0, 0x18($sp)
/* 218DD0 801E2B20 8C4F0000 */  lw    $t7, ($v0)
/* 218DD4 801E2B24 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 218DD8 801E2B28 240E000A */  li    $t6, 10
/* 218DDC 801E2B2C 000FC080 */  sll   $t8, $t7, 2
/* 218DE0 801E2B30 00380821 */  addu  $at, $at, $t8
/* 218DE4 801E2B34 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 218DE8 801E2B38 8C590000 */  lw    $t9, ($v0)
/* 218DEC 801E2B3C 44802000 */  mtc1  $zero, $f4
/* 218DF0 801E2B40 3C06800E */  lui   $a2, %hi(D_800E3750) # $a2, 0x800e
/* 218DF4 801E2B44 24C63750 */  addiu $a2, %lo(D_800E3750) # addiu $a2, $a2, 0x3750
/* 218DF8 801E2B48 00194080 */  sll   $t0, $t9, 2
/* 218DFC 801E2B4C 00C84821 */  addu  $t1, $a2, $t0
/* 218E00 801E2B50 E5240000 */  swc1  $f4, ($t1)
/* 218E04 801E2B54 8C430000 */  lw    $v1, ($v0)
/* 218E08 801E2B58 3C01800E */ lui $at, %hi(D_800E3590)
/* 218E0C 801E2B5C 3C07800E */  lui   $a3, %hi(D_800E3C90) # $a3, 0x800e
/* 218E10 801E2B60 00031880 */  sll   $v1, $v1, 2
/* 218E14 801E2B64 00C35021 */  addu  $t2, $a2, $v1
/* 218E18 801E2B68 C5400000 */  lwc1  $f0, ($t2)
/* 218E1C 801E2B6C 00230821 */  addu  $at, $at, $v1
/* 218E20 801E2B70 24E73C90 */  addiu $a3, %lo(D_800E3C90) # addiu $a3, $a3, 0x3c90
/* 218E24 801E2B74 E4203590 */ swc1 $f0, %lo(D_800E3590)($at)
/* 218E28 801E2B78 8C4B0000 */  lw    $t3, ($v0)
/* 218E2C 801E2B7C 3C01800E */ lui $at, %hi(D_800E3210)
/* 218E30 801E2B80 2404000A */  li    $a0, 10
/* 218E34 801E2B84 000B6080 */  sll   $t4, $t3, 2
/* 218E38 801E2B88 002C0821 */  addu  $at, $at, $t4
/* 218E3C 801E2B8C E4203210 */ swc1 $f0, %lo(D_800E3210)($at)
/* 218E40 801E2B90 8C4D0000 */  lw    $t5, ($v0)
/* 218E44 801E2B94 3C01800E */ lui $at, %hi(D_800E3050)
/* 218E48 801E2B98 000D7880 */  sll   $t7, $t5, 2
/* 218E4C 801E2B9C 002F0821 */  addu  $at, $at, $t7
/* 218E50 801E2BA0 E4203050 */ swc1 $f0, %lo(D_800E3050)($at)
/* 218E54 801E2BA4 8C4E0000 */  lw    $t6, ($v0)
/* 218E58 801E2BA8 3C01801F */  lui   $at, %hi(D_801EFF50_ovl16) # $at, 0x801f
/* 218E5C 801E2BAC C426FF50 */  lwc1  $f6, %lo(D_801EFF50_ovl16)($at)
/* 218E60 801E2BB0 000EC080 */  sll   $t8, $t6, 2
/* 218E64 801E2BB4 00F8C821 */  addu  $t9, $a3, $t8
/* 218E68 801E2BB8 E7260000 */  swc1  $f6, ($t9)
/* 218E6C 801E2BBC 8C430000 */  lw    $v1, ($v0)
/* 218E70 801E2BC0 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 218E74 801E2BC4 00031880 */  sll   $v1, $v1, 2
/* 218E78 801E2BC8 00E34021 */  addu  $t0, $a3, $v1
/* 218E7C 801E2BCC C5080000 */  lwc1  $f8, ($t0)
/* 218E80 801E2BD0 00230821 */  addu  $at, $at, $v1
/* 218E84 801E2BD4 E4283AD0 */ swc1 $f8, %lo(D_800E3AD0)($at)
/* 218E88 801E2BD8 8C430000 */  lw    $v1, ($v0)
/* 218E8C 801E2BDC 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 218E90 801E2BE0 00031880 */  sll   $v1, $v1, 2
/* 218E94 801E2BE4 00230821 */  addu  $at, $at, $v1
/* 218E98 801E2BE8 C42AA6E0 */ lwc1 $f10, %lo(D_800EA6E0)($at)
/* 218E9C 801E2BEC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 218EA0 801E2BF0 44818000 */  mtc1  $at, $f16
/* 218EA4 801E2BF4 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 218EA8 801E2BF8 44812000 */  mtc1  $at, $f4
/* 218EAC 801E2BFC 46105481 */  sub.s $f18, $f10, $f16
/* 218EB0 801E2C00 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 218EB4 801E2C04 00230821 */  addu  $at, $at, $v1
/* 218EB8 801E2C08 46049183 */  div.s $f6, $f18, $f4
/* 218EBC 801E2C0C 0C002DAF */  jal   finish_current_thread
/* 218EC0 801E2C10 E426A8A0 */ swc1 $f6, %lo(D_800EA8A0)($at)
/* 218EC4 801E2C14 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 218EC8 801E2C18 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 218ECC 801E2C1C 8CA90000 */  lw    $t1, ($a1)
/* 218ED0 801E2C20 3C02800E */  lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 218ED4 801E2C24 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 218ED8 801E2C28 8D2A0000 */  lw    $t2, ($t1)
/* 218EDC 801E2C2C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 218EE0 801E2C30 44810000 */  mtc1  $at, $f0
/* 218EE4 801E2C34 000A5880 */  sll   $t3, $t2, 2
/* 218EE8 801E2C38 004B6021 */  addu  $t4, $v0, $t3
/* 218EEC 801E2C3C 8D8D0000 */  lw    $t5, ($t4)
/* 218EF0 801E2C40 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 218EF4 801E2C44 240B000B */  li    $t3, 11
/* 218EF8 801E2C48 8DAF0010 */  lw    $t7, 0x10($t5)
/* 218EFC 801E2C4C E5E00040 */  swc1  $f0, 0x40($t7)
/* 218F00 801E2C50 8CAE0000 */  lw    $t6, ($a1)
/* 218F04 801E2C54 8DD80000 */  lw    $t8, ($t6)
/* 218F08 801E2C58 0018C880 */  sll   $t9, $t8, 2
/* 218F0C 801E2C5C 00594021 */  addu  $t0, $v0, $t9
/* 218F10 801E2C60 8D090000 */  lw    $t1, ($t0)
/* 218F14 801E2C64 8D2A0010 */  lw    $t2, 0x10($t1)
/* 218F18 801E2C68 E5400048 */  swc1  $f0, 0x48($t2)
/* 218F1C 801E2C6C 8CAC0000 */  lw    $t4, ($a1)
/* 218F20 801E2C70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 218F24 801E2C74 8D8D0000 */  lw    $t5, ($t4)
/* 218F28 801E2C78 27BD0018 */  addiu $sp, $sp, 0x18
/* 218F2C 801E2C7C 000D7880 */  sll   $t7, $t5, 2
/* 218F30 801E2C80 002F0821 */  addu  $at, $at, $t7
/* 218F34 801E2C84 03E00008 */  jr    $ra
/* 218F38 801E2C88 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
.type func_801E2B08_ovl16, @function
.size func_801E2B08_ovl16, . - func_801E2B08_ovl16
