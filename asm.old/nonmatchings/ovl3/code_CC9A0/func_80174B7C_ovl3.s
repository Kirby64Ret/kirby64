glabel func_80174B7C_ovl3
/* D55BC 80174B7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D55C0 80174B80 AFBF0014 */  sw         $ra, 0x14($sp)
/* D55C4 80174B84 0C054E61 */  jal        func_80153984_ovl3
/* D55C8 80174B88 AFA40018 */   sw        $a0, 0x18($sp)
/* D55CC 80174B8C 0C0473D6 */  jal        func_8011CF58
/* D55D0 80174B90 00000000 */   nop
/* D55D4 80174B94 0C0485EE */  jal        func_801217B8
/* D55D8 80174B98 00000000 */   nop
/* D55DC 80174B9C 10400003 */  beqz       $v0, .L80174BAC_ovl3
/* D55E0 80174BA0 00000000 */   nop
/* D55E4 80174BA4 0C048AD0 */  jal        func_80122B40
/* D55E8 80174BA8 00000000 */   nop
.L80174BAC_ovl3:
/* D55EC 80174BAC 3C0E8013 */  lui        $t6, %hi(D_8012E7E8 + 0x8)
/* D55F0 80174BB0 8DCEE7F0 */  lw         $t6, %lo(D_8012E7E8 + 0x8)($t6)
/* D55F4 80174BB4 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* D55F8 80174BB8 51C00012 */  beql       $t6, $zero, .L80174C04_ovl3
/* D55FC 80174BBC 8FBF0014 */   lw        $ra, 0x14($sp)
/* D5600 80174BC0 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* D5604 80174BC4 3C08800F */  lui        $t0, %hi(D_800E8920)
/* D5608 80174BC8 24050006 */  addiu      $a1, $zero, 0x6
/* D560C 80174BCC 8DF80000 */  lw         $t8, 0x0($t7)
/* D5610 80174BD0 00002025 */  or         $a0, $zero, $zero
/* D5614 80174BD4 0018C880 */  sll        $t9, $t8, 2
/* D5618 80174BD8 01194021 */  addu       $t0, $t0, $t9
/* D561C 80174BDC 8D088920 */  lw         $t0, %lo(D_800E8920)($t0)
/* D5620 80174BE0 15000005 */  bnez       $t0, .L80174BF8_ovl3
/* D5624 80174BE4 00000000 */   nop
/* D5628 80174BE8 0C048BDB */  jal        set_kirby_action_1
/* D562C 80174BEC 24040006 */   addiu     $a0, $zero, 0x6
/* D5630 80174BF0 10000004 */  b          .L80174C04_ovl3
/* D5634 80174BF4 8FBF0014 */   lw        $ra, 0x14($sp)
.L80174BF8_ovl3:
/* D5638 80174BF8 0C048BDB */  jal        set_kirby_action_1
/* D563C 80174BFC 24050001 */   addiu     $a1, $zero, 0x1
/* D5640 80174C00 8FBF0014 */  lw         $ra, 0x14($sp)
.L80174C04_ovl3:
/* D5644 80174C04 27BD0018 */  addiu      $sp, $sp, 0x18
/* D5648 80174C08 03E00008 */  jr         $ra
/* D564C 80174C0C 00000000 */   nop
