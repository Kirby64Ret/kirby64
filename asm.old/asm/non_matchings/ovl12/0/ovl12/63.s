glabel func_801DDFB4_ovl12 # 63
/* 002DB4 801DDFB4 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 002DB8 801DDFB8 8C42A7C4 */  lw          $v0, %lo(D_8004A7C4)($v0)
/* 002DBC 801DDFBC 3C07800F */  lui         $a3, %hi(D_800EA520)
/* 002DC0 801DDFC0 24E7A520 */  addiu       $a3, $a3, %lo(D_800EA520)
/* 002DC4 801DDFC4 8C4F0000 */  lw          $t7, 0x0($v0)
/* 002DC8 801DDFC8 240E001E */  addiu       $t6, $zero, 0x1E
/* 002DCC 801DDFCC 3C0A8013 */  lui         $t2, %hi(D_80129114)
/* 002DD0 801DDFD0 000FC080 */  sll         $t8, $t7, 2
/* 002DD4 801DDFD4 00F8C821 */  addu        $t9, $a3, $t8
/* 002DD8 801DDFD8 AF2E0000 */  sw          $t6, 0x0($t9)
/* 002DDC 801DDFDC 8C430000 */  lw          $v1, 0x0($v0)
/* 002DE0 801DDFE0 8D4A9114 */  lw          $t2, %lo(D_80129114)($t2)
/* 002DE4 801DDFE4 3C0C800E */  lui         $t4, %hi(D_800E5F90)
/* 002DE8 801DDFE8 00031880 */  sll         $v1, $v1, 2
/* 002DEC 801DDFEC 01836021 */  addu        $t4, $t4, $v1
/* 002DF0 801DDFF0 8D8C5F90 */  lw          $t4, %lo(D_800E5F90)($t4)
/* 002DF4 801DDFF4 8D4B0004 */  lw          $t3, 0x4($t2)
/* 002DF8 801DDFF8 3C01801E */  lui         $at, %hi(D_801E2D88_ovl12)
/* 002DFC 801DDFFC 000C6900 */  sll         $t5, $t4, 4
/* 002E00 801DE000 016D7821 */  addu        $t7, $t3, $t5
/* 002E04 801DE004 8DE40004 */  lw          $a0, 0x4($t7)
/* 002E08 801DE008 C4242D88 */  lwc1        $f4, %lo(D_801E2D88_ovl12)($at)
/* 002E0C 801DE00C 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 002E10 801DE010 C482000C */  lwc1        $f2, 0xC($a0)
/* 002E14 801DE014 44813000 */  mtc1        $at, $f6
/* 002E18 801DE018 3C05800D */  lui         $a1, %hi(D_800D70B4)
/* 002E1C 801DE01C 46022003 */  div.s       $f0, $f4, $f2
/* 002E20 801DE020 8CA570B4 */  lw          $a1, %lo(D_800D70B4)($a1)
/* 002E24 801DE024 3C08800E */  lui         $t0, %hi(D_800E6A10)
/* 002E28 801DE028 25086A10 */  addiu       $t0, $t0, %lo(D_800E6A10)
/* 002E2C 801DE02C 00052880 */  sll         $a1, $a1, 2
/* 002E30 801DE030 0105C021 */  addu        $t8, $t0, $a1
/* 002E34 801DE034 C7120000 */  lwc1        $f18, 0x0($t8)
/* 002E38 801DE038 01037021 */  addu        $t6, $t0, $v1
/* 002E3C 801DE03C 3C014120 */  lui         $at, (0x41200000 >> 16)
/* 002E40 801DE040 E5D20000 */  swc1        $f18, 0x0($t6)
/* 002E44 801DE044 8C430000 */  lw          $v1, 0x0($v0)
/* 002E48 801DE048 44818000 */  mtc1        $at, $f16
/* 002E4C 801DE04C 3C09800E */  lui         $t1, %hi(D_800E64D0)
/* 002E50 801DE050 00031880 */  sll         $v1, $v1, 2
/* 002E54 801DE054 00E35021 */  addu        $t2, $a3, $v1
/* 002E58 801DE058 8D4C0000 */  lw          $t4, 0x0($t2)
/* 002E5C 801DE05C 0103C821 */  addu        $t9, $t0, $v1
/* 002E60 801DE060 C7240000 */  lwc1        $f4, 0x0($t9)
/* 002E64 801DE064 252964D0 */  addiu       $t1, $t1, %lo(D_800E64D0)
/* 002E68 801DE068 01235821 */  addu        $t3, $t1, $v1
/* 002E6C 801DE06C 0125C021 */  addu        $t8, $t1, $a1
/* 002E70 801DE070 3C01800E */  lui         $at, %hi(D_800E6690)
/* 002E74 801DE074 46023203 */  div.s       $f8, $f6, $f2
/* 002E78 801DE078 448C3000 */  mtc1        $t4, $f6
/* 002E7C 801DE07C 46080283 */  div.s       $f10, $f0, $f8
/* 002E80 801DE080 46803220 */  cvt.s.w     $f8, $f6
/* 002E84 801DE084 46105302 */  mul.s       $f12, $f10, $f16
/* 002E88 801DE088 46086283 */  div.s       $f10, $f12, $f8
/* 002E8C 801DE08C 460A2402 */  mul.s       $f16, $f4, $f10
/* 002E90 801DE090 44802000 */  mtc1        $zero, $f4
/* 002E94 801DE094 E5700000 */  swc1        $f16, 0x0($t3)
/* 002E98 801DE098 8C4D0000 */  lw          $t5, 0x0($v0)
/* 002E9C 801DE09C C7060000 */  lwc1        $f6, 0x0($t8)
/* 002EA0 801DE0A0 000D7880 */  sll         $t7, $t5, 2
/* 002EA4 801DE0A4 012F3021 */  addu        $a2, $t1, $t7
/* 002EA8 801DE0A8 C4D20000 */  lwc1        $f18, 0x0($a2)
/* 002EAC 801DE0AC 46069200 */  add.s       $f8, $f18, $f6
/* 002EB0 801DE0B0 E4C80000 */  swc1        $f8, 0x0($a2)
/* 002EB4 801DE0B4 8C4E0000 */  lw          $t6, 0x0($v0)
/* 002EB8 801DE0B8 000EC880 */  sll         $t9, $t6, 2
/* 002EBC 801DE0BC 00390821 */  addu        $at, $at, $t9
/* 002EC0 801DE0C0 E4246690 */  swc1        $f4, %lo(D_800E6690)($at)
/* 002EC4 801DE0C4 8C4A0000 */  lw          $t2, 0x0($v0)
/* 002EC8 801DE0C8 3C01801E */  lui         $at, %hi(D_801E2D8C_ovl12)
/* 002ECC 801DE0CC C42A2D8C */  lwc1        $f10, %lo(D_801E2D8C_ovl12)($at)
/* 002ED0 801DE0D0 3C01800E */  lui         $at, %hi(D_800E6850)
/* 002ED4 801DE0D4 000A6080 */  sll         $t4, $t2, 2
/* 002ED8 801DE0D8 002C0821 */  addu        $at, $at, $t4
/* 002EDC 801DE0DC 03E00008 */  jr          $ra
/* 002EE0 801DE0E0 E42A6850 */   swc1       $f10, %lo(D_800E6850)($at)
.type func_801DDFB4_ovl12, @function
.size func_801DDFB4_ovl12, . - func_801DDFB4_ovl12

.section .late_rodata

glabel D_801E2D88_ovl12
/* 007B88 801E2D88 */ .word 0x41851EB8

glabel D_801E2D8C_ovl12
/* 007B8C 801E2D8C */ .word 0x477FFF00
