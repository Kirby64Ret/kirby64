glabel func_801E6434_ovl9
/* 194484 801E6434 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 194488 801E6438 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
.L801E643C_ovl15:
/* 19448C 801E643C 8C620000 */  lw         $v0, 0x0($v1)
/* 194490 801E6440 27BDFFE8 */  addiu      $sp, $sp, -0x18
glabel func_801E6444_ovl10
/* 194494 801E6444 AFBF0014 */  sw         $ra, 0x14($sp)
/* 194498 801E6448 AFA40018 */  sw         $a0, 0x18($sp)
/* 19449C 801E644C 8C4F0000 */  lw         $t7, 0x0($v0)
glabel D_801E6450_ovl15
/* 1944A0 801E6450 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1944A4 801E6454 240E0004 */  addiu      $t6, $zero, 0x4
/* 1944A8 801E6458 000FC080 */  sll        $t8, $t7, 2
/* 1944AC 801E645C 00380821 */  addu       $at, $at, $t8
/* 1944B0 801E6460 AC2EDFD0 */  sw         $t6, %lo(D_800DDFD0)($at)
/* 1944B4 801E6464 8C480000 */  lw         $t0, 0x0($v0)
/* 1944B8 801E6468 3C0A800E */  lui        $t2, %hi(D_800E1B50)
/* 1944BC 801E646C 3C19801D */  lui        $t9, %hi(D_801CBB54)
/* 1944C0 801E6470 00084880 */  sll        $t1, $t0, 2
/* 1944C4 801E6474 01495021 */  addu       $t2, $t2, $t1
/* 1944C8 801E6478 8D4A1B50 */  lw         $t2, %lo(D_800E1B50)($t2)
/* 1944CC 801E647C 2739BB54 */  addiu      $t9, $t9, %lo(D_801CBB54)
/* 1944D0 801E6480 24040001 */  addiu      $a0, $zero, 0x1
/* 1944D4 801E6484 AD590098 */  sw         $t9, 0x98($t2)
/* 1944D8 801E6488 0C02BEED */  jal        func_800AFBB4
/* 1944DC 801E648C 8C650000 */   lw        $a1, 0x0($v1)
/* 1944E0 801E6490 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1944E4 801E6494 0C02BB30 */  jal        func_800AECC0
/* 1944E8 801E6498 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1944EC 801E649C 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1944F0 801E64A0 0C02BB48 */  jal        func_800AED20
/* 1944F4 801E64A4 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1944F8 801E64A8 0C02CCFD */  jal        func_800B33F4
/* 1944FC 801E64AC 00000000 */   nop
/* 194500 801E64B0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 194504 801E64B4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 194508 801E64B8 3C01800F */  lui        $at, %hi(D_800E8920)
/* 19450C 801E64BC 240B0001 */  addiu      $t3, $zero, 0x1
/* 194510 801E64C0 8C4C0000 */  lw         $t4, 0x0($v0)
/* 194514 801E64C4 44802000 */  mtc1       $zero, $f4
/* 194518 801E64C8 3C040001 */  lui        $a0, (0x101F1 >> 16)
/* 19451C 801E64CC 000C6880 */  sll        $t5, $t4, 2
/* 194520 801E64D0 002D0821 */  addu       $at, $at, $t5
/* 194524 801E64D4 AC2B8920 */  sw         $t3, %lo(D_800E8920)($at)
/* 194528 801E64D8 8C4F0000 */  lw         $t7, 0x0($v0)
/* 19452C 801E64DC 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 194530 801E64E0 348401F1 */  ori        $a0, $a0, (0x101F1 & 0xFFFF)
/* 194534 801E64E4 000F7080 */  sll        $t6, $t7, 2
/* 194538 801E64E8 002E0821 */  addu       $at, $at, $t6
/* 19453C 801E64EC 0C02A806 */  jal        func_800AA018
/* 194540 801E64F0 E424A8A0 */   swc1      $f4, %lo(D_800EA8A0)($at)
/* 194544 801E64F4 3C188005 */  lui        $t8, %hi(D_8004A7C4)
.L801E64F8_ovl16:
/* 194548 801E64F8 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 19454C 801E64FC 3C02800E */  lui        $v0, %hi(D_800E7880)
/* 194550 801E6500 24010001 */  addiu      $at, $zero, 0x1
/* 194554 801E6504 8F030000 */  lw         $v1, 0x0($t8)
/* 194558 801E6508 00431021 */  addu       $v0, $v0, $v1
/* 19455C 801E650C 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
/* 194560 801E6510 5040000A */  beql       $v0, $zero, .L801E653C_ovl9
/* 194564 801E6514 00031080 */   sll       $v0, $v1, 2
/* 194568 801E6518 10410007 */  beq        $v0, $at, .L801E6538_ovl9
/* 19456C 801E651C 24010002 */   addiu     $at, $zero, 0x2
.L801E6520_ovl16:
/* 194570 801E6520 10410010 */  beq        $v0, $at, func_801E6564_ovl10
/* 194574 801E6524 24010003 */   addiu     $at, $zero, 0x3
/* 194578 801E6528 5041000F */  beql       $v0, $at, .L801E6568_ovl16
/* 19457C 801E652C 00031080 */   sll       $v0, $v1, 2
/* 194580 801E6530 10000016 */  b          .L801E658C_ovl9
/* 194584 801E6534 00000000 */   nop
.L801E6538_ovl9:
/* 194588 801E6538 00031080 */  sll        $v0, $v1, 2
.L801E653C_ovl9:
/* 19458C 801E653C 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 194590 801E6540 00220821 */  addu       $at, $at, $v0
glabel D_801E6544_ovl15
/* 194594 801E6544 C4266A10 */  lwc1       $f6, %lo(D_800E6A10)($at)
/* 194598 801E6548 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
.L801E654C_ovl16:
/* 19459C 801E654C 44814000 */  mtc1       $at, $f8
/* 1945A0 801E6550 3C01800E */  lui        $at, %hi(D_800E64D0)
glabel D_801E6554_ovl15
/* 1945A4 801E6554 00220821 */  addu       $at, $at, $v0
/* 1945A8 801E6558 46083282 */  mul.s      $f10, $f6, $f8
/* 1945AC 801E655C 1000000B */  b          .L801E658C_ovl9
/* 1945B0 801E6560 E42A64D0 */   swc1      $f10, %lo(D_800E64D0)($at)
glabel func_801E6564_ovl10
/* 1945B4 801E6564 00031080 */  sll        $v0, $v1, 2
.L801E6568_ovl16:
/* 1945B8 801E6568 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1945BC 801E656C 00220821 */  addu       $at, $at, $v0
/* 1945C0 801E6570 C4306A10 */  lwc1       $f16, %lo(D_800E6A10)($at)
/* 1945C4 801E6574 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 1945C8 801E6578 44819000 */  mtc1       $at, $f18
/* 1945CC 801E657C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1945D0 801E6580 00220821 */  addu       $at, $at, $v0
/* 1945D4 801E6584 46128102 */  mul.s      $f4, $f16, $f18
/* 1945D8 801E6588 E42464D0 */  swc1       $f4, %lo(D_800E64D0)($at)
.L801E658C_ovl9:
/* 1945DC 801E658C 0C02BE85 */  jal        func_800AFA14
/* 1945E0 801E6590 00000000 */   nop
/* 1945E4 801E6594 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1945E8 801E6598 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1945EC 801E659C 03E00008 */  jr         $ra
/* 1945F0 801E65A0 00000000 */   nop
