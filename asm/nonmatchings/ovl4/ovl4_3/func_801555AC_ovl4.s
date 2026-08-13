nonmatching func_801555AC_ovl4, 0x48

glabel func_801555AC_ovl4
    /* FCADC 801555AC 00047080 */  sll        $t6, $a0, 2
    /* FCAE0 801555B0 01C47023 */  subu       $t6, $t6, $a0
    /* FCAE4 801555B4 000E7080 */  sll        $t6, $t6, 2
    /* FCAE8 801555B8 01C47023 */  subu       $t6, $t6, $a0
    /* FCAEC 801555BC 000E70C0 */  sll        $t6, $t6, 3
    /* FCAF0 801555C0 3C0F800F */  lui        $t7, %hi(D_800ECA08)
    /* FCAF4 801555C4 01EE7821 */  addu       $t7, $t7, $t6
    /* FCAF8 801555C8 8DEFCA08 */  lw         $t7, %lo(D_800ECA08)($t7)
    /* FCAFC 801555CC 3C019999 */  lui        $at, (0x99999999 >> 16)
    /* FCB00 801555D0 34219999 */  ori        $at, $at, (0x99999999 & 0xFFFF)
    /* FCB04 801555D4 15E10003 */  bne        $t7, $at, .L801555E4_ovl4
    /* FCB08 801555D8 24020001 */   addiu     $v0, $zero, 0x1
    /* FCB0C 801555DC 03E00008 */  jr         $ra
    /* FCB10 801555E0 00001025 */   or        $v0, $zero, $zero
  .L801555E4_ovl4:
    /* FCB14 801555E4 03E00008 */  jr         $ra
    /* FCB18 801555E8 00000000 */   nop
    /* FCB1C 801555EC 03E00008 */  jr         $ra
    /* FCB20 801555F0 00000000 */   nop
endlabel func_801555AC_ovl4
.size func_801555AC_ovl4, . - func_801555AC_ovl4
