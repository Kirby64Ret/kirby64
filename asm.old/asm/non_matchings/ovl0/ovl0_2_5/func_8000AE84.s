glabel HS64_omInit
/* 00BA84 8000AE84 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 00BA88 8000AE88 AFBF0014 */  sw    $ra, 0x14($sp)
/* 00BA8C 8000AE8C 8C8E0008 */  lw    $t6, 8($a0)
/* 00BA90 8000AE90 3C068005 */  lui   $a2, %hi(gNewEntityStackSize) # $a2, 0x8005
/* 00BA94 8000AE94 24C6A54C */  addiu $a2, %lo(gNewEntityStackSize) # addiu $a2, $a2, -0x5ab4
/* 00BA98 8000AE98 ACCE0000 */  sw    $t6, ($a2)
/* 00BA9C 8000AE9C 8C8F0014 */  lw    $t7, 0x14($a0)
/* 00BAA0 8000AEA0 3C018005 */  lui   $at, %hi(D_8004A550) # $at, 0x8005
/* 00BAA4 8000AEA4 00802825 */  move  $a1, $a0
/* 00BAA8 8000AEA8 AC2FA550 */  sw    $t7, %lo(D_8004A550)($at)
/* 00BAAC 8000AEAC 8C980004 */  lw    $t8, 4($a0)
/* 00BAB0 8000AEB0 13000014 */  beqz  $t8, .L8000AF04_ovl0
/* 00BAB4 8000AEB4 00000000 */   nop   
/* 00BAB8 8000AEB8 8C830000 */  lw    $v1, ($a0)
/* 00BABC 8000AEBC 3C018005 */  lui   $at, %hi(gGObjThreadHead) # $at, 0x8005
/* 00BAC0 8000AEC0 00002025 */  move  $a0, $zero
/* 00BAC4 8000AEC4 AC23A540 */  sw    $v1, %lo(gGObjThreadHead)($at)
/* 00BAC8 8000AEC8 8CB90004 */  lw    $t9, 4($a1)
/* 00BACC 8000AECC 272BFFFF */  addiu $t3, $t9, -1
/* 00BAD0 8000AED0 1960000A */  blez  $t3, .L8000AEFC_ovl0
/* 00BAD4 8000AED4 246201C0 */   addiu $v0, $v1, 0x1c0
.L8000AED8_ovl0:
/* 00BAD8 8000AED8 AC620000 */  sw    $v0, ($v1)
/* 00BADC 8000AEDC 8CAC0004 */  lw    $t4, 4($a1)
/* 00BAE0 8000AEE0 24840001 */  addiu $a0, $a0, 1
/* 00BAE4 8000AEE4 00401825 */  move  $v1, $v0
/* 00BAE8 8000AEE8 258DFFFF */  addiu $t5, $t4, -1
/* 00BAEC 8000AEEC 008D082A */  slt   $at, $a0, $t5
/* 00BAF0 8000AEF0 5420FFF9 */  bnezl $at, .L8000AED8_ovl0
/* 00BAF4 8000AEF4 246201C0 */   addiu $v0, $v1, 0x1c0
/* 00BAF8 8000AEF8 00002025 */  move  $a0, $zero
.L8000AEFC_ovl0:
/* 00BAFC 8000AEFC 10000004 */  b     .L8000AF10_ovl0
/* 00BB00 8000AF00 AC600000 */   sw    $zero, ($v1)
.L8000AF04_ovl0:
/* 00BB04 8000AF04 3C018005 */  lui   $at, %hi(gGObjThreadHead) # $at, 0x8005
/* 00BB08 8000AF08 AC20A540 */  sw    $zero, %lo(gGObjThreadHead)($at)
/* 00BB0C 8000AF0C 00002025 */  move  $a0, $zero
.L8000AF10_ovl0:
/* 00BB10 8000AF10 8CAE0010 */  lw    $t6, 0x10($a1)
/* 00BB14 8000AF14 11C0001A */  beqz  $t6, .L8000AF80_ovl0
/* 00BB18 8000AF18 00000000 */   nop   
/* 00BB1C 8000AF1C 8CAF0008 */  lw    $t7, 8($a1)
/* 00BB20 8000AF20 11E00017 */  beqz  $t7, .L8000AF80_ovl0
/* 00BB24 8000AF24 00000000 */   nop   
/* 00BB28 8000AF28 8CA2000C */  lw    $v0, 0xc($a1)
/* 00BB2C 8000AF2C 3C018005 */  lui   $at, %hi(gGObjThreadStackHead) # $at, 0x8005
/* 00BB30 8000AF30 AC22A554 */  sw    $v0, %lo(gGObjThreadStackHead)($at)
/* 00BB34 8000AF34 8CB80010 */  lw    $t8, 0x10($a1)
/* 00BB38 8000AF38 2719FFFF */  addiu $t9, $t8, -1
/* 00BB3C 8000AF3C 1320000E */  beqz  $t9, .L8000AF78_ovl0
/* 00BB40 8000AF40 00000000 */   nop   
/* 00BB44 8000AF44 8CC30000 */  lw    $v1, ($a2)
.L8000AF48_ovl0:
/* 00BB48 8000AF48 00435821 */  addu  $t3, $v0, $v1
/* 00BB4C 8000AF4C 256C0008 */  addiu $t4, $t3, 8
/* 00BB50 8000AF50 AC4C0000 */  sw    $t4, ($v0)
/* 00BB54 8000AF54 8CAD0010 */  lw    $t5, 0x10($a1)
/* 00BB58 8000AF58 8CC30000 */  lw    $v1, ($a2)
/* 00BB5C 8000AF5C 24840001 */  addiu $a0, $a0, 1
/* 00BB60 8000AF60 25AEFFFF */  addiu $t6, $t5, -1
/* 00BB64 8000AF64 008E082B */  sltu  $at, $a0, $t6
/* 00BB68 8000AF68 00431021 */  addu  $v0, $v0, $v1
/* 00BB6C 8000AF6C 1420FFF6 */  bnez  $at, .L8000AF48_ovl0
/* 00BB70 8000AF70 24420008 */   addiu $v0, $v0, 8
/* 00BB74 8000AF74 00002025 */  move  $a0, $zero
.L8000AF78_ovl0:
/* 00BB78 8000AF78 10000003 */  b     .L8000AF88_ovl0
/* 00BB7C 8000AF7C AC400000 */   sw    $zero, ($v0)
.L8000AF80_ovl0:
/* 00BB80 8000AF80 3C018005 */  lui   $at, %hi(gGObjThreadStackHead) # $at, 0x8005
/* 00BB84 8000AF84 AC20A554 */  sw    $zero, %lo(gGObjThreadStackHead)($at)
.L8000AF88_ovl0:
/* 00BB88 8000AF88 8CAF001C */  lw    $t7, 0x1c($a1)
/* 00BB8C 8000AF8C 11E00012 */  beqz  $t7, .L8000AFD8_ovl0
/* 00BB90 8000AF90 00000000 */   nop   
/* 00BB94 8000AF94 8CA30018 */  lw    $v1, 0x18($a1)
/* 00BB98 8000AF98 3C018005 */  lui   $at, %hi(gGObjProcessHead) # $at, 0x8005
/* 00BB9C 8000AF9C AC23A55C */  sw    $v1, %lo(gGObjProcessHead)($at)
/* 00BBA0 8000AFA0 8CB8001C */  lw    $t8, 0x1c($a1)
/* 00BBA4 8000AFA4 2719FFFF */  addiu $t9, $t8, -1
/* 00BBA8 8000AFA8 1B200009 */  blez  $t9, .L8000AFD0_ovl0
/* 00BBAC 8000AFAC 24620024 */   addiu $v0, $v1, 0x24
.L8000AFB0_ovl0:
/* 00BBB0 8000AFB0 AC620000 */  sw    $v0, ($v1)
/* 00BBB4 8000AFB4 8CAB001C */  lw    $t3, 0x1c($a1)
/* 00BBB8 8000AFB8 24840001 */  addiu $a0, $a0, 1
/* 00BBBC 8000AFBC 00401825 */  move  $v1, $v0
/* 00BBC0 8000AFC0 256CFFFF */  addiu $t4, $t3, -1
/* 00BBC4 8000AFC4 008C082A */  slt   $at, $a0, $t4
/* 00BBC8 8000AFC8 5420FFF9 */  bnezl $at, .L8000AFB0_ovl0
/* 00BBCC 8000AFCC 24620024 */   addiu $v0, $v1, 0x24
.L8000AFD0_ovl0:
/* 00BBD0 8000AFD0 10000003 */  b     .L8000AFE0_ovl0
/* 00BBD4 8000AFD4 AC600000 */   sw    $zero, ($v1)
.L8000AFD8_ovl0:
/* 00BBD8 8000AFD8 3C018005 */  lui   $at, %hi(gGObjProcessHead) # $at, 0x8005
/* 00BBDC 8000AFDC AC20A55C */  sw    $zero, %lo(gGObjProcessHead)($at)
.L8000AFE0_ovl0:
/* 00BBE0 8000AFE0 3C028005 */  lui   $v0, %hi(D_8004A560) # $v0, 0x8005
/* 00BBE4 8000AFE4 3C038005 */  lui   $v1, %hi(gGObjProcessCount) # $v1, 0x8005
/* 00BBE8 8000AFE8 2463A570 */  addiu $v1, %lo(gGObjProcessCount) # addiu $v1, $v1, -0x5a90
/* 00BBEC 8000AFEC 2442A560 */  addiu $v0, %lo(D_8004A560) # addiu $v0, $v0, -0x5aa0
.L8000AFF0_ovl0:
/* 00BBF0 8000AFF0 24420004 */  addiu $v0, $v0, 4
/* 00BBF4 8000AFF4 0043082B */  sltu  $at, $v0, $v1
/* 00BBF8 8000AFF8 1420FFFD */  bnez  $at, .L8000AFF0_ovl0
/* 00BBFC 8000AFFC AC40FFFC */   sw    $zero, -4($v0)
/* 00BC00 8000B000 8CAD0024 */  lw    $t5, 0x24($a1)
/* 00BC04 8000B004 11A00016 */  beqz  $t5, .L8000B060_ovl0
/* 00BC08 8000B008 00000000 */   nop   
/* 00BC0C 8000B00C 8CA20020 */  lw    $v0, 0x20($a1)
/* 00BC10 8000B010 3C018005 */  lui   $at, %hi(gGObjHead) # $at, 0x8005
/* 00BC14 8000B014 00002025 */  move  $a0, $zero
/* 00BC18 8000B018 AC22A678 */  sw    $v0, %lo(gGObjHead)($at)
/* 00BC1C 8000B01C 8CAE0024 */  lw    $t6, 0x24($a1)
/* 00BC20 8000B020 25CFFFFF */  addiu $t7, $t6, -1
/* 00BC24 8000B024 19E0000C */  blez  $t7, .L8000B058_ovl0
/* 00BC28 8000B028 00000000 */   nop   
/* 00BC2C 8000B02C 8CB80028 */  lw    $t8, 0x28($a1)
.L8000B030_ovl0:
/* 00BC30 8000B030 24840001 */  addiu $a0, $a0, 1
/* 00BC34 8000B034 0058C821 */  addu  $t9, $v0, $t8
/* 00BC38 8000B038 AC590004 */  sw    $t9, 4($v0)
/* 00BC3C 8000B03C 8CAB0024 */  lw    $t3, 0x24($a1)
/* 00BC40 8000B040 03201025 */  move  $v0, $t9
/* 00BC44 8000B044 256CFFFF */  addiu $t4, $t3, -1
/* 00BC48 8000B048 008C082A */  slt   $at, $a0, $t4
/* 00BC4C 8000B04C 5420FFF8 */  bnezl $at, .L8000B030_ovl0
/* 00BC50 8000B050 8CB80028 */   lw    $t8, 0x28($a1)
/* 00BC54 8000B054 00002025 */  move  $a0, $zero
.L8000B058_ovl0:
/* 00BC58 8000B058 10000004 */  b     .L8000B06C_ovl0
/* 00BC5C 8000B05C AC400004 */   sw    $zero, 4($v0)
.L8000B060_ovl0:
/* 00BC60 8000B060 3C018005 */  lui   $at, %hi(gGObjHead) # $at, 0x8005
/* 00BC64 8000B064 AC20A678 */  sw    $zero, %lo(gGObjHead)($at)
/* 00BC68 8000B068 00002025 */  move  $a0, $zero
.L8000B06C_ovl0:
/* 00BC6C 8000B06C 8CAD0034 */  lw    $t5, 0x34($a1)
/* 00BC70 8000B070 3C018005 */  lui   $at, %hi(D_8004A798) # $at, 0x8005
/* 00BC74 8000B074 AC2DA798 */  sw    $t5, %lo(D_8004A798)($at)
/* 00BC78 8000B078 8CAE0030 */  lw    $t6, 0x30($a1)
/* 00BC7C 8000B07C 11C00013 */  beqz  $t6, .L8000B0CC_ovl0
/* 00BC80 8000B080 00000000 */   nop   
/* 00BC84 8000B084 8CA3002C */  lw    $v1, 0x2c($a1)
/* 00BC88 8000B088 3C018005 */  lui   $at, %hi(gOMMtxHead) # $at, 0x8005
/* 00BC8C 8000B08C AC23A790 */  sw    $v1, %lo(gOMMtxHead)($at)
/* 00BC90 8000B090 8CAF0030 */  lw    $t7, 0x30($a1)
/* 00BC94 8000B094 25F8FFFF */  addiu $t8, $t7, -1
/* 00BC98 8000B098 1B00000A */  blez  $t8, .L8000B0C4_ovl0
/* 00BC9C 8000B09C 24620048 */   addiu $v0, $v1, 0x48
.L8000B0A0_ovl0:
/* 00BCA0 8000B0A0 AC620000 */  sw    $v0, ($v1)
/* 00BCA4 8000B0A4 8CB90030 */  lw    $t9, 0x30($a1)
/* 00BCA8 8000B0A8 24840001 */  addiu $a0, $a0, 1
/* 00BCAC 8000B0AC 00401825 */  move  $v1, $v0
/* 00BCB0 8000B0B0 272BFFFF */  addiu $t3, $t9, -1
/* 00BCB4 8000B0B4 008B082A */  slt   $at, $a0, $t3
/* 00BCB8 8000B0B8 5420FFF9 */  bnezl $at, .L8000B0A0_ovl0
/* 00BCBC 8000B0BC 24620048 */   addiu $v0, $v1, 0x48
/* 00BCC0 8000B0C0 00002025 */  move  $a0, $zero
.L8000B0C4_ovl0:
/* 00BCC4 8000B0C4 10000003 */  b     .L8000B0D4_ovl0
/* 00BCC8 8000B0C8 AC600000 */   sw    $zero, ($v1)
.L8000B0CC_ovl0:
/* 00BCCC 8000B0CC 3C018005 */  lui   $at, %hi(gOMMtxHead) # $at, 0x8005
/* 00BCD0 8000B0D0 AC20A790 */  sw    $zero, %lo(gOMMtxHead)($at)
.L8000B0D4_ovl0:
/* 00BCD4 8000B0D4 8CAC003C */  lw    $t4, 0x3c($a1)
/* 00BCD8 8000B0D8 3C018005 */  lui   $at, 0x8005
/* 00BCDC 8000B0DC 11800013 */  beqz  $t4, .L8000B12C_ovl0
/* 00BCE0 8000B0E0 00000000 */   nop   
/* 00BCE4 8000B0E4 8CA30038 */  lw    $v1, 0x38($a1)
/* 00BCE8 8000B0E8 3C018005 */  lui   $at, %hi(gAObjHead) # $at, 0x8005
/* 00BCEC 8000B0EC AC23A79C */  sw    $v1, %lo(gAObjHead)($at)
/* 00BCF0 8000B0F0 8CAD003C */  lw    $t5, 0x3c($a1)
/* 00BCF4 8000B0F4 25AEFFFF */  addiu $t6, $t5, -1
/* 00BCF8 8000B0F8 19C0000A */  blez  $t6, .L8000B124_ovl0
/* 00BCFC 8000B0FC 24620024 */   addiu $v0, $v1, 0x24
.L8000B100_ovl0:
/* 00BD00 8000B100 AC620000 */  sw    $v0, ($v1)
/* 00BD04 8000B104 8CAF003C */  lw    $t7, 0x3c($a1)
/* 00BD08 8000B108 24840001 */  addiu $a0, $a0, 1
/* 00BD0C 8000B10C 00401825 */  move  $v1, $v0
/* 00BD10 8000B110 25F8FFFF */  addiu $t8, $t7, -1
/* 00BD14 8000B114 0098082A */  slt   $at, $a0, $t8
/* 00BD18 8000B118 5420FFF9 */  bnezl $at, .L8000B100_ovl0
/* 00BD1C 8000B11C 24620024 */   addiu $v0, $v1, 0x24
/* 00BD20 8000B120 00002025 */  move  $a0, $zero
.L8000B124_ovl0:
/* 00BD24 8000B124 10000002 */  b     .L8000B130_ovl0
/* 00BD28 8000B128 AC600000 */   sw    $zero, ($v1)
.L8000B12C_ovl0:
/* 00BD2C 8000B12C AC20A79C */  sw    $zero, %lo(gAObjHead)($at)
.L8000B130_ovl0:
/* 00BD30 8000B130 8CB90044 */  lw    $t9, 0x44($a1)
/* 00BD34 8000B134 3C018005 */  lui   $at, 0x8005
/* 00BD38 8000B138 13200013 */  beqz  $t9, .L8000B188_ovl0
/* 00BD3C 8000B13C 00000000 */   nop   
/* 00BD40 8000B140 8CA30040 */  lw    $v1, 0x40($a1)
/* 00BD44 8000B144 3C018005 */  lui   $at, %hi(gMObjHead) # $at, 0x8005
/* 00BD48 8000B148 AC23A7A4 */  sw    $v1, %lo(gMObjHead)($at)
/* 00BD4C 8000B14C 8CAB0044 */  lw    $t3, 0x44($a1)
/* 00BD50 8000B150 256CFFFF */  addiu $t4, $t3, -1
/* 00BD54 8000B154 1980000A */  blez  $t4, .L8000B180_ovl0
/* 00BD58 8000B158 246200A8 */   addiu $v0, $v1, 0xa8
.L8000B15C_ovl0:
/* 00BD5C 8000B15C AC620000 */  sw    $v0, ($v1)
/* 00BD60 8000B160 8CAD0044 */  lw    $t5, 0x44($a1)
/* 00BD64 8000B164 24840001 */  addiu $a0, $a0, 1
/* 00BD68 8000B168 00401825 */  move  $v1, $v0
/* 00BD6C 8000B16C 25AEFFFF */  addiu $t6, $t5, -1
/* 00BD70 8000B170 008E082A */  slt   $at, $a0, $t6
/* 00BD74 8000B174 5420FFF9 */  bnezl $at, .L8000B15C_ovl0
/* 00BD78 8000B178 246200A8 */   addiu $v0, $v1, 0xa8
/* 00BD7C 8000B17C 00002025 */  move  $a0, $zero
.L8000B180_ovl0:
/* 00BD80 8000B180 10000002 */  b     .L8000B18C_ovl0
/* 00BD84 8000B184 AC600000 */   sw    $zero, ($v1)
.L8000B188_ovl0:
/* 00BD88 8000B188 AC20A7A4 */  sw    $zero, %lo(gMObjHead)($at)
.L8000B18C_ovl0:
/* 00BD8C 8000B18C 8CAF004C */  lw    $t7, 0x4c($a1)
/* 00BD90 8000B190 3C038005 */  lui   $v1, %hi(D_8004A5F8) # $v1, 0x8005
/* 00BD94 8000B194 3C018005 */  lui   $at, 0x8005
/* 00BD98 8000B198 11E00015 */  beqz  $t7, .L8000B1F0_ovl0
/* 00BD9C 8000B19C 2463A5F8 */   addiu $v1, %lo(D_8004A5F8) # addiu $v1, $v1, -0x5a08
/* 00BDA0 8000B1A0 8CA20048 */  lw    $v0, 0x48($a1)
/* 00BDA4 8000B1A4 3C018005 */  lui   $at, %hi(gDObjHead) # $at, 0x8005
/* 00BDA8 8000B1A8 AC22A7AC */  sw    $v0, %lo(gDObjHead)($at)
/* 00BDAC 8000B1AC 8CB8004C */  lw    $t8, 0x4c($a1)
/* 00BDB0 8000B1B0 2719FFFF */  addiu $t9, $t8, -1
/* 00BDB4 8000B1B4 1B20000C */  blez  $t9, .L8000B1E8_ovl0
/* 00BDB8 8000B1B8 00000000 */   nop   
/* 00BDBC 8000B1BC 8CAB0050 */  lw    $t3, 0x50($a1)
.L8000B1C0_ovl0:
/* 00BDC0 8000B1C0 24840001 */  addiu $a0, $a0, 1
/* 00BDC4 8000B1C4 004B6021 */  addu  $t4, $v0, $t3
/* 00BDC8 8000B1C8 AC4C0000 */  sw    $t4, ($v0)
/* 00BDCC 8000B1CC 8CAD004C */  lw    $t5, 0x4c($a1)
/* 00BDD0 8000B1D0 01801025 */  move  $v0, $t4
/* 00BDD4 8000B1D4 25AEFFFF */  addiu $t6, $t5, -1
/* 00BDD8 8000B1D8 008E082A */  slt   $at, $a0, $t6
/* 00BDDC 8000B1DC 5420FFF8 */  bnezl $at, .L8000B1C0_ovl0
/* 00BDE0 8000B1E0 8CAB0050 */   lw    $t3, 0x50($a1)
/* 00BDE4 8000B1E4 00002025 */  move  $a0, $zero
.L8000B1E8_ovl0:
/* 00BDE8 8000B1E8 10000002 */  b     .L8000B1F4_ovl0
/* 00BDEC 8000B1EC AC400000 */   sw    $zero, ($v0)
.L8000B1F0_ovl0:
/* 00BDF0 8000B1F0 AC20A7AC */  sw    $zero, %lo(gDObjHead)($at)
.L8000B1F4_ovl0:
/* 00BDF4 8000B1F4 8CAF0058 */  lw    $t7, 0x58($a1)
/* 00BDF8 8000B1F8 3C018005 */  lui   $at, 0x8005
/* 00BDFC 8000B1FC 11E00015 */  beqz  $t7, .L8000B254_ovl0
/* 00BE00 8000B200 00000000 */   nop   
/* 00BE04 8000B204 8CA20054 */  lw    $v0, 0x54($a1)
/* 00BE08 8000B208 3C018005 */  lui   $at, %hi(D_8004A7B4) # $at, 0x8005
/* 00BE0C 8000B20C AC22A7B4 */  sw    $v0, %lo(D_8004A7B4)($at)
/* 00BE10 8000B210 8CB80058 */  lw    $t8, 0x58($a1)
/* 00BE14 8000B214 2719FFFF */  addiu $t9, $t8, -1
/* 00BE18 8000B218 1B20000C */  blez  $t9, .L8000B24C_ovl0
/* 00BE1C 8000B21C 00000000 */   nop   
/* 00BE20 8000B220 8CAB005C */  lw    $t3, 0x5c($a1)
.L8000B224_ovl0:
/* 00BE24 8000B224 24840001 */  addiu $a0, $a0, 1
/* 00BE28 8000B228 004B6021 */  addu  $t4, $v0, $t3
/* 00BE2C 8000B22C AC4C0000 */  sw    $t4, ($v0)
/* 00BE30 8000B230 8CAD0058 */  lw    $t5, 0x58($a1)
/* 00BE34 8000B234 01801025 */  move  $v0, $t4
/* 00BE38 8000B238 25AEFFFF */  addiu $t6, $t5, -1
/* 00BE3C 8000B23C 008E082A */  slt   $at, $a0, $t6
/* 00BE40 8000B240 5420FFF8 */  bnezl $at, .L8000B224_ovl0
/* 00BE44 8000B244 8CAB005C */   lw    $t3, 0x5c($a1)
/* 00BE48 8000B248 00002025 */  move  $a0, $zero
.L8000B24C_ovl0:
/* 00BE4C 8000B24C 10000002 */  b     .L8000B258_ovl0
/* 00BE50 8000B250 AC400000 */   sw    $zero, ($v0)
.L8000B254_ovl0:
/* 00BE54 8000B254 AC20A7B4 */  sw    $zero, %lo(D_8004A7B4)($at)
.L8000B258_ovl0:
/* 00BE58 8000B258 8CAF0064 */  lw    $t7, 0x64($a1)
/* 00BE5C 8000B25C 3C018005 */  lui   $at, 0x8005
/* 00BE60 8000B260 11E00014 */  beqz  $t7, .L8000B2B4_ovl0
/* 00BE64 8000B264 00000000 */   nop   
/* 00BE68 8000B268 8CA20060 */  lw    $v0, 0x60($a1)
/* 00BE6C 8000B26C 3C018005 */  lui   $at, %hi(gCameraHead) # $at, 0x8005
/* 00BE70 8000B270 AC22A7BC */  sw    $v0, %lo(gCameraHead)($at)
/* 00BE74 8000B274 8CB80064 */  lw    $t8, 0x64($a1)
/* 00BE78 8000B278 2719FFFF */  addiu $t9, $t8, -1
/* 00BE7C 8000B27C 1B20000B */  blez  $t9, .L8000B2AC_ovl0
/* 00BE80 8000B280 00000000 */   nop   
/* 00BE84 8000B284 8CAB0068 */  lw    $t3, 0x68($a1)
.L8000B288_ovl0:
/* 00BE88 8000B288 24840001 */  addiu $a0, $a0, 1
/* 00BE8C 8000B28C 004B6021 */  addu  $t4, $v0, $t3
/* 00BE90 8000B290 AC4C0000 */  sw    $t4, ($v0)
/* 00BE94 8000B294 8CAD0064 */  lw    $t5, 0x64($a1)
/* 00BE98 8000B298 01801025 */  move  $v0, $t4
/* 00BE9C 8000B29C 25AEFFFF */  addiu $t6, $t5, -1
/* 00BEA0 8000B2A0 008E082A */  slt   $at, $a0, $t6
/* 00BEA4 8000B2A4 5420FFF8 */  bnezl $at, .L8000B288_ovl0
/* 00BEA8 8000B2A8 8CAB0068 */   lw    $t3, 0x68($a1)
.L8000B2AC_ovl0:
/* 00BEAC 8000B2AC 10000002 */  b     .L8000B2B8_ovl0
/* 00BEB0 8000B2B0 AC400000 */   sw    $zero, ($v0)
.L8000B2B4_ovl0:
/* 00BEB4 8000B2B4 AC20A7BC */  sw    $zero, %lo(gCameraHead)($at)
.L8000B2B8_ovl0:
/* 00BEB8 8000B2B8 3C028005 */  lui   $v0, %hi(D_8004A578) # $v0, 0x8005
/* 00BEBC 8000B2BC 3C048005 */  lui   $a0, %hi(D_8004A5F8) # $a0, 0x8005
/* 00BEC0 8000B2C0 2484A5F8 */  addiu $a0, %lo(D_8004A5F8) # addiu $a0, $a0, -0x5a08
/* 00BEC4 8000B2C4 2442A578 */  addiu $v0, %lo(D_8004A578) # addiu $v0, $v0, -0x5a88
.L8000B2C8_ovl0:
/* 00BEC8 8000B2C8 24420004 */  addiu $v0, $v0, 4
/* 00BECC 8000B2CC 0044082B */  sltu  $at, $v0, $a0
/* 00BED0 8000B2D0 24630004 */  addiu $v1, $v1, 4
/* 00BED4 8000B2D4 AC60FFFC */  sw    $zero, -4($v1)
/* 00BED8 8000B2D8 1420FFFB */  bnez  $at, .L8000B2C8_ovl0
/* 00BEDC 8000B2DC AC40FFFC */   sw    $zero, -4($v0)
/* 00BEE0 8000B2E0 3C018005 */  lui   $at, %hi(gDLLinkProcs) # $at, 0x8005
/* 00BEE4 8000B2E4 AC20A708 */  sw    $zero, %lo(gDLLinkProcs)($at)
/* 00BEE8 8000B2E8 3C018005 */  lui   $at, %hi(gHighestPrioDLLinkProcs) # $at, 0x8005
/* 00BEEC 8000B2EC 3C038005 */  lui   $v1, %hi(D_8004A70C) # $v1, 0x8005
/* 00BEF0 8000B2F0 3C028005 */  lui   $v0, %hi(D_8004A684) # $v0, 0x8005
/* 00BEF4 8000B2F4 3C048005 */  lui   $a0, %hi(D_8004A704) # $a0, 0x8005
/* 00BEF8 8000B2F8 2484A704 */  addiu $a0, %lo(D_8004A704) # addiu $a0, $a0, -0x58fc
/* 00BEFC 8000B2FC 2442A684 */  addiu $v0, %lo(D_8004A684) # addiu $v0, $v0, -0x597c
/* 00BF00 8000B300 2463A70C */  addiu $v1, %lo(D_8004A70C) # addiu $v1, $v1, -0x58f4
/* 00BF04 8000B304 AC20A680 */  sw    $zero, %lo(gHighestPrioDLLinkProcs)($at)
.L8000B308_ovl0:
/* 00BF08 8000B308 24420010 */  addiu $v0, $v0, 0x10
/* 00BF0C 8000B30C AC600004 */  sw    $zero, 4($v1)
/* 00BF10 8000B310 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 00BF14 8000B314 AC600008 */  sw    $zero, 8($v1)
/* 00BF18 8000B318 AC40FFF8 */  sw    $zero, -8($v0)
/* 00BF1C 8000B31C AC60000C */  sw    $zero, 0xc($v1)
/* 00BF20 8000B320 AC40FFFC */  sw    $zero, -4($v0)
/* 00BF24 8000B324 24630010 */  addiu $v1, $v1, 0x10
/* 00BF28 8000B328 AC60FFF0 */  sw    $zero, -0x10($v1)
/* 00BF2C 8000B32C 1444FFF6 */  bne   $v0, $a0, .L8000B308_ovl0
/* 00BF30 8000B330 AC40FFF0 */   sw    $zero, -0x10($v0)
/* 00BF34 8000B334 0C0051E7 */  jal   func_8001479C
/* 00BF38 8000B338 00000000 */   nop   
/* 00BF3C 8000B33C 3C048005 */  lui   $a0, %hi(HS64_GObjProcMesgQ) # $a0, 0x8005
/* 00BF40 8000B340 3C058005 */  lui   $a1, %hi(D_8004A7D8) # $a1, 0x8005
/* 00BF44 8000B344 24A5A7D8 */  addiu $a1, %lo(D_8004A7D8) # addiu $a1, $a1, -0x5828
/* 00BF48 8000B348 2484A7E0 */  addiu $a0, %lo(HS64_GObjProcMesgQ) # addiu $a0, $a0, -0x5820
/* 00BF4C 8000B34C 0C00CEB8 */  jal   osCreateMesgQueue
/* 00BF50 8000B350 24060001 */   li    $a2, 1
/* 00BF54 8000B354 3C028005 */  lui   $v0, %hi(gCameraCount) # $v0, 0x8005
/* 00BF58 8000B358 3C038005 */  lui   $v1, %hi(D_8004A7B8) # $v1, 0x8005
/* 00BF5C 8000B35C 3C058005 */  lui   $a1, %hi(gDObjCount) # $a1, 0x8005
/* 00BF60 8000B360 3C068005 */  lui   $a2, %hi(gAObjCount) # $a2, 0x8005
/* 00BF64 8000B364 3C078005 */  lui   $a3, %hi(gOMMtxCount) # $a3, 0x8005
/* 00BF68 8000B368 3C088005 */  lui   $t0, %hi(gGObjCount) # $t0, 0x8005
/* 00BF6C 8000B36C 3C098005 */  lui   $t1, %hi(gGObjProcessCount) # $t1, 0x8005
/* 00BF70 8000B370 3C0A8005 */  lui   $t2, %hi(gGObjThreadCount) # $t2, 0x8005
/* 00BF74 8000B374 254AA544 */  addiu $t2, %lo(gGObjThreadCount) # addiu $t2, $t2, -0x5abc
/* 00BF78 8000B378 2529A570 */  addiu $t1, %lo(gGObjProcessCount) # addiu $t1, $t1, -0x5a90
/* 00BF7C 8000B37C 2508A78C */  addiu $t0, %lo(gGObjCount) # addiu $t0, $t0, -0x5874
/* 00BF80 8000B380 24E7A794 */  addiu $a3, %lo(gOMMtxCount) # addiu $a3, $a3, -0x586c
/* 00BF84 8000B384 24C6A7A0 */  addiu $a2, %lo(gAObjCount) # addiu $a2, $a2, -0x5860
/* 00BF88 8000B388 24A5A7B0 */  addiu $a1, %lo(gDObjCount) # addiu $a1, $a1, -0x5850
/* 00BF8C 8000B38C 2463A7B8 */  addiu $v1, %lo(D_8004A7B8) # addiu $v1, $v1, -0x5848
/* 00BF90 8000B390 2442A7C0 */  addiu $v0, %lo(gCameraCount) # addiu $v0, $v0, -0x5840
/* 00BF94 8000B394 AC400000 */  sw    $zero, ($v0)
/* 00BF98 8000B398 AC600000 */  sw    $zero, ($v1)
/* 00BF9C 8000B39C ACA00000 */  sw    $zero, ($a1)
/* 00BFA0 8000B3A0 ACC00000 */  sw    $zero, ($a2)
/* 00BFA4 8000B3A4 ACE00000 */  sw    $zero, ($a3)
/* 00BFA8 8000B3A8 AD000000 */  sw    $zero, ($t0)
/* 00BFAC 8000B3AC AD200000 */  sw    $zero, ($t1)
/* 00BFB0 8000B3B0 AD400000 */  sw    $zero, ($t2)
/* 00BFB4 8000B3B4 3C018005 */  lui   $at, %hi(D_8004A548) # $at, 0x8005
/* 00BFB8 8000B3B8 AC20A548 */  sw    $zero, %lo(D_8004A548)($at)
/* 00BFBC 8000B3BC 3C018005 */  lui   $at, %hi(D_8004A558) # $at, 0x8005
/* 00BFC0 8000B3C0 AC20A558 */  sw    $zero, %lo(D_8004A558)($at)
/* 00BFC4 8000B3C4 0C005ECD */  jal   func_80017B34
/* 00BFC8 8000B3C8 00002025 */   move  $a0, $zero
/* 00BFCC 8000B3CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00BFD0 8000B3D0 3C018004 */  lui   $at, %hi(D_8003DE54) # $at, 0x8004
/* 00BFD4 8000B3D4 AC20DE54 */  sw    $zero, %lo(D_8003DE54)($at)
/* 00BFD8 8000B3D8 03E00008 */  jr    $ra
/* 00BFDC 8000B3DC 27BD0018 */   addiu $sp, $sp, 0x18
.type HS64_omInit, @function
.size HS64_omInit, . - HS64_omInit
