glabel func_80101BA0_ovl2
/* 08A610 80101BA0 94820008 */  lhu   $v0, 8($a0)
/* 08A614 80101BA4 304E0008 */  andi  $t6, $v0, 8
/* 08A618 80101BA8 15C00066 */  bnez  $t6, .L80101D44_ovl2
/* 08A61C 80101BAC 304F0004 */   andi  $t7, $v0, 4
/* 08A620 80101BB0 11E00007 */  beqz  $t7, .L80101BD0_ovl2
/* 08A624 80101BB4 3C188013 */   lui   $t8, %hi(D_8012BD00) # $t8, 0x8013
/* 08A628 80101BB8 8F18BD00 */  lw    $t8, %lo(D_8012BD00)($t8)
/* 08A62C 80101BBC 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 08A630 80101BC0 57200004 */  bnezl $t9, .L80101BD4_ovl2
/* 08A634 80101BC4 30420003 */   andi  $v0, $v0, 3
/* 08A638 80101BC8 03E00008 */  jr    $ra
/* 08A63C 80101BCC 00001025 */   move  $v0, $zero

.L80101BD0_ovl2:
/* 08A640 80101BD0 30420003 */  andi  $v0, $v0, 3
.L80101BD4_ovl2:
/* 08A644 80101BD4 1040005B */  beqz  $v0, .L80101D44_ovl2
/* 08A648 80101BD8 24010003 */   li    $at, 3
/* 08A64C 80101BDC 14410003 */  bne   $v0, $at, .L80101BEC_ovl2
/* 08A650 80101BE0 30480001 */   andi  $t0, $v0, 1
/* 08A654 80101BE4 03E00008 */  jr    $ra
/* 08A658 80101BE8 00001025 */   move  $v0, $zero

.L80101BEC_ovl2:
/* 08A65C 80101BEC 11000027 */  beqz  $t0, .L80101C8C_ovl2
/* 08A660 80101BF0 00000000 */   nop   
/* 08A664 80101BF4 10C00011 */  beqz  $a2, .L80101C3C_ovl2
/* 08A668 80101BF8 00000000 */   nop   
/* 08A66C 80101BFC C4A60000 */  lwc1  $f6, ($a1)
/* 08A670 80101C00 C4C80000 */  lwc1  $f8, ($a2)
/* 08A674 80101C04 C4B00004 */  lwc1  $f16, 4($a1)
/* 08A678 80101C08 C4D20004 */  lwc1  $f18, 4($a2)
/* 08A67C 80101C0C 46083282 */  mul.s $f10, $f6, $f8
/* 08A680 80101C10 44802000 */  mtc1  $zero, $f4
/* 08A684 80101C14 46128182 */  mul.s $f6, $f16, $f18
/* 08A688 80101C18 C4D20008 */  lwc1  $f18, 8($a2)
/* 08A68C 80101C1C C4B00008 */  lwc1  $f16, 8($a1)
/* 08A690 80101C20 46065200 */  add.s $f8, $f10, $f6
/* 08A694 80101C24 46128282 */  mul.s $f10, $f16, $f18
/* 08A698 80101C28 460A4180 */  add.s $f6, $f8, $f10
/* 08A69C 80101C2C 4606203C */  c.lt.s $f4, $f6
/* 08A6A0 80101C30 00000000 */  nop   
/* 08A6A4 80101C34 45010013 */  bc1t  .L80101C84_ovl2
/* 08A6A8 80101C38 00000000 */   nop   
.L80101C3C_ovl2:
/* 08A6AC 80101C3C 10E0003F */  beqz  $a3, .L80101D3C_ovl2
/* 08A6B0 80101C40 00000000 */   nop   
/* 08A6B4 80101C44 C4B20000 */  lwc1  $f18, ($a1)
/* 08A6B8 80101C48 C4E80000 */  lwc1  $f8, ($a3)
/* 08A6BC 80101C4C C4A40004 */  lwc1  $f4, 4($a1)
/* 08A6C0 80101C50 C4E60004 */  lwc1  $f6, 4($a3)
/* 08A6C4 80101C54 46089282 */  mul.s $f10, $f18, $f8
/* 08A6C8 80101C58 44808000 */  mtc1  $zero, $f16
/* 08A6CC 80101C5C 46062482 */  mul.s $f18, $f4, $f6
/* 08A6D0 80101C60 C4E60008 */  lwc1  $f6, 8($a3)
/* 08A6D4 80101C64 C4A40008 */  lwc1  $f4, 8($a1)
/* 08A6D8 80101C68 46125200 */  add.s $f8, $f10, $f18
/* 08A6DC 80101C6C 46062282 */  mul.s $f10, $f4, $f6
/* 08A6E0 80101C70 460A4480 */  add.s $f18, $f8, $f10
/* 08A6E4 80101C74 4612803C */  c.lt.s $f16, $f18
/* 08A6E8 80101C78 00000000 */  nop   
/* 08A6EC 80101C7C 4500002F */  bc1f  .L80101D3C_ovl2
/* 08A6F0 80101C80 00000000 */   nop   
.L80101C84_ovl2:
/* 08A6F4 80101C84 03E00008 */  jr    $ra
/* 08A6F8 80101C88 00001025 */   move  $v0, $zero

