glabel func_800BB028 # 10
/* 063278 800BB028 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 06327C 800BB02C AFBF0014 */  sw          $ra, 0x14($sp)
/* 063280 800BB030 00803825 */  move        $a3, $a0
/* 063284 800BB034 AFA70038 */  sw          $a3, 0x38($sp)
/* 063288 800BB038 27A4001C */  addiu       $a0, $sp, 0x1C
/* 06328C 800BB03C 27A50034 */  addiu       $a1, $sp, 0x34
/* 063290 800BB040 0C00CEB8 */  jal         osCreateMesgQueue
/* 063294 800BB044 24060001 */   addiu      $a2, $zero, 0x1
/* 063298 800BB048 8FA50038 */  lw          $a1, 0x38($sp)
/* 06329C 800BB04C 240E0001 */  addiu       $t6, $zero, 0x1
/* 0632A0 800BB050 27AF001C */  addiu       $t7, $sp, 0x1C
/* 0632A4 800BB054 3C04800F */  lui         $a0, %hi(D_800ED4C8)
/* 0632A8 800BB058 2484D4C8 */  addiu       $a0, $a0, %lo(D_800ED4C8)
/* 0632AC 800BB05C 00003025 */  move        $a2, $zero
/* 0632B0 800BB060 ACAE0004 */  sw          $t6, 0x4($a1)
/* 0632B4 800BB064 0C00B4BC */  jal         osSendMesg
/* 0632B8 800BB068 ACAF0008 */   sw         $t7, 0x8($a1)
/* 0632BC 800BB06C 27A4001C */  addiu       $a0, $sp, 0x1C
/* 0632C0 800BB070 00002825 */  move        $a1, $zero
/* 0632C4 800BB074 0C00B540 */  jal         osRecvMesg
/* 0632C8 800BB078 24060001 */   addiu      $a2, $zero, 0x1
/* 0632CC 800BB07C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 0632D0 800BB080 27BD0038 */  addiu       $sp, $sp, 0x38
/* 0632D4 800BB084 03E00008 */  jr          $ra
/* 0632D8 800BB088 00000000 */   nop
.size func_800BB028, . - func_800BB028
