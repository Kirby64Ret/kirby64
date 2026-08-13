nonmatching func_801DDDA8_ovl12, 0x190

glabel func_801DDDA8_ovl12
    /* 1EE0E8 801DDDA8 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 1EE0EC 801DDDAC 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 1EE0F0 801DDDB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EE0F4 801DDDB4 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1EE0F8 801DDDB8 AFA40018 */  sw         $a0, 0x18($sp)
    /* 1EE0FC 801DDDBC 8CC30000 */  lw         $v1, 0x0($a2)
    /* 1EE100 801DDDC0 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 1EE104 801DDDC4 3C09800E */  lui        $t1, %hi(gEntityFuncListIDArray)
    /* 1EE108 801DDDC8 3C0E800F */  lui        $t6, %hi(D_800E9560)
    /* 1EE10C 801DDDCC 00031880 */  sll        $v1, $v1, 2
    /* 1EE110 801DDDD0 2529DC50 */  addiu      $t1, $t1, %lo(gEntityFuncListIDArray)
    /* 1EE114 801DDDD4 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
    /* 1EE118 801DDDD8 25CE9560 */  addiu      $t6, $t6, %lo(D_800E9560)
    /* 1EE11C 801DDDDC 8CB90008 */  lw         $t9, 0x8($a1)
    /* 1EE120 801DDDE0 006E3821 */  addu       $a3, $v1, $t6
    /* 1EE124 801DDDE4 01237821 */  addu       $t7, $t1, $v1
    /* 1EE128 801DDDE8 8DF80000 */  lw         $t8, 0x0($t7)
    /* 1EE12C 801DDDEC 8CE80000 */  lw         $t0, 0x0($a3)
    /* 1EE130 801DDDF0 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1EE134 801DDDF4 11590006 */  beq        $t2, $t9, .L801DDE10_ovl12
    /* 1EE138 801DDDF8 01181021 */   addu      $v0, $t0, $t8
    /* 1EE13C 801DDDFC 8CA40010 */  lw         $a0, 0x10($a1)
    /* 1EE140 801DDE00 3C0B800F */  lui        $t3, %hi(D_800E9E20)
    /* 1EE144 801DDE04 256B9E20 */  addiu      $t3, $t3, %lo(D_800E9E20)
    /* 1EE148 801DDE08 14800012 */  bnez       $a0, .L801DDE54_ovl12
    /* 1EE14C 801DDE0C 01636021 */   addu      $t4, $t3, $v1
  .L801DDE10_ovl12:
    /* 1EE150 801DDE10 250C0001 */  addiu      $t4, $t0, 0x1
    /* 1EE154 801DDE14 ACEC0000 */  sw         $t4, 0x0($a3)
    /* 1EE158 801DDE18 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 1EE15C 801DDE1C 2442FFFF */  addiu      $v0, $v0, -0x1
    /* 1EE160 801DDE20 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1EE164 801DDE24 000D7080 */  sll        $t6, $t5, 2
    /* 1EE168 801DDE28 012E7821 */  addu       $t7, $t1, $t6
    /* 1EE16C 801DDE2C ADE20000 */  sw         $v0, 0x0($t7)
    /* 1EE170 801DDE30 8CD80000 */  lw         $t8, 0x0($a2)
    /* 1EE174 801DDE34 3C05801E */  lui        $a1, %hi(func_801DD924_ovl12)
    /* 1EE178 801DDE38 24A5D924 */  addiu      $a1, $a1, %lo(func_801DD924_ovl12)
    /* 1EE17C 801DDE3C 0018C880 */  sll        $t9, $t8, 2
    /* 1EE180 801DDE40 00992021 */  addu       $a0, $a0, $t9
    /* 1EE184 801DDE44 0C02C7B2 */  jal        assign_new_process_entry
    /* 1EE188 801DDE48 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1EE18C 801DDE4C 10000037 */  b          .L801DDF2C_ovl12
    /* 1EE190 801DDE50 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DDE54_ovl12:
    /* 1EE194 801DDE54 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 1EE198 801DDE58 3C07800E */  lui        $a3, %hi(D_800E64D0)
    /* 1EE19C 801DDE5C 24E764D0 */  addiu      $a3, $a3, %lo(D_800E64D0)
    /* 1EE1A0 801DDE60 11A0001A */  beqz       $t5, .L801DDECC_ovl12
    /* 1EE1A4 801DDE64 3C08800E */   lui       $t0, %hi(D_800E6690)
    /* 1EE1A8 801DDE68 8CA2001C */  lw         $v0, 0x1C($a1)
    /* 1EE1AC 801DDE6C 00E37821 */  addu       $t7, $a3, $v1
    /* 1EE1B0 801DDE70 25086690 */  addiu      $t0, $t0, %lo(D_800E6690)
    /* 1EE1B4 801DDE74 00021080 */  sll        $v0, $v0, 2
    /* 1EE1B8 801DDE78 00E27021 */  addu       $t6, $a3, $v0
    /* 1EE1BC 801DDE7C C5C40000 */  lwc1       $f4, 0x0($t6)
    /* 1EE1C0 801DDE80 0102C021 */  addu       $t8, $t0, $v0
    /* 1EE1C4 801DDE84 3C09800E */  lui        $t1, %hi(D_800E6850)
    /* 1EE1C8 801DDE88 E5E40000 */  swc1       $f4, 0x0($t7)
    /* 1EE1CC 801DDE8C 8CD90000 */  lw         $t9, 0x0($a2)
    /* 1EE1D0 801DDE90 C7060000 */  lwc1       $f6, 0x0($t8)
    /* 1EE1D4 801DDE94 25296850 */  addiu      $t1, $t1, %lo(D_800E6850)
    /* 1EE1D8 801DDE98 00196080 */  sll        $t4, $t9, 2
    /* 1EE1DC 801DDE9C 010C6821 */  addu       $t5, $t0, $t4
    /* 1EE1E0 801DDEA0 E5A60000 */  swc1       $f6, 0x0($t5)
    /* 1EE1E4 801DDEA4 8CCF0000 */  lw         $t7, 0x0($a2)
    /* 1EE1E8 801DDEA8 01227021 */  addu       $t6, $t1, $v0
    /* 1EE1EC 801DDEAC C5C80000 */  lwc1       $f8, 0x0($t6)
    /* 1EE1F0 801DDEB0 000FC080 */  sll        $t8, $t7, 2
    /* 1EE1F4 801DDEB4 0138C821 */  addu       $t9, $t1, $t8
    /* 1EE1F8 801DDEB8 E7280000 */  swc1       $f8, 0x0($t9)
    /* 1EE1FC 801DDEBC 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 1EE200 801DDEC0 000C6880 */  sll        $t5, $t4, 2
    /* 1EE204 801DDEC4 016D7021 */  addu       $t6, $t3, $t5
    /* 1EE208 801DDEC8 ADC00000 */  sw         $zero, 0x0($t6)
  .L801DDECC_ovl12:
    /* 1EE20C 801DDECC 54800007 */  bnel       $a0, $zero, .L801DDEEC_ovl12
    /* 1EE210 801DDED0 8CAF000C */   lw        $t7, 0xC($a1)
    /* 1EE214 801DDED4 0C07737F */  jal        func_801DCDFC_ovl12
    /* 1EE218 801DDED8 00000000 */   nop
    /* 1EE21C 801DDEDC 3C05800D */  lui        $a1, %hi(D_800D7098)
    /* 1EE220 801DDEE0 24A57098 */  addiu      $a1, $a1, %lo(D_800D7098)
    /* 1EE224 801DDEE4 240A0001 */  addiu      $t2, $zero, 0x1
    /* 1EE228 801DDEE8 8CAF000C */  lw         $t7, 0xC($a1)
  .L801DDEEC_ovl12:
    /* 1EE22C 801DDEEC 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 1EE230 801DDEF0 554F000E */  bnel       $t2, $t7, .L801DDF2C_ovl12
    /* 1EE234 801DDEF4 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EE238 801DDEF8 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 1EE23C 801DDEFC 3C0D800F */  lui        $t5, %hi(D_800E9AA0)
    /* 1EE240 801DDF00 8F190000 */  lw         $t9, 0x0($t8)
    /* 1EE244 801DDF04 00196080 */  sll        $t4, $t9, 2
    /* 1EE248 801DDF08 01AC6821 */  addu       $t5, $t5, $t4
    /* 1EE24C 801DDF0C 8DAD9AA0 */  lw         $t5, %lo(D_800E9AA0)($t5)
    /* 1EE250 801DDF10 554D0006 */  bnel       $t2, $t5, .L801DDF2C_ovl12
    /* 1EE254 801DDF14 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EE258 801DDF18 0C077331 */  jal        func_801DCCC4_ovl12
    /* 1EE25C 801DDF1C 00000000 */   nop
    /* 1EE260 801DDF20 0C07735C */  jal        func_801DCD70_ovl12
    /* 1EE264 801DDF24 00000000 */   nop
    /* 1EE268 801DDF28 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DDF2C_ovl12:
    /* 1EE26C 801DDF2C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EE270 801DDF30 03E00008 */  jr         $ra
    /* 1EE274 801DDF34 00000000 */   nop
endlabel func_801DDDA8_ovl12
.size func_801DDDA8_ovl12, . - func_801DDDA8_ovl12
