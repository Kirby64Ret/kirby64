glabel func_801DB228_ovl14 # 1
/* 1FDE18 801DB228 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FDE1C 801DB22C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FDE20 801DB230 0C077255 */  jal         func_801DC954_ovl14
/* 1FDE24 801DB234 AFA40018 */   sw         $a0, 0x18($sp)
/* 1FDE28 801DB238 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FDE2C 801DB23C 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FDE30 801DB240 3C01800F */  lui         $at, %hi(D_800EC120)
/* 1FDE34 801DB244 3C18800B */  lui         $t8, %hi(D_800B7790)
/* 1FDE38 801DB248 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FDE3C 801DB24C 27187790 */  addiu       $t8, $t8, %lo(D_800B7790)
/* 1FDE40 801DB250 3C04801E */  lui         $a0, %hi(func_801DB3B0_ovl14)
/* 1FDE44 801DB254 000E7880 */  sll         $t7, $t6, 2
/* 1FDE48 801DB258 002F0821 */  addu        $at, $at, $t7
/* 1FDE4C 801DB25C AC22C120 */  sw          $v0, %lo(D_800EC120)($at)
/* 1FDE50 801DB260 8C790000 */  lw          $t9, 0x0($v1)
/* 1FDE54 801DB264 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1FDE58 801DB268 2484B3B0 */  addiu       $a0, $a0, %lo(func_801DB3B0_ovl14)
/* 1FDE5C 801DB26C 00194080 */  sll         $t0, $t9, 2
/* 1FDE60 801DB270 00280821 */  addu        $at, $at, $t0
/* 1FDE64 801DB274 0C068354 */  jal         func_801A0D50
/* 1FDE68 801DB278 AC38EF90 */   sw         $t8, %lo(D_800DEF90)($at)
/* 1FDE6C 801DB27C 3C040001 */  lui         $a0, (0x1006B >> 16)
/* 1FDE70 801DB280 0C02A5D8 */  jal         func_800A9760
/* 1FDE74 801DB284 3484006B */   ori        $a0, $a0, (0x1006B & 0xFFFF)
/* 1FDE78 801DB288 0C0772D2 */  jal         func_801DCB48_ovl14
/* 1FDE7C 801DB28C 00000000 */   nop
/* 1FDE80 801DB290 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1FDE84 801DB294 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1FDE88 801DB298 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1FDE8C 801DB29C 24090001 */  addiu       $t1, $zero, 0x1
/* 1FDE90 801DB2A0 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FDE94 801DB2A4 44802000 */  mtc1        $zero, $f4
/* 1FDE98 801DB2A8 3C19800E */  lui         $t9, %hi(gEntitiesNextPosYArray)
/* 1FDE9C 801DB2AC 000A5880 */  sll         $t3, $t2, 2
/* 1FDEA0 801DB2B0 002B0821 */  addu        $at, $at, $t3
/* 1FDEA4 801DB2B4 AC298E60 */  sw          $t1, %lo(D_800E8E60)($at)
/* 1FDEA8 801DB2B8 8C6C0000 */  lw          $t4, 0x0($v1)
/* 1FDEAC 801DB2BC 3C01800E */  lui         $at, %hi(gEntitiesAngleYArray)
/* 1FDEB0 801DB2C0 27392790 */  addiu       $t9, $t9, %lo(gEntitiesNextPosYArray)
/* 1FDEB4 801DB2C4 000C6880 */  sll         $t5, $t4, 2
/* 1FDEB8 801DB2C8 002D0821 */  addu        $at, $at, $t5
/* 1FDEBC 801DB2CC E42441D0 */  swc1        $f4, %lo(gEntitiesAngleYArray)($at)
/* 1FDEC0 801DB2D0 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1FDEC4 801DB2D4 3C0141A0 */  lui         $at, (0x41A00000 >> 16)
/* 1FDEC8 801DB2D8 44814000 */  mtc1        $at, $f8
/* 1FDECC 801DB2DC 000E7880 */  sll         $t7, $t6, 2
/* 1FDED0 801DB2E0 01F91021 */  addu        $v0, $t7, $t9
/* 1FDED4 801DB2E4 C4460000 */  lwc1        $f6, 0x0($v0)
/* 1FDED8 801DB2E8 3C0A800E */  lui         $t2, %hi(gEntitiesNextPosZArray)
/* 1FDEDC 801DB2EC 254A2950 */  addiu       $t2, $t2, %lo(gEntitiesNextPosZArray)
/* 1FDEE0 801DB2F0 46083281 */  sub.s       $f10, $f6, $f8
/* 1FDEE4 801DB2F4 3C014448 */  lui         $at, (0x44480000 >> 16)
/* 1FDEE8 801DB2F8 44819000 */  mtc1        $at, $f18
/* 1FDEEC 801DB2FC 3C01800F */  lui         $at, %hi(D_800E98E0)
/* 1FDEF0 801DB300 E44A0000 */  swc1        $f10, 0x0($v0)
/* 1FDEF4 801DB304 8C780000 */  lw          $t8, 0x0($v1)
/* 1FDEF8 801DB308 24090002 */  addiu       $t1, $zero, 0x2
/* 1FDEFC 801DB30C 44803000 */  mtc1        $zero, $f6
/* 1FDF00 801DB310 00184080 */  sll         $t0, $t8, 2
/* 1FDF04 801DB314 010A2821 */  addu        $a1, $t0, $t2
/* 1FDF08 801DB318 C4B00000 */  lwc1        $f16, 0x0($a1)
/* 1FDF0C 801DB31C 8FA40018 */  lw          $a0, 0x18($sp)
/* 1FDF10 801DB320 46128101 */  sub.s       $f4, $f16, $f18
/* 1FDF14 801DB324 E4A40000 */  swc1        $f4, 0x0($a1)
/* 1FDF18 801DB328 8C6B0000 */  lw          $t3, 0x0($v1)
/* 1FDF1C 801DB32C 000B6080 */  sll         $t4, $t3, 2
/* 1FDF20 801DB330 002C0821 */  addu        $at, $at, $t4
/* 1FDF24 801DB334 AC2998E0 */  sw          $t1, %lo(D_800E98E0)($at)
/* 1FDF28 801DB338 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1FDF2C 801DB33C 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1FDF30 801DB340 000D7080 */  sll         $t6, $t5, 2
/* 1FDF34 801DB344 002E0821 */  addu        $at, $at, $t6
/* 1FDF38 801DB348 AC209AA0 */  sw          $zero, %lo(D_800E9AA0)($at)
/* 1FDF3C 801DB34C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1FDF40 801DB350 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 1FDF44 801DB354 000FC880 */  sll         $t9, $t7, 2
/* 1FDF48 801DB358 00390821 */  addu        $at, $at, $t9
/* 1FDF4C 801DB35C AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 1FDF50 801DB360 8C780000 */  lw          $t8, 0x0($v1)
/* 1FDF54 801DB364 3C01800F */  lui         $at, %hi(D_800EA520)
/* 1FDF58 801DB368 00184080 */  sll         $t0, $t8, 2
/* 1FDF5C 801DB36C 00280821 */  addu        $at, $at, $t0
/* 1FDF60 801DB370 AC20A520 */  sw          $zero, %lo(D_800EA520)($at)
/* 1FDF64 801DB374 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1FDF68 801DB378 3C01800F */  lui         $at, %hi(D_800EC660)
/* 1FDF6C 801DB37C 000A5880 */  sll         $t3, $t2, 2
/* 1FDF70 801DB380 002B0821 */  addu        $at, $at, $t3
/* 1FDF74 801DB384 E426C660 */  swc1        $f6, %lo(D_800EC660)($at)
/* 1FDF78 801DB388 8C690000 */  lw          $t1, 0x0($v1)
/* 1FDF7C 801DB38C 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1FDF80 801DB390 00096080 */  sll         $t4, $t1, 2
/* 1FDF84 801DB394 002C0821 */  addu        $at, $at, $t4
/* 1FDF88 801DB398 0C076CEC */  jal         func_801DB3B0_ovl14
/* 1FDF8C 801DB39C AC20DC50 */   sw         $zero, %lo(gEntityVtableIndexArray)($at)
/* 1FDF90 801DB3A0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FDF94 801DB3A4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FDF98 801DB3A8 03E00008 */  jr          $ra
/* 1FDF9C 801DB3AC 00000000 */   nop
.type func_801DB228_ovl14, @function
.size func_801DB228_ovl14, . - func_801DB228_ovl14
