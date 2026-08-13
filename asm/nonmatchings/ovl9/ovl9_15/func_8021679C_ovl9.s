nonmatching func_8021679C_ovl9, 0xA8

glabel func_8021679C_ovl9
    /* 1C47EC 8021679C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1C47F0 802167A0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1C47F4 802167A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1C47F8 802167A8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1C47FC 802167AC E7AC0018 */  swc1       $f12, 0x18($sp)
    /* 1C4800 802167B0 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1C4804 802167B4 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
    /* 1C4808 802167B8 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
    /* 1C480C 802167BC 00021080 */  sll        $v0, $v0, 2
    /* 1C4810 802167C0 0082C021 */  addu       $t8, $a0, $v0
    /* 1C4814 802167C4 C7080000 */  lwc1       $f8, 0x0($t8)
    /* 1C4818 802167C8 C48A0000 */  lwc1       $f10, 0x0($a0)
    /* 1C481C 802167CC 3C03800E */  lui        $v1, %hi(gEntitiesNextPosZArray)
    /* 1C4820 802167D0 3C05800E */  lui        $a1, %hi(gEntitiesNextPosYArray)
    /* 1C4824 802167D4 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
    /* 1C4828 802167D8 24632950 */  addiu      $v1, $v1, %lo(gEntitiesNextPosZArray)
    /* 1C482C 802167DC 00627821 */  addu       $t7, $v1, $v0
    /* 1C4830 802167E0 00A2C821 */  addu       $t9, $a1, $v0
    /* 1C4834 802167E4 460A4081 */  sub.s      $f2, $f8, $f10
    /* 1C4838 802167E8 C7300000 */  lwc1       $f16, 0x0($t9)
    /* 1C483C 802167EC C5E40000 */  lwc1       $f4, 0x0($t7)
    /* 1C4840 802167F0 C4660000 */  lwc1       $f6, 0x0($v1)
    /* 1C4844 802167F4 C4B20000 */  lwc1       $f18, 0x0($a1)
    /* 1C4848 802167F8 46062001 */  sub.s      $f0, $f4, $f6
    /* 1C484C 802167FC 46021102 */  mul.s      $f4, $f2, $f2
    /* 1C4850 80216800 46128381 */  sub.s      $f14, $f16, $f18
    /* 1C4854 80216804 460E7182 */  mul.s      $f6, $f14, $f14
    /* 1C4858 80216808 46062200 */  add.s      $f8, $f4, $f6
    /* 1C485C 8021680C 46000282 */  mul.s      $f10, $f0, $f0
    /* 1C4860 80216810 0C00CAC8 */  jal        sqrtf
    /* 1C4864 80216814 46085300 */   add.s     $f12, $f10, $f8
    /* 1C4868 80216818 C7B00018 */  lwc1       $f16, 0x18($sp)
    /* 1C486C 8021681C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1C4870 80216820 00001025 */  or         $v0, $zero, $zero
    /* 1C4874 80216824 4610003E */  c.le.s     $f0, $f16
    /* 1C4878 80216828 00000000 */  nop
    /* 1C487C 8021682C 45000003 */  bc1f       .L8021683C_ovl9
    /* 1C4880 80216830 00000000 */   nop
    /* 1C4884 80216834 10000001 */  b          .L8021683C_ovl9
    /* 1C4888 80216838 24020001 */   addiu     $v0, $zero, 0x1
  .L8021683C_ovl9:
    /* 1C488C 8021683C 03E00008 */  jr         $ra
    /* 1C4890 80216840 27BD0018 */   addiu     $sp, $sp, 0x18
endlabel func_8021679C_ovl9
.size func_8021679C_ovl9, . - func_8021679C_ovl9
