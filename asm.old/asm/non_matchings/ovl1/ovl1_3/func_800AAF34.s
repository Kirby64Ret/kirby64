glabel func_800AAF34
/* 053184 800AAF34 2487FFF6 */  addiu $a3, $a0, -0xa
/* 053188 800AAF38 00073843 */  sra   $a3, $a3, 1
/* 05318C 800AAF3C 3C0E800D */  lui   $t6, %hi(D_800D7A00) # $t6, 0x800d
/* 053190 800AAF40 25CE7A00 */  addiu $t6, %lo(D_800D7A00) # addiu $t6, $t6, 0x7a00
/* 053194 800AAF44 00073880 */  sll   $a3, $a3, 2
/* 053198 800AAF48 00EE1821 */  addu  $v1, $a3, $t6
/* 05319C 800AAF4C 8C620000 */  lw    $v0, ($v1)
/* 0531A0 800AAF50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0531A4 800AAF54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0531A8 800AAF58 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0531AC 800AAF5C 10400008 */  beqz  $v0, .L800AAF80_ovl1
/* 0531B0 800AAF60 AFA60030 */   sw    $a2, 0x30($sp)
/* 0531B4 800AAF64 34440002 */  ori   $a0, $v0, 2
/* 0531B8 800AAF68 AFA3001C */  sw    $v1, 0x1c($sp)
/* 0531BC 800AAF6C 0C02A15E */  jal   func_800A8578
/* 0531C0 800AAF70 AFA70020 */   sw    $a3, 0x20($sp)
/* 0531C4 800AAF74 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0531C8 800AAF78 8FA70020 */  lw    $a3, 0x20($sp)
/* 0531CC 800AAF7C AC600000 */  sw    $zero, ($v1)
.L800AAF80_ovl1:
/* 0531D0 800AAF80 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0531D4 800AAF84 AFA3001C */  sw    $v1, 0x1c($sp)
/* 0531D8 800AAF88 0C02A53D */  jal   func_800A94F4
/* 0531DC 800AAF8C AFA70020 */   sw    $a3, 0x20($sp)
/* 0531E0 800AAF90 8FA3001C */  lw    $v1, 0x1c($sp)
/* 0531E4 800AAF94 8FA70020 */  lw    $a3, 0x20($sp)
/* 0531E8 800AAF98 3C04800D */  lui   $a0, 0x800d
/* 0531EC 800AAF9C AC620000 */  sw    $v0, ($v1)
/* 0531F0 800AAFA0 00872021 */  addu  $a0, $a0, $a3
/* 0531F4 800AAFA4 8C8479D8 */  lw    $a0, 0x79d8($a0)
/* 0531F8 800AAFA8 8C450000 */  lw    $a1, ($v0)
/* 0531FC 800AAFAC 0C003F8B */  jal   func_8000FE2C_ovl1
/* 053200 800AAFB0 8FA60030 */   lw    $a2, 0x30($sp)
/* 053204 800AAFB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 053208 800AAFB8 27BD0028 */  addiu $sp, $sp, 0x28
/* 05320C 800AAFBC 03E00008 */  jr    $ra
/* 053210 800AAFC0 00000000 */   nop   
.type func_800AAF34, @function
.size func_800AAF34, . - func_800AAF34
