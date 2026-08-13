nonmatching func_8002C9FC, 0x4C

glabel func_8002C9FC
    /* 2D5FC 8002C9FC 8C830008 */  lw         $v1, 0x8($a0)
    /* 2D600 8002CA00 90620000 */  lbu        $v0, 0x0($v1)
    /* 2D604 8002CA04 246E0001 */  addiu      $t6, $v1, 0x1
    /* 2D608 8002CA08 AC8E0008 */  sw         $t6, 0x8($a0)
    /* 2D60C 8002CA0C 304F0080 */  andi       $t7, $v0, 0x80
    /* 2D610 8002CA10 11E0000B */  beqz       $t7, .L8002CA40
    /* 2D614 8002CA14 00402825 */   or        $a1, $v0, $zero
    /* 2D618 8002CA18 3045007F */  andi       $a1, $v0, 0x7F
  .L8002CA1C:
    /* 2D61C 8002CA1C 8C830008 */  lw         $v1, 0x8($a0)
    /* 2D620 8002CA20 0005C9C0 */  sll        $t9, $a1, 7
    /* 2D624 8002CA24 90620000 */  lbu        $v0, 0x0($v1)
    /* 2D628 8002CA28 24780001 */  addiu      $t8, $v1, 0x1
    /* 2D62C 8002CA2C AC980008 */  sw         $t8, 0x8($a0)
    /* 2D630 8002CA30 304E007F */  andi       $t6, $v0, 0x7F
    /* 2D634 8002CA34 304F0080 */  andi       $t7, $v0, 0x80
    /* 2D638 8002CA38 15E0FFF8 */  bnez       $t7, .L8002CA1C
    /* 2D63C 8002CA3C 032E2821 */   addu      $a1, $t9, $t6
  .L8002CA40:
    /* 2D640 8002CA40 03E00008 */  jr         $ra
    /* 2D644 8002CA44 00A01025 */   or        $v0, $a1, $zero
endlabel func_8002C9FC
.size func_8002C9FC, . - func_8002C9FC
