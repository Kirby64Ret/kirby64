glabel func_801E5C4C_ovl10
/* 1D69BC 801E5C4C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1D69C0 801E5C50 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1D69C4 801E5C54 AFA50004 */  sw    $a1, 4($sp)
/* 1D69C8 801E5C58 C4920000 */  lwc1  $f18, ($a0)
/* 1D69CC 801E5C5C 8C660000 */  lw    $a2, ($v1)
/* 1D69D0 801E5C60 C48A0008 */  lwc1  $f10, 8($a0)
/* 1D69D4 801E5C64 3C02800F */ lui $v0, %hi(D_800E9AA0)
/* 1D69D8 801E5C68 00063080 */  sll   $a2, $a2, 2
/* 1D69DC 801E5C6C 00461021 */  addu  $v0, $v0, $a2
/* 1D69E0 801E5C70 8C429AA0 */ lw $v0, %lo(D_800E9AA0)($v0)
/* 1D69E4 801E5C74 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1D69E8 801E5C78 30A500FF */  andi  $a1, $a1, 0xff
/* 1D69EC 801E5C7C C4480008 */  lwc1  $f8, 8($v0)
/* 1D69F0 801E5C80 C4460010 */  lwc1  $f6, 0x10($v0)
/* 1D69F4 801E5C84 44852000 */  mtc1  $a1, $f4
/* 1D69F8 801E5C88 46124300 */  add.s $f12, $f8, $f18
/* 1D69FC 801E5C8C 00260821 */  addu  $at, $at, $a2
/* 1D6A00 801E5C90 C42025D0 */ lwc1 $f0, %lo(gEntitiesNextPosXArray)($at)
/* 1D6A04 801E5C94 46802420 */  cvt.s.w $f16, $f4
/* 1D6A08 801E5C98 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1D6A0C 801E5C9C 00260821 */  addu  $at, $at, $a2
/* 1D6A10 801E5CA0 C4222950 */ lwc1 $f2, %lo(gEntitiesNextPosZArray)($at)
/* 1D6A14 801E5CA4 04A10005 */  bgez  $a1, .L801E5CBC_ovl10
/* 1D6A18 801E5CA8 460A3380 */   add.s $f14, $f6, $f10
/* 1D6A1C 801E5CAC 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 1D6A20 801E5CB0 44812000 */  mtc1  $at, $f4
/* 1D6A24 801E5CB4 00000000 */  nop   
/* 1D6A28 801E5CB8 46048400 */  add.s $f16, $f16, $f4
.L801E5CBC_ovl10:
/* 1D6A2C 801E5CBC 46006181 */  sub.s $f6, $f12, $f0
/* 1D6A30 801E5CC0 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D6A34 801E5CC4 00260821 */  addu  $at, $at, $a2
/* 1D6A38 801E5CC8 46027281 */  sub.s $f10, $f14, $f2
/* 1D6A3C 801E5CCC 46103203 */  div.s $f8, $f6, $f16
/* 1D6A40 801E5CD0 46105483 */  div.s $f18, $f10, $f16
/* 1D6A44 801E5CD4 E4283050 */ swc1 $f8, %lo(D_800E3050)($at)
/* 1D6A48 801E5CD8 8C6E0000 */  lw    $t6, ($v1)
/* 1D6A4C 801E5CDC 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D6A50 801E5CE0 000E7880 */  sll   $t7, $t6, 2
/* 1D6A54 801E5CE4 002F0821 */  addu  $at, $at, $t7
/* 1D6A58 801E5CE8 03E00008 */  jr    $ra
/* 1D6A5C 801E5CEC E43233D0 */ swc1 $f18, %lo(D_800E33D0)($at)
.type func_801E5C4C_ovl10, @function
.size func_801E5C4C_ovl10, . - func_801E5C4C_ovl10
