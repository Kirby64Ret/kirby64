glabel func_80206274_ovl9
/* 1B42C4 80206274 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B42C8 80206278 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B42CC 8020627C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B42D0 80206280 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B42D4 80206284 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B42D8 80206288 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1B42DC 8020628C 3C18800F */  lui        $t8, %hi(D_800E9FE0)
/* 1B42E0 80206290 27189FE0 */  addiu      $t8, $t8, %lo(D_800E9FE0)
/* 1B42E4 80206294 000E7880 */  sll        $t7, $t6, 2
/* 1B42E8 80206298 01F82821 */  addu       $a1, $t7, $t8
/* 1B42EC 8020629C 8CA60000 */  lw         $a2, 0x0($a1)
/* 1B42F0 802062A0 54C0000C */  bnel       $a2, $zero, .L802062D4_ovl9
/* 1B42F4 802062A4 24CA0001 */   addiu     $t2, $a2, 0x1
/* 1B42F8 802062A8 0C029D9E */  jal        play_sound
/* 1B42FC 802062AC 24040256 */   addiu     $a0, $zero, 0x256
/* 1B4300 802062B0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B4304 802062B4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B4308 802062B8 3C09800F */  lui        $t1, %hi(D_800E9FE0)
/* 1B430C 802062BC 25299FE0 */  addiu      $t1, $t1, %lo(D_800E9FE0)
/* 1B4310 802062C0 8C590000 */  lw         $t9, 0x0($v0)
/* 1B4314 802062C4 00194080 */  sll        $t0, $t9, 2
/* 1B4318 802062C8 01092821 */  addu       $a1, $t0, $t1
/* 1B431C 802062CC 8CA60000 */  lw         $a2, 0x0($a1)
/* 1B4320 802062D0 24CA0001 */  addiu      $t2, $a2, 0x1
.L802062D4_ovl9:
/* 1B4324 802062D4 ACAA0000 */  sw         $t2, 0x0($a1)
/* 1B4328 802062D8 8C430000 */  lw         $v1, 0x0($v0)
/* 1B432C 802062DC 3C0B800F */  lui        $t3, %hi(D_800E9FE0)
/* 1B4330 802062E0 3C08800E */  lui        $t0, %hi(D_800E3210)
/* 1B4334 802062E4 00031880 */  sll        $v1, $v1, 2
/* 1B4338 802062E8 01635821 */  addu       $t3, $t3, $v1
/* 1B433C 802062EC 8D6B9FE0 */  lw         $t3, %lo(D_800E9FE0)($t3)
/* 1B4340 802062F0 24070003 */  addiu      $a3, $zero, 0x3
/* 1B4344 802062F4 25083210 */  addiu      $t0, $t0, %lo(D_800E3210)
/* 1B4348 802062F8 14EB001D */  bne        $a3, $t3, .L80206370_ovl9
/* 1B434C 802062FC 00682021 */   addu      $a0, $v1, $t0
/* 1B4350 80206300 44802000 */  mtc1       $zero, $f4
/* 1B4354 80206304 3C05800E */  lui        $a1, %hi(D_800E3750)
/* 1B4358 80206308 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* 1B435C 8020630C 00A36021 */  addu       $t4, $a1, $v1
/* 1B4360 80206310 E5840000 */  swc1       $f4, 0x0($t4)
/* 1B4364 80206314 8C430000 */  lw         $v1, 0x0($v0)
/* 1B4368 80206318 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1B436C 8020631C 8FA40018 */  lw         $a0, 0x18($sp)
/* 1B4370 80206320 00031880 */  sll        $v1, $v1, 2
/* 1B4374 80206324 00A36821 */  addu       $t5, $a1, $v1
/* 1B4378 80206328 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 1B437C 8020632C 00230821 */  addu       $at, $at, $v1
/* 1B4380 80206330 E4263210 */  swc1       $f6, %lo(D_800E3210)($at)
/* 1B4384 80206334 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1B4388 80206338 3C018022 */  lui        $at, %hi(D_8021DA9C_ovl9)
/* 1B438C 8020633C C428DA9C */  lwc1       $f8, %lo(D_8021DA9C_ovl9)($at)
/* 1B4390 80206340 3C01800E */  lui        $at, %hi(D_800E3C90)
/* 1B4394 80206344 000E7880 */  sll        $t7, $t6, 2
/* 1B4398 80206348 002F0821 */  addu       $at, $at, $t7
/* 1B439C 8020634C E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
/* 1B43A0 80206350 8C580000 */  lw         $t8, 0x0($v0)
/* 1B43A4 80206354 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1B43A8 80206358 0018C880 */  sll        $t9, $t8, 2
/* 1B43AC 8020635C 00390821 */  addu       $at, $at, $t9
/* 1B43B0 80206360 0C06658A */  jal        func_80199628_ovl7
/* 1B43B4 80206364 AC27DC50 */   sw        $a3, %lo(gEntityVtableIndexArray)($at)
/* 1B43B8 80206368 1000000D */  b          .L802063A0_ovl9
/* 1B43BC 8020636C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80206370_ovl9:
/* 1B43C0 80206370 3C013F00 */  lui        $at, (0x3F000000 >> 16)
/* 1B43C4 80206374 44818000 */  mtc1       $at, $f16
/* 1B43C8 80206378 C48A0000 */  lwc1       $f10, 0x0($a0)
/* 1B43CC 8020637C 3C01800F */  lui        $at, %hi(D_800E8920)
/* 1B43D0 80206380 46105482 */  mul.s      $f18, $f10, $f16
/* 1B43D4 80206384 46009107 */  neg.s      $f4, $f18
/* 1B43D8 80206388 E4840000 */  swc1       $f4, 0x0($a0)
/* 1B43DC 8020638C 8C490000 */  lw         $t1, 0x0($v0)
/* 1B43E0 80206390 00095080 */  sll        $t2, $t1, 2
/* 1B43E4 80206394 002A0821 */  addu       $at, $at, $t2
/* 1B43E8 80206398 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
/* 1B43EC 8020639C 8FBF0014 */  lw         $ra, 0x14($sp)
.L802063A0_ovl9:
/* 1B43F0 802063A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B43F4 802063A4 03E00008 */  jr         $ra
/* 1B43F8 802063A8 00000000 */   nop
