glabel func_801E35F4_ovl13 # 45
/* 1FB574 801E35F4 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FB578 801E35F8 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FB57C 801E35FC 8CEE0000 */  lw          $t6, 0x0($a3)
/* 1FB580 801E3600 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1FB584 801E3604 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1FB588 801E3608 AFA40018 */  sw          $a0, 0x18($sp)
/* 1FB58C 801E360C 8DC20000 */  lw          $v0, 0x0($t6)
/* 1FB590 801E3610 3C06800E */  lui         $a2, %hi(D_800DFBD0)
/* 1FB594 801E3614 24C6FBD0 */  addiu       $a2, $a2, %lo(D_800DFBD0)
/* 1FB598 801E3618 00021080 */  sll         $v0, $v0, 2
/* 1FB59C 801E361C 00C27821 */  addu        $t7, $a2, $v0
/* 1FB5A0 801E3620 8DF80000 */  lw          $t8, 0x0($t7)
/* 1FB5A4 801E3624 3C01800F */  lui         $at, %hi(D_800EAC20)
/* 1FB5A8 801E3628 00220821 */  addu        $at, $at, $v0
/* 1FB5AC 801E362C 8F030004 */  lw          $v1, 0x4($t8)
/* 1FB5B0 801E3630 C426AC20 */  lwc1        $f6, %lo(D_800EAC20)($at)
/* 1FB5B4 801E3634 3C01800F */  lui         $at, %hi(D_800EAFA0)
/* 1FB5B8 801E3638 C4640034 */  lwc1        $f4, 0x34($v1)
/* 1FB5BC 801E363C 46062200 */  add.s       $f8, $f4, $f6
/* 1FB5C0 801E3640 E4680034 */  swc1        $f8, 0x34($v1)
/* 1FB5C4 801E3644 8CF90000 */  lw          $t9, 0x0($a3)
/* 1FB5C8 801E3648 8F220000 */  lw          $v0, 0x0($t9)
/* 1FB5CC 801E364C 00021080 */  sll         $v0, $v0, 2
/* 1FB5D0 801E3650 00C24021 */  addu        $t0, $a2, $v0
/* 1FB5D4 801E3654 8D090000 */  lw          $t1, 0x0($t0)
/* 1FB5D8 801E3658 00220821 */  addu        $at, $at, $v0
/* 1FB5DC 801E365C C430AFA0 */  lwc1        $f16, %lo(D_800EAFA0)($at)
/* 1FB5E0 801E3660 8D250008 */  lw          $a1, 0x8($t1)
/* 1FB5E4 801E3664 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1FB5E8 801E3668 C4AA0038 */  lwc1        $f10, 0x38($a1)
/* 1FB5EC 801E366C 46105480 */  add.s       $f18, $f10, $f16
/* 1FB5F0 801E3670 E4B20038 */  swc1        $f18, 0x38($a1)
/* 1FB5F4 801E3674 8CEA0000 */  lw          $t2, 0x0($a3)
/* 1FB5F8 801E3678 8FA40018 */  lw          $a0, 0x18($sp)
/* 1FB5FC 801E367C 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FB600 801E3680 000B6080 */  sll         $t4, $t3, 2
/* 1FB604 801E3684 002C0821 */  addu        $at, $at, $t4
/* 1FB608 801E3688 0C06835D */  jal         func_801A0D74_ovl7
/* 1FB60C 801E368C AC208920 */   sw         $zero, %lo(D_800E8920)($at)
/* 1FB610 801E3690 3C078005 */  lui         $a3, %hi(D_8004A7C4)
/* 1FB614 801E3694 24E7A7C4 */  addiu       $a3, $a3, %lo(D_8004A7C4)
/* 1FB618 801E3698 8CED0000 */  lw          $t5, 0x0($a3)
/* 1FB61C 801E369C 3C02800E */  lui         $v0, %hi(D_800DFBD0)
/* 1FB620 801E36A0 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1FB624 801E36A4 000E7880 */  sll         $t7, $t6, 2
/* 1FB628 801E36A8 004F1021 */  addu        $v0, $v0, $t7
/* 1FB62C 801E36AC 8C42FBD0 */  lw          $v0, %lo(D_800DFBD0)($v0)
/* 1FB630 801E36B0 8C44005C */  lw          $a0, 0x5C($v0)
/* 1FB634 801E36B4 8C450010 */  lw          $a1, 0x10($v0)
/* 1FB638 801E36B8 0C078EA1 */  jal         func_801E3A84_ovl13
/* 1FB63C 801E36BC 8C460018 */   lw         $a2, 0x18($v0)
/* 1FB640 801E36C0 0C078E56 */  jal         func_801E3958_ovl13
/* 1FB644 801E36C4 8FA40018 */   lw         $a0, 0x18($sp)
/* 1FB648 801E36C8 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1FB64C 801E36CC 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1FB650 801E36D0 03E00008 */  jr          $ra
/* 1FB654 801E36D4 00000000 */   nop
.type func_801E35F4_ovl13, @function

.size func_801E35F4_ovl13, . - func_801E35F4_ovl13
