glabel func_801E0B38_ovl17
/* 22BD28 801E0B38 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 22BD2C 801E0B3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 22BD30 801E0B40 AFA40020 */  sw         $a0, 0x20($sp)
.L801E0B44_ovl12:
/* 22BD34 801E0B44 AFA50024 */  sw         $a1, 0x24($sp)
.L801E0B48_ovl15:
/* 22BD38 801E0B48 2405001E */  addiu      $a1, $zero, 0x1E
.L801E0B4C_ovl12:
/* 22BD3C 801E0B4C 2404001A */  addiu      $a0, $zero, 0x1A
/* 22BD40 801E0B50 0C02BB02 */  jal        request_track_general
/* 22BD44 801E0B54 2406003C */   addiu     $a2, $zero, 0x3C
glabel func_801E0B58_ovl12
/* 22BD48 801E0B58 2401FFFF */  addiu      $at, $zero, -0x1
/* 22BD4C 801E0B5C 8FAC0020 */  lw         $t4, 0x20($sp)
/* 22BD50 801E0B60 14410006 */  bne        $v0, $at, .L801E0B7C_ovl17
/* 22BD54 801E0B64 00402825 */   or        $a1, $v0, $zero
/* 22BD58 801E0B68 3C04801E */  lui        $a0, %hi(D_801E55B0_ovl17)
/* 22BD5C 801E0B6C 0C02909C */  jal        print_error_stub
glabel D_801E0B70_ovl11
/* 22BD60 801E0B70 248455B0 */   addiu     $a0, $a0, %lo(D_801E55B0_ovl17)
/* 22BD64 801E0B74 10000058 */  b          .L801E0CD8_ovl17
/* 22BD68 801E0B78 00001025 */   or        $v0, $zero, $zero
.L801E0B7C_ovl17:
/* 22BD6C 801E0B7C 2841003C */  slti       $at, $v0, 0x3C
.L801E0B80_ovl15:
/* 22BD70 801E0B80 1420000A */  bnez       $at, .L801E0BAC_ovl17
/* 22BD74 801E0B84 00051880 */   sll       $v1, $a1, 2
.L801E0B88_ovl15:
/* 22BD78 801E0B88 3C04801E */  lui        $a0, %hi(func_801E55C0_ovl9 + 0xC)
/* 22BD7C 801E0B8C 248455CC */  addiu      $a0, $a0, %lo(func_801E55C0_ovl9 + 0xC)
/* 22BD80 801E0B90 0C02909C */  jal        print_error_stub
glabel func_801E0B94_ovl11
/* 22BD84 801E0B94 AFA5001C */   sw        $a1, 0x1C($sp)
/* 22BD88 801E0B98 8FA5001C */  lw         $a1, 0x1C($sp)
/* 22BD8C 801E0B9C 0C02C640 */  jal        func_800B1900
/* 22BD90 801E0BA0 30A4FFFF */   andi      $a0, $a1, 0xFFFF
/* 22BD94 801E0BA4 1000004C */  b          .L801E0CD8_ovl17
.L801E0BA8_ovl9:
/* 22BD98 801E0BA8 00001025 */   or        $v0, $zero, $zero
.L801E0BAC_ovl17:
/* 22BD9C 801E0BAC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
glabel D_801E0BB0_ovl11
/* 22BDA0 801E0BB0 00230821 */  addu       $at, $at, $v1
/* 22BDA4 801E0BB4 AC2CDC50 */  sw         $t4, %lo(gEntityVtableIndexArray)($at)
/* 22BDA8 801E0BB8 3C01800E */  lui        $at, %hi(D_800E76C0)
/* 22BDAC 801E0BBC 00250821 */  addu       $at, $at, $a1
/* 22BDB0 801E0BC0 240E00FF */  addiu      $t6, $zero, 0xFF
glabel D_801E0BC4_ovl11
/* 22BDB4 801E0BC4 A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
/* 22BDB8 801E0BC8 3C01800E */  lui        $at, %hi(D_800E7730)
.L801E0BCC_ovl15:
/* 22BDBC 801E0BCC 00250821 */  addu       $at, $at, $a1
.L801E0BD0_ovl14:
/* 22BDC0 801E0BD0 240F0004 */  addiu      $t7, $zero, 0x4
/* 22BDC4 801E0BD4 A02F7730 */  sb         $t7, %lo(D_800E7730)($at)
/* 22BDC8 801E0BD8 3C01800E */  lui        $at, %hi(D_800E77A0)
glabel func_801E0BDC_ovl14
/* 22BDCC 801E0BDC 0005C840 */  sll        $t9, $a1, 1
glabel D_801E0BE0_ovl11
/* 22BDD0 801E0BE0 00390821 */  addu       $at, $at, $t9
/* 22BDD4 801E0BE4 319800FF */  andi       $t8, $t4, 0xFF
.L801E0BE8_ovl15:
/* 22BDD8 801E0BE8 8FAD0024 */  lw         $t5, 0x24($sp)
/* 22BDDC 801E0BEC A43877A0 */  sh         $t8, %lo(D_800E77A0)($at)
/* 22BDE0 801E0BF0 3C048005 */  lui        $a0, %hi(D_8004A7C4)
.L801E0BF4_ovl12:
/* 22BDE4 801E0BF4 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
glabel func_801E0BF8_ovl9
/* 22BDE8 801E0BF8 3C01800E */  lui        $at, %hi(D_800E7880)
/* 22BDEC 801E0BFC 00250821 */  addu       $at, $at, $a1
/* 22BDF0 801E0C00 A02D7880 */  sb         $t5, %lo(D_800E7880)($at)
/* 22BDF4 801E0C04 8C8E0000 */  lw         $t6, 0x0($a0)
/* 22BDF8 801E0C08 3C06800E */  lui        $a2, %hi(gEntitiesNextPosXArray)
.L801E0C0C_ovl16:
/* 22BDFC 801E0C0C 24C625D0 */  addiu      $a2, $a2, %lo(gEntitiesNextPosXArray)
/* 22BE00 801E0C10 000E7880 */  sll        $t7, $t6, 2
/* 22BE04 801E0C14 00CFC021 */  addu       $t8, $a2, $t7
/* 22BE08 801E0C18 C7040000 */  lwc1       $f4, 0x0($t8)
/* 22BE0C 801E0C1C 00C3C821 */  addu       $t9, $a2, $v1
.L801E0C20_ovl11:
/* 22BE10 801E0C20 3C07800E */  lui        $a3, %hi(gEntitiesPosXArray)
glabel D_801E0C24_ovl11
/* 22BE14 801E0C24 E7240000 */  swc1       $f4, 0x0($t9)
glabel D_801E0C28_ovl11
/* 22BE18 801E0C28 8C8D0000 */  lw         $t5, 0x0($a0)
.L801E0C2C_ovl11:
/* 22BE1C 801E0C2C 24E72B10 */  addiu      $a3, $a3, %lo(gEntitiesPosXArray)
.L801E0C30_ovl16:
/* 22BE20 801E0C30 00E3C021 */  addu       $t8, $a3, $v1
.L801E0C34_ovl11:
/* 22BE24 801E0C34 000D7080 */  sll        $t6, $t5, 2
/* 22BE28 801E0C38 00EE7821 */  addu       $t7, $a3, $t6
.L801E0C3C_ovl15:
/* 22BE2C 801E0C3C C5E60000 */  lwc1       $f6, 0x0($t7)
glabel D_801E0C40_ovl11
/* 22BE30 801E0C40 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
glabel D_801E0C44_ovl11
/* 22BE34 801E0C44 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
glabel D_801E0C48_ovl11
/* 22BE38 801E0C48 E7060000 */  swc1       $f6, 0x0($t8)
.L801E0C4C_ovl15:
/* 22BE3C 801E0C4C 8C990000 */  lw         $t9, 0x0($a0)
glabel D_801E0C50_ovl11
/* 22BE40 801E0C50 01037821 */  addu       $t7, $t0, $v1
glabel func_801E0C54_ovl12
/* 22BE44 801E0C54 3C09800E */  lui        $t1, %hi(gEntitiesPosYArray)
/* 22BE48 801E0C58 00196880 */  sll        $t5, $t9, 2
/* 22BE4C 801E0C5C 010D7021 */  addu       $t6, $t0, $t5
glabel D_801E0C60_ovl11
/* 22BE50 801E0C60 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 22BE54 801E0C64 25292CD0 */  addiu      $t1, $t1, %lo(gEntitiesPosYArray)
/* 22BE58 801E0C68 01237021 */  addu       $t6, $t1, $v1
/* 22BE5C 801E0C6C E5E80000 */  swc1       $f8, 0x0($t7)
/* 22BE60 801E0C70 8C980000 */  lw         $t8, 0x0($a0)
/* 22BE64 801E0C74 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosZArray)
glabel func_801E0C78_ovl11
/* 22BE68 801E0C78 254A2950 */  addiu      $t2, $t2, %lo(gEntitiesNextPosZArray)
/* 22BE6C 801E0C7C 0018C880 */  sll        $t9, $t8, 2
/* 22BE70 801E0C80 01396821 */  addu       $t5, $t1, $t9
/* 22BE74 801E0C84 C5AA0000 */  lwc1       $f10, 0x0($t5)
/* 22BE78 801E0C88 01436821 */  addu       $t5, $t2, $v1
/* 22BE7C 801E0C8C 3C0B800E */  lui        $t3, %hi(gEntitiesPosZArray)
/* 22BE80 801E0C90 E5CA0000 */  swc1       $f10, 0x0($t6)
/* 22BE84 801E0C94 8C8F0000 */  lw         $t7, 0x0($a0)
/* 22BE88 801E0C98 256B2E90 */  addiu      $t3, $t3, %lo(gEntitiesPosZArray)
glabel func_801E0C9C_ovl15
/* 22BE8C 801E0C9C 3C01800F */  lui        $at, %hi(D_800E8E60)
/* 22BE90 801E0CA0 000FC080 */  sll        $t8, $t7, 2
/* 22BE94 801E0CA4 0158C821 */  addu       $t9, $t2, $t8
/* 22BE98 801E0CA8 C7300000 */  lwc1       $f16, 0x0($t9)
/* 22BE9C 801E0CAC 0163C821 */  addu       $t9, $t3, $v1
.L801E0CB0_ovl15:
/* 22BEA0 801E0CB0 00230821 */  addu       $at, $at, $v1
.L801E0CB4_ovl12:
/* 22BEA4 801E0CB4 E5B00000 */  swc1       $f16, 0x0($t5)
/* 22BEA8 801E0CB8 8C8E0000 */  lw         $t6, 0x0($a0)
/* 22BEAC 801E0CBC 240D0001 */  addiu      $t5, $zero, 0x1
/* 22BEB0 801E0CC0 00A01025 */  or         $v0, $a1, $zero
glabel func_801E0CC4_ovl9
/* 22BEB4 801E0CC4 000E7880 */  sll        $t7, $t6, 2
glabel func_801E0CC8_ovl16
/* 22BEB8 801E0CC8 016FC021 */  addu       $t8, $t3, $t7
/* 22BEBC 801E0CCC C7120000 */  lwc1       $f18, 0x0($t8)
/* 22BEC0 801E0CD0 E7320000 */  swc1       $f18, 0x0($t9)
/* 22BEC4 801E0CD4 AC2D8E60 */  sw         $t5, %lo(D_800E8E60)($at)
.L801E0CD8_ovl17:
/* 22BEC8 801E0CD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 22BECC 801E0CDC 27BD0020 */  addiu      $sp, $sp, 0x20
.L801E0CE0_ovl15:
/* 22BED0 801E0CE0 03E00008 */  jr         $ra
/* 22BED4 801E0CE4 00000000 */   nop
/* 22BED8 801E0CE8 00000000 */  nop
/* 22BEDC 801E0CEC 00000000 */  nop
/* 22BEE0 801E0CF0 00000000 */  nop
/* 22BEE4 801E0CF4 00000000 */  nop
/* 22BEE8 801E0CF8 00000000 */  nop
/* 22BEEC 801E0CFC 00000000 */  nop
