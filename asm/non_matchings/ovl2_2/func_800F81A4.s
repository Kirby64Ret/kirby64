glabel func_800F81A4
/* 080C14 800F81A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 080C18 800F81A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 080C1C 800F81AC 24040024 */  li    $a0, 36
/* 080C20 800F81B0 2405004A */  li    $a1, 74
/* 080C24 800F81B4 0C02BB02 */  jal   request_track_general
/* 080C28 800F81B8 24060050 */   li    $a2, 80
/* 080C2C 800F81BC 3C0E8013 */  lui   $t6, %hi(D_801290D8) # $t6, 0x8013
/* 080C30 800F81C0 8DCE90D8 */  lw    $t6, %lo(D_801290D8)($t6)
/* 080C34 800F81C4 3C018013 */  lui   $at, %hi(D_801290D0) # $at, 0x8013
/* 080C38 800F81C8 AC2290D0 */  sw    $v0, %lo(D_801290D0)($at)
/* 080C3C 800F81CC 8DCF0004 */  lw    $t7, 4($t6)
/* 080C40 800F81D0 24040025 */  li    $a0, 37
/* 080C44 800F81D4 2405004A */  li    $a1, 74
/* 080C48 800F81D8 11E00005 */  beqz  $t7, .L800F81F0_ovl2
/* 080C4C 800F81DC 00000000 */   nop   
/* 080C50 800F81E0 0C02BB02 */  jal   request_track_general
/* 080C54 800F81E4 24060050 */   li    $a2, 80
/* 080C58 800F81E8 3C018013 */  lui   $at, %hi(D_801290D4) # $at, 0x8013
/* 080C5C 800F81EC AC2290D4 */  sw    $v0, %lo(D_801290D4)($at)
.L800F81F0_ovl2:
/* 080C60 800F81F0 3C188013 */  lui   $t8, %hi(D_8012B9B0) # $t8, 0x8013
/* 080C64 800F81F4 8F18B9B0 */  lw    $t8, %lo(D_8012B9B0)($t8)
/* 080C68 800F81F8 13000003 */  beqz  $t8, .L800F8208_ovl2
/* 080C6C 800F81FC 00000000 */   nop   
/* 080C70 800F8200 0C0404DF */  jal   func_8010137C
/* 080C74 800F8204 00000000 */   nop   
.L800F8208_ovl2:
/* 080C78 800F8208 0C03E905 */  jal   func_800FA414
/* 080C7C 800F820C 24040002 */   li    $a0, 2
/* 080C80 800F8210 3C028013 */  lui   $v0, %hi(D_8012913C) # $v0, 0x8013
/* 080C84 800F8214 2442913C */  addiu $v0, %lo(D_8012913C) # addiu $v0, $v0, -0x6ec4
/* 080C88 800F8218 AC400000 */  sw    $zero, ($v0)
/* 080C8C 800F821C 3C018013 */  lui   $at, %hi(D_80129138) # $at, 0x8013
/* 080C90 800F8220 AC209138 */  sw    $zero, %lo(D_80129138)($at)
/* 080C94 800F8224 3C018013 */  lui   $at, %hi(D_80129140) # $at, 0x8013
/* 080C98 800F8228 AC209140 */  sw    $zero, %lo(D_80129140)($at)
/* 080C9C 800F822C 3C018013 */  lui   $at, %hi(D_80129144) # $at, 0x8013
/* 080CA0 800F8230 2408FFFF */  li    $t0, -1
/* 080CA4 800F8234 AC289144 */  sw    $t0, %lo(D_80129144)($at)
/* 080CA8 800F8238 3C018013 */  lui   $at, %hi(D_801292E0) # $at, 0x8013
/* 080CAC 800F823C 2409270F */  li    $t1, 9999
/* 080CB0 800F8240 0C03E158 */  jal   func_800F8560
/* 080CB4 800F8244 AC2992E0 */   sw    $t1, %lo(D_801292E0)($at)
/* 080CB8 800F8248 24010009 */  li    $at, 9
/* 080CBC 800F824C 54410006 */  bnel  $v0, $at, .L800F8268_ovl2
/* 080CC0 800F8250 8FBF0014 */   lw    $ra, 0x14($sp)
/* 080CC4 800F8254 0C03E905 */  jal   func_800FA414
/* 080CC8 800F8258 2404000C */   li    $a0, 12
/* 080CCC 800F825C 0C03EFC6 */  jal   func_800FBF18
/* 080CD0 800F8260 00002025 */   move  $a0, $zero
/* 080CD4 800F8264 8FBF0014 */  lw    $ra, 0x14($sp)
.L800F8268_ovl2:
/* 080CD8 800F8268 27BD0018 */  addiu $sp, $sp, 0x18
/* 080CDC 800F826C 03E00008 */  jr    $ra
/* 080CE0 800F8270 00000000 */   nop   
