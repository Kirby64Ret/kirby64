glabel func_800B3008
/* 05B258 800B3008 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 05B25C 800B300C 248EFFF6 */  addiu $t6, $a0, -0xa
/* 05B260 800B3010 AFB00020 */  sw    $s0, 0x20($sp)
/* 05B264 800B3014 000E7843 */  sra   $t7, $t6, 1
/* 05B268 800B3018 000FC080 */  sll   $t8, $t7, 2
/* 05B26C 800B301C 3C10800D */ lui $s0, %hi(D_800D79D8)
/* 05B270 800B3020 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 05B274 800B3024 02188021 */  addu  $s0, $s0, $t8
/* 05B278 800B3028 3C01800D */  lui   $at, %hi(D_800D67E0) # $at, 0x800d
/* 05B27C 800B302C AFBF0024 */  sw    $ra, 0x24($sp)
/* 05B280 800B3030 8E1079D8 */ lw $s0, %lo(D_800D79D8)($s0)
/* 05B284 800B3034 C43467E0 */  lwc1  $f20, %lo(D_800D67E0)($at)
/* 05B288 800B3038 C6040074 */  lwc1  $f4, 0x74($s0)
.L800B303C_ovl1:
/* 05B28C 800B303C 4604A032 */  c.eq.s $f20, $f4
/* 05B290 800B3040 00000000 */  nop   
/* 05B294 800B3044 45030006 */  bc1tl .L800B3060_ovl1
/* 05B298 800B3048 8FBF0024 */   lw    $ra, 0x24($sp)
/* 05B29C 800B304C 0C002DAF */  jal   finish_current_thread
/* 05B2A0 800B3050 24040001 */   li    $a0, 1
/* 05B2A4 800B3054 1000FFF9 */  b     .L800B303C_ovl1
/* 05B2A8 800B3058 C6040074 */   lwc1  $f4, 0x74($s0)
/* 05B2AC 800B305C 8FBF0024 */  lw    $ra, 0x24($sp)
.L800B3060_ovl1:
/* 05B2B0 800B3060 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 05B2B4 800B3064 8FB00020 */  lw    $s0, 0x20($sp)
/* 05B2B8 800B3068 03E00008 */  jr    $ra
/* 05B2BC 800B306C 27BD0028 */   addiu $sp, $sp, 0x28
.type func_800B3008, @function
.size func_800B3008, . - func_800B3008
