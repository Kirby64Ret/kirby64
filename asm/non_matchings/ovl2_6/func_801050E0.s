glabel func_801050E0
/* 08DB50 801050E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08DB54 801050E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08DB58 801050E8 C4840004 */  lwc1  $f4, 4($a0)
/* 08DB5C 801050EC C4800008 */  lwc1  $f0, 8($a0)
/* 08DB60 801050F0 C4860010 */  lwc1  $f6, 0x10($a0)
/* 08DB64 801050F4 E4840028 */  swc1  $f4, 0x28($a0)
/* 08DB68 801050F8 C4900014 */  lwc1  $f16, 0x14($a0)
/* 08DB6C 801050FC C4840018 */  lwc1  $f4, 0x18($a0)
/* 08DB70 80105100 46060200 */  add.s $f8, $f0, $f6
/* 08DB74 80105104 C48A000C */  lwc1  $f10, 0xc($a0)
/* 08DB78 80105108 46100480 */  add.s $f18, $f0, $f16
/* 08DB7C 8010510C E488002C */  swc1  $f8, 0x2c($a0)
/* 08DB80 80105110 E48A0030 */  swc1  $f10, 0x30($a0)
/* 08DB84 80105114 46040180 */  add.s $f6, $f0, $f4
/* 08DB88 80105118 E4920044 */  swc1  $f18, 0x44($a0)
/* 08DB8C 8010511C E4860048 */  swc1  $f6, 0x48($a0)
/* 08DB90 80105120 0C0413EE */  jal   func_80104FB8
/* 08DB94 80105124 AFA40018 */   sw    $a0, 0x18($sp)
/* 08DB98 80105128 8FA40018 */  lw    $a0, 0x18($sp)
/* 08DB9C 8010512C 3C038013 */  lui   $v1, %hi(D_8012BD00) # $v1, 0x8013
/* 08DBA0 80105130 2463BD00 */  addiu $v1, %lo(D_8012BD00) # addiu $v1, $v1, -0x4300
/* 08DBA4 80105134 24820028 */  addiu $v0, $a0, 0x28
/* 08DBA8 80105138 C4400000 */  lwc1  $f0, ($v0)
/* 08DBAC 8010513C C4680004 */  lwc1  $f8, 4($v1)
/* 08DBB0 80105140 C4420008 */  lwc1  $f2, 8($v0)
/* 08DBB4 80105144 46080280 */  add.s $f10, $f0, $f8
/* 08DBB8 80105148 E44A000C */  swc1  $f10, 0xc($v0)
/* 08DBBC 8010514C C4700008 */  lwc1  $f16, 8($v1)
/* 08DBC0 80105150 46101480 */  add.s $f18, $f2, $f16
/* 08DBC4 80105154 E4520010 */  swc1  $f18, 0x10($v0)
/* 08DBC8 80105158 C464000C */  lwc1  $f4, 0xc($v1)
/* 08DBCC 8010515C 46040180 */  add.s $f6, $f0, $f4
/* 08DBD0 80105160 E4460014 */  swc1  $f6, 0x14($v0)
/* 08DBD4 80105164 C4680010 */  lwc1  $f8, 0x10($v1)
/* 08DBD8 80105168 46081280 */  add.s $f10, $f2, $f8
/* 08DBDC 8010516C E44A0018 */  swc1  $f10, 0x18($v0)
/* 08DBE0 80105170 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08DBE4 80105174 27BD0018 */  addiu $sp, $sp, 0x18
/* 08DBE8 80105178 03E00008 */  jr    $ra
/* 08DBEC 8010517C 00000000 */   nop   
.type func_801050E0, @function
.size func_801050E0, . - func_801050E0
