glabel func_801E0DF8_ovl12 # 117
/* 005BF8 801E0DF8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 005BFC 801E0DFC AFB00014 */  sw          $s0, 0x14($sp)
/* 005C00 801E0E00 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 005C04 801E0E04 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 005C08 801E0E08 8E030000 */  lw          $v1, 0x0($s0)
/* 005C0C 801E0E0C AFBF001C */  sw          $ra, 0x1C($sp)
/* 005C10 801E0E10 AFB10018 */  sw          $s1, 0x18($sp)
/* 005C14 801E0E14 AFA40020 */  sw          $a0, 0x20($sp)
/* 005C18 801E0E18 8C6F0000 */  lw          $t7, 0x0($v1)
/* 005C1C 801E0E1C 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 005C20 801E0E20 240E0007 */  addiu       $t6, $zero, 0x7
/* 005C24 801E0E24 000FC080 */  sll         $t8, $t7, 2
/* 005C28 801E0E28 00380821 */  addu        $at, $at, $t8
/* 005C2C 801E0E2C AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 005C30 801E0E30 8C790000 */  lw          $t9, 0x0($v1)
/* 005C34 801E0E34 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 005C38 801E0E38 44802000 */  mtc1        $zero, $f4
/* 005C3C 801E0E3C 00194080 */  sll         $t0, $t9, 2
/* 005C40 801E0E40 00280821 */  addu        $at, $at, $t0
/* 005C44 801E0E44 AC209E20 */  sw          $zero, %lo(D_800E9E20)($at)
/* 005C48 801E0E48 8C690000 */  lw          $t1, 0x0($v1)
/* 005C4C 801E0E4C 3C05800E */  lui         $a1, %hi(D_800E6690)
/* 005C50 801E0E50 24A56690 */  addiu       $a1, $a1, %lo(D_800E6690)
/* 005C54 801E0E54 00095080 */  sll         $t2, $t1, 2
/* 005C58 801E0E58 00AA5821 */  addu        $t3, $a1, $t2
/* 005C5C 801E0E5C E5640000 */  swc1        $f4, 0x0($t3)
/* 005C60 801E0E60 8C620000 */  lw          $v0, 0x0($v1)
/* 005C64 801E0E64 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 005C68 801E0E68 3C06800E */  lui         $a2, %hi(D_800E6850)
/* 005C6C 801E0E6C 00021080 */  sll         $v0, $v0, 2
/* 005C70 801E0E70 00A26021 */  addu        $t4, $a1, $v0
/* 005C74 801E0E74 C5860000 */  lwc1        $f6, 0x0($t4)
/* 005C78 801E0E78 00220821 */  addu        $at, $at, $v0
/* 005C7C 801E0E7C 24C66850 */  addiu       $a2, $a2, %lo(D_800E6850)
/* 005C80 801E0E80 E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 005C84 801E0E84 8C6D0000 */  lw          $t5, 0x0($v1)
/* 005C88 801E0E88 3C01801E */  lui         $at, %hi(D_801E2DC4_ovl12)
/* 005C8C 801E0E8C C4282DC4 */  lwc1        $f8, %lo(D_801E2DC4_ovl12)($at)
/* 005C90 801E0E90 000D7880 */  sll         $t7, $t5, 2
/* 005C94 801E0E94 00CF7021 */  addu        $t6, $a2, $t7
/* 005C98 801E0E98 E5C80000 */  swc1        $f8, 0x0($t6)
/* 005C9C 801E0E9C 8C620000 */  lw          $v0, 0x0($v1)
/* 005CA0 801E0EA0 3C11800F */  lui         $s1, %hi(D_800E9AA0)
/* 005CA4 801E0EA4 26319AA0 */  addiu       $s1, $s1, %lo(D_800E9AA0)
/* 005CA8 801E0EA8 00021080 */  sll         $v0, $v0, 2
/* 005CAC 801E0EAC 0222C021 */  addu        $t8, $s1, $v0
/* 005CB0 801E0EB0 8F190000 */  lw          $t9, 0x0($t8)
/* 005CB4 801E0EB4 1320000E */  beqz        $t9, .L801E0EF0
/* 005CB8 801E0EB8 00000000 */   nop
.L801E0EBC:
/* 005CBC 801E0EBC 0C002DAF */  jal         finish_current_thread
/* 005CC0 801E0EC0 24040001 */   addiu      $a0, $zero, 0x1
/* 005CC4 801E0EC4 8E030000 */  lw          $v1, 0x0($s0)
/* 005CC8 801E0EC8 8C620000 */  lw          $v0, 0x0($v1)
/* 005CCC 801E0ECC 00021080 */  sll         $v0, $v0, 2
/* 005CD0 801E0ED0 02224021 */  addu        $t0, $s1, $v0
/* 005CD4 801E0ED4 8D090000 */  lw          $t1, 0x0($t0)
/* 005CD8 801E0ED8 1520FFF8 */  bnez        $t1, .L801E0EBC
/* 005CDC 801E0EDC 00000000 */   nop
/* 005CE0 801E0EE0 3C06800E */  lui         $a2, %hi(D_800E6850)
/* 005CE4 801E0EE4 3C05800E */  lui         $a1, %hi(D_800E6690)
/* 005CE8 801E0EE8 24A56690 */  addiu       $a1, $a1, %lo(D_800E6690)
/* 005CEC 801E0EEC 24C66850 */  addiu       $a2, $a2, %lo(D_800E6850)
.L801E0EF0:
/* 005CF0 801E0EF0 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 005CF4 801E0EF4 24040001 */  addiu       $a0, $zero, 0x1
/* 005CF8 801E0EF8 00220821 */  addu        $at, $at, $v0
/* 005CFC 801E0EFC AC249E20 */  sw          $a0, %lo(D_800E9E20)($at)
/* 005D00 801E0F00 8C6A0000 */  lw          $t2, 0x0($v1)
/* 005D04 801E0F04 3C01800D */  lui         $at, %hi(D_800D70A0)
/* 005D08 801E0F08 44805000 */  mtc1        $zero, $f10
/* 005D0C 801E0F0C 000A5880 */  sll         $t3, $t2, 2
/* 005D10 801E0F10 022B6021 */  addu        $t4, $s1, $t3
/* 005D14 801E0F14 AD840000 */  sw          $a0, 0x0($t4)
/* 005D18 801E0F18 AC2470A0 */  sw          $a0, %lo(D_800D70A0)($at)
/* 005D1C 801E0F1C 8C6D0000 */  lw          $t5, 0x0($v1)
/* 005D20 801E0F20 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 005D24 801E0F24 44803000 */  mtc1        $zero, $f6
/* 005D28 801E0F28 000D7880 */  sll         $t7, $t5, 2
/* 005D2C 801E0F2C 002F0821 */  addu        $at, $at, $t7
/* 005D30 801E0F30 E42A64D0 */  swc1        $f10, %lo(D_800E64D0)($at)
/* 005D34 801E0F34 8C620000 */  lw          $v0, 0x0($v1)
/* 005D38 801E0F38 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 005D3C 801E0F3C 00021080 */  sll         $v0, $v0, 2
/* 005D40 801E0F40 00220821 */  addu        $at, $at, $v0
/* 005D44 801E0F44 C4306A10 */  lwc1        $f16, %lo(D_800E6A10)($at)
/* 005D48 801E0F48 3C013F00 */  lui         $at, (0x3F000000 >> 16)
/* 005D4C 801E0F4C 44819000 */  mtc1        $at, $f18
/* 005D50 801E0F50 00A27021 */  addu        $t6, $a1, $v0
/* 005D54 801E0F54 3C01800F */  lui         $at, %hi(D_800EAA60)
/* 005D58 801E0F58 46128102 */  mul.s       $f4, $f16, $f18
/* 005D5C 801E0F5C E5C40000 */  swc1        $f4, 0x0($t6)
/* 005D60 801E0F60 8C620000 */  lw          $v0, 0x0($v1)
/* 005D64 801E0F64 00021080 */  sll         $v0, $v0, 2
/* 005D68 801E0F68 00220821 */  addu        $at, $at, $v0
/* 005D6C 801E0F6C C420AA60 */  lwc1        $f0, %lo(D_800EAA60)($at)
/* 005D70 801E0F70 00C2C821 */  addu        $t9, $a2, $v0
/* 005D74 801E0F74 00C2C021 */  addu        $t8, $a2, $v0
/* 005D78 801E0F78 4606003C */  c.lt.s      $f0, $f6
/* 005D7C 801E0F7C 00000000 */  nop
/* 005D80 801E0F80 45020005 */  bc1fl       .L801E0F98
/* 005D84 801E0F84 E7200000 */   swc1       $f0, 0x0($t9)
/* 005D88 801E0F88 46000207 */  neg.s       $f8, $f0
/* 005D8C 801E0F8C 10000002 */  b           .L801E0F98
/* 005D90 801E0F90 E7080000 */   swc1       $f8, 0x0($t8)
/* 005D94 801E0F94 E7200000 */  swc1        $f0, 0x0($t9)
.L801E0F98:
/* 005D98 801E0F98 8C690000 */  lw          $t1, 0x0($v1)
/* 005D9C 801E0F9C 3C01800F */  lui         $at, %hi(D_800E9720)
/* 005DA0 801E0FA0 2408003C */  addiu       $t0, $zero, 0x3C
/* 005DA4 801E0FA4 00095080 */  sll         $t2, $t1, 2
/* 005DA8 801E0FA8 002A0821 */  addu        $at, $at, $t2
/* 005DAC 801E0FAC 0C02BE85 */  jal         func_800AFA14
/* 005DB0 801E0FB0 AC289720 */   sw         $t0, %lo(D_800E9720)($at)
/* 005DB4 801E0FB4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 005DB8 801E0FB8 8FB00014 */  lw          $s0, 0x14($sp)
/* 005DBC 801E0FBC 8FB10018 */  lw          $s1, 0x18($sp)
/* 005DC0 801E0FC0 03E00008 */  jr          $ra
/* 005DC4 801E0FC4 27BD0020 */   addiu      $sp, $sp, 0x20
.type func_801E0DF8_ovl12, @function

.size func_801E0DF8_ovl12, . - func_801E0DF8_ovl12
.section .late_rodata
glabel D_801E2DC4_ovl12
/* 007BC4 801E2DC4 */ .word 0x477FFF00
