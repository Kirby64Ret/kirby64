glabel func_801E1B90_ovl12 # 132
/* 006990 801E1B90 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 006994 801E1B94 8CA5A7C4 */  lw          $a1, %lo(D_8004A7C4)($a1)
/* 006998 801E1B98 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 00699C 801E1B9C AFBF0014 */  sw          $ra, 0x14($sp)
/* 0069A0 801E1BA0 8CAE0000 */  lw          $t6, 0x0($a1)
/* 0069A4 801E1BA4 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 0069A8 801E1BA8 3C18800E */  lui         $t8, %hi(D_800E0D50)
/* 0069AC 801E1BAC 000E7880 */  sll         $t7, $t6, 2
/* 0069B0 801E1BB0 002F0821 */  addu        $at, $at, $t7
/* 0069B4 801E1BB4 AC20DFD0 */  sw          $zero, %lo(D_800DDFD0)($at)
/* 0069B8 801E1BB8 8CA20000 */  lw          $v0, 0x0($a1)
/* 0069BC 801E1BBC 3C01800E */  lui         $at, %hi(D_800E7B20)
/* 0069C0 801E1BC0 44802000 */  mtc1        $zero, $f4
/* 0069C4 801E1BC4 00021080 */  sll         $v0, $v0, 2
/* 0069C8 801E1BC8 0302C021 */  addu        $t8, $t8, $v0
/* 0069CC 801E1BCC 8F180D50 */  lw          $t8, %lo(D_800E0D50)($t8)
/* 0069D0 801E1BD0 0018C880 */  sll         $t9, $t8, 2
/* 0069D4 801E1BD4 00390821 */  addu        $at, $at, $t9
/* 0069D8 801E1BD8 C4267B20 */  lwc1        $f6, %lo(D_800E7B20)($at)
/* 0069DC 801E1BDC 3C01800E */  lui         $at, %hi(D_800DF310)
/* 0069E0 801E1BE0 46062032 */  c.eq.s      $f4, $f6
/* 0069E4 801E1BE4 00000000 */  nop
/* 0069E8 801E1BE8 45020007 */  bc1fl       .L801E1C08
/* 0069EC 801E1BEC 00220821 */   addu       $at, $at, $v0
/* 0069F0 801E1BF0 AC800048 */  sw          $zero, 0x48($a0)
/* 0069F4 801E1BF4 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 0069F8 801E1BF8 8CA5A7C4 */  lw          $a1, %lo(D_8004A7C4)($a1)
/* 0069FC 801E1BFC 8CA20000 */  lw          $v0, 0x0($a1)
/* 006A00 801E1C00 00021080 */  sll         $v0, $v0, 2
/* 006A04 801E1C04 00220821 */  addu        $at, $at, $v0
.L801E1C08:
/* 006A08 801E1C08 AC20F310 */  sw          $zero, %lo(D_800DF310)($at)
/* 006A0C 801E1C0C 8CA80000 */  lw          $t0, 0x0($a1)
/* 006A10 801E1C10 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 006A14 801E1C14 3C03800F */  lui         $v1, %hi(D_800E98E0)
/* 006A18 801E1C18 00084880 */  sll         $t1, $t0, 2
/* 006A1C 801E1C1C 00290821 */  addu        $at, $at, $t1
/* 006A20 801E1C20 AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 006A24 801E1C24 8CAA0000 */  lw          $t2, 0x0($a1)
/* 006A28 801E1C28 24010001 */  addiu       $at, $zero, 0x1
/* 006A2C 801E1C2C 3C040001 */  lui         $a0, (0x1056B >> 16)
/* 006A30 801E1C30 000A5880 */  sll         $t3, $t2, 2
/* 006A34 801E1C34 006B1821 */  addu        $v1, $v1, $t3
/* 006A38 801E1C38 8C6398E0 */  lw          $v1, %lo(D_800E98E0)($v1)
/* 006A3C 801E1C3C 10610008 */  beq         $v1, $at, .L801E1C60
/* 006A40 801E1C40 24010002 */   addiu      $at, $zero, 0x2
/* 006A44 801E1C44 1061000A */  beq         $v1, $at, .L801E1C70
/* 006A48 801E1C48 3C040001 */   lui        $a0, (0x10573 >> 16)
/* 006A4C 801E1C4C 24010003 */  addiu       $at, $zero, 0x3
/* 006A50 801E1C50 1061000B */  beq         $v1, $at, .L801E1C80
/* 006A54 801E1C54 3C040001 */   lui        $a0, (0x1056B >> 16)
/* 006A58 801E1C58 1000000C */  b           .L801E1C8C
/* 006A5C 801E1C5C 3C040001 */   lui        $a0, (0x1056A >> 16)
.L801E1C60:
/* 006A60 801E1C60 0C02A806 */  jal         func_800AA018
/* 006A64 801E1C64 3484056B */   ori        $a0, $a0, (0x1056B & 0xFFFF)
/* 006A68 801E1C68 10000008 */  b           .L801E1C8C
/* 006A6C 801E1C6C 3C040001 */   lui        $a0, (0x1056A >> 16)
.L801E1C70:
/* 006A70 801E1C70 0C02A806 */  jal         func_800AA018
/* 006A74 801E1C74 34840573 */   ori        $a0, $a0, (0x10573 & 0xFFFF)
/* 006A78 801E1C78 10000004 */  b           .L801E1C8C
/* 006A7C 801E1C7C 3C040001 */   lui        $a0, (0x1056A >> 16)
.L801E1C80:
/* 006A80 801E1C80 0C02A806 */  jal         func_800AA018
/* 006A84 801E1C84 3484057B */   ori        $a0, $a0, (0x1057B & 0xFFFF)
/* 006A88 801E1C88 3C040001 */  lui         $a0, (0x1056A >> 16)
.L801E1C8C:
/* 006A8C 801E1C8C 3484056A */  ori         $a0, $a0, (0x1056A & 0xFFFF)
/* 006A90 801E1C90 0C02AA19 */  jal         func_800AA864
/* 006A94 801E1C94 24050001 */   addiu      $a1, $zero, 0x1
/* 006A98 801E1C98 3C058005 */  lui         $a1, %hi(D_8004A7C4)
/* 006A9C 801E1C9C 8CA5A7C4 */  lw          $a1, %lo(D_8004A7C4)($a1)
/* 006AA0 801E1CA0 3C01800F */  lui         $at, %hi(D_800EA520)
/* 006AA4 801E1CA4 00002025 */  move        $a0, $zero
/* 006AA8 801E1CA8 8CAC0000 */  lw          $t4, 0x0($a1)
/* 006AAC 801E1CAC 000C6880 */  sll         $t5, $t4, 2
/* 006AB0 801E1CB0 002D0821 */  addu        $at, $at, $t5
/* 006AB4 801E1CB4 0C02BEED */  jal         func_800AFBB4
/* 006AB8 801E1CB8 AC20A520 */   sw         $zero, %lo(D_800EA520)($at)
/* 006ABC 801E1CBC 0C02BE85 */  jal         func_800AFA14
/* 006AC0 801E1CC0 00000000 */   nop
/* 006AC4 801E1CC4 8FBF0014 */  lw          $ra, 0x14($sp)
/* 006AC8 801E1CC8 27BD0018 */  addiu       $sp, $sp, 0x18
/* 006ACC 801E1CCC 03E00008 */  jr          $ra
/* 006AD0 801E1CD0 00000000 */   nop
.type func_801E1B90_ovl12, @function

.size func_801E1B90_ovl12, . - func_801E1B90_ovl12
.section .late_rodata
