glabel func_80221928_ovl19
/* 242038 80221928 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 24203C 8022192C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 242040 80221930 27BDFFE8 */  addiu      $sp, $sp, -0x18
glabel func_80221934_ovl18
/* 242044 80221934 AFBF0014 */  sw         $ra, 0x14($sp)
/* 242048 80221938 AFA40018 */  sw         $a0, 0x18($sp)
/* 24204C 8022193C 8C620000 */  lw         $v0, 0x0($v1)
/* 242050 80221940 3C06800F */  lui        $a2, %hi(D_800E9E20)
/* 242054 80221944 24C69E20 */  addiu      $a2, $a2, %lo(D_800E9E20)
/* 242058 80221948 00021080 */  sll        $v0, $v0, 2
/* 24205C 8022194C 00C27021 */  addu       $t6, $a2, $v0
/* 242060 80221950 8DC40000 */  lw         $a0, 0x0($t6)
/* 242064 80221954 24010001 */  addiu      $at, $zero, 0x1
/* 242068 80221958 10800005 */  beqz       $a0, .L80221970_ovl19
/* 24206C 8022195C 00000000 */   nop
/* 242070 80221960 10810007 */  beq        $a0, $at, .L80221980_ovl19
/* 242074 80221964 3C07800E */   lui       $a3, %hi(D_800E4C50)
/* 242078 80221968 1000003F */  b          .L80221A68_ovl19
/* 24207C 8022196C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80221970_ovl19:
/* 242080 80221970 0C08869D */  jal        func_80221A74_ovl19
/* 242084 80221974 00000000 */   nop
/* 242088 80221978 1000003B */  b          .L80221A68_ovl19
/* 24208C 8022197C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80221980_ovl19:
/* 242090 80221980 24E74C50 */  addiu      $a3, $a3, %lo(D_800E4C50)
/* 242094 80221984 00E22021 */  addu       $a0, $a3, $v0
/* 242098 80221988 44801000 */  mtc1       $zero, $f2
/* 24209C 8022198C C4800000 */  lwc1       $f0, 0x0($a0)
/* 2420A0 80221990 3C05800E */  lui        $a1, %hi(gEntitiesAngleYArray)
/* 2420A4 80221994 24A541D0 */  addiu      $a1, $a1, %lo(gEntitiesAngleYArray)
/* 2420A8 80221998 4600103E */  c.le.s     $f2, $f0
/* 2420AC 8022199C 00A27821 */  addu       $t7, $a1, $v0
/* 2420B0 802219A0 3C018023 */  lui        $at, %hi(D_8022F784_ovl19)
/* 2420B4 802219A4 45020018 */  bc1fl      .L80221A08_ovl19
/* 2420B8 802219A8 4602003C */   c.lt.s    $f0, $f2
/* 2420BC 802219AC C5E40000 */  lwc1       $f4, 0x0($t7)
/* 2420C0 802219B0 C426F784 */  lwc1       $f6, %lo(D_8022F784_ovl19)($at)
/* 2420C4 802219B4 4604303E */  c.le.s     $f6, $f4
/* 2420C8 802219B8 00000000 */  nop
/* 2420CC 802219BC 45020012 */  bc1fl      .L80221A08_ovl19
/* 2420D0 802219C0 4602003C */   c.lt.s    $f0, $f2
/* 2420D4 802219C4 E4820000 */  swc1       $f2, 0x0($a0)
/* 2420D8 802219C8 8C620000 */  lw         $v0, 0x0($v1)
.L802219CC_ovl18:
/* 2420DC 802219CC 24080002 */  addiu      $t0, $zero, 0x2
/* 2420E0 802219D0 00021080 */  sll        $v0, $v0, 2
/* 2420E4 802219D4 00E2C021 */  addu       $t8, $a3, $v0
.L802219D8_ovl18:
/* 2420E8 802219D8 C7080000 */  lwc1       $f8, 0x0($t8)
/* 2420EC 802219DC 00A2C821 */  addu       $t9, $a1, $v0
/* 2420F0 802219E0 E7280000 */  swc1       $f8, 0x0($t9)
/* 2420F4 802219E4 8C690000 */  lw         $t1, 0x0($v1)
/* 2420F8 802219E8 00095080 */  sll        $t2, $t1, 2
/* 2420FC 802219EC 00CA5821 */  addu       $t3, $a2, $t2
/* 242100 802219F0 AD680000 */  sw         $t0, 0x0($t3)
/* 242104 802219F4 8C620000 */  lw         $v0, 0x0($v1)
/* 242108 802219F8 00021080 */  sll        $v0, $v0, 2
/* 24210C 802219FC 00E22021 */  addu       $a0, $a3, $v0
/* 242110 80221A00 C4800000 */  lwc1       $f0, 0x0($a0)
glabel func_80221A04_ovl18
/* 242114 80221A04 4602003C */  c.lt.s     $f0, $f2
.L80221A08_ovl19:
/* 242118 80221A08 3C05800E */  lui        $a1, %hi(gEntitiesAngleYArray)
/* 24211C 80221A0C 24A541D0 */  addiu      $a1, $a1, %lo(gEntitiesAngleYArray)
/* 242120 80221A10 00A26021 */  addu       $t4, $a1, $v0
/* 242124 80221A14 45000013 */  bc1f       .L80221A64_ovl19
/* 242128 80221A18 3C018023 */   lui       $at, %hi(D_8022F788_ovl19)
/* 24212C 80221A1C C42AF788 */  lwc1       $f10, %lo(D_8022F788_ovl19)($at)
/* 242130 80221A20 C5900000 */  lwc1       $f16, 0x0($t4)
/* 242134 80221A24 460A803E */  c.le.s     $f16, $f10
/* 242138 80221A28 00000000 */  nop
/* 24213C 80221A2C 4502000E */  bc1fl      .L80221A68_ovl19
/* 242140 80221A30 8FBF0014 */   lw        $ra, 0x14($sp)
/* 242144 80221A34 E4820000 */  swc1       $f2, 0x0($a0)
/* 242148 80221A38 8C620000 */  lw         $v0, 0x0($v1)
/* 24214C 80221A3C 240F0002 */  addiu      $t7, $zero, 0x2
/* 242150 80221A40 00021080 */  sll        $v0, $v0, 2
/* 242154 80221A44 00E26821 */  addu       $t5, $a3, $v0
/* 242158 80221A48 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 24215C 80221A4C 00A27021 */  addu       $t6, $a1, $v0
/* 242160 80221A50 E5D20000 */  swc1       $f18, 0x0($t6)
/* 242164 80221A54 8C780000 */  lw         $t8, 0x0($v1)
/* 242168 80221A58 0018C880 */  sll        $t9, $t8, 2
/* 24216C 80221A5C 00D94821 */  addu       $t1, $a2, $t9
/* 242170 80221A60 AD2F0000 */  sw         $t7, 0x0($t1)
.L80221A64_ovl19:
/* 242174 80221A64 8FBF0014 */  lw         $ra, 0x14($sp)
.L80221A68_ovl19:
/* 242178 80221A68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24217C 80221A6C 03E00008 */  jr         $ra
.L80221A70_ovl18:
/* 242180 80221A70 00000000 */   nop
