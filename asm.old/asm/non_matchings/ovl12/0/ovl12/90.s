glabel func_801DF394_ovl12 # 90
/* 004194 801DF394 3C0E8005 */  lui         $t6, %hi(D_8004A7C4)
/* 004198 801DF398 8DCEA7C4 */  lw          $t6, %lo(D_8004A7C4)($t6)
/* 00419C 801DF39C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 0041A0 801DF3A0 AFBF0014 */  sw          $ra, 0x14($sp)
/* 0041A4 801DF3A4 8DC20000 */  lw          $v0, 0x0($t6)
/* 0041A8 801DF3A8 3C01800F */  lui         $at, %hi(D_800EB160)
/* 0041AC 801DF3AC 3C03800D */  lui         $v1, %hi(D_800D70D8)
/* 0041B0 801DF3B0 00021080 */  sll         $v0, $v0, 2
/* 0041B4 801DF3B4 00220821 */  addu        $at, $at, $v0
/* 0041B8 801DF3B8 C424B160 */  lwc1        $f4, %lo(D_800EB160)($at)
/* 0041BC 801DF3BC 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 0041C0 801DF3C0 00220821 */  addu        $at, $at, $v0
/* 0041C4 801DF3C4 C4267B20 */  lwc1        $f6, %lo(D_800E7B20)($at)
/* 0041C8 801DF3C8 246370D8 */  addiu       $v1, $v1, %lo(D_800D70D8)
/* 0041CC 801DF3CC C4680004 */  lwc1        $f8, 0x4($v1)
/* 0041D0 801DF3D0 46062001 */  sub.s       $f0, $f4, $f6
/* 0041D4 801DF3D4 46004281 */  sub.s       $f10, $f8, $f0
/* 0041D8 801DF3D8 0C077CFC */  jal         func_801DF3F0_ovl12
/* 0041DC 801DF3DC E46A0004 */   swc1       $f10, 0x4($v1)
/* 0041E0 801DF3E0 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0041E4 801DF3E4 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0041E8 801DF3E8 03E00008 */  jr          $ra
/* 0041EC 801DF3EC 00000000 */   nop
.type func_801DF394_ovl12, @function
.size func_801DF394_ovl12, . - func_801DF394_ovl12
