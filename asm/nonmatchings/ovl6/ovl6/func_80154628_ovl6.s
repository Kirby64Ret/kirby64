nonmatching func_80154628_ovl6, 0x68

glabel func_80154628_ovl6
    /* 1389B8 80154628 3C018016 */  lui        $at, %hi(D_8015A56C_ovl6)
    /* 1389BC 8015462C AC20A56C */  sw         $zero, %lo(D_8015A56C_ovl6)($at)
    /* 1389C0 80154630 3C018016 */  lui        $at, %hi(D_8015A668_ovl6)
    /* 1389C4 80154634 AC20A668 */  sw         $zero, %lo(D_8015A668_ovl6)($at)
    /* 1389C8 80154638 3C018016 */  lui        $at, %hi(D_8015A66C_ovl6)
    /* 1389CC 8015463C AC20A66C */  sw         $zero, %lo(D_8015A66C_ovl6)($at)
    /* 1389D0 80154640 3C018016 */  lui        $at, %hi(D_8015A570_ovl6)
    /* 1389D4 80154644 3C038016 */  lui        $v1, %hi(D_8015A578_ovl6)
    /* 1389D8 80154648 3C028016 */  lui        $v0, %hi(D_8015A668_ovl6)
    /* 1389DC 8015464C 2442A668 */  addiu      $v0, $v0, %lo(D_8015A668_ovl6)
    /* 1389E0 80154650 2463A578 */  addiu      $v1, $v1, %lo(D_8015A578_ovl6)
    /* 1389E4 80154654 AC20A570 */  sw         $zero, %lo(D_8015A570_ovl6)($at)
    /* 1389E8 80154658 AC20A574 */  sw         $zero, %lo(D_8015A574_ovl6)($at)
  .L8015465C_ovl6:
    /* 1389EC 8015465C 24630010 */  addiu      $v1, $v1, 0x10
    /* 1389F0 80154660 AC60FFF4 */  sw         $zero, -0xC($v1)
    /* 1389F4 80154664 AC60FFF8 */  sw         $zero, -0x8($v1)
    /* 1389F8 80154668 AC60FFFC */  sw         $zero, -0x4($v1)
    /* 1389FC 8015466C 1462FFFB */  bne        $v1, $v0, .L8015465C_ovl6
    /* 138A00 80154670 AC60FFF0 */   sw        $zero, -0x10($v1)
    /* 138A04 80154674 3C018016 */  lui        $at, %hi(D_8015A568_ovl6)
    /* 138A08 80154678 AC20A568 */  sw         $zero, %lo(D_8015A568_ovl6)($at)
    /* 138A0C 8015467C 3C018016 */  lui        $at, %hi(D_8015A7C0_ovl6)
    /* 138A10 80154680 AC20A7C0 */  sw         $zero, %lo(D_8015A7C0_ovl6)($at)
    /* 138A14 80154684 3C018016 */  lui        $at, %hi(D_8015A698_ovl6)
    /* 138A18 80154688 03E00008 */  jr         $ra
    /* 138A1C 8015468C AC20A698 */   sw        $zero, %lo(D_8015A698_ovl6)($at)
endlabel func_80154628_ovl6
.size func_80154628_ovl6, . - func_80154628_ovl6