.L80101C8C_ovl2:
/* 08A6FC 80101C8C 10C00014 */  beqz  $a2, .L80101CE0_ovl2
/* 08A700 80101C90 00000000 */   nop   
/* 08A704 80101C94 C4A60000 */  lwc1  $f6, ($a1)
/* 08A708 80101C98 C4CA0000 */  lwc1  $f10, ($a2)
/* 08A70C 80101C9C C4B20004 */  lwc1  $f18, 4($a1)
/* 08A710 80101CA0 46003207 */  neg.s $f8, $f6
/* 08A714 80101CA4 44802000 */  mtc1  $zero, $f4
/* 08A718 80101CA8 460A4402 */  mul.s $f16, $f8, $f10
/* 08A71C 80101CAC C4C80004 */  lwc1  $f8, 4($a2)
/* 08A720 80101CB0 46009187 */  neg.s $f6, $f18
/* 08A724 80101CB4 46083282 */  mul.s $f10, $f6, $f8
/* 08A728 80101CB8 C4A60008 */  lwc1  $f6, 8($a1)
/* 08A72C 80101CBC 46003207 */  neg.s $f8, $f6
/* 08A730 80101CC0 460A8480 */  add.s $f18, $f16, $f10
/* 08A734 80101CC4 C4D00008 */  lwc1  $f16, 8($a2)
/* 08A738 80101CC8 46104282 */  mul.s $f10, $f8, $f16
/* 08A73C 80101CCC 460A9180 */  add.s $f6, $f18, $f10
/* 08A740 80101CD0 4606203C */  c.lt.s $f4, $f6
/* 08A744 80101CD4 00000000 */  nop   
/* 08A748 80101CD8 45010016 */  bc1t  .L80101D34_ovl2
/* 08A74C 80101CDC 00000000 */   nop   
.L80101CE0_ovl2:
/* 08A750 80101CE0 10E00016 */  beqz  $a3, .L80101D3C_ovl2
/* 08A754 80101CE4 00000000 */   nop   
/* 08A758 80101CE8 C4B00000 */  lwc1  $f16, ($a1)
/* 08A75C 80101CEC C4EA0000 */  lwc1  $f10, ($a3)
/* 08A760 80101CF0 C4A60004 */  lwc1  $f6, 4($a1)
/* 08A764 80101CF4 46008487 */  neg.s $f18, $f16
/* 08A768 80101CF8 44804000 */  mtc1  $zero, $f8
/* 08A76C 80101CFC 460A9102 */  mul.s $f4, $f18, $f10
/* 08A770 80101D00 C4F20004 */  lwc1  $f18, 4($a3)
/* 08A774 80101D04 46003407 */  neg.s $f16, $f6
/* 08A778 80101D08 46128282 */  mul.s $f10, $f16, $f18
/* 08A77C 80101D0C C4B00008 */  lwc1  $f16, 8($a1)
/* 08A780 80101D10 46008487 */  neg.s $f18, $f16
/* 08A784 80101D14 460A2180 */  add.s $f6, $f4, $f10
/* 08A788 80101D18 C4E40008 */  lwc1  $f4, 8($a3)
/* 08A78C 80101D1C 46049282 */  mul.s $f10, $f18, $f4
/* 08A790 80101D20 460A3400 */  add.s $f16, $f6, $f10
/* 08A794 80101D24 4610403C */  c.lt.s $f8, $f16
/* 08A798 80101D28 00000000 */  nop   
/* 08A79C 80101D2C 45000003 */  bc1f  .L80101D3C_ovl2
/* 08A7A0 80101D30 00000000 */   nop   
.L80101D34_ovl2:
/* 08A7A4 80101D34 03E00008 */  jr    $ra
/* 08A7A8 80101D38 00001025 */   move  $v0, $zero

.L80101D3C_ovl2:
/* 08A7AC 80101D3C 03E00008 */  jr    $ra
/* 08A7B0 80101D40 24020001 */   li    $v0, 1

.L80101D44_ovl2:
/* 08A7B4 80101D44 00001025 */  move  $v0, $zero
/* 08A7B8 80101D48 03E00008 */  jr    $ra
/* 08A7BC 80101D4C 00000000 */   nop   
