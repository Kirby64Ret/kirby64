glabel func_801A9FC4_ovl7
/* 150034 801A9FC4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 150038 801A9FC8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 15003C 801A9FCC 3C118005 */  lui        $s1, %hi(D_8004A7C4)
/* 150040 801A9FD0 2631A7C4 */  addiu      $s1, $s1, %lo(D_8004A7C4)
/* 150044 801A9FD4 8E2E0000 */  lw         $t6, 0x0($s1)
/* 150048 801A9FD8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 15004C 801A9FDC AFBE0038 */  sw         $fp, 0x38($sp)
/* 150050 801A9FE0 AFB70034 */  sw         $s7, 0x34($sp)
/* 150054 801A9FE4 AFB60030 */  sw         $s6, 0x30($sp)
/* 150058 801A9FE8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 15005C 801A9FEC AFB40028 */  sw         $s4, 0x28($sp)
/* 150060 801A9FF0 AFB30024 */  sw         $s3, 0x24($sp)
/* 150064 801A9FF4 AFB20020 */  sw         $s2, 0x20($sp)
/* 150068 801A9FF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 15006C 801A9FFC AFA40040 */  sw         $a0, 0x40($sp)
/* 150070 801AA000 8DCF0000 */  lw         $t7, 0x0($t6)
/* 150074 801AA004 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 150078 801AA008 000FC080 */  sll        $t8, $t7, 2
/* 15007C 801AA00C 00581021 */  addu       $v0, $v0, $t8
/* 150080 801AA010 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 150084 801AA014 8C590088 */  lw         $t9, 0x88($v0)
/* 150088 801AA018 8F28000C */  lw         $t0, 0xC($t9)
/* 15008C 801AA01C 8D090004 */  lw         $t1, 0x4($t0)
/* 150090 801AA020 8D23001C */  lw         $v1, 0x1C($t1)
/* 150094 801AA024 0C02BD02 */  jal        func_800AF408
/* 150098 801AA028 8C740014 */   lw        $s4, 0x14($v1)
/* 15009C 801AA02C 8E2A0000 */  lw         $t2, 0x0($s1)
/* 1500A0 801AA030 0C02A759 */  jal        func_800A9D64
/* 1500A4 801AA034 8D440000 */   lw        $a0, 0x0($t2)
/* 1500A8 801AA038 26950020 */  addiu      $s5, $s4, 0x20
/* 1500AC 801AA03C 0C06A9A4 */  jal        func_801AA690_ovl7
/* 1500B0 801AA040 02A02025 */   or        $a0, $s5, $zero
/* 1500B4 801AA044 3C170002 */  lui        $s7, (0x20007 >> 16)
/* 1500B8 801AA048 3C16800E */  lui        $s6, %hi(D_800E0D50)
/* 1500BC 801AA04C 3C12800E */  lui        $s2, %hi(D_800E0F10)
/* 1500C0 801AA050 3C108013 */  lui        $s0, %hi(gKirbyState)
/* 1500C4 801AA054 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* 1500C8 801AA058 26520F10 */  addiu      $s2, $s2, %lo(D_800E0F10)
/* 1500CC 801AA05C 26D60D50 */  addiu      $s6, $s6, %lo(D_800E0D50)
/* 1500D0 801AA060 36F70007 */  ori        $s7, $s7, (0x20007 & 0xFFFF)
/* 1500D4 801AA064 241E000E */  addiu      $fp, $zero, 0xE
/* 1500D8 801AA068 24130014 */  addiu      $s3, $zero, 0x14
/* 1500DC 801AA06C 8E2B0000 */  lw         $t3, 0x0($s1)
.L801AA070_ovl7:
/* 1500E0 801AA070 02E02825 */  or         $a1, $s7, $zero
/* 1500E4 801AA074 8D6C0000 */  lw         $t4, 0x0($t3)
/* 1500E8 801AA078 000C6880 */  sll        $t5, $t4, 2
/* 1500EC 801AA07C 02CD7021 */  addu       $t6, $s6, $t5
/* 1500F0 801AA080 0C02AA39 */  jal        func_800AA8E4
/* 1500F4 801AA084 8DC40000 */   lw        $a0, 0x0($t6)
/* 1500F8 801AA088 50400008 */  beql       $v0, $zero, .L801AA0AC_ovl7
/* 1500FC 801AA08C 8E2A0000 */   lw        $t2, 0x0($s1)
/* 150100 801AA090 8E2F0000 */  lw         $t7, 0x0($s1)
/* 150104 801AA094 8DF80000 */  lw         $t8, 0x0($t7)
/* 150108 801AA098 0018C880 */  sll        $t9, $t8, 2
/* 15010C 801AA09C 02594021 */  addu       $t0, $s2, $t9
/* 150110 801AA0A0 10000007 */  b          .L801AA0C0_ovl7
/* 150114 801AA0A4 AD1E0000 */   sw        $fp, 0x0($t0)
/* 150118 801AA0A8 8E2A0000 */  lw         $t2, 0x0($s1)
.L801AA0AC_ovl7:
/* 15011C 801AA0AC 24090010 */  addiu      $t1, $zero, 0x10
/* 150120 801AA0B0 8D4B0000 */  lw         $t3, 0x0($t2)
/* 150124 801AA0B4 000B6080 */  sll        $t4, $t3, 2
/* 150128 801AA0B8 024C6821 */  addu       $t5, $s2, $t4
/* 15012C 801AA0BC ADA90000 */  sw         $t1, 0x0($t5)
.L801AA0C0_ovl7:
/* 150130 801AA0C0 920200B8 */  lbu        $v0, 0xB8($s0)
/* 150134 801AA0C4 24010005 */  addiu      $at, $zero, 0x5
/* 150138 801AA0C8 10410009 */  beq        $v0, $at, .L801AA0F0_ovl7
/* 15013C 801AA0CC 24010006 */   addiu     $at, $zero, 0x6
/* 150140 801AA0D0 10410012 */  beq        $v0, $at, .L801AA11C_ovl7
/* 150144 801AA0D4 24010007 */   addiu     $at, $zero, 0x7
/* 150148 801AA0D8 10410010 */  beq        $v0, $at, .L801AA11C_ovl7
/* 15014C 801AA0DC 24010008 */   addiu     $at, $zero, 0x8
/* 150150 801AA0E0 5041000F */  beql       $v0, $at, .L801AA120_ovl7
/* 150154 801AA0E4 920F0005 */   lbu       $t7, 0x5($s0)
/* 150158 801AA0E8 10000015 */  b          .L801AA140_ovl7
/* 15015C 801AA0EC 00000000 */   nop
.L801AA0F0_ovl7:
/* 150160 801AA0F0 920E0005 */  lbu        $t6, 0x5($s0)
/* 150164 801AA0F4 166E0005 */  bne        $s3, $t6, .L801AA10C_ovl7
/* 150168 801AA0F8 00000000 */   nop
/* 15016C 801AA0FC 0C06A980 */  jal        func_801AA600_ovl7
/* 150170 801AA100 2684002C */   addiu     $a0, $s4, 0x2C
/* 150174 801AA104 1000000E */  b          .L801AA140_ovl7
/* 150178 801AA108 00000000 */   nop
.L801AA10C_ovl7:
/* 15017C 801AA10C 0C06A980 */  jal        func_801AA600_ovl7
/* 150180 801AA110 02A02025 */   or        $a0, $s5, $zero
/* 150184 801AA114 1000000A */  b          .L801AA140_ovl7
/* 150188 801AA118 00000000 */   nop
.L801AA11C_ovl7:
/* 15018C 801AA11C 920F0005 */  lbu        $t7, 0x5($s0)
.L801AA120_ovl7:
/* 150190 801AA120 166F0005 */  bne        $s3, $t7, .L801AA138_ovl7
/* 150194 801AA124 00000000 */   nop
/* 150198 801AA128 0C06A980 */  jal        func_801AA600_ovl7
/* 15019C 801AA12C 26840014 */   addiu     $a0, $s4, 0x14
/* 1501A0 801AA130 10000003 */  b          .L801AA140_ovl7
/* 1501A4 801AA134 00000000 */   nop
.L801AA138_ovl7:
/* 1501A8 801AA138 0C06A980 */  jal        func_801AA600_ovl7
/* 1501AC 801AA13C 02A02025 */   or        $a0, $s5, $zero
.L801AA140_ovl7:
/* 1501B0 801AA140 0C002DAF */  jal        finish_current_thread
/* 1501B4 801AA144 24040001 */   addiu     $a0, $zero, 0x1
/* 1501B8 801AA148 1000FFC9 */  b          .L801AA070_ovl7
/* 1501BC 801AA14C 8E2B0000 */   lw        $t3, 0x0($s1)
/* 1501C0 801AA150 00000000 */  nop
/* 1501C4 801AA154 00000000 */  nop
/* 1501C8 801AA158 00000000 */  nop
/* 1501CC 801AA15C 00000000 */  nop
/* 1501D0 801AA160 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1501D4 801AA164 8FB00018 */  lw         $s0, 0x18($sp)
/* 1501D8 801AA168 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1501DC 801AA16C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1501E0 801AA170 8FB30024 */  lw         $s3, 0x24($sp)
/* 1501E4 801AA174 8FB40028 */  lw         $s4, 0x28($sp)
/* 1501E8 801AA178 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1501EC 801AA17C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1501F0 801AA180 8FB70034 */  lw         $s7, 0x34($sp)
/* 1501F4 801AA184 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1501F8 801AA188 03E00008 */  jr         $ra
/* 1501FC 801AA18C 27BD0040 */   addiu     $sp, $sp, 0x40
