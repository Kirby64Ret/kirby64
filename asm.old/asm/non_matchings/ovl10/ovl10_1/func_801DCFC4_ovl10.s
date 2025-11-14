glabel func_801DCFC4_ovl10
/* 1CDD34 801DCFC4 27BDFF90 */  addiu $sp, $sp, -0x70
/* 1CDD38 801DCFC8 AFB00030 */  sw    $s0, 0x30($sp)
/* 1CDD3C 801DCFCC 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1CDD40 801DCFD0 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1CDD44 801DCFD4 AFBF0044 */  sw    $ra, 0x44($sp)
/* 1CDD48 801DCFD8 AFB40040 */  sw    $s4, 0x40($sp)
/* 1CDD4C 801DCFDC AFB3003C */  sw    $s3, 0x3c($sp)
/* 1CDD50 801DCFE0 AFB20038 */  sw    $s2, 0x38($sp)
/* 1CDD54 801DCFE4 AFB10034 */  sw    $s1, 0x34($sp)
/* 1CDD58 801DCFE8 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 1CDD5C 801DCFEC F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1CDD60 801DCFF0 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1CDD64 801DCFF4 AFA40070 */  sw    $a0, 0x70($sp)
/* 1CDD68 801DCFF8 0C02BB30 */  jal   func_800AECC0
/* 1CDD6C 801DCFFC C60C0000 */   lwc1  $f12, ($s0)
/* 1CDD70 801DD000 0C02BB48 */  jal   func_800AED20
/* 1CDD74 801DD004 C60C0000 */   lwc1  $f12, ($s0)
/* 1CDD78 801DD008 3C148005 */  lui   $s4, %hi(D_8004A7C4) # $s4, 0x8005
/* 1CDD7C 801DD00C 2694A7C4 */  addiu $s4, %lo(D_8004A7C4) # addiu $s4, $s4, -0x583c
/* 1CDD80 801DD010 8E840000 */  lw    $a0, ($s4)
/* 1CDD84 801DD014 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 1CDD88 801DD018 240E0003 */  li    $t6, 3
/* 1CDD8C 801DD01C 8C8F0000 */  lw    $t7, ($a0)
/* 1CDD90 801DD020 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1CDD94 801DD024 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1CDD98 801DD028 000FC080 */  sll   $t8, $t7, 2
/* 1CDD9C 801DD02C 00380821 */  addu  $at, $at, $t8
/* 1CDDA0 801DD030 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 1CDDA4 801DD034 8C880000 */  lw    $t0, ($a0)
/* 1CDDA8 801DD038 3C19801F */  lui   $t9, %hi(D_801F3A18_ovl10) # $t9, 0x801f
/* 1CDDAC 801DD03C 27393A18 */  addiu $t9, %lo(D_801F3A18_ovl10) # addiu $t9, $t9, 0x3a18
/* 1CDDB0 801DD040 00084880 */  sll   $t1, $t0, 2
/* 1CDDB4 801DD044 00495021 */  addu  $t2, $v0, $t1
/* 1CDDB8 801DD048 8D4B0000 */  lw    $t3, ($t2)
/* 1CDDBC 801DD04C 3C0C801F */  lui   $t4, %hi(D_801F4094_ovl10) # $t4, 0x801f
/* 1CDDC0 801DD050 258C4094 */  addiu $t4, %lo(D_801F4094_ovl10) # addiu $t4, $t4, 0x4094
/* 1CDDC4 801DD054 AD79008C */  sw    $t9, 0x8c($t3)
/* 1CDDC8 801DD058 8E8D0000 */  lw    $t5, ($s4)
/* 1CDDCC 801DD05C 8DAF0000 */  lw    $t7, ($t5)
/* 1CDDD0 801DD060 000F7080 */  sll   $t6, $t7, 2
/* 1CDDD4 801DD064 004EC021 */  addu  $t8, $v0, $t6
/* 1CDDD8 801DD068 8F080000 */  lw    $t0, ($t8)
/* 1CDDDC 801DD06C 0C02CCFD */  jal   func_800B33F4
/* 1CDDE0 801DD070 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1CDDE4 801DD074 3C040001 */  lui   $a0, (0x000102E1 >> 16) # lui $a0, 1
/* 1CDDE8 801DD078 0C02A7A9 */  jal   func_800A9EA4
/* 1CDDEC 801DD07C 348402E1 */   ori   $a0, (0x000102E1 & 0xFFFF) # ori $a0, $a0, 0x2e1
/* 1CDDF0 801DD080 3C040001 */  lui   $a0, (0x000102E0 >> 16) # lui $a0, 1
/* 1CDDF4 801DD084 0C02A7A9 */  jal   func_800A9EA4
/* 1CDDF8 801DD088 348402E0 */   ori   $a0, (0x000102E0 & 0xFFFF) # ori $a0, $a0, 0x2e0
/* 1CDDFC 801DD08C 0C02BC9F */  jal   func_800AF27C
/* 1CDE00 801DD090 00000000 */   nop   
/* 1CDE04 801DD094 0C066A40 */  jal   func_8019A900_ovl10
/* 1CDE08 801DD098 27A40068 */   addiu $a0, $sp, 0x68
/* 1CDE0C 801DD09C 10400004 */  beqz  $v0, .L801DD0B0_ovl10
/* 1CDE10 801DD0A0 8FA90068 */   lw    $t1, 0x68($sp)
/* 1CDE14 801DD0A4 44892000 */  mtc1  $t1, $f4
/* 1CDE18 801DD0A8 10000004 */  b     .L801DD0BC_ovl10
/* 1CDE1C 801DD0AC 468020A0 */   cvt.s.w $f2, $f4
.L801DD0B0_ovl10:
/* 1CDE20 801DD0B0 0C066D82 */  jal   func_8019B608_ovl10
/* 1CDE24 801DD0B4 00002025 */   move  $a0, $zero
/* 1CDE28 801DD0B8 46000086 */  mov.s $f2, $f0
.L801DD0BC_ovl10:
/* 1CDE2C 801DD0BC 8E8A0000 */  lw    $t2, ($s4)
/* 1CDE30 801DD0C0 3C13800E */  lui   $s3, %hi(D_800E6A10) # $s3, 0x800e
/* 1CDE34 801DD0C4 26736A10 */  addiu $s3, %lo(D_800E6A10) # addiu $s3, $s3, 0x6a10
/* 1CDE38 801DD0C8 8D430000 */  lw    $v1, ($t2)
/* 1CDE3C 801DD0CC 3C12800F */  lui   $s2, %hi(D_800E9020) # $s2, 0x800f
/* 1CDE40 801DD0D0 26529020 */  addiu $s2, %lo(D_800E9020) # addiu $s2, $s2, -0x6fe0
/* 1CDE44 801DD0D4 00031880 */  sll   $v1, $v1, 2
/* 1CDE48 801DD0D8 0263C821 */  addu  $t9, $s3, $v1
/* 1CDE4C 801DD0DC C7260000 */  lwc1  $f6, ($t9)
/* 1CDE50 801DD0E0 02435821 */  addu  $t3, $s2, $v1
/* 1CDE54 801DD0E4 46061032 */  c.eq.s $f2, $f6
/* 1CDE58 801DD0E8 00000000 */  nop   
/* 1CDE5C 801DD0EC 45010049 */  bc1t  .L801DD214_ovl10
/* 1CDE60 801DD0F0 00000000 */   nop   
/* 1CDE64 801DD0F4 44804000 */  mtc1  $zero, $f8
/* 1CDE68 801DD0F8 3C01801F */  lui   $at, %hi(D_801F49A0_ovl10) # $at, 0x801f
/* 1CDE6C 801DD0FC 00008025 */  move  $s0, $zero
/* 1CDE70 801DD100 E5680000 */  swc1  $f8, ($t3)
/* 1CDE74 801DD104 C43849A0 */  lwc1  $f24, %lo(D_801F49A0_ovl10)($at)
/* 1CDE78 801DD108 3C01801F */  lui   $at, %hi(D_801F49A4_ovl10) # $at, 0x801f
/* 1CDE7C 801DD10C C43649A4 */  lwc1  $f22, %lo(D_801F49A4_ovl10)($at)
/* 1CDE80 801DD110 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1CDE84 801DD114 4481A000 */  mtc1  $at, $f20
/* 1CDE88 801DD118 24110005 */  li    $s1, 5
/* 1CDE8C 801DD11C 8E8D0000 */  lw    $t5, ($s4)
.L801DD120_ovl10:
/* 1CDE90 801DD120 8DA30000 */  lw    $v1, ($t5)
/* 1CDE94 801DD124 00031880 */  sll   $v1, $v1, 2
/* 1CDE98 801DD128 02637821 */  addu  $t7, $s3, $v1
/* 1CDE9C 801DD12C C5EA0000 */  lwc1  $f10, ($t7)
/* 1CDEA0 801DD130 02431021 */  addu  $v0, $s2, $v1
/* 1CDEA4 801DD134 460AA032 */  c.eq.s $f20, $f10
/* 1CDEA8 801DD138 00000000 */  nop   
/* 1CDEAC 801DD13C 45020004 */  bc1fl .L801DD150_ovl10
/* 1CDEB0 801DD140 4600C006 */   mov.s $f0, $f24
/* 1CDEB4 801DD144 10000002 */  b     .L801DD150_ovl10
/* 1CDEB8 801DD148 4600B006 */   mov.s $f0, $f22
/* 1CDEBC 801DD14C 4600C006 */  mov.s $f0, $f24
.L801DD150_ovl10:
/* 1CDEC0 801DD150 C4500000 */  lwc1  $f16, ($v0)
/* 1CDEC4 801DD154 24040001 */  li    $a0, 1
/* 1CDEC8 801DD158 46008480 */  add.s $f18, $f16, $f0
/* 1CDECC 801DD15C 0C002DAF */  jal   finish_current_thread
/* 1CDED0 801DD160 E4520000 */   swc1  $f18, ($v0)
/* 1CDED4 801DD164 26100001 */  addiu $s0, $s0, 1
/* 1CDED8 801DD168 5611FFED */  bnel  $s0, $s1, .L801DD120_ovl10
/* 1CDEDC 801DD16C 8E8D0000 */   lw    $t5, ($s4)
/* 1CDEE0 801DD170 8E840000 */  lw    $a0, ($s4)
/* 1CDEE4 801DD174 8C8E0000 */  lw    $t6, ($a0)
/* 1CDEE8 801DD178 000EC080 */  sll   $t8, $t6, 2
/* 1CDEEC 801DD17C 02781821 */  addu  $v1, $s3, $t8
/* 1CDEF0 801DD180 C4640000 */  lwc1  $f4, ($v1)
/* 1CDEF4 801DD184 46002187 */  neg.s $f6, $f4
/* 1CDEF8 801DD188 E4660000 */  swc1  $f6, ($v1)
/* 1CDEFC 801DD18C 8C8C0000 */  lw    $t4, ($a0)
/* 1CDF00 801DD190 000C4080 */  sll   $t0, $t4, 2
/* 1CDF04 801DD194 02481021 */  addu  $v0, $s2, $t0
/* 1CDF08 801DD198 C4480000 */  lwc1  $f8, ($v0)
/* 1CDF0C 801DD19C 46004287 */  neg.s $f10, $f8
/* 1CDF10 801DD1A0 E44A0000 */  swc1  $f10, ($v0)
/* 1CDF14 801DD1A4 8E890000 */  lw    $t1, ($s4)
.L801DD1A8_ovl10:
/* 1CDF18 801DD1A8 8D230000 */  lw    $v1, ($t1)
/* 1CDF1C 801DD1AC 00031880 */  sll   $v1, $v1, 2
/* 1CDF20 801DD1B0 02635021 */  addu  $t2, $s3, $v1
/* 1CDF24 801DD1B4 C5500000 */  lwc1  $f16, ($t2)
/* 1CDF28 801DD1B8 02431021 */  addu  $v0, $s2, $v1
/* 1CDF2C 801DD1BC 4610A032 */  c.eq.s $f20, $f16
/* 1CDF30 801DD1C0 00000000 */  nop   
/* 1CDF34 801DD1C4 45020004 */  bc1fl .L801DD1D8_ovl10
/* 1CDF38 801DD1C8 4600B006 */   mov.s $f0, $f22
/* 1CDF3C 801DD1CC 10000002 */  b     .L801DD1D8_ovl10
/* 1CDF40 801DD1D0 4600C006 */   mov.s $f0, $f24
/* 1CDF44 801DD1D4 4600B006 */  mov.s $f0, $f22
.L801DD1D8_ovl10:
/* 1CDF48 801DD1D8 C4520000 */  lwc1  $f18, ($v0)
/* 1CDF4C 801DD1DC 24040001 */  li    $a0, 1
/* 1CDF50 801DD1E0 46009100 */  add.s $f4, $f18, $f0
/* 1CDF54 801DD1E4 0C002DAF */  jal   finish_current_thread
/* 1CDF58 801DD1E8 E4440000 */   swc1  $f4, ($v0)
/* 1CDF5C 801DD1EC 2610FFFF */  addiu $s0, $s0, -1
/* 1CDF60 801DD1F0 5600FFED */  bnezl $s0, .L801DD1A8_ovl10
/* 1CDF64 801DD1F4 8E890000 */   lw    $t1, ($s4)
/* 1CDF68 801DD1F8 8E990000 */  lw    $t9, ($s4)
/* 1CDF6C 801DD1FC 44803000 */  mtc1  $zero, $f6
/* 1CDF70 801DD200 8F2B0000 */  lw    $t3, ($t9)
/* 1CDF74 801DD204 000B6880 */  sll   $t5, $t3, 2
/* 1CDF78 801DD208 024D7821 */  addu  $t7, $s2, $t5
/* 1CDF7C 801DD20C 0C02BC9F */  jal   func_800AF27C
/* 1CDF80 801DD210 E5E60000 */   swc1  $f6, ($t7)
.L801DD214_ovl10:
/* 1CDF84 801DD214 0C006291 */  jal   random_soft_s32_range
/* 1CDF88 801DD218 24040003 */   li    $a0, 3
/* 1CDF8C 801DD21C 8E840000 */  lw    $a0, ($s4)
/* 1CDF90 801DD220 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 1CDF94 801DD224 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 1CDF98 801DD228 8C8E0000 */  lw    $t6, ($a0)
/* 1CDF9C 801DD22C 000EC080 */  sll   $t8, $t6, 2
/* 1CDFA0 801DD230 02181821 */  addu  $v1, $s0, $t8
/* 1CDFA4 801DD234 8C6C0000 */  lw    $t4, ($v1)
/* 1CDFA8 801DD238 144C000A */  bne   $v0, $t4, .L801DD264_ovl10
/* 1CDFAC 801DD23C 00000000 */   nop   
.L801DD240_ovl10:
/* 1CDFB0 801DD240 0C006291 */  jal   random_soft_s32_range
/* 1CDFB4 801DD244 24040003 */   li    $a0, 3
/* 1CDFB8 801DD248 8E840000 */  lw    $a0, ($s4)
/* 1CDFBC 801DD24C 8C880000 */  lw    $t0, ($a0)
/* 1CDFC0 801DD250 00084880 */  sll   $t1, $t0, 2
/* 1CDFC4 801DD254 02091821 */  addu  $v1, $s0, $t1
/* 1CDFC8 801DD258 8C6A0000 */  lw    $t2, ($v1)
/* 1CDFCC 801DD25C 104AFFF8 */  beq   $v0, $t2, .L801DD240_ovl10
/* 1CDFD0 801DD260 00000000 */   nop   
.L801DD264_ovl10:
/* 1CDFD4 801DD264 10400008 */  beqz  $v0, .L801DD288_ovl10
/* 1CDFD8 801DD268 AC620000 */   sw    $v0, ($v1)
/* 1CDFDC 801DD26C 8C8B0000 */  lw    $t3, ($a0)
/* 1CDFE0 801DD270 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CDFE4 801DD274 24190004 */  li    $t9, 4
/* 1CDFE8 801DD278 000B6880 */  sll   $t5, $t3, 2
/* 1CDFEC 801DD27C 002D0821 */  addu  $at, $at, $t5
/* 1CDFF0 801DD280 10000007 */  b     .L801DD2A0_ovl10
/* 1CDFF4 801DD284 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
.L801DD288_ovl10:
/* 1CDFF8 801DD288 8C8E0000 */  lw    $t6, ($a0)
/* 1CDFFC 801DD28C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1CE000 801DD290 240F0003 */  li    $t7, 3
/* 1CE004 801DD294 000EC080 */  sll   $t8, $t6, 2
/* 1CE008 801DD298 00380821 */  addu  $at, $at, $t8
/* 1CE00C 801DD29C AC2FDC50 */ sw $t7, %lo(gEntityVtableIndexArray)($at)
.L801DD2A0_ovl10:
/* 1CE010 801DD2A0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1CE014 801DD2A4 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1CE018 801DD2A8 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1CE01C 801DD2AC D7B80028 */  ldc1  $f24, 0x28($sp)
/* 1CE020 801DD2B0 8FB00030 */  lw    $s0, 0x30($sp)
/* 1CE024 801DD2B4 8FB10034 */  lw    $s1, 0x34($sp)
/* 1CE028 801DD2B8 8FB20038 */  lw    $s2, 0x38($sp)
/* 1CE02C 801DD2BC 8FB3003C */  lw    $s3, 0x3c($sp)
/* 1CE030 801DD2C0 8FB40040 */  lw    $s4, 0x40($sp)
/* 1CE034 801DD2C4 03E00008 */  jr    $ra
/* 1CE038 801DD2C8 27BD0070 */   addiu $sp, $sp, 0x70
.type func_801DCFC4_ovl10, @function
.size func_801DCFC4_ovl10, . - func_801DCFC4_ovl10
