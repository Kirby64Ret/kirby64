glabel func_801530BC_ovl3
/* B3AFC 801530BC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* B3B00 801530C0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* B3B04 801530C4 27BDFED8 */  addiu      $sp, $sp, -0x128
.L801530C8_ovl6:
/* B3B08 801530C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* B3B0C 801530CC AFA40128 */  sw         $a0, 0x128($sp)
/* B3B10 801530D0 8C4E0000 */  lw         $t6, 0x0($v0)
.L801530D4_ovl6:
/* B3B14 801530D4 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* B3B18 801530D8 241FFFFF */  addiu      $ra, $zero, -0x1
/* B3B1C 801530DC 000E7880 */  sll        $t7, $t6, 2
/* B3B20 801530E0 002F0821 */  addu       $at, $at, $t7
/* B3B24 801530E4 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* B3B28 801530E8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* B3B2C 801530EC 27A400FC */  addiu      $a0, $sp, 0xFC
.L801530F0_ovl6:
/* B3B30 801530F0 E7A400E4 */  swc1       $f4, 0xE4($sp)
/* B3B34 801530F4 C7A600E4 */  lwc1       $f6, 0xE4($sp)
/* B3B38 801530F8 E7A600FC */  swc1       $f6, 0xFC($sp)
/* B3B3C 801530FC 8C580000 */  lw         $t8, 0x0($v0)
.L80153100_ovl6:
/* B3B40 80153100 0018C880 */  sll        $t9, $t8, 2
/* B3B44 80153104 00390821 */  addu       $at, $at, $t9
/* B3B48 80153108 C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
/* B3B4C 8015310C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
.L80153110_ovl6:
/* B3B50 80153110 E7A800EC */  swc1       $f8, 0xEC($sp)
/* B3B54 80153114 C7AA00EC */  lwc1       $f10, 0xEC($sp)
/* B3B58 80153118 E7AA0104 */  swc1       $f10, 0x104($sp)
/* B3B5C 8015311C 8C4E0000 */  lw         $t6, 0x0($v0)
/* B3B60 80153120 AFBF002C */  sw         $ra, 0x2C($sp)
/* B3B64 80153124 000E7880 */  sll        $t7, $t6, 2
.L80153128_ovl6:
/* B3B68 80153128 002F0821 */  addu       $at, $at, $t7
/* B3B6C 8015312C C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
/* B3B70 80153130 0C0437E7 */  jal        func_8010DF9C
.L80153134_ovl6:
/* B3B74 80153134 E7B00100 */   swc1      $f16, 0x100($sp)
/* B3B78 80153138 8FBF002C */  lw         $ra, 0x2C($sp)
/* B3B7C 8015313C 00402025 */  or         $a0, $v0, $zero
/* B3B80 80153140 1040001E */  beqz       $v0, .L801531BC_ovl3
/* B3B84 80153144 240DFFFF */   addiu     $t5, $zero, -0x1
/* B3B88 80153148 1040001C */  beqz       $v0, .L801531BC_ovl3
glabel func_8015314C_ovl6
/* B3B8C 8015314C 00001825 */   or        $v1, $zero, $zero
/* B3B90 80153150 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* B3B94 80153154 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
/* B3B98 80153158 24060001 */  addiu      $a2, $zero, 0x1
.L8015315C_ovl3:
/* B3B9C 8015315C 8C580040 */  lw         $t8, 0x40($v0)
/* B3BA0 80153160 3C088013 */  lui        $t0, %hi(D_8012BCA0)
/* B3BA4 80153164 27AE008C */  addiu      $t6, $sp, 0x8C
/* B3BA8 80153168 93190004 */  lbu        $t9, 0x4($t8)
/* B3BAC 8015316C 14D9000F */  bne        $a2, $t9, .L801531AC_ovl3
/* B3BB0 80153170 2519BCA0 */   addiu     $t9, $t0, %lo(D_8012BCA0)
/* B3BB4 80153174 00606825 */  or         $t5, $v1, $zero
/* B3BB8 80153178 27210054 */  addiu      $at, $t9, 0x54
.L8015317C_ovl3:
/* B3BBC 8015317C 8F380000 */  lw         $t8, 0x0($t9)
/* B3BC0 80153180 2739000C */  addiu      $t9, $t9, 0xC
/* B3BC4 80153184 25CE000C */  addiu      $t6, $t6, 0xC
/* B3BC8 80153188 ADD8FFF4 */  sw         $t8, -0xC($t6)
/* B3BCC 8015318C 8F2FFFF8 */  lw         $t7, -0x8($t9)
/* B3BD0 80153190 ADCFFFF8 */  sw         $t7, -0x8($t6)
/* B3BD4 80153194 8F38FFFC */  lw         $t8, -0x4($t9)
/* B3BD8 80153198 1721FFF8 */  bne        $t9, $at, .L8015317C_ovl3
/* B3BDC 8015319C ADD8FFFC */   sw        $t8, -0x4($t6)
.L801531A0_ovl6:
/* B3BE0 801531A0 8F380000 */  lw         $t8, 0x0($t9)
/* B3BE4 801531A4 10000005 */  b          .L801531BC_ovl3
.L801531A8_ovl6:
/* B3BE8 801531A8 ADD80000 */   sw        $t8, 0x0($t6)
.L801531AC_ovl3:
/* B3BEC 801531AC 24630001 */  addiu      $v1, $v1, 0x1
/* B3BF0 801531B0 0064082B */  sltu       $at, $v1, $a0
/* B3BF4 801531B4 1420FFE9 */  bnez       $at, .L8015315C_ovl3
/* B3BF8 801531B8 24420004 */   addiu     $v0, $v0, 0x4
.L801531BC_ovl3:
/* B3BFC 801531BC 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* B3C00 801531C0 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* B3C04 801531C4 8FB80128 */  lw         $t8, 0x128($sp)
/* B3C08 801531C8 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* B3C0C 801531CC 8F2E0000 */  lw         $t6, 0x0($t9)
/* B3C10 801531D0 C7040000 */  lwc1       $f4, 0x0($t8)
/* B3C14 801531D4 AFBF002C */  sw         $ra, 0x2C($sp)
/* B3C18 801531D8 000E7880 */  sll        $t7, $t6, 2
/* B3C1C 801531DC 002F0821 */  addu       $at, $at, $t7
/* B3C20 801531E0 C4322790 */  lwc1       $f18, %lo(gEntitiesNextPosYArray)($at)
/* B3C24 801531E4 AFAD010C */  sw         $t5, 0x10C($sp)
/* B3C28 801531E8 27A400FC */  addiu      $a0, $sp, 0xFC
.L801531EC_ovl6:
/* B3C2C 801531EC 46049180 */  add.s      $f6, $f18, $f4
/* B3C30 801531F0 0C0437E7 */  jal        func_8010DF9C
/* B3C34 801531F4 E7A60100 */   swc1      $f6, 0x100($sp)
/* B3C38 801531F8 3C088013 */  lui        $t0, %hi(D_8012BCA0)
glabel func_801531FC_ovl6
/* B3C3C 801531FC 2508BCA0 */  addiu      $t0, $t0, %lo(D_8012BCA0)
/* B3C40 80153200 24060001 */  addiu      $a2, $zero, 0x1
.L80153204_ovl4:
/* B3C44 80153204 8FAD010C */  lw         $t5, 0x10C($sp)
/* B3C48 80153208 8FBF002C */  lw         $ra, 0x2C($sp)
/* B3C4C 8015320C 00402825 */  or         $a1, $v0, $zero
/* B3C50 80153210 240CFFFF */  addiu      $t4, $zero, -0x1
/* B3C54 80153214 10400032 */  beqz       $v0, .L801532E0_ovl3
/* B3C58 80153218 2407FFFF */   addiu     $a3, $zero, -0x1
/* B3C5C 8015321C 10400030 */  beqz       $v0, .L801532E0_ovl3
.L80153220_ovl6:
/* B3C60 80153220 00001825 */   or        $v1, $zero, $zero
/* B3C64 80153224 3C028013 */  lui        $v0, %hi(D_8012BCA0)
glabel func_80153228_ovl6
/* B3C68 80153228 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
/* B3C6C 8015322C 27AA0034 */  addiu      $t2, $sp, 0x34
/* B3C70 80153230 2409FFFF */  addiu      $t1, $zero, -0x1
.L80153234_ovl3:
/* B3C74 80153234 8C590040 */  lw         $t9, 0x40($v0)
/* B3C78 80153238 93240004 */  lbu        $a0, 0x4($t9)
/* B3C7C 8015323C 14C40012 */  bne        $a2, $a0, .L80153288_ovl3
.L80153240_ovl4:
/* B3C80 80153240 00000000 */   nop
/* B3C84 80153244 00606025 */  or         $t4, $v1, $zero
/* B3C88 80153248 01203825 */  or         $a3, $t1, $zero
/* B3C8C 8015324C 0100C025 */  or         $t8, $t0, $zero
/* B3C90 80153250 0140C825 */  or         $t9, $t2, $zero
/* B3C94 80153254 25010054 */  addiu      $at, $t0, 0x54
.L80153258_ovl3:
/* B3C98 80153258 8F0F0000 */  lw         $t7, 0x0($t8)
/* B3C9C 8015325C 2718000C */  addiu      $t8, $t8, 0xC
.L80153260_ovl4:
/* B3CA0 80153260 2739000C */  addiu      $t9, $t9, 0xC
/* B3CA4 80153264 AF2FFFF4 */  sw         $t7, -0xC($t9)
/* B3CA8 80153268 8F0EFFF8 */  lw         $t6, -0x8($t8)
/* B3CAC 8015326C AF2EFFF8 */  sw         $t6, -0x8($t9)
.L80153270_ovl4:
/* B3CB0 80153270 8F0FFFFC */  lw         $t7, -0x4($t8)
.L80153274_ovl6:
/* B3CB4 80153274 1701FFF8 */  bne        $t8, $at, .L80153258_ovl3
/* B3CB8 80153278 AF2FFFFC */   sw        $t7, -0x4($t9)
/* B3CBC 8015327C 8F0F0000 */  lw         $t7, 0x0($t8)
/* B3CC0 80153280 10000017 */  b          .L801532E0_ovl3
/* B3CC4 80153284 AF2F0000 */   sw        $t7, 0x0($t9)
.L80153288_ovl3:
/* B3CC8 80153288 54800012 */  bnel       $a0, $zero, .L801532D4_ovl3
.L8015328C_ovl6:
/* B3CCC 8015328C 24630001 */   addiu     $v1, $v1, 0x1
/* B3CD0 80153290 14E9000F */  bne        $a3, $t1, .L801532D0_ovl3
glabel func_80153294_ovl4
/* B3CD4 80153294 01007025 */   or        $t6, $t0, $zero
/* B3CD8 80153298 00603825 */  or         $a3, $v1, $zero
/* B3CDC 8015329C 01407825 */  or         $t7, $t2, $zero
/* B3CE0 801532A0 25010054 */  addiu      $at, $t0, 0x54
.L801532A4_ovl3:
/* B3CE4 801532A4 8DD90000 */  lw         $t9, 0x0($t6)
.L801532A8_ovl6:
/* B3CE8 801532A8 25CE000C */  addiu      $t6, $t6, 0xC
/* B3CEC 801532AC 25EF000C */  addiu      $t7, $t7, 0xC
/* B3CF0 801532B0 ADF9FFF4 */  sw         $t9, -0xC($t7)
/* B3CF4 801532B4 8DD8FFF8 */  lw         $t8, -0x8($t6)
/* B3CF8 801532B8 ADF8FFF8 */  sw         $t8, -0x8($t7)
/* B3CFC 801532BC 8DD9FFFC */  lw         $t9, -0x4($t6)
.L801532C0_ovl6:
/* B3D00 801532C0 15C1FFF8 */  bne        $t6, $at, .L801532A4_ovl3
.L801532C4_ovl4:
/* B3D04 801532C4 ADF9FFFC */   sw        $t9, -0x4($t7)
/* B3D08 801532C8 8DD90000 */  lw         $t9, 0x0($t6)
glabel func_801532CC_ovl6
/* B3D0C 801532CC ADF90000 */  sw         $t9, 0x0($t7)
.L801532D0_ovl3:
/* B3D10 801532D0 24630001 */  addiu      $v1, $v1, 0x1
.L801532D4_ovl3:
/* B3D14 801532D4 0065082B */  sltu       $at, $v1, $a1
/* B3D18 801532D8 1420FFD6 */  bnez       $at, .L80153234_ovl3
/* B3D1C 801532DC 24420004 */   addiu     $v0, $v0, 0x4
.L801532E0_ovl3:
/* B3D20 801532E0 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* B3D24 801532E4 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* B3D28 801532E8 8FA20128 */  lw         $v0, 0x128($sp)
/* B3D2C 801532EC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
/* B3D30 801532F0 8DCF0000 */  lw         $t7, 0x0($t6)
glabel func_801532F4_ovl6
/* B3D34 801532F4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* B3D38 801532F8 C4520004 */  lwc1       $f18, 0x4($v0)
glabel func_801532FC_ovl4
/* B3D3C 801532FC 000FC080 */  sll        $t8, $t7, 2
/* B3D40 80153300 00380821 */  addu       $at, $at, $t8
/* B3D44 80153304 C4282790 */  lwc1       $f8, %lo(gEntitiesNextPosYArray)($at)
/* B3D48 80153308 AFBF002C */  sw         $ra, 0x2C($sp)
.L8015330C_ovl6:
/* B3D4C 8015330C AFAD010C */  sw         $t5, 0x10C($sp)
/* B3D50 80153310 460A4400 */  add.s      $f16, $f8, $f10
/* B3D54 80153314 AFAC0110 */  sw         $t4, 0x110($sp)
/* B3D58 80153318 AFA70030 */  sw         $a3, 0x30($sp)
.L8015331C_ovl4:
/* B3D5C 8015331C AFA50120 */  sw         $a1, 0x120($sp)
/* B3D60 80153320 46128100 */  add.s      $f4, $f16, $f18
glabel func_80153324_ovl6
/* B3D64 80153324 27A400FC */  addiu      $a0, $sp, 0xFC
/* B3D68 80153328 0C0437E7 */  jal        func_8010DF9C
/* B3D6C 8015332C E7A40100 */   swc1      $f4, 0x100($sp)
.L80153330_ovl6:
/* B3D70 80153330 2409FFFF */  addiu      $t1, $zero, -0x1
/* B3D74 80153334 8FA50120 */  lw         $a1, 0x120($sp)
/* B3D78 80153338 24060001 */  addiu      $a2, $zero, 0x1
/* B3D7C 8015333C 8FA70030 */  lw         $a3, 0x30($sp)
/* B3D80 80153340 27AA0034 */  addiu      $t2, $sp, 0x34
/* B3D84 80153344 8FAC0110 */  lw         $t4, 0x110($sp)
/* B3D88 80153348 8FAD010C */  lw         $t5, 0x10C($sp)
/* B3D8C 8015334C 8FBF002C */  lw         $ra, 0x2C($sp)
.L80153350_ovl6:
/* B3D90 80153350 1040000F */  beqz       $v0, .L80153390_ovl3
/* B3D94 80153354 01205825 */   or        $t3, $t1, $zero
/* B3D98 80153358 10A0000D */  beqz       $a1, .L80153390_ovl3
.L8015335C_ovl6:
/* B3D9C 8015335C 00001825 */   or        $v1, $zero, $zero
/* B3DA0 80153360 3C028013 */  lui        $v0, %hi(D_8012BCA0)
/* B3DA4 80153364 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
.L80153368_ovl3:
/* B3DA8 80153368 8C590040 */  lw         $t9, 0x40($v0)
/* B3DAC 8015336C 932E0004 */  lbu        $t6, 0x4($t9)
.L80153370_ovl6:
/* B3DB0 80153370 54CE0004 */  bnel       $a2, $t6, .L80153384_ovl6
/* B3DB4 80153374 24630001 */   addiu     $v1, $v1, 0x1
/* B3DB8 80153378 10000005 */  b          .L80153390_ovl3
/* B3DBC 8015337C 00605825 */   or        $t3, $v1, $zero
.L80153380_ovl6:
/* B3DC0 80153380 24630001 */  addiu      $v1, $v1, 0x1
.L80153384_ovl6:
/* B3DC4 80153384 0065082B */  sltu       $at, $v1, $a1
/* B3DC8 80153388 1420FFF7 */  bnez       $at, .L80153368_ovl3
/* B3DCC 8015338C 24420004 */   addiu     $v0, $v0, 0x4
.L80153390_ovl3:
/* B3DD0 80153390 11890009 */  beq        $t4, $t1, .L801533B8_ovl6
.L80153394_ovl4:
/* B3DD4 80153394 3C088013 */   lui       $t0, %hi(gKirbyState)
.L80153398_ovl6:
/* B3DD8 80153398 000C7880 */  sll        $t7, $t4, 2
/* B3DDC 8015339C 014FC021 */  addu       $t8, $t2, $t7
/* B3DE0 801533A0 8F190040 */  lw         $t9, 0x40($t8)
/* B3DE4 801533A4 932E0005 */  lbu        $t6, 0x5($t9)
glabel func_801533A8_ovl6
/* B3DE8 801533A8 14CE0003 */  bne        $a2, $t6, .L801533B8_ovl6
/* B3DEC 801533AC 00000000 */   nop
.L801533B0_ovl6:
/* B3DF0 801533B0 10000009 */  b          .L801533D8_ovl3
/* B3DF4 801533B4 0180F825 */   or        $ra, $t4, $zero
.L801533B8_ovl6:
/* B3DF8 801533B8 10E90007 */  beq        $a3, $t1, .L801533D8_ovl3
/* B3DFC 801533BC 00077880 */   sll       $t7, $a3, 2
glabel func_801533C0_ovl6
/* B3E00 801533C0 014FC021 */  addu       $t8, $t2, $t7
/* B3E04 801533C4 8F190040 */  lw         $t9, 0x40($t8)
/* B3E08 801533C8 932E0005 */  lbu        $t6, 0x5($t9)
/* B3E0C 801533CC 14CE0002 */  bne        $a2, $t6, .L801533D8_ovl3
/* B3E10 801533D0 00000000 */   nop
/* B3E14 801533D4 00E0F825 */  or         $ra, $a3, $zero
.L801533D8_ovl3:
/* B3E18 801533D8 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
/* B3E1C 801533DC 13E9001B */  beq        $ra, $t1, .L8015344C_ovl3
/* B3E20 801533E0 A1000152 */   sb        $zero, 0x152($t0)
/* B3E24 801533E4 001F7880 */  sll        $t7, $ra, 2
/* B3E28 801533E8 014FC021 */  addu       $t8, $t2, $t7
/* B3E2C 801533EC 8F020040 */  lw         $v0, 0x40($t8)
/* B3E30 801533F0 240E0001 */  addiu      $t6, $zero, 0x1
/* B3E34 801533F4 90590006 */  lbu        $t9, 0x6($v0)
.L801533F8_ovl4:
/* B3E38 801533F8 13200014 */  beqz       $t9, .L8015344C_ovl3
/* B3E3C 801533FC 00000000 */   nop
/* B3E40 80153400 A10E0152 */  sb         $t6, 0x152($t0)
/* B3E44 80153404 904F0007 */  lbu        $t7, 0x7($v0)
/* B3E48 80153408 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* B3E4C 8015340C 448F3000 */  mtc1       $t7, $f6
/* B3E50 80153410 05E10004 */  bgez       $t7, func_80153424_ovl6
/* B3E54 80153414 46803220 */   cvt.s.w   $f8, $f6
/* B3E58 80153418 44815000 */  mtc1       $at, $f10
/* B3E5C 8015341C 00000000 */  nop
/* B3E60 80153420 460A4200 */  add.s      $f8, $f8, $f10
glabel func_80153424_ovl6
/* B3E64 80153424 E5080134 */  swc1       $f8, 0x134($t0)
/* B3E68 80153428 90580006 */  lbu        $t8, 0x6($v0)
.L8015342C_ovl4:
/* B3E6C 8015342C 3C018019 */  lui        $at, %hi(D_80196EC0_ovl3)
/* B3E70 80153430 C4246EC0 */  lwc1       $f4, %lo(D_80196EC0_ovl3)($at)
/* B3E74 80153434 2719FFFF */  addiu      $t9, $t8, -0x1
/* B3E78 80153438 44998000 */  mtc1       $t9, $f16
/* B3E7C 8015343C 00000000 */  nop
/* B3E80 80153440 468084A0 */  cvt.s.w    $f18, $f16
/* B3E84 80153444 46049182 */  mul.s      $f6, $f18, $f4
/* B3E88 80153448 E5060130 */  swc1       $f6, 0x130($t0)
.L8015344C_ovl3:
/* B3E8C 8015344C 15690013 */  bne        $t3, $t1, .L8015349C_ovl3
/* B3E90 80153450 00000000 */   nop
/* B3E94 80153454 15890011 */  bne        $t4, $t1, .L8015349C_ovl3
/* B3E98 80153458 00000000 */   nop
/* B3E9C 8015345C 15A9000F */  bne        $t5, $t1, .L8015349C_ovl3
/* B3EA0 80153460 00000000 */   nop
/* B3EA4 80153464 44800000 */  mtc1       $zero, $f0
/* B3EA8 80153468 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* B3EAC 8015346C 3C01800F */  lui        $at, %hi(D_800E8AE0)
/* B3EB0 80153470 E500014C */  swc1       $f0, 0x14C($t0)
.L80153474_ovl4:
/* B3EB4 80153474 C50A014C */  lwc1       $f10, 0x14C($t0)
/* B3EB8 80153478 E50A0148 */  swc1       $f10, 0x148($t0)
glabel func_8015347C_ovl6
/* B3EBC 8015347C C5080148 */  lwc1       $f8, 0x148($t0)
/* B3EC0 80153480 E5080144 */  swc1       $f8, 0x144($t0)
/* B3EC4 80153484 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* B3EC8 80153488 8DCF0000 */  lw         $t7, 0x0($t6)
/* B3ECC 8015348C 000FC080 */  sll        $t8, $t7, 2
/* B3ED0 80153490 00380821 */  addu       $at, $at, $t8
/* B3ED4 80153494 10000070 */  b          .L80153658_ovl3
/* B3ED8 80153498 AC208AE0 */   sw        $zero, %lo(D_800E8AE0)($at)
.L8015349C_ovl3:
/* B3EDC 8015349C 1169000B */  beq        $t3, $t1, .L801534CC_ovl3
/* B3EE0 801534A0 00000000 */   nop
/* B3EE4 801534A4 11890009 */  beq        $t4, $t1, .L801534CC_ovl3
glabel func_801534A8_ovl6
/* B3EE8 801534A8 00000000 */   nop
/* B3EEC 801534AC 11A90007 */  beq        $t5, $t1, .L801534CC_ovl3
/* B3EF0 801534B0 00000000 */   nop
/* B3EF4 801534B4 44800000 */  mtc1       $zero, $f0
/* B3EF8 801534B8 24020007 */  addiu      $v0, $zero, 0x7
/* B3EFC 801534BC E7A00104 */  swc1       $f0, 0x104($sp)
/* B3F00 801534C0 E7A00100 */  swc1       $f0, 0x100($sp)
/* B3F04 801534C4 10000048 */  b          func_801535E8_ovl6
/* B3F08 801534C8 E7A000FC */   swc1      $f0, 0xFC($sp)
.L801534CC_ovl3:
/* B3F0C 801534CC 15690036 */  bne        $t3, $t1, .L801535A8_ovl3
/* B3F10 801534D0 00000000 */   nop
glabel func_801534D4_ovl6
/* B3F14 801534D4 11A90034 */  beq        $t5, $t1, .L801535A8_ovl3
/* B3F18 801534D8 3C028005 */   lui       $v0, %hi(D_8004A7C4)
/* B3F1C 801534DC 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* B3F20 801534E0 3C0F800E */  lui        $t7, %hi(gEntitiesNextPosYArray)
/* B3F24 801534E4 25EF2790 */  addiu      $t7, $t7, %lo(gEntitiesNextPosYArray)
/* B3F28 801534E8 8C590000 */  lw         $t9, 0x0($v0)
/* B3F2C 801534EC 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* B3F30 801534F0 27A600F0 */  addiu      $a2, $sp, 0xF0
/* B3F34 801534F4 00197080 */  sll        $t6, $t9, 2
/* B3F38 801534F8 01CFC021 */  addu       $t8, $t6, $t7
/* B3F3C 801534FC C7100000 */  lwc1       $f16, 0x0($t8)
/* B3F40 80153500 27A700E4 */  addiu      $a3, $sp, 0xE4
/* B3F44 80153504 E7B000E8 */  swc1       $f16, 0xE8($sp)
/* B3F48 80153508 8C590000 */  lw         $t9, 0x0($v0)
/* B3F4C 8015350C 00197080 */  sll        $t6, $t9, 2
/* B3F50 80153510 002E0821 */  addu       $at, $at, $t6
/* B3F54 80153514 C4322B10 */  lwc1       $f18, %lo(gEntitiesPosXArray)($at)
/* B3F58 80153518 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* B3F5C 8015351C E7B200F0 */  swc1       $f18, 0xF0($sp)
/* B3F60 80153520 8C580000 */  lw         $t8, 0x0($v0)
/* B3F64 80153524 0018C880 */  sll        $t9, $t8, 2
/* B3F68 80153528 00390821 */  addu       $at, $at, $t9
/* B3F6C 8015352C C4242E90 */  lwc1       $f4, %lo(gEntitiesPosZArray)($at)
glabel func_80153530_ovl6
/* B3F70 80153530 E7A400F8 */  swc1       $f4, 0xF8($sp)
/* B3F74 80153534 8C4E0000 */  lw         $t6, 0x0($v0)
/* B3F78 80153538 000EC080 */  sll        $t8, $t6, 2
/* B3F7C 8015353C 8FAE0128 */  lw         $t6, 0x128($sp)
/* B3F80 80153540 030FC821 */  addu       $t9, $t8, $t7
/* B3F84 80153544 C7260000 */  lwc1       $f6, 0x0($t9)
.L80153548_ovl4:
/* B3F88 80153548 C5CA0000 */  lwc1       $f10, 0x0($t6)
.L8015354C_ovl4:
/* B3F8C 8015354C C5D00004 */  lwc1       $f16, 0x4($t6)
/* B3F90 80153550 27AF008C */  addiu      $t7, $sp, 0x8C
/* B3F94 80153554 460A3200 */  add.s      $f8, $f6, $f10
/* B3F98 80153558 000DC080 */  sll        $t8, $t5, 2
/* B3F9C 8015355C 030F1821 */  addu       $v1, $t8, $t7
/* B3FA0 80153560 27AE00FC */  addiu      $t6, $sp, 0xFC
/* B3FA4 80153564 46104480 */  add.s      $f18, $f8, $f16
/* B3FA8 80153568 27B90098 */  addiu      $t9, $sp, 0x98
/* B3FAC 8015356C E7B200F4 */  swc1       $f18, 0xF4($sp)
/* B3FB0 80153570 8C65004C */  lw         $a1, 0x4C($v1)
/* B3FB4 80153574 8C640040 */  lw         $a0, 0x40($v1)
/* B3FB8 80153578 AFAD010C */  sw         $t5, 0x10C($sp)
/* B3FBC 8015357C AFAC0110 */  sw         $t4, 0x110($sp)
/* B3FC0 80153580 AFAB0114 */  sw         $t3, 0x114($sp)
/* B3FC4 80153584 AFAE0014 */  sw         $t6, 0x14($sp)
/* B3FC8 80153588 0C043812 */  jal        func_8010E048
glabel func_8015358C_ovl6
/* B3FCC 8015358C AFB90010 */   sw        $t9, 0x10($sp)
/* B3FD0 80153590 3C088013 */  lui        $t0, %hi(gKirbyState)
/* B3FD4 80153594 2508E7C0 */  addiu      $t0, $t0, %lo(gKirbyState)
.L80153598_ovl4:
/* B3FD8 80153598 2409FFFF */  addiu      $t1, $zero, -0x1
/* B3FDC 8015359C 8FAB0114 */  lw         $t3, 0x114($sp)
/* B3FE0 801535A0 8FAC0110 */  lw         $t4, 0x110($sp)
/* B3FE4 801535A4 8FAD010C */  lw         $t5, 0x10C($sp)
.L801535A8_ovl3:
/* B3FE8 801535A8 15690007 */  bne        $t3, $t1, .L801535C8_ovl3
/* B3FEC 801535AC 00000000 */   nop
/* B3FF0 801535B0 15890005 */  bne        $t4, $t1, .L801535C8_ovl3
/* B3FF4 801535B4 00000000 */   nop
/* B3FF8 801535B8 11A90003 */  beq        $t5, $t1, .L801535C8_ovl3
/* B3FFC 801535BC 00000000 */   nop
/* B4000 801535C0 10000009 */  b          func_801535E8_ovl6
/* B4004 801535C4 24020001 */   addiu     $v0, $zero, 0x1
.L801535C8_ovl3:
/* B4008 801535C8 55690007 */  bnel       $t3, $t1, func_801535E8_ovl6
/* B400C 801535CC 8FA20118 */   lw        $v0, 0x118($sp)
/* B4010 801535D0 51890005 */  beql       $t4, $t1, func_801535E8_ovl6
/* B4014 801535D4 8FA20118 */   lw        $v0, 0x118($sp)
/* B4018 801535D8 11A90002 */  beq        $t5, $t1, .L801535E4_ovl4
/* B401C 801535DC 24020003 */   addiu     $v0, $zero, 0x3
/* B4020 801535E0 AFA20118 */  sw         $v0, 0x118($sp)
.L801535E4_ovl4:
/* B4024 801535E4 8FA20118 */  lw         $v0, 0x118($sp)
glabel func_801535E8_ovl6
/* B4028 801535E8 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* B402C 801535EC 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* B4030 801535F0 3C0E800F */  lui        $t6, %hi(D_800E8AE0)
/* B4034 801535F4 25CE8AE0 */  addiu      $t6, $t6, %lo(D_800E8AE0)
/* B4038 801535F8 8F0F0000 */  lw         $t7, 0x0($t8)
/* B403C 801535FC 30580002 */  andi       $t8, $v0, 0x2
/* B4040 80153600 000FC880 */  sll        $t9, $t7, 2
/* B4044 80153604 032E2021 */  addu       $a0, $t9, $t6
/* B4048 80153608 8C830000 */  lw         $v1, 0x0($a0)
/* B404C 8015360C 30630002 */  andi       $v1, $v1, 0x2
/* B4050 80153610 14600005 */  bnez       $v1, .L80153628_ovl3
/* B4054 80153614 00000000 */   nop
/* B4058 80153618 13000003 */  beqz       $t8, .L80153628_ovl3
/* B405C 8015361C 00000000 */   nop
/* B4060 80153620 10000006 */  b          .L8015363C_ovl3
/* B4064 80153624 344200C0 */   ori       $v0, $v0, 0xC0
.L80153628_ovl3:
/* B4068 80153628 10600004 */  beqz       $v1, .L8015363C_ovl3
/* B406C 8015362C 304F0002 */   andi      $t7, $v0, 0x2
/* B4070 80153630 55E00003 */  bnel       $t7, $zero, .L80153640_ovl3
.L80153634_ovl4:
/* B4074 80153634 C7A400FC */   lwc1      $f4, 0xFC($sp)
/* B4078 80153638 344200A0 */  ori        $v0, $v0, 0xA0
.L8015363C_ovl3:
/* B407C 8015363C C7A400FC */  lwc1       $f4, 0xFC($sp)
.L80153640_ovl3:
/* B4080 80153640 C7A60100 */  lwc1       $f6, 0x100($sp)
glabel func_80153644_ovl6
/* B4084 80153644 C7AA0104 */  lwc1       $f10, 0x104($sp)
.L80153648_ovl4:
/* B4088 80153648 AC820000 */  sw         $v0, 0x0($a0)
/* B408C 8015364C E5040144 */  swc1       $f4, 0x144($t0)
/* B4090 80153650 E5060148 */  swc1       $f6, 0x148($t0)
/* B4094 80153654 E50A014C */  swc1       $f10, 0x14C($t0)
.L80153658_ovl3:
/* B4098 80153658 8FBF001C */  lw         $ra, 0x1C($sp)
/* B409C 8015365C 27BD0128 */  addiu      $sp, $sp, 0x128
/* B40A0 80153660 03E00008 */  jr         $ra
/* B40A4 80153664 00000000 */   nop
