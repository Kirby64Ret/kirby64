glabel func_80217158_ovl9
/* 1C51A8 80217158 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1C51AC 8021715C AFB20030 */  sw         $s2, 0x30($sp)
/* 1C51B0 80217160 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 1C51B4 80217164 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 1C51B8 80217168 8E4E0000 */  lw         $t6, 0x0($s2)
/* 1C51BC 8021716C AFBF003C */  sw         $ra, 0x3C($sp)
/* 1C51C0 80217170 AFB40038 */  sw         $s4, 0x38($sp)
/* 1C51C4 80217174 AFB30034 */  sw         $s3, 0x34($sp)
/* 1C51C8 80217178 AFB1002C */  sw         $s1, 0x2C($sp)
/* 1C51CC 8021717C AFB00028 */  sw         $s0, 0x28($sp)
/* 1C51D0 80217180 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 1C51D4 80217184 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 1C51D8 80217188 AFA40040 */  sw         $a0, 0x40($sp)
/* 1C51DC 8021718C 8DC30000 */  lw         $v1, 0x0($t6)
/* 1C51E0 80217190 3C11800E */  lui        $s1, %hi(D_800E1B50)
/* 1C51E4 80217194 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1C51E8 80217198 00031880 */  sll        $v1, $v1, 2
/* 1C51EC 8021719C 02238821 */  addu       $s1, $s1, $v1
/* 1C51F0 802171A0 8E311B50 */  lw         $s1, %lo(D_800E1B50)($s1)
/* 1C51F4 802171A4 00230821 */  addu       $at, $at, $v1
/* 1C51F8 802171A8 240F0004 */  addiu      $t7, $zero, 0x4
/* 1C51FC 802171AC AC2FDFD0 */  sw         $t7, %lo(D_800DDFD0)($at)
/* 1C5200 802171B0 3C18801D */  lui        $t8, %hi(D_801CCE2C)
/* 1C5204 802171B4 2718CE2C */  addiu      $t8, $t8, %lo(D_801CCE2C)
/* 1C5208 802171B8 3C018022 */  lui        $at, %hi(D_8021DE2C_ovl9)
/* 1C520C 802171BC 3C10800E */  lui        $s0, %hi(D_800E6690)
/* 1C5210 802171C0 3C13800E */  lui        $s3, %hi(D_800E64D0)
/* 1C5214 802171C4 3C14800E */  lui        $s4, %hi(D_800E6850)
/* 1C5218 802171C8 AE380098 */  sw         $t8, 0x98($s1)
/* 1C521C 802171CC 4480A000 */  mtc1       $zero, $f20
/* 1C5220 802171D0 C436DE2C */  lwc1       $f22, %lo(D_8021DE2C_ovl9)($at)
/* 1C5224 802171D4 26946850 */  addiu      $s4, $s4, %lo(D_800E6850)
/* 1C5228 802171D8 267364D0 */  addiu      $s3, $s3, %lo(D_800E64D0)
/* 1C522C 802171DC 26106690 */  addiu      $s0, $s0, %lo(D_800E6690)
/* 1C5230 802171E0 9239003C */  lbu        $t9, 0x3C($s1)
.L802171E4_ovl9:
/* 1C5234 802171E4 5720000E */  bnel       $t9, $zero, .L80217220_ovl9
/* 1C5238 802171E8 8E420000 */   lw        $v0, 0x0($s2)
/* 1C523C 802171EC 8E420000 */  lw         $v0, 0x0($s2)
/* 1C5240 802171F0 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1C5244 802171F4 8C430000 */  lw         $v1, 0x0($v0)
/* 1C5248 802171F8 00031880 */  sll        $v1, $v1, 2
/* 1C524C 802171FC 00230821 */  addu       $at, $at, $v1
/* 1C5250 80217200 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1C5254 80217204 3C018022 */  lui        $at, %hi(D_8021DE30_ovl9)
/* 1C5258 80217208 C426DE30 */  lwc1       $f6, %lo(D_8021DE30_ovl9)($at)
/* 1C525C 8021720C 02634021 */  addu       $t0, $s3, $v1
/* 1C5260 80217210 46062202 */  mul.s      $f8, $f4, $f6
/* 1C5264 80217214 10000014 */  b          .L80217268_ovl9
/* 1C5268 80217218 E5080000 */   swc1      $f8, 0x0($t0)
/* 1C526C 8021721C 8E420000 */  lw         $v0, 0x0($s2)
.L80217220_ovl9:
/* 1C5270 80217220 24040001 */  addiu      $a0, $zero, 0x1
/* 1C5274 80217224 8C490000 */  lw         $t1, 0x0($v0)
/* 1C5278 80217228 00095080 */  sll        $t2, $t1, 2
/* 1C527C 8021722C 020A5821 */  addu       $t3, $s0, $t2
/* 1C5280 80217230 E5740000 */  swc1       $f20, 0x0($t3)
/* 1C5284 80217234 8C430000 */  lw         $v1, 0x0($v0)
/* 1C5288 80217238 00031880 */  sll        $v1, $v1, 2
/* 1C528C 8021723C 02036021 */  addu       $t4, $s0, $v1
/* 1C5290 80217240 C58A0000 */  lwc1       $f10, 0x0($t4)
/* 1C5294 80217244 02636821 */  addu       $t5, $s3, $v1
/* 1C5298 80217248 E5AA0000 */  swc1       $f10, 0x0($t5)
/* 1C529C 8021724C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1C52A0 80217250 000E7880 */  sll        $t7, $t6, 2
/* 1C52A4 80217254 028FC021 */  addu       $t8, $s4, $t7
/* 1C52A8 80217258 0C002DAF */  jal        finish_current_thread
/* 1C52AC 8021725C E7160000 */   swc1      $f22, 0x0($t8)
/* 1C52B0 80217260 1000FFE0 */  b          .L802171E4_ovl9
/* 1C52B4 80217264 9239003C */   lbu       $t9, 0x3C($s1)
.L80217268_ovl9:
/* 1C52B8 80217268 8C590000 */  lw         $t9, 0x0($v0)
/* 1C52BC 8021726C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 1C52C0 80217270 44810000 */  mtc1       $at, $f0
/* 1C52C4 80217274 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1C52C8 80217278 00194080 */  sll        $t0, $t9, 2
/* 1C52CC 8021727C 00280821 */  addu       $at, $at, $t0
/* 1C52D0 80217280 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1C52D4 80217284 8C490000 */  lw         $t1, 0x0($v0)
/* 1C52D8 80217288 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1C52DC 8021728C 3C100001 */  lui        $s0, (0x10046 >> 16)
/* 1C52E0 80217290 00095080 */  sll        $t2, $t1, 2
/* 1C52E4 80217294 002A0821 */  addu       $at, $at, $t2
/* 1C52E8 80217298 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
/* 1C52EC 8021729C 8C4B0000 */  lw         $t3, 0x0($v0)
/* 1C52F0 802172A0 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 1C52F4 802172A4 44818000 */  mtc1       $at, $f16
/* 1C52F8 802172A8 3C01800E */  lui        $at, %hi(D_800E3750)
/* 1C52FC 802172AC 000B6080 */  sll        $t4, $t3, 2
/* 1C5300 802172B0 002C0821 */  addu       $at, $at, $t4
/* 1C5304 802172B4 E4303750 */  swc1       $f16, %lo(D_800E3750)($at)
/* 1C5308 802172B8 8C4D0000 */  lw         $t5, 0x0($v0)
/* 1C530C 802172BC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1C5310 802172C0 36100046 */  ori        $s0, $s0, (0x10046 & 0xFFFF)
/* 1C5314 802172C4 000D7080 */  sll        $t6, $t5, 2
/* 1C5318 802172C8 002E0821 */  addu       $at, $at, $t6
/* 1C531C 802172CC E4203C90 */  swc1       $f0, %lo(D_800E3C90)($at)
.L802172D0_ovl9:
/* 1C5320 802172D0 0C02A855 */  jal        func_800AA154
/* 1C5324 802172D4 02002025 */   or        $a0, $s0, $zero
/* 1C5328 802172D8 0C002DAF */  jal        finish_current_thread
/* 1C532C 802172DC 24040001 */   addiu     $a0, $zero, 0x1
/* 1C5330 802172E0 1000FFFB */  b          .L802172D0_ovl9
/* 1C5334 802172E4 00000000 */   nop
/* 1C5338 802172E8 00000000 */  nop
/* 1C533C 802172EC 00000000 */  nop
/* 1C5340 802172F0 00000000 */  nop
/* 1C5344 802172F4 00000000 */  nop
/* 1C5348 802172F8 00000000 */  nop
/* 1C534C 802172FC 00000000 */  nop
/* 1C5350 80217300 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1C5354 80217304 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 1C5358 80217308 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 1C535C 8021730C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1C5360 80217310 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1C5364 80217314 8FB20030 */  lw         $s2, 0x30($sp)
/* 1C5368 80217318 8FB30034 */  lw         $s3, 0x34($sp)
/* 1C536C 8021731C 8FB40038 */  lw         $s4, 0x38($sp)
/* 1C5370 80217320 03E00008 */  jr         $ra
/* 1C5374 80217324 27BD0040 */   addiu     $sp, $sp, 0x40
