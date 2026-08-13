nonmatching func_801831EC_ovl3, 0x23C

glabel func_801831EC_ovl3
    /* E3C2C 801831EC 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* E3C30 801831F0 44866000 */  mtc1       $a2, $f12
    /* E3C34 801831F4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* E3C38 801831F8 AFB30020 */  sw         $s3, 0x20($sp)
    /* E3C3C 801831FC AFB2001C */  sw         $s2, 0x1C($sp)
    /* E3C40 80183200 AFB10018 */  sw         $s1, 0x18($sp)
    /* E3C44 80183204 AFB00014 */  sw         $s0, 0x14($sp)
    /* E3C48 80183208 14A00080 */  bnez       $a1, .L8018340C_ovl3
    /* E3C4C 8018320C AFA40030 */   sw        $a0, 0x30($sp)
    /* E3C50 80183210 44802000 */  mtc1       $zero, $f4
    /* E3C54 80183214 24040039 */  addiu      $a0, $zero, 0x39
    /* E3C58 80183218 00002825 */  or         $a1, $zero, $zero
    /* E3C5C 8018321C 46046032 */  c.eq.s     $f12, $f4
    /* E3C60 80183220 3C0641F0 */  lui        $a2, (0x41F00000 >> 16)
    /* E3C64 80183224 4503007A */  bc1tl      .L80183410_ovl3
    /* E3C68 80183228 8FBF0024 */   lw        $ra, 0x24($sp)
    /* E3C6C 8018322C 0C06B328 */  jal        func_801ACCA0_ovl7
    /* E3C70 80183230 3C074170 */   lui       $a3, (0x41700000 >> 16)
    /* E3C74 80183234 3C138005 */  lui        $s3, %hi(omCurrentObj)
    /* E3C78 80183238 2673A7C4 */  addiu      $s3, $s3, %lo(omCurrentObj)
    /* E3C7C 8018323C 8E650000 */  lw         $a1, 0x0($s3)
    /* E3C80 80183240 AFA2002C */  sw         $v0, 0x2C($sp)
    /* E3C84 80183244 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* E3C88 80183248 8CAE0000 */  lw         $t6, 0x0($a1)
    /* E3C8C 8018324C 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* E3C90 80183250 00024080 */  sll        $t0, $v0, 2
    /* E3C94 80183254 000E7880 */  sll        $t7, $t6, 2
    /* E3C98 80183258 008FC021 */  addu       $t8, $a0, $t7
    /* E3C9C 8018325C 8F190000 */  lw         $t9, 0x0($t8)
    /* E3CA0 80183260 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* E3CA4 80183264 00280821 */  addu       $at, $at, $t0
    /* E3CA8 80183268 AC3998E0 */  sw         $t9, %lo(D_800E98E0)($at)
    /* E3CAC 8018326C 8CA90000 */  lw         $t1, 0x0($a1)
    /* E3CB0 80183270 24010001 */  addiu      $at, $zero, 0x1
    /* E3CB4 80183274 00095080 */  sll        $t2, $t1, 2
    /* E3CB8 80183278 008A5821 */  addu       $t3, $a0, $t2
    /* E3CBC 8018327C 8D630000 */  lw         $v1, 0x0($t3)
    /* E3CC0 80183280 1060003C */  beqz       $v1, .L80183374_ovl3
    /* E3CC4 80183284 00000000 */   nop
    /* E3CC8 80183288 1061001B */  beq        $v1, $at, .L801832F8_ovl3
    /* E3CCC 8018328C 24010002 */   addiu     $at, $zero, 0x2
    /* E3CD0 80183290 1461005C */  bne        $v1, $at, .L80183404_ovl3
    /* E3CD4 80183294 00000000 */   nop
    /* E3CD8 80183298 0C006291 */  jal        random_soft_s32_range
    /* E3CDC 8018329C 24040008 */   addiu     $a0, $zero, 0x8
    /* E3CE0 801832A0 8E650000 */  lw         $a1, 0x0($s3)
    /* E3CE4 801832A4 3C11800F */  lui        $s1, %hi(D_800E9C60)
    /* E3CE8 801832A8 26319C60 */  addiu      $s1, $s1, %lo(D_800E9C60)
    /* E3CEC 801832AC 8CAC0000 */  lw         $t4, 0x0($a1)
    /* E3CF0 801832B0 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* E3CF4 801832B4 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
    /* E3CF8 801832B8 000C6880 */  sll        $t5, $t4, 2
    /* E3CFC 801832BC 022D7021 */  addu       $t6, $s1, $t5
    /* E3D00 801832C0 ADC20000 */  sw         $v0, 0x0($t6)
    /* E3D04 801832C4 8CAF0000 */  lw         $t7, 0x0($a1)
    /* E3D08 801832C8 8FA6002C */  lw         $a2, 0x2C($sp)
    /* E3D0C 801832CC 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E3D10 801832D0 000FC080 */  sll        $t8, $t7, 2
    /* E3D14 801832D4 0238C821 */  addu       $t9, $s1, $t8
    /* E3D18 801832D8 8F280000 */  lw         $t0, 0x0($t9)
    /* E3D1C 801832DC 00063080 */  sll        $a2, $a2, 2
    /* E3D20 801832E0 02464821 */  addu       $t1, $s2, $a2
    /* E3D24 801832E4 00260821 */  addu       $at, $at, $a2
    /* E3D28 801832E8 240A0078 */  addiu      $t2, $zero, 0x78
    /* E3D2C 801832EC AD280000 */  sw         $t0, 0x0($t1)
    /* E3D30 801832F0 10000044 */  b          .L80183404_ovl3
    /* E3D34 801832F4 AC2A9720 */   sw        $t2, %lo(D_800E9720)($at)
  .L801832F8_ovl3:
    /* E3D38 801832F8 3C11800F */  lui        $s1, %hi(D_800E9C60)
    /* E3D3C 801832FC 3C10800D */  lui        $s0, %hi(D_800D71E8 + 0x10)
    /* E3D40 80183300 261071F8 */  addiu      $s0, $s0, %lo(D_800D71E8 + 0x10)
    /* E3D44 80183304 26319C60 */  addiu      $s1, $s1, %lo(D_800E9C60)
  .L80183308_ovl3:
    /* E3D48 80183308 0C006291 */  jal        random_soft_s32_range
    /* E3D4C 8018330C 24040008 */   addiu     $a0, $zero, 0x8
    /* E3D50 80183310 8E650000 */  lw         $a1, 0x0($s3)
    /* E3D54 80183314 AE020000 */  sw         $v0, 0x0($s0)
    /* E3D58 80183318 8CA30000 */  lw         $v1, 0x0($a1)
    /* E3D5C 8018331C 00031880 */  sll        $v1, $v1, 2
    /* E3D60 80183320 02235821 */  addu       $t3, $s1, $v1
    /* E3D64 80183324 8D6C0000 */  lw         $t4, 0x0($t3)
    /* E3D68 80183328 104CFFF7 */  beq        $v0, $t4, .L80183308_ovl3
    /* E3D6C 8018332C 00000000 */   nop
    /* E3D70 80183330 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* E3D74 80183334 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
    /* E3D78 80183338 02436821 */  addu       $t5, $s2, $v1
    /* E3D7C 8018333C ADA20000 */  sw         $v0, 0x0($t5)
    /* E3D80 80183340 8CAE0000 */  lw         $t6, 0x0($a1)
    /* E3D84 80183344 8FA6002C */  lw         $a2, 0x2C($sp)
    /* E3D88 80183348 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E3D8C 8018334C 000E7880 */  sll        $t7, $t6, 2
    /* E3D90 80183350 024FC021 */  addu       $t8, $s2, $t7
    /* E3D94 80183354 8F190000 */  lw         $t9, 0x0($t8)
    /* E3D98 80183358 00063080 */  sll        $a2, $a2, 2
    /* E3D9C 8018335C 02464021 */  addu       $t0, $s2, $a2
    /* E3DA0 80183360 00260821 */  addu       $at, $at, $a2
    /* E3DA4 80183364 2409005A */  addiu      $t1, $zero, 0x5A
    /* E3DA8 80183368 AD190000 */  sw         $t9, 0x0($t0)
    /* E3DAC 8018336C 10000025 */  b          .L80183404_ovl3
    /* E3DB0 80183370 AC299720 */   sw        $t1, %lo(D_800E9720)($at)
  .L80183374_ovl3:
    /* E3DB4 80183374 3C12800F */  lui        $s2, %hi(D_800E9AA0)
    /* E3DB8 80183378 3C11800F */  lui        $s1, %hi(D_800E9C60)
    /* E3DBC 8018337C 3C10800D */  lui        $s0, %hi(D_800D71E8 + 0x10)
    /* E3DC0 80183380 261071F8 */  addiu      $s0, $s0, %lo(D_800D71E8 + 0x10)
    /* E3DC4 80183384 26319C60 */  addiu      $s1, $s1, %lo(D_800E9C60)
    /* E3DC8 80183388 26529AA0 */  addiu      $s2, $s2, %lo(D_800E9AA0)
  .L8018338C_ovl3:
    /* E3DCC 8018338C 0C006291 */  jal        random_soft_s32_range
    /* E3DD0 80183390 24040008 */   addiu     $a0, $zero, 0x8
    /* E3DD4 80183394 8E650000 */  lw         $a1, 0x0($s3)
    /* E3DD8 80183398 AE020000 */  sw         $v0, 0x0($s0)
    /* E3DDC 8018339C 8CA30000 */  lw         $v1, 0x0($a1)
    /* E3DE0 801833A0 00031880 */  sll        $v1, $v1, 2
    /* E3DE4 801833A4 02235021 */  addu       $t2, $s1, $v1
    /* E3DE8 801833A8 8D4B0000 */  lw         $t3, 0x0($t2)
    /* E3DEC 801833AC 104BFFF7 */  beq        $v0, $t3, .L8018338C_ovl3
    /* E3DF0 801833B0 00000000 */   nop
    /* E3DF4 801833B4 02436021 */  addu       $t4, $s2, $v1
    /* E3DF8 801833B8 8D8D0000 */  lw         $t5, 0x0($t4)
    /* E3DFC 801833BC 104DFFF3 */  beq        $v0, $t5, .L8018338C_ovl3
    /* E3E00 801833C0 00000000 */   nop
    /* E3E04 801833C4 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* E3E08 801833C8 00230821 */  addu       $at, $at, $v1
    /* E3E0C 801833CC AC2298E0 */  sw         $v0, %lo(D_800E98E0)($at)
    /* E3E10 801833D0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* E3E14 801833D4 8FA6002C */  lw         $a2, 0x2C($sp)
    /* E3E18 801833D8 3C18800F */  lui        $t8, %hi(D_800E98E0)
    /* E3E1C 801833DC 000E7880 */  sll        $t7, $t6, 2
    /* E3E20 801833E0 030FC021 */  addu       $t8, $t8, $t7
    /* E3E24 801833E4 8F1898E0 */  lw         $t8, %lo(D_800E98E0)($t8)
    /* E3E28 801833E8 00063080 */  sll        $a2, $a2, 2
    /* E3E2C 801833EC 0246C821 */  addu       $t9, $s2, $a2
    /* E3E30 801833F0 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E3E34 801833F4 00260821 */  addu       $at, $at, $a2
    /* E3E38 801833F8 2408003C */  addiu      $t0, $zero, 0x3C
    /* E3E3C 801833FC AF380000 */  sw         $t8, 0x0($t9)
    /* E3E40 80183400 AC289720 */  sw         $t0, %lo(D_800E9720)($at)
  .L80183404_ovl3:
    /* E3E44 80183404 0C029D9E */  jal        play_sound
    /* E3E48 80183408 24040053 */   addiu     $a0, $zero, 0x53
  .L8018340C_ovl3:
    /* E3E4C 8018340C 8FBF0024 */  lw         $ra, 0x24($sp)
  .L80183410_ovl3:
    /* E3E50 80183410 8FB00014 */  lw         $s0, 0x14($sp)
    /* E3E54 80183414 8FB10018 */  lw         $s1, 0x18($sp)
    /* E3E58 80183418 8FB2001C */  lw         $s2, 0x1C($sp)
    /* E3E5C 8018341C 8FB30020 */  lw         $s3, 0x20($sp)
    /* E3E60 80183420 03E00008 */  jr         $ra
    /* E3E64 80183424 27BD0030 */   addiu     $sp, $sp, 0x30
endlabel func_801831EC_ovl3
.size func_801831EC_ovl3, . - func_801831EC_ovl3
