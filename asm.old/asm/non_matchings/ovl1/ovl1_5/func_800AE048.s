glabel func_800AE048
/* 056298 800AE048 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05629C 800AE04C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0562A0 800AE050 14800004 */  bnez  $a0, .L800AE064_ovl1
/* 0562A4 800AE054 00803025 */   move  $a2, $a0
/* 0562A8 800AE058 3C01800E */  lui   $at, %hi(D_800DD6E0) # $at, 0x800e
/* 0562AC 800AE05C 10000013 */  b     .L800AE0AC_ovl1
/* 0562B0 800AE060 AC20D6E0 */   sw    $zero, %lo(D_800DD6E0)($at)
.L800AE064_ovl1:
/* 0562B4 800AE064 00062200 */  sll   $a0, $a2, 8
/* 0562B8 800AE068 24050008 */  li    $a1, 8
/* 0562BC 800AE06C 0C001500 */  jal   alloc_with_alignment
/* 0562C0 800AE070 AFA60018 */   sw    $a2, 0x18($sp)
/* 0562C4 800AE074 8FA60018 */  lw    $a2, 0x18($sp)
/* 0562C8 800AE078 3C01800E */  lui   $at, %hi(D_800DD6E0) # $at, 0x800e
/* 0562CC 800AE07C 00401825 */  move  $v1, $v0
/* 0562D0 800AE080 24C5FFFF */  addiu $a1, $a2, -1
/* 0562D4 800AE084 AC22D6E0 */  sw    $v0, %lo(D_800DD6E0)($at)
/* 0562D8 800AE088 10A00007 */  beqz  $a1, .L800AE0A8_ovl1
/* 0562DC 800AE08C 00002025 */   move  $a0, $zero
.L800AE090_ovl1:
/* 0562E0 800AE090 24840001 */  addiu $a0, $a0, 1
/* 0562E4 800AE094 24620100 */  addiu $v0, $v1, 0x100
/* 0562E8 800AE098 0085082B */  sltu  $at, $a0, $a1
/* 0562EC 800AE09C AC620000 */  sw    $v0, ($v1)
/* 0562F0 800AE0A0 1420FFFB */  bnez  $at, .L800AE090_ovl1
/* 0562F4 800AE0A4 00401825 */   move  $v1, $v0
.L800AE0A8_ovl1:
/* 0562F8 800AE0A8 AC600000 */  sw    $zero, ($v1)
.L800AE0AC_ovl1:
/* 0562FC 800AE0AC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 056300 800AE0B0 3C02800E */  lui   $v0, %hi(D_800DD6F0) # $v0, 0x800e
/* 056304 800AE0B4 3C03800E */  lui   $v1, %hi(D_800DD6EC) # $v1, 0x800e
/* 056308 800AE0B8 3C04800E */  lui   $a0, %hi(D_800DD6E8) # $a0, 0x800e
/* 05630C 800AE0BC 2484D6E8 */  addiu $a0, %lo(D_800DD6E8) # addiu $a0, $a0, -0x2918
/* 056310 800AE0C0 2463D6EC */  addiu $v1, %lo(D_800DD6EC) # addiu $v1, $v1, -0x2914
/* 056314 800AE0C4 2442D6F0 */  addiu $v0, %lo(D_800DD6F0) # addiu $v0, $v0, -0x2910
/* 056318 800AE0C8 AC400000 */  sw    $zero, ($v0)
/* 05631C 800AE0CC AC600000 */  sw    $zero, ($v1)
/* 056320 800AE0D0 AC800000 */  sw    $zero, ($a0)
/* 056324 800AE0D4 3C01800E */  lui   $at, %hi(D_800DD6E4) # $at, 0x800e
/* 056328 800AE0D8 AC20D6E4 */  sw    $zero, %lo(D_800DD6E4)($at)
/* 05632C 800AE0DC 03E00008 */  jr    $ra
/* 056330 800AE0E0 27BD0018 */   addiu $sp, $sp, 0x18
.type func_800AE048, @function

/* 056334 800AE0E4 00000000 */  nop   
/* 056338 800AE0E8 00000000 */  nop   
/* 05633C 800AE0EC 00000000 */  nop   
.type func_800AE048, @function
.size func_800AE048, . - func_800AE048
