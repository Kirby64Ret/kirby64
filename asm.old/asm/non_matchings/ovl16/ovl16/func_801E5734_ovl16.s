glabel func_801E5734_ovl16
/* 21B9E4 801E5734 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 21B9E8 801E5738 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 21B9EC 801E573C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 21B9F0 801E5740 AFBF0014 */  sw    $ra, 0x14($sp)
/* 21B9F4 801E5744 AFA40018 */  sw    $a0, 0x18($sp)
/* 21B9F8 801E5748 8C6F0000 */  lw    $t7, ($v1)
/* 21B9FC 801E574C 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 21BA00 801E5750 44810000 */  mtc1  $at, $f0
/* 21BA04 801E5754 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 21BA08 801E5758 000FC080 */  sll   $t8, $t7, 2
/* 21BA0C 801E575C 00380821 */  addu  $at, $at, $t8
/* 21BA10 801E5760 240E0012 */  li    $t6, 18
/* 21BA14 801E5764 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 21BA18 801E5768 8C620000 */  lw    $v0, ($v1)
/* 21BA1C 801E576C 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 21BA20 801E5770 2404001E */  li    $a0, 30
/* 21BA24 801E5774 00021080 */  sll   $v0, $v0, 2
/* 21BA28 801E5778 00220821 */  addu  $at, $at, $v0
/* 21BA2C 801E577C C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 21BA30 801E5780 3C01800E */ lui $at, %hi(D_800E3050)
/* 21BA34 801E5784 00220821 */  addu  $at, $at, $v0
/* 21BA38 801E5788 46002187 */  neg.s $f6, $f4
/* 21BA3C 801E578C 46003203 */  div.s $f8, $f6, $f0
/* 21BA40 801E5790 E4283050 */ swc1 $f8, %lo(D_800E3050)($at)
/* 21BA44 801E5794 8C620000 */  lw    $v0, ($v1)
/* 21BA48 801E5798 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 21BA4C 801E579C 44815000 */  mtc1  $at, $f10
/* 21BA50 801E57A0 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 21BA54 801E57A4 00021080 */  sll   $v0, $v0, 2
/* 21BA58 801E57A8 00220821 */  addu  $at, $at, $v0
/* 21BA5C 801E57AC C4302790 */ lwc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 21BA60 801E57B0 3C01800E */ lui $at, %hi(D_800E3210)
/* 21BA64 801E57B4 00220821 */  addu  $at, $at, $v0
/* 21BA68 801E57B8 46105481 */  sub.s $f18, $f10, $f16
/* 21BA6C 801E57BC 46009103 */  div.s $f4, $f18, $f0
/* 21BA70 801E57C0 0C002DAF */  jal   finish_current_thread
/* 21BA74 801E57C4 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 21BA78 801E57C8 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 21BA7C 801E57CC 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 21BA80 801E57D0 3C01800D */  lui   $at, %hi(D_800D70A8) # $at, 0x800d
/* 21BA84 801E57D4 AC2070A8 */  sw    $zero, %lo(D_800D70A8)($at)
/* 21BA88 801E57D8 8D090000 */  lw    $t1, ($t0)
/* 21BA8C 801E57DC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 21BA90 801E57E0 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 21BA94 801E57E4 00095080 */  sll   $t2, $t1, 2
/* 21BA98 801E57E8 002A0821 */  addu  $at, $at, $t2
/* 21BA9C 801E57EC 24190021 */  li    $t9, 33
/* 21BAA0 801E57F0 AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
/* 21BAA4 801E57F4 03E00008 */  jr    $ra
/* 21BAA8 801E57F8 27BD0018 */   addiu $sp, $sp, 0x18
.type func_801E5734_ovl16, @function
.size func_801E5734_ovl16, . - func_801E5734_ovl16
