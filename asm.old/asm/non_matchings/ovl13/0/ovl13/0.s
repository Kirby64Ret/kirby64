glabel func_801DB1E0_ovl13 # 0
/* 1F3160 801DB1E0 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1F3164 801DB1E4 AFB00018 */  sw          $s0, 0x18($sp)
/* 1F3168 801DB1E8 3C108005 */  lui         $s0, %hi(D_8004A7C4)
/* 1F316C 801DB1EC 2610A7C4 */  addiu       $s0, $s0, %lo(D_8004A7C4)
/* 1F3170 801DB1F0 8E0F0000 */  lw          $t7, 0x0($s0)
/* 1F3174 801DB1F4 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1F3178 801DB1F8 AFB20020 */  sw          $s2, 0x20($sp)
/* 1F317C 801DB1FC AFB1001C */  sw          $s1, 0x1C($sp)
/* 1F3180 801DB200 AFA40028 */  sw          $a0, 0x28($sp)
/* 1F3184 801DB204 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F3188 801DB208 3C08800E */  lui         $t0, %hi(D_800E1B50)
/* 1F318C 801DB20C 240EFFFF */  addiu       $t6, $zero, -0x1
/* 1F3190 801DB210 0018C880 */  sll         $t9, $t8, 2
/* 1F3194 801DB214 01194021 */  addu        $t0, $t0, $t9
/* 1F3198 801DB218 8D081B50 */  lw          $t0, %lo(D_800E1B50)($t0)
/* 1F319C 801DB21C 3C09801E */  lui         $t1, %hi(func_801DB358_ovl13)
/* 1F31A0 801DB220 3C01800E */  lui         $at, %hi(D_800DF150)
/* 1F31A4 801DB224 A10E0039 */  sb          $t6, 0x39($t0)
/* 1F31A8 801DB228 8E0A0000 */  lw          $t2, 0x0($s0)
/* 1F31AC 801DB22C 2529B358 */  addiu       $t1, $t1, %lo(func_801DB358_ovl13)
/* 1F31B0 801DB230 3C04801E */  lui         $a0, %hi(func_801DB2D8_ovl13)
/* 1F31B4 801DB234 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F31B8 801DB238 2484B2D8 */  addiu       $a0, $a0, %lo(func_801DB2D8_ovl13)
/* 1F31BC 801DB23C 000B6080 */  sll         $t4, $t3, 2
/* 1F31C0 801DB240 002C0821 */  addu        $at, $at, $t4
/* 1F31C4 801DB244 0C068354 */  jal         func_801A0D50
/* 1F31C8 801DB248 AC29F150 */   sw         $t1, %lo(D_800DF150)($at)
/* 1F31CC 801DB24C 8E020000 */  lw          $v0, 0x0($s0)
/* 1F31D0 801DB250 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F31D4 801DB254 3C04800E */  lui         $a0, %hi(D_800E7880)
/* 1F31D8 801DB258 8C4D0000 */  lw          $t5, 0x0($v0)
/* 1F31DC 801DB25C 3C06801E */  lui         $a2, %hi(D_801E5A80_ovl13)
/* 1F31E0 801DB260 24C65A80 */  addiu       $a2, $a2, %lo(D_801E5A80_ovl13)
/* 1F31E4 801DB264 000D7880 */  sll         $t7, $t5, 2
/* 1F31E8 801DB268 002F0821 */  addu        $at, $at, $t7
/* 1F31EC 801DB26C AC208920 */  sw          $zero, %lo(D_800E8920)($at)
/* 1F31F0 801DB270 8C580000 */  lw          $t8, 0x0($v0)
/* 1F31F4 801DB274 24050006 */  addiu       $a1, $zero, 0x6
/* 1F31F8 801DB278 00982021 */  addu        $a0, $a0, $t8
/* 1F31FC 801DB27C 0C02911F */  jal         call_virtual_function
/* 1F3200 801DB280 90847880 */   lbu        $a0, %lo(D_800E7880)($a0)
/* 1F3204 801DB284 3C12801E */  lui         $s2, %hi(D_801E5A98_ovl13)
/* 1F3208 801DB288 3C11800E */  lui         $s1, %hi(gEntityVtableIndexArray)
/* 1F320C 801DB28C 2631DC50 */  addiu       $s1, $s1, %lo(gEntityVtableIndexArray)
/* 1F3210 801DB290 26525A98 */  addiu       $s2, $s2, %lo(D_801E5A98_ovl13)
/* 1F3214 801DB294 8E190000 */  lw          $t9, 0x0($s0)
glabel L801DB298_ovl13
/* 1F3218 801DB298 24050010 */  addiu       $a1, $zero, 0x10
/* 1F321C 801DB29C 02403025 */  move        $a2, $s2
/* 1F3220 801DB2A0 8F2E0000 */  lw          $t6, 0x0($t9)
/* 1F3224 801DB2A4 000E4080 */  sll         $t0, $t6, 2
/* 1F3228 801DB2A8 02285021 */  addu        $t2, $s1, $t0
/* 1F322C 801DB2AC 0C02911F */  jal         call_virtual_function
/* 1F3230 801DB2B0 8D440000 */   lw         $a0, 0x0($t2)
/* 1F3234 801DB2B4 1000FFF8 */  b           L801DB298_ovl13
/* 1F3238 801DB2B8 8E190000 */   lw         $t9, 0x0($s0)
/* 1F323C 801DB2BC 00000000 */  nop
/* 1F3240 801DB2C0 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1F3244 801DB2C4 8FB00018 */  lw          $s0, 0x18($sp)
/* 1F3248 801DB2C8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 1F324C 801DB2CC 8FB20020 */  lw          $s2, 0x20($sp)
/* 1F3250 801DB2D0 03E00008 */  jr          $ra
/* 1F3254 801DB2D4 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DB1E0_ovl13, @function

.size func_801DB1E0_ovl13, . - func_801DB1E0_ovl13
