glabel func_80153E1C_ovl6
/* 1381AC 80153E1C 3C07800E */  lui        $a3, %hi(D_800DE350 + 0xFC)
.L80153E20_ovl3:
/* 1381B0 80153E20 8CE7E44C */  lw         $a3, %lo(D_800DE350 + 0xFC)($a3)
/* 1381B4 80153E24 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1381B8 80153E28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1381BC 80153E2C 14E00030 */  bnez       $a3, .L80153EF0_ovl6
/* 1381C0 80153E30 AFA40020 */   sw        $a0, 0x20($sp)
/* 1381C4 80153E34 3C028016 */  lui        $v0, %hi(D_8015A560_ovl6)
/* 1381C8 80153E38 2442A560 */  addiu      $v0, $v0, %lo(D_8015A560_ovl6)
/* 1381CC 80153E3C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1381D0 80153E40 3C0F8015 */  lui        $t7, %hi(D_80154E48_ovl6)
/* 1381D4 80153E44 25EF4E48 */  addiu      $t7, $t7, %lo(D_80154E48_ovl6)
/* 1381D8 80153E48 AC4F0000 */  sw         $t7, 0x0($v0)
.L80153E4C_ovl3:
/* 1381DC 80153E4C AFAE0018 */  sw         $t6, 0x18($sp)
/* 1381E0 80153E50 91F90002 */  lbu        $t9, 0x2($t7)
/* 1381E4 80153E54 00194080 */  sll        $t0, $t9, 2
/* 1381E8 80153E58 3C198015 */  lui        $t9, %hi(D_80154DC0_ovl6)
/* 1381EC 80153E5C 0328C821 */  addu       $t9, $t9, $t0
/* 1381F0 80153E60 8F394DC0 */  lw         $t9, %lo(D_80154DC0_ovl6)($t9)
/* 1381F4 80153E64 0320F809 */  jalr       $t9
/* 1381F8 80153E68 00000000 */   nop
.L80153E6C_ovl3:
/* 1381FC 80153E6C 3C028016 */  lui        $v0, %hi(D_8015A560_ovl6)
/* 138200 80153E70 2442A560 */  addiu      $v0, $v0, %lo(D_8015A560_ovl6)
/* 138204 80153E74 8C490000 */  lw         $t1, 0x0($v0)
/* 138208 80153E78 3C198015 */  lui        $t9, %hi(D_80154DC0_ovl6)
/* 13820C 80153E7C 252A0008 */  addiu      $t2, $t1, 0x8
/* 138210 80153E80 AC4A0000 */  sw         $t2, 0x0($v0)
/* 138214 80153E84 914C0002 */  lbu        $t4, 0x2($t2)
/* 138218 80153E88 000C6880 */  sll        $t5, $t4, 2
/* 13821C 80153E8C 032DC821 */  addu       $t9, $t9, $t5
/* 138220 80153E90 8F394DC0 */  lw         $t9, %lo(D_80154DC0_ovl6)($t9)
/* 138224 80153E94 0320F809 */  jalr       $t9
/* 138228 80153E98 00000000 */   nop
/* 13822C 80153E9C 8FAE0018 */  lw         $t6, 0x18($sp)
/* 138230 80153EA0 3C028016 */  lui        $v0, %hi(D_8015A560_ovl6)
/* 138234 80153EA4 2442A560 */  addiu      $v0, $v0, %lo(D_8015A560_ovl6)
/* 138238 80153EA8 3C07800E */  lui        $a3, %hi(D_800DE350 + 0xFC)
/* 13823C 80153EAC AC4E0000 */  sw         $t6, 0x0($v0)
/* 138240 80153EB0 8CE4E44C */  lw         $a0, %lo(D_800DE350 + 0xFC)($a3)
/* 138244 80153EB4 2405000C */  addiu      $a1, $zero, 0xC
/* 138248 80153EB8 00003025 */  or         $a2, $zero, $zero
.L80153EBC_ovl4:
/* 13824C 80153EBC 0C002A41 */  jal        omGMoveObjDLHead
/* 138250 80153EC0 AFA4001C */   sw        $a0, 0x1C($sp)
/* 138254 80153EC4 8FA7001C */  lw         $a3, 0x1C($sp)
.L80153EC8_ovl3:
/* 138258 80153EC8 3C0F8015 */  lui        $t7, %hi(func_80153DC8_ovl6)
/* 13825C 80153ECC 25EF3DC8 */  addiu      $t7, $t7, %lo(func_80153DC8_ovl6)
/* 138260 80153ED0 0C055229 */  jal        func_801548A4_ovl6
/* 138264 80153ED4 ACEF002C */   sw        $t7, 0x2C($a3)
/* 138268 80153ED8 8FB80020 */  lw         $t8, 0x20($sp)
/* 13826C 80153EDC 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x18)
/* 138270 80153EE0 24080001 */  addiu      $t0, $zero, 0x1
/* 138274 80153EE4 AC38A690 */  sw         $t8, %lo(gFrameBuffers + 0x18)($at)
/* 138278 80153EE8 3C018016 */  lui        $at, %hi(gFrameBuffers + 0x20)
/* 13827C 80153EEC AC28A698 */  sw         $t0, %lo(gFrameBuffers + 0x20)($at)
.L80153EF0_ovl6:
/* 138280 80153EF0 8FBF0014 */  lw         $ra, 0x14($sp)
.L80153EF4_ovl3:
/* 138284 80153EF4 27BD0020 */  addiu      $sp, $sp, 0x20
.L80153EF8_ovl3:
/* 138288 80153EF8 03E00008 */  jr         $ra
/* 13828C 80153EFC 00000000 */   nop
