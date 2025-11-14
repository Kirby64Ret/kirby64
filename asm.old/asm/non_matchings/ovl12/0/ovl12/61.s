glabel func_801DDDA8_ovl12 # 61
/* 002BA8 801DDDA8 3C068005 */  lui         $a2, %hi(D_8004A7C4)
/* 002BAC 801DDDAC 8CC6A7C4 */  lw          $a2, %lo(D_8004A7C4)($a2)
/* 002BB0 801DDDB0 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 002BB4 801DDDB4 AFBF0014 */  sw          $ra, 0x14($sp)
/* 002BB8 801DDDB8 AFA40018 */  sw          $a0, 0x18($sp)
/* 002BBC 801DDDBC 8CC30000 */  lw          $v1, 0x0($a2)
/* 002BC0 801DDDC0 3C05800D */  lui         $a1, %hi(D_800D7098)
/* 002BC4 801DDDC4 3C09800E */  lui         $t1, %hi(gEntityVtableIndexArray)
/* 002BC8 801DDDC8 3C0E800F */  lui         $t6, %hi(D_800E9560)
/* 002BCC 801DDDCC 00031880 */  sll         $v1, $v1, 2
/* 002BD0 801DDDD0 2529DC50 */  addiu       $t1, $t1, %lo(gEntityVtableIndexArray)
/* 002BD4 801DDDD4 24A57098 */  addiu       $a1, $a1, %lo(D_800D7098)
/* 002BD8 801DDDD8 25CE9560 */  addiu       $t6, $t6, %lo(D_800E9560)
/* 002BDC 801DDDDC 8CB90008 */  lw          $t9, 0x8($a1)
/* 002BE0 801DDDE0 006E3821 */  addu        $a3, $v1, $t6
/* 002BE4 801DDDE4 01237821 */  addu        $t7, $t1, $v1
/* 002BE8 801DDDE8 8DF80000 */  lw          $t8, 0x0($t7)
/* 002BEC 801DDDEC 8CE80000 */  lw          $t0, 0x0($a3)
/* 002BF0 801DDDF0 240A0001 */  addiu       $t2, $zero, 0x1
/* 002BF4 801DDDF4 11590006 */  beq         $t2, $t9, .L801DDE10
/* 002BF8 801DDDF8 01181021 */   addu       $v0, $t0, $t8
/* 002BFC 801DDDFC 8CA40010 */  lw          $a0, 0x10($a1)
/* 002C00 801DDE00 3C0B800F */  lui         $t3, %hi(D_800E9E20)
/* 002C04 801DDE04 256B9E20 */  addiu       $t3, $t3, %lo(D_800E9E20)
/* 002C08 801DDE08 14800012 */  bnez        $a0, .L801DDE54
/* 002C0C 801DDE0C 01636021 */   addu       $t4, $t3, $v1
.L801DDE10:
/* 002C10 801DDE10 250C0001 */  addiu       $t4, $t0, 0x1
/* 002C14 801DDE14 ACEC0000 */  sw          $t4, 0x0($a3)
/* 002C18 801DDE18 8CCD0000 */  lw          $t5, 0x0($a2)
/* 002C1C 801DDE1C 2442FFFF */  addiu       $v0, $v0, -0x1
/* 002C20 801DDE20 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray)
/* 002C24 801DDE24 000D7080 */  sll         $t6, $t5, 2
/* 002C28 801DDE28 012E7821 */  addu        $t7, $t1, $t6
/* 002C2C 801DDE2C ADE20000 */  sw          $v0, 0x0($t7)
/* 002C30 801DDE30 8CD80000 */  lw          $t8, 0x0($a2)
/* 002C34 801DDE34 3C05801E */  lui         $a1, %hi(func_801DD924_ovl12)
/* 002C38 801DDE38 24A5D924 */  addiu       $a1, $a1, %lo(func_801DD924_ovl12)
/* 002C3C 801DDE3C 0018C880 */  sll         $t9, $t8, 2
/* 002C40 801DDE40 00992021 */  addu        $a0, $a0, $t9
/* 002C44 801DDE44 0C02C7B2 */  jal         assign_new_process_entry
/* 002C48 801DDE48 8C84E510 */   lw         $a0, %lo(gEntityGObjProcessArray)($a0)
/* 002C4C 801DDE4C 10000037 */  b           .L801DDF2C
/* 002C50 801DDE50 8FBF0014 */   lw         $ra, 0x14($sp)
.L801DDE54:
/* 002C54 801DDE54 8D8D0000 */  lw          $t5, 0x0($t4)
/* 002C58 801DDE58 3C07800E */  lui         $a3, %hi(D_800E64D0)
/* 002C5C 801DDE5C 24E764D0 */  addiu       $a3, $a3, %lo(D_800E64D0)
/* 002C60 801DDE60 11A0001A */  beqz        $t5, .L801DDECC
/* 002C64 801DDE64 3C08800E */   lui        $t0, %hi(D_800E6690)
/* 002C68 801DDE68 8CA2001C */  lw          $v0, 0x1C($a1)
/* 002C6C 801DDE6C 00E37821 */  addu        $t7, $a3, $v1
/* 002C70 801DDE70 25086690 */  addiu       $t0, $t0, %lo(D_800E6690)
/* 002C74 801DDE74 00021080 */  sll         $v0, $v0, 2
/* 002C78 801DDE78 00E27021 */  addu        $t6, $a3, $v0
/* 002C7C 801DDE7C C5C40000 */  lwc1        $f4, 0x0($t6)
/* 002C80 801DDE80 0102C021 */  addu        $t8, $t0, $v0
/* 002C84 801DDE84 3C09800E */  lui         $t1, %hi(D_800E6850)
/* 002C88 801DDE88 E5E40000 */  swc1        $f4, 0x0($t7)
/* 002C8C 801DDE8C 8CD90000 */  lw          $t9, 0x0($a2)
/* 002C90 801DDE90 C7060000 */  lwc1        $f6, 0x0($t8)
/* 002C94 801DDE94 25296850 */  addiu       $t1, $t1, %lo(D_800E6850)
/* 002C98 801DDE98 00196080 */  sll         $t4, $t9, 2
/* 002C9C 801DDE9C 010C6821 */  addu        $t5, $t0, $t4
/* 002CA0 801DDEA0 E5A60000 */  swc1        $f6, 0x0($t5)
/* 002CA4 801DDEA4 8CCF0000 */  lw          $t7, 0x0($a2)
/* 002CA8 801DDEA8 01227021 */  addu        $t6, $t1, $v0
/* 002CAC 801DDEAC C5C80000 */  lwc1        $f8, 0x0($t6)
/* 002CB0 801DDEB0 000FC080 */  sll         $t8, $t7, 2
/* 002CB4 801DDEB4 0138C821 */  addu        $t9, $t1, $t8
/* 002CB8 801DDEB8 E7280000 */  swc1        $f8, 0x0($t9)
/* 002CBC 801DDEBC 8CCC0000 */  lw          $t4, 0x0($a2)
/* 002CC0 801DDEC0 000C6880 */  sll         $t5, $t4, 2
/* 002CC4 801DDEC4 016D7021 */  addu        $t6, $t3, $t5
/* 002CC8 801DDEC8 ADC00000 */  sw          $zero, 0x0($t6)
.L801DDECC:
/* 002CCC 801DDECC 54800007 */  bnel        $a0, $zero, .L801DDEEC
/* 002CD0 801DDED0 8CAF000C */   lw         $t7, 0xC($a1)
/* 002CD4 801DDED4 0C07737F */  jal         func_801DCDFC_ovl12
/* 002CD8 801DDED8 00000000 */   nop
/* 002CDC 801DDEDC 3C05800D */  lui         $a1, %hi(D_800D7098)
/* 002CE0 801DDEE0 24A57098 */  addiu       $a1, $a1, %lo(D_800D7098)
/* 002CE4 801DDEE4 240A0001 */  addiu       $t2, $zero, 0x1
/* 002CE8 801DDEE8 8CAF000C */  lw          $t7, 0xC($a1)
.L801DDEEC:
/* 002CEC 801DDEEC 3C188005 */  lui         $t8, %hi(D_8004A7C4)
/* 002CF0 801DDEF0 554F000E */  bnel        $t2, $t7, .L801DDF2C
/* 002CF4 801DDEF4 8FBF0014 */   lw         $ra, 0x14($sp)
/* 002CF8 801DDEF8 8F18A7C4 */  lw          $t8, %lo(D_8004A7C4)($t8)
/* 002CFC 801DDEFC 3C0D800F */  lui         $t5, %hi(D_800E9AA0)
/* 002D00 801DDF00 8F190000 */  lw          $t9, 0x0($t8)
/* 002D04 801DDF04 00196080 */  sll         $t4, $t9, 2
/* 002D08 801DDF08 01AC6821 */  addu        $t5, $t5, $t4
/* 002D0C 801DDF0C 8DAD9AA0 */  lw          $t5, %lo(D_800E9AA0)($t5)
/* 002D10 801DDF10 554D0006 */  bnel        $t2, $t5, .L801DDF2C
/* 002D14 801DDF14 8FBF0014 */   lw         $ra, 0x14($sp)
/* 002D18 801DDF18 0C077331 */  jal         func_801DCCC4_ovl12
/* 002D1C 801DDF1C 00000000 */   nop
/* 002D20 801DDF20 0C07735C */  jal         func_801DCD70_ovl12
/* 002D24 801DDF24 00000000 */   nop
/* 002D28 801DDF28 8FBF0014 */  lw          $ra, 0x14($sp)
.L801DDF2C:
/* 002D2C 801DDF2C 27BD0018 */  addiu       $sp, $sp, 0x18
/* 002D30 801DDF30 03E00008 */  jr          $ra
/* 002D34 801DDF34 00000000 */   nop
.type func_801DDDA8_ovl12, @function
.size func_801DDDA8_ovl12, . - func_801DDDA8_ovl12
