glabel func_8020FF80_ovl9
/* 1BDFD0 8020FF80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1BDFD4 8020FF84 AFA40018 */  sw         $a0, 0x18($sp)
/* 1BDFD8 8020FF88 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 1BDFDC 8020FF8C 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 1BDFE0 8020FF90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1BDFE4 8020FF94 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1BDFE8 8020FF98 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1BDFEC 8020FF9C 3C07800E */  lui        $a3, %hi(D_800E7880)
/* 1BDFF0 8020FFA0 24E77880 */  addiu      $a3, $a3, %lo(D_800E7880)
/* 1BDFF4 8020FFA4 000E7880 */  sll        $t7, $t6, 2
/* 1BDFF8 8020FFA8 002F0821 */  addu       $at, $at, $t7
/* 1BDFFC 8020FFAC AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1BE000 8020FFB0 8C860000 */  lw         $a2, 0x0($a0)
/* 1BE004 8020FFB4 3C05800E */  lui        $a1, %hi(gEntitiesAngleZArray)
/* 1BE008 8020FFB8 24A54390 */  addiu      $a1, $a1, %lo(gEntitiesAngleZArray)
/* 1BE00C 8020FFBC 00E6C021 */  addu       $t8, $a3, $a2
/* 1BE010 8020FFC0 93020000 */  lbu        $v0, 0x0($t8)
/* 1BE014 8020FFC4 24010005 */  addiu      $at, $zero, 0x5
/* 1BE018 8020FFC8 00061880 */  sll        $v1, $a2, 2
/* 1BE01C 8020FFCC 10400002 */  beqz       $v0, .L8020FFD8_ovl9
/* 1BE020 8020FFD0 00000000 */   nop
/* 1BE024 8020FFD4 1441003E */  bne        $v0, $at, .L802100D0_ovl9
.L8020FFD8_ovl9:
/* 1BE028 8020FFD8 3C018022 */   lui       $at, %hi(D_8021DCD4_ovl9)
/* 1BE02C 8020FFDC 00A31021 */  addu       $v0, $a1, $v1
/* 1BE030 8020FFE0 C422DCD4 */  lwc1       $f2, %lo(D_8021DCD4_ovl9)($at)
/* 1BE034 8020FFE4 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BE038 8020FFE8 44806000 */  mtc1       $zero, $f12
/* 1BE03C 8020FFEC 3C018022 */  lui        $at, %hi(D_8021DCD8_ovl9)
/* 1BE040 8020FFF0 4600103C */  c.lt.s     $f2, $f0
/* 1BE044 8020FFF4 00000000 */  nop
/* 1BE048 8020FFF8 4502000C */  bc1fl      .L8021002C_ovl9
/* 1BE04C 8020FFFC 460C003C */   c.lt.s    $f0, $f12
/* 1BE050 80210000 46020101 */  sub.s      $f4, $f0, $f2
.L80210004_ovl9:
/* 1BE054 80210004 E4440000 */  swc1       $f4, 0x0($v0)
/* 1BE058 80210008 8C830000 */  lw         $v1, 0x0($a0)
/* 1BE05C 8021000C 00031880 */  sll        $v1, $v1, 2
/* 1BE060 80210010 00A31021 */  addu       $v0, $a1, $v1
/* 1BE064 80210014 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BE068 80210018 4600103C */  c.lt.s     $f2, $f0
/* 1BE06C 8021001C 00000000 */  nop
/* 1BE070 80210020 4503FFF8 */  bc1tl      .L80210004_ovl9
/* 1BE074 80210024 46020101 */   sub.s     $f4, $f0, $f2
/* 1BE078 80210028 460C003C */  c.lt.s     $f0, $f12
.L8021002C_ovl9:
/* 1BE07C 8021002C 00000000 */  nop
/* 1BE080 80210030 4500000B */  bc1f       .L80210060_ovl9
/* 1BE084 80210034 00000000 */   nop
/* 1BE088 80210038 46020180 */  add.s      $f6, $f0, $f2
.L8021003C_ovl9:
/* 1BE08C 8021003C E4460000 */  swc1       $f6, 0x0($v0)
/* 1BE090 80210040 8C830000 */  lw         $v1, 0x0($a0)
/* 1BE094 80210044 00031880 */  sll        $v1, $v1, 2
/* 1BE098 80210048 00A31021 */  addu       $v0, $a1, $v1
/* 1BE09C 8021004C C4400000 */  lwc1       $f0, 0x0($v0)
/* 1BE0A0 80210050 460C003C */  c.lt.s     $f0, $f12
/* 1BE0A4 80210054 00000000 */  nop
/* 1BE0A8 80210058 4503FFF8 */  bc1tl      .L8021003C_ovl9
/* 1BE0AC 8021005C 46020180 */   add.s     $f6, $f0, $f2
.L80210060_ovl9:
/* 1BE0B0 80210060 C428DCD8 */  lwc1       $f8, %lo(D_8021DCD8_ovl9)($at)
/* 1BE0B4 80210064 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BE0B8 80210068 00230821 */  addu       $at, $at, $v1
/* 1BE0BC 8021006C 4608003C */  c.lt.s     $f0, $f8
/* 1BE0C0 80210070 00000000 */  nop
/* 1BE0C4 80210074 4502000B */  bc1fl      .L802100A4_ovl9
/* 1BE0C8 80210078 46001401 */   sub.s     $f16, $f2, $f0
/* 1BE0CC 8021007C E420A6E0 */  swc1       $f0, %lo(D_800EA6E0)($at)
/* 1BE0D0 80210080 8C990000 */  lw         $t9, 0x0($a0)
/* 1BE0D4 80210084 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 1BE0D8 80210088 44815000 */  mtc1       $at, $f10
/* 1BE0DC 8021008C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1BE0E0 80210090 00194080 */  sll        $t0, $t9, 2
/* 1BE0E4 80210094 00280821 */  addu       $at, $at, $t0
/* 1BE0E8 80210098 10000014 */  b          .L802100EC_ovl9
/* 1BE0EC 8021009C E42A6A10 */   swc1      $f10, %lo(D_800E6A10)($at)
/* 1BE0F0 802100A0 46001401 */  sub.s      $f16, $f2, $f0
.L802100A4_ovl9:
/* 1BE0F4 802100A4 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BE0F8 802100A8 00230821 */  addu       $at, $at, $v1
/* 1BE0FC 802100AC E430A6E0 */  swc1       $f16, %lo(D_800EA6E0)($at)
/* 1BE100 802100B0 8C890000 */  lw         $t1, 0x0($a0)
/* 1BE104 802100B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1BE108 802100B8 44819000 */  mtc1       $at, $f18
/* 1BE10C 802100BC 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1BE110 802100C0 00095080 */  sll        $t2, $t1, 2
/* 1BE114 802100C4 002A0821 */  addu       $at, $at, $t2
/* 1BE118 802100C8 10000008 */  b          .L802100EC_ovl9
/* 1BE11C 802100CC E4326A10 */   swc1      $f18, %lo(D_800E6A10)($at)
.L802100D0_ovl9:
/* 1BE120 802100D0 44802000 */  mtc1       $zero, $f4
/* 1BE124 802100D4 00065880 */  sll        $t3, $a2, 2
/* 1BE128 802100D8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BE12C 802100DC 002B0821 */  addu       $at, $at, $t3
/* 1BE130 802100E0 3C05800E */  lui        $a1, %hi(gEntitiesAngleZArray)
/* 1BE134 802100E4 24A54390 */  addiu      $a1, $a1, %lo(gEntitiesAngleZArray)
/* 1BE138 802100E8 E424A6E0 */  swc1       $f4, %lo(D_800EA6E0)($at)
.L802100EC_ovl9:
/* 1BE13C 802100EC 8C860000 */  lw         $a2, 0x0($a0)
/* 1BE140 802100F0 00E66021 */  addu       $t4, $a3, $a2
/* 1BE144 802100F4 918D0000 */  lbu        $t5, 0x0($t4)
/* 1BE148 802100F8 11A00005 */  beqz       $t5, .L80210110_ovl9
/* 1BE14C 802100FC 00000000 */   nop
/* 1BE150 80210100 44803000 */  mtc1       $zero, $f6
/* 1BE154 80210104 00067080 */  sll        $t6, $a2, 2
/* 1BE158 80210108 00AE7821 */  addu       $t7, $a1, $t6
/* 1BE15C 8021010C E5E60000 */  swc1       $f6, 0x0($t7)
.L80210110_ovl9:
/* 1BE160 80210110 0C066ED6 */  jal        func_8019BB58_ovl7
/* 1BE164 80210114 00000000 */   nop
/* 1BE168 80210118 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1BE16C 8021011C 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1BE170 80210120 3C07800E */  lui        $a3, %hi(D_800E7880)
/* 1BE174 80210124 24E77880 */  addiu      $a3, $a3, %lo(D_800E7880)
/* 1BE178 80210128 8F190000 */  lw         $t9, 0x0($t8)
/* 1BE17C 8021012C 3C068022 */  lui        $a2, %hi(D_8021CB00_ovl9)
/* 1BE180 80210130 24C6CB00 */  addiu      $a2, $a2, %lo(D_8021CB00_ovl9)
/* 1BE184 80210134 00F94021 */  addu       $t0, $a3, $t9
/* 1BE188 80210138 91040000 */  lbu        $a0, 0x0($t0)
/* 1BE18C 8021013C 0C02911F */  jal        call_virtual_function
/* 1BE190 80210140 24050006 */   addiu     $a1, $zero, 0x6
/* 1BE194 80210144 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1BE198 80210148 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BE19C 8021014C 03E00008 */  jr         $ra
/* 1BE1A0 80210150 00000000 */   nop
