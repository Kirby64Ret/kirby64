glabel func_801DDC58_ovl13 # 21
/* 1F5BD8 801DDC58 3C028005 */  lui         $v0, %hi(D_8004A7C4)
/* 1F5BDC 801DDC5C 2442A7C4 */  addiu       $v0, $v0, %lo(D_8004A7C4)
/* 1F5BE0 801DDC60 8C430000 */  lw          $v1, 0x0($v0)
/* 1F5BE4 801DDC64 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F5BE8 801DDC68 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F5BEC 801DDC6C AFA40018 */  sw          $a0, 0x18($sp)
/* 1F5BF0 801DDC70 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F5BF4 801DDC74 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1F5BF8 801DDC78 240E0003 */  addiu       $t6, $zero, 0x3
/* 1F5BFC 801DDC7C 000FC080 */  sll         $t8, $t7, 2
/* 1F5C00 801DDC80 00380821 */  addu        $at, $at, $t8
/* 1F5C04 801DDC84 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1F5C08 801DDC88 8C680000 */  lw          $t0, 0x0($v1)
/* 1F5C0C 801DDC8C 3C0A800E */  lui         $t2, %hi(D_800E1B50)
/* 1F5C10 801DDC90 3C19801E */  lui         $t9, %hi(D_801D93A8)
/* 1F5C14 801DDC94 00084880 */  sll         $t1, $t0, 2
/* 1F5C18 801DDC98 01495021 */  addu        $t2, $t2, $t1
/* 1F5C1C 801DDC9C 8D4A1B50 */  lw          $t2, %lo(D_800E1B50)($t2)
/* 1F5C20 801DDCA0 273993A8 */  addiu       $t9, $t9, %lo(D_801D93A8)
/* 1F5C24 801DDCA4 3C04801E */  lui         $a0, %hi(D_801DAAF0)
/* 1F5C28 801DDCA8 AD59008C */  sw          $t9, 0x8C($t2)
/* 1F5C2C 801DDCAC 8C4B0000 */  lw          $t3, 0x0($v0)
/* 1F5C30 801DDCB0 3C01800E */  lui         $at, %hi(D_800E0490)
/* 1F5C34 801DDCB4 2484AAF0 */  addiu       $a0, $a0, %lo(D_801DAAF0)
/* 1F5C38 801DDCB8 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1F5C3C 801DDCBC 000C6880 */  sll         $t5, $t4, 2
/* 1F5C40 801DDCC0 002D0821 */  addu        $at, $at, $t5
/* 1F5C44 801DDCC4 0C068AB7 */  jal         func_801A2ADC_ovl7
/* 1F5C48 801DDCC8 AC240490 */   sw         $a0, %lo(D_800E0490)($at)
/* 1F5C4C 801DDCCC 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 1F5C50 801DDCD0 24A5A7C4 */  addiu       $a1, $a1, %lo(D_8004A7C4)
/* 1F5C54 801DDCD4 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1F5C58 801DDCD8 3C09800E */  lui         $t1, %hi(D_800E1B50)
/* 1F5C5C 801DDCDC 3C01801E */  lui         $at, %hi(D_801E5CDC_ovl13)
/* 1F5C60 801DDCE0 8DD80000 */  lw          $t8, 0x0($t6)
/* 1F5C64 801DDCE4 3C0F801E */  lui         $t7, %hi(D_801DAD8C)
/* 1F5C68 801DDCE8 C4205CDC */  lwc1        $f0, %lo(D_801E5CDC_ovl13)($at)
/* 1F5C6C 801DDCEC 00184080 */  sll         $t0, $t8, 2
/* 1F5C70 801DDCF0 01284821 */  addu        $t1, $t1, $t0
/* 1F5C74 801DDCF4 8D291B50 */  lw          $t1, %lo(D_800E1B50)($t1)
/* 1F5C78 801DDCF8 25EFAD8C */  addiu       $t7, $t7, %lo(D_801DAD8C)
/* 1F5C7C 801DDCFC 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 1F5C80 801DDD00 AD2F0098 */  sw          $t7, 0x98($t1)
/* 1F5C84 801DDD04 8CA30000 */  lw          $v1, 0x0($a1)
/* 1F5C88 801DDD08 2404000A */  addiu       $a0, $zero, 0xA
/* 1F5C8C 801DDD0C 8C620000 */  lw          $v0, 0x0($v1)
/* 1F5C90 801DDD10 00021080 */  sll         $v0, $v0, 2
/* 1F5C94 801DDD14 00220821 */  addu        $at, $at, $v0
/* 1F5C98 801DDD18 C42464D0 */  lwc1        $f4, %lo(D_800E64D0)($at)
/* 1F5C9C 801DDD1C 3C01800E */  lui         $at, %hi(D_800E6690)
/* 1F5CA0 801DDD20 00220821 */  addu        $at, $at, $v0
/* 1F5CA4 801DDD24 46002182 */  mul.s       $f6, $f4, $f0
/* 1F5CA8 801DDD28 E4266690 */  swc1        $f6, %lo(D_800E6690)($at)
/* 1F5CAC 801DDD2C 8C620000 */  lw          $v0, 0x0($v1)
/* 1F5CB0 801DDD30 3C01800E */  lui         $at, %hi(D_800E3210)
/* 1F5CB4 801DDD34 00021080 */  sll         $v0, $v0, 2
/* 1F5CB8 801DDD38 00220821 */  addu        $at, $at, $v0
/* 1F5CBC 801DDD3C C4283210 */  lwc1        $f8, %lo(D_800E3210)($at)
/* 1F5CC0 801DDD40 3C01800E */  lui         $at, %hi(D_800E3750)
/* 1F5CC4 801DDD44 00220821 */  addu        $at, $at, $v0
/* 1F5CC8 801DDD48 46004282 */  mul.s       $f10, $f8, $f0
/* 1F5CCC 801DDD4C 0C002DAF */  jal         finish_current_thread
/* 1F5CD0 801DDD50 E42A3750 */   swc1       $f10, %lo(D_800E3750)($at)
/* 1F5CD4 801DDD54 0C02CCFD */  jal         func_800B33F4
/* 1F5CD8 801DDD58 00000000 */   nop
/* 1F5CDC 801DDD5C 0C02BC9F */  jal         func_800AF27C
/* 1F5CE0 801DDD60 00000000 */   nop
/* 1F5CE4 801DDD64 3C0A8005 */  lui         $t2, %hi(D_8004A7C4)
/* 1F5CE8 801DDD68 8D4AA7C4 */  lw          $t2, %lo(D_8004A7C4)($t2)
/* 1F5CEC 801DDD6C 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F5CF0 801DDD70 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F5CF4 801DDD74 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1F5CF8 801DDD78 24190004 */  addiu       $t9, $zero, 0x4
/* 1F5CFC 801DDD7C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F5D00 801DDD80 000B6080 */  sll         $t4, $t3, 2
/* 1F5D04 801DDD84 002C0821 */  addu        $at, $at, $t4
/* 1F5D08 801DDD88 03E00008 */  jr          $ra
/* 1F5D0C 801DDD8C AC39DC50 */   sw         $t9, %lo(gEntityVtableIndexArray)($at)
.type func_801DDC58_ovl13, @function

.size func_801DDC58_ovl13, . - func_801DDC58_ovl13
.section .late_rodata
glabel D_801E5CDC_ovl13
/* 1FDC5C 801E5CDC */ .word 0xBDCCCCCD

