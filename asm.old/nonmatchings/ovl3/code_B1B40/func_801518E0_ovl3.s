glabel func_801518E0_ovl3
/* B2320 801518E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B2324 801518E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B2328 801518E8 0C048956 */  jal        func_80122558
/* B232C 801518EC 00000000 */   nop
/* B2330 801518F0 10400003 */  beqz       $v0, .L80151900_ovl3
/* B2334 801518F4 8FBF0014 */   lw        $ra, 0x14($sp)
/* B2338 801518F8 10000002 */  b          .L80151904_ovl3
/* B233C 801518FC 24020008 */   addiu     $v0, $zero, 0x8
.L80151900_ovl3:
/* B2340 80151900 00001025 */  or         $v0, $zero, $zero
.L80151904_ovl3:
/* B2344 80151904 03E00008 */  jr         $ra
/* B2348 80151908 27BD0018 */   addiu     $sp, $sp, 0x18
