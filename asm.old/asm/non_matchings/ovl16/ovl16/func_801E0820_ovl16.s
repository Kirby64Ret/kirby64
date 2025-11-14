glabel func_801E0820_ovl16
/* 216AD0 801E0820 27BDFF88 */  addiu $sp, $sp, -0x78
/* 216AD4 801E0824 AFB10034 */  sw    $s1, 0x34($sp)
/* 216AD8 801E0828 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 216ADC 801E082C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 216AE0 801E0830 8E2F0000 */  lw    $t7, ($s1)
/* 216AE4 801E0834 AFBF0054 */  sw    $ra, 0x54($sp)
/* 216AE8 801E0838 AFBE0050 */  sw    $fp, 0x50($sp)
/* 216AEC 801E083C AFB7004C */  sw    $s7, 0x4c($sp)
/* 216AF0 801E0840 AFB60048 */  sw    $s6, 0x48($sp)
/* 216AF4 801E0844 AFB50044 */  sw    $s5, 0x44($sp)
/* 216AF8 801E0848 AFB40040 */  sw    $s4, 0x40($sp)
/* 216AFC 801E084C AFB3003C */  sw    $s3, 0x3c($sp)
/* 216B00 801E0850 AFB20038 */  sw    $s2, 0x38($sp)
/* 216B04 801E0854 AFB00030 */  sw    $s0, 0x30($sp)
/* 216B08 801E0858 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 216B0C 801E085C F7B60020 */  sdc1  $f22, 0x20($sp)
/* 216B10 801E0860 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 216B14 801E0864 AFA40078 */  sw    $a0, 0x78($sp)
/* 216B18 801E0868 8DF80000 */  lw    $t8, ($t7)
/* 216B1C 801E086C 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 216B20 801E0870 240E0004 */  li    $t6, 4
/* 216B24 801E0874 0018C880 */  sll   $t9, $t8, 2
/* 216B28 801E0878 00390821 */  addu  $at, $at, $t9
/* 216B2C 801E087C AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 216B30 801E0880 0C006291 */  jal   random_soft_s32_range
/* 216B34 801E0884 24040002 */   li    $a0, 2
/* 216B38 801E0888 3C01C0A0 */  li    $at, 0xC0A00000 # -5.000000
/* 216B3C 801E088C 4481B000 */  mtc1  $at, $f22
/* 216B40 801E0890 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 216B44 801E0894 3C09801F */  lui   $t1, %hi(D_801EF8CC_ovl16) # $t1, 0x801f
/* 216B48 801E0898 2529F8CC */  addiu $t1, %lo(D_801EF8CC_ovl16) # addiu $t1, $t1, -0x734
/* 216B4C 801E089C 000240C0 */  sll   $t0, $v0, 3
/* 216B50 801E08A0 3C17800E */  lui   $s7, %hi(D_800E3210) # $s7, 0x800e
/* 216B54 801E08A4 3C16801F */  lui   $s6, %hi(D_801EF8C4_ovl16) # $s6, 0x801f
/* 216B58 801E08A8 3C15800E */  lui   $s5, %hi(gEntitiesNextPosYArray) # $s5, 0x800e
/* 216B5C 801E08AC 3C13800F */  lui   $s3, %hi(D_800E9E20) # $s3, 0x800f
/* 216B60 801E08B0 4481A000 */  mtc1  $at, $f20
/* 216B64 801E08B4 4480C000 */  mtc1  $zero, $f24
/* 216B68 801E08B8 26739E20 */  addiu $s3, %lo(D_800E9E20) # addiu $s3, $s3, -0x61e0
/* 216B6C 801E08BC 26B52790 */  addiu $s5, %lo(gEntitiesNextPosYArray) # addiu $s5, $s5, 0x2790
/* 216B70 801E08C0 26D6F8C4 */  addiu $s6, %lo(D_801EF8C4_ovl16) # addiu $s6, $s6, -0x73c
/* 216B74 801E08C4 26F73210 */  addiu $s7, %lo(D_800E3210) # addiu $s7, $s7, 0x3210
/* 216B78 801E08C8 0109A021 */  addu  $s4, $t0, $t1
/* 216B7C 801E08CC AFA00058 */  sw    $zero, 0x58($sp)
/* 216B80 801E08D0 241E000C */  li    $fp, 12
.L801E08D4_ovl16:
/* 216B84 801E08D4 8E230000 */  lw    $v1, ($s1)
/* 216B88 801E08D8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216B8C 801E08DC 8C6A0000 */  lw    $t2, ($v1)
/* 216B90 801E08E0 000A5880 */  sll   $t3, $t2, 2
/* 216B94 801E08E4 002B0821 */  addu  $at, $at, $t3
/* 216B98 801E08E8 E438A6E0 */ swc1 $f24, %lo(D_800EA6E0)($at)
/* 216B9C 801E08EC 8E8D0000 */  lw    $t5, ($s4)
/* 216BA0 801E08F0 8C700000 */  lw    $s0, ($v1)
/* 216BA4 801E08F4 000D7880 */  sll   $t7, $t5, 2
/* 216BA8 801E08F8 00108080 */  sll   $s0, $s0, 2
/* 216BAC 801E08FC 02B06021 */  addu  $t4, $s5, $s0
/* 216BB0 801E0900 02CFC021 */  addu  $t8, $s6, $t7
/* 216BB4 801E0904 C7020000 */  lwc1  $f2, ($t8)
/* 216BB8 801E0908 C5800000 */  lwc1  $f0, ($t4)
/* 216BBC 801E090C 4602003C */  c.lt.s $f0, $f2
/* 216BC0 801E0910 00000000 */  nop   
/* 216BC4 801E0914 45020005 */  bc1fl .L801E092C_ovl16
/* 216BC8 801E0918 46020301 */   sub.s $f12, $f0, $f2
/* 216BCC 801E091C 46020301 */  sub.s $f12, $f0, $f2
/* 216BD0 801E0920 10000002 */  b     .L801E092C_ovl16
/* 216BD4 801E0924 46006307 */   neg.s $f12, $f12
/* 216BD8 801E0928 46020301 */  sub.s $f12, $f0, $f2
.L801E092C_ovl16:
/* 216BDC 801E092C 460CA03C */  c.lt.s $f20, $f12
/* 216BE0 801E0930 00000000 */  nop   
/* 216BE4 801E0934 4500002F */  bc1f  .L801E09F4_ovl16
/* 216BE8 801E0938 3C040001 */   lui   $a0, (0x00010489 >> 16) # lui $a0, 1
.L801E093C_ovl16:
/* 216BEC 801E093C 0C02A7A9 */  jal   func_800A9EA4
/* 216BF0 801E0940 34840489 */   ori   $a0, (0x00010489 & 0xFFFF) # ori $a0, $a0, 0x489
/* 216BF4 801E0944 3C040001 */  lui   $a0, (0x00010488 >> 16) # lui $a0, 1
/* 216BF8 801E0948 0C02A7A9 */  jal   func_800A9EA4
/* 216BFC 801E094C 34840488 */   ori   $a0, (0x00010488 & 0xFFFF) # ori $a0, $a0, 0x488
/* 216C00 801E0950 8E2E0000 */  lw    $t6, ($s1)
/* 216C04 801E0954 8E990000 */  lw    $t9, ($s4)
/* 216C08 801E0958 8DD00000 */  lw    $s0, ($t6)
/* 216C0C 801E095C 00194080 */  sll   $t0, $t9, 2
/* 216C10 801E0960 02C84821 */  addu  $t1, $s6, $t0
/* 216C14 801E0964 00108080 */  sll   $s0, $s0, 2
/* 216C18 801E0968 02B05021 */  addu  $t2, $s5, $s0
/* 216C1C 801E096C C5460000 */  lwc1  $f6, ($t2)
/* 216C20 801E0970 C5240000 */  lwc1  $f4, ($t1)
/* 216C24 801E0974 02F06021 */  addu  $t4, $s7, $s0
/* 216C28 801E0978 02F05821 */  addu  $t3, $s7, $s0
/* 216C2C 801E097C 4606203C */  c.lt.s $f4, $f6
/* 216C30 801E0980 00000000 */  nop   
/* 216C34 801E0984 45020004 */  bc1fl .L801E0998_ovl16
/* 216C38 801E0988 E5940000 */   swc1  $f20, ($t4)
/* 216C3C 801E098C 10000002 */  b     .L801E0998_ovl16
/* 216C40 801E0990 E5760000 */   swc1  $f22, ($t3)
/* 216C44 801E0994 E5940000 */  swc1  $f20, ($t4)
.L801E0998_ovl16:
/* 216C48 801E0998 0C002DAF */  jal   finish_current_thread
/* 216C4C 801E099C 24040001 */   li    $a0, 1
/* 216C50 801E09A0 8E230000 */  lw    $v1, ($s1)
/* 216C54 801E09A4 8E8F0000 */  lw    $t7, ($s4)
/* 216C58 801E09A8 8C700000 */  lw    $s0, ($v1)
/* 216C5C 801E09AC 000FC080 */  sll   $t8, $t7, 2
/* 216C60 801E09B0 02D87021 */  addu  $t6, $s6, $t8
/* 216C64 801E09B4 00108080 */  sll   $s0, $s0, 2
/* 216C68 801E09B8 02B06821 */  addu  $t5, $s5, $s0
/* 216C6C 801E09BC C5A00000 */  lwc1  $f0, ($t5)
/* 216C70 801E09C0 C5C20000 */  lwc1  $f2, ($t6)
/* 216C74 801E09C4 4602003C */  c.lt.s $f0, $f2
/* 216C78 801E09C8 00000000 */  nop   
/* 216C7C 801E09CC 45020005 */  bc1fl .L801E09E4_ovl16
/* 216C80 801E09D0 46020301 */   sub.s $f12, $f0, $f2
/* 216C84 801E09D4 46020301 */  sub.s $f12, $f0, $f2
/* 216C88 801E09D8 10000002 */  b     .L801E09E4_ovl16
/* 216C8C 801E09DC 46006307 */   neg.s $f12, $f12
/* 216C90 801E09E0 46020301 */  sub.s $f12, $f0, $f2
.L801E09E4_ovl16:
/* 216C94 801E09E4 460CA03C */  c.lt.s $f20, $f12
/* 216C98 801E09E8 00000000 */  nop   
/* 216C9C 801E09EC 4503FFD3 */  bc1tl .L801E093C_ovl16
/* 216CA0 801E09F0 3C040001 */   lui   $a0, 1
.L801E09F4_ovl16:
/* 216CA4 801E09F4 3C02800E */  lui   $v0, %hi(D_800E3750) # $v0, 0x800e
/* 216CA8 801E09F8 24423750 */  addiu $v0, %lo(D_800E3750) # addiu $v0, $v0, 0x3750
/* 216CAC 801E09FC 0050C821 */  addu  $t9, $v0, $s0
/* 216CB0 801E0A00 E7380000 */  swc1  $f24, ($t9)
/* 216CB4 801E0A04 8C700000 */  lw    $s0, ($v1)
/* 216CB8 801E0A08 3C01801F */  lui   $at, %hi(D_801EFF00_ovl16) # $at, 0x801f
/* 216CBC 801E0A0C 3C0F800E */ lui $t7, %hi(D_800DFBD0)
/* 216CC0 801E0A10 00108080 */  sll   $s0, $s0, 2
/* 216CC4 801E0A14 00504021 */  addu  $t0, $v0, $s0
/* 216CC8 801E0A18 C5080000 */  lwc1  $f8, ($t0)
/* 216CCC 801E0A1C 02F04821 */  addu  $t1, $s7, $s0
/* 216CD0 801E0A20 24040006 */  li    $a0, 6
/* 216CD4 801E0A24 E5280000 */  swc1  $f8, ($t1)
/* 216CD8 801E0A28 8C6A0000 */  lw    $t2, ($v1)
/* 216CDC 801E0A2C C42AFF00 */  lwc1  $f10, %lo(D_801EFF00_ovl16)($at)
/* 216CE0 801E0A30 3C01800E */ lui $at, %hi(D_800E3C90)
/* 216CE4 801E0A34 000A5880 */  sll   $t3, $t2, 2
/* 216CE8 801E0A38 002B0821 */  addu  $at, $at, $t3
/* 216CEC 801E0A3C E42A3C90 */ swc1 $f10, %lo(D_800E3C90)($at)
/* 216CF0 801E0A40 8C6C0000 */  lw    $t4, ($v1)
/* 216CF4 801E0A44 24050002 */  li    $a1, 2
/* 216CF8 801E0A48 24060006 */  li    $a2, 6
/* 216CFC 801E0A4C 000C6880 */  sll   $t5, $t4, 2
/* 216D00 801E0A50 01ED7821 */  addu  $t7, $t7, $t5
/* 216D04 801E0A54 8DEFFBD0 */ lw $t7, %lo(D_800DFBD0)($t7)
/* 216D08 801E0A58 0C02A040 */  jal   func_800A8100
/* 216D0C 801E0A5C 8DE70028 */   lw    $a3, 0x28($t7)
/* 216D10 801E0A60 0C002DAF */  jal   finish_current_thread
/* 216D14 801E0A64 2404000D */   li    $a0, 13
/* 216D18 801E0A68 8E230000 */  lw    $v1, ($s1)
/* 216D1C 801E0A6C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 216D20 801E0A70 44818000 */  mtc1  $at, $f16
/* 216D24 801E0A74 8C780000 */  lw    $t8, ($v1)
/* 216D28 801E0A78 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216D2C 801E0A7C 240401AB */  li    $a0, 427
/* 216D30 801E0A80 00187080 */  sll   $t6, $t8, 2
/* 216D34 801E0A84 026EC821 */  addu  $t9, $s3, $t6
/* 216D38 801E0A88 AF200000 */  sw    $zero, ($t9)
/* 216D3C 801E0A8C 8C680000 */  lw    $t0, ($v1)
/* 216D40 801E0A90 00084880 */  sll   $t1, $t0, 2
/* 216D44 801E0A94 00290821 */  addu  $at, $at, $t1
/* 216D48 801E0A98 0C029D9E */  jal   play_sound
/* 216D4C 801E0A9C E430A6E0 */ swc1 $f16, %lo(D_800EA6E0)($at)
/* 216D50 801E0AA0 3C040001 */  lui   $a0, (0x00010473 >> 16) # lui $a0, 1
/* 216D54 801E0AA4 0C02A806 */  jal   func_800AA018
/* 216D58 801E0AA8 34840473 */   ori   $a0, (0x00010473 & 0xFFFF) # ori $a0, $a0, 0x473
/* 216D5C 801E0AAC 3C040001 */  lui   $a0, (0x00010472 >> 16) # lui $a0, 1
/* 216D60 801E0AB0 0C02A855 */  jal   func_800AA154
/* 216D64 801E0AB4 34840472 */   ori   $a0, (0x00010472 & 0xFFFF) # ori $a0, $a0, 0x472
/* 216D68 801E0AB8 3C040001 */  lui   $a0, (0x00010475 >> 16) # lui $a0, 1
/* 216D6C 801E0ABC 0C02A806 */  jal   func_800AA018
/* 216D70 801E0AC0 34840475 */   ori   $a0, (0x00010475 & 0xFFFF) # ori $a0, $a0, 0x475
/* 216D74 801E0AC4 3C040001 */  lui   $a0, (0x00010474 >> 16) # lui $a0, 1
/* 216D78 801E0AC8 0C02A806 */  jal   func_800AA018
/* 216D7C 801E0ACC 34840474 */   ori   $a0, (0x00010474 & 0xFFFF) # ori $a0, $a0, 0x474
/* 216D80 801E0AD0 8E2A0000 */  lw    $t2, ($s1)
/* 216D84 801E0AD4 8D4B0000 */  lw    $t3, ($t2)
/* 216D88 801E0AD8 000B6080 */  sll   $t4, $t3, 2
/* 216D8C 801E0ADC 026C6821 */  addu  $t5, $s3, $t4
/* 216D90 801E0AE0 8DAF0000 */  lw    $t7, ($t5)
/* 216D94 801E0AE4 13CF000A */  beq   $fp, $t7, .L801E0B10_ovl16
/* 216D98 801E0AE8 00000000 */   nop   
.L801E0AEC_ovl16:
/* 216D9C 801E0AEC 0C002DAF */  jal   finish_current_thread
/* 216DA0 801E0AF0 24040001 */   li    $a0, 1
/* 216DA4 801E0AF4 8E380000 */  lw    $t8, ($s1)
/* 216DA8 801E0AF8 8F0E0000 */  lw    $t6, ($t8)
/* 216DAC 801E0AFC 000EC880 */  sll   $t9, $t6, 2
/* 216DB0 801E0B00 02794021 */  addu  $t0, $s3, $t9
/* 216DB4 801E0B04 8D090000 */  lw    $t1, ($t0)
/* 216DB8 801E0B08 17C9FFF8 */  bne   $fp, $t1, .L801E0AEC_ovl16
/* 216DBC 801E0B0C 00000000 */   nop   
.L801E0B10_ovl16:
/* 216DC0 801E0B10 0C002DAF */  jal   finish_current_thread
/* 216DC4 801E0B14 2404001E */   li    $a0, 30
/* 216DC8 801E0B18 0C029D9E */  jal   play_sound
/* 216DCC 801E0B1C 240401AA */   li    $a0, 426
/* 216DD0 801E0B20 24040030 */  li    $a0, 48
/* 216DD4 801E0B24 0C06B30D */  jal   func_801ACC34_ovl16
/* 216DD8 801E0B28 24050001 */   li    $a1, 1
/* 216DDC 801E0B2C 00029080 */  sll   $s2, $v0, 2
/* 216DE0 801E0B30 3C01800F */ lui $at, %hi(D_800E8E60)
/* 216DE4 801E0B34 00320821 */  addu  $at, $at, $s2
/* 216DE8 801E0B38 240A0001 */  li    $t2, 1
/* 216DEC 801E0B3C AC2A8E60 */ sw $t2, %lo(D_800E8E60)($at)
/* 216DF0 801E0B40 8E2B0000 */  lw    $t3, ($s1)
/* 216DF4 801E0B44 3C0C800E */ lui $t4, %hi(D_800DFBD0)
/* 216DF8 801E0B48 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 216DFC 801E0B4C 8D700000 */  lw    $s0, ($t3)
/* 216E00 801E0B50 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 216E04 801E0B54 0072C021 */  addu  $t8, $v1, $s2
/* 216E08 801E0B58 00108080 */  sll   $s0, $s0, 2
/* 216E0C 801E0B5C 01906021 */  addu  $t4, $t4, $s0
/* 216E10 801E0B60 8D8CFBD0 */ lw $t4, %lo(D_800DFBD0)($t4)
/* 216E14 801E0B64 00707821 */  addu  $t7, $v1, $s0
/* 216E18 801E0B68 C5E40000 */  lwc1  $f4, ($t7)
/* 216E1C 801E0B6C 8D8D001C */  lw    $t5, 0x1c($t4)
/* 216E20 801E0B70 24040030 */  li    $a0, 48
/* 216E24 801E0B74 24050003 */  li    $a1, 3
/* 216E28 801E0B78 C5B2001C */  lwc1  $f18, 0x1c($t5)
/* 216E2C 801E0B7C 46049180 */  add.s $f6, $f18, $f4
/* 216E30 801E0B80 0C06B30D */  jal   func_801ACC34_ovl16
/* 216E34 801E0B84 E7060000 */   swc1  $f6, ($t8)
/* 216E38 801E0B88 00029080 */  sll   $s2, $v0, 2
/* 216E3C 801E0B8C 3C01800F */ lui $at, %hi(D_800E8E60)
/* 216E40 801E0B90 00320821 */  addu  $at, $at, $s2
/* 216E44 801E0B94 240E0001 */  li    $t6, 1
/* 216E48 801E0B98 AC2E8E60 */ sw $t6, %lo(D_800E8E60)($at)
/* 216E4C 801E0B9C 8E230000 */  lw    $v1, ($s1)
/* 216E50 801E0BA0 3C19800E */ lui $t9, %hi(D_800DFBD0)
/* 216E54 801E0BA4 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 216E58 801E0BA8 8C700000 */  lw    $s0, ($v1)
/* 216E5C 801E0BAC 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 216E60 801E0BB0 02495821 */  addu  $t3, $s2, $t1
/* 216E64 801E0BB4 00108080 */  sll   $s0, $s0, 2
/* 216E68 801E0BB8 0330C821 */  addu  $t9, $t9, $s0
/* 216E6C 801E0BBC 8F39FBD0 */ lw $t9, %lo(D_800DFBD0)($t9)
/* 216E70 801E0BC0 02095021 */  addu  $t2, $s0, $t1
/* 216E74 801E0BC4 C54A0000 */  lwc1  $f10, ($t2)
/* 216E78 801E0BC8 8F28000C */  lw    $t0, 0xc($t9)
/* 216E7C 801E0BCC 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 216E80 801E0BD0 44819000 */  mtc1  $at, $f18
/* 216E84 801E0BD4 C508001C */  lwc1  $f8, 0x1c($t0)
/* 216E88 801E0BD8 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216E8C 801E0BDC 460A4400 */  add.s $f16, $f8, $f10
/* 216E90 801E0BE0 E5700000 */  swc1  $f16, ($t3)
/* 216E94 801E0BE4 8C6C0000 */  lw    $t4, ($v1)
/* 216E98 801E0BE8 000C6880 */  sll   $t5, $t4, 2
/* 216E9C 801E0BEC 002D0821 */  addu  $at, $at, $t5
/* 216EA0 801E0BF0 E432A6E0 */ swc1 $f18, %lo(D_800EA6E0)($at)
/* 216EA4 801E0BF4 8C700000 */  lw    $s0, ($v1)
/* 216EA8 801E0BF8 00108080 */  sll   $s0, $s0, 2
/* 216EAC 801E0BFC 02707821 */  addu  $t7, $s3, $s0
/* 216EB0 801E0C00 8DF80000 */  lw    $t8, ($t7)
/* 216EB4 801E0C04 1300000A */  beqz  $t8, .L801E0C30_ovl16
/* 216EB8 801E0C08 00000000 */   nop   
.L801E0C0C_ovl16:
/* 216EBC 801E0C0C 0C002DAF */  jal   finish_current_thread
/* 216EC0 801E0C10 24040001 */   li    $a0, 1
/* 216EC4 801E0C14 8E2E0000 */  lw    $t6, ($s1)
/* 216EC8 801E0C18 8DD00000 */  lw    $s0, ($t6)
/* 216ECC 801E0C1C 00108080 */  sll   $s0, $s0, 2
/* 216ED0 801E0C20 0270C821 */  addu  $t9, $s3, $s0
/* 216ED4 801E0C24 8F280000 */  lw    $t0, ($t9)
/* 216ED8 801E0C28 1500FFF8 */  bnez  $t0, .L801E0C0C_ovl16
/* 216EDC 801E0C2C 00000000 */   nop   
.L801E0C30_ovl16:
/* 216EE0 801E0C30 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 216EE4 801E0C34 00300821 */  addu  $at, $at, $s0
/* 216EE8 801E0C38 0C02BC9F */  jal   func_800AF27C
/* 216EEC 801E0C3C E438A6E0 */ swc1 $f24, %lo(D_800EA6E0)($at)
/* 216EF0 801E0C40 3C040001 */  lui   $a0, (0x00010477 >> 16) # lui $a0, 1
/* 216EF4 801E0C44 0C02A806 */  jal   func_800AA018
/* 216EF8 801E0C48 34840477 */   ori   $a0, (0x00010477 & 0xFFFF) # ori $a0, $a0, 0x477
/* 216EFC 801E0C4C 3C040001 */  lui   $a0, (0x00010476 >> 16) # lui $a0, 1
/* 216F00 801E0C50 0C02A855 */  jal   func_800AA154
/* 216F04 801E0C54 34840476 */   ori   $a0, (0x00010476 & 0xFFFF) # ori $a0, $a0, 0x476
/* 216F08 801E0C58 8FAA0058 */  lw    $t2, 0x58($sp)
/* 216F0C 801E0C5C 24010008 */  li    $at, 8
/* 216F10 801E0C60 26940004 */  addiu $s4, $s4, 4
/* 216F14 801E0C64 25490004 */  addiu $t1, $t2, 4
/* 216F18 801E0C68 1521FF1A */  bne   $t1, $at, .L801E08D4_ovl16
/* 216F1C 801E0C6C AFA90058 */   sw    $t1, 0x58($sp)
/* 216F20 801E0C70 8E2C0000 */  lw    $t4, ($s1)
/* 216F24 801E0C74 8FBF0054 */  lw    $ra, 0x54($sp)
/* 216F28 801E0C78 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 216F2C 801E0C7C 8D8D0000 */  lw    $t5, ($t4)
/* 216F30 801E0C80 240B0007 */  li    $t3, 7
/* 216F34 801E0C84 8FB10034 */  lw    $s1, 0x34($sp)
/* 216F38 801E0C88 000D7880 */  sll   $t7, $t5, 2
/* 216F3C 801E0C8C 002F0821 */  addu  $at, $at, $t7
/* 216F40 801E0C90 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 216F44 801E0C94 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 216F48 801E0C98 D7B80028 */  ldc1  $f24, 0x28($sp)
/* 216F4C 801E0C9C 8FB00030 */  lw    $s0, 0x30($sp)
/* 216F50 801E0CA0 8FB20038 */  lw    $s2, 0x38($sp)
/* 216F54 801E0CA4 8FB3003C */  lw    $s3, 0x3c($sp)
/* 216F58 801E0CA8 8FB40040 */  lw    $s4, 0x40($sp)
/* 216F5C 801E0CAC 8FB50044 */  lw    $s5, 0x44($sp)
/* 216F60 801E0CB0 8FB60048 */  lw    $s6, 0x48($sp)
/* 216F64 801E0CB4 8FB7004C */  lw    $s7, 0x4c($sp)
/* 216F68 801E0CB8 8FBE0050 */  lw    $fp, 0x50($sp)
/* 216F6C 801E0CBC AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 216F70 801E0CC0 03E00008 */  jr    $ra
/* 216F74 801E0CC4 27BD0078 */   addiu $sp, $sp, 0x78
.type func_801E0820_ovl16, @function
.size func_801E0820_ovl16, . - func_801E0820_ovl16
