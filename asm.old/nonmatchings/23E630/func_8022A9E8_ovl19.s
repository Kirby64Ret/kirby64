glabel func_8022A9E8_ovl19
/* 24B0F8 8022A9E8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 24B0FC 8022A9EC 3C0F8023 */  lui        $t7, %hi(D_8022F67C_ovl19)
/* 24B100 8022A9F0 AFBF0014 */  sw         $ra, 0x14($sp)
glabel D_8022A9F4_ovl18
/* 24B104 8022A9F4 AFA40030 */  sw         $a0, 0x30($sp)
/* 24B108 8022A9F8 25EFF67C */  addiu      $t7, $t7, %lo(D_8022F67C_ovl19)
/* 24B10C 8022A9FC 8DF90000 */  lw         $t9, 0x0($t7)
/* 24B110 8022AA00 27AE0028 */  addiu      $t6, $sp, 0x28
/* 24B114 8022AA04 ADD90000 */  sw         $t9, 0x0($t6)
/* 24B118 8022AA08 95F90004 */  lhu        $t9, 0x4($t7)
/* 24B11C 8022AA0C 0C054E61 */  jal        func_80153984_ovl3
/* 24B120 8022AA10 A5D90004 */   sh        $t9, 0x4($t6)
/* 24B124 8022AA14 0C0547A5 */  jal        ovl3_process_command_string
glabel D_8022AA18_ovl18
/* 24B128 8022AA18 27A40028 */   addiu     $a0, $sp, 0x28
/* 24B12C 8022AA1C 1440008D */  bnez       $v0, .L8022AC54_ovl19
/* 24B130 8022AA20 3C08800D */   lui       $t0, %hi(gKirbyController + 0x2)
/* 24B134 8022AA24 95086FEA */  lhu        $t0, %lo(gKirbyController + 0x2)($t0)
/* 24B138 8022AA28 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24B13C 8022AA2C 3C0F800F */  lui        $t7, %hi(D_800E8920)
/* 24B140 8022AA30 31098000 */  andi       $t1, $t0, 0x8000
/* 24B144 8022AA34 1120000C */  beqz       $t1, .L8022AA68_ovl19
/* 24B148 8022AA38 3C06800E */   lui       $a2, %hi(D_800E3750)
glabel D_8022AA3C_ovl18
/* 24B14C 8022AA3C 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24B150 8022AA40 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24B154 8022AA44 3C01800F */  lui        $at, %hi(D_800E9560)
/* 24B158 8022AA48 240A0002 */  addiu      $t2, $zero, 0x2
/* 24B15C 8022AA4C 8C6B0000 */  lw         $t3, 0x0($v1)
/* 24B160 8022AA50 000B6080 */  sll        $t4, $t3, 2
/* 24B164 8022AA54 002C0821 */  addu       $at, $at, $t4
/* 24B168 8022AA58 AC2A9560 */  sw         $t2, %lo(D_800E9560)($at)
/* 24B16C 8022AA5C 8C620000 */  lw         $v0, 0x0($v1)
glabel D_8022AA60_ovl18
/* 24B170 8022AA60 1000000D */  b          .L8022AA98_ovl19
/* 24B174 8022AA64 00021080 */   sll       $v0, $v0, 2
.L8022AA68_ovl19:
/* 24B178 8022AA68 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 24B17C 8022AA6C 3C0D800F */  lui        $t5, %hi(D_800E9560)
/* 24B180 8022AA70 25AD9560 */  addiu      $t5, $t5, %lo(D_800E9560)
/* 24B184 8022AA74 8C620000 */  lw         $v0, 0x0($v1)
/* 24B188 8022AA78 00021080 */  sll        $v0, $v0, 2
/* 24B18C 8022AA7C 004D2021 */  addu       $a0, $v0, $t5
/* 24B190 8022AA80 8C850000 */  lw         $a1, 0x0($a0)
glabel D_8022AA84_ovl18
/* 24B194 8022AA84 10A00004 */  beqz       $a1, .L8022AA98_ovl19
/* 24B198 8022AA88 24AEFFFF */   addiu     $t6, $a1, -0x1
/* 24B19C 8022AA8C AC8E0000 */  sw         $t6, 0x0($a0)
/* 24B1A0 8022AA90 8C620000 */  lw         $v0, 0x0($v1)
/* 24B1A4 8022AA94 00021080 */  sll        $v0, $v0, 2
.L8022AA98_ovl19:
/* 24B1A8 8022AA98 01E27821 */  addu       $t7, $t7, $v0
/* 24B1AC 8022AA9C 8DEF8920 */  lw         $t7, %lo(D_800E8920)($t7)
/* 24B1B0 8022AAA0 3C0D800F */  lui        $t5, %hi(D_800E83E0)
/* 24B1B4 8022AAA4 01A26821 */  addu       $t5, $t5, $v0
glabel D_8022AAA8_ovl18
/* 24B1B8 8022AAA8 11E0004A */  beqz       $t7, .L8022ABD4_ovl19
/* 24B1BC 8022AAAC 00000000 */   nop
/* 24B1C0 8022AAB0 44802000 */  mtc1       $zero, $f4
/* 24B1C4 8022AAB4 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 24B1C8 8022AAB8 00C2C021 */  addu       $t8, $a2, $v0
/* 24B1CC 8022AABC E7040000 */  swc1       $f4, 0x0($t8)
/* 24B1D0 8022AAC0 8C620000 */  lw         $v0, 0x0($v1)
/* 24B1D4 8022AAC4 3C01800E */  lui        $at, %hi(D_800E3210)
/* 24B1D8 8022AAC8 2404004C */  addiu      $a0, $zero, 0x4C
glabel D_8022AACC_ovl18
/* 24B1DC 8022AACC 00021080 */  sll        $v0, $v0, 2
/* 24B1E0 8022AAD0 00C2C821 */  addu       $t9, $a2, $v0
/* 24B1E4 8022AAD4 C7260000 */  lwc1       $f6, 0x0($t9)
/* 24B1E8 8022AAD8 00220821 */  addu       $at, $at, $v0
/* 24B1EC 8022AADC E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 24B1F0 8022AAE0 8C680000 */  lw         $t0, 0x0($v1)
/* 24B1F4 8022AAE4 3C018023 */  lui        $at, %hi(D_8022F9A4_ovl19)
/* 24B1F8 8022AAE8 C428F9A4 */  lwc1       $f8, %lo(D_8022F9A4_ovl19)($at)
/* 24B1FC 8022AAEC 3C01800E */  lui        $at, %hi(D_800E3C90)
glabel D_8022AAF0_ovl18
/* 24B200 8022AAF0 00084880 */  sll        $t1, $t0, 2
/* 24B204 8022AAF4 00290821 */  addu       $at, $at, $t1
/* 24B208 8022AAF8 0C029D9E */  jal        play_sound
/* 24B20C 8022AAFC E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
/* 24B210 8022AB00 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
/* 24B214 8022AB04 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* 24B218 8022AB08 3C0A800F */  lui        $t2, %hi(D_800E9560)
/* 24B21C 8022AB0C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 24B220 8022AB10 8D620000 */  lw         $v0, 0x0($t3)
glabel D_8022AB14_ovl18
/* 24B224 8022AB14 00021080 */  sll        $v0, $v0, 2
/* 24B228 8022AB18 01425021 */  addu       $t2, $t2, $v0
/* 24B22C 8022AB1C 8D4A9560 */  lw         $t2, %lo(D_800E9560)($t2)
/* 24B230 8022AB20 00220821 */  addu       $at, $at, $v0
/* 24B234 8022AB24 15400024 */  bnez       $t2, .L8022ABB8_ovl19
/* 24B238 8022AB28 00000000 */   nop
/* 24B23C 8022AB2C 44805000 */  mtc1       $zero, $f10
/* 24B240 8022AB30 C43064D0 */  lwc1       $f16, %lo(D_800E64D0)($at)
/* 24B244 8022AB34 3C028013 */  lui        $v0, %hi(gKirbyState)
glabel D_8022AB38_ovl18
/* 24B248 8022AB38 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 24B24C 8022AB3C 46105032 */  c.eq.s     $f10, $f16
/* 24B250 8022AB40 24040007 */  addiu      $a0, $zero, 0x7
/* 24B254 8022AB44 24050007 */  addiu      $a1, $zero, 0x7
/* 24B258 8022AB48 45020008 */  bc1fl      .L8022AB6C_ovl19
/* 24B25C 8022AB4C 904C0007 */   lbu       $t4, 0x7($v0)
/* 24B260 8022AB50 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 24B264 8022AB54 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 24B268 8022AB58 0C048BDB */  jal        set_kirby_action_1
glabel D_8022AB5C_ovl18
/* 24B26C 8022AB5C A0400007 */   sb        $zero, 0x7($v0)
/* 24B270 8022AB60 1000003F */  b          .L8022AC60_ovl19
/* 24B274 8022AB64 00000000 */   nop
/* 24B278 8022AB68 904C0007 */  lbu        $t4, 0x7($v0)
.L8022AB6C_ovl19:
/* 24B27C 8022AB6C AC400044 */  sw         $zero, 0x44($v0)
/* 24B280 8022AB70 24040002 */  addiu      $a0, $zero, 0x2
/* 24B284 8022AB74 55800009 */  bnel       $t4, $zero, .L8022AB9C_ovl19
/* 24B288 8022AB78 44800000 */   mtc1      $zero, $f0
/* 24B28C 8022AB7C 0C048AD0 */  jal        func_80122B40
glabel D_8022AB80_ovl18
/* 24B290 8022AB80 00000000 */   nop
glabel D_8022AB84_ovl18
/* 24B294 8022AB84 24040001 */  addiu      $a0, $zero, 0x1
/* 24B298 8022AB88 0C048BDB */  jal        set_kirby_action_1
glabel D_8022AB8C_ovl18
/* 24B29C 8022AB8C 24050003 */   addiu     $a1, $zero, 0x3
/* 24B2A0 8022AB90 10000005 */  b          .L8022ABA8_ovl19
glabel D_8022AB94_ovl18
/* 24B2A4 8022AB94 00000000 */   nop
glabel D_8022AB98_ovl18
/* 24B2A8 8022AB98 44800000 */  mtc1       $zero, $f0
.L8022AB9C_ovl19:
/* 24B2AC 8022AB9C 24050004 */  addiu      $a1, $zero, 0x4
glabel D_8022ABA0_ovl18
/* 24B2B0 8022ABA0 0C048BDB */  jal        set_kirby_action_1
glabel D_8022ABA4_ovl18
/* 24B2B4 8022ABA4 E4400038 */   swc1      $f0, 0x38($v0)
.L8022ABA8_ovl19:
/* 24B2B8 8022ABA8 0C048BEC */  jal        func_80122FB0
glabel D_8022ABAC_ovl18
/* 24B2BC 8022ABAC 24040001 */   addiu     $a0, $zero, 0x1
glabel D_8022ABB0_ovl18
/* 24B2C0 8022ABB0 1000002B */  b          .L8022AC60_ovl19
/* 24B2C4 8022ABB4 00000000 */   nop
.L8022ABB8_ovl19:
/* 24B2C8 8022ABB8 0C048AD0 */  jal        func_80122B40
/* 24B2CC 8022ABBC 00000000 */   nop
glabel D_8022ABC0_ovl18
/* 24B2D0 8022ABC0 24040003 */  addiu      $a0, $zero, 0x3
/* 24B2D4 8022ABC4 0C048BDB */  jal        set_kirby_action_1
/* 24B2D8 8022ABC8 24050005 */   addiu     $a1, $zero, 0x5
/* 24B2DC 8022ABCC 10000024 */  b          .L8022AC60_ovl19
glabel D_8022ABD0_ovl18
/* 24B2E0 8022ABD0 00000000 */   nop
.L8022ABD4_ovl19:
/* 24B2E4 8022ABD4 8DAD83E0 */  lw         $t5, %lo(D_800E83E0)($t5)
glabel D_8022ABD8_ovl18
/* 24B2E8 8022ABD8 3C028013 */  lui        $v0, %hi(gKirbyState)
glabel D_8022ABDC_ovl18
/* 24B2EC 8022ABDC 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
glabel D_8022ABE0_ovl18
/* 24B2F0 8022ABE0 11A0001F */  beqz       $t5, .L8022AC60_ovl19
glabel D_8022ABE4_ovl18
/* 24B2F4 8022ABE4 3C06800E */   lui       $a2, %hi(D_800E3750)
glabel D_8022ABE8_ovl18
/* 24B2F8 8022ABE8 3C0E8000 */  lui        $t6, (0x80000000 >> 16)
glabel D_8022ABEC_ovl18
/* 24B2FC 8022ABEC 3C01800F */  lui        $at, %hi(D_800EC2E0)
/* 24B300 8022ABF0 AC2EC2E0 */  sw         $t6, %lo(D_800EC2E0)($at)
/* 24B304 8022ABF4 A0400007 */  sb         $zero, 0x7($v0)
/* 24B308 8022ABF8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 24B30C 8022ABFC 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 24B310 8022AC00 44819000 */  mtc1       $at, $f18
/* 24B314 8022AC04 3C01800E */  lui        $at, %hi(D_800E3210)
glabel D_8022AC08_ovl18
/* 24B318 8022AC08 000FC080 */  sll        $t8, $t7, 2
/* 24B31C 8022AC0C 00380821 */  addu       $at, $at, $t8
/* 24B320 8022AC10 E4323210 */  swc1       $f18, %lo(D_800E3210)($at)
/* 24B324 8022AC14 8C790000 */  lw         $t9, 0x0($v1)
/* 24B328 8022AC18 44800000 */  mtc1       $zero, $f0
/* 24B32C 8022AC1C 24C63750 */  addiu      $a2, $a2, %lo(D_800E3750)
/* 24B330 8022AC20 00194080 */  sll        $t0, $t9, 2
glabel D_8022AC24_ovl18
/* 24B334 8022AC24 00C84821 */  addu       $t1, $a2, $t0
glabel D_8022AC28_ovl18
/* 24B338 8022AC28 E5200000 */  swc1       $f0, 0x0($t1)
glabel D_8022AC2C_ovl18
/* 24B33C 8022AC2C 8C6B0000 */  lw         $t3, 0x0($v1)
glabel D_8022AC30_ovl18
/* 24B340 8022AC30 3C01800E */  lui        $at, %hi(D_800E3C90)
glabel D_8022AC34_ovl18
/* 24B344 8022AC34 24040005 */  addiu      $a0, $zero, 0x5
/* 24B348 8022AC38 000B5080 */  sll        $t2, $t3, 2
/* 24B34C 8022AC3C 002A0821 */  addu       $at, $at, $t2
/* 24B350 8022AC40 24050005 */  addiu      $a1, $zero, 0x5
/* 24B354 8022AC44 0C048BDB */  jal        set_kirby_action_1
glabel D_8022AC48_ovl18
/* 24B358 8022AC48 E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
/* 24B35C 8022AC4C 10000004 */  b          .L8022AC60_ovl19
/* 24B360 8022AC50 00000000 */   nop
.L8022AC54_ovl19:
/* 24B364 8022AC54 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 24B368 8022AC58 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
glabel D_8022AC5C_ovl18
/* 24B36C 8022AC5C A0400007 */  sb         $zero, 0x7($v0)
.L8022AC60_ovl19:
/* 24B370 8022AC60 0C047B5A */  jal        func_8011ED68
/* 24B374 8022AC64 00000000 */   nop
/* 24B378 8022AC68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 24B37C 8022AC6C 27BD0030 */  addiu      $sp, $sp, 0x30
glabel D_8022AC70_ovl18
/* 24B380 8022AC70 03E00008 */  jr         $ra
glabel D_8022AC74_ovl18
/* 24B384 8022AC74 00000000 */   nop
