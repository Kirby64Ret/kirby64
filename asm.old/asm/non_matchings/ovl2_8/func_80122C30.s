glabel func_80122C30
/* 0AB6A0 80122C30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0AB6A4 80122C34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0AB6A8 80122C38 0C029D9E */  jal   play_sound
/* 0AB6AC 80122C3C 24040102 */   li    $a0, 258
/* 0AB6B0 80122C40 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0AB6B4 80122C44 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0AB6B8 80122C48 3C0E8013 */  lui   $t6, %hi(D_8012E8CA) # $t6, 0x8013
/* 0AB6BC 80122C4C 95CEE8CA */  lhu   $t6, %lo(D_8012E8CA)($t6)
/* 0AB6C0 80122C50 8F190000 */  lw    $t9, ($t8)
/* 0AB6C4 80122C54 3C09800E */ lui $t1, %hi(D_800DFBD0)
/* 0AB6C8 80122C58 000E78C0 */  sll   $t7, $t6, 3
/* 0AB6CC 80122C5C 00194080 */  sll   $t0, $t9, 2
/* 0AB6D0 80122C60 01284821 */  addu  $t1, $t1, $t0
/* 0AB6D4 80122C64 01EE7823 */  subu  $t7, $t7, $t6
/* 0AB6D8 80122C68 8D29FBD0 */ lw $t1, %lo(D_800DFBD0)($t1)
/* 0AB6DC 80122C6C 000F7880 */  sll   $t7, $t7, 2
/* 0AB6E0 80122C70 3C068013 */ lui $a2, %hi(D_80128448 + 2)
/* 0AB6E4 80122C74 00CF3021 */  addu  $a2, $a2, $t7
/* 0AB6E8 80122C78 94C6844A */ lhu $a2, %lo(D_80128448 + 2)($a2)
/* 0AB6EC 80122C7C 24040005 */  li    $a0, 5
/* 0AB6F0 80122C80 24050001 */  li    $a1, 1
/* 0AB6F4 80122C84 0C02A040 */  jal   func_800A8100
/* 0AB6F8 80122C88 8D270004 */   lw    $a3, 4($t1)
/* 0AB6FC 80122C8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0AB700 80122C90 3C018013 */  lui   $at, %hi(D_8012E80C) # $at, 0x8013
/* 0AB704 80122C94 AC22E80C */  sw    $v0, %lo(D_8012E80C)($at)
/* 0AB708 80122C98 03E00008 */  jr    $ra
/* 0AB70C 80122C9C 27BD0018 */   addiu $sp, $sp, 0x18
.type func_80122C30, @function
.size func_80122C30, . - func_80122C30
