nonmatching func_801E0058_ovl14, 0x204

glabel func_801E0058_ovl14
    /* 202C48 801E0058 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 202C4C 801E005C 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 202C50 801E0060 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 202C54 801E0064 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 202C58 801E0068 8CC20000 */  lw         $v0, 0x0($a2)
    /* 202C5C 801E006C 3C05800E */  lui        $a1, %hi(gEntityFuncListIDArray)
    /* 202C60 801E0070 24A5DC50 */  addiu      $a1, $a1, %lo(gEntityFuncListIDArray)
    /* 202C64 801E0074 00021080 */  sll        $v0, $v0, 2
    /* 202C68 801E0078 00A21821 */  addu       $v1, $a1, $v0
    /* 202C6C 801E007C 8C6E0000 */  lw         $t6, 0x0($v1)
    /* 202C70 801E0080 00803825 */  or         $a3, $a0, $zero
    /* 202C74 801E0084 3C04800E */  lui        $a0, %hi(D_800E0D50)
    /* 202C78 801E0088 11C00070 */  beqz       $t6, .L801E024C_ovl14
    /* 202C7C 801E008C 00822021 */   addu      $a0, $a0, $v0
    /* 202C80 801E0090 8C840D50 */  lw         $a0, %lo(D_800E0D50)($a0)
    /* 202C84 801E0094 24010006 */  addiu      $at, $zero, 0x6
    /* 202C88 801E0098 00042080 */  sll        $a0, $a0, 2
    /* 202C8C 801E009C 00A47821 */  addu       $t7, $a1, $a0
    /* 202C90 801E00A0 8DF80000 */  lw         $t8, 0x0($t7)
    /* 202C94 801E00A4 3C05800E */  lui        $a1, %hi(D_800E7CE0)
    /* 202C98 801E00A8 24A57CE0 */  addiu      $a1, $a1, %lo(D_800E7CE0)
    /* 202C9C 801E00AC 1701000C */  bne        $t8, $at, .L801E00E0_ovl14
    /* 202CA0 801E00B0 00A44821 */   addu      $t1, $a1, $a0
    /* 202CA4 801E00B4 AC600000 */  sw         $zero, 0x0($v1)
    /* 202CA8 801E00B8 8CD90000 */  lw         $t9, 0x0($a2)
    /* 202CAC 801E00BC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 202CB0 801E00C0 3C05801E */  lui        $a1, %hi(func_801DFFD8_ovl14)
    /* 202CB4 801E00C4 00194080 */  sll        $t0, $t9, 2
    /* 202CB8 801E00C8 00882021 */  addu       $a0, $a0, $t0
    /* 202CBC 801E00CC 8C84E510 */  lw         $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 202CC0 801E00D0 0C02C7B2 */  jal        assign_new_process_entry
    /* 202CC4 801E00D4 24A5FFD8 */   addiu     $a1, $a1, %lo(func_801DFFD8_ovl14)
    /* 202CC8 801E00D8 1000005D */  b          .L801E0250_ovl14
    /* 202CCC 801E00DC 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801E00E0_ovl14:
    /* 202CD0 801E00E0 8D230000 */  lw         $v1, 0x0($t1)
    /* 202CD4 801E00E4 00A25021 */  addu       $t2, $a1, $v0
    /* 202CD8 801E00E8 1060002C */  beqz       $v1, .L801E019C_ovl14
    /* 202CDC 801E00EC 00000000 */   nop
    /* 202CE0 801E00F0 AD430000 */  sw         $v1, 0x0($t2)
    /* 202CE4 801E00F4 8CC20000 */  lw         $v0, 0x0($a2)
    /* 202CE8 801E00F8 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 202CEC 801E00FC 00E02025 */  or         $a0, $a3, $zero
    /* 202CF0 801E0100 00021080 */  sll        $v0, $v0, 2
    /* 202CF4 801E0104 00A25821 */  addu       $t3, $a1, $v0
    /* 202CF8 801E0108 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 202CFC 801E010C 01C27021 */  addu       $t6, $t6, $v0
    /* 202D00 801E0110 05810004 */  bgez       $t4, .L801E0124_ovl14
    /* 202D04 801E0114 318D0003 */   andi      $t5, $t4, 0x3
    /* 202D08 801E0118 11A00002 */  beqz       $t5, .L801E0124_ovl14
    /* 202D0C 801E011C 00000000 */   nop
    /* 202D10 801E0120 25ADFFFC */  addiu      $t5, $t5, -0x4
  .L801E0124_ovl14:
    /* 202D14 801E0124 29A10002 */  slti       $at, $t5, 0x2
    /* 202D18 801E0128 1420000F */  bnez       $at, .L801E0168_ovl14
    /* 202D1C 801E012C 00000000 */   nop
    /* 202D20 801E0130 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 202D24 801E0134 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* 202D28 801E0138 44812000 */  mtc1       $at, $f4
    /* 202D2C 801E013C 000E7880 */  sll        $t7, $t6, 2
    /* 202D30 801E0140 00AFC021 */  addu       $t8, $a1, $t7
    /* 202D34 801E0144 8F190000 */  lw         $t9, 0x0($t8)
    /* 202D38 801E0148 3C053F80 */  lui        $a1, (0x3F800000 >> 16)
    /* 202D3C 801E014C 44993000 */  mtc1       $t9, $f6
    /* 202D40 801E0150 00000000 */  nop
    /* 202D44 801E0154 46803220 */  cvt.s.w    $f8, $f6
    /* 202D48 801E0158 4604403E */  c.le.s     $f8, $f4
    /* 202D4C 801E015C 00000000 */  nop
    /* 202D50 801E0160 45000008 */  bc1f       .L801E0184_ovl14
    /* 202D54 801E0164 00000000 */   nop
  .L801E0168_ovl14:
    /* 202D58 801E0168 0C077952 */  jal        func_801DE548_ovl14
    /* 202D5C 801E016C 24050000 */   addiu     $a1, $zero, 0x0
    /* 202D60 801E0170 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 202D64 801E0174 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 202D68 801E0178 8D020000 */  lw         $v0, 0x0($t0)
    /* 202D6C 801E017C 10000007 */  b          .L801E019C_ovl14
    /* 202D70 801E0180 00021080 */   sll       $v0, $v0, 2
  .L801E0184_ovl14:
    /* 202D74 801E0184 0C077952 */  jal        func_801DE548_ovl14
    /* 202D78 801E0188 00E02025 */   or        $a0, $a3, $zero
    /* 202D7C 801E018C 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 202D80 801E0190 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 202D84 801E0194 8D220000 */  lw         $v0, 0x0($t1)
    /* 202D88 801E0198 00021080 */  sll        $v0, $v0, 2
  .L801E019C_ovl14:
    /* 202D8C 801E019C 3C04800E */  lui        $a0, %hi(D_800DDFD0)
    /* 202D90 801E01A0 00822021 */  addu       $a0, $a0, $v0
    /* 202D94 801E01A4 3C06801E */  lui        $a2, %hi(D_801E2F48_ovl14)
    /* 202D98 801E01A8 24C62F48 */  addiu      $a2, $a2, %lo(D_801E2F48_ovl14)
    /* 202D9C 801E01AC 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
    /* 202DA0 801E01B0 0C02911F */  jal        utilFuncTableJump
    /* 202DA4 801E01B4 24050003 */   addiu     $a1, $zero, 0x3
    /* 202DA8 801E01B8 3C0A8005 */  lui        $t2, %hi(omCurrentObj)
    /* 202DAC 801E01BC 8D4AA7C4 */  lw         $t2, %lo(omCurrentObj)($t2)
    /* 202DB0 801E01C0 3C0D800F */  lui        $t5, %hi(D_800E98E0)
    /* 202DB4 801E01C4 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 202DB8 801E01C8 000B6080 */  sll        $t4, $t3, 2
    /* 202DBC 801E01CC 01AC6821 */  addu       $t5, $t5, $t4
    /* 202DC0 801E01D0 8DAD98E0 */  lw         $t5, %lo(D_800E98E0)($t5)
    /* 202DC4 801E01D4 51A0001E */  beql       $t5, $zero, .L801E0250_ovl14
    /* 202DC8 801E01D8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 202DCC 801E01DC 0C07873A */  jal        func_801E1CE8_ovl14
    /* 202DD0 801E01E0 00000000 */   nop
    /* 202DD4 801E01E4 10400019 */  beqz       $v0, .L801E024C_ovl14
    /* 202DD8 801E01E8 3C04800E */   lui       $a0, %hi(D_800E7B20)
    /* 202DDC 801E01EC 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 202DE0 801E01F0 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 202DE4 801E01F4 3C0E800E */  lui        $t6, %hi(D_800E0D50)
    /* 202DE8 801E01F8 24847B20 */  addiu      $a0, $a0, %lo(D_800E7B20)
    /* 202DEC 801E01FC 8CC20000 */  lw         $v0, 0x0($a2)
    /* 202DF0 801E0200 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 202DF4 801E0204 44810000 */  mtc1       $at, $f0
    /* 202DF8 801E0208 00021080 */  sll        $v0, $v0, 2
    /* 202DFC 801E020C 01C27021 */  addu       $t6, $t6, $v0
    /* 202E00 801E0210 8DCE0D50 */  lw         $t6, %lo(D_800E0D50)($t6)
    /* 202E04 801E0214 0082C821 */  addu       $t9, $a0, $v0
    /* 202E08 801E0218 C7300000 */  lwc1       $f16, 0x0($t9)
    /* 202E0C 801E021C 3C18800F */  lui        $t8, %hi(D_800EC660)
    /* 202E10 801E0220 2718C660 */  addiu      $t8, $t8, %lo(D_800EC660)
    /* 202E14 801E0224 000E7880 */  sll        $t7, $t6, 2
    /* 202E18 801E0228 46100481 */  sub.s      $f18, $f0, $f16
    /* 202E1C 801E022C 01F81821 */  addu       $v1, $t7, $t8
    /* 202E20 801E0230 C46A0000 */  lwc1       $f10, 0x0($v1)
    /* 202E24 801E0234 46125180 */  add.s      $f6, $f10, $f18
    /* 202E28 801E0238 E4660000 */  swc1       $f6, 0x0($v1)
    /* 202E2C 801E023C 8CC80000 */  lw         $t0, 0x0($a2)
    /* 202E30 801E0240 00084880 */  sll        $t1, $t0, 2
    /* 202E34 801E0244 00895021 */  addu       $t2, $a0, $t1
    /* 202E38 801E0248 E5400000 */  swc1       $f0, 0x0($t2)
  .L801E024C_ovl14:
    /* 202E3C 801E024C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801E0250_ovl14:
    /* 202E40 801E0250 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 202E44 801E0254 03E00008 */  jr         $ra
    /* 202E48 801E0258 00000000 */   nop
endlabel func_801E0058_ovl14
.size func_801E0058_ovl14, . - func_801E0058_ovl14
