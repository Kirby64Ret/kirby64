nonmatching func_800BBDC4, 0x19C

glabel func_800BBDC4
    /* 64014 800BBDC4 3C06800F */  lui        $a2, %hi(D_800ED4EC)
    /* 64018 800BBDC8 24C6D4EC */  addiu      $a2, $a2, %lo(D_800ED4EC)
    /* 6401C 800BBDCC 8CC30000 */  lw         $v1, 0x0($a2)
    /* 64020 800BBDD0 3C098005 */  lui        $t1, %hi(gPlayerControllers)
    /* 64024 800BBDD4 25298F20 */  addiu      $t1, $t1, %lo(gPlayerControllers)
    /* 64028 800BBDD8 A5200004 */  sh         $zero, 0x4($t1)
    /* 6402C 800BBDDC A5200002 */  sh         $zero, 0x2($t1)
    /* 64030 800BBDE0 04610007 */  bgez       $v1, .L800BBE00
    /* 64034 800BBDE4 A5200000 */   sh        $zero, 0x0($t1)
    /* 64038 800BBDE8 240E0002 */  addiu      $t6, $zero, 0x2
    /* 6403C 800BBDEC 3C01800C */  lui        $at, %hi(D_800BE4F8)
    /* 64040 800BBDF0 AC2EE4F8 */  sw         $t6, %lo(D_800BE4F8)($at)
    /* 64044 800BBDF4 3C01800D */  lui        $at, %hi(D_800D6F38)
    /* 64048 800BBDF8 03E00008 */  jr         $ra
    /* 6404C 800BBDFC AC206F38 */   sw        $zero, %lo(D_800D6F38)($at)
  .L800BBE00:
    /* 64050 800BBE00 3C07800F */  lui        $a3, %hi(D_800ED4F4)
    /* 64054 800BBE04 24E7D4F4 */  addiu      $a3, $a3, %lo(D_800ED4F4)
    /* 64058 800BBE08 8CEF0000 */  lw         $t7, 0x0($a3)
    /* 6405C 800BBE0C 3C04800F */  lui        $a0, %hi(D_800ED4E0)
    /* 64060 800BBE10 25F8FFFF */  addiu      $t8, $t7, -0x1
    /* 64064 800BBE14 1F000021 */  bgtz       $t8, .L800BBE9C
    /* 64068 800BBE18 ACF80000 */   sw        $t8, 0x0($a3)
    /* 6406C 800BBE1C 8C84D4E0 */  lw         $a0, %lo(D_800ED4E0)($a0)
    /* 64070 800BBE20 00035040 */  sll        $t2, $v1, 1
    /* 64074 800BBE24 246C0001 */  addiu      $t4, $v1, 0x1
    /* 64078 800BBE28 008A5821 */  addu       $t3, $a0, $t2
    /* 6407C 800BBE2C 95650100 */  lhu        $a1, 0x100($t3)
    /* 64080 800BBE30 ACCC0000 */  sw         $t4, 0x0($a2)
    /* 64084 800BBE34 258F0001 */  addiu      $t7, $t4, 0x1
    /* 64088 800BBE38 30ADE000 */  andi       $t5, $a1, 0xE000
    /* 6408C 800BBE3C 11A00002 */  beqz       $t5, .L800BBE48
    /* 64090 800BBE40 30B81C00 */   andi      $t8, $a1, 0x1C00
    /* 64094 800BBE44 ACCF0000 */  sw         $t7, 0x0($a2)
  .L800BBE48:
    /* 64098 800BBE48 13000004 */  beqz       $t8, .L800BBE5C
    /* 6409C 800BBE4C 30AB0380 */   andi      $t3, $a1, 0x380
    /* 640A0 800BBE50 8CD90000 */  lw         $t9, 0x0($a2)
    /* 640A4 800BBE54 272A0001 */  addiu      $t2, $t9, 0x1
    /* 640A8 800BBE58 ACCA0000 */  sw         $t2, 0x0($a2)
  .L800BBE5C:
    /* 640AC 800BBE5C 11600004 */  beqz       $t3, .L800BBE70
    /* 640B0 800BBE60 2418FFFF */   addiu     $t8, $zero, -0x1
    /* 640B4 800BBE64 8CCC0000 */  lw         $t4, 0x0($a2)
    /* 640B8 800BBE68 258D0001 */  addiu      $t5, $t4, 0x1
    /* 640BC 800BBE6C ACCD0000 */  sw         $t5, 0x0($a2)
  .L800BBE70:
    /* 640C0 800BBE70 8CC30000 */  lw         $v1, 0x0($a2)
    /* 640C4 800BBE74 3401FFFF */  ori        $at, $zero, 0xFFFF
    /* 640C8 800BBE78 00037040 */  sll        $t6, $v1, 1
    /* 640CC 800BBE7C 008E7821 */  addu       $t7, $a0, $t6
    /* 640D0 800BBE80 95E50100 */  lhu        $a1, 0x100($t7)
    /* 640D4 800BBE84 54A10004 */  bnel       $a1, $at, .L800BBE98
    /* 640D8 800BBE88 30B9007F */   andi      $t9, $a1, 0x7F
    /* 640DC 800BBE8C 03E00008 */  jr         $ra
    /* 640E0 800BBE90 ACD80000 */   sw        $t8, 0x0($a2)
    /* 640E4 800BBE94 30B9007F */  andi       $t9, $a1, 0x7F
  .L800BBE98:
    /* 640E8 800BBE98 ACF90000 */  sw         $t9, 0x0($a3)
  .L800BBE9C:
    /* 640EC 800BBE9C 3C0A800F */  lui        $t2, %hi(D_800ED4E0)
    /* 640F0 800BBEA0 8D4AD4E0 */  lw         $t2, %lo(D_800ED4E0)($t2)
    /* 640F4 800BBEA4 00035840 */  sll        $t3, $v1, 1
    /* 640F8 800BBEA8 00003025 */  or         $a2, $zero, $zero
    /* 640FC 800BBEAC 014B2021 */  addu       $a0, $t2, $t3
    /* 64100 800BBEB0 94850100 */  lhu        $a1, 0x100($a0)
    /* 64104 800BBEB4 00003825 */  or         $a3, $zero, $zero
    /* 64108 800BBEB8 00004025 */  or         $t0, $zero, $zero
    /* 6410C 800BBEBC 30AC8000 */  andi       $t4, $a1, 0x8000
    /* 64110 800BBEC0 11800002 */  beqz       $t4, .L800BBECC
    /* 64114 800BBEC4 30AD4000 */   andi      $t5, $a1, 0x4000
    /* 64118 800BBEC8 94880102 */  lhu        $t0, 0x102($a0)
  .L800BBECC:
    /* 6411C 800BBECC 11A00002 */  beqz       $t5, .L800BBED8
    /* 64120 800BBED0 30AE2000 */   andi      $t6, $a1, 0x2000
    /* 64124 800BBED4 94870102 */  lhu        $a3, 0x102($a0)
  .L800BBED8:
    /* 64128 800BBED8 11C00002 */  beqz       $t6, .L800BBEE4
    /* 6412C 800BBEDC 30AF1000 */   andi      $t7, $a1, 0x1000
    /* 64130 800BBEE0 94860102 */  lhu        $a2, 0x102($a0)
  .L800BBEE4:
    /* 64134 800BBEE4 11E00002 */  beqz       $t7, .L800BBEF0
    /* 64138 800BBEE8 30B80800 */   andi      $t8, $a1, 0x800
    /* 6413C 800BBEEC 94880104 */  lhu        $t0, 0x104($a0)
  .L800BBEF0:
    /* 64140 800BBEF0 13000002 */  beqz       $t8, .L800BBEFC
    /* 64144 800BBEF4 30B90400 */   andi      $t9, $a1, 0x400
    /* 64148 800BBEF8 94870104 */  lhu        $a3, 0x104($a0)
  .L800BBEFC:
    /* 6414C 800BBEFC 13200002 */  beqz       $t9, .L800BBF08
    /* 64150 800BBF00 30AA0200 */   andi      $t2, $a1, 0x200
    /* 64154 800BBF04 94860104 */  lhu        $a2, 0x104($a0)
  .L800BBF08:
    /* 64158 800BBF08 11400002 */  beqz       $t2, .L800BBF14
    /* 6415C 800BBF0C 30AB0100 */   andi      $t3, $a1, 0x100
    /* 64160 800BBF10 94880106 */  lhu        $t0, 0x106($a0)
  .L800BBF14:
    /* 64164 800BBF14 11600002 */  beqz       $t3, .L800BBF20
    /* 64168 800BBF18 30AC0080 */   andi      $t4, $a1, 0x80
    /* 6416C 800BBF1C 94870106 */  lhu        $a3, 0x106($a0)
  .L800BBF20:
    /* 64170 800BBF20 11800002 */  beqz       $t4, .L800BBF2C
    /* 64174 800BBF24 01001025 */   or        $v0, $t0, $zero
    /* 64178 800BBF28 94860106 */  lhu        $a2, 0x106($a0)
  .L800BBF2C:
    /* 6417C 800BBF2C 310D0080 */  andi       $t5, $t0, 0x80
    /* 64180 800BBF30 A5280000 */  sh         $t0, 0x0($t1)
    /* 64184 800BBF34 A5270002 */  sh         $a3, 0x2($t1)
    /* 64188 800BBF38 11A00003 */  beqz       $t5, .L800BBF48
    /* 6418C 800BBF3C A5260004 */   sh        $a2, 0x4($t1)
    /* 64190 800BBF40 240E0040 */  addiu      $t6, $zero, 0x40
    /* 64194 800BBF44 A12E0009 */  sb         $t6, 0x9($t1)
  .L800BBF48:
    /* 64198 800BBF48 304F0040 */  andi       $t7, $v0, 0x40
    /* 6419C 800BBF4C 11E00002 */  beqz       $t7, .L800BBF58
    /* 641A0 800BBF50 2418FFC0 */   addiu     $t8, $zero, -0x40
    /* 641A4 800BBF54 A1380009 */  sb         $t8, 0x9($t1)
  .L800BBF58:
    /* 641A8 800BBF58 03E00008 */  jr         $ra
    /* 641AC 800BBF5C 00000000 */   nop
endlabel func_800BBDC4
.size func_800BBDC4, . - func_800BBDC4
