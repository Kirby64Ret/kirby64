glabel func_801A3000_ovl7
/* 149070 801A3000 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 149074 801A3004 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 149078 801A3008 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14907C 801A300C AFBF0014 */  sw         $ra, 0x14($sp)
/* 149080 801A3010 AFA40018 */  sw         $a0, 0x18($sp)
/* 149084 801A3014 8DCF0000 */  lw         $t7, 0x0($t6)
/* 149088 801A3018 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 14908C 801A301C 000FC080 */  sll        $t8, $t7, 2
/* 149090 801A3020 00581021 */  addu       $v0, $v0, $t8
/* 149094 801A3024 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 149098 801A3028 8C430084 */  lw         $v1, 0x84($v0)
/* 14909C 801A302C 0C068B1E */  jal        func_801A2C78_ovl7
/* 1490A0 801A3030 C46C0014 */   lwc1      $f12, 0x14($v1)
/* 1490A4 801A3034 10400054 */  beqz       $v0, .L801A3188_ovl7
/* 1490A8 801A3038 3C038005 */   lui       $v1, %hi(D_8004A7C4)
/* 1490AC 801A303C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 1490B0 801A3040 3C07800F */  lui        $a3, %hi(D_800E8AE0)
/* 1490B4 801A3044 24E78AE0 */  addiu      $a3, $a3, %lo(D_800E8AE0)
/* 1490B8 801A3048 8C790000 */  lw         $t9, 0x0($v1)
/* 1490BC 801A304C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1490C0 801A3050 3C06800E */  lui        $a2, %hi(gEntitiesNextPosYArray)
/* 1490C4 801A3054 00194880 */  sll        $t1, $t9, 2
/* 1490C8 801A3058 00E92021 */  addu       $a0, $a3, $t1
/* 1490CC 801A305C 8C8A0000 */  lw         $t2, 0x0($a0)
/* 1490D0 801A3060 24C62790 */  addiu      $a2, $a2, %lo(gEntitiesNextPosYArray)
/* 1490D4 801A3064 3C08800E */  lui        $t0, %hi(gEntitiesPosYArray)
/* 1490D8 801A3068 354B0001 */  ori        $t3, $t2, 0x1
/* 1490DC 801A306C AC8B0000 */  sw         $t3, 0x0($a0)
/* 1490E0 801A3070 8C6C0000 */  lw         $t4, 0x0($v1)
/* 1490E4 801A3074 25082CD0 */  addiu      $t0, $t0, %lo(gEntitiesPosYArray)
/* 1490E8 801A3078 000C6880 */  sll        $t5, $t4, 2
/* 1490EC 801A307C 002D0821 */  addu       $at, $at, $t5
/* 1490F0 801A3080 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1490F4 801A3084 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1490F8 801A3088 3C01801D */  lui        $at, %hi(D_801CDF9C_ovl7)
/* 1490FC 801A308C C426DF9C */  lwc1       $f6, %lo(D_801CDF9C_ovl7)($at)
/* 149100 801A3090 000E7880 */  sll        $t7, $t6, 2
/* 149104 801A3094 00CF2821 */  addu       $a1, $a2, $t7
/* 149108 801A3098 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 14910C 801A309C 46062201 */  sub.s      $f8, $f4, $f6
/* 149110 801A30A0 E4A80000 */  swc1       $f8, 0x0($a1)
/* 149114 801A30A4 8C620000 */  lw         $v0, 0x0($v1)
/* 149118 801A30A8 00021080 */  sll        $v0, $v0, 2
/* 14911C 801A30AC 0102C021 */  addu       $t8, $t0, $v0
/* 149120 801A30B0 00C2C821 */  addu       $t9, $a2, $v0
/* 149124 801A30B4 C7300000 */  lwc1       $f16, 0x0($t9)
/* 149128 801A30B8 C70A0000 */  lwc1       $f10, 0x0($t8)
/* 14912C 801A30BC 00E24821 */  addu       $t1, $a3, $v0
/* 149130 801A30C0 4610503C */  c.lt.s     $f10, $f16
/* 149134 801A30C4 00000000 */  nop
/* 149138 801A30C8 45020030 */  bc1fl      .L801A318C_ovl7
/* 14913C 801A30CC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 149140 801A30D0 8D2A0000 */  lw         $t2, 0x0($t1)
/* 149144 801A30D4 3C0C8013 */  lui        $t4, %hi(D_8012BCA0)
/* 149148 801A30D8 314B0002 */  andi       $t3, $t2, 0x2
/* 14914C 801A30DC 5160002B */  beql       $t3, $zero, .L801A318C_ovl7
/* 149150 801A30E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 149154 801A30E4 8D8CBCA0 */  lw         $t4, %lo(D_8012BCA0)($t4)
/* 149158 801A30E8 3C0F800E */  lui        $t7, %hi(D_800E6150)
/* 14915C 801A30EC 01E27821 */  addu       $t7, $t7, $v0
/* 149160 801A30F0 000C6CC2 */  srl        $t5, $t4, 19
/* 149164 801A30F4 31AE0E00 */  andi       $t6, $t5, 0xE00
/* 149168 801A30F8 51C00024 */  beql       $t6, $zero, .L801A318C_ovl7
/* 14916C 801A30FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 149170 801A3100 8DEF6150 */  lw         $t7, %lo(D_800E6150)($t7)
/* 149174 801A3104 3C01800E */  lui        $at, %hi(D_800E5F90)
/* 149178 801A3108 00220821 */  addu       $at, $at, $v0
/* 14917C 801A310C AC2F5F90 */  sw         $t7, %lo(D_800E5F90)($at)
/* 149180 801A3110 8C620000 */  lw         $v0, 0x0($v1)
/* 149184 801A3114 3C01800E */  lui        $at, %hi(D_800E6D90)
/* 149188 801A3118 00021080 */  sll        $v0, $v0, 2
/* 14918C 801A311C 00220821 */  addu       $at, $at, $v0
/* 149190 801A3120 C4326D90 */  lwc1       $f18, %lo(D_800E6D90)($at)
/* 149194 801A3124 3C01800E */  lui        $at, %hi(D_800E6BD0)
/* 149198 801A3128 00220821 */  addu       $at, $at, $v0
/* 14919C 801A312C E4326BD0 */  swc1       $f18, %lo(D_800E6BD0)($at)
/* 1491A0 801A3130 8C620000 */  lw         $v0, 0x0($v1)
/* 1491A4 801A3134 3C01800E */  lui        $at, %hi(gEntitiesPosXArray)
/* 1491A8 801A3138 00021080 */  sll        $v0, $v0, 2
/* 1491AC 801A313C 00220821 */  addu       $at, $at, $v0
/* 1491B0 801A3140 C4242B10 */  lwc1       $f4, %lo(gEntitiesPosXArray)($at)
/* 1491B4 801A3144 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
/* 1491B8 801A3148 00220821 */  addu       $at, $at, $v0
/* 1491BC 801A314C E42425D0 */  swc1       $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1491C0 801A3150 8C620000 */  lw         $v0, 0x0($v1)
/* 1491C4 801A3154 3C01800E */  lui        $at, %hi(gEntitiesPosZArray)
/* 1491C8 801A3158 00021080 */  sll        $v0, $v0, 2
/* 1491CC 801A315C 0102C021 */  addu       $t8, $t0, $v0
/* 1491D0 801A3160 C7060000 */  lwc1       $f6, 0x0($t8)
/* 1491D4 801A3164 00C2C821 */  addu       $t9, $a2, $v0
/* 1491D8 801A3168 E7260000 */  swc1       $f6, 0x0($t9)
/* 1491DC 801A316C 8C620000 */  lw         $v0, 0x0($v1)
/* 1491E0 801A3170 00021080 */  sll        $v0, $v0, 2
/* 1491E4 801A3174 00220821 */  addu       $at, $at, $v0
/* 1491E8 801A3178 C4282E90 */  lwc1       $f8, %lo(gEntitiesPosZArray)($at)
/* 1491EC 801A317C 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
/* 1491F0 801A3180 00220821 */  addu       $at, $at, $v0
/* 1491F4 801A3184 E4282950 */  swc1       $f8, %lo(gEntitiesNextPosZArray)($at)
.L801A3188_ovl7:
/* 1491F8 801A3188 8FBF0014 */  lw         $ra, 0x14($sp)
.L801A318C_ovl7:
/* 1491FC 801A318C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 149200 801A3190 03E00008 */  jr         $ra
/* 149204 801A3194 00000000 */   nop
