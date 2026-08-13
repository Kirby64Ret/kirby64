nonmatching func_801D6F1C_ovl8, 0x324

glabel func_801D6F1C_ovl8
    /* 17A9FC 801D6F1C 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 17AA00 801D6F20 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 17AA04 801D6F24 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 17AA08 801D6F28 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 17AA0C 801D6F2C AFA40020 */  sw         $a0, 0x20($sp)
    /* 17AA10 801D6F30 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17AA14 801D6F34 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 17AA18 801D6F38 3C18800E */  lui        $t8, %hi(gEntityFuncListIDArray)
    /* 17AA1C 801D6F3C 00031880 */  sll        $v1, $v1, 2
    /* 17AA20 801D6F40 01C37021 */  addu       $t6, $t6, $v1
    /* 17AA24 801D6F44 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 17AA28 801D6F48 24010005 */  addiu      $at, $zero, 0x5
    /* 17AA2C 801D6F4C 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* 17AA30 801D6F50 000E7880 */  sll        $t7, $t6, 2
    /* 17AA34 801D6F54 030FC021 */  addu       $t8, $t8, $t7
    /* 17AA38 801D6F58 8F18DC50 */  lw         $t8, %lo(gEntityFuncListIDArray)($t8)
    /* 17AA3C 801D6F5C 3C02800F */  lui        $v0, %hi(D_800E98E0)
    /* 17AA40 801D6F60 0323C821 */  addu       $t9, $t9, $v1
    /* 17AA44 801D6F64 1701000C */  bne        $t8, $at, .L801D6F98_ovl8
    /* 17AA48 801D6F68 00431021 */   addu      $v0, $v0, $v1
    /* 17AA4C 801D6F6C 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* 17AA50 801D6F70 17200005 */  bnez       $t9, .L801D6F88_ovl8
    /* 17AA54 801D6F74 00000000 */   nop
    /* 17AA58 801D6F78 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17AA5C 801D6F7C 24040001 */   addiu     $a0, $zero, 0x1
    /* 17AA60 801D6F80 100000AC */  b          .L801D7234_ovl8
    /* 17AA64 801D6F84 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801D6F88_ovl8:
    /* 17AA68 801D6F88 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17AA6C 801D6F8C 00002025 */   or        $a0, $zero, $zero
    /* 17AA70 801D6F90 100000A8 */  b          .L801D7234_ovl8
    /* 17AA74 801D6F94 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801D6F98_ovl8:
    /* 17AA78 801D6F98 8C4298E0 */  lw         $v0, %lo(D_800E98E0)($v0)
    /* 17AA7C 801D6F9C 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* 17AA80 801D6FA0 50400007 */  beql       $v0, $zero, .L801D6FC0_ovl8
    /* 17AA84 801D6FA4 44802000 */   mtc1      $zero, $f4
    /* 17AA88 801D6FA8 24010001 */  addiu      $at, $zero, 0x1
    /* 17AA8C 801D6FAC 10410023 */  beq        $v0, $at, .L801D703C_ovl8
    /* 17AA90 801D6FB0 3C04801D */   lui       $a0, %hi(D_801CA980)
    /* 17AA94 801D6FB4 1000009C */  b          .L801D7228_ovl8
    /* 17AA98 801D6FB8 00000000 */   nop
    /* 17AA9C 801D6FBC 44802000 */  mtc1       $zero, $f4
  .L801D6FC0_ovl8:
    /* 17AAA0 801D6FC0 C4266E50 */  lwc1       $f6, %lo(gKirbyHp)($at)
    /* 17AAA4 801D6FC4 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 17AAA8 801D6FC8 00230821 */  addu       $at, $at, $v1
    /* 17AAAC 801D6FCC 4604303E */  c.le.s     $f6, $f4
    /* 17AAB0 801D6FD0 00000000 */  nop
    /* 17AAB4 801D6FD4 45000094 */  bc1f       .L801D7228_ovl8
    /* 17AAB8 801D6FD8 00000000 */   nop
    /* 17AABC 801D6FDC C4282CD0 */  lwc1       $f8, %lo(gEntitiesPosYArray)($at)
    /* 17AAC0 801D6FE0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 17AAC4 801D6FE4 00230821 */  addu       $at, $at, $v1
    /* 17AAC8 801D6FE8 E4282790 */  swc1       $f8, %lo(gEntitiesNextPosYArray)($at)
    /* 17AACC 801D6FEC 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17AAD0 801D6FF0 3C09800E */  lui        $t1, %hi(D_800E6150)
    /* 17AAD4 801D6FF4 3C01800E */  lui        $at, %hi(D_800E5F90)
    /* 17AAD8 801D6FF8 00031880 */  sll        $v1, $v1, 2
    /* 17AADC 801D6FFC 01234821 */  addu       $t1, $t1, $v1
    /* 17AAE0 801D7000 8D296150 */  lw         $t1, %lo(D_800E6150)($t1)
    /* 17AAE4 801D7004 00230821 */  addu       $at, $at, $v1
    /* 17AAE8 801D7008 00002025 */  or         $a0, $zero, $zero
    /* 17AAEC 801D700C AC295F90 */  sw         $t1, %lo(D_800E5F90)($at)
    /* 17AAF0 801D7010 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17AAF4 801D7014 3C01800E */  lui        $at, %hi(D_800E6D90)
    /* 17AAF8 801D7018 00031880 */  sll        $v1, $v1, 2
    /* 17AAFC 801D701C 00230821 */  addu       $at, $at, $v1
    /* 17AB00 801D7020 C42A6D90 */  lwc1       $f10, %lo(D_800E6D90)($at)
    /* 17AB04 801D7024 3C01800E */  lui        $at, %hi(D_800E6BD0)
    /* 17AB08 801D7028 00230821 */  addu       $at, $at, $v1
    /* 17AB0C 801D702C 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17AB10 801D7030 E42A6BD0 */   swc1      $f10, %lo(D_800E6BD0)($at)
    /* 17AB14 801D7034 1000007C */  b          .L801D7228_ovl8
    /* 17AB18 801D7038 00000000 */   nop
  .L801D703C_ovl8:
    /* 17AB1C 801D703C 0C068CEE */  jal        func_801A33B8
    /* 17AB20 801D7040 2484A980 */   addiu     $a0, $a0, %lo(D_801CA980)
    /* 17AB24 801D7044 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17AB28 801D7048 0C044A29 */  jal        func_801128A4
    /* 17AB2C 801D704C 24E4E6D0 */   addiu     $a0, $a3, %lo(D_801CE6D0_ovl7)
    /* 17AB30 801D7050 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 17AB34 801D7054 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 17AB38 801D7058 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17AB3C 801D705C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 17AB40 801D7060 8CA40000 */  lw         $a0, 0x0($a1)
    /* 17AB44 801D7064 24E7E6D0 */  addiu      $a3, $a3, %lo(D_801CE6D0_ovl7)
    /* 17AB48 801D7068 C4F00004 */  lwc1       $f16, 0x4($a3)
    /* 17AB4C 801D706C 00041880 */  sll        $v1, $a0, 2
    /* 17AB50 801D7070 00230821 */  addu       $at, $at, $v1
    /* 17AB54 801D7074 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* 17AB58 801D7078 44806000 */  mtc1       $zero, $f12
    /* 17AB5C 801D707C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 17AB60 801D7080 46128001 */  sub.s      $f0, $f16, $f18
    /* 17AB64 801D7084 00230821 */  addu       $at, $at, $v1
    /* 17AB68 801D7088 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* 17AB6C 801D708C C4E4000C */  lwc1       $f4, 0xC($a3)
    /* 17AB70 801D7090 460C0032 */  c.eq.s     $f0, $f12
    /* 17AB74 801D7094 00404025 */  or         $t0, $v0, $zero
    /* 17AB78 801D7098 46062081 */  sub.s      $f2, $f4, $f6
    /* 17AB7C 801D709C 45020006 */  bc1fl      .L801D70B8_ovl8
    /* 17AB80 801D70A0 44050000 */   mfc1      $a1, $f0
    /* 17AB84 801D70A4 460C1032 */  c.eq.s     $f2, $f12
    /* 17AB88 801D70A8 00000000 */  nop
    /* 17AB8C 801D70AC 45030019 */  bc1tl      .L801D7114_ovl8
    /* 17AB90 801D70B0 C4F00008 */   lwc1      $f16, 0x8($a3)
    /* 17AB94 801D70B4 44050000 */  mfc1       $a1, $f0
  .L801D70B8_ovl8:
    /* 17AB98 801D70B8 44061000 */  mfc1       $a2, $f2
    /* 17AB9C 801D70BC 0C03E1CA */  jal        func_800F8728
    /* 17ABA0 801D70C0 AFA8001C */   sw        $t0, 0x1C($sp)
    /* 17ABA4 801D70C4 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 17ABA8 801D70C8 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 17ABAC 801D70CC 3C07801D */  lui        $a3, %hi(D_801CE6D0_ovl7)
    /* 17ABB0 801D70D0 24E7E6D0 */  addiu      $a3, $a3, %lo(D_801CE6D0_ovl7)
    /* 17ABB4 801D70D4 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 17ABB8 801D70D8 C4E80004 */  lwc1       $f8, 0x4($a3)
    /* 17ABBC 801D70DC 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* 17ABC0 801D70E0 000A5880 */  sll        $t3, $t2, 2
    /* 17ABC4 801D70E4 002B0821 */  addu       $at, $at, $t3
    /* 17ABC8 801D70E8 E42825D0 */  swc1       $f8, %lo(gEntitiesNextPosXArray)($at)
    /* 17ABCC 801D70EC 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 17ABD0 801D70F0 C4EA000C */  lwc1       $f10, 0xC($a3)
    /* 17ABD4 801D70F4 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* 17ABD8 801D70F8 000C6880 */  sll        $t5, $t4, 2
    /* 17ABDC 801D70FC 002D0821 */  addu       $at, $at, $t5
    /* 17ABE0 801D7100 E42A2950 */  swc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* 17ABE4 801D7104 8CA30000 */  lw         $v1, 0x0($a1)
    /* 17ABE8 801D7108 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 17ABEC 801D710C 00031880 */  sll        $v1, $v1, 2
    /* 17ABF0 801D7110 C4F00008 */  lwc1       $f16, 0x8($a3)
  .L801D7114_ovl8:
    /* 17ABF4 801D7114 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 17ABF8 801D7118 00230821 */  addu       $at, $at, $v1
    /* 17ABFC 801D711C 11000024 */  beqz       $t0, .L801D71B0_ovl8
    /* 17AC00 801D7120 E4302790 */   swc1      $f16, %lo(gEntitiesNextPosYArray)($at)
    /* 17AC04 801D7124 310E0001 */  andi       $t6, $t0, 0x1
    /* 17AC08 801D7128 11C0000A */  beqz       $t6, .L801D7154_ovl8
    /* 17AC0C 801D712C 3C028013 */   lui       $v0, %hi(D_8012BCA0)
    /* 17AC10 801D7130 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 17AC14 801D7134 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 17AC18 801D7138 944B0000 */  lhu        $t3, 0x0($v0)
    /* 17AC1C 801D713C 000FC4C2 */  srl        $t8, $t7, 19
    /* 17AC20 801D7140 37190007 */  ori        $t9, $t8, 0x7
    /* 17AC24 801D7144 001950C0 */  sll        $t2, $t9, 3
    /* 17AC28 801D7148 316C0007 */  andi       $t4, $t3, 0x7
    /* 17AC2C 801D714C 014C6825 */  or         $t5, $t2, $t4
    /* 17AC30 801D7150 A44D0000 */  sh         $t5, 0x0($v0)
  .L801D7154_ovl8:
    /* 17AC34 801D7154 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 17AC38 801D7158 310E0002 */  andi       $t6, $t0, 0x2
    /* 17AC3C 801D715C 11C00009 */  beqz       $t6, .L801D7184_ovl8
    /* 17AC40 801D7160 2442BCA0 */   addiu     $v0, $v0, %lo(D_8012BCA0)
    /* 17AC44 801D7164 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 17AC48 801D7168 944A0000 */  lhu        $t2, 0x0($v0)
    /* 17AC4C 801D716C 000FC4C2 */  srl        $t8, $t7, 19
    /* 17AC50 801D7170 37190038 */  ori        $t9, $t8, 0x38
    /* 17AC54 801D7174 001958C0 */  sll        $t3, $t9, 3
    /* 17AC58 801D7178 314C0007 */  andi       $t4, $t2, 0x7
    /* 17AC5C 801D717C 016C6825 */  or         $t5, $t3, $t4
    /* 17AC60 801D7180 A44D0000 */  sh         $t5, 0x0($v0)
  .L801D7184_ovl8:
    /* 17AC64 801D7184 310E0004 */  andi       $t6, $t0, 0x4
    /* 17AC68 801D7188 11C00009 */  beqz       $t6, .L801D71B0_ovl8
    /* 17AC6C 801D718C 00000000 */   nop
    /* 17AC70 801D7190 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 17AC74 801D7194 944B0000 */  lhu        $t3, 0x0($v0)
    /* 17AC78 801D7198 000FC4C2 */  srl        $t8, $t7, 19
    /* 17AC7C 801D719C 371901C0 */  ori        $t9, $t8, 0x1C0
    /* 17AC80 801D71A0 001950C0 */  sll        $t2, $t9, 3
    /* 17AC84 801D71A4 316C0007 */  andi       $t4, $t3, 0x7
    /* 17AC88 801D71A8 014C6825 */  or         $t5, $t2, $t4
    /* 17AC8C 801D71AC A44D0000 */  sh         $t5, 0x0($v0)
  .L801D71B0_ovl8:
    /* 17AC90 801D71B0 3C028013 */  lui        $v0, %hi(D_8012BCA0)
    /* 17AC94 801D71B4 2442BCA0 */  addiu      $v0, $v0, %lo(D_8012BCA0)
    /* 17AC98 801D71B8 8C430000 */  lw         $v1, 0x0($v0)
    /* 17AC9C 801D71BC 00031CC2 */  srl        $v1, $v1, 19
    /* 17ACA0 801D71C0 306E0E00 */  andi       $t6, $v1, 0xE00
    /* 17ACA4 801D71C4 11C00007 */  beqz       $t6, .L801D71E4_ovl8
    /* 17ACA8 801D71C8 306F003F */   andi      $t7, $v1, 0x3F
    /* 17ACAC 801D71CC 0C029D9E */  jal        play_sound
    /* 17ACB0 801D71D0 24040110 */   addiu     $a0, $zero, 0x110
    /* 17ACB4 801D71D4 0C05AF49 */  jal        func_8016BD24_ovl3
    /* 17ACB8 801D71D8 00002025 */   or        $a0, $zero, $zero
    /* 17ACBC 801D71DC 10000012 */  b          .L801D7228_ovl8
    /* 17ACC0 801D71E0 00000000 */   nop
  .L801D71E4_ovl8:
    /* 17ACC4 801D71E4 11E00010 */  beqz       $t7, .L801D7228_ovl8
    /* 17ACC8 801D71E8 3C09800E */   lui       $t1, %hi(D_800E64D0)
    /* 17ACCC 801D71EC 8CB80000 */  lw         $t8, 0x0($a1)
    /* 17ACD0 801D71F0 252964D0 */  addiu      $t1, $t1, %lo(D_800E64D0)
    /* 17ACD4 801D71F4 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
    /* 17ACD8 801D71F8 0018C880 */  sll        $t9, $t8, 2
    /* 17ACDC 801D71FC 03291021 */  addu       $v0, $t9, $t1
    /* 17ACE0 801D7200 C4520000 */  lwc1       $f18, 0x0($v0)
    /* 17ACE4 801D7204 44812000 */  mtc1       $at, $f4
    /* 17ACE8 801D7208 44804000 */  mtc1       $zero, $f8
    /* 17ACEC 801D720C 3C01800E */  lui        $at, %hi(D_800E3210)
    /* 17ACF0 801D7210 46049182 */  mul.s      $f6, $f18, $f4
    /* 17ACF4 801D7214 E4460000 */  swc1       $f6, 0x0($v0)
    /* 17ACF8 801D7218 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 17ACFC 801D721C 000B5080 */  sll        $t2, $t3, 2
    /* 17AD00 801D7220 002A0821 */  addu       $at, $at, $t2
    /* 17AD04 801D7224 E4283210 */  swc1       $f8, %lo(D_800E3210)($at)
  .L801D7228_ovl8:
    /* 17AD08 801D7228 0C05A5BC */  jal        func_801696F0_ovl3
    /* 17AD0C 801D722C 8FA40020 */   lw        $a0, 0x20($sp)
    /* 17AD10 801D7230 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801D7234_ovl8:
    /* 17AD14 801D7234 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 17AD18 801D7238 03E00008 */  jr         $ra
    /* 17AD1C 801D723C 00000000 */   nop
endlabel func_801D6F1C_ovl8
.size func_801D6F1C_ovl8, . - func_801D6F1C_ovl8
