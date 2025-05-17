glabel func_8000FB10
/* 010710 8000FB10 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 010714 8000FB14 AFB50034 */  sw    $s5, 0x34($sp)
/* 010718 8000FB18 AFB40030 */  sw    $s4, 0x30($sp)
/* 01071C 8000FB1C AFB3002C */  sw    $s3, 0x2c($sp)
/* 010720 8000FB20 00A09825 */  move  $s3, $a1
/* 010724 8000FB24 00C0A025 */  move  $s4, $a2
/* 010728 8000FB28 00E0A825 */  move  $s5, $a3
/* 01072C 8000FB2C AFBF0044 */  sw    $ra, 0x44($sp)
/* 010730 8000FB30 AFBE0040 */  sw    $fp, 0x40($sp)
/* 010734 8000FB34 AFB7003C */  sw    $s7, 0x3c($sp)
/* 010738 8000FB38 AFB60038 */  sw    $s6, 0x38($sp)
/* 01073C 8000FB3C AFB20028 */  sw    $s2, 0x28($sp)
/* 010740 8000FB40 AFB10024 */  sw    $s1, 0x24($sp)
/* 010744 8000FB44 AFB00020 */  sw    $s0, 0x20($sp)
/* 010748 8000FB48 AFA400B0 */  sw    $a0, 0xb0($sp)
/* 01074C 8000FB4C AFA0005C */  sw    $zero, 0x5c($sp)
/* 010750 8000FB50 AFA00060 */  sw    $zero, 0x60($sp)
/* 010754 8000FB54 27A20064 */  addiu $v0, $sp, 0x64
/* 010758 8000FB58 27A300A4 */  addiu $v1, $sp, 0xa4
.L8000FB5C_ovl0:
/* 01075C 8000FB5C 24420010 */  addiu $v0, $v0, 0x10
/* 010760 8000FB60 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 010764 8000FB64 AC40FFF8 */  sw    $zero, -8($v0)
/* 010768 8000FB68 AC40FFFC */  sw    $zero, -4($v0)
/* 01076C 8000FB6C 1443FFFB */  bne   $v0, $v1, .L8000FB5C_ovl0
/* 010770 8000FB70 AC40FFF0 */   sw    $zero, -0x10($v0)
/* 010774 8000FB74 8E620000 */  lw    $v0, ($s3)
/* 010778 8000FB78 24010012 */  li    $at, 18
/* 01077C 8000FB7C 93BE00CB */  lbu   $fp, 0xcb($sp)
/* 010780 8000FB80 1041004C */  beq   $v0, $at, .L8000FCB4_ovl0
/* 010784 8000FB84 93B700C7 */   lbu   $s7, 0xc7($sp)
/* 010788 8000FB88 93B600C3 */  lbu   $s6, 0xc3($sp)
/* 01078C 8000FB8C 30430FFF */  andi  $v1, $v0, 0xfff
.L8000FB90_ovl0:
/* 010790 8000FB90 10600009 */  beqz  $v1, .L8000FBB8_ovl0
/* 010794 8000FB94 00037080 */   sll   $t6, $v1, 2
/* 010798 8000FB98 27AF005C */  addiu $t7, $sp, 0x5c
/* 01079C 8000FB9C 01CF8021 */  addu  $s0, $t6, $t7
/* 0107A0 8000FBA0 8E04FFFC */  lw    $a0, -4($s0)
/* 0107A4 8000FBA4 0C002757 */  jal   func_80009D5C
/* 0107A8 8000FBA8 8E650004 */   lw    $a1, 4($s3)
/* 0107AC 8000FBAC AE020000 */  sw    $v0, ($s0)
/* 0107B0 8000FBB0 10000006 */  b     .L8000FBCC_ovl0
/* 0107B4 8000FBB4 00409025 */   move  $s2, $v0
.L8000FBB8_ovl0:
/* 0107B8 8000FBB8 8FA400B0 */  lw    $a0, 0xb0($sp)
/* 0107BC 8000FBBC 0C00270E */  jal   func_80009C38
/* 0107C0 8000FBC0 8E650004 */   lw    $a1, 4($s3)
/* 0107C4 8000FBC4 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0107C8 8000FBC8 00409025 */  move  $s2, $v0
.L8000FBCC_ovl0:
/* 0107CC 8000FBCC 8E620000 */  lw    $v0, ($s3)
/* 0107D0 8000FBD0 02402025 */  move  $a0, $s2
/* 0107D4 8000FBD4 32C500FF */  andi  $a1, $s6, 0xff
/* 0107D8 8000FBD8 3042F000 */  andi  $v0, $v0, 0xf000
/* 0107DC 8000FBDC 10400009 */  beqz  $v0, .L8000FC04_ovl0
/* 0107E0 8000FBE0 32E600FF */   andi  $a2, $s7, 0xff
/* 0107E4 8000FBE4 02402025 */  move  $a0, $s2
/* 0107E8 8000FBE8 32C500FF */  andi  $a1, $s6, 0xff
/* 0107EC 8000FBEC 32E600FF */  andi  $a2, $s7, 0xff
/* 0107F0 8000FBF0 33C700FF */  andi  $a3, $fp, 0xff
/* 0107F4 8000FBF4 0C003DD5 */  jal   func_8000F754
/* 0107F8 8000FBF8 AFA20010 */   sw    $v0, 0x10($sp)
/* 0107FC 8000FBFC 10000004 */  b     .L8000FC10_ovl0
/* 010800 8000FC00 8E790008 */   lw    $t9, 8($s3)
.L8000FC04_ovl0:
/* 010804 8000FC04 0C003DBB */  jal   func_8000F6EC
/* 010808 8000FC08 33C700FF */   andi  $a3, $fp, 0xff
/* 01080C 8000FC0C 8E790008 */  lw    $t9, 8($s3)
.L8000FC10_ovl0:
/* 010810 8000FC10 AE59001C */  sw    $t9, 0x1c($s2)
/* 010814 8000FC14 8E78000C */  lw    $t8, 0xc($s3)
/* 010818 8000FC18 AE580020 */  sw    $t8, 0x20($s2)
/* 01081C 8000FC1C 8E790010 */  lw    $t9, 0x10($s3)
/* 010820 8000FC20 AE590024 */  sw    $t9, 0x24($s2)
/* 010824 8000FC24 8E690014 */  lw    $t1, 0x14($s3)
/* 010828 8000FC28 AE490030 */  sw    $t1, 0x30($s2)
/* 01082C 8000FC2C 8E680018 */  lw    $t0, 0x18($s3)
/* 010830 8000FC30 AE480034 */  sw    $t0, 0x34($s2)
/* 010834 8000FC34 8E69001C */  lw    $t1, 0x1c($s3)
/* 010838 8000FC38 AE490038 */  sw    $t1, 0x38($s2)
/* 01083C 8000FC3C 8E6B0020 */  lw    $t3, 0x20($s3)
/* 010840 8000FC40 AE4B0040 */  sw    $t3, 0x40($s2)
/* 010844 8000FC44 8E6A0024 */  lw    $t2, 0x24($s3)
/* 010848 8000FC48 AE4A0044 */  sw    $t2, 0x44($s2)
/* 01084C 8000FC4C 8E6B0028 */  lw    $t3, 0x28($s3)
/* 010850 8000FC50 1280000F */  beqz  $s4, .L8000FC90_ovl0
/* 010854 8000FC54 AE4B0048 */   sw    $t3, 0x48($s2)
/* 010858 8000FC58 8E820000 */  lw    $v0, ($s4)
/* 01085C 8000FC5C 5040000C */  beql  $v0, $zero, .L8000FC90_ovl0
/* 010860 8000FC60 26940004 */   addiu $s4, $s4, 4
/* 010864 8000FC64 8C510000 */  lw    $s1, ($v0)
/* 010868 8000FC68 00408025 */  move  $s0, $v0
/* 01086C 8000FC6C 12200007 */  beqz  $s1, .L8000FC8C_ovl0
/* 010870 8000FC70 02402025 */   move  $a0, $s2
.L8000FC74_ovl0:
/* 010874 8000FC74 0C002691 */  jal   func_80009A44
/* 010878 8000FC78 02202825 */   move  $a1, $s1
/* 01087C 8000FC7C 8E110004 */  lw    $s1, 4($s0)
/* 010880 8000FC80 26100004 */  addiu $s0, $s0, 4
/* 010884 8000FC84 5620FFFB */  bnezl $s1, .L8000FC74_ovl0
/* 010888 8000FC88 02402025 */   move  $a0, $s2
.L8000FC8C_ovl0:
/* 01088C 8000FC8C 26940004 */  addiu $s4, $s4, 4
.L8000FC90_ovl0:
/* 010890 8000FC90 52A00004 */  beql  $s5, $zero, .L8000FCA4_ovl0
/* 010894 8000FC94 8E62002C */   lw    $v0, 0x2c($s3)
/* 010898 8000FC98 AEB20000 */  sw    $s2, ($s5)
/* 01089C 8000FC9C 26B50004 */  addiu $s5, $s5, 4
/* 0108A0 8000FCA0 8E62002C */  lw    $v0, 0x2c($s3)
.L8000FCA4_ovl0:
/* 0108A4 8000FCA4 24010012 */  li    $at, 18
/* 0108A8 8000FCA8 2673002C */  addiu $s3, $s3, 0x2c
/* 0108AC 8000FCAC 5441FFB8 */  bnel  $v0, $at, .L8000FB90_ovl0
/* 0108B0 8000FCB0 30430FFF */   andi  $v1, $v0, 0xfff
.L8000FCB4_ovl0:
/* 0108B4 8000FCB4 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0108B8 8000FCB8 8FB00020 */  lw    $s0, 0x20($sp)
/* 0108BC 8000FCBC 8FB10024 */  lw    $s1, 0x24($sp)
/* 0108C0 8000FCC0 8FB20028 */  lw    $s2, 0x28($sp)
/* 0108C4 8000FCC4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0108C8 8000FCC8 8FB40030 */  lw    $s4, 0x30($sp)
/* 0108CC 8000FCCC 8FB50034 */  lw    $s5, 0x34($sp)
/* 0108D0 8000FCD0 8FB60038 */  lw    $s6, 0x38($sp)
/* 0108D4 8000FCD4 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0108D8 8000FCD8 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0108DC 8000FCDC 03E00008 */  jr    $ra
/* 0108E0 8000FCE0 27BD00B0 */   addiu $sp, $sp, 0xb0
.type func_8000FB10, @function
.size func_8000FB10, . - func_8000FB10
