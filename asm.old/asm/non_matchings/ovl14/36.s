glabel func_801DDE60_ovl14 # 36
/* 200A50 801DDE60 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 200A54 801DDE64 AFB20030 */  sw          $s2, 0x30($sp)
/* 200A58 801DDE68 3C128005 */  lui         $s2, %hi(D_8004A7C4)
/* 200A5C 801DDE6C 2652A7C4 */  addiu       $s2, $s2, %lo(D_8004A7C4)
/* 200A60 801DDE70 8E4E0000 */  lw          $t6, 0x0($s2)
/* 200A64 801DDE74 AFBF0034 */  sw          $ra, 0x34($sp)
/* 200A68 801DDE78 AFB1002C */  sw          $s1, 0x2C($sp)
/* 200A6C 801DDE7C AFB00028 */  sw          $s0, 0x28($sp)
/* 200A70 801DDE80 F7B60020 */  sdc1        $f22, 0x20($sp)
/* 200A74 801DDE84 F7B40018 */  sdc1        $f20, 0x18($sp)
/* 200A78 801DDE88 AFA40050 */  sw          $a0, 0x50($sp)
/* 200A7C 801DDE8C 8DCF0000 */  lw          $t7, 0x0($t6)
/* 200A80 801DDE90 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 200A84 801DDE94 24100004 */  addiu       $s0, $zero, 0x4
/* 200A88 801DDE98 000FC080 */  sll         $t8, $t7, 2
/* 200A8C 801DDE9C 00380821 */  addu        $at, $at, $t8
/* 200A90 801DDEA0 AC30DFD0 */  sw          $s0, %lo(D_800DDFD0)($at)
/* 200A94 801DDEA4 3C01800D */  lui         $at, %hi(D_800D70A8)
/* 200A98 801DDEA8 3C040001 */  lui         $a0, (0x10457 >> 16)
/* 200A9C 801DDEAC AC2070A8 */  sw          $zero, %lo(D_800D70A8)($at)
/* 200AA0 801DDEB0 0C02A806 */  jal         func_800AA018
/* 200AA4 801DDEB4 34840457 */   ori        $a0, $a0, (0x10457 & 0xFFFF)
/* 200AA8 801DDEB8 3C040001 */  lui         $a0, (0x10458 >> 16)
/* 200AAC 801DDEBC 0C02A806 */  jal         func_800AA018
/* 200AB0 801DDEC0 34840458 */   ori        $a0, $a0, (0x10458 & 0xFFFF)
/* 200AB4 801DDEC4 8E420000 */  lw          $v0, 0x0($s2)
/* 200AB8 801DDEC8 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 200ABC 801DDECC 24110003 */  addiu       $s1, $zero, 0x3
/* 200AC0 801DDED0 8C590000 */  lw          $t9, 0x0($v0)
/* 200AC4 801DDED4 3C03801E */  lui         $v1, %hi(D_801D9CCC)
/* 200AC8 801DDED8 24639CCC */  addiu       $v1, $v1, %lo(D_801D9CCC)
/* 200ACC 801DDEDC 00194080 */  sll         $t0, $t9, 2
/* 200AD0 801DDEE0 00280821 */  addu        $at, $at, $t0
/* 200AD4 801DDEE4 AC319AA0 */  sw          $s1, %lo(D_800E9AA0)($at)
/* 200AD8 801DDEE8 8C490000 */  lw          $t1, 0x0($v0)
/* 200ADC 801DDEEC 3C01800F */  lui         $at, %hi(D_800EA360)
/* 200AE0 801DDEF0 24040023 */  addiu       $a0, $zero, 0x23
/* 200AE4 801DDEF4 00095080 */  sll         $t2, $t1, 2
/* 200AE8 801DDEF8 002A0821 */  addu        $at, $at, $t2
/* 200AEC 801DDEFC AC23A360 */  sw          $v1, %lo(D_800EA360)($at)
/* 200AF0 801DDF00 8C4B0000 */  lw          $t3, 0x0($v0)
/* 200AF4 801DDF04 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 200AF8 801DDF08 AFA30038 */  sw          $v1, 0x38($sp)
/* 200AFC 801DDF0C 000B6080 */  sll         $t4, $t3, 2
/* 200B00 801DDF10 002C0821 */  addu        $at, $at, $t4
/* 200B04 801DDF14 0C002DAF */  jal         finish_current_thread
/* 200B08 801DDF18 AC209E20 */   sw         $zero, %lo(D_800E9E20)($at)
/* 200B0C 801DDF1C 8E4D0000 */  lw          $t5, 0x0($s2)
/* 200B10 801DDF20 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 200B14 801DDF24 8DAE0000 */  lw          $t6, 0x0($t5)
/* 200B18 801DDF28 000E7880 */  sll         $t7, $t6, 2
/* 200B1C 801DDF2C 002F0821 */  addu        $at, $at, $t7
/* 200B20 801DDF30 0C02BC9F */  jal         func_800AF27C
/* 200B24 801DDF34 AC309AA0 */   sw         $s0, %lo(D_800E9AA0)($at)
/* 200B28 801DDF38 8E420000 */  lw          $v0, 0x0($s2)
/* 200B2C 801DDF3C 3C01801E */  lui         $at, %hi(D_801E30AC_ovl14)
/* 200B30 801DDF40 C43630AC */  lwc1        $f22, %lo(D_801E30AC_ovl14)($at)
/* 200B34 801DDF44 8C500000 */  lw          $s0, 0x0($v0)
/* 200B38 801DDF48 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 200B3C 801DDF4C 2418000A */  addiu       $t8, $zero, 0xA
/* 200B40 801DDF50 00108080 */  sll         $s0, $s0, 2
/* 200B44 801DDF54 00300821 */  addu        $at, $at, $s0
/* 200B48 801DDF58 C4246A10 */  lwc1        $f4, %lo(D_800E6A10)($at)
/* 200B4C 801DDF5C 3C014120 */  lui         $at, (0x41200000 >> 16)
/* 200B50 801DDF60 44813000 */  mtc1        $at, $f6
/* 200B54 801DDF64 44988000 */  mtc1        $t8, $f16
/* 200B58 801DDF68 3C01800E */  lui         $at, %hi(D_800E6690)
/* 200B5C 801DDF6C 46163202 */  mul.s       $f8, $f6, $f22
/* 200B60 801DDF70 00300821 */  addu        $at, $at, $s0
/* 200B64 801DDF74 24090001 */  addiu       $t1, $zero, 0x1
/* 200B68 801DDF78 24040190 */  addiu       $a0, $zero, 0x190
/* 200B6C 801DDF7C 46808520 */  cvt.s.w     $f20, $f16
/* 200B70 801DDF80 46082282 */  mul.s       $f10, $f4, $f8
/* 200B74 801DDF84 E42A6690 */  swc1        $f10, %lo(D_800E6690)($at)
/* 200B78 801DDF88 8C590000 */  lw          $t9, 0x0($v0)
/* 200B7C 801DDF8C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 200B80 801DDF90 00194080 */  sll         $t0, $t9, 2
/* 200B84 801DDF94 00280821 */  addu        $at, $at, $t0
/* 200B88 801DDF98 E4346850 */  swc1        $f20, %lo(D_800E6850)($at)
/* 200B8C 801DDF9C 8C4A0000 */  lw          $t2, 0x0($v0)
/* 200B90 801DDFA0 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 200B94 801DDFA4 000A5880 */  sll         $t3, $t2, 2
/* 200B98 801DDFA8 002B0821 */  addu        $at, $at, $t3
/* 200B9C 801DDFAC 0C029D9E */  jal         play_sound
/* 200BA0 801DDFB0 AC299E20 */   sw         $t1, %lo(D_800E9E20)($at)
/* 200BA4 801DDFB4 0C002DAF */  jal         finish_current_thread
/* 200BA8 801DDFB8 24040014 */   addiu      $a0, $zero, 0x14
/* 200BAC 801DDFBC 8E4C0000 */  lw          $t4, 0x0($s2)
/* 200BB0 801DDFC0 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 200BB4 801DDFC4 2404001E */  addiu       $a0, $zero, 0x1E
/* 200BB8 801DDFC8 8D900000 */  lw          $s0, 0x0($t4)
/* 200BBC 801DDFCC 00108080 */  sll         $s0, $s0, 2
/* 200BC0 801DDFD0 00300821 */  addu        $at, $at, $s0
/* 200BC4 801DDFD4 C4326A10 */  lwc1        $f18, %lo(D_800E6A10)($at)
/* 200BC8 801DDFD8 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 200BCC 801DDFDC 00300821 */  addu        $at, $at, $s0
/* 200BD0 801DDFE0 46149182 */  mul.s       $f6, $f18, $f20
/* 200BD4 801DDFE4 0C002DAF */  jal         finish_current_thread
/* 200BD8 801DDFE8 E42664D0 */   swc1       $f6, %lo(D_800E64D0)($at)
/* 200BDC 801DDFEC 240DFFF6 */  addiu       $t5, $zero, -0xA
/* 200BE0 801DDFF0 448D2000 */  mtc1        $t5, $f4
/* 200BE4 801DDFF4 8E420000 */  lw          $v0, 0x0($s2)
/* 200BE8 801DDFF8 3C01800E */  lui         $at, %hi(D_800E6A10)
/* 200BEC 801DDFFC 46802020 */  cvt.s.w     $f0, $f4
/* 200BF0 801DE000 8C500000 */  lw          $s0, 0x0($v0)
/* 200BF4 801DE004 24040014 */  addiu       $a0, $zero, 0x14
/* 200BF8 801DE008 00108080 */  sll         $s0, $s0, 2
/* 200BFC 801DE00C 00300821 */  addu        $at, $at, $s0
/* 200C00 801DE010 46160282 */  mul.s       $f10, $f0, $f22
/* 200C04 801DE014 C4286A10 */  lwc1        $f8, %lo(D_800E6A10)($at)
/* 200C08 801DE018 3C01800E */  lui         $at, %hi(D_800E6690)
/* 200C0C 801DE01C 00300821 */  addu        $at, $at, $s0
/* 200C10 801DE020 460A4402 */  mul.s       $f16, $f8, $f10
/* 200C14 801DE024 E4306690 */  swc1        $f16, %lo(D_800E6690)($at)
/* 200C18 801DE028 8C4E0000 */  lw          $t6, 0x0($v0)
/* 200C1C 801DE02C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 200C20 801DE030 000E7880 */  sll         $t7, $t6, 2
/* 200C24 801DE034 002F0821 */  addu        $at, $at, $t7
/* 200C28 801DE038 0C002DAF */  jal         finish_current_thread
/* 200C2C 801DE03C E4346850 */   swc1       $f20, %lo(D_800E6850)($at)
/* 200C30 801DE040 8E420000 */  lw          $v0, 0x0($s2)
/* 200C34 801DE044 44809000 */  mtc1        $zero, $f18
/* 200C38 801DE048 3C01800E */  lui         $at, %hi(D_800E6690)
/* 200C3C 801DE04C 8C580000 */  lw          $t8, 0x0($v0)
/* 200C40 801DE050 2404018E */  addiu       $a0, $zero, 0x18E
/* 200C44 801DE054 0018C880 */  sll         $t9, $t8, 2
/* 200C48 801DE058 00390821 */  addu        $at, $at, $t9
/* 200C4C 801DE05C E4326690 */  swc1        $f18, %lo(D_800E6690)($at)
/* 200C50 801DE060 8C500000 */  lw          $s0, 0x0($v0)
/* 200C54 801DE064 3C01800E */  lui         $at, %hi(D_800E6690)
/* 200C58 801DE068 00108080 */  sll         $s0, $s0, 2
/* 200C5C 801DE06C 00300821 */  addu        $at, $at, $s0
/* 200C60 801DE070 C4266690 */  lwc1        $f6, %lo(D_800E6690)($at)
/* 200C64 801DE074 3C01800E */  lui         $at, %hi(D_800E64D0)
/* 200C68 801DE078 00300821 */  addu        $at, $at, $s0
/* 200C6C 801DE07C E42664D0 */  swc1        $f6, %lo(D_800E64D0)($at)
/* 200C70 801DE080 8C480000 */  lw          $t0, 0x0($v0)
/* 200C74 801DE084 3C01801E */  lui         $at, %hi(D_801E30B0_ovl14)
/* 200C78 801DE088 C42430B0 */  lwc1        $f4, %lo(D_801E30B0_ovl14)($at)
/* 200C7C 801DE08C 3C01800E */  lui         $at, %hi(D_800E6850)
/* 200C80 801DE090 00085080 */  sll         $t2, $t0, 2
/* 200C84 801DE094 002A0821 */  addu        $at, $at, $t2
/* 200C88 801DE098 E4246850 */  swc1        $f4, %lo(D_800E6850)($at)
/* 200C8C 801DE09C 8C490000 */  lw          $t1, 0x0($v0)
/* 200C90 801DE0A0 3C01800F */  lui         $at, %hi(D_800E9E20)
/* 200C94 801DE0A4 00095880 */  sll         $t3, $t1, 2
/* 200C98 801DE0A8 002B0821 */  addu        $at, $at, $t3
/* 200C9C 801DE0AC 0C029D9E */  jal         play_sound
/* 200CA0 801DE0B0 AC209E20 */   sw         $zero, %lo(D_800E9E20)($at)
/* 200CA4 801DE0B4 0C03EE45 */  jal         func_800FB914
/* 200CA8 801DE0B8 24040004 */   addiu      $a0, $zero, 0x4
/* 200CAC 801DE0BC 3C01BF80 */  lui         $at, (0xBF800000 >> 16)
/* 200CB0 801DE0C0 4481B000 */  mtc1        $at, $f22
/* 200CB4 801DE0C4 3C013F80 */  lui         $at, (0x3F800000 >> 16)
/* 200CB8 801DE0C8 4481A000 */  mtc1        $at, $f20
/* 200CBC 801DE0CC 00008025 */  move        $s0, $zero
.L801DE0D0:
/* 200CC0 801DE0D0 0C077C07 */  jal         func_801DF01C_ovl14
/* 200CC4 801DE0D4 4600A306 */   mov.s      $f12, $f20
/* 200CC8 801DE0D8 0C077C07 */  jal         func_801DF01C_ovl14
/* 200CCC 801DE0DC 4600B306 */   mov.s      $f12, $f22
/* 200CD0 801DE0E0 0C002DAF */  jal         finish_current_thread
/* 200CD4 801DE0E4 24040008 */   addiu      $a0, $zero, 0x8
/* 200CD8 801DE0E8 0C077B7A */  jal         func_801DEDE8_ovl14
/* 200CDC 801DE0EC 00000000 */   nop
/* 200CE0 801DE0F0 0C002DAF */  jal         finish_current_thread
/* 200CE4 801DE0F4 24040002 */   addiu      $a0, $zero, 0x2
/* 200CE8 801DE0F8 0C077C07 */  jal         func_801DF01C_ovl14
/* 200CEC 801DE0FC 4600A306 */   mov.s      $f12, $f20
/* 200CF0 801DE100 0C077C07 */  jal         func_801DF01C_ovl14
/* 200CF4 801DE104 4600B306 */   mov.s      $f12, $f22
/* 200CF8 801DE108 0C002DAF */  jal         finish_current_thread
/* 200CFC 801DE10C 24040016 */   addiu      $a0, $zero, 0x16
/* 200D00 801DE110 26100001 */  addiu       $s0, $s0, 0x1
/* 200D04 801DE114 1611FFEE */  bne         $s0, $s1, .L801DE0D0
/* 200D08 801DE118 00000000 */   nop
/* 200D0C 801DE11C 0C03EE45 */  jal         func_800FB914
/* 200D10 801DE120 00002025 */   move       $a0, $zero
/* 200D14 801DE124 0C002DAF */  jal         finish_current_thread
/* 200D18 801DE128 2404001E */   addiu      $a0, $zero, 0x1E
/* 200D1C 801DE12C 8E4C0000 */  lw          $t4, 0x0($s2)
/* 200D20 801DE130 3C0F800E */  lui         $t7, %hi(D_800E6A10)
/* 200D24 801DE134 25EF6A10 */  addiu       $t7, $t7, %lo(D_800E6A10)
/* 200D28 801DE138 8D8D0000 */  lw          $t5, 0x0($t4)
/* 200D2C 801DE13C 3C040001 */  lui         $a0, (0x1044B >> 16)
/* 200D30 801DE140 3484044B */  ori         $a0, $a0, (0x1044B & 0xFFFF)
/* 200D34 801DE144 000D7080 */  sll         $t6, $t5, 2
/* 200D38 801DE148 01CF1021 */  addu        $v0, $t6, $t7
/* 200D3C 801DE14C C4480000 */  lwc1        $f8, 0x0($v0)
/* 200D40 801DE150 46164282 */  mul.s       $f10, $f8, $f22
/* 200D44 801DE154 0C02A806 */  jal         func_800AA018
/* 200D48 801DE158 E44A0000 */   swc1       $f10, 0x0($v0)
/* 200D4C 801DE15C 3C040001 */  lui         $a0, (0x1044C >> 16)
/* 200D50 801DE160 0C02A806 */  jal         func_800AA018
/* 200D54 801DE164 3484044C */   ori        $a0, $a0, (0x1044C & 0xFFFF)
/* 200D58 801DE168 0C002DAF */  jal         finish_current_thread
/* 200D5C 801DE16C 2404000A */   addiu      $a0, $zero, 0xA
/* 200D60 801DE170 8E420000 */  lw          $v0, 0x0($s2)
/* 200D64 801DE174 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 200D68 801DE178 24180002 */  addiu       $t8, $zero, 0x2
/* 200D6C 801DE17C 8C590000 */  lw          $t9, 0x0($v0)
/* 200D70 801DE180 8FAA0038 */  lw          $t2, 0x38($sp)
/* 200D74 801DE184 24040014 */  addiu       $a0, $zero, 0x14
/* 200D78 801DE188 00194080 */  sll         $t0, $t9, 2
/* 200D7C 801DE18C 00280821 */  addu        $at, $at, $t0
/* 200D80 801DE190 AC389AA0 */  sw          $t8, %lo(D_800E9AA0)($at)
/* 200D84 801DE194 8C490000 */  lw          $t1, 0x0($v0)
/* 200D88 801DE198 3C01800F */  lui         $at, %hi(D_800EA360)
/* 200D8C 801DE19C 00095880 */  sll         $t3, $t1, 2
/* 200D90 801DE1A0 002B0821 */  addu        $at, $at, $t3
/* 200D94 801DE1A4 0C002DAF */  jal         finish_current_thread
/* 200D98 801DE1A8 AC2AA360 */   sw         $t2, %lo(D_800EA360)($at)
/* 200D9C 801DE1AC 8E4C0000 */  lw          $t4, 0x0($s2)
/* 200DA0 801DE1B0 3C0F800F */  lui         $t7, %hi(D_800E9AA0)
/* 200DA4 801DE1B4 25EF9AA0 */  addiu       $t7, $t7, %lo(D_800E9AA0)
/* 200DA8 801DE1B8 8D8D0000 */  lw          $t5, 0x0($t4)
/* 200DAC 801DE1BC 000D7080 */  sll         $t6, $t5, 2
/* 200DB0 801DE1C0 01CF1021 */  addu        $v0, $t6, $t7
/* 200DB4 801DE1C4 8C590000 */  lw          $t9, 0x0($v0)
/* 200DB8 801DE1C8 37380001 */  ori         $t8, $t9, 0x1
/* 200DBC 801DE1CC 0C02BC9F */  jal         func_800AF27C
/* 200DC0 801DE1D0 AC580000 */   sw         $t8, 0x0($v0)
/* 200DC4 801DE1D4 8E490000 */  lw          $t1, 0x0($s2)
/* 200DC8 801DE1D8 8FBF0034 */  lw          $ra, 0x34($sp)
/* 200DCC 801DE1DC 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 200DD0 801DE1E0 8D2A0000 */  lw          $t2, 0x0($t1)
/* 200DD4 801DE1E4 24080001 */  addiu       $t0, $zero, 0x1
/* 200DD8 801DE1E8 8FB20030 */  lw          $s2, 0x30($sp)
/* 200DDC 801DE1EC 000A5880 */  sll         $t3, $t2, 2
/* 200DE0 801DE1F0 002B0821 */  addu        $at, $at, $t3
/* 200DE4 801DE1F4 D7B40018 */  ldc1        $f20, 0x18($sp)
/* 200DE8 801DE1F8 D7B60020 */  ldc1        $f22, 0x20($sp)
/* 200DEC 801DE1FC 8FB00028 */  lw          $s0, 0x28($sp)
/* 200DF0 801DE200 8FB1002C */  lw          $s1, 0x2C($sp)
/* 200DF4 801DE204 AC28DC50 */  sw          $t0, %lo(gEntityVtableIndexArray)($at)
/* 200DF8 801DE208 03E00008 */  jr          $ra
/* 200DFC 801DE20C 27BD0050 */   addiu      $sp, $sp, 0x50
.type func_801DDE60_ovl14, @function
.size func_801DDE60_ovl14, . - func_801DDE60_ovl14
