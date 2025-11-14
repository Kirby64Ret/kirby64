glabel func_800BAA04 # 2
/* 062C54 800BAA04 8C8E0004 */  lw          $t6, 0x4($a0)
/* 062C58 800BAA08 8CA30004 */  lw          $v1, 0x4($a1)
/* 062C5C 800BAA0C 8CAF0000 */  lw          $t7, 0x0($a1)
/* 062C60 800BAA10 8DC20008 */  lw          $v0, 0x8($t6)
/* 062C64 800BAA14 10600011 */  beqz        $v1, L800BAA5C
/* 062C68 800BAA18 ADE00010 */   sw         $zero, 0x10($t7)
/* 062C6C 800BAA1C 8CA60008 */  lw          $a2, 0x8($a1)
/* 062C70 800BAA20 8CD80004 */  lw          $t8, 0x4($a2)
/* 062C74 800BAA24 57000005 */  bnel        $t8, $zero, L800BAA3C
/* 062C78 800BAA28 ACC30004 */   sw         $v1, 0x4($a2)
/* 062C7C 800BAA2C 8CB90004 */  lw          $t9, 0x4($a1)
/* 062C80 800BAA30 10000004 */  b           L800BAA44
/* 062C84 800BAA34 AC990004 */   sw         $t9, 0x4($a0)
/* 062C88 800BAA38 ACC30004 */  sw          $v1, 0x4($a2)
glabel L800BAA3C
/* 062C8C 800BAA3C 8CA80008 */  lw          $t0, 0x8($a1)
/* 062C90 800BAA40 AC680008 */  sw          $t0, 0x8($v1)
glabel L800BAA44
/* 062C94 800BAA44 8C490004 */  lw          $t1, 0x4($v0)
/* 062C98 800BAA48 ACA90004 */  sw          $t1, 0x4($a1)
/* 062C9C 800BAA4C AC450004 */  sw          $a1, 0x4($v0)
/* 062CA0 800BAA50 ACA20008 */  sw          $v0, 0x8($a1)
/* 062CA4 800BAA54 8C8A0004 */  lw          $t2, 0x4($a0)
/* 062CA8 800BAA58 AD450008 */  sw          $a1, 0x8($t2)
glabel L800BAA5C
/* 062CAC 800BAA5C 03E00008 */  jr          $ra
/* 062CB0 800BAA60 00000000 */   nop
.size func_800BAA04, . - func_800BAA04
