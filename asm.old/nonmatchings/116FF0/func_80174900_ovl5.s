glabel func_80174900_ovl5
/* 11BD70 80174900 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11BD74 80174904 AFB30010 */  sw         $s3, 0x10($sp)
.L80174908_ovl3:
/* 11BD78 80174908 AFB2000C */  sw         $s2, 0xC($sp)
/* 11BD7C 8017490C 00809025 */  or         $s2, $a0, $zero
/* 11BD80 80174910 2493FFFF */  addiu      $s3, $a0, -0x1
/* 11BD84 80174914 AFB10008 */  sw         $s1, 0x8($sp)
/* 11BD88 80174918 AFB00004 */  sw         $s0, 0x4($sp)
/* 11BD8C 8017491C 3C04800F */  lui        $a0, %hi(D_800EA520)
/* 11BD90 80174920 3C098019 */  lui        $t1, %hi(D_8018EA00_ovl5)
/* 11BD94 80174924 3C07800F */  lui        $a3, %hi(D_800EA1A0)
/* 11BD98 80174928 3C038019 */  lui        $v1, %hi(func_8018E3B0_ovl5 + 0xC8)
glabel func_8017492C_ovl3
/* 11BD9C 8017492C AFB6001C */  sw         $s6, 0x1C($sp)
/* 11BDA0 80174930 AFB50018 */  sw         $s5, 0x18($sp)
/* 11BDA4 80174934 AFB40014 */  sw         $s4, 0x14($sp)
/* 11BDA8 80174938 2463E478 */  addiu      $v1, $v1, %lo(func_8018E3B0_ovl5 + 0xC8)
/* 11BDAC 8017493C 24E7A1A0 */  addiu      $a3, $a3, %lo(D_800EA1A0)
/* 11BDB0 80174940 2529EA00 */  addiu      $t1, $t1, %lo(D_8018EA00_ovl5)
/* 11BDB4 80174944 2484A520 */  addiu      $a0, $a0, %lo(D_800EA520)
/* 11BDB8 80174948 24100003 */  addiu      $s0, $zero, 0x3
/* 11BDBC 8017494C 2411000A */  addiu      $s1, $zero, 0xA
/* 11BDC0 80174950 00001025 */  or         $v0, $zero, $zero
/* 11BDC4 80174954 240D0002 */  addiu      $t5, $zero, 0x2
/* 11BDC8 80174958 240C0013 */  addiu      $t4, $zero, 0x13
/* 11BDCC 8017495C 240B0010 */  addiu      $t3, $zero, 0x10
/* 11BDD0 80174960 240A000F */  addiu      $t2, $zero, 0xF
/* 11BDD4 80174964 24080001 */  addiu      $t0, $zero, 0x1
/* 11BDD8 80174968 2406029A */  addiu      $a2, $zero, 0x29A
.L8017496C_ovl5:
/* 11BDDC 8017496C 10520028 */  beq        $v0, $s2, .L80174A10_ovl5
/* 11BDE0 80174970 24010004 */   addiu     $at, $zero, 0x4
/* 11BDE4 80174974 00027080 */  sll        $t6, $v0, 2
/* 11BDE8 80174978 01C27021 */  addu       $t6, $t6, $v0
/* 11BDEC 8017497C 000E70C0 */  sll        $t6, $t6, 3
/* 11BDF0 80174980 01C27021 */  addu       $t6, $t6, $v0
/* 11BDF4 80174984 000E70C0 */  sll        $t6, $t6, 3
/* 11BDF8 80174988 006E7821 */  addu       $t7, $v1, $t6
.L8017498C_ovl3:
/* 11BDFC 8017498C 0005C080 */  sll        $t8, $a1, 2
.L80174990_ovl3:
/* 11BE00 80174990 01F8C821 */  addu       $t9, $t7, $t8
/* 11BE04 80174994 8F340000 */  lw         $s4, 0x0($t9)
/* 11BE08 80174998 00027080 */  sll        $t6, $v0, 2
glabel func_8017499C_ovl3
/* 11BE0C 8017499C 01C27021 */  addu       $t6, $t6, $v0
/* 11BE10 801749A0 12800009 */  beqz       $s4, .L801749C8_ovl5
/* 11BE14 801749A4 000E70C0 */   sll       $t6, $t6, 3
/* 11BE18 801749A8 00147080 */  sll        $t6, $s4, 2
/* 11BE1C 801749AC 008E7821 */  addu       $t7, $a0, $t6
/* 11BE20 801749B0 8DF60000 */  lw         $s6, 0x0($t7)
/* 11BE24 801749B4 12C60016 */  beq        $s6, $a2, .L80174A10_ovl5
/* 11BE28 801749B8 0016C080 */   sll       $t8, $s6, 2
/* 11BE2C 801749BC 00F8C821 */  addu       $t9, $a3, $t8
/* 11BE30 801749C0 10000013 */  b          .L80174A10_ovl5
/* 11BE34 801749C4 AF280000 */   sw        $t0, 0x0($t9)
.L801749C8_ovl5:
/* 11BE38 801749C8 01C27021 */  addu       $t6, $t6, $v0
.L801749CC_ovl3:
/* 11BE3C 801749CC 000E7040 */  sll        $t6, $t6, 1
/* 11BE40 801749D0 012E7821 */  addu       $t7, $t1, $t6
/* 11BE44 801749D4 01E5A821 */  addu       $s5, $t7, $a1
/* 11BE48 801749D8 92B60000 */  lbu        $s6, 0x0($s5)
/* 11BE4C 801749DC 12CA0007 */  beq        $s6, $t2, .L801749FC_ovl5
/* 11BE50 801749E0 00000000 */   nop
/* 11BE54 801749E4 12CB0007 */  beq        $s6, $t3, .L80174A04_ovl5
/* 11BE58 801749E8 00000000 */   nop
/* 11BE5C 801749EC 52CC0008 */  beql       $s6, $t4, .L80174A10_ovl5
/* 11BE60 801749F0 A2B10000 */   sb        $s1, 0x0($s5)
/* 11BE64 801749F4 10000006 */  b          .L80174A10_ovl5
/* 11BE68 801749F8 00000000 */   nop
.L801749FC_ovl5:
/* 11BE6C 801749FC 10000004 */  b          .L80174A10_ovl5
/* 11BE70 80174A00 A2AD0000 */   sb        $t5, 0x0($s5)
.L80174A04_ovl5:
/* 11BE74 80174A04 10000002 */  b          .L80174A10_ovl5
/* 11BE78 80174A08 A2B00000 */   sb        $s0, 0x0($s5)
/* 11BE7C 80174A0C A2B10000 */  sb         $s1, 0x0($s5)
.L80174A10_ovl5:
/* 11BE80 80174A10 10530027 */  beq        $v0, $s3, .L80174AB0_ovl5
/* 11BE84 80174A14 0002C080 */   sll       $t8, $v0, 2
.L80174A18_ovl3:
/* 11BE88 80174A18 0302C021 */  addu       $t8, $t8, $v0
/* 11BE8C 80174A1C 0018C0C0 */  sll        $t8, $t8, 3
/* 11BE90 80174A20 0302C021 */  addu       $t8, $t8, $v0
.L80174A24_ovl3:
/* 11BE94 80174A24 0018C0C0 */  sll        $t8, $t8, 3
/* 11BE98 80174A28 0078C821 */  addu       $t9, $v1, $t8
/* 11BE9C 80174A2C 00057080 */  sll        $t6, $a1, 2
glabel func_80174A30_ovl3
/* 11BEA0 80174A30 032E7821 */  addu       $t7, $t9, $t6
/* 11BEA4 80174A34 8DF40148 */  lw         $s4, 0x148($t7)
/* 11BEA8 80174A38 0002C080 */  sll        $t8, $v0, 2
/* 11BEAC 80174A3C 0302C021 */  addu       $t8, $t8, $v0
/* 11BEB0 80174A40 12800009 */  beqz       $s4, .L80174A68_ovl5
/* 11BEB4 80174A44 0018C0C0 */   sll       $t8, $t8, 3
/* 11BEB8 80174A48 0014C080 */  sll        $t8, $s4, 2
/* 11BEBC 80174A4C 0098C821 */  addu       $t9, $a0, $t8
/* 11BEC0 80174A50 8F350000 */  lw         $s5, 0x0($t9)
/* 11BEC4 80174A54 12A60016 */  beq        $s5, $a2, .L80174AB0_ovl5
/* 11BEC8 80174A58 00157080 */   sll       $t6, $s5, 2
/* 11BECC 80174A5C 00EE7821 */  addu       $t7, $a3, $t6
/* 11BED0 80174A60 10000013 */  b          .L80174AB0_ovl5
/* 11BED4 80174A64 ADE80000 */   sw        $t0, 0x0($t7)
.L80174A68_ovl5:
/* 11BED8 80174A68 0302C021 */  addu       $t8, $t8, $v0
/* 11BEDC 80174A6C 0018C040 */  sll        $t8, $t8, 1
/* 11BEE0 80174A70 0138C821 */  addu       $t9, $t1, $t8
/* 11BEE4 80174A74 0325A821 */  addu       $s5, $t9, $a1
/* 11BEE8 80174A78 92B40052 */  lbu        $s4, 0x52($s5)
/* 11BEEC 80174A7C 128A0007 */  beq        $s4, $t2, .L80174A9C_ovl5
/* 11BEF0 80174A80 00000000 */   nop
/* 11BEF4 80174A84 128B0007 */  beq        $s4, $t3, .L80174AA4_ovl5
/* 11BEF8 80174A88 00000000 */   nop
/* 11BEFC 80174A8C 528C0008 */  beql       $s4, $t4, .L80174AB0_ovl5
/* 11BF00 80174A90 A2B10052 */   sb        $s1, 0x52($s5)
/* 11BF04 80174A94 10000007 */  b          .L80174AB4_ovl5
/* 11BF08 80174A98 24420002 */   addiu     $v0, $v0, 0x2
.L80174A9C_ovl5:
/* 11BF0C 80174A9C 10000004 */  b          .L80174AB0_ovl5
/* 11BF10 80174AA0 A2AD0052 */   sb        $t5, 0x52($s5)
.L80174AA4_ovl5:
/* 11BF14 80174AA4 10000002 */  b          .L80174AB0_ovl5
/* 11BF18 80174AA8 A2B00052 */   sb        $s0, 0x52($s5)
/* 11BF1C 80174AAC A2B10052 */  sb         $s1, 0x52($s5)
.L80174AB0_ovl5:
/* 11BF20 80174AB0 24420002 */  addiu      $v0, $v0, 0x2
.L80174AB4_ovl5:
/* 11BF24 80174AB4 1441FFAD */  bne        $v0, $at, .L8017496C_ovl5
/* 11BF28 80174AB8 00000000 */   nop
/* 11BF2C 80174ABC 8FB00004 */  lw         $s0, 0x4($sp)
/* 11BF30 80174AC0 8FB10008 */  lw         $s1, 0x8($sp)
/* 11BF34 80174AC4 8FB2000C */  lw         $s2, 0xC($sp)
/* 11BF38 80174AC8 8FB30010 */  lw         $s3, 0x10($sp)
/* 11BF3C 80174ACC 8FB40014 */  lw         $s4, 0x14($sp)
/* 11BF40 80174AD0 8FB50018 */  lw         $s5, 0x18($sp)
/* 11BF44 80174AD4 8FB6001C */  lw         $s6, 0x1C($sp)
/* 11BF48 80174AD8 03E00008 */  jr         $ra
/* 11BF4C 80174ADC 27BD0020 */   addiu     $sp, $sp, 0x20
