glabel func_8015A31C_ovl3
/* 0BAD5C 8015A31C AFA40000 */  sw    $a0, ($sp)
/* 0BAD60 8015A320 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0BAD64 8015A324 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0BAD68 8015A328 8C820044 */  lw    $v0, 0x44($a0)
/* 0BAD6C 8015A32C 24030001 */  li    $v1, 1
/* 0BAD70 8015A330 24050002 */  li    $a1, 2
/* 0BAD74 8015A334 10430005 */  beq   $v0, $v1, .L8015A34C_ovl3
/* 0BAD78 8015A338 00000000 */   nop   
/* 0BAD7C 8015A33C 5045002C */  beql  $v0, $a1, .L8015A3F0_ovl3
/* 0BAD80 8015A340 8C890030 */   lw    $t1, 0x30($a0)
/* 0BAD84 8015A344 03E00008 */  jr    $ra
/* 0BAD88 8015A348 00000000 */   nop   
.type func_8015A31C_ovl3, @function

.L8015A34C_ovl3:
/* 0BAD8C 8015A34C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0BAD90 8015A350 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0BAD94 8015A354 3C0E800E */  lui   $t6, 0x800e
/* 0BAD98 8015A358 24010005 */  li    $at, 5
/* 0BAD9C 8015A35C 8C430000 */  lw    $v1, ($v0)
/* 0BADA0 8015A360 00031880 */  sll   $v1, $v1, 2
/* 0BADA4 8015A364 01C37021 */  addu  $t6, $t6, $v1
/* 0BADA8 8015A368 8DCE5F90 */  lw    $t6, 0x5f90($t6)
/* 0BADAC 8015A36C 15C10035 */  bne   $t6, $at, .L8015A444_ovl3
/* 0BADB0 8015A370 3C01800E */   lui   $at, 0x800e
/* 0BADB4 8015A374 00230821 */  addu  $at, $at, $v1
/* 0BADB8 8015A378 C4246BD0 */  lwc1  $f4, 0x6bd0($at)
/* 0BADBC 8015A37C 3C018019 */  lui   $at, %hi(D_80196FB4) # $at, 0x8019
/* 0BADC0 8015A380 C4266FB4 */  lwc1  $f6, %lo(D_80196FB4)($at)
/* 0BADC4 8015A384 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0BADC8 8015A388 4604303E */  c.le.s $f6, $f4
/* 0BADCC 8015A38C 00000000 */  nop   
/* 0BADD0 8015A390 4500002C */  bc1f  .L8015A444_ovl3
/* 0BADD4 8015A394 00000000 */   nop   
/* 0BADD8 8015A398 44804000 */  mtc1  $zero, $f8
/* 0BADDC 8015A39C 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0BADE0 8015A3A0 00C37821 */  addu  $t7, $a2, $v1
/* 0BADE4 8015A3A4 E5E80000 */  swc1  $f8, ($t7)
/* 0BADE8 8015A3A8 8C430000 */  lw    $v1, ($v0)
/* 0BADEC 8015A3AC 3C01800E */  lui   $at, 0x800e
/* 0BADF0 8015A3B0 24050002 */  li    $a1, 2
/* 0BADF4 8015A3B4 00031880 */  sll   $v1, $v1, 2
/* 0BADF8 8015A3B8 00C3C021 */  addu  $t8, $a2, $v1
/* 0BADFC 8015A3BC C70A0000 */  lwc1  $f10, ($t8)
/* 0BAE00 8015A3C0 00230821 */  addu  $at, $at, $v1
/* 0BAE04 8015A3C4 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 0BAE08 8015A3C8 8C590000 */  lw    $t9, ($v0)
/* 0BAE0C 8015A3CC 3C018019 */  lui   $at, %hi(D_80196FB8) # $at, 0x8019
/* 0BAE10 8015A3D0 C4306FB8 */  lwc1  $f16, %lo(D_80196FB8)($at)
/* 0BAE14 8015A3D4 3C01800E */  lui   $at, 0x800e
/* 0BAE18 8015A3D8 00194080 */  sll   $t0, $t9, 2
/* 0BAE1C 8015A3DC 00280821 */  addu  $at, $at, $t0
/* 0BAE20 8015A3E0 E4306850 */  swc1  $f16, 0x6850($at)
/* 0BAE24 8015A3E4 03E00008 */  jr    $ra
/* 0BAE28 8015A3E8 AC850044 */   sw    $a1, 0x44($a0)
/* 0BAE2C 8015A3EC 8C890030 */  lw    $t1, 0x30($a0)
.L8015A3F0_ovl3:
/* 0BAE30 8015A3F0 3C0A800C */  lui   $t2, %hi(D_800BE500) # $t2, 0x800c
/* 0BAE34 8015A3F4 3C01800C */  lui   $at, %hi(D_800BE52C) # $at, 0x800c
/* 0BAE38 8015A3F8 11200012 */  beqz  $t1, .L8015A444_ovl3
/* 0BAE3C 8015A3FC 3C0B800C */   lui   $t3, %hi(D_800BE504) # $t3, 0x800c
/* 0BAE40 8015A400 8D4AE500 */  lw    $t2, %lo(D_800BE500)($t2)
/* 0BAE44 8015A404 8D6BE504 */  lw    $t3, %lo(D_800BE504)($t3)
/* 0BAE48 8015A408 3C0C800C */  lui   $t4, %hi(D_800BE508) # $t4, 0x800c
/* 0BAE4C 8015A40C 8D8CE508 */  lw    $t4, %lo(D_800BE508)($t4)
/* 0BAE50 8015A410 AC2AE52C */  sw    $t2, %lo(D_800BE52C)($at)
/* 0BAE54 8015A414 3C01800C */  lui   $at, %hi(D_800BE530) # $at, 0x800c
/* 0BAE58 8015A418 AC2BE530 */  sw    $t3, %lo(D_800BE530)($at)
/* 0BAE5C 8015A41C 3C01800C */  lui   $at, %hi(D_800BE534) # $at, 0x800c
/* 0BAE60 8015A420 258D0001 */  addiu $t5, $t4, 1
/* 0BAE64 8015A424 AC2DE534 */  sw    $t5, %lo(D_800BE534)($at)
/* 0BAE68 8015A428 3C01800C */  lui   $at, %hi(D_800BE538) # $at, 0x800c
/* 0BAE6C 8015A42C AC20E538 */  sw    $zero, %lo(D_800BE538)($at)
/* 0BAE70 8015A430 3C01800C */  lui   $at, %hi(D_800BE4FC) # $at, 0x800c
/* 0BAE74 8015A434 AC23E4FC */  sw    $v1, %lo(D_800BE4FC)($at)
/* 0BAE78 8015A438 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0BAE7C 8015A43C AC25E4F8 */  sw    $a1, %lo(D_800BE4F8)($at)
/* 0BAE80 8015A440 AC800030 */  sw    $zero, 0x30($a0)
.L8015A444_ovl3:
/* 0BAE84 8015A444 03E00008 */  jr    $ra
/* 0BAE88 8015A448 00000000 */   nop   
.type func_8015A31C_ovl3, @function
.size func_8015A31C_ovl3, . - func_8015A31C_ovl3
