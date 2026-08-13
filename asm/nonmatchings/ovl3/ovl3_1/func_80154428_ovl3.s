nonmatching func_80154428_ovl3, 0x74

glabel func_80154428_ovl3
    /* B4E68 80154428 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* B4E6C 8015442C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* B4E70 80154430 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* B4E74 80154434 AFBF0014 */  sw         $ra, 0x14($sp)
    /* B4E78 80154438 8DCF0000 */  lw         $t7, 0x0($t6)
    /* B4E7C 8015443C 3C03800E */  lui        $v1, %hi(D_800E0490)
    /* B4E80 80154440 00001025 */  or         $v0, $zero, $zero
    /* B4E84 80154444 000FC080 */  sll        $t8, $t7, 2
    /* B4E88 80154448 00781821 */  addu       $v1, $v1, $t8
    /* B4E8C 8015444C 8C630490 */  lw         $v1, %lo(D_800E0490)($v1)
    /* B4E90 80154450 1060000E */  beqz       $v1, .L8015448C_ovl3
    /* B4E94 80154454 00000000 */   nop
    /* B4E98 80154458 8C790000 */  lw         $t9, 0x0($v1)
    /* B4E9C 8015445C 3C068013 */  lui        $a2, %hi(D_8012E944 + 0x4)
    /* B4EA0 80154460 24C6E948 */  addiu      $a2, $a2, %lo(D_8012E944 + 0x4)
    /* B4EA4 80154464 13200009 */  beqz       $t9, .L8015448C_ovl3
    /* B4EA8 80154468 ACD9001C */   sw        $t9, 0x1C($a2)
    /* B4EAC 8015446C 0C0550E7 */  jal        func_8015439C_ovl3
    /* B4EB0 80154470 00000000 */   nop
    /* B4EB4 80154474 3C068013 */  lui        $a2, %hi(D_8012E944 + 0x4)
    /* B4EB8 80154478 24C4E948 */  addiu      $a0, $a2, %lo(D_8012E944 + 0x4)
    /* B4EBC 8015447C 0C046FD3 */  jal        func_8011BF4C
    /* B4EC0 80154480 00002825 */   or        $a1, $zero, $zero
    /* B4EC4 80154484 10000002 */  b          .L80154490_ovl3
    /* B4EC8 80154488 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8015448C_ovl3:
    /* B4ECC 8015448C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L80154490_ovl3:
    /* B4ED0 80154490 27BD0018 */  addiu      $sp, $sp, 0x18
    /* B4ED4 80154494 03E00008 */  jr         $ra
    /* B4ED8 80154498 00000000 */   nop
endlabel func_80154428_ovl3
.size func_80154428_ovl3, . - func_80154428_ovl3
