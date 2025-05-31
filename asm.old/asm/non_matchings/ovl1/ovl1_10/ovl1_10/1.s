glabel func_800BA90C # 1
/* 062B5C 800BA90C AFA40000 */  sw          $a0, 0x0($sp)
/* 062B60 800BA910 94A20002 */  lhu         $v0, 0x2($a1)
/* 062B64 800BA914 3C06800D */  lui         $a2, %hi(D_800D5238)
/* 062B68 800BA918 24C65238 */  addiu       $a2, $a2, %lo(D_800D5238)
/* 062B6C 800BA91C 14400037 */  bnez        $v0, L800BA9FC
/* 062B70 800BA920 24070001 */   addiu      $a3, $zero, 0x1
/* 062B74 800BA924 8CA30010 */  lw          $v1, 0x10($a1)
glabel L800BA928
/* 062B78 800BA928 94640000 */  lhu         $a0, 0x0($v1)
/* 062B7C 800BA92C 00047342 */  srl         $t6, $a0, 13
/* 062B80 800BA930 2DC10005 */  sltiu       $at, $t6, 0x5
/* 062B84 800BA934 1020002F */  beqz        $at, L800BA9F4
/* 062B88 800BA938 000E7080 */   sll        $t6, $t6, 2
/* 062B8C 800BA93C 3C01800D */  lui         $at, %hi(jtbl_800D68F4)
/* 062B90 800BA940 002E0821 */  addu        $at, $at, $t6
/* 062B94 800BA944 8C2E68F4 */  lw          $t6, %lo(jtbl_800D68F4)($at)
/* 062B98 800BA948 01C00008 */  jr          $t6
/* 062B9C 800BA94C 00000000 */   nop
glabel L800BA950
/* 062BA0 800BA950 90AF0000 */  lbu         $t7, 0x0($a1)
/* 062BA4 800BA954 94A20002 */  lhu         $v0, 0x2($a1)
/* 062BA8 800BA958 000FC080 */  sll         $t8, $t7, 2
/* 062BAC 800BA95C 00D8C821 */  addu        $t9, $a2, $t8
/* 062BB0 800BA960 8F280000 */  lw          $t0, 0x0($t9)
/* 062BB4 800BA964 10000023 */  b           L800BA9F4
/* 062BB8 800BA968 ACA80010 */   sw         $t0, 0x10($a1)
glabel L800BA96C
/* 062BBC 800BA96C 30891FFF */  andi        $t1, $a0, 0x1FFF
/* 062BC0 800BA970 246A0002 */  addiu       $t2, $v1, 0x2
/* 062BC4 800BA974 A4A90002 */  sh          $t1, 0x2($a1)
/* 062BC8 800BA978 ACAA0010 */  sw          $t2, 0x10($a1)
/* 062BCC 800BA97C A0A70001 */  sb          $a3, 0x1($a1)
/* 062BD0 800BA980 1000001C */  b           L800BA9F4
/* 062BD4 800BA984 3122FFFF */   andi       $v0, $t1, 0xFFFF
glabel L800BA988
/* 062BD8 800BA988 308B1FFF */  andi        $t3, $a0, 0x1FFF
/* 062BDC 800BA98C 246C0002 */  addiu       $t4, $v1, 0x2
/* 062BE0 800BA990 A4AB0002 */  sh          $t3, 0x2($a1)
/* 062BE4 800BA994 ACAC0010 */  sw          $t4, 0x10($a1)
/* 062BE8 800BA998 A0A00001 */  sb          $zero, 0x1($a1)
/* 062BEC 800BA99C 10000015 */  b           L800BA9F4
/* 062BF0 800BA9A0 3162FFFF */   andi       $v0, $t3, 0xFFFF
glabel L800BA9A4
/* 062BF4 800BA9A4 308D1FFF */  andi        $t5, $a0, 0x1FFF
/* 062BF8 800BA9A8 246E0002 */  addiu       $t6, $v1, 0x2
/* 062BFC 800BA9AC A4AD0004 */  sh          $t5, 0x4($a1)
/* 062C00 800BA9B0 ACAE0010 */  sw          $t6, 0x10($a1)
/* 062C04 800BA9B4 ACAE000C */  sw          $t6, 0xC($a1)
/* 062C08 800BA9B8 1000000E */  b           L800BA9F4
/* 062C0C 800BA9BC 94A20002 */   lhu        $v0, 0x2($a1)
glabel L800BA9C0
/* 062C10 800BA9C0 94B80004 */  lhu         $t8, 0x4($a1)
/* 062C14 800BA9C4 2719FFFF */  addiu       $t9, $t8, -0x1
/* 062C18 800BA9C8 3328FFFF */  andi        $t0, $t9, 0xFFFF
/* 062C1C 800BA9CC 11000005 */  beqz        $t0, L800BA9E4
/* 062C20 800BA9D0 A4B90004 */   sh         $t9, 0x4($a1)
/* 062C24 800BA9D4 8CA9000C */  lw          $t1, 0xC($a1)
/* 062C28 800BA9D8 94A20002 */  lhu         $v0, 0x2($a1)
/* 062C2C 800BA9DC 10000005 */  b           L800BA9F4
/* 062C30 800BA9E0 ACA90010 */   sw         $t1, 0x10($a1)
glabel L800BA9E4
/* 062C34 800BA9E4 8CAA0010 */  lw          $t2, 0x10($a1)
/* 062C38 800BA9E8 94A20002 */  lhu         $v0, 0x2($a1)
/* 062C3C 800BA9EC 254B0002 */  addiu       $t3, $t2, 0x2
/* 062C40 800BA9F0 ACAB0010 */  sw          $t3, 0x10($a1)
glabel L800BA9F4
/* 062C44 800BA9F4 5040FFCC */  beql        $v0, $zero, L800BA928
/* 062C48 800BA9F8 8CA30010 */   lw         $v1, 0x10($a1)
glabel L800BA9FC
/* 062C4C 800BA9FC 03E00008 */  jr          $ra
/* 062C50 800BAA00 00000000 */   nop
.size func_800BA90C, . - func_800BA90C

.late_rodata
glabel jtbl_800D68F4
.word L800BA950
.word L800BA96C
.word L800BA988
.word L800BA9A4
.word L800BA9C0
