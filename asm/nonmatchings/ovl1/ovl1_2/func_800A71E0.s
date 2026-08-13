nonmatching func_800A71E0, 0xCC

glabel func_800A71E0
    /* 4F430 800A71E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 4F434 800A71E4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 4F438 800A71E8 3C04800D */  lui        $a0, %hi(D_800D79BC)
    /* 4F43C 800A71EC 3C058010 */  lui        $a1, %hi(func_800FC804)
    /* 4F440 800A71F0 24A5C804 */  addiu      $a1, $a1, %lo(func_800FC804)
    /* 4F444 800A71F4 8C8479BC */  lw         $a0, %lo(D_800D79BC)($a0)
    /* 4F448 800A71F8 24060001 */  addiu      $a2, $zero, 0x1
    /* 4F44C 800A71FC 0C002286 */  jal        omCreateProcess
    /* 4F450 800A7200 00003825 */   or        $a3, $zero, $zero
    /* 4F454 800A7204 3C02800D */  lui        $v0, %hi(D_800D79BC)
    /* 4F458 800A7208 8C4279BC */  lw         $v0, %lo(D_800D79BC)($v0)
    /* 4F45C 800A720C 3C04800D */  lui        $a0, %hi(D_800D7B20)
    /* 4F460 800A7210 24847B20 */  addiu      $a0, $a0, %lo(D_800D7B20)
    /* 4F464 800A7214 8C43003C */  lw         $v1, 0x3C($v0)
    /* 4F468 800A7218 3C18800D */  lui        $t8, %hi(D_800D7B2C)
    /* 4F46C 800A721C 27187B2C */  addiu      $t8, $t8, %lo(D_800D7B2C)
    /* 4F470 800A7220 8C6F0048 */  lw         $t7, 0x48($v1)
    /* 4F474 800A7224 3C09800D */  lui        $t1, %hi(D_800D7B38)
    /* 4F478 800A7228 25297B38 */  addiu      $t1, $t1, %lo(D_800D7B38)
    /* 4F47C 800A722C AC8F0000 */  sw         $t7, 0x0($a0)
    /* 4F480 800A7230 8C6E004C */  lw         $t6, 0x4C($v1)
    /* 4F484 800A7234 3C010200 */  lui        $at, (0x2000000 >> 16)
    /* 4F488 800A7238 24630038 */  addiu      $v1, $v1, 0x38
    /* 4F48C 800A723C AC8E0004 */  sw         $t6, 0x4($a0)
    /* 4F490 800A7240 8C6F0018 */  lw         $t7, 0x18($v1)
    /* 4F494 800A7244 AC8F0008 */  sw         $t7, 0x8($a0)
    /* 4F498 800A7248 8C680004 */  lw         $t0, 0x4($v1)
    /* 4F49C 800A724C AF080000 */  sw         $t0, 0x0($t8)
    /* 4F4A0 800A7250 8C790008 */  lw         $t9, 0x8($v1)
    /* 4F4A4 800A7254 AF190004 */  sw         $t9, 0x4($t8)
    /* 4F4A8 800A7258 8C68000C */  lw         $t0, 0xC($v1)
    /* 4F4AC 800A725C AF080008 */  sw         $t0, 0x8($t8)
    /* 4F4B0 800A7260 8C8B0000 */  lw         $t3, 0x0($a0)
    /* 4F4B4 800A7264 AD2B0000 */  sw         $t3, 0x0($t1)
    /* 4F4B8 800A7268 8C8A0004 */  lw         $t2, 0x4($a0)
    /* 4F4BC 800A726C AD2A0004 */  sw         $t2, 0x4($t1)
    /* 4F4C0 800A7270 8C8B0008 */  lw         $t3, 0x8($a0)
    /* 4F4C4 800A7274 AD2B0008 */  sw         $t3, 0x8($t1)
    /* 4F4C8 800A7278 8C8A000C */  lw         $t2, 0xC($a0)
    /* 4F4CC 800A727C AD2A000C */  sw         $t2, 0xC($t1)
    /* 4F4D0 800A7280 8C8B0010 */  lw         $t3, 0x10($a0)
    /* 4F4D4 800A7284 AD2B0010 */  sw         $t3, 0x10($t1)
    /* 4F4D8 800A7288 8C8A0014 */  lw         $t2, 0x14($a0)
    /* 4F4DC 800A728C AD2A0014 */  sw         $t2, 0x14($t1)
    /* 4F4E0 800A7290 8C4C0030 */  lw         $t4, 0x30($v0)
    /* 4F4E4 800A7294 01816825 */  or         $t5, $t4, $at
    /* 4F4E8 800A7298 AC4D0030 */  sw         $t5, 0x30($v0)
    /* 4F4EC 800A729C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 4F4F0 800A72A0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 4F4F4 800A72A4 03E00008 */  jr         $ra
    /* 4F4F8 800A72A8 00000000 */   nop
endlabel func_800A71E0
.size func_800A71E0, . - func_800A71E0
