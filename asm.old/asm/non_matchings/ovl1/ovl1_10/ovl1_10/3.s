glabel func_800BAA64 # 3
/* 062CB4 800BAA64 94830002 */  lhu         $v1, 0x2($a0)
/* 062CB8 800BAA68 8C820010 */  lw          $v0, 0x10($a0)
/* 062CBC 800BAA6C 24050001 */  addiu       $a1, $zero, 0x1
/* 062CC0 800BAA70 5460001A */  bnel        $v1, $zero, L800BAADC
/* 062CC4 800BAA74 00001025 */   move       $v0, $zero
/* 062CC8 800BAA78 944E0000 */  lhu         $t6, 0x0($v0)
glabel L800BAA7C
/* 062CCC 800BAA7C 000E7B42 */  srl         $t7, $t6, 13
/* 062CD0 800BAA80 2DE10005 */  sltiu       $at, $t7, 0x5
/* 062CD4 800BAA84 10200012 */  beqz        $at, L800BAAD0
/* 062CD8 800BAA88 000F7880 */   sll        $t7, $t7, 2
/* 062CDC 800BAA8C 3C01800D */  lui         $at, %hi(jtbl_800D6908)
/* 062CE0 800BAA90 002F0821 */  addu        $at, $at, $t7
/* 062CE4 800BAA94 8C2F6908 */  lw          $t7, %lo(jtbl_800D6908)($at)
/* 062CE8 800BAA98 01E00008 */  jr          $t7
/* 062CEC 800BAA9C 00000000 */   nop
glabel L800BAAA0
/* 062CF0 800BAAA0 03E00008 */  jr          $ra
/* 062CF4 800BAAA4 24020001 */   addiu      $v0, $zero, 0x1
glabel L800BAAA8
/* 062CF8 800BAAA8 10000009 */  b           L800BAAD0
/* 062CFC 800BAAAC 24030001 */   addiu      $v1, $zero, 0x1
glabel L800BAAB0
/* 062D00 800BAAB0 10000007 */  b           L800BAAD0
/* 062D04 800BAAB4 24420002 */   addiu      $v0, $v0, 0x2
glabel L800BAAB8
/* 062D08 800BAAB8 94980004 */  lhu         $t8, 0x4($a0)
/* 062D0C 800BAABC 54B80004 */  bnel        $a1, $t8, L800BAAD0
/* 062D10 800BAAC0 8C82000C */   lw         $v0, 0xC($a0)
/* 062D14 800BAAC4 10000002 */  b           L800BAAD0
/* 062D18 800BAAC8 24420002 */   addiu      $v0, $v0, 0x2
/* 062D1C 800BAACC 8C82000C */  lw          $v0, 0xC($a0)
glabel L800BAAD0
/* 062D20 800BAAD0 5060FFEA */  beql        $v1, $zero, L800BAA7C
/* 062D24 800BAAD4 944E0000 */   lhu        $t6, 0x0($v0)
/* 062D28 800BAAD8 00001025 */  move        $v0, $zero
glabel L800BAADC
/* 062D2C 800BAADC 03E00008 */  jr          $ra
/* 062D30 800BAAE0 00000000 */   nop
.size func_800BAA64, . - func_800BAA64

.late_rodata
glabel jtbl_800D6908
.word L800BAAA0
.word L800BAAA8
.word L800BAAA8
.word L800BAAB0
.word L800BAAB8
