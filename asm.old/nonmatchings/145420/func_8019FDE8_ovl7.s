glabel func_8019FDE8_ovl7
/* 145E58 8019FDE8 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 145E5C 8019FDEC 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 145E60 8019FDF0 8CCE0000 */  lw         $t6, 0x0($a2)
/* 145E64 8019FDF4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 145E68 8019FDF8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 145E6C 8019FDFC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 145E70 8019FE00 3C03800E */  lui        $v1, %hi(D_800E1B50)
/* 145E74 8019FE04 27A4002C */  addiu      $a0, $sp, 0x2C
/* 145E78 8019FE08 000FC080 */  sll        $t8, $t7, 2
/* 145E7C 8019FE0C 00781821 */  addu       $v1, $v1, $t8
/* 145E80 8019FE10 8C631B50 */  lw         $v1, %lo(D_800E1B50)($v1)
/* 145E84 8019FE14 0C0442C0 */  jal        func_80110B00
/* 145E88 8019FE18 AFA30048 */   sw        $v1, 0x48($sp)
/* 145E8C 8019FE1C 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 145E90 8019FE20 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 145E94 8019FE24 10400013 */  beqz       $v0, .L8019FE74_ovl7
/* 145E98 8019FE28 8FA30048 */   lw        $v1, 0x48($sp)
/* 145E9C 8019FE2C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 145EA0 8019FE30 93B9002E */  lbu        $t9, 0x2E($sp)
/* 145EA4 8019FE34 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 145EA8 8019FE38 8DAE0000 */  lw         $t6, 0x0($t5)
/* 145EAC 8019FE3C 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 145EB0 8019FE40 2407FFFF */  addiu      $a3, $zero, -0x1
/* 145EB4 8019FE44 000E7880 */  sll        $t7, $t6, 2
/* 145EB8 8019FE48 00AFC021 */  addu       $t8, $a1, $t7
/* 145EBC 8019FE4C AF190000 */  sw         $t9, 0x0($t8)
/* 145EC0 8019FE50 93AD002F */  lbu        $t5, 0x2F($sp)
/* 145EC4 8019FE54 A06D0043 */  sb         $t5, 0x43($v1)
/* 145EC8 8019FE58 93AE002C */  lbu        $t6, 0x2C($sp)
/* 145ECC 8019FE5C A06E003E */  sb         $t6, 0x3E($v1)
/* 145ED0 8019FE60 93AF002D */  lbu        $t7, 0x2D($sp)
/* 145ED4 8019FE64 A06F003F */  sb         $t7, 0x3F($v1)
/* 145ED8 8019FE68 8FB90038 */  lw         $t9, 0x38($sp)
/* 145EDC 8019FE6C 1000003D */  b          .L8019FF64_ovl7
/* 145EE0 8019FE70 A079003A */   sb        $t9, 0x3A($v1)
.L8019FE74_ovl7:
/* 145EE4 8019FE74 27A4002C */  addiu      $a0, $sp, 0x2C
/* 145EE8 8019FE78 0C0443F5 */  jal        func_80110FD4
/* 145EEC 8019FE7C AFA30048 */   sw        $v1, 0x48($sp)
/* 145EF0 8019FE80 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 145EF4 8019FE84 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 145EF8 8019FE88 10400013 */  beqz       $v0, .L8019FED8_ovl7
/* 145EFC 8019FE8C 8FA30048 */   lw        $v1, 0x48($sp)
/* 145F00 8019FE90 8CCD0000 */  lw         $t5, 0x0($a2)
/* 145F04 8019FE94 93B8002E */  lbu        $t8, 0x2E($sp)
/* 145F08 8019FE98 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 145F0C 8019FE9C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 145F10 8019FEA0 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 145F14 8019FEA4 2407FFFF */  addiu      $a3, $zero, -0x1
/* 145F18 8019FEA8 000E7880 */  sll        $t7, $t6, 2
/* 145F1C 8019FEAC 00AFC821 */  addu       $t9, $a1, $t7
/* 145F20 8019FEB0 AF380000 */  sw         $t8, 0x0($t9)
/* 145F24 8019FEB4 93AD002F */  lbu        $t5, 0x2F($sp)
/* 145F28 8019FEB8 A06D0043 */  sb         $t5, 0x43($v1)
/* 145F2C 8019FEBC 93AE002C */  lbu        $t6, 0x2C($sp)
/* 145F30 8019FEC0 A06E003E */  sb         $t6, 0x3E($v1)
/* 145F34 8019FEC4 93AF002D */  lbu        $t7, 0x2D($sp)
/* 145F38 8019FEC8 A06F003F */  sb         $t7, 0x3F($v1)
/* 145F3C 8019FECC 8FB80038 */  lw         $t8, 0x38($sp)
/* 145F40 8019FED0 10000024 */  b          .L8019FF64_ovl7
/* 145F44 8019FED4 A078003A */   sb        $t8, 0x3A($v1)
.L8019FED8_ovl7:
/* 145F48 8019FED8 27A4002C */  addiu      $a0, $sp, 0x2C
/* 145F4C 8019FEDC 0C044054 */  jal        func_80110150
/* 145F50 8019FEE0 AFA30048 */   sw        $v1, 0x48($sp)
/* 145F54 8019FEE4 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 145F58 8019FEE8 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 145F5C 8019FEEC 10400013 */  beqz       $v0, .L8019FF3C_ovl7
/* 145F60 8019FEF0 8FA30048 */   lw        $v1, 0x48($sp)
/* 145F64 8019FEF4 8CCD0000 */  lw         $t5, 0x0($a2)
/* 145F68 8019FEF8 93B9002E */  lbu        $t9, 0x2E($sp)
/* 145F6C 8019FEFC 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 145F70 8019FF00 8DAE0000 */  lw         $t6, 0x0($t5)
/* 145F74 8019FF04 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 145F78 8019FF08 2407FFFF */  addiu      $a3, $zero, -0x1
/* 145F7C 8019FF0C 000E7880 */  sll        $t7, $t6, 2
/* 145F80 8019FF10 00AFC021 */  addu       $t8, $a1, $t7
/* 145F84 8019FF14 AF190000 */  sw         $t9, 0x0($t8)
/* 145F88 8019FF18 93AD002F */  lbu        $t5, 0x2F($sp)
/* 145F8C 8019FF1C A06D0043 */  sb         $t5, 0x43($v1)
/* 145F90 8019FF20 93AE002C */  lbu        $t6, 0x2C($sp)
/* 145F94 8019FF24 A06E003E */  sb         $t6, 0x3E($v1)
/* 145F98 8019FF28 93AF002D */  lbu        $t7, 0x2D($sp)
/* 145F9C 8019FF2C A06F003F */  sb         $t7, 0x3F($v1)
/* 145FA0 8019FF30 8FB90038 */  lw         $t9, 0x38($sp)
/* 145FA4 8019FF34 1000000B */  b          .L8019FF64_ovl7
/* 145FA8 8019FF38 A079003A */   sb        $t9, 0x3A($v1)
.L8019FF3C_ovl7:
/* 145FAC 8019FF3C 8CD80000 */  lw         $t8, 0x0($a2)
/* 145FB0 8019FF40 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 145FB4 8019FF44 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 145FB8 8019FF48 8F0D0000 */  lw         $t5, 0x0($t8)
/* 145FBC 8019FF4C 2407FFFF */  addiu      $a3, $zero, -0x1
/* 145FC0 8019FF50 000D7080 */  sll        $t6, $t5, 2
/* 145FC4 8019FF54 00AE7821 */  addu       $t7, $a1, $t6
/* 145FC8 8019FF58 ADE00000 */  sw         $zero, 0x0($t7)
/* 145FCC 8019FF5C A0600043 */  sb         $zero, 0x43($v1)
/* 145FD0 8019FF60 A067003A */  sb         $a3, 0x3A($v1)
.L8019FF64_ovl7:
/* 145FD4 8019FF64 8CC90000 */  lw         $t1, 0x0($a2)
/* 145FD8 8019FF68 8D280000 */  lw         $t0, 0x0($t1)
/* 145FDC 8019FF6C 00084080 */  sll        $t0, $t0, 2
/* 145FE0 8019FF70 00A8C821 */  addu       $t9, $a1, $t0
/* 145FE4 8019FF74 8F380000 */  lw         $t8, 0x0($t9)
/* 145FE8 8019FF78 270DFFFF */  addiu      $t5, $t8, -0x1
/* 145FEC 8019FF7C 2DA10009 */  sltiu      $at, $t5, 0x9
/* 145FF0 8019FF80 102000AB */  beqz       $at, .L801A0230_ovl7
/* 145FF4 8019FF84 000D6880 */   sll       $t5, $t5, 2
/* 145FF8 8019FF88 3C01801D */  lui        $at, %hi(jtbl_801CDEA0_ovl7)
/* 145FFC 8019FF8C 002D0821 */  addu       $at, $at, $t5
/* 146000 8019FF90 8C2DDEA0 */  lw         $t5, %lo(jtbl_801CDEA0_ovl7)($at)
/* 146004 8019FF94 01A00008 */  jr         $t5
/* 146008 8019FF98 00000000 */   nop
/* 14600C 8019FF9C 8FA40038 */  lw         $a0, 0x38($sp)
/* 146010 8019FFA0 0C068091 */  jal        func_801A0244_ovl7
/* 146014 8019FFA4 AFA30048 */   sw        $v1, 0x48($sp)
/* 146018 8019FFA8 3C05800F */  lui        $a1, %hi(D_800E83E0)
/* 14601C 8019FFAC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 146020 8019FFB0 2407FFFF */  addiu      $a3, $zero, -0x1
/* 146024 8019FFB4 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 146028 8019FFB8 24A583E0 */  addiu      $a1, $a1, %lo(D_800E83E0)
/* 14602C 8019FFBC 1047001B */  beq        $v0, $a3, .L801A002C_ovl7
/* 146030 8019FFC0 8FA30048 */   lw        $v1, 0x48($sp)
/* 146034 8019FFC4 8CCF0000 */  lw         $t7, 0x0($a2)
/* 146038 8019FFC8 240E0012 */  addiu      $t6, $zero, 0x12
/* 14603C 8019FFCC 240400F4 */  addiu      $a0, $zero, 0xF4
/* 146040 8019FFD0 8DF90000 */  lw         $t9, 0x0($t7)
/* 146044 8019FFD4 0019C080 */  sll        $t8, $t9, 2
/* 146048 8019FFD8 00B86821 */  addu       $t5, $a1, $t8
/* 14604C 8019FFDC ADAE0000 */  sw         $t6, 0x0($t5)
/* 146050 8019FFE0 0C029D9E */  jal        play_sound
/* 146054 8019FFE4 AFA30048 */   sw        $v1, 0x48($sp)
/* 146058 8019FFE8 8FA30048 */  lw         $v1, 0x48($sp)
/* 14605C 8019FFEC 3C068005 */  lui        $a2, %hi(D_8004A7C4)
/* 146060 8019FFF0 240F0001 */  addiu      $t7, $zero, 0x1
/* 146064 8019FFF4 24C6A7C4 */  addiu      $a2, $a2, %lo(D_8004A7C4)
/* 146068 8019FFF8 AC600094 */  sw         $zero, 0x94($v1)
/* 14606C 8019FFFC A06F0040 */  sb         $t7, 0x40($v1)
/* 146070 801A0000 8CD90000 */  lw         $t9, 0x0($a2)
/* 146074 801A0004 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 146078 801A0008 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 14607C 801A000C 8F380000 */  lw         $t8, 0x0($t9)
/* 146080 801A0010 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 146084 801A0014 00187080 */  sll        $t6, $t8, 2
/* 146088 801A0018 008E2021 */  addu       $a0, $a0, $t6
/* 14608C 801A001C 0C02C7B2 */  jal        assign_new_process_entry
/* 146090 801A0020 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 146094 801A0024 10000083 */  b          .L801A0234_ovl7
/* 146098 801A0028 24020001 */   addiu     $v0, $zero, 0x1
.L801A002C_ovl7:
/* 14609C 801A002C 8CCD0000 */  lw         $t5, 0x0($a2)
/* 1460A0 801A0030 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 1460A4 801A0034 3C05801A */  lui        $a1, %hi(func_801A3E80_ovl7)
/* 1460A8 801A0038 8DAF0000 */  lw         $t7, 0x0($t5)
/* 1460AC 801A003C 24A53E80 */  addiu      $a1, $a1, %lo(func_801A3E80_ovl7)
/* 1460B0 801A0040 000FC880 */  sll        $t9, $t7, 2
/* 1460B4 801A0044 00992021 */  addu       $a0, $a0, $t9
/* 1460B8 801A0048 0C02C7B2 */  jal        assign_new_process_entry
/* 1460BC 801A004C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1460C0 801A0050 10000078 */  b          .L801A0234_ovl7
/* 1460C4 801A0054 24020001 */   addiu     $v0, $zero, 0x1
/* 1460C8 801A0058 3C04800E */  lui        $a0, %hi(D_800DE350)
/* 1460CC 801A005C 00882021 */  addu       $a0, $a0, $t0
/* 1460D0 801A0060 0C067AF3 */  jal        func_8019EBCC_ovl7
/* 1460D4 801A0064 8C84E350 */   lw        $a0, %lo(D_800DE350)($a0)
/* 1460D8 801A0068 0C068EE9 */  jal        func_801A3BA4_ovl7
/* 1460DC 801A006C 00000000 */   nop
/* 1460E0 801A0070 10000070 */  b          .L801A0234_ovl7
/* 1460E4 801A0074 24020001 */   addiu     $v0, $zero, 0x1
/* 1460E8 801A0078 8FB80038 */  lw         $t8, 0x38($sp)
/* 1460EC 801A007C 3C01800F */  lui        $at, %hi(D_800E8220)
/* 1460F0 801A0080 00280821 */  addu       $at, $at, $t0
/* 1460F4 801A0084 13070006 */  beq        $t8, $a3, .L801A00A0_ovl7
/* 1460F8 801A0088 AC208220 */   sw        $zero, %lo(D_800E8220)($at)
/* 1460FC 801A008C 8D2E0000 */  lw         $t6, 0x0($t1)
/* 146100 801A0090 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 146104 801A0094 000E6880 */  sll        $t5, $t6, 2
/* 146108 801A0098 002D0821 */  addu       $at, $at, $t5
/* 14610C 801A009C AC380D50 */  sw         $t8, %lo(D_800E0D50)($at)
.L801A00A0_ovl7:
/* 146110 801A00A0 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 146114 801A00A4 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 146118 801A00A8 844F00B2 */  lh         $t7, 0xB2($v0)
/* 14611C 801A00AC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 146120 801A00B0 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
/* 146124 801A00B4 25F90001 */  addiu      $t9, $t7, 0x1
/* 146128 801A00B8 A45900B2 */  sh         $t9, 0xB2($v0)
/* 14612C 801A00BC 8D2E0000 */  lw         $t6, 0x0($t1)
/* 146130 801A00C0 24A57000 */  addiu      $a1, $a1, %lo(func_801A7000_ovl7)
/* 146134 801A00C4 000EC080 */  sll        $t8, $t6, 2
/* 146138 801A00C8 00982021 */  addu       $a0, $a0, $t8
/* 14613C 801A00CC 0C02C7B2 */  jal        assign_new_process_entry
/* 146140 801A00D0 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
/* 146144 801A00D4 10000057 */  b          .L801A0234_ovl7
/* 146148 801A00D8 24020001 */   addiu     $v0, $zero, 0x1
/* 14614C 801A00DC 3C028013 */  lui        $v0, %hi(gKirbyState)
/* 146150 801A00E0 2442E7C0 */  addiu      $v0, $v0, %lo(gKirbyState)
/* 146154 801A00E4 904D0004 */  lbu        $t5, 0x4($v0)
/* 146158 801A00E8 3C01800F */  lui        $at, %hi(D_800E8220)
/* 14615C 801A00EC 00280821 */  addu       $at, $at, $t0
/* 146160 801A00F0 15A00015 */  bnez       $t5, .L801A0148_ovl7
/* 146164 801A00F4 240F0001 */   addiu     $t7, $zero, 0x1
/* 146168 801A00F8 8FAE0038 */  lw         $t6, 0x38($sp)
/* 14616C 801A00FC AC2F8220 */  sw         $t7, %lo(D_800E8220)($at)
/* 146170 801A0100 24190002 */  addiu      $t9, $zero, 0x2
/* 146174 801A0104 11C70006 */  beq        $t6, $a3, .L801A0120_ovl7
/* 146178 801A0108 A0590004 */   sb        $t9, 0x4($v0)
/* 14617C 801A010C 8D380000 */  lw         $t8, 0x0($t1)
/* 146180 801A0110 3C01800E */  lui        $at, %hi(D_800E0D50)
/* 146184 801A0114 00186880 */  sll        $t5, $t8, 2
/* 146188 801A0118 002D0821 */  addu       $at, $at, $t5
/* 14618C 801A011C AC2E0D50 */  sw         $t6, %lo(D_800E0D50)($at)
.L801A0120_ovl7:
/* 146190 801A0120 8D2F0000 */  lw         $t7, 0x0($t1)
/* 146194 801A0124 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
/* 146198 801A0128 3C05801A */  lui        $a1, %hi(func_801A7000_ovl7)
/* 14619C 801A012C 000FC880 */  sll        $t9, $t7, 2
/* 1461A0 801A0130 00992021 */  addu       $a0, $a0, $t9
/* 1461A4 801A0134 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1461A8 801A0138 0C02C7B2 */  jal        assign_new_process_entry
/* 1461AC 801A013C 24A57000 */   addiu     $a1, $a1, %lo(func_801A7000_ovl7)
/* 1461B0 801A0140 1000003C */  b          .L801A0234_ovl7
/* 1461B4 801A0144 24020001 */   addiu     $v0, $zero, 0x1
.L801A0148_ovl7:
/* 1461B8 801A0148 1000003A */  b          .L801A0234_ovl7
/* 1461BC 801A014C 00001025 */   or        $v0, $zero, $zero
/* 1461C0 801A0150 8078003A */  lb         $t8, 0x3A($v1)
/* 1461C4 801A0154 3C0D800E */  lui        $t5, %hi(D_800DE350)
/* 1461C8 801A0158 3C0A800E */  lui        $t2, %hi(gEntitiesNextPosXArray)
/* 1461CC 801A015C 00187080 */  sll        $t6, $t8, 2
/* 1461D0 801A0160 01AE6821 */  addu       $t5, $t5, $t6
/* 1461D4 801A0164 8DADE350 */  lw         $t5, %lo(D_800DE350)($t5)
/* 1461D8 801A0168 254A25D0 */  addiu      $t2, $t2, %lo(gEntitiesNextPosXArray)
/* 1461DC 801A016C 3C01801D */  lui        $at, %hi(D_801CDEC4_ovl7)
/* 1461E0 801A0170 11A0002D */  beqz       $t5, .L801A0228_ovl7
/* 1461E4 801A0174 240F0014 */   addiu     $t7, $zero, 0x14
/* 1461E8 801A0178 C420DEC4 */  lwc1       $f0, %lo(D_801CDEC4_ovl7)($at)
/* 1461EC 801A017C 3C01800E */  lui        $at, %hi(D_800E7CE0)
/* 1461F0 801A0180 00280821 */  addu       $at, $at, $t0
/* 1461F4 801A0184 AC2F7CE0 */  sw         $t7, %lo(D_800E7CE0)($at)
/* 1461F8 801A0188 8D280000 */  lw         $t0, 0x0($t1)
/* 1461FC 801A018C 8062003A */  lb         $v0, 0x3A($v1)
/* 146200 801A0190 3C0B800E */  lui        $t3, %hi(gEntitiesNextPosYArray)
/* 146204 801A0194 00084080 */  sll        $t0, $t0, 2
/* 146208 801A0198 00021080 */  sll        $v0, $v0, 2
/* 14620C 801A019C 0142C821 */  addu       $t9, $t2, $v0
/* 146210 801A01A0 0148C021 */  addu       $t8, $t2, $t0
/* 146214 801A01A4 C7060000 */  lwc1       $f6, 0x0($t8)
/* 146218 801A01A8 C7240000 */  lwc1       $f4, 0x0($t9)
/* 14621C 801A01AC 256B2790 */  addiu      $t3, $t3, %lo(gEntitiesNextPosYArray)
/* 146220 801A01B0 3C0C800E */  lui        $t4, %hi(gEntitiesNextPosZArray)
/* 146224 801A01B4 46062201 */  sub.s      $f8, $f4, $f6
/* 146228 801A01B8 01627021 */  addu       $t6, $t3, $v0
/* 14622C 801A01BC 01686821 */  addu       $t5, $t3, $t0
/* 146230 801A01C0 C5B20000 */  lwc1       $f18, 0x0($t5)
/* 146234 801A01C4 46004282 */  mul.s      $f10, $f8, $f0
/* 146238 801A01C8 C5D00000 */  lwc1       $f16, 0x0($t6)
/* 14623C 801A01CC 258C2950 */  addiu      $t4, $t4, %lo(gEntitiesNextPosZArray)
/* 146240 801A01D0 01827821 */  addu       $t7, $t4, $v0
/* 146244 801A01D4 0188C821 */  addu       $t9, $t4, $t0
/* 146248 801A01D8 46128101 */  sub.s      $f4, $f16, $f18
/* 14624C 801A01DC C5E80000 */  lwc1       $f8, 0x0($t7)
/* 146250 801A01E0 44065000 */  mfc1       $a2, $f10
/* 146254 801A01E4 C72A0000 */  lwc1       $f10, 0x0($t9)
/* 146258 801A01E8 46002182 */  mul.s      $f6, $f4, $f0
/* 14625C 801A01EC AFA30048 */  sw         $v1, 0x48($sp)
/* 146260 801A01F0 460A4401 */  sub.s      $f16, $f8, $f10
/* 146264 801A01F4 00002025 */  or         $a0, $zero, $zero
/* 146268 801A01F8 24050009 */  addiu      $a1, $zero, 0x9
/* 14626C 801A01FC 46008482 */  mul.s      $f18, $f16, $f0
/* 146270 801A0200 44073000 */  mfc1       $a3, $f6
/* 146274 801A0204 0C03F55C */  jal        func_800FD570
/* 146278 801A0208 E7B20010 */   swc1      $f18, 0x10($sp)
/* 14627C 801A020C 8FA30048 */  lw         $v1, 0x48($sp)
/* 146280 801A0210 3C01800F */  lui        $at, %hi(D_800E8760)
/* 146284 801A0214 24180001 */  addiu      $t8, $zero, 0x1
/* 146288 801A0218 806E003A */  lb         $t6, 0x3A($v1)
/* 14628C 801A021C 000E6880 */  sll        $t5, $t6, 2
/* 146290 801A0220 002D0821 */  addu       $at, $at, $t5
/* 146294 801A0224 AC388760 */  sw         $t8, %lo(D_800E8760)($at)
.L801A0228_ovl7:
/* 146298 801A0228 10000002 */  b          .L801A0234_ovl7
/* 14629C 801A022C 00001025 */   or        $v0, $zero, $zero
.L801A0230_ovl7:
/* 1462A0 801A0230 00001025 */  or         $v0, $zero, $zero
.L801A0234_ovl7:
/* 1462A4 801A0234 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1462A8 801A0238 27BD0050 */  addiu      $sp, $sp, 0x50
/* 1462AC 801A023C 03E00008 */  jr         $ra
/* 1462B0 801A0240 00000000 */   nop
