glabel func_8000206C
/* 002C6C 8000206C 3C028005 */  lui   $v0, %hi(D_80048B90) # $v0, 0x8005
/* 002C70 80002070 8C428B90 */  lw    $v0, %lo(D_80048B90)($v0)
/* 002C74 80002074 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 002C78 80002078 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002C7C 8000207C 10400016 */  beqz  $v0, .L800020D8_ovl0
/* 002C80 80002080 00000000 */   nop   
/* 002C84 80002084 8C4E0008 */  lw    $t6, 8($v0)
/* 002C88 80002088 24010002 */  li    $at, 2
/* 002C8C 8000208C 00002825 */  move  $a1, $zero
/* 002C90 80002090 15C10011 */  bne   $t6, $at, .L800020D8_ovl0
/* 002C94 80002094 00003025 */   move  $a2, $zero
/* 002C98 80002098 0C00B4BC */  jal   osSendMesg
/* 002C9C 8000209C 8C440020 */   lw    $a0, 0x20($v0)
/* 002CA0 800020A0 3C018005 */  lui   $at, %hi(D_80048B90) # $at, 0x8005
/* 002CA4 800020A4 0C000788 */  jal   func_80001E20
/* 002CA8 800020A8 AC208B90 */   sw    $zero, %lo(D_80048B90)($at)
/* 002CAC 800020AC 0C00C534 */  jal   osGetCount
/* 002CB0 800020B0 00000000 */   nop   
/* 002CB4 800020B4 3C0F8005 */  lui   $t7, %hi(D_80048C70) # $t7, 0x8005
/* 002CB8 800020B8 8DEF8C70 */  lw    $t7, %lo(D_80048C70)($t7)
/* 002CBC 800020BC 24010B9B */  li    $at, 2971
/* 002CC0 800020C0 004FC023 */  subu  $t8, $v0, $t7
/* 002CC4 800020C4 0301001B */  divu  $zero, $t8, $at
/* 002CC8 800020C8 0000C812 */  mflo  $t9
/* 002CCC 800020CC 3C018005 */  lui   $at, %hi(D_80048C78) # $at, 0x8005
/* 002CD0 800020D0 1000007E */  b     .L800022CC_ovl0
/* 002CD4 800020D4 AC398C78 */   sw    $t9, %lo(D_80048C78)($at)
.L800020D8_ovl0:
/* 002CD8 800020D8 3C028005 */  lui   $v0, %hi(D_80048B8C) # $v0, 0x8005
/* 002CDC 800020DC 8C428B8C */  lw    $v0, %lo(D_80048B8C)($v0)
/* 002CE0 800020E0 10400025 */  beqz  $v0, .L80002178_ovl0
/* 002CE4 800020E4 00000000 */   nop   
/* 002CE8 800020E8 8C480008 */  lw    $t0, 8($v0)
/* 002CEC 800020EC 24010004 */  li    $at, 4
/* 002CF0 800020F0 15010021 */  bne   $t0, $at, .L80002178_ovl0
/* 002CF4 800020F4 00000000 */   nop   
/* 002CF8 800020F8 0C00D11C */  jal   osSpTaskYielded
/* 002CFC 800020FC 24440028 */   addiu $a0, $v0, 0x28
/* 002D00 80002100 24010001 */  li    $at, 1
/* 002D04 80002104 1441000B */  bne   $v0, $at, .L80002134_ovl0
/* 002D08 80002108 3C0C8005 */   lui   $t4, %hi(D_80048B8C) # $t4, 0x8005
/* 002D0C 8000210C 3C028005 */  lui   $v0, %hi(D_80048B8C) # $v0, 0x8005
/* 002D10 80002110 24428B8C */  addiu $v0, %lo(D_80048B8C) # addiu $v0, $v0, -0x7474
/* 002D14 80002114 8C4A0000 */  lw    $t2, ($v0)
/* 002D18 80002118 24090005 */  li    $t1, 5
/* 002D1C 8000211C AD490008 */  sw    $t1, 8($t2)
/* 002D20 80002120 0C00034D */  jal   func_80000D34
/* 002D24 80002124 8C440000 */   lw    $a0, ($v0)
/* 002D28 80002128 3C018005 */  lui   $at, %hi(D_80048B8C) # $at, 0x8005
/* 002D2C 8000212C 10000004 */  b     .L80002140_ovl0
/* 002D30 80002130 AC208B8C */   sw    $zero, %lo(D_80048B8C)($at)
.L80002134_ovl0:
/* 002D34 80002134 8D8C8B8C */  lw    $t4, %lo(D_80048B8C)($t4)
/* 002D38 80002138 240B0006 */  li    $t3, 6
/* 002D3C 8000213C AD8B0008 */  sw    $t3, 8($t4)
.L80002140_ovl0:
/* 002D40 80002140 3C048005 */  lui   $a0, %hi(D_80048B90) # $a0, 0x8005
/* 002D44 80002144 8C848B90 */  lw    $a0, %lo(D_80048B90)($a0)
/* 002D48 80002148 0C00B66F */  jal   osSpTaskLoad
/* 002D4C 8000214C 24840028 */   addiu $a0, $a0, 0x28
/* 002D50 80002150 3C048005 */  lui   $a0, %hi(D_80048B90) # $a0, 0x8005
/* 002D54 80002154 8C848B90 */  lw    $a0, %lo(D_80048B90)($a0)
/* 002D58 80002158 0C00B6D3 */  jal   osSpTaskStartGo
/* 002D5C 8000215C 24840028 */   addiu $a0, $a0, 0x28
/* 002D60 80002160 3C0E8005 */  lui   $t6, %hi(D_80048B90) # $t6, 0x8005
/* 002D64 80002164 8DCE8B90 */  lw    $t6, %lo(D_80048B90)($t6)
/* 002D68 80002168 240D0002 */  li    $t5, 2
/* 002D6C 8000216C 3C028005 */  lui   $v0, %hi(D_80048B8C) # $v0, 0x8005
/* 002D70 80002170 ADCD0008 */  sw    $t5, 8($t6)
/* 002D74 80002174 8C428B8C */  lw    $v0, %lo(D_80048B8C)($v0)
.L80002178_ovl0:
/* 002D78 80002178 10400042 */  beqz  $v0, .L80002284_ovl0
/* 002D7C 8000217C 00000000 */   nop   
/* 002D80 80002180 8C4F0018 */  lw    $t7, 0x18($v0)
/* 002D84 80002184 24060001 */  li    $a2, 1
/* 002D88 80002188 14CF003E */  bne   $a2, $t7, .L80002284_ovl0
/* 002D8C 8000218C 00000000 */   nop   
/* 002D90 80002190 8C580008 */  lw    $t8, 8($v0)
/* 002D94 80002194 24010005 */  li    $at, 5
/* 002D98 80002198 1301003A */  beq   $t8, $at, .L80002284_ovl0
/* 002D9C 8000219C 00000000 */   nop   
/* 002DA0 800021A0 8C590000 */  lw    $t9, ($v0)
/* 002DA4 800021A4 14D90032 */  bne   $a2, $t9, .L80002270_ovl0
/* 002DA8 800021A8 00000000 */   nop   
/* 002DAC 800021AC 8C480074 */  lw    $t0, 0x74($v0)
/* 002DB0 800021B0 3C048005 */  lui   $a0, %hi(D_80048C80) # $a0, 0x8005
/* 002DB4 800021B4 24848C80 */  addiu $a0, %lo(D_80048C80) # addiu $a0, $a0, -0x7380
/* 002DB8 800021B8 14C8002D */  bne   $a2, $t0, .L80002270_ovl0
/* 002DBC 800021BC 00000000 */   nop   
/* 002DC0 800021C0 0C00CEE4 */  jal   osInvalDCache
/* 002DC4 800021C4 24050008 */   li    $a1, 8
/* 002DC8 800021C8 3C038005 */  lui   $v1, %hi(D_80048C80) # $v1, 0x8005
/* 002DCC 800021CC 3C078005 */  lui   $a3, %hi(D_80048B8C) # $a3, 0x8005
/* 002DD0 800021D0 24E78B8C */  addiu $a3, %lo(D_80048B8C) # addiu $a3, $a3, -0x7474
/* 002DD4 800021D4 24638C80 */  addiu $v1, %lo(D_80048C80) # addiu $v1, $v1, -0x7380
/* 002DD8 800021D8 8C6B0004 */  lw    $t3, 4($v1)
/* 002DDC 800021DC 8CEC0000 */  lw    $t4, ($a3)
/* 002DE0 800021E0 3C028005 */  lui   $v0, %hi(D_80048C88) # $v0, 0x8005
/* 002DE4 800021E4 24428C88 */  addiu $v0, %lo(D_80048C88) # addiu $v0, $v0, -0x7378
/* 002DE8 800021E8 AD8B0078 */  sw    $t3, 0x78($t4)
/* 002DEC 800021EC 8C4D0000 */  lw    $t5, ($v0)
/* 002DF0 800021F0 8C6F0004 */  lw    $t7, 4($v1)
/* 002DF4 800021F4 8C6E0000 */  lw    $t6, ($v1)
/* 002DF8 800021F8 24060001 */  li    $a2, 1
/* 002DFC 800021FC 01AF5021 */  addu  $t2, $t5, $t7
/* 002E00 80002200 2549000F */  addiu $t1, $t2, 0xf
/* 002E04 80002204 AFAE0018 */  sw    $t6, 0x18($sp)
/* 002E08 80002208 8FA80018 */  lw    $t0, 0x18($sp)
/* 002E0C 8000220C 00096102 */  srl   $t4, $t1, 4
/* 002E10 80002210 000C7100 */  sll   $t6, $t4, 4
/* 002E14 80002214 000EC7C3 */  sra   $t8, $t6, 0x1f
/* 002E18 80002218 AC4A0000 */  sw    $t2, ($v0)
/* 002E1C 8000221C 0118082B */  sltu  $at, $t0, $t8
/* 002E20 80002220 AC4E0000 */  sw    $t6, ($v0)
/* 002E24 80002224 01C02825 */  move  $a1, $t6
/* 002E28 80002228 1420000B */  bnez  $at, .L80002258_ovl0
/* 002E2C 8000222C AFAF001C */   sw    $t7, 0x1c($sp)
/* 002E30 80002230 0308082B */  sltu  $at, $t8, $t0
/* 002E34 80002234 14200004 */  bnez  $at, .L80002248_ovl0
/* 002E38 80002238 3C048004 */   lui   $a0, %hi(D_8003FEA0) # $a0, 0x8004
/* 002E3C 8000223C 01CF082B */  sltu  $at, $t6, $t7
/* 002E40 80002240 50200006 */  beql  $at, $zero, .L8000225C_ovl0
/* 002E44 80002244 8CEF0000 */   lw    $t7, ($a3)
.L80002248_ovl0:
/* 002E48 80002248 0C008C27 */  jal   fatal_printf
/* 002E4C 8000224C 2484FEA0 */   addiu $a0, %lo(D_8003FEA0) # addiu $a0, $a0, -0x160
.L80002250_ovl0:
/* 002E50 80002250 1000FFFF */  b     .L80002250_ovl0
/* 002E54 80002254 00000000 */   nop   
.L80002258_ovl0:
/* 002E58 80002258 8CEF0000 */  lw    $t7, ($a3)
.L8000225C_ovl0:
/* 002E5C 8000225C ADE60008 */  sw    $a2, 8($t7)
/* 002E60 80002260 0C000385 */  jal   func_80000E14
/* 002E64 80002264 8CE40000 */   lw    $a0, ($a3)
/* 002E68 80002268 0C0007EB */  jal   func_80001FAC
/* 002E6C 8000226C 00000000 */   nop   
.L80002270_ovl0:
/* 002E70 80002270 3C018005 */  lui   $at, %hi(D_80048B8C) # $at, 0x8005
/* 002E74 80002274 0C000788 */  jal   func_80001E20
/* 002E78 80002278 AC208B8C */   sw    $zero, %lo(D_80048B8C)($at)
/* 002E7C 8000227C 10000014 */  b     .L800022D0_ovl0
/* 002E80 80002280 8FBF0014 */   lw    $ra, 0x14($sp)
.L80002284_ovl0:
/* 002E84 80002284 10400011 */  beqz  $v0, .L800022CC_ovl0
/* 002E88 80002288 24060001 */   li    $a2, 1
/* 002E8C 8000228C 8C4D0018 */  lw    $t5, 0x18($v0)
/* 002E90 80002290 24010002 */  li    $at, 2
/* 002E94 80002294 55A1000E */  bnel  $t5, $at, .L800022D0_ovl0
/* 002E98 80002298 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002E9C 8000229C 8C4A0000 */  lw    $t2, ($v0)
/* 002EA0 800022A0 240B0006 */  li    $t3, 6
/* 002EA4 800022A4 54CA000A */  bnel  $a2, $t2, .L800022D0_ovl0
/* 002EA8 800022A8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002EAC 800022AC AC4B0008 */  sw    $t3, 8($v0)
/* 002EB0 800022B0 3C028005 */  lui   $v0, %hi(D_80048B8C) # $v0, 0x8005
/* 002EB4 800022B4 8C428B8C */  lw    $v0, %lo(D_80048B8C)($v0)
/* 002EB8 800022B8 8C43007C */  lw    $v1, 0x7c($v0)
/* 002EBC 800022BC 306C0002 */  andi  $t4, $v1, 2
/* 002EC0 800022C0 15800002 */  bnez  $t4, .L800022CC_ovl0
/* 002EC4 800022C4 346E0001 */   ori   $t6, $v1, 1
/* 002EC8 800022C8 AC4E007C */  sw    $t6, 0x7c($v0)
.L800022CC_ovl0:
/* 002ECC 800022CC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800022D0_ovl0:
/* 002ED0 800022D0 27BD0028 */  addiu $sp, $sp, 0x28
/* 002ED4 800022D4 03E00008 */  jr    $ra
/* 002ED8 800022D8 00000000 */   nop   
.type func_8000206C, @function
.size func_8000206C, . - func_8000206C
