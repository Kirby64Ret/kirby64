glabel func_801DB8E8_ovl11
/* 1E61A8 801DB8E8 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1E61AC 801DB8EC 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1E61B0 801DB8F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1E61B4 801DB8F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1E61B8 801DB8F8 8C820000 */  lw    $v0, ($a0)
/* 1E61BC 801DB8FC 3C0E800E */  lui   $t6, %hi(gEntityVtableIndexArray) # $t6, 0x800e
/* 1E61C0 801DB900 3C03800F */ lui $v1, %hi(D_800EA520)
/* 1E61C4 801DB904 00021080 */  sll   $v0, $v0, 2
/* 1E61C8 801DB908 25CEDC50 */  addiu $t6, %lo(gEntityVtableIndexArray) # addiu $t6, $t6, -0x23b0
/* 1E61CC 801DB90C 00621821 */  addu  $v1, $v1, $v0
/* 1E61D0 801DB910 8C63A520 */ lw $v1, %lo(D_800EA520)($v1)
/* 1E61D4 801DB914 004E2821 */  addu  $a1, $v0, $t6
/* 1E61D8 801DB918 8CA60000 */  lw    $a2, ($a1)
/* 1E61DC 801DB91C 24080001 */  li    $t0, 1
/* 1E61E0 801DB920 10600008 */  beqz  $v1, .L801DB944_ovl11
/* 1E61E4 801DB924 00C03825 */   move  $a3, $a2
/* 1E61E8 801DB928 24080001 */  li    $t0, 1
/* 1E61EC 801DB92C 1068000E */  beq   $v1, $t0, .L801DB968_ovl11
/* 1E61F0 801DB930 24080002 */   li    $t0, 2
/* 1E61F4 801DB934 50680017 */  beql  $v1, $t0, .L801DB994_ovl11
/* 1E61F8 801DB938 24030003 */   li    $v1, 3
/* 1E61FC 801DB93C 1000001D */  b     .L801DB9B4_ovl11
/* 1E6200 801DB940 00000000 */   nop   
.L801DB944_ovl11:
/* 1E6204 801DB944 10E8001B */  beq   $a3, $t0, .L801DB9B4_ovl11
/* 1E6208 801DB948 00000000 */   nop   
/* 1E620C 801DB94C ACA80000 */  sw    $t0, ($a1)
/* 1E6210 801DB950 8C820000 */  lw    $v0, ($a0)
/* 1E6214 801DB954 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6218 801DB958 00021080 */  sll   $v0, $v0, 2
/* 1E621C 801DB95C 00C23021 */  addu  $a2, $a2, $v0
/* 1E6220 801DB960 10000014 */  b     .L801DB9B4_ovl11
/* 1E6224 801DB964 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DB968_ovl11:
/* 1E6228 801DB968 24080002 */  li    $t0, 2
/* 1E622C 801DB96C 10E80011 */  beq   $a3, $t0, .L801DB9B4_ovl11
/* 1E6230 801DB970 00000000 */   nop   
/* 1E6234 801DB974 ACA80000 */  sw    $t0, ($a1)
/* 1E6238 801DB978 8C820000 */  lw    $v0, ($a0)
/* 1E623C 801DB97C 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6240 801DB980 00021080 */  sll   $v0, $v0, 2
/* 1E6244 801DB984 00C23021 */  addu  $a2, $a2, $v0
/* 1E6248 801DB988 1000000A */  b     .L801DB9B4_ovl11
/* 1E624C 801DB98C 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
/* 1E6250 801DB990 24030003 */  li    $v1, 3
.L801DB994_ovl11:
/* 1E6254 801DB994 10E30007 */  beq   $a3, $v1, .L801DB9B4_ovl11
/* 1E6258 801DB998 00000000 */   nop   
/* 1E625C 801DB99C ACA30000 */  sw    $v1, ($a1)
/* 1E6260 801DB9A0 8C820000 */  lw    $v0, ($a0)
/* 1E6264 801DB9A4 3C06800E */ lui $a2, %hi(gEntityVtableIndexArray)
/* 1E6268 801DB9A8 00021080 */  sll   $v0, $v0, 2
/* 1E626C 801DB9AC 00C23021 */  addu  $a2, $a2, $v0
/* 1E6270 801DB9B0 8CC6DC50 */ lw $a2, %lo(gEntityVtableIndexArray)($a2)
.L801DB9B4_ovl11:
/* 1E6274 801DB9B4 10E60006 */  beq   $a3, $a2, .L801DB9D0_ovl11
/* 1E6278 801DB9B8 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1E627C 801DB9BC 00822021 */  addu  $a0, $a0, $v0
/* 1E6280 801DB9C0 3C05801E */  lui   $a1, %hi(D_801DB8A0) # $a1, 0x801e
/* 1E6284 801DB9C4 24A5B8A0 */  addiu $a1, %lo(D_801DB8A0) # addiu $a1, $a1, -0x4760
/* 1E6288 801DB9C8 0C02C7B2 */  jal   assign_new_process_entry
/* 1E628C 801DB9CC 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
.L801DB9D0_ovl11:
/* 1E6290 801DB9D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1E6294 801DB9D4 27BD0018 */  addiu $sp, $sp, 0x18
/* 1E6298 801DB9D8 03E00008 */  jr    $ra
/* 1E629C 801DB9DC 00000000 */   nop   
.type func_801DB8E8_ovl11, @function
.size func_801DB8E8_ovl11, . - func_801DB8E8_ovl11
