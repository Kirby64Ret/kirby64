nonmatching func_8016FD78_ovl5, 0x1E8

glabel func_8016FD78_ovl5
    /* 1171E8 8016FD78 3C028019 */  lui        $v0, %hi(D_8018ECD8_ovl5)
    /* 1171EC 8016FD7C 9042ECD8 */  lbu        $v0, %lo(D_8018ECD8_ovl5)($v0)
    /* 1171F0 8016FD80 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1171F4 8016FD84 24010003 */  addiu      $at, $zero, 0x3
    /* 1171F8 8016FD88 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1171FC 8016FD8C 1441000A */  bne        $v0, $at, .L8016FDB8_ovl5
    /* 117200 8016FD90 AFA40018 */   sw        $a0, 0x18($sp)
    /* 117204 8016FD94 00027080 */  sll        $t6, $v0, 2
    /* 117208 8016FD98 3C048018 */  lui        $a0, %hi(D_80187CF4_ovl5)
    /* 11720C 8016FD9C 008E2021 */  addu       $a0, $a0, $t6
    /* 117210 8016FDA0 8C847CF4 */  lw         $a0, %lo(D_80187CF4_ovl5)($a0)
    /* 117214 8016FDA4 2405002D */  addiu      $a1, $zero, 0x2D
    /* 117218 8016FDA8 0C02A619 */  jal        func_800A9864
    /* 11721C 8016FDAC 24060010 */   addiu     $a2, $zero, 0x10
    /* 117220 8016FDB0 10000009 */  b          .L8016FDD8_ovl5
    /* 117224 8016FDB4 00000000 */   nop
  .L8016FDB8_ovl5:
    /* 117228 8016FDB8 00027880 */  sll        $t7, $v0, 2
    /* 11722C 8016FDBC 3C048018 */  lui        $a0, %hi(D_80187CF4_ovl5)
    /* 117230 8016FDC0 008F2021 */  addu       $a0, $a0, $t7
    /* 117234 8016FDC4 3C050001 */  lui        $a1, (0x1869F >> 16)
    /* 117238 8016FDC8 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
    /* 11723C 8016FDCC 8C847CF4 */  lw         $a0, %lo(D_80187CF4_ovl5)($a0)
    /* 117240 8016FDD0 0C02A619 */  jal        func_800A9864
    /* 117244 8016FDD4 24060010 */   addiu     $a2, $zero, 0x10
  .L8016FDD8_ovl5:
    /* 117248 8016FDD8 3C028019 */  lui        $v0, %hi(D_8018ECD8_ovl5)
    /* 11724C 8016FDDC 9042ECD8 */  lbu        $v0, %lo(D_8018ECD8_ovl5)($v0)
    /* 117250 8016FDE0 24010003 */  addiu      $at, $zero, 0x3
    /* 117254 8016FDE4 3C0C8018 */  lui        $t4, %hi(D_80187D04_ovl5)
    /* 117258 8016FDE8 14410017 */  bne        $v0, $at, .L8016FE48_ovl5
    /* 11725C 8016FDEC 000258C0 */   sll       $t3, $v0, 3
    /* 117260 8016FDF0 3C198018 */  lui        $t9, %hi(D_80187D04_ovl5)
    /* 117264 8016FDF4 27397D04 */  addiu      $t9, $t9, %lo(D_80187D04_ovl5)
    /* 117268 8016FDF8 0002C0C0 */  sll        $t8, $v0, 3
    /* 11726C 8016FDFC 03191821 */  addu       $v1, $t8, $t9
    /* 117270 8016FE00 8C640000 */  lw         $a0, 0x0($v1)
    /* 117274 8016FE04 5080000A */  beql       $a0, $zero, .L8016FE30_ovl5
    /* 117278 8016FE08 8C640004 */   lw        $a0, 0x4($v1)
    /* 11727C 8016FE0C 0C02A806 */  jal        func_800AA018
    /* 117280 8016FE10 00000000 */   nop
    /* 117284 8016FE14 3C088019 */  lui        $t0, %hi(D_8018ECD8_ovl5)
    /* 117288 8016FE18 9108ECD8 */  lbu        $t0, %lo(D_8018ECD8_ovl5)($t0)
    /* 11728C 8016FE1C 3C0A8018 */  lui        $t2, %hi(D_80187D04_ovl5)
    /* 117290 8016FE20 254A7D04 */  addiu      $t2, $t2, %lo(D_80187D04_ovl5)
    /* 117294 8016FE24 000848C0 */  sll        $t1, $t0, 3
    /* 117298 8016FE28 012A1821 */  addu       $v1, $t1, $t2
    /* 11729C 8016FE2C 8C640004 */  lw         $a0, 0x4($v1)
  .L8016FE30_ovl5:
    /* 1172A0 8016FE30 1080002F */  beqz       $a0, .L8016FEF0_ovl5
    /* 1172A4 8016FE34 00000000 */   nop
    /* 1172A8 8016FE38 0C02A806 */  jal        func_800AA018
    /* 1172AC 8016FE3C 00000000 */   nop
    /* 1172B0 8016FE40 1000002B */  b          .L8016FEF0_ovl5
    /* 1172B4 8016FE44 00000000 */   nop
  .L8016FE48_ovl5:
    /* 1172B8 8016FE48 258C7D04 */  addiu      $t4, $t4, %lo(D_80187D04_ovl5)
    /* 1172BC 8016FE4C 016C1821 */  addu       $v1, $t3, $t4
    /* 1172C0 8016FE50 8C640000 */  lw         $a0, 0x0($v1)
    /* 1172C4 8016FE54 50800012 */  beql       $a0, $zero, .L8016FEA0_ovl5
    /* 1172C8 8016FE58 8C640004 */   lw        $a0, 0x4($v1)
    /* 1172CC 8016FE5C 44822000 */  mtc1       $v0, $f4
    /* 1172D0 8016FE60 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 1172D4 8016FE64 04410004 */  bgez       $v0, .L8016FE78_ovl5
    /* 1172D8 8016FE68 46802120 */   cvt.s.w   $f4, $f4
    /* 1172DC 8016FE6C 44813000 */  mtc1       $at, $f6
    /* 1172E0 8016FE70 00000000 */  nop
    /* 1172E4 8016FE74 46062100 */  add.s      $f4, $f4, $f6
  .L8016FE78_ovl5:
    /* 1172E8 8016FE78 44052000 */  mfc1       $a1, $f4
    /* 1172EC 8016FE7C 0C02A7E6 */  jal        func_800A9F98
    /* 1172F0 8016FE80 00000000 */   nop
    /* 1172F4 8016FE84 3C028019 */  lui        $v0, %hi(D_8018ECD8_ovl5)
    /* 1172F8 8016FE88 9042ECD8 */  lbu        $v0, %lo(D_8018ECD8_ovl5)($v0)
    /* 1172FC 8016FE8C 3C0E8018 */  lui        $t6, %hi(D_80187D04_ovl5)
    /* 117300 8016FE90 25CE7D04 */  addiu      $t6, $t6, %lo(D_80187D04_ovl5)
    /* 117304 8016FE94 000268C0 */  sll        $t5, $v0, 3
    /* 117308 8016FE98 01AE1821 */  addu       $v1, $t5, $t6
    /* 11730C 8016FE9C 8C640004 */  lw         $a0, 0x4($v1)
  .L8016FEA0_ovl5:
    /* 117310 8016FEA0 1080000D */  beqz       $a0, .L8016FED8_ovl5
    /* 117314 8016FEA4 00000000 */   nop
    /* 117318 8016FEA8 44824000 */  mtc1       $v0, $f8
    /* 11731C 8016FEAC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
    /* 117320 8016FEB0 04410004 */  bgez       $v0, .L8016FEC4_ovl5
    /* 117324 8016FEB4 46804220 */   cvt.s.w   $f8, $f8
    /* 117328 8016FEB8 44815000 */  mtc1       $at, $f10
    /* 11732C 8016FEBC 00000000 */  nop
    /* 117330 8016FEC0 460A4200 */  add.s      $f8, $f8, $f10
  .L8016FEC4_ovl5:
    /* 117334 8016FEC4 44054000 */  mfc1       $a1, $f8
    /* 117338 8016FEC8 0C02A7E6 */  jal        func_800A9F98
    /* 11733C 8016FECC 00000000 */   nop
    /* 117340 8016FED0 3C028019 */  lui        $v0, %hi(D_8018ECD8_ovl5)
    /* 117344 8016FED4 9042ECD8 */  lbu        $v0, %lo(D_8018ECD8_ovl5)($v0)
  .L8016FED8_ovl5:
    /* 117348 8016FED8 14400003 */  bnez       $v0, .L8016FEE8_ovl5
    /* 11734C 8016FEDC 00000000 */   nop
    /* 117350 8016FEE0 0C0038C9 */  jal        animUpdateModelTreeAnimation
    /* 117354 8016FEE4 8FA40018 */   lw        $a0, 0x18($sp)
  .L8016FEE8_ovl5:
    /* 117358 8016FEE8 0C00302B */  jal        animResetTextureAnimation
    /* 11735C 8016FEEC 8FA40018 */   lw        $a0, 0x18($sp)
  .L8016FEF0_ovl5:
    /* 117360 8016FEF0 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 117364 8016FEF4 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 117368 8016FEF8 44800000 */  mtc1       $zero, $f0
    /* 11736C 8016FEFC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 117370 8016FF00 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 117374 8016FF04 8FA40018 */  lw         $a0, 0x18($sp)
    /* 117378 8016FF08 24060014 */  addiu      $a2, $zero, 0x14
    /* 11737C 8016FF0C 000FC080 */  sll        $t8, $t7, 2
    /* 117380 8016FF10 00380821 */  addu       $at, $at, $t8
    /* 117384 8016FF14 E42025D0 */  swc1       $f0, %lo(gEntitiesNextPosXArray)($at)
    /* 117388 8016FF18 8C590000 */  lw         $t9, 0x0($v0)
    /* 11738C 8016FF1C 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 117390 8016FF20 00194080 */  sll        $t0, $t9, 2
    /* 117394 8016FF24 00280821 */  addu       $at, $at, $t0
    /* 117398 8016FF28 E4202790 */  swc1       $f0, %lo(gEntitiesNextPosYArray)($at)
    /* 11739C 8016FF2C 8C490000 */  lw         $t1, 0x0($v0)
    /* 1173A0 8016FF30 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 1173A4 8016FF34 00095080 */  sll        $t2, $t1, 2
    /* 1173A8 8016FF38 002A0821 */  addu       $at, $at, $t2
    /* 1173AC 8016FF3C E4202950 */  swc1       $f0, %lo(gEntitiesNextPosZArray)($at)
    /* 1173B0 8016FF40 0C002A22 */  jal        omGMoveObjDL
    /* 1173B4 8016FF44 9085000D */   lbu       $a1, 0xD($a0)
    /* 1173B8 8016FF48 0C02BE85 */  jal        curObjSleepForever
    /* 1173BC 8016FF4C 00000000 */   nop
    /* 1173C0 8016FF50 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1173C4 8016FF54 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1173C8 8016FF58 03E00008 */  jr         $ra
    /* 1173CC 8016FF5C 00000000 */   nop
endlabel func_8016FD78_ovl5
.size func_8016FD78_ovl5, . - func_8016FD78_ovl5
