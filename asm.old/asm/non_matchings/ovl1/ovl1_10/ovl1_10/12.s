glabel func_800BB12C # 12
/* 06337C 800BB12C 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 063380 800BB130 AFBF0014 */  sw          $ra, 0x14($sp)
/* 063384 800BB134 0C0011FC */  jal         func_800047F0
/* 063388 800BB138 AFA40018 */   sw         $a0, 0x18($sp)
/* 06338C 800BB13C 0C0011F4 */  jal         func_800047D0
/* 063390 800BB140 8FA40018 */   lw         $a0, 0x18($sp)
/* 063394 800BB144 8FAE0018 */  lw          $t6, 0x18($sp)
/* 063398 800BB148 3C18800F */  lui         $t8, %hi(D_800ED4A0)
/* 06339C 800BB14C 2718D4A0 */  addiu       $t8, $t8, %lo(D_800ED4A0)
/* 0633A0 800BB150 000E78C0 */  sll         $t7, $t6, 3
/* 0633A4 800BB154 01F81821 */  addu        $v1, $t7, $t8
/* 0633A8 800BB158 90790000 */  lbu         $t9, 0x0($v1)
/* 0633AC 800BB15C 53200003 */  beql        $t9, $zero, L800BB16C
/* 0633B0 800BB160 8C620004 */   lw         $v0, 0x4($v1)
/* 0633B4 800BB164 A0600000 */  sb          $zero, 0x0($v1)
/* 0633B8 800BB168 8C620004 */  lw          $v0, 0x4($v1)
glabel L800BB16C
/* 0633BC 800BB16C 50400007 */  beql        $v0, $zero, L800BB18C
/* 0633C0 800BB170 8FBF0014 */   lw         $ra, 0x14($sp)
/* 0633C4 800BB174 8C480000 */  lw          $t0, 0x0($v0)
glabel L800BB178
/* 0633C8 800BB178 AD000010 */  sw          $zero, 0x10($t0)
/* 0633CC 800BB17C 8C420004 */  lw          $v0, 0x4($v0)
/* 0633D0 800BB180 5440FFFD */  bnel        $v0, $zero, L800BB178
/* 0633D4 800BB184 8C480000 */   lw         $t0, 0x0($v0)
/* 0633D8 800BB188 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L800BB18C
/* 0633DC 800BB18C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 0633E0 800BB190 03E00008 */  jr          $ra
/* 0633E4 800BB194 00000000 */   nop
.size func_800BB12C, . - func_800BB12C
