glabel func_8015CD00_ovl5
/* 104170 8015CD00 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 104174 8015CD04 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 104178 8015CD08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10417C 8015CD0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 104180 8015CD10 8DC20000 */  lw         $v0, 0x0($t6)
/* 104184 8015CD14 3C0F800F */  lui        $t7, %hi(D_800E98E0)
/* 104188 8015CD18 00021080 */  sll        $v0, $v0, 2
/* 10418C 8015CD1C 01E27821 */  addu       $t7, $t7, $v0
/* 104190 8015CD20 8DEF98E0 */  lw         $t7, %lo(D_800E98E0)($t7)
/* 104194 8015CD24 2DE1000D */  sltiu      $at, $t7, 0xD
/* 104198 8015CD28 1020004C */  beqz       $at, .L8015CE5C_ovl5
/* 10419C 8015CD2C 000F7880 */   sll       $t7, $t7, 2
/* 1041A0 8015CD30 3C018019 */  lui        $at, %hi(jtbl_8018D480_ovl5)
/* 1041A4 8015CD34 002F0821 */  addu       $at, $at, $t7
/* 1041A8 8015CD38 8C2FD480 */  lw         $t7, %lo(jtbl_8018D480_ovl5)($at)
/* 1041AC 8015CD3C 01E00008 */  jr         $t7
/* 1041B0 8015CD40 00000000 */   nop
/* 1041B4 8015CD44 0C05739D */  jal        func_8015CE74_ovl5
/* 1041B8 8015CD48 00000000 */   nop
/* 1041BC 8015CD4C 10000044 */  b          .L8015CE60_ovl5
/* 1041C0 8015CD50 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1041C4 8015CD54 0C058B1A */  jal        func_80162C68_ovl5
/* 1041C8 8015CD58 00000000 */   nop
/* 1041CC 8015CD5C 10000040 */  b          .L8015CE60_ovl5
/* 1041D0 8015CD60 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1041D4 8015CD64 3C05800F */  lui        $a1, %hi(D_800E9AA0)
/* 1041D8 8015CD68 00A22821 */  addu       $a1, $a1, $v0
/* 1041DC 8015CD6C 0C0582BE */  jal        func_80160AF8_ovl5
/* 1041E0 8015CD70 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
/* 1041E4 8015CD74 1000003A */  b          .L8015CE60_ovl5
/* 1041E8 8015CD78 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1041EC 8015CD7C 3C05800F */  lui        $a1, %hi(D_800E9AA0)
/* 1041F0 8015CD80 00A22821 */  addu       $a1, $a1, $v0
/* 1041F4 8015CD84 0C05839B */  jal        func_80160E6C_ovl5
/* 1041F8 8015CD88 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
/* 1041FC 8015CD8C 10000034 */  b          .L8015CE60_ovl5
/* 104200 8015CD90 8FBF0014 */   lw        $ra, 0x14($sp)
/* 104204 8015CD94 3C05800F */  lui        $a1, %hi(D_800E9AA0)
/* 104208 8015CD98 00A22821 */  addu       $a1, $a1, $v0
/* 10420C 8015CD9C 0C05846A */  jal        func_801611A8_ovl5
/* 104210 8015CDA0 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
/* 104214 8015CDA4 1000002E */  b          .L8015CE60_ovl5
/* 104218 8015CDA8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015CDAC_ovl3:
/* 10421C 8015CDAC 3C05800F */  lui        $a1, %hi(D_800E9AA0)
/* 104220 8015CDB0 00A22821 */  addu       $a1, $a1, $v0
/* 104224 8015CDB4 0C0577F2 */  jal        func_8015DFC8_ovl5
/* 104228 8015CDB8 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
/* 10422C 8015CDBC 10000028 */  b          .L8015CE60_ovl5
/* 104230 8015CDC0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 104234 8015CDC4 3C05800F */  lui        $a1, %hi(D_800E9AA0)
.L8015CDC8_ovl3:
/* 104238 8015CDC8 00A22821 */  addu       $a1, $a1, $v0
/* 10423C 8015CDCC 0C058F30 */  jal        func_80163CC0_ovl5
/* 104240 8015CDD0 8CA59AA0 */   lw        $a1, %lo(D_800E9AA0)($a1)
/* 104244 8015CDD4 10000022 */  b          .L8015CE60_ovl5
/* 104248 8015CDD8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10424C 8015CDDC 0C058B33 */  jal        func_80162CCC_ovl5
/* 104250 8015CDE0 00000000 */   nop
/* 104254 8015CDE4 1000001E */  b          .L8015CE60_ovl5
/* 104258 8015CDE8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10425C 8015CDEC 0C059124 */  jal        func_80164490_ovl5
/* 104260 8015CDF0 00000000 */   nop
/* 104264 8015CDF4 1000001A */  b          .L8015CE60_ovl5
/* 104268 8015CDF8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10426C 8015CDFC 0C0585E7 */  jal        func_8016179C_ovl5
/* 104270 8015CE00 00000000 */   nop
/* 104274 8015CE04 10000016 */  b          .L8015CE60_ovl5
/* 104278 8015CE08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10427C 8015CE0C 3C05800F */  lui        $a1, %hi(D_800E9E20)
/* 104280 8015CE10 00A22821 */  addu       $a1, $a1, $v0
/* 104284 8015CE14 0C0586D3 */  jal        func_80161B4C_ovl5
/* 104288 8015CE18 8CA59E20 */   lw        $a1, %lo(D_800E9E20)($a1)
/* 10428C 8015CE1C 10000010 */  b          .L8015CE60_ovl5
/* 104290 8015CE20 8FBF0014 */   lw        $ra, 0x14($sp)
.L8015CE24_ovl3:
/* 104294 8015CE24 3C05800F */  lui        $a1, %hi(D_800EA6E0)
.L8015CE28_ovl3:
/* 104298 8015CE28 3C06800F */  lui        $a2, %hi(D_800EA8A0)
/* 10429C 8015CE2C 3C07800F */  lui        $a3, %hi(D_800EAA60)
/* 1042A0 8015CE30 00E23821 */  addu       $a3, $a3, $v0
/* 1042A4 8015CE34 00C23021 */  addu       $a2, $a2, $v0
/* 1042A8 8015CE38 00A22821 */  addu       $a1, $a1, $v0
/* 1042AC 8015CE3C 8CA5A6E0 */  lw         $a1, %lo(D_800EA6E0)($a1)
/* 1042B0 8015CE40 8CC6A8A0 */  lw         $a2, %lo(D_800EA8A0)($a2)
/* 1042B4 8015CE44 0C058AC7 */  jal        func_80162B1C_ovl5
/* 1042B8 8015CE48 8CE7AA60 */   lw        $a3, %lo(D_800EAA60)($a3)
/* 1042BC 8015CE4C 10000004 */  b          .L8015CE60_ovl5
/* 1042C0 8015CE50 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1042C4 8015CE54 0C05928D */  jal        func_80164A34_ovl5
/* 1042C8 8015CE58 00000000 */   nop
.L8015CE5C_ovl5:
/* 1042CC 8015CE5C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8015CE60_ovl5:
/* 1042D0 8015CE60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1042D4 8015CE64 03E00008 */  jr         $ra
/* 1042D8 8015CE68 00000000 */   nop
/* 1042DC 8015CE6C 03E00008 */  jr         $ra
.L8015CE70_ovl3:
/* 1042E0 8015CE70 00000000 */   nop
