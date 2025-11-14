glabel func_800BAF50 # 9
/* 0631A0 800BAF50 8C820004 */  lw          $v0, 0x4($a0)
/* 0631A4 800BAF54 00A03825 */  move        $a3, $a1
/* 0631A8 800BAF58 3C08800D */  lui         $t0, %hi(D_800D5274)
/* 0631AC 800BAF5C 8C430008 */  lw          $v1, 0x8($v0)
/* 0631B0 800BAF60 1040002E */  beqz        $v0, L800BB01C
/* 0631B4 800BAF64 00403025 */   move       $a2, $v0
/* 0631B8 800BAF68 25085274 */  addiu       $t0, $t0, %lo(D_800D5274)
/* 0631BC 800BAF6C 8CC50000 */  lw          $a1, 0x0($a2)
glabel L800BAF70
/* 0631C0 800BAF70 8CAE0010 */  lw          $t6, 0x10($a1)
/* 0631C4 800BAF74 11C00024 */  beqz        $t6, L800BB008
/* 0631C8 800BAF78 00000000 */   nop
/* 0631CC 800BAF7C 90B90000 */  lbu         $t9, 0x0($a1)
/* 0631D0 800BAF80 01077821 */  addu        $t7, $t0, $a3
/* 0631D4 800BAF84 91F80000 */  lbu         $t8, 0x0($t7)
/* 0631D8 800BAF88 01194821 */  addu        $t1, $t0, $t9
/* 0631DC 800BAF8C 912A0000 */  lbu         $t2, 0x0($t1)
/* 0631E0 800BAF90 030A082A */  slt         $at, $t8, $t2
/* 0631E4 800BAF94 5420001F */  bnel        $at, $zero, L800BB014
/* 0631E8 800BAF98 8CC60004 */   lw         $a2, 0x4($a2)
/* 0631EC 800BAF9C 14C20009 */  bne         $a2, $v0, L800BAFC4
/* 0631F0 800BAFA0 00000000 */   nop
/* 0631F4 800BAFA4 8C6B0004 */  lw          $t3, 0x4($v1)
/* 0631F8 800BAFA8 8C6C0008 */  lw          $t4, 0x8($v1)
/* 0631FC 800BAFAC AD8B0004 */  sw          $t3, 0x4($t4)
/* 063200 800BAFB0 AC830004 */  sw          $v1, 0x4($a0)
/* 063204 800BAFB4 AC660004 */  sw          $a2, 0x4($v1)
/* 063208 800BAFB8 ACC30008 */  sw          $v1, 0x8($a2)
/* 06320C 800BAFBC 03E00008 */  jr          $ra
/* 063210 800BAFC0 8C620000 */   lw         $v0, 0x0($v1)
glabel L800BAFC4
/* 063214 800BAFC4 10C3000E */  beq         $a2, $v1, L800BB000
/* 063218 800BAFC8 00000000 */   nop
/* 06321C 800BAFCC 8C6D0004 */  lw          $t5, 0x4($v1)
/* 063220 800BAFD0 8C6E0008 */  lw          $t6, 0x8($v1)
/* 063224 800BAFD4 ADCD0004 */  sw          $t5, 0x4($t6)
/* 063228 800BAFD8 8C6F0008 */  lw          $t7, 0x8($v1)
/* 06322C 800BAFDC 8C990004 */  lw          $t9, 0x4($a0)
/* 063230 800BAFE0 AF2F0008 */  sw          $t7, 0x8($t9)
/* 063234 800BAFE4 8CC90008 */  lw          $t1, 0x8($a2)
/* 063238 800BAFE8 AC690008 */  sw          $t1, 0x8($v1)
/* 06323C 800BAFEC AD230004 */  sw          $v1, 0x4($t1)
/* 063240 800BAFF0 AC660004 */  sw          $a2, 0x4($v1)
/* 063244 800BAFF4 ACC30008 */  sw          $v1, 0x8($a2)
/* 063248 800BAFF8 03E00008 */  jr          $ra
/* 06324C 800BAFFC 8C620000 */   lw         $v0, 0x0($v1)
glabel L800BB000
/* 063250 800BB000 03E00008 */  jr          $ra
/* 063254 800BB004 8C620000 */   lw         $v0, 0x0($v1)
glabel L800BB008
/* 063258 800BB008 03E00008 */  jr          $ra
/* 06325C 800BB00C 00A01025 */   move       $v0, $a1
/* 063260 800BB010 8CC60004 */  lw          $a2, 0x4($a2)
glabel L800BB014
/* 063264 800BB014 54C0FFD6 */  bnel        $a2, $zero, L800BAF70
/* 063268 800BB018 8CC50000 */   lw         $a1, 0x0($a2)
glabel L800BB01C
/* 06326C 800BB01C 00001025 */  move        $v0, $zero
/* 063270 800BB020 03E00008 */  jr          $ra
/* 063274 800BB024 00000000 */   nop
.size func_800BAF50, . - func_800BAF50
