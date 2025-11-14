glabel func_801DDC18_ovl13 # 20
/* 1F5B98 801DDC18 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5B9C 801DDC1C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5BA0 801DDC20 0C06775E */  jal         func_8019DD78_ovl7
/* 1F5BA4 801DDC24 00000000 */   nop
/* 1F5BA8 801DDC28 2401FFFF */  addiu       $at, $zero, -0x1
/* 1F5BAC 801DDC2C 10410005 */  beq         $v0, $at, L801DDC44_ovl13
/* 1F5BB0 801DDC30 00401825 */   move       $v1, $v0
/* 1F5BB4 801DDC34 00027080 */  sll         $t6, $v0, 2
/* 1F5BB8 801DDC38 3C01800F */  lui         $at, %hi(D_800E8E60)
/* 1F5BBC 801DDC3C 002E0821 */  addu        $at, $at, $t6
/* 1F5BC0 801DDC40 AC208E60 */  sw          $zero, %lo(D_800E8E60)($at)
glabel L801DDC44_ovl13
/* 1F5BC4 801DDC44 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F5BC8 801DDC48 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F5BCC 801DDC4C 00601025 */  move        $v0, $v1
/* 1F5BD0 801DDC50 03E00008 */  jr          $ra
/* 1F5BD4 801DDC54 00000000 */   nop
.type func_801DDC18_ovl13, @function

.size func_801DDC18_ovl13, . - func_801DDC18_ovl13
