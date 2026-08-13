nonmatching func_8016CC88_ovl5, 0x328

glabel func_8016CC88_ovl5
    /* 1140F8 8016CC88 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1140FC 8016CC8C 3C0E8019 */  lui        $t6, %hi(D_8018E420_ovl5)
    /* 114100 8016CC90 8DCEE420 */  lw         $t6, %lo(D_8018E420_ovl5)($t6)
    /* 114104 8016CC94 AFBF0034 */  sw         $ra, 0x34($sp)
    /* 114108 8016CC98 AFB70030 */  sw         $s7, 0x30($sp)
    /* 11410C 8016CC9C AFB6002C */  sw         $s6, 0x2C($sp)
    /* 114110 8016CCA0 AFB50028 */  sw         $s5, 0x28($sp)
    /* 114114 8016CCA4 AFB40024 */  sw         $s4, 0x24($sp)
    /* 114118 8016CCA8 AFB30020 */  sw         $s3, 0x20($sp)
    /* 11411C 8016CCAC AFB2001C */  sw         $s2, 0x1C($sp)
    /* 114120 8016CCB0 AFB10018 */  sw         $s1, 0x18($sp)
    /* 114124 8016CCB4 AFB00014 */  sw         $s0, 0x14($sp)
    /* 114128 8016CCB8 15C0000A */  bnez       $t6, .L8016CCE4_ovl5
    /* 11412C 8016CCBC AFA40038 */   sw        $a0, 0x38($sp)
    /* 114130 8016CCC0 3C0F8019 */  lui        $t7, %hi(D_8018E3C4_ovl5)
    /* 114134 8016CCC4 91EFE3C4 */  lbu        $t7, %lo(D_8018E3C4_ovl5)($t7)
    /* 114138 8016CCC8 3C168019 */  lui        $s6, %hi(D_8018E264_ovl5)
    /* 11413C 8016CCCC 26D6E264 */  addiu      $s6, $s6, %lo(D_8018E264_ovl5)
    /* 114140 8016CCD0 15E00004 */  bnez       $t7, .L8016CCE4_ovl5
    /* 114144 8016CCD4 00000000 */   nop
    /* 114148 8016CCD8 8ED80000 */  lw         $t8, 0x0($s6)
    /* 11414C 8016CCDC 27190001 */  addiu      $t9, $t8, 0x1
    /* 114150 8016CCE0 AED90000 */  sw         $t9, 0x0($s6)
  .L8016CCE4_ovl5:
    /* 114154 8016CCE4 3C168019 */  lui        $s6, %hi(D_8018E264_ovl5)
    /* 114158 8016CCE8 3C108019 */  lui        $s0, %hi(D_8018E3C0_ovl5)
    /* 11415C 8016CCEC 3C15800F */  lui        $s5, %hi(D_800E9C60)
    /* 114160 8016CCF0 26D6E264 */  addiu      $s6, $s6, %lo(D_8018E264_ovl5)
    /* 114164 8016CCF4 26B59C60 */  addiu      $s5, $s5, %lo(D_800E9C60)
    /* 114168 8016CCF8 2610E3C0 */  addiu      $s0, $s0, %lo(D_8018E3C0_ovl5)
    /* 11416C 8016CCFC 00009025 */  or         $s2, $zero, $zero
    /* 114170 8016CD00 24170002 */  addiu      $s7, $zero, 0x2
  .L8016CD04_ovl5:
    /* 114174 8016CD04 92080000 */  lbu        $t0, 0x0($s0)
    /* 114178 8016CD08 3C098019 */  lui        $t1, %hi(D_8018E268_ovl5)
    /* 11417C 8016CD0C 2529E268 */  addiu      $t1, $t1, %lo(D_8018E268_ovl5)
    /* 114180 8016CD10 11000026 */  beqz       $t0, .L8016CDAC_ovl5
    /* 114184 8016CD14 00128880 */   sll       $s1, $s2, 2
    /* 114188 8016CD18 02299821 */  addu       $s3, $s1, $t1
    /* 11418C 8016CD1C 8E6A0000 */  lw         $t2, 0x0($s3)
    /* 114190 8016CD20 000A5880 */  sll        $t3, $t2, 2
    /* 114194 8016CD24 02AB6021 */  addu       $t4, $s5, $t3
    /* 114198 8016CD28 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 11419C 8016CD2C 52ED0020 */  beql       $s7, $t5, .L8016CDB0_ovl5
    /* 1141A0 8016CD30 26520001 */   addiu     $s2, $s2, 0x1
    /* 1141A4 8016CD34 0C0597C7 */  jal        func_80165F1C_ovl5
    /* 1141A8 8016CD38 02402025 */   or        $a0, $s2, $zero
    /* 1141AC 8016CD3C 0040A025 */  or         $s4, $v0, $zero
    /* 1141B0 8016CD40 0C059640 */  jal        func_80165900_ovl5
    /* 1141B4 8016CD44 00402025 */   or        $a0, $v0, $zero
    /* 1141B8 8016CD48 14400018 */  bnez       $v0, .L8016CDAC_ovl5
    /* 1141BC 8016CD4C 00147080 */   sll       $t6, $s4, 2
    /* 1141C0 8016CD50 3C0F8019 */  lui        $t7, %hi(D_8018E2A0_ovl5)
    /* 1141C4 8016CD54 01EE7821 */  addu       $t7, $t7, $t6
    /* 1141C8 8016CD58 8DEFE2A0 */  lw         $t7, %lo(D_8018E2A0_ovl5)($t7)
    /* 1141CC 8016CD5C 3C0C8019 */  lui        $t4, %hi(D_8018E288_ovl5)
    /* 1141D0 8016CD60 000FC080 */  sll        $t8, $t7, 2
    /* 1141D4 8016CD64 02B8C821 */  addu       $t9, $s5, $t8
    /* 1141D8 8016CD68 8F280000 */  lw         $t0, 0x0($t9)
    /* 1141DC 8016CD6C 55000010 */  bnel       $t0, $zero, .L8016CDB0_ovl5
    /* 1141E0 8016CD70 26520001 */   addiu     $s2, $s2, 0x1
    /* 1141E4 8016CD74 8E690000 */  lw         $t1, 0x0($s3)
    /* 1141E8 8016CD78 258CE288 */  addiu      $t4, $t4, %lo(D_8018E288_ovl5)
    /* 1141EC 8016CD7C 022C1021 */  addu       $v0, $s1, $t4
    /* 1141F0 8016CD80 00095080 */  sll        $t2, $t1, 2
    /* 1141F4 8016CD84 02AA5821 */  addu       $t3, $s5, $t2
    /* 1141F8 8016CD88 AD770000 */  sw         $s7, 0x0($t3)
    /* 1141FC 8016CD8C 8C4D0000 */  lw         $t5, 0x0($v0)
    /* 114200 8016CD90 25AEFFFF */  addiu      $t6, $t5, -0x1
    /* 114204 8016CD94 15C00005 */  bnez       $t6, .L8016CDAC_ovl5
    /* 114208 8016CD98 AC4E0000 */   sw        $t6, 0x0($v0)
    /* 11420C 8016CD9C 8ED80000 */  lw         $t8, 0x0($s6)
    /* 114210 8016CDA0 3C018019 */  lui        $at, %hi(D_8018E428_ovl5)
    /* 114214 8016CDA4 00310821 */  addu       $at, $at, $s1
    /* 114218 8016CDA8 AC38E428 */  sw         $t8, %lo(D_8018E428_ovl5)($at)
  .L8016CDAC_ovl5:
    /* 11421C 8016CDAC 26520001 */  addiu      $s2, $s2, 0x1
  .L8016CDB0_ovl5:
    /* 114220 8016CDB0 2A410004 */  slti       $at, $s2, 0x4
    /* 114224 8016CDB4 1420FFD3 */  bnez       $at, .L8016CD04_ovl5
    /* 114228 8016CDB8 26100001 */   addiu     $s0, $s0, 0x1
    /* 11422C 8016CDBC 3C108019 */  lui        $s0, %hi(D_8018E3C0_ovl5)
    /* 114230 8016CDC0 3C028019 */  lui        $v0, %hi(D_8018E3C4_ovl5)
    /* 114234 8016CDC4 00008825 */  or         $s1, $zero, $zero
    /* 114238 8016CDC8 2442E3C4 */  addiu      $v0, $v0, %lo(D_8018E3C4_ovl5)
    /* 11423C 8016CDCC 2610E3C0 */  addiu      $s0, $s0, %lo(D_8018E3C0_ovl5)
    /* 114240 8016CDD0 92190000 */  lbu        $t9, 0x0($s0)
  .L8016CDD4_ovl5:
    /* 114244 8016CDD4 26100001 */  addiu      $s0, $s0, 0x1
    /* 114248 8016CDD8 0202082B */  sltu       $at, $s0, $v0
    /* 11424C 8016CDDC 13200002 */  beqz       $t9, .L8016CDE8_ovl5
    /* 114250 8016CDE0 00000000 */   nop
    /* 114254 8016CDE4 26310001 */  addiu      $s1, $s1, 0x1
  .L8016CDE8_ovl5:
    /* 114258 8016CDE8 5420FFFA */  bnel       $at, $zero, .L8016CDD4_ovl5
    /* 11425C 8016CDEC 92190000 */   lbu       $t9, 0x0($s0)
    /* 114260 8016CDF0 3C108019 */  lui        $s0, %hi(D_8018E424_ovl5)
    /* 114264 8016CDF4 2610E424 */  addiu      $s0, $s0, %lo(D_8018E424_ovl5)
    /* 114268 8016CDF8 92020000 */  lbu        $v0, 0x0($s0)
    /* 11426C 8016CDFC 14400003 */  bnez       $v0, .L8016CE0C_ovl5
    /* 114270 8016CE00 00000000 */   nop
    /* 114274 8016CE04 1237000A */  beq        $s1, $s7, .L8016CE30_ovl5
    /* 114278 8016CE08 00000000 */   nop
  .L8016CE0C_ovl5:
    /* 11427C 8016CE0C 14400002 */  bnez       $v0, .L8016CE18_ovl5
    /* 114280 8016CE10 24010003 */   addiu     $at, $zero, 0x3
    /* 114284 8016CE14 12210006 */  beq        $s1, $at, .L8016CE30_ovl5
  .L8016CE18_ovl5:
    /* 114288 8016CE18 3C128019 */   lui       $s2, %hi(D_8018E425_ovl5)
    /* 11428C 8016CE1C 2652E425 */  addiu      $s2, $s2, %lo(D_8018E425_ovl5)
    /* 114290 8016CE20 92480000 */  lbu        $t0, 0x0($s2)
    /* 114294 8016CE24 55000027 */  bnel       $t0, $zero, .L8016CEC4_ovl5
    /* 114298 8016CE28 2A210002 */   slti      $at, $s1, 0x2
    /* 11429C 8016CE2C 16370024 */  bne        $s1, $s7, .L8016CEC0_ovl5
  .L8016CE30_ovl5:
    /* 1142A0 8016CE30 3C128019 */   lui       $s2, %hi(D_8018E425_ovl5)
    /* 1142A4 8016CE34 1440000F */  bnez       $v0, .L8016CE74_ovl5
    /* 1142A8 8016CE38 2652E425 */   addiu     $s2, $s2, %lo(D_8018E425_ovl5)
    /* 1142AC 8016CE3C 24040007 */  addiu      $a0, $zero, 0x7
    /* 1142B0 8016CE40 00002825 */  or         $a1, $zero, $zero
    /* 1142B4 8016CE44 0C02BB02 */  jal        request_track_general
    /* 1142B8 8016CE48 24060070 */   addiu     $a2, $zero, 0x70
    /* 1142BC 8016CE4C 00021880 */  sll        $v1, $v0, 2
    /* 1142C0 8016CE50 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 1142C4 8016CE54 00230821 */  addu       $at, $at, $v1
    /* 1142C8 8016CE58 2409000F */  addiu      $t1, $zero, 0xF
    /* 1142CC 8016CE5C AC2998E0 */  sw         $t1, %lo(D_800E98E0)($at)
    /* 1142D0 8016CE60 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 1142D4 8016CE64 00230821 */  addu       $at, $at, $v1
    /* 1142D8 8016CE68 AC20A1A0 */  sw         $zero, %lo(D_800EA1A0)($at)
    /* 1142DC 8016CE6C 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1142E0 8016CE70 A20A0000 */  sb         $t2, 0x0($s0)
  .L8016CE74_ovl5:
    /* 1142E4 8016CE74 924B0000 */  lbu        $t3, 0x0($s2)
    /* 1142E8 8016CE78 55600012 */  bnel       $t3, $zero, .L8016CEC4_ovl5
    /* 1142EC 8016CE7C 2A210002 */   slti      $at, $s1, 0x2
    /* 1142F0 8016CE80 1637000F */  bne        $s1, $s7, .L8016CEC0_ovl5
    /* 1142F4 8016CE84 24040007 */   addiu     $a0, $zero, 0x7
    /* 1142F8 8016CE88 00002825 */  or         $a1, $zero, $zero
    /* 1142FC 8016CE8C 0C02BB02 */  jal        request_track_general
    /* 114300 8016CE90 24060070 */   addiu     $a2, $zero, 0x70
    /* 114304 8016CE94 00021880 */  sll        $v1, $v0, 2
    /* 114308 8016CE98 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 11430C 8016CE9C 00230821 */  addu       $at, $at, $v1
    /* 114310 8016CEA0 240C000F */  addiu      $t4, $zero, 0xF
    /* 114314 8016CEA4 AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
    /* 114318 8016CEA8 3C01800F */  lui        $at, %hi(D_800EA1A0)
    /* 11431C 8016CEAC 00230821 */  addu       $at, $at, $v1
    /* 114320 8016CEB0 240D0001 */  addiu      $t5, $zero, 0x1
    /* 114324 8016CEB4 AC2DA1A0 */  sw         $t5, %lo(D_800EA1A0)($at)
    /* 114328 8016CEB8 240E0001 */  addiu      $t6, $zero, 0x1
    /* 11432C 8016CEBC A24E0000 */  sb         $t6, 0x0($s2)
  .L8016CEC0_ovl5:
    /* 114330 8016CEC0 2A210002 */  slti       $at, $s1, 0x2
  .L8016CEC4_ovl5:
    /* 114334 8016CEC4 1020002F */  beqz       $at, .L8016CF84_ovl5
    /* 114338 8016CEC8 3C0F8019 */   lui       $t7, %hi(D_8018E3C4_ovl5)
    /* 11433C 8016CECC 91EFE3C4 */  lbu        $t7, %lo(D_8018E3C4_ovl5)($t7)
    /* 114340 8016CED0 3C198005 */  lui        $t9, %hi(omCurrentObj)
    /* 114344 8016CED4 55E0002C */  bnel       $t7, $zero, .L8016CF88_ovl5
    /* 114348 8016CED8 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 11434C 8016CEDC 8F39A7C4 */  lw         $t9, %lo(omCurrentObj)($t9)
    /* 114350 8016CEE0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 114354 8016CEE4 24180001 */  addiu      $t8, $zero, 0x1
    /* 114358 8016CEE8 8F280000 */  lw         $t0, 0x0($t9)
    /* 11435C 8016CEEC 240A0001 */  addiu      $t2, $zero, 0x1
    /* 114360 8016CEF0 24040231 */  addiu      $a0, $zero, 0x231
    /* 114364 8016CEF4 00084880 */  sll        $t1, $t0, 2
    /* 114368 8016CEF8 00290821 */  addu       $at, $at, $t1
    /* 11436C 8016CEFC AC3898E0 */  sw         $t8, %lo(D_800E98E0)($at)
    /* 114370 8016CF00 3C018019 */  lui        $at, %hi(D_8018E3C4_ovl5)
    /* 114374 8016CF04 A02AE3C4 */  sb         $t2, %lo(D_8018E3C4_ovl5)($at)
    /* 114378 8016CF08 8ECB0000 */  lw         $t3, 0x0($s6)
    /* 11437C 8016CF0C 3C01800D */  lui        $at, %hi(D_800D7178 + 0x58)
    /* 114380 8016CF10 0C029D9E */  jal        play_sound
    /* 114384 8016CF14 AC2B71D0 */   sw        $t3, %lo(D_800D7178 + 0x58)($at)
    /* 114388 8016CF18 3C0C8019 */  lui        $t4, %hi(D_8018E3C0_ovl5)
    /* 11438C 8016CF1C 918CE3C0 */  lbu        $t4, %lo(D_8018E3C0_ovl5)($t4)
    /* 114390 8016CF20 3C0E8019 */  lui        $t6, %hi(D_8018E3C1_ovl5)
    /* 114394 8016CF24 3C198019 */  lui        $t9, %hi(D_8018E3C2_ovl5)
    /* 114398 8016CF28 11800004 */  beqz       $t4, .L8016CF3C_ovl5
    /* 11439C 8016CF2C 3C188019 */   lui       $t8, %hi(D_8018E3C3_ovl5)
    /* 1143A0 8016CF30 8ECD0000 */  lw         $t5, 0x0($s6)
    /* 1143A4 8016CF34 3C018019 */  lui        $at, %hi(D_8018E428_ovl5)
    /* 1143A8 8016CF38 AC2DE428 */  sw         $t5, %lo(D_8018E428_ovl5)($at)
  .L8016CF3C_ovl5:
    /* 1143AC 8016CF3C 91CEE3C1 */  lbu        $t6, %lo(D_8018E3C1_ovl5)($t6)
    /* 1143B0 8016CF40 11C00004 */  beqz       $t6, .L8016CF54_ovl5
    /* 1143B4 8016CF44 00000000 */   nop
    /* 1143B8 8016CF48 8ECF0000 */  lw         $t7, 0x0($s6)
    /* 1143BC 8016CF4C 3C018019 */  lui        $at, %hi(D_8018E42C_ovl5)
    /* 1143C0 8016CF50 AC2FE42C */  sw         $t7, %lo(D_8018E42C_ovl5)($at)
  .L8016CF54_ovl5:
    /* 1143C4 8016CF54 9339E3C2 */  lbu        $t9, %lo(D_8018E3C2_ovl5)($t9)
    /* 1143C8 8016CF58 13200004 */  beqz       $t9, .L8016CF6C_ovl5
    /* 1143CC 8016CF5C 00000000 */   nop
    /* 1143D0 8016CF60 8EC80000 */  lw         $t0, 0x0($s6)
    /* 1143D4 8016CF64 3C018019 */  lui        $at, %hi(D_8018E430_ovl5)
    /* 1143D8 8016CF68 AC28E430 */  sw         $t0, %lo(D_8018E430_ovl5)($at)
  .L8016CF6C_ovl5:
    /* 1143DC 8016CF6C 9318E3C3 */  lbu        $t8, %lo(D_8018E3C3_ovl5)($t8)
    /* 1143E0 8016CF70 53000005 */  beql       $t8, $zero, .L8016CF88_ovl5
    /* 1143E4 8016CF74 8FBF0034 */   lw        $ra, 0x34($sp)
    /* 1143E8 8016CF78 8EC90000 */  lw         $t1, 0x0($s6)
    /* 1143EC 8016CF7C 3C018019 */  lui        $at, %hi(D_8018E434_ovl5)
    /* 1143F0 8016CF80 AC29E434 */  sw         $t1, %lo(D_8018E434_ovl5)($at)
  .L8016CF84_ovl5:
    /* 1143F4 8016CF84 8FBF0034 */  lw         $ra, 0x34($sp)
  .L8016CF88_ovl5:
    /* 1143F8 8016CF88 8FB00014 */  lw         $s0, 0x14($sp)
    /* 1143FC 8016CF8C 8FB10018 */  lw         $s1, 0x18($sp)
    /* 114400 8016CF90 8FB2001C */  lw         $s2, 0x1C($sp)
    /* 114404 8016CF94 8FB30020 */  lw         $s3, 0x20($sp)
    /* 114408 8016CF98 8FB40024 */  lw         $s4, 0x24($sp)
    /* 11440C 8016CF9C 8FB50028 */  lw         $s5, 0x28($sp)
    /* 114410 8016CFA0 8FB6002C */  lw         $s6, 0x2C($sp)
    /* 114414 8016CFA4 8FB70030 */  lw         $s7, 0x30($sp)
    /* 114418 8016CFA8 03E00008 */  jr         $ra
    /* 11441C 8016CFAC 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel func_8016CC88_ovl5
.size func_8016CC88_ovl5, . - func_8016CC88_ovl5
