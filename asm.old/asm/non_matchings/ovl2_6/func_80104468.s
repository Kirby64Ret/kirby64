glabel func_80104468
/* 08CED8 80104468 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08CEDC 8010446C 27AE0020 */  addiu $t6, $sp, 0x20
/* 08CEE0 80104470 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08CEE4 80104474 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08CEE8 80104478 AFA40070 */  sw    $a0, 0x70($sp)
/* 08CEEC 8010447C AFA50074 */  sw    $a1, 0x74($sp)
/* 08CEF0 80104480 AFA60078 */  sw    $a2, 0x78($sp)
/* 08CEF4 80104484 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08CEF8 80104488 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08CEFC 8010448C 8C880000 */  lw    $t0, ($a0)
/* 08CF00 80104490 27AF0028 */  addiu $t7, $sp, 0x28
/* 08CF04 80104494 27A90034 */  addiu $t1, $sp, 0x34
/* 08CF08 80104498 ADE80000 */  sw    $t0, ($t7)
/* 08CF0C 8010449C 8C990004 */  lw    $t9, 4($a0)
/* 08CF10 801044A0 3C0D8010 */  lui   $t5, %hi(func_801023FC) # $t5, 0x8010
/* 08CF14 801044A4 3C0E8010 */  lui   $t6, %hi(func_80101DA8) # $t6, 0x8010
/* 08CF18 801044A8 ADF90004 */  sw    $t9, 4($t7)
/* 08CF1C 801044AC 8C880008 */  lw    $t0, 8($a0)
/* 08CF20 801044B0 25AD23FC */  addiu $t5, %lo(func_801023FC) # addiu $t5, $t5, 0x23fc
/* 08CF24 801044B4 25CE1DA8 */  addiu $t6, %lo(func_80101DA8) # addiu $t6, $t6, 0x1da8
/* 08CF28 801044B8 ADE80008 */  sw    $t0, 8($t7)
/* 08CF2C 801044BC 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08CF30 801044C0 8D4C0000 */  lw    $t4, ($t2)
/* 08CF34 801044C4 AD2C0000 */  sw    $t4, ($t1)
/* 08CF38 801044C8 8D4B0004 */  lw    $t3, 4($t2)
/* 08CF3C 801044CC AD2B0004 */  sw    $t3, 4($t1)
/* 08CF40 801044D0 8D4C0008 */  lw    $t4, 8($t2)
/* 08CF44 801044D4 AD2C0008 */  sw    $t4, 8($t1)
/* 08CF48 801044D8 8FAF0078 */  lw    $t7, 0x78($sp)
/* 08CF4C 801044DC 8FB8008C */  lw    $t8, 0x8c($sp)
/* 08CF50 801044E0 AFA0004C */  sw    $zero, 0x4c($sp)
/* 08CF54 801044E4 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08CF58 801044E8 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08CF5C 801044EC AFA00058 */  sw    $zero, 0x58($sp)
/* 08CF60 801044F0 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08CF64 801044F4 8FA70088 */  lw    $a3, 0x88($sp)
/* 08CF68 801044F8 8FA60084 */  lw    $a2, 0x84($sp)
/* 08CF6C 801044FC 8FA50080 */  lw    $a1, 0x80($sp)
/* 08CF70 80104500 8FA4007C */  lw    $a0, 0x7c($sp)
/* 08CF74 80104504 AFAF0054 */  sw    $t7, 0x54($sp)
/* 08CF78 80104508 0C040ED6 */  jal   func_80103B58
/* 08CF7C 8010450C AFB80010 */   sw    $t8, 0x10($sp)
/* 08CF80 80104510 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08CF84 80104514 27BD0070 */  addiu $sp, $sp, 0x70
/* 08CF88 80104518 03E00008 */  jr    $ra
/* 08CF8C 8010451C 00000000 */   nop   
.type func_80104468, @function
.size func_80104468, . - func_80104468
