glabel func_800F9C54
/* 0826C4 800F9C54 44856000 */  mtc1  $a1, $f12
/* 0826C8 800F9C58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0826CC 800F9C5C AFA60030 */  sw    $a2, 0x30($sp)
/* 0826D0 800F9C60 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0826D4 800F9C64 AFA40028 */  sw    $a0, 0x28($sp)
/* 0826D8 800F9C68 00802825 */  move  $a1, $a0
/* 0826DC 800F9C6C 44066000 */  mfc1  $a2, $f12
/* 0826E0 800F9C70 0C0078C0 */  jal   func_8001E300_ovl2
/* 0826E4 800F9C74 27A40018 */   addiu $a0, $sp, 0x18
/* 0826E8 800F9C78 8FA40030 */  lw    $a0, 0x30($sp)
/* 0826EC 800F9C7C 0C029157 */  jal   vec3_dist_square
/* 0826F0 800F9C80 27A50018 */   addiu $a1, $sp, 0x18
/* 0826F4 800F9C84 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0826F8 800F9C88 27BD0028 */  addiu $sp, $sp, 0x28
/* 0826FC 800F9C8C 03E00008 */  jr    $ra
/* 082700 800F9C90 00000000 */   nop   
.type func_800F9C54, @function
.size func_800F9C54, . - func_800F9C54
