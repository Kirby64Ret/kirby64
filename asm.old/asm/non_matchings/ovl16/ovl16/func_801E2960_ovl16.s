glabel func_801E2960_ovl16
/* 218C10 801E2960 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 218C14 801E2964 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 218C18 801E2968 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 218C1C 801E296C AFBF0014 */  sw    $ra, 0x14($sp)
/* 218C20 801E2970 AFA40018 */  sw    $a0, 0x18($sp)
/* 218C24 801E2974 8C6F0000 */  lw    $t7, ($v1)
/* 218C28 801E2978 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 218C2C 801E297C 44810000 */  mtc1  $at, $f0
/* 218C30 801E2980 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 218C34 801E2984 000FC080 */  sll   $t8, $t7, 2
/* 218C38 801E2988 00380821 */  addu  $at, $at, $t8
/* 218C3C 801E298C 240E0009 */  li    $t6, 9
/* 218C40 801E2990 AC2EDFD0 */ sw $t6, %lo(D_800DDFD0)($at)
/* 218C44 801E2994 8C620000 */  lw    $v0, ($v1)
/* 218C48 801E2998 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 218C4C 801E299C 2404001E */  li    $a0, 30
/* 218C50 801E29A0 00021080 */  sll   $v0, $v0, 2
/* 218C54 801E29A4 00220821 */  addu  $at, $at, $v0
/* 218C58 801E29A8 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 218C5C 801E29AC 3C01800E */ lui $at, %hi(D_800E3050)
/* 218C60 801E29B0 00220821 */  addu  $at, $at, $v0
/* 218C64 801E29B4 46002187 */  neg.s $f6, $f4
/* 218C68 801E29B8 46003203 */  div.s $f8, $f6, $f0
/* 218C6C 801E29BC E4283050 */ swc1 $f8, %lo(D_800E3050)($at)
/* 218C70 801E29C0 8C620000 */  lw    $v0, ($v1)
/* 218C74 801E29C4 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 218C78 801E29C8 44815000 */  mtc1  $at, $f10
/* 218C7C 801E29CC 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 218C80 801E29D0 00021080 */  sll   $v0, $v0, 2
/* 218C84 801E29D4 00220821 */  addu  $at, $at, $v0
/* 218C88 801E29D8 C4302790 */ lwc1 $f16, %lo(gEntitiesNextPosYArray)($at)
/* 218C8C 801E29DC 3C01800E */ lui $at, %hi(D_800E3210)
/* 218C90 801E29E0 00220821 */  addu  $at, $at, $v0
/* 218C94 801E29E4 46105481 */  sub.s $f18, $f10, $f16
/* 218C98 801E29E8 46009103 */  div.s $f4, $f18, $f0
/* 218C9C 801E29EC 0C002DAF */  jal   finish_current_thread
/* 218CA0 801E29F0 E4243210 */ swc1 $f4, %lo(D_800E3210)($at)
/* 218CA4 801E29F4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 218CA8 801E29F8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 218CAC 801E29FC 3C01800D */  lui   $at, %hi(D_800D70A8) # $at, 0x800d
/* 218CB0 801E2A00 AC2070A8 */  sw    $zero, %lo(D_800D70A8)($at)
/* 218CB4 801E2A04 8D090000 */  lw    $t1, ($t0)
/* 218CB8 801E2A08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 218CBC 801E2A0C 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 218CC0 801E2A10 00095080 */  sll   $t2, $t1, 2
/* 218CC4 801E2A14 002A0821 */  addu  $at, $at, $t2
/* 218CC8 801E2A18 24190021 */  li    $t9, 33
/* 218CCC 801E2A1C AC39DC50 */ sw $t9, %lo(gEntityVtableIndexArray)($at)
/* 218CD0 801E2A20 03E00008 */  jr    $ra
/* 218CD4 801E2A24 27BD0018 */   addiu $sp, $sp, 0x18
.type func_801E2960_ovl16, @function
.size func_801E2960_ovl16, . - func_801E2960_ovl16
