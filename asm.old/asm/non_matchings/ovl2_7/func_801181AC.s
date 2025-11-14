glabel func_801181AC
/* 0A0C1C 801181AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0A0C20 801181B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A0C24 801181B4 8C820000 */  lw    $v0, ($a0)
/* 0A0C28 801181B8 3C03800E */  lui   $v1, %hi(gEntitiesNextPosXArray) # $v1, 0x800e
/* 0A0C2C 801181BC 246325D0 */  addiu $v1, %lo(gEntitiesNextPosXArray) # addiu $v1, $v1, 0x25d0
/* 0A0C30 801181C0 00027080 */  sll   $t6, $v0, 2
/* 0A0C34 801181C4 006E7821 */  addu  $t7, $v1, $t6
/* 0A0C38 801181C8 C5E60000 */  lwc1  $f6, ($t7)
/* 0A0C3C 801181CC C4640000 */  lwc1  $f4, ($v1)
/* 0A0C40 801181D0 44804000 */  mtc1  $zero, $f8
/* 0A0C44 801181D4 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 0A0C48 801181D8 46062001 */  sub.s $f0, $f4, $f6
/* 0A0C4C 801181DC 44815000 */  mtc1  $at, $f10
/* 0A0C50 801181E0 3C19800E */ lui $t9, %hi(D_800E77A0)
/* 0A0C54 801181E4 0002C040 */  sll   $t8, $v0, 1
/* 0A0C58 801181E8 4608003C */  c.lt.s $f0, $f8
/* 0A0C5C 801181EC 0338C821 */  addu  $t9, $t9, $t8
/* 0A0C60 801181F0 45020004 */  bc1fl .L80118204_ovl2
/* 0A0C64 801181F4 46000086 */   mov.s $f2, $f0
/* 0A0C68 801181F8 10000002 */  b     .L80118204_ovl2
/* 0A0C6C 801181FC 46000087 */   neg.s $f2, $f0
/* 0A0C70 80118200 46000086 */  mov.s $f2, $f0
.L80118204_ovl2:
/* 0A0C74 80118204 460A103C */  c.lt.s $f2, $f10
/* 0A0C78 80118208 00000000 */  nop   
/* 0A0C7C 8011820C 45020015 */  bc1fl .L80118264_ovl2
/* 0A0C80 80118210 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0A0C84 80118214 973977A0 */ lhu $t9, %lo(D_800E77A0)($t9)
/* 0A0C88 80118218 3C098012 */  lui   $t1, %hi(D_80124E14) # $t1, 0x8012
/* 0A0C8C 8011821C 25294E14 */  addiu $t1, %lo(D_80124E14) # addiu $t1, $t1, 0x4e14
/* 0A0C90 80118220 001940C0 */  sll   $t0, $t9, 3
/* 0A0C94 80118224 01194023 */  subu  $t0, $t0, $t9
/* 0A0C98 80118228 00084080 */  sll   $t0, $t0, 2
/* 0A0C9C 8011822C 01091821 */  addu  $v1, $t0, $t1
/* 0A0CA0 80118230 8C640008 */  lw    $a0, 8($v1)
/* 0A0CA4 80118234 0C02A806 */  jal   func_800AA018
/* 0A0CA8 80118238 AFA30018 */   sw    $v1, 0x18($sp)
/* 0A0CAC 8011823C 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0A0CB0 80118240 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0A0CB4 80118244 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A0CB8 80118248 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0A0CBC 8011824C 8D6C0000 */  lw    $t4, ($t3)
/* 0A0CC0 80118250 8C6A0014 */  lw    $t2, 0x14($v1)
/* 0A0CC4 80118254 000C6880 */  sll   $t5, $t4, 2
/* 0A0CC8 80118258 002D0821 */  addu  $at, $at, $t5
/* 0A0CCC 8011825C AC2AEF90 */ sw $t2, %lo(D_800DEF90)($at)
/* 0A0CD0 80118260 8FBF0014 */  lw    $ra, 0x14($sp)
.L80118264_ovl2:
/* 0A0CD4 80118264 27BD0028 */  addiu $sp, $sp, 0x28
/* 0A0CD8 80118268 03E00008 */  jr    $ra
/* 0A0CDC 8011826C 00000000 */   nop   
.type func_801181AC, @function
.size func_801181AC, . - func_801181AC
