glabel func_80007A74
/* 008674 80007A74 3C0E8005 */  lui   $t6, %hi(D_8004A508) # $t6, 0x8005
/* 008678 80007A78 8DCEA508 */  lw    $t6, %lo(D_8004A508)($t6)
/* 00867C 80007A7C 3C0F8005 */  lui   $t7, %hi(D_8004A50C) # $t7, 0x8005
/* 008680 80007A80 3C028005 */  lui   $v0, %hi(D_8004A510) # $v0, 0x8005
/* 008684 80007A84 AC8E0024 */  sw    $t6, 0x24($a0)
/* 008688 80007A88 8DEFA50C */  lw    $t7, %lo(D_8004A50C)($t7)
/* 00868C 80007A8C 2442A510 */  addiu $v0, %lo(D_8004A510) # addiu $v0, $v0, -0x5af0
/* 008690 80007A90 3C198005 */  lui   $t9, %hi(D_8004A524) # $t9, 0x8005
/* 008694 80007A94 AC8F0028 */  sw    $t7, 0x28($a0)
/* 008698 80007A98 8C580000 */  lw    $t8, ($v0)
/* 00869C 80007A9C 3C088005 */  lui   $t0, %hi(D_8004A526) # $t0, 0x8005
/* 0086A0 80007AA0 3C098005 */  lui   $t1, %hi(D_8004A528) # $t1, 0x8005
/* 0086A4 80007AA4 AC98002C */  sw    $t8, 0x2c($a0)
/* 0086A8 80007AA8 8739A524 */  lh    $t9, %lo(D_8004A524)($t9)
/* 0086AC 80007AAC 3C0A8005 */  lui   $t2, %hi(D_8004A52A) # $t2, 0x8005
/* 0086B0 80007AB0 3C018005 */  lui   $at, 0x8005
/* 0086B4 80007AB4 A4990030 */  sh    $t9, 0x30($a0)
/* 0086B8 80007AB8 8508A526 */  lh    $t0, %lo(D_8004A526)($t0)
/* 0086BC 80007ABC A4880032 */  sh    $t0, 0x32($a0)
/* 0086C0 80007AC0 8529A528 */  lh    $t1, %lo(D_8004A528)($t1)
/* 0086C4 80007AC4 A4890034 */  sh    $t1, 0x34($a0)
/* 0086C8 80007AC8 854AA52A */  lh    $t2, %lo(D_8004A52A)($t2)
/* 0086CC 80007ACC A48A0036 */  sh    $t2, 0x36($a0)
/* 0086D0 80007AD0 AC400000 */  sw    $zero, ($v0)
/* 0086D4 80007AD4 03E00008 */  jr    $ra
/* 0086D8 80007AD8 AC20A514 */   sw    $zero, -0x5aec($at)
