glabel func_80164344_ovl5
/* 10B7B4 80164344 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B7B8 80164348 44876000 */  mtc1       $a3, $f12
/* 10B7BC 8016434C 28A10064 */  slti       $at, $a1, 0x64
/* 10B7C0 80164350 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B7C4 80164354 AFA40020 */  sw         $a0, 0x20($sp)
/* 10B7C8 80164358 AFA50024 */  sw         $a1, 0x24($sp)
/* 10B7CC 8016435C 14200003 */  bnez       $at, .L8016436C_ovl5
/* 10B7D0 80164360 AFA60028 */   sw        $a2, 0x28($sp)
/* 10B7D4 80164364 240F0063 */  addiu      $t7, $zero, 0x63
/* 10B7D8 80164368 AFAF0024 */  sw         $t7, 0x24($sp)
.L8016436C_ovl5:
/* 10B7DC 8016436C 2401000A */  addiu      $at, $zero, 0xA
/* 10B7E0 80164370 8FA50024 */  lw         $a1, 0x24($sp)
/* 10B7E4 80164374 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 10B7E8 80164378 4600640D */  trunc.w.s  $f16, $f12
/* 10B7EC 8016437C 00A1001A */  div        $zero, $a1, $at
/* 10B7F0 80164380 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 10B7F4 80164384 44813000 */  mtc1       $at, $f6
/* 10B7F8 80164388 44078000 */  mfc1       $a3, $f16
/* 10B7FC 8016438C 00002810 */  mfhi       $a1
/* 10B800 80164390 46062200 */  add.s      $f8, $f4, $f6
/* 10B804 80164394 8FA40020 */  lw         $a0, 0x20($sp)
/* 10B808 80164398 AFA70018 */  sw         $a3, 0x18($sp)
/* 10B80C 8016439C 4600428D */  trunc.w.s  $f10, $f8
/* 10B810 801643A0 44065000 */  mfc1       $a2, $f10
/* 10B814 801643A4 0C0590A9 */  jal        func_801642A4_ovl5
/* 10B818 801643A8 00000000 */   nop
/* 10B81C 801643AC 8FA50024 */  lw         $a1, 0x24($sp)
/* 10B820 801643B0 2401000A */  addiu      $at, $zero, 0xA
/* 10B824 801643B4 C7B20028 */  lwc1       $f18, 0x28($sp)
/* 10B828 801643B8 00A1001A */  div        $zero, $a1, $at
/* 10B82C 801643BC 4600910D */  trunc.w.s  $f4, $f18
/* 10B830 801643C0 00002812 */  mflo       $a1
/* 10B834 801643C4 8FA70018 */  lw         $a3, 0x18($sp)
/* 10B838 801643C8 8FA40020 */  lw         $a0, 0x20($sp)
/* 10B83C 801643CC 44062000 */  mfc1       $a2, $f4
/* 10B840 801643D0 0C0590A9 */  jal        func_801642A4_ovl5
/* 10B844 801643D4 00000000 */   nop
/* 10B848 801643D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B84C 801643DC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10B850 801643E0 03E00008 */  jr         $ra
/* 10B854 801643E4 00000000 */   nop
