glabel func_802201C0_ovl18
/* 232B60 802201C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 232B64 802201C4 AFB00018 */  sw         $s0, 0x18($sp)
/* 232B68 802201C8 3C108005 */  lui        $s0, %hi(D_8004A7C4)
/* 232B6C 802201CC 2610A7C4 */  addiu      $s0, $s0, %lo(D_8004A7C4)
/* 232B70 802201D0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 232B74 802201D4 8E110000 */  lw         $s1, 0x0($s0)
/* 232B78 802201D8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 232B7C 802201DC AFB20020 */  sw         $s2, 0x20($sp)
/* 232B80 802201E0 AFA40028 */  sw         $a0, 0x28($sp)
/* 232B84 802201E4 8E2F0000 */  lw         $t7, 0x0($s1)
/* 232B88 802201E8 3C0E800B */  lui        $t6, %hi(func_800B72AC)
/* 232B8C 802201EC 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 232B90 802201F0 000FC080 */  sll        $t8, $t7, 2
/* 232B94 802201F4 00380821 */  addu       $at, $at, $t8
/* 232B98 802201F8 25CE72AC */  addiu      $t6, $t6, %lo(func_800B72AC)
/* 232B9C 802201FC AC2EEF90 */  sw         $t6, %lo(D_800DEF90)($at)
/* 232BA0 80220200 8E280000 */  lw         $t0, 0x0($s1)
/* 232BA4 80220204 3C01800E */  lui        $at, %hi(D_800DF150)
/* 232BA8 80220208 3C198022 */  lui        $t9, %hi(func_80220424_ovl18)
/* 232BAC 8022020C 00084880 */  sll        $t1, $t0, 2
/* 232BB0 80220210 00290821 */  addu       $at, $at, $t1
/* 232BB4 80220214 27390424 */  addiu      $t9, $t9, %lo(func_80220424_ovl18)
/* 232BB8 80220218 3C048022 */  lui        $a0, %hi(func_802202B8_ovl18)
/* 232BBC 8022021C AC39F150 */  sw         $t9, %lo(D_800DF150)($at)
/* 232BC0 80220220 0C068354 */  jal        func_801A0D50_ovl7
/* 232BC4 80220224 248402B8 */   addiu     $a0, $a0, %lo(func_802202B8_ovl18)
/* 232BC8 80220228 8E110000 */  lw         $s1, 0x0($s0)
/* 232BCC 8022022C 3C01800F */  lui        $at, %hi(D_800E8920)
.L80220230_ovl19:
/* 232BD0 80220230 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 232BD4 80220234 8E2A0000 */  lw         $t2, 0x0($s1)
/* 232BD8 80220238 3C068023 */  lui        $a2, %hi(D_8022AB80_ovl18)
glabel func_8022023C_ovl19
/* 232BDC 8022023C 24C6AB80 */  addiu      $a2, $a2, %lo(D_8022AB80_ovl18)
/* 232BE0 80220240 000A5880 */  sll        $t3, $t2, 2
/* 232BE4 80220244 002B0821 */  addu       $at, $at, $t3
/* 232BE8 80220248 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 232BEC 8022024C 8E2C0000 */  lw         $t4, 0x0($s1)
/* 232BF0 80220250 24050001 */  addiu      $a1, $zero, 0x1
/* 232BF4 80220254 008C2021 */  addu       $a0, $a0, $t4
/* 232BF8 80220258 0C02911F */  jal        call_virtual_function
/* 232BFC 8022025C 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 232C00 80220260 3C128023 */  lui        $s2, %hi(D_8022AB84_ovl18)
/* 232C04 80220264 3C11800E */  lui        $s1, %hi(gEntityVtableIndexArray)
/* 232C08 80220268 2631DC50 */  addiu      $s1, $s1, %lo(gEntityVtableIndexArray)
/* 232C0C 8022026C 2652AB84 */  addiu      $s2, $s2, %lo(D_8022AB84_ovl18)
/* 232C10 80220270 8E0D0000 */  lw         $t5, 0x0($s0)
.L80220274_ovl18:
/* 232C14 80220274 24050002 */  addiu      $a1, $zero, 0x2
/* 232C18 80220278 02403025 */  or         $a2, $s2, $zero
/* 232C1C 8022027C 8DAF0000 */  lw         $t7, 0x0($t5)
glabel func_80220280_ovl19
/* 232C20 80220280 000F7080 */  sll        $t6, $t7, 2
/* 232C24 80220284 022EC021 */  addu       $t8, $s1, $t6
/* 232C28 80220288 0C02911F */  jal        call_virtual_function
/* 232C2C 8022028C 8F040000 */   lw        $a0, 0x0($t8)
/* 232C30 80220290 1000FFF8 */  b          .L80220274_ovl18
/* 232C34 80220294 8E0D0000 */   lw        $t5, 0x0($s0)
/* 232C38 80220298 00000000 */  nop
/* 232C3C 8022029C 00000000 */  nop
/* 232C40 802202A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 232C44 802202A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 232C48 802202A8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 232C4C 802202AC 8FB20020 */  lw         $s2, 0x20($sp)
/* 232C50 802202B0 03E00008 */  jr         $ra
/* 232C54 802202B4 27BD0028 */   addiu     $sp, $sp, 0x28
