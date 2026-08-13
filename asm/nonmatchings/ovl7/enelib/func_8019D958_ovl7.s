nonmatching func_8019D958_ovl7, 0xF8

glabel func_8019D958_ovl7
    /* 1439C8 8019D958 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 1439CC 8019D95C AFB00018 */  sw         $s0, 0x18($sp)
    /* 1439D0 8019D960 3090FFFF */  andi       $s0, $a0, 0xFFFF
    /* 1439D4 8019D964 00101880 */  sll        $v1, $s0, 2
    /* 1439D8 8019D968 3C02800E */  lui        $v0, %hi(D_800E1B50)
    /* 1439DC 8019D96C 00431021 */  addu       $v0, $v0, $v1
    /* 1439E0 8019D970 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
    /* 1439E4 8019D974 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 1439E8 8019D978 AFA40030 */  sw         $a0, 0x30($sp)
    /* 1439EC 8019D97C 8C450034 */  lw         $a1, 0x34($v0)
    /* 1439F0 8019D980 10A00006 */  beqz       $a1, .L8019D99C_ovl7
    /* 1439F4 8019D984 00A02025 */   or        $a0, $a1, $zero
    /* 1439F8 8019D988 AFA2002C */  sw         $v0, 0x2C($sp)
    /* 1439FC 8019D98C 0C0288B5 */  jal        func_800A22D4
    /* 143A00 8019D990 AFA30028 */   sw        $v1, 0x28($sp)
    /* 143A04 8019D994 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 143A08 8019D998 8FA30028 */  lw         $v1, 0x28($sp)
  .L8019D99C_ovl7:
    /* 143A0C 8019D99C 3C0E800E */  lui        $t6, %hi(D_800DE350)
    /* 143A10 8019D9A0 25CEE350 */  addiu      $t6, $t6, %lo(D_800DE350)
    /* 143A14 8019D9A4 006E2821 */  addu       $a1, $v1, $t6
    /* 143A18 8019D9A8 8CA40000 */  lw         $a0, 0x0($a1)
    /* 143A1C 8019D9AC AFA50024 */  sw         $a1, 0x24($sp)
    /* 143A20 8019D9B0 0C0288C0 */  jal        func_800A2300
    /* 143A24 8019D9B4 AFA2002C */   sw        $v0, 0x2C($sp)
    /* 143A28 8019D9B8 8FA2002C */  lw         $v0, 0x2C($sp)
    /* 143A2C 8019D9BC 8FA50024 */  lw         $a1, 0x24($sp)
    /* 143A30 8019D9C0 02002025 */  or         $a0, $s0, $zero
    /* 143A34 8019D9C4 AC400034 */  sw         $zero, 0x34($v0)
    /* 143A38 8019D9C8 8CAF0000 */  lw         $t7, 0x0($a1)
    /* 143A3C 8019D9CC 0C066EEA */  jal        func_8019BBA8_ovl7
    /* 143A40 8019D9D0 ADE00048 */   sw        $zero, 0x48($t7)
    /* 143A44 8019D9D4 0C068CAA */  jal        func_801A32A8_ovl7
    /* 143A48 8019D9D8 02002025 */   or        $a0, $s0, $zero
    /* 143A4C 8019D9DC 3C03800E */  lui        $v1, %hi(D_800E76C0)
    /* 143A50 8019D9E0 00701821 */  addu       $v1, $v1, $s0
    /* 143A54 8019D9E4 906376C0 */  lbu        $v1, %lo(D_800E76C0)($v1)
    /* 143A58 8019D9E8 3C188013 */  lui        $t8, %hi(D_801290E0)
    /* 143A5C 8019D9EC 28610040 */  slti       $at, $v1, 0x40
    /* 143A60 8019D9F0 10200010 */  beqz       $at, .L8019DA34_ovl7
    /* 143A64 8019D9F4 0003C880 */   sll       $t9, $v1, 2
    /* 143A68 8019D9F8 0323C823 */  subu       $t9, $t9, $v1
    /* 143A6C 8019D9FC 8F1890E0 */  lw         $t8, %lo(D_801290E0)($t8)
    /* 143A70 8019DA00 0019C880 */  sll        $t9, $t9, 2
    /* 143A74 8019DA04 0323C823 */  subu       $t9, $t9, $v1
    /* 143A78 8019DA08 0019C880 */  sll        $t9, $t9, 2
    /* 143A7C 8019DA0C 03194021 */  addu       $t0, $t8, $t9
    /* 143A80 8019DA10 91090005 */  lbu        $t1, 0x5($t0)
    /* 143A84 8019DA14 3C0B800D */  lui        $t3, %hi(D_800D6C90)
    /* 143A88 8019DA18 256B6C90 */  addiu      $t3, $t3, %lo(D_800D6C90)
    /* 143A8C 8019DA1C 312A0001 */  andi       $t2, $t1, 0x1
    /* 143A90 8019DA20 11400004 */  beqz       $t2, .L8019DA34_ovl7
    /* 143A94 8019DA24 006B1021 */   addu      $v0, $v1, $t3
    /* 143A98 8019DA28 904C0000 */  lbu        $t4, 0x0($v0)
    /* 143A9C 8019DA2C 318D0080 */  andi       $t5, $t4, 0x80
    /* 143AA0 8019DA30 A04D0000 */  sb         $t5, 0x0($v0)
  .L8019DA34_ovl7:
    /* 143AA4 8019DA34 0C02C640 */  jal        func_800B1900
    /* 143AA8 8019DA38 3204FFFF */   andi      $a0, $s0, 0xFFFF
    /* 143AAC 8019DA3C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 143AB0 8019DA40 8FB00018 */  lw         $s0, 0x18($sp)
    /* 143AB4 8019DA44 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 143AB8 8019DA48 03E00008 */  jr         $ra
    /* 143ABC 8019DA4C 00000000 */   nop
endlabel func_8019D958_ovl7
.size func_8019D958_ovl7, . - func_8019D958_ovl7
