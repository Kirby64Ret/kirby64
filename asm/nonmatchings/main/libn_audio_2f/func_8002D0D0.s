nonmatching func_8002D0D0, 0x4C

glabel func_8002D0D0
    /* 2DCD0 8002D0D0 AFA50004 */  sw         $a1, 0x4($sp)
    /* 2DCD4 8002D0D4 30A500FF */  andi       $a1, $a1, 0xFF
    /* 2DCD8 8002D0D8 8C8E0068 */  lw         $t6, 0x68($a0)
    /* 2DCDC 8002D0DC 00057880 */  sll        $t7, $a1, 2
    /* 2DCE0 8002D0E0 01E57823 */  subu       $t7, $t7, $a1
    /* 2DCE4 8002D0E4 000F78C0 */  sll        $t7, $t7, 3
    /* 2DCE8 8002D0E8 01CF1821 */  addu       $v1, $t6, $t7
    /* 2DCEC 8002D0EC 90780011 */  lbu        $t8, 0x11($v1)
    /* 2DCF0 8002D0F0 90790009 */  lbu        $t9, 0x9($v1)
    /* 2DCF4 8002D0F4 2401007F */  addiu      $at, $zero, 0x7F
    /* 2DCF8 8002D0F8 03190019 */  multu      $t8, $t9
    /* 2DCFC 8002D0FC 00001012 */  mflo       $v0
    /* 2DD00 8002D100 00000000 */  nop
    /* 2DD04 8002D104 00000000 */  nop
    /* 2DD08 8002D108 0041001A */  div        $zero, $v0, $at
    /* 2DD0C 8002D10C 00001012 */  mflo       $v0
    /* 2DD10 8002D110 304200FF */  andi       $v0, $v0, 0xFF
    /* 2DD14 8002D114 03E00008 */  jr         $ra
    /* 2DD18 8002D118 00000000 */   nop
endlabel func_8002D0D0
.size func_8002D0D0, . - func_8002D0D0
    /* 2DD1C 8002D11C 00000000 */  nop
