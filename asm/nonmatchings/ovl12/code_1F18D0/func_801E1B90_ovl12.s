nonmatching func_801E1B90_ovl12, 0x144

glabel func_801E1B90_ovl12
    /* 1F1ED0 801E1B90 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1F1ED4 801E1B94 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1F1ED8 801E1B98 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1F1EDC 801E1B9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1F1EE0 801E1BA0 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 1F1EE4 801E1BA4 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* 1F1EE8 801E1BA8 3C18800E */  lui        $t8, %hi(D_800E0D50)
    /* 1F1EEC 801E1BAC 000E7880 */  sll        $t7, $t6, 2
    /* 1F1EF0 801E1BB0 002F0821 */  addu       $at, $at, $t7
    /* 1F1EF4 801E1BB4 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
    /* 1F1EF8 801E1BB8 8CA20000 */  lw         $v0, 0x0($a1)
    /* 1F1EFC 801E1BBC 3C01800E */  lui        $at, %hi(D_800E7B20)
    /* 1F1F00 801E1BC0 44802000 */  mtc1       $zero, $f4
    /* 1F1F04 801E1BC4 00021080 */  sll        $v0, $v0, 2
    /* 1F1F08 801E1BC8 0302C021 */  addu       $t8, $t8, $v0
    /* 1F1F0C 801E1BCC 8F180D50 */  lw         $t8, %lo(D_800E0D50)($t8)
    /* 1F1F10 801E1BD0 0018C880 */  sll        $t9, $t8, 2
    /* 1F1F14 801E1BD4 00390821 */  addu       $at, $at, $t9
    /* 1F1F18 801E1BD8 C4267B20 */  lwc1       $f6, %lo(D_800E7B20)($at)
    /* 1F1F1C 801E1BDC 3C01800E */  lui        $at, %hi(D_800DF310)
    /* 1F1F20 801E1BE0 46062032 */  c.eq.s     $f4, $f6
    /* 1F1F24 801E1BE4 00000000 */  nop
    /* 1F1F28 801E1BE8 45020007 */  bc1fl      .L801E1C08_ovl12
    /* 1F1F2C 801E1BEC 00220821 */   addu      $at, $at, $v0
    /* 1F1F30 801E1BF0 AC800048 */  sw         $zero, 0x48($a0)
    /* 1F1F34 801E1BF4 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1F1F38 801E1BF8 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1F1F3C 801E1BFC 8CA20000 */  lw         $v0, 0x0($a1)
    /* 1F1F40 801E1C00 00021080 */  sll        $v0, $v0, 2
    /* 1F1F44 801E1C04 00220821 */  addu       $at, $at, $v0
  .L801E1C08_ovl12:
    /* 1F1F48 801E1C08 AC20F310 */  sw         $zero, %lo(D_800DF310)($at)
    /* 1F1F4C 801E1C0C 8CA80000 */  lw         $t0, 0x0($a1)
    /* 1F1F50 801E1C10 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 1F1F54 801E1C14 3C03800F */  lui        $v1, %hi(D_800E98E0)
    /* 1F1F58 801E1C18 00084880 */  sll        $t1, $t0, 2
    /* 1F1F5C 801E1C1C 00290821 */  addu       $at, $at, $t1
    /* 1F1F60 801E1C20 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
    /* 1F1F64 801E1C24 8CAA0000 */  lw         $t2, 0x0($a1)
    /* 1F1F68 801E1C28 24010001 */  addiu      $at, $zero, 0x1
    /* 1F1F6C 801E1C2C 3C040001 */  lui        $a0, (0x1056B >> 16)
    /* 1F1F70 801E1C30 000A5880 */  sll        $t3, $t2, 2
    /* 1F1F74 801E1C34 006B1821 */  addu       $v1, $v1, $t3
    /* 1F1F78 801E1C38 8C6398E0 */  lw         $v1, %lo(D_800E98E0)($v1)
    /* 1F1F7C 801E1C3C 10610008 */  beq        $v1, $at, .L801E1C60_ovl12
    /* 1F1F80 801E1C40 24010002 */   addiu     $at, $zero, 0x2
    /* 1F1F84 801E1C44 1061000A */  beq        $v1, $at, .L801E1C70_ovl12
    /* 1F1F88 801E1C48 3C040001 */   lui       $a0, (0x10573 >> 16)
    /* 1F1F8C 801E1C4C 24010003 */  addiu      $at, $zero, 0x3
    /* 1F1F90 801E1C50 1061000B */  beq        $v1, $at, .L801E1C80_ovl12
    /* 1F1F94 801E1C54 3C040001 */   lui       $a0, (0x1057B >> 16)
    /* 1F1F98 801E1C58 1000000C */  b          .L801E1C8C_ovl12
    /* 1F1F9C 801E1C5C 3C040001 */   lui       $a0, (0x1056A >> 16)
  .L801E1C60_ovl12:
    /* 1F1FA0 801E1C60 0C02A806 */  jal        func_800AA018
    /* 1F1FA4 801E1C64 3484056B */   ori       $a0, $a0, (0x1056B & 0xFFFF)
    /* 1F1FA8 801E1C68 10000008 */  b          .L801E1C8C_ovl12
    /* 1F1FAC 801E1C6C 3C040001 */   lui       $a0, (0x1056A >> 16)
  .L801E1C70_ovl12:
    /* 1F1FB0 801E1C70 0C02A806 */  jal        func_800AA018
    /* 1F1FB4 801E1C74 34840573 */   ori       $a0, $a0, (0x10573 & 0xFFFF)
    /* 1F1FB8 801E1C78 10000004 */  b          .L801E1C8C_ovl12
    /* 1F1FBC 801E1C7C 3C040001 */   lui       $a0, (0x1056A >> 16)
  .L801E1C80_ovl12:
    /* 1F1FC0 801E1C80 0C02A806 */  jal        func_800AA018
    /* 1F1FC4 801E1C84 3484057B */   ori       $a0, $a0, (0x1057B & 0xFFFF)
    /* 1F1FC8 801E1C88 3C040001 */  lui        $a0, (0x1056A >> 16)
  .L801E1C8C_ovl12:
    /* 1F1FCC 801E1C8C 3484056A */  ori        $a0, $a0, (0x1056A & 0xFFFF)
    /* 1F1FD0 801E1C90 0C02AA19 */  jal        func_800AA864
    /* 1F1FD4 801E1C94 24050001 */   addiu     $a1, $zero, 0x1
    /* 1F1FD8 801E1C98 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1F1FDC 801E1C9C 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1F1FE0 801E1CA0 3C01800F */  lui        $at, %hi(D_800EA520)
    /* 1F1FE4 801E1CA4 00002025 */  or         $a0, $zero, $zero
    /* 1F1FE8 801E1CA8 8CAC0000 */  lw         $t4, 0x0($a1)
    /* 1F1FEC 801E1CAC 000C6880 */  sll        $t5, $t4, 2
    /* 1F1FF0 801E1CB0 002D0821 */  addu       $at, $at, $t5
    /* 1F1FF4 801E1CB4 0C02BEED */  jal        func_800AFBB4
    /* 1F1FF8 801E1CB8 AC20A520 */   sw        $zero, %lo(D_800EA520)($at)
    /* 1F1FFC 801E1CBC 0C02BE85 */  jal        curObjSleepForever
    /* 1F2000 801E1CC0 00000000 */   nop
    /* 1F2004 801E1CC4 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1F2008 801E1CC8 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1F200C 801E1CCC 03E00008 */  jr         $ra
    /* 1F2010 801E1CD0 00000000 */   nop
endlabel func_801E1B90_ovl12
.size func_801E1B90_ovl12, . - func_801E1B90_ovl12
