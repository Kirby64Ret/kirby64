glabel func_801EB0C0_ovl10
/* 1DBE30 801EB0C0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1DBE34 801EB0C4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1DBE38 801EB0C8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1DBE3C 801EB0CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1DBE40 801EB0D0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1DBE44 801EB0D4 8DCF0000 */  lw    $t7, ($t6)
/* 1DBE48 801EB0D8 3C19800F */ lui $t9, %hi(D_800E9E20)
/* 1DBE4C 801EB0DC 000FC080 */  sll   $t8, $t7, 2
/* 1DBE50 801EB0E0 0338C821 */  addu  $t9, $t9, $t8
/* 1DBE54 801EB0E4 8F399E20 */ lw $t9, %lo(D_800D9E20)($t9)
/* 1DBE58 801EB0E8 5320002B */  beql  $t9, $zero, .L801EB198_ovl10
/* 1DBE5C 801EB0EC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1DBE60 801EB0F0 0C07AC69 */  jal   func_801EB1A4_ovl10
/* 1DBE64 801EB0F4 00000000 */   nop   
/* 1DBE68 801EB0F8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DBE6C 801EB0FC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DBE70 801EB100 3C04800F */ lui $a0, %hi(D_800E9FE0)
/* 1DBE74 801EB104 24010001 */  li    $at, 1
/* 1DBE78 801EB108 8C430000 */  lw    $v1, ($v0)
/* 1DBE7C 801EB10C 00031880 */  sll   $v1, $v1, 2
/* 1DBE80 801EB110 00832021 */  addu  $a0, $a0, $v1
/* 1DBE84 801EB114 8C849FE0 */ lw $a0, %lo(D_800E9FE0)($a0)
/* 1DBE88 801EB118 10800006 */  beqz  $a0, .L801EB134_ovl10
/* 1DBE8C 801EB11C 00000000 */   nop   
/* 1DBE90 801EB120 10810011 */  beq   $a0, $at, .L801EB168_ovl10
/* 1DBE94 801EB124 240B0004 */   li    $t3, 4
/* 1DBE98 801EB128 24010002 */  li    $at, 2
/* 1DBE9C 801EB12C 14810013 */  bne   $a0, $at, .L801EB17C_ovl10
/* 1DBEA0 801EB130 00000000 */   nop   
.L801EB134_ovl10:
/* 1DBEA4 801EB134 0C066D09 */  jal   func_8019B424_ovl10
/* 1DBEA8 801EB138 8FA40018 */   lw    $a0, 0x18($sp)
/* 1DBEAC 801EB13C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1DBEB0 801EB140 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1DBEB4 801EB144 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DBEB8 801EB148 24080003 */  li    $t0, 3
/* 1DBEBC 801EB14C 8C490000 */  lw    $t1, ($v0)
/* 1DBEC0 801EB150 00095080 */  sll   $t2, $t1, 2
/* 1DBEC4 801EB154 002A0821 */  addu  $at, $at, $t2
/* 1DBEC8 801EB158 AC28DC50 */ sw $t0, %lo(gEntityVtableIndexArray)($at)
/* 1DBECC 801EB15C 8C430000 */  lw    $v1, ($v0)
/* 1DBED0 801EB160 10000006 */  b     .L801EB17C_ovl10
/* 1DBED4 801EB164 00031880 */   sll   $v1, $v1, 2
.L801EB168_ovl10:
/* 1DBED8 801EB168 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 1DBEDC 801EB16C 00230821 */  addu  $at, $at, $v1
/* 1DBEE0 801EB170 AC2BDC50 */ sw $t3, %lo(gEntityVtableIndexArray)($at)
/* 1DBEE4 801EB174 8C430000 */  lw    $v1, ($v0)
/* 1DBEE8 801EB178 00031880 */  sll   $v1, $v1, 2
.L801EB17C_ovl10:
/* 1DBEEC 801EB17C 3C04800E */ lui $a0, %hi(gEntityGObjProcessArray)
/* 1DBEF0 801EB180 00832021 */  addu  $a0, $a0, $v1
/* 1DBEF4 801EB184 3C05801F */  lui   $a1, %hi(D_801EA784) # $a1, 0x801f
/* 1DBEF8 801EB188 24A5A784 */  addiu $a1, %lo(D_801EA784) # addiu $a1, $a1, -0x587c
/* 1DBEFC 801EB18C 0C02C7B2 */  jal   assign_new_process_entry
/* 1DBF00 801EB190 8C84E510 */ lw $a0, %lo(gEntityGObjProcessArray)($a0)
/* 1DBF04 801EB194 8FBF0014 */  lw    $ra, 0x14($sp)
.L801EB198_ovl10:
/* 1DBF08 801EB198 27BD0018 */  addiu $sp, $sp, 0x18
/* 1DBF0C 801EB19C 03E00008 */  jr    $ra
/* 1DBF10 801EB1A0 00000000 */   nop   
.type func_801EB0C0_ovl10, @function
.size func_801EB0C0_ovl10, . - func_801EB0C0_ovl10
