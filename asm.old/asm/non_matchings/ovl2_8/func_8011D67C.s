glabel func_8011D67C
/* 0A60EC 8011D67C 3C0E800D */  lui   $t6, %hi(D_800D6FB2) # $t6, 0x800d
/* 0A60F0 8011D680 95CE6FB2 */  lhu   $t6, %lo(D_800D6FB2)($t6)
/* 0A60F4 8011D684 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A60F8 8011D688 24010002 */  li    $at, 2
/* 0A60FC 8011D68C 15C10014 */  bne   $t6, $at, .L8011D6E0_ovl2
/* 0A6100 8011D690 AFBF0014 */   sw    $ra, 0x14($sp)
/* 0A6104 8011D694 0C0473D6 */  jal   func_8011CF58
/* 0A6108 8011D698 00000000 */   nop   
/* 0A610C 8011D69C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A6110 8011D6A0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0A6114 8011D6A4 3C0F8019 */  lui   $t7, %hi(D_80192F64) # $t7, 0x8019
/* 0A6118 8011D6A8 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 0A611C 8011D6AC 8C580000 */  lw    $t8, ($v0)
/* 0A6120 8011D6B0 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0A6124 8011D6B4 25EF2F64 */  addiu $t7, %lo(D_80192F64) # addiu $t7, $t7, 0x2f64
/* 0A6128 8011D6B8 0018C880 */  sll   $t9, $t8, 2
/* 0A612C 8011D6BC 00390821 */  addu  $at, $at, $t9
/* 0A6130 8011D6C0 3C088019 */  lui   $t0, %hi(D_801923DC) # $t0, 0x8019
/* 0A6134 8011D6C4 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0A6138 8011D6C8 AC2F0490 */  sw    $t7, 0x0490($at)
/* 0A613C 8011D6CC 250823DC */  addiu $t0, %lo(D_801923DC) # addiu $t0, $t0, 0x23dc
/* 0A6140 8011D6D0 24090002 */  li    $t1, 2
/* 0A6144 8011D6D4 AC68015C */  sw    $t0, 0x15c($v1)
/* 0A6148 8011D6D8 1000001F */  b     .L8011D758_ovl2
/* 0A614C 8011D6DC AC690154 */   sw    $t1, 0x154($v1)
.L8011D6E0_ovl2:
/* 0A6150 8011D6E0 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0A6154 8011D6E4 0C02AA22 */  jal   func_800AA888
/* 0A6158 8011D6E8 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0A615C 8011D6EC 14400016 */  bnez  $v0, .L8011D748_ovl2
/* 0A6160 8011D6F0 00000000 */   nop   
/* 0A6164 8011D6F4 0C0473D6 */  jal   func_8011CF58
/* 0A6168 8011D6F8 00000000 */   nop   
/* 0A616C 8011D6FC 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0A6170 8011D700 0C048BC2 */  jal   func_80122F08
/* 0A6174 8011D704 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0A6178 8011D708 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0A617C 8011D70C 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0A6180 8011D710 3C0A8019 */  lui   $t2, %hi(D_801926E8) # $t2, 0x8019
/* 0A6184 8011D714 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 0A6188 8011D718 8D6C0000 */  lw    $t4, ($t3)
/* 0A618C 8011D71C 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0A6190 8011D720 254A26E8 */  addiu $t2, %lo(D_801926E8) # addiu $t2, $t2, 0x26e8
/* 0A6194 8011D724 000C6880 */  sll   $t5, $t4, 2
/* 0A6198 8011D728 002D0821 */  addu  $at, $at, $t5
/* 0A619C 8011D72C 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0A61A0 8011D730 AC2A0490 */  sw    $t2, 0x0490($at)
/* 0A61A4 8011D734 3C0E8019 */  lui   $t6, %hi(D_80190358) # $t6, 0x8019
/* 0A61A8 8011D738 25CE0358 */  addiu $t6, %lo(D_80190358) # addiu $t6, $t6, 0x358
/* 0A61AC 8011D73C 24180002 */  li    $t8, 2
/* 0A61B0 8011D740 AC6E015C */  sw    $t6, 0x15c($v1)
/* 0A61B4 8011D744 AC780154 */  sw    $t8, 0x154($v1)
.L8011D748_ovl2:
/* 0A61B8 8011D748 3C038013 */  lui   $v1, %hi(gKirbyState) # $v1, 0x8013
/* 0A61BC 8011D74C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0A61C0 8011D750 2463E7C0 */  addiu $v1, %lo(gKirbyState) # addiu $v1, $v1, -0x1840
/* 0A61C4 8011D754 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
.L8011D758_ovl2:
/* 0A61C8 8011D758 8C4F0000 */  lw    $t7, ($v0)
/* 0A61CC 8011D75C 3C018013 */  lui   $at, %hi(D_80128EF0) # $at, 0x8013
/* 0A61D0 8011D760 C4208EF0 */  lwc1  $f0, %lo(D_80128EF0)($at)
/* 0A61D4 8011D764 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 0A61D8 8011D768 000FC880 */  sll   $t9, $t7, 2
/* 0A61DC 8011D76C 00390821 */  addu  $at, $at, $t9
/* 0A61E0 8011D770 E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 0A61E4 8011D774 8C480000 */  lw    $t0, ($v0)
/* 0A61E8 8011D778 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 0A61EC 8011D77C 3C0E800F */ lui $t6, %hi(D_800E8920)
/* 0A61F0 8011D780 00084880 */  sll   $t1, $t0, 2
/* 0A61F4 8011D784 00290821 */  addu  $at, $at, $t1
/* 0A61F8 8011D788 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 0A61FC 8011D78C 8C4B0000 */  lw    $t3, ($v0)
/* 0A6200 8011D790 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 0A6204 8011D794 24040006 */  li    $a0, 6
/* 0A6208 8011D798 000B6080 */  sll   $t4, $t3, 2
/* 0A620C 8011D79C 002C0821 */  addu  $at, $at, $t4
/* 0A6210 8011D7A0 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 0A6214 8011D7A4 8C4A0000 */  lw    $t2, ($v0)
/* 0A6218 8011D7A8 24010001 */  li    $at, 1
/* 0A621C 8011D7AC 3C02800D */  lui   $v0, %hi(gKirbyController) # $v0, 0x800d
/* 0A6220 8011D7B0 000A6880 */  sll   $t5, $t2, 2
/* 0A6224 8011D7B4 01CD7021 */  addu  $t6, $t6, $t5
/* 0A6228 8011D7B8 8DCE8920 */ lw $t6, %lo(D_800E8920)($t6)
/* 0A622C 8011D7BC 15C10020 */  bne   $t6, $at, .L8011D840_ovl2
/* 0A6230 8011D7C0 00000000 */   nop   
/* 0A6234 8011D7C4 94426FE8 */  lhu   $v0, %lo(gKirbyController)($v0)
/* 0A6238 8011D7C8 24040009 */  li    $a0, 9
/* 0A623C 8011D7CC 30580400 */  andi  $t8, $v0, 0x400
/* 0A6240 8011D7D0 13000005 */  beqz  $t8, .L8011D7E8_ovl2
/* 0A6244 8011D7D4 304F0300 */   andi  $t7, $v0, 0x300
/* 0A6248 8011D7D8 0C048BDB */  jal   set_kirby_action_1
/* 0A624C 8011D7DC 2405000E */   li    $a1, 14
/* 0A6250 8011D7E0 1000001A */  b     .L8011D84C_ovl2
/* 0A6254 8011D7E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8011D7E8_ovl2:
/* 0A6258 8011D7E8 11E00011 */  beqz  $t7, .L8011D830_ovl2
/* 0A625C 8011D7EC 00002025 */   move  $a0, $zero
/* 0A6260 8011D7F0 90790007 */  lbu   $t9, 7($v1)
/* 0A6264 8011D7F4 24050004 */  li    $a1, 4
/* 0A6268 8011D7F8 24040001 */  li    $a0, 1
/* 0A626C 8011D7FC 13200008 */  beqz  $t9, .L8011D820_ovl2
/* 0A6270 8011D800 00000000 */   nop   
/* 0A6274 8011D804 44802000 */  mtc1  $zero, $f4
/* 0A6278 8011D808 AC600044 */  sw    $zero, 0x44($v1)
/* 0A627C 8011D80C 24040002 */  li    $a0, 2
/* 0A6280 8011D810 0C048BDB */  jal   set_kirby_action_1
/* 0A6284 8011D814 E4640038 */   swc1  $f4, 0x38($v1)
/* 0A6288 8011D818 1000000C */  b     .L8011D84C_ovl2
/* 0A628C 8011D81C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8011D820_ovl2:
/* 0A6290 8011D820 0C048BDB */  jal   set_kirby_action_1
/* 0A6294 8011D824 24050003 */   li    $a1, 3
/* 0A6298 8011D828 10000008 */  b     .L8011D84C_ovl2
/* 0A629C 8011D82C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8011D830_ovl2:
/* 0A62A0 8011D830 0C048BDB */  jal   set_kirby_action_1
/* 0A62A4 8011D834 24050001 */   li    $a1, 1
/* 0A62A8 8011D838 10000004 */  b     .L8011D84C_ovl2
/* 0A62AC 8011D83C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8011D840_ovl2:
/* 0A62B0 8011D840 0C048BDB */  jal   set_kirby_action_1
/* 0A62B4 8011D844 24050006 */   li    $a1, 6
/* 0A62B8 8011D848 8FBF0014 */  lw    $ra, 0x14($sp)
.L8011D84C_ovl2:
/* 0A62BC 8011D84C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A62C0 8011D850 03E00008 */  jr    $ra
/* 0A62C4 8011D854 00000000 */   nop   
.type func_8011D67C, @function
.size func_8011D67C, . - func_8011D67C
