glabel func_802110C0_ovl9
/* 1BF110 802110C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1BF114 802110C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1BF118 802110C8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 1BF11C 802110CC 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 1BF120 802110D0 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1BF124 802110D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1BF128 802110D8 AFA40020 */  sw         $a0, 0x20($sp)
/* 1BF12C 802110DC 8DC30000 */  lw         $v1, 0x0($t6)
/* 1BF130 802110E0 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1BF134 802110E4 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1BF138 802110E8 00031880 */  sll        $v1, $v1, 2
/* 1BF13C 802110EC 00431021 */  addu       $v0, $v0, $v1
/* 1BF140 802110F0 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1BF144 802110F4 00230821 */  addu       $at, $at, $v1
/* 1BF148 802110F8 240F0001 */  addiu      $t7, $zero, 0x1
/* 1BF14C 802110FC 3C18801D */  lui        $t8, %hi(D_801CCA3C)
/* 1BF150 80211100 AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1BF154 80211104 2718CA3C */  addiu      $t8, $t8, %lo(D_801CCA3C)
/* 1BF158 80211108 AC580098 */  sw         $t8, 0x98($v0)
/* 1BF15C 8021110C 8E190000 */  lw         $t9, 0x0($s0)
/* 1BF160 80211110 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BF164 80211114 8F230000 */  lw         $v1, 0x0($t9)
/* 1BF168 80211118 00031880 */  sll        $v1, $v1, 2
/* 1BF16C 8021111C 00230821 */  addu       $at, $at, $v1
/* 1BF170 80211120 C420A6E0 */  lwc1       $f0, %lo(D_800EA6E0)($at)
/* 1BF174 80211124 3C018022 */  lui        $at, %hi(D_8021DD08_ovl9)
/* 1BF178 80211128 C424DD08 */  lwc1       $f4, %lo(D_8021DD08_ovl9)($at)
/* 1BF17C 8021112C 3C018022 */  lui        $at, %hi(D_8021DD0C_ovl9)
/* 1BF180 80211130 4600203C */  c.lt.s     $f4, $f0
/* 1BF184 80211134 00000000 */  nop
/* 1BF188 80211138 45000005 */  bc1f       .L80211150_ovl9
/* 1BF18C 8021113C 00000000 */   nop
/* 1BF190 80211140 C426DD0C */  lwc1       $f6, %lo(D_8021DD0C_ovl9)($at)
/* 1BF194 80211144 4606003C */  c.lt.s     $f0, $f6
/* 1BF198 80211148 00000000 */  nop
/* 1BF19C 8021114C 4501000B */  bc1t       .L8021117C_ovl9
.L80211150_ovl9:
/* 1BF1A0 80211150 3C018022 */   lui       $at, %hi(D_8021DD10_ovl9)
/* 1BF1A4 80211154 C428DD10 */  lwc1       $f8, %lo(D_8021DD10_ovl9)($at)
/* 1BF1A8 80211158 3C018022 */  lui        $at, %hi(D_8021DD14_ovl9)
/* 1BF1AC 8021115C 4600403C */  c.lt.s     $f8, $f0
/* 1BF1B0 80211160 00000000 */  nop
/* 1BF1B4 80211164 4502000B */  bc1fl      .L80211194_ovl9
/* 1BF1B8 80211168 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* 1BF1BC 8021116C C42ADD14 */  lwc1       $f10, %lo(D_8021DD14_ovl9)($at)
/* 1BF1C0 80211170 460A003C */  c.lt.s     $f0, $f10
/* 1BF1C4 80211174 00000000 */  nop
/* 1BF1C8 80211178 45000005 */  bc1f       .L80211190_ovl9
.L8021117C_ovl9:
/* 1BF1CC 8021117C 3C040001 */   lui       $a0, (0x1023D >> 16)
/* 1BF1D0 80211180 0C02A806 */  jal        func_800AA018
/* 1BF1D4 80211184 3484023D */   ori       $a0, $a0, (0x1023D & 0xFFFF)
/* 1BF1D8 80211188 10000034 */  b          .L8021125C_ovl9
/* 1BF1DC 8021118C 8E020000 */   lw        $v0, 0x0($s0)
.L80211190_ovl9:
/* 1BF1E0 80211190 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L80211194_ovl9:
/* 1BF1E4 80211194 44818000 */  mtc1       $at, $f16
/* 1BF1E8 80211198 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1BF1EC 8021119C 00230821 */  addu       $at, $at, $v1
/* 1BF1F0 802111A0 C4326A10 */  lwc1       $f18, %lo(D_800E6A10)($at)
/* 1BF1F4 802111A4 3C040001 */  lui        $a0, (0x1023B >> 16)
/* 1BF1F8 802111A8 46128032 */  c.eq.s     $f16, $f18
/* 1BF1FC 802111AC 00000000 */  nop
/* 1BF200 802111B0 45000015 */  bc1f       .L80211208_ovl9
/* 1BF204 802111B4 00000000 */   nop
/* 1BF208 802111B8 3C040001 */  lui        $a0, (0x1023C >> 16)
/* 1BF20C 802111BC 0C02A806 */  jal        func_800AA018
/* 1BF210 802111C0 3484023C */   ori       $a0, $a0, (0x1023C & 0xFFFF)
/* 1BF214 802111C4 8E080000 */  lw         $t0, 0x0($s0)
/* 1BF218 802111C8 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BF21C 802111CC 8D090000 */  lw         $t1, 0x0($t0)
/* 1BF220 802111D0 00095080 */  sll        $t2, $t1, 2
/* 1BF224 802111D4 002A0821 */  addu       $at, $at, $t2
/* 1BF228 802111D8 0C00B5B8 */  jal        sinf
/* 1BF22C 802111DC C42CA6E0 */   lwc1      $f12, %lo(D_800EA6E0)($at)
/* 1BF230 802111E0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1BF234 802111E4 44812000 */  mtc1       $at, $f4
/* 1BF238 802111E8 8E020000 */  lw         $v0, 0x0($s0)
/* 1BF23C 802111EC 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1BF240 802111F0 46040182 */  mul.s      $f6, $f0, $f4
/* 1BF244 802111F4 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1BF248 802111F8 000B6080 */  sll        $t4, $t3, 2
/* 1BF24C 802111FC 002C0821 */  addu       $at, $at, $t4
/* 1BF250 80211200 10000016 */  b          .L8021125C_ovl9
/* 1BF254 80211204 E42664D0 */   swc1      $f6, %lo(D_800E64D0)($at)
.L80211208_ovl9:
/* 1BF258 80211208 0C02A806 */  jal        func_800AA018
/* 1BF25C 8021120C 3484023B */   ori       $a0, $a0, (0x1023B & 0xFFFF)
/* 1BF260 80211210 8E0D0000 */  lw         $t5, 0x0($s0)
/* 1BF264 80211214 3C018022 */  lui        $at, %hi(D_8021DD18_ovl9)
/* 1BF268 80211218 C428DD18 */  lwc1       $f8, %lo(D_8021DD18_ovl9)($at)
/* 1BF26C 8021121C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 1BF270 80211220 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BF274 80211224 000E7880 */  sll        $t7, $t6, 2
/* 1BF278 80211228 002F0821 */  addu       $at, $at, $t7
/* 1BF27C 8021122C C42AA6E0 */  lwc1       $f10, %lo(D_800EA6E0)($at)
/* 1BF280 80211230 0C00B5B8 */  jal        sinf
/* 1BF284 80211234 460A4301 */   sub.s     $f12, $f8, $f10
/* 1BF288 80211238 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1BF28C 8021123C 44818000 */  mtc1       $at, $f16
/* 1BF290 80211240 8E020000 */  lw         $v0, 0x0($s0)
/* 1BF294 80211244 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1BF298 80211248 46100482 */  mul.s      $f18, $f0, $f16
/* 1BF29C 8021124C 8C580000 */  lw         $t8, 0x0($v0)
/* 1BF2A0 80211250 0018C880 */  sll        $t9, $t8, 2
/* 1BF2A4 80211254 00390821 */  addu       $at, $at, $t9
/* 1BF2A8 80211258 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
.L8021125C_ovl9:
/* 1BF2AC 8021125C 8C480000 */  lw         $t0, 0x0($v0)
/* 1BF2B0 80211260 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* 1BF2B4 80211264 00084880 */  sll        $t1, $t0, 2
/* 1BF2B8 80211268 00290821 */  addu       $at, $at, $t1
/* 1BF2BC 8021126C 0C00D604 */  jal        cosf
/* 1BF2C0 80211270 C42CA6E0 */   lwc1      $f12, %lo(D_800EA6E0)($at)
/* 1BF2C4 80211274 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1BF2C8 80211278 44812000 */  mtc1       $at, $f4
/* 1BF2CC 8021127C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 1BF2D0 80211280 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1BF2D4 80211284 46040182 */  mul.s      $f6, $f0, $f4
/* 1BF2D8 80211288 8D4B0000 */  lw         $t3, 0x0($t2)
/* 1BF2DC 8021128C 24040221 */  addiu      $a0, $zero, 0x221
/* 1BF2E0 80211290 000B6080 */  sll        $t4, $t3, 2
/* 1BF2E4 80211294 002C0821 */  addu       $at, $at, $t4
/* 1BF2E8 80211298 0C029D9E */  jal        play_sound
/* 1BF2EC 8021129C E4263210 */   swc1      $f6, %lo(D_800E3210)($at)
/* 1BF2F0 802112A0 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1BF2F4 802112A4 3C01800F */  lui        $at, %hi(D_800E9AA0)
/* 1BF2F8 802112A8 240D0005 */  addiu      $t5, $zero, 0x5
/* 1BF2FC 802112AC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1BF300 802112B0 8FA40020 */  lw         $a0, 0x20($sp)
/* 1BF304 802112B4 000FC080 */  sll        $t8, $t7, 2
/* 1BF308 802112B8 00380821 */  addu       $at, $at, $t8
/* 1BF30C 802112BC 0C084539 */  jal        func_802114E4_ovl9
/* 1BF310 802112C0 AC2D9AA0 */   sw        $t5, %lo(D_800E9AA0)($at)
/* 1BF314 802112C4 0C002DAF */  jal        finish_current_thread
/* 1BF318 802112C8 24040096 */   addiu     $a0, $zero, 0x96
/* 1BF31C 802112CC 8E190000 */  lw         $t9, 0x0($s0)
/* 1BF320 802112D0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1BF324 802112D4 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1BF328 802112D8 8F280000 */  lw         $t0, 0x0($t9)
/* 1BF32C 802112DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1BF330 802112E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1BF334 802112E4 00084880 */  sll        $t1, $t0, 2
/* 1BF338 802112E8 00290821 */  addu       $at, $at, $t1
/* 1BF33C 802112EC 03E00008 */  jr         $ra
/* 1BF340 802112F0 AC20DC50 */   sw        $zero, %lo(gEntityVtableIndexArray)($at)
