glabel fatal_printf
/* 023C9C 8002309C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 023CA0 800230A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 023CA4 800230A4 AFA40028 */  sw    $a0, 0x28($sp)
/* 023CA8 800230A8 240E0001 */  li    $t6, 1
/* 023CAC 800230AC 3C018004 */  lui   $at, %hi(D_8003F688) # $at, 0x8004
/* 023CB0 800230B0 AFB10018 */  sw    $s1, 0x18($sp)
/* 023CB4 800230B4 AFB00014 */  sw    $s0, 0x14($sp)
/* 023CB8 800230B8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 023CBC 800230BC AFA60030 */  sw    $a2, 0x30($sp)
/* 023CC0 800230C0 AFA70034 */  sw    $a3, 0x34($sp)
/* 023CC4 800230C4 A02EF688 */  sb    $t6, %lo(D_8003F688)($at)
/* 023CC8 800230C8 0C00CFF0 */  jal   osGetThreadPri
/* 023CCC 800230CC 00002025 */   move  $a0, $zero
/* 023CD0 800230D0 AFA20020 */  sw    $v0, 0x20($sp)
/* 023CD4 800230D4 00002025 */  move  $a0, $zero
/* 023CD8 800230D8 0C00CFB8 */  jal   osSetThreadPri
/* 023CDC 800230DC 240500FA */   li    $a1, 250
/* 023CE0 800230E0 00002025 */  move  $a0, $zero
/* 023CE4 800230E4 0C008892 */  jal   func_80022248
/* 023CE8 800230E8 00002825 */   move  $a1, $zero
/* 023CEC 800230EC 24042030 */  li    $a0, 8240
/* 023CF0 800230F0 0C008892 */  jal   func_80022248
/* 023CF4 800230F4 00002825 */   move  $a1, $zero
/* 023CF8 800230F8 00002025 */  move  $a0, $zero
/* 023CFC 800230FC 0C008892 */  jal   func_80022248
/* 023D00 80023100 00002825 */   move  $a1, $zero
/* 023D04 80023104 24040808 */  li    $a0, 2056
/* 023D08 80023108 0C008892 */  jal   func_80022248
/* 023D0C 8002310C 00002825 */   move  $a1, $zero
/* 023D10 80023110 00002025 */  move  $a0, $zero
/* 023D14 80023114 0C008892 */  jal   func_80022248
/* 023D18 80023118 00002825 */   move  $a1, $zero
/* 023D1C 8002311C 34048200 */  li    $a0, 33280
/* 023D20 80023120 0C008892 */  jal   func_80022248
/* 023D24 80023124 00002825 */   move  $a1, $zero
/* 023D28 80023128 00002025 */  move  $a0, $zero
/* 023D2C 8002312C 0C008892 */  jal   func_80022248
/* 023D30 80023130 00002825 */   move  $a1, $zero
/* 023D34 80023134 24044100 */  li    $a0, 16640
/* 023D38 80023138 0C008892 */  jal   func_80022248
/* 023D3C 8002313C 00002825 */   move  $a1, $zero
/* 023D40 80023140 00002025 */  move  $a0, $zero
/* 023D44 80023144 0C008892 */  jal   func_80022248
/* 023D48 80023148 00002825 */   move  $a1, $zero
/* 023D4C 8002314C 24040404 */  li    $a0, 1028
/* 023D50 80023150 0C008892 */  jal   func_80022248
/* 023D54 80023154 00002825 */   move  $a1, $zero
/* 023D58 80023158 03A08825 */  move  $s1, $sp
/* 023D5C 8002315C 2631002F */  addiu $s1, $s1, 0x2f
/* 023D60 80023160 2401FFFC */  li    $at, -4
/* 023D64 80023164 02218824 */  and   $s1, $s1, $at
.L80023168_ovl0:
/* 023D68 80023168 0C00E46C */  jal   osViGetCurrentFramebuffer
/* 023D6C 8002316C 00000000 */   nop   
/* 023D70 80023170 00408025 */  move  $s0, $v0
/* 023D74 80023174 24040019 */  li    $a0, 25
/* 023D78 80023178 24050014 */  li    $a1, 20
/* 023D7C 8002317C 2406010E */  li    $a2, 270
/* 023D80 80023180 0C00874D */  jal   crash_screen_draw_rect
/* 023D84 80023184 24070019 */   li    $a3, 25
/* 023D88 80023188 2404001E */  li    $a0, 30
/* 023D8C 8002318C 0C008A91 */  jal   func_80022A44
/* 023D90 80023190 24050019 */   li    $a1, 25
/* 023D94 80023194 8FA40028 */  lw    $a0, 0x28($sp)
/* 023D98 80023198 0C008A96 */  jal   crash_screen_vprint
/* 023D9C 8002319C 02202825 */   move  $a1, $s1
/* 023DA0 800231A0 00002025 */  move  $a0, $zero
/* 023DA4 800231A4 0C008892 */  jal   func_80022248
/* 023DA8 800231A8 02002825 */   move  $a1, $s0
/* 023DAC 800231AC 1440FFEE */  bnez  $v0, .L80023168_ovl0
/* 023DB0 800231B0 00000000 */   nop   
/* 023DB4 800231B4 24042030 */  li    $a0, 8240
/* 023DB8 800231B8 0C008892 */  jal   func_80022248
/* 023DBC 800231BC 02002825 */   move  $a1, $s0
/* 023DC0 800231C0 1440FFE9 */  bnez  $v0, .L80023168_ovl0
/* 023DC4 800231C4 00000000 */   nop   
/* 023DC8 800231C8 00002025 */  move  $a0, $zero
/* 023DCC 800231CC 0C00CFB8 */  jal   osSetThreadPri
/* 023DD0 800231D0 8FA50020 */   lw    $a1, 0x20($sp)
/* 023DD4 800231D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 023DD8 800231D8 3C018004 */  lui   $at, %hi(D_8003F688) # $at, 0x8004
/* 023DDC 800231DC 8FB00014 */  lw    $s0, 0x14($sp)
/* 023DE0 800231E0 8FB10018 */  lw    $s1, 0x18($sp)
/* 023DE4 800231E4 A020F688 */  sb    $zero, %lo(D_8003F688)($at)
/* 023DE8 800231E8 03E00008 */  jr    $ra
/* 023DEC 800231EC 27BD0028 */   addiu $sp, $sp, 0x28
.size fatal_printf, . - fatal_printf
