glabel func_80219E0C_ovl9
/* 1C7E5C 80219E0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1C7E60 80219E10 10A00005 */  beqz       $a1, .L80219E28_ovl9
/* 1C7E64 80219E14 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1C7E68 80219E18 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1C7E6C 80219E1C 44811000 */  mtc1       $at, $f2
/* 1C7E70 80219E20 10000005 */  b          .L80219E38_ovl9
/* 1C7E74 80219E24 24010001 */   addiu     $at, $zero, 0x1
.L80219E28_ovl9:
/* 1C7E78 80219E28 3C014140 */  lui        $at, (0x41400000 >> 16)
/* 1C7E7C 80219E2C 44811000 */  mtc1       $at, $f2
/* 1C7E80 80219E30 00000000 */  nop
/* 1C7E84 80219E34 24010001 */  addiu      $at, $zero, 0x1
.L80219E38_ovl9:
/* 1C7E88 80219E38 1081000C */  beq        $a0, $at, .L80219E6C_ovl9
/* 1C7E8C 80219E3C 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* 1C7E90 80219E40 24010002 */  addiu      $at, $zero, 0x2
/* 1C7E94 80219E44 10810034 */  beq        $a0, $at, .L80219F18_ovl9
/* 1C7E98 80219E48 3C0C8005 */   lui       $t4, %hi(D_8004A7C4)
/* 1C7E9C 80219E4C 24010003 */  addiu      $at, $zero, 0x3
/* 1C7EA0 80219E50 10810039 */  beq        $a0, $at, .L80219F38_ovl9
/* 1C7EA4 80219E54 3C0F8005 */   lui       $t7, %hi(D_8004A7C4)
/* 1C7EA8 80219E58 24010004 */  addiu      $at, $zero, 0x4
/* 1C7EAC 80219E5C 10810036 */  beq        $a0, $at, .L80219F38_ovl9
/* 1C7EB0 80219E60 00000000 */   nop
/* 1C7EB4 80219E64 1000003F */  b          .L80219F64_ovl9
/* 1C7EB8 80219E68 8FBF0014 */   lw        $ra, 0x14($sp)
.L80219E6C_ovl9:
/* 1C7EBC 80219E6C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 1C7EC0 80219E70 3C01800F */  lui        $at, %hi(D_800EC660)
/* 1C7EC4 80219E74 44802000 */  mtc1       $zero, $f4
/* 1C7EC8 80219E78 8DC20000 */  lw         $v0, 0x0($t6)
/* 1C7ECC 80219E7C 00021080 */  sll        $v0, $v0, 2
/* 1C7ED0 80219E80 00220821 */  addu       $at, $at, $v0
/* 1C7ED4 80219E84 C42CC660 */  lwc1       $f12, %lo(D_800EC660)($at)
/* 1C7ED8 80219E88 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7EDC 80219E8C 00220821 */  addu       $at, $at, $v0
/* 1C7EE0 80219E90 460C2032 */  c.eq.s     $f4, $f12
/* 1C7EE4 80219E94 00000000 */  nop
/* 1C7EE8 80219E98 45000003 */  bc1f       .L80219EA8_ovl9
/* 1C7EEC 80219E9C 00000000 */   nop
/* 1C7EF0 80219EA0 1000002F */  b          .L80219F60_ovl9
/* 1C7EF4 80219EA4 E4223210 */   swc1      $f2, %lo(D_800E3210)($at)
.L80219EA8_ovl9:
/* 1C7EF8 80219EA8 0C00B5B8 */  jal        sinf
/* 1C7EFC 80219EAC E7A2001C */   swc1      $f2, 0x1C($sp)
/* 1C7F00 80219EB0 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* 1C7F04 80219EB4 46000187 */  neg.s      $f6, $f0
/* 1C7F08 80219EB8 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1C7F0C 80219EBC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1C7F10 80219EC0 46023202 */  mul.s      $f8, $f6, $f2
/* 1C7F14 80219EC4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C7F18 80219EC8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1C7F1C 80219ECC 000FC080 */  sll        $t8, $t7, 2
/* 1C7F20 80219ED0 00380821 */  addu       $at, $at, $t8
/* 1C7F24 80219ED4 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
/* 1C7F28 80219ED8 8C590000 */  lw         $t9, 0x0($v0)
/* 1C7F2C 80219EDC 3C01800F */  lui        $at, %hi(D_800EC660)
/* 1C7F30 80219EE0 00194080 */  sll        $t0, $t9, 2
/* 1C7F34 80219EE4 00280821 */  addu       $at, $at, $t0
/* 1C7F38 80219EE8 0C00D604 */  jal        cosf
/* 1C7F3C 80219EEC C42CC660 */   lwc1      $f12, %lo(D_800EC660)($at)
/* 1C7F40 80219EF0 C7A2001C */  lwc1       $f2, 0x1C($sp)
/* 1C7F44 80219EF4 3C098005 */  lui        $t1, %hi(D_8004A7C4)
/* 1C7F48 80219EF8 8D29A7C4 */  lw         $t1, %lo(D_8004A7C4)($t1)
/* 1C7F4C 80219EFC 46020282 */  mul.s      $f10, $f0, $f2
/* 1C7F50 80219F00 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7F54 80219F04 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1C7F58 80219F08 000A5880 */  sll        $t3, $t2, 2
/* 1C7F5C 80219F0C 002B0821 */  addu       $at, $at, $t3
/* 1C7F60 80219F10 10000013 */  b          .L80219F60_ovl9
/* 1C7F64 80219F14 E42A3210 */   swc1      $f10, %lo(D_800E3210)($at)
.L80219F18_ovl9:
/* 1C7F68 80219F18 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1C7F6C 80219F1C 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C7F70 80219F20 46001407 */  neg.s      $f16, $f2
/* 1C7F74 80219F24 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1C7F78 80219F28 000D7080 */  sll        $t6, $t5, 2
/* 1C7F7C 80219F2C 002E0821 */  addu       $at, $at, $t6
/* 1C7F80 80219F30 1000000B */  b          .L80219F60_ovl9
/* 1C7F84 80219F34 E4303210 */   swc1      $f16, %lo(D_800E3210)($at)
.L80219F38_ovl9:
/* 1C7F88 80219F38 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* 1C7F8C 80219F3C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C7F90 80219F40 8DE20000 */  lw         $v0, 0x0($t7)
/* 1C7F94 80219F44 00021080 */  sll        $v0, $v0, 2
/* 1C7F98 80219F48 00220821 */  addu       $at, $at, $v0
/* 1C7F9C 80219F4C C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* 1C7FA0 80219F50 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1C7FA4 80219F54 00220821 */  addu       $at, $at, $v0
/* 1C7FA8 80219F58 46029102 */  mul.s      $f4, $f18, $f2
/* 1C7FAC 80219F5C E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
.L80219F60_ovl9:
/* 1C7FB0 80219F60 8FBF0014 */  lw         $ra, 0x14($sp)
.L80219F64_ovl9:
/* 1C7FB4 80219F64 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1C7FB8 80219F68 03E00008 */  jr         $ra
/* 1C7FBC 80219F6C 00000000 */   nop
