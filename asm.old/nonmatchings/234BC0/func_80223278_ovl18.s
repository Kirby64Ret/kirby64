glabel func_80223278_ovl18
/* 235C18 80223278 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 235C1C 8022327C 8C63A7C4 */  lw         $v1, %lo(D_8004A7C4)($v1)
/* 235C20 80223280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 235C24 80223284 AFBF0014 */  sw         $ra, 0x14($sp)
/* 235C28 80223288 AFA40018 */  sw         $a0, 0x18($sp)
/* 235C2C 8022328C 8C620000 */  lw         $v0, 0x0($v1)
/* 235C30 80223290 3C0E800F */  lui        $t6, %hi(D_800E9AA0)
/* 235C34 80223294 3C0F800E */  lui        $t7, %hi(D_800DD8D0)
/* 235C38 80223298 00021080 */  sll        $v0, $v0, 2
/* 235C3C 8022329C 01C27021 */  addu       $t6, $t6, $v0
/* 235C40 802232A0 8DCE9AA0 */  lw         $t6, %lo(D_800E9AA0)($t6)
/* 235C44 802232A4 01E27821 */  addu       $t7, $t7, $v0
/* 235C48 802232A8 51C0001A */  beql       $t6, $zero, .L80223314_ovl18
/* 235C4C 802232AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 235C50 802232B0 8DEFD8D0 */  lw         $t7, %lo(D_800DD8D0)($t7)
/* 235C54 802232B4 3C19800F */  lui        $t9, %hi(D_800E8920)
/* 235C58 802232B8 0322C821 */  addu       $t9, $t9, $v0
/* 235C5C 802232BC 000FC782 */  srl        $t8, $t7, 30
/* 235C60 802232C0 13000013 */  beqz       $t8, .L80223310_ovl18
/* 235C64 802232C4 3C04800E */   lui       $a0, %hi(gEntityGObjProcessArray)
/* 235C68 802232C8 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* 235C6C 802232CC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 235C70 802232D0 00220821 */  addu       $at, $at, $v0
/* 235C74 802232D4 17200006 */  bnez       $t9, .L802232F0_ovl18
/* 235C78 802232D8 24090004 */   addiu     $t1, $zero, 0x4
/* 235C7C 802232DC 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 235C80 802232E0 00220821 */  addu       $at, $at, $v0
/* 235C84 802232E4 24080002 */  addiu      $t0, $zero, 0x2
/* 235C88 802232E8 10000002 */  b          .L802232F4_ovl18
/* 235C8C 802232EC AC28DC50 */   sw        $t0, %lo(gEntityVtableIndexArray)($at)
.L802232F0_ovl18:
/* 235C90 802232F0 AC29DC50 */  sw         $t1, %lo(gEntityVtableIndexArray)($at)
.L802232F4_ovl18:
/* 235C94 802232F4 8C6A0000 */  lw         $t2, 0x0($v1)
/* 235C98 802232F8 3C058022 */  lui        $a1, %hi(func_802228F8_ovl19)
/* 235C9C 802232FC 24A528F8 */  addiu      $a1, $a1, %lo(func_802228F8_ovl19)
/* 235CA0 80223300 000A5880 */  sll        $t3, $t2, 2
/* 235CA4 80223304 008B2021 */  addu       $a0, $a0, $t3
/* 235CA8 80223308 0C02C7B2 */  jal        assign_new_process_entry
/* 235CAC 8022330C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
.L80223310_ovl18:
/* 235CB0 80223310 8FBF0014 */  lw         $ra, 0x14($sp)
.L80223314_ovl18:
/* 235CB4 80223314 27BD0018 */  addiu      $sp, $sp, 0x18
/* 235CB8 80223318 03E00008 */  jr         $ra
/* 235CBC 8022331C 00000000 */   nop
