glabel func_801517FC_ovl3
/* B223C 801517FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2240 80151800 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2244 80151804 0C05E44C */  jal        func_80179130_ovl3
/* B2248 80151808 00000000 */   nop
/* B224C 8015180C 10400003 */  beqz       $v0, .L8015181C_ovl3
/* B2250 80151810 3C0E8005 */   lui       $t6, %hi(D_8004A7C4)
/* B2254 80151814 1000000F */  b          .L80151854_ovl3
/* B2258 80151818 24020003 */   addiu     $v0, $zero, 0x3
.L8015181C_ovl3:
/* B225C 8015181C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* B2260 80151820 3C19800F */  lui        $t9, %hi(D_800E8920)
/* B2264 80151824 24040006 */  addiu      $a0, $zero, 0x6
/* B2268 80151828 8DCF0000 */  lw         $t7, 0x0($t6)
/* B226C 8015182C 00001025 */  or         $v0, $zero, $zero
/* B2270 80151830 000FC080 */  sll        $t8, $t7, 2
/* B2274 80151834 0338C821 */  addu       $t9, $t9, $t8
/* B2278 80151838 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
/* B227C 8015183C 17200005 */  bnez       $t9, .L80151854_ovl3
/* B2280 80151840 00000000 */   nop
/* B2284 80151844 0C048BDB */  jal        set_kirby_action_1
/* B2288 80151848 24050006 */   addiu     $a1, $zero, 0x6
/* B228C 8015184C 10000001 */  b          .L80151854_ovl3
/* B2290 80151850 24020003 */   addiu     $v0, $zero, 0x3
.L80151854_ovl3:
/* B2294 80151854 8FBF0014 */  lw         $ra, 0x14($sp)
/* B2298 80151858 27BD0018 */  addiu      $sp, $sp, 0x18
/* B229C 8015185C 03E00008 */  jr         $ra
/* B22A0 80151860 00000000 */   nop
