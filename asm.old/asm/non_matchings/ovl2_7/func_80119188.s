glabel func_80119188
/* 0A1BF8 80119188 3C0E800C */  lui   $t6, %hi(D_800BE508) # $t6, 0x800c
/* 0A1BFC 8011918C 8DCEE508 */  lw    $t6, %lo(D_800BE508)($t6)
/* 0A1C00 80119190 3C0F800D */ lui $t7, %hi(D_800D6E20)
/* 0A1C04 80119194 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0A1C08 80119198 01EE7821 */  addu  $t7, $t7, $t6
/* 0A1C0C 8011919C 91EF6E20 */ lbu $t7, %lo(D_800D6E20)($t7)
/* 0A1C10 801191A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0A1C14 801191A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 0A1C18 801191A8 11E00005 */  beqz  $t7, .L801191C0_ovl2
/* 0A1C1C 801191AC 2405001E */   li    $a1, 30
/* 0A1C20 801191B0 0C046298 */  jal   func_80118A60
/* 0A1C24 801191B4 2405003C */   li    $a1, 60
/* 0A1C28 801191B8 10000026 */  b     .L80119254_ovl2
/* 0A1C2C 801191BC 00000000 */   nop   
.L801191C0_ovl2:
/* 0A1C30 801191C0 0C046298 */  jal   func_80118A60
/* 0A1C34 801191C4 AFA40020 */   sw    $a0, 0x20($sp)
/* 0A1C38 801191C8 3C10800D */  lui   $s0, %hi(D_800D6E18) # $s0, 0x800d
/* 0A1C3C 801191CC 26106E18 */  addiu $s0, %lo(D_800D6E18) # addiu $s0, $s0, 0x6e18
/* 0A1C40 801191D0 8E180000 */  lw    $t8, ($s0)
/* 0A1C44 801191D4 57000007 */  bnezl $t8, .L801191F4_ovl2
/* 0A1C48 801191D8 8FA90020 */   lw    $t1, 0x20($sp)
.L801191DC_ovl2:
/* 0A1C4C 801191DC 0C002DAF */  jal   finish_current_thread
/* 0A1C50 801191E0 24040001 */   li    $a0, 1
/* 0A1C54 801191E4 8E190000 */  lw    $t9, ($s0)
/* 0A1C58 801191E8 1320FFFC */  beqz  $t9, .L801191DC_ovl2
/* 0A1C5C 801191EC 00000000 */   nop   
/* 0A1C60 801191F0 8FA90020 */  lw    $t1, 0x20($sp)
.L801191F4_ovl2:
/* 0A1C64 801191F4 3C088011 */  lui   $t0, %hi(D_80114E80) # $t0, 0x8011
/* 0A1C68 801191F8 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 0A1C6C 801191FC 25084E80 */  addiu $t0, %lo(D_80114E80) # addiu $t0, $t0, 0x4e80
/* 0A1C70 80119200 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 0A1C74 80119204 AD280048 */  sw    $t0, 0x48($t1)
/* 0A1C78 80119208 0C02BB30 */  jal   func_800AECC0
/* 0A1C7C 8011920C C60C0000 */   lwc1  $f12, ($s0)
/* 0A1C80 80119210 0C02BB48 */  jal   func_800AED20
/* 0A1C84 80119214 C60C0000 */   lwc1  $f12, ($s0)
/* 0A1C88 80119218 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0A1C8C 8011921C 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0A1C90 80119220 3C05800E */ lui $a1, %hi(gEntitiesNextPosXArray)
/* 0A1C94 80119224 3C06800E */ lui $a2, %hi(gEntitiesNextPosYArray)
/* 0A1C98 80119228 8D420000 */  lw    $v0, ($t2)
/* 0A1C9C 8011922C 3C07800E */ lui $a3, %hi(gEntitiesNextPosZArray)
/* 0A1CA0 80119230 24040001 */  li    $a0, 1
/* 0A1CA4 80119234 00021080 */  sll   $v0, $v0, 2
/* 0A1CA8 80119238 00A22821 */  addu  $a1, $a1, $v0
/* 0A1CAC 8011923C 00C23021 */  addu  $a2, $a2, $v0
/* 0A1CB0 80119240 00E23821 */  addu  $a3, $a3, $v0
/* 0A1CB4 80119244 8CE72950 */ lw $a3, %lo(gEntitiesNextPosZArray)($a3)
/* 0A1CB8 80119248 8CC62790 */ lw $a2, %lo(gEntitiesNextPosYArray)($a2)
/* 0A1CBC 8011924C 0C03F5D5 */  jal   func_800FD754
/* 0A1CC0 80119250 8CA525D0 */ lw $a1, %lo(gEntitiesNextPosXArray)($a1)
.L80119254_ovl2:
/* 0A1CC4 80119254 0C00236A */  jal   func_80008DA8
/* 0A1CC8 80119258 00002025 */   move  $a0, $zero
/* 0A1CCC 8011925C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0A1CD0 80119260 8FB00018 */  lw    $s0, 0x18($sp)
/* 0A1CD4 80119264 27BD0020 */  addiu $sp, $sp, 0x20
/* 0A1CD8 80119268 03E00008 */  jr    $ra
/* 0A1CDC 8011926C 00000000 */   nop   
.type func_80119188, @function
.size func_80119188, . - func_80119188
