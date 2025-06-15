glabel func_801DCC7C_ovl13 # 9
/* 1F4BFC 801DCC7C 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F4C00 801DCC80 2463A7C4 */  addiu       $v1, $v1, %lo(D_8004A7C4)
/* 1F4C04 801DCC84 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F4C08 801DCC88 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F4C0C 801DCC8C AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F4C10 801DCC90 AFA40018 */  sw          $a0, 0x18($sp)
/* 1F4C14 801DCC94 8DCF0000 */  lw          $t7, 0x0($t6)
/* 1F4C18 801DCC98 3C02800E */  lui         $v0, %hi(D_800E1B50)
/* 1F4C1C 801DCC9C 3C01C448 */  lui         $at, (0xC4480000 >> 16)
/* 1F4C20 801DCCA0 000FC080 */  sll         $t8, $t7, 2
/* 1F4C24 801DCCA4 00581021 */  addu        $v0, $v0, $t8
/* 1F4C28 801DCCA8 8C421B50 */  lw          $v0, %lo(D_800E1B50)($v0)
/* 1F4C2C 801DCCAC 44812000 */  mtc1        $at, $f4
/* 1F4C30 801DCCB0 3C014270 */  lui         $at, (0x42700000 >> 16)
/* 1F4C34 801DCCB4 8C590080 */  lw          $t9, 0x80($v0)
/* 1F4C38 801DCCB8 44813000 */  mtc1        $at, $f6
/* 1F4C3C 801DCCBC 3C04800E */  lui         $a0, %hi(gEntityGObjProcessArray5)
/* 1F4C40 801DCCC0 E7240018 */  swc1        $f4, 0x18($t9)
/* 1F4C44 801DCCC4 8C480080 */  lw          $t0, 0x80($v0)
/* 1F4C48 801DCCC8 3C05800B */  lui         $a1, %hi(D_800B17B8)
/* 1F4C4C 801DCCCC 24A517B8 */  addiu       $a1, $a1, %lo(D_800B17B8)
/* 1F4C50 801DCCD0 E5060010 */  swc1        $f6, 0x10($t0)
/* 1F4C54 801DCCD4 8C690000 */  lw          $t1, 0x0($v1)
/* 1F4C58 801DCCD8 8D2A0000 */  lw          $t2, 0x0($t1)
/* 1F4C5C 801DCCDC 000A5880 */  sll         $t3, $t2, 2
/* 1F4C60 801DCCE0 008B2021 */  addu        $a0, $a0, $t3
/* 1F4C64 801DCCE4 0C02C7DA */  jal         func_800B1F68
/* 1F4C68 801DCCE8 8C84EC10 */   lw         $a0, %lo(gEntityGObjProcessArray5)($a0)
/* 1F4C6C 801DCCEC 3C0D8005 */  lui         $t5, %hi(D_8004A7C4)
/* 1F4C70 801DCCF0 8DADA7C4 */  lw          $t5, %lo(D_8004A7C4)($t5)
/* 1F4C74 801DCCF4 3C01800F */  lui         $at, %hi(D_800EA520)
/* 1F4C78 801DCCF8 240C0001 */  addiu       $t4, $zero, 0x1
/* 1F4C7C 801DCCFC 8DAE0000 */  lw          $t6, 0x0($t5)
/* 1F4C80 801DCD00 3C040001 */  lui         $a0, (0x10069 >> 16)
/* 1F4C84 801DCD04 34840069 */  ori         $a0, $a0, (0x10069 & 0xFFFF)
/* 1F4C88 801DCD08 000E7880 */  sll         $t7, $t6, 2
/* 1F4C8C 801DCD0C 002F0821 */  addu        $at, $at, $t7
/* 1F4C90 801DCD10 AC2CA520 */  sw          $t4, %lo(D_800EA520)($at)
/* 1F4C94 801DCD14 24050023 */  addiu       $a1, $zero, 0x23
/* 1F4C98 801DCD18 0C02A619 */  jal         func_800A9864
/* 1F4C9C 801DCD1C 24060010 */   addiu      $a2, $zero, 0x10
/* 1F4CA0 801DCD20 3C198005 */  lui         $t9, %hi(D_8004A7C4)
/* 1F4CA4 801DCD24 8F39A7C4 */  lw          $t9, %lo(D_8004A7C4)($t9)
/* 1F4CA8 801DCD28 3C18800B */  lui         $t8, %hi(D_800B7138)
/* 1F4CAC 801DCD2C 3C01800E */  lui         $at, %hi(D_800DEF90)
/* 1F4CB0 801DCD30 8F280000 */  lw          $t0, 0x0($t9)
/* 1F4CB4 801DCD34 27187138 */  addiu       $t8, $t8, %lo(D_800B7138)
/* 1F4CB8 801DCD38 24040004 */  addiu       $a0, $zero, 0x4
/* 1F4CBC 801DCD3C 00084880 */  sll         $t1, $t0, 2
/* 1F4CC0 801DCD40 00290821 */  addu        $at, $at, $t1
/* 1F4CC4 801DCD44 0C006291 */  jal         random_soft_s32_range
/* 1F4CC8 801DCD48 AC38EF90 */   sw         $t8, %lo(D_800DEF90)($at)
/* 1F4CCC 801DCD4C 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F4CD0 801DCD50 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1F4CD4 801DCD54 3C01800F */  lui         $at, %hi(D_800E9AA0)
/* 1F4CD8 801DCD58 240CFFFF */  addiu       $t4, $zero, -0x1
/* 1F4CDC 801DCD5C 8C6A0000 */  lw          $t2, 0x0($v1)
/* 1F4CE0 801DCD60 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F4CE4 801DCD64 000A5880 */  sll         $t3, $t2, 2
/* 1F4CE8 801DCD68 002B0821 */  addu        $at, $at, $t3
/* 1F4CEC 801DCD6C AC229AA0 */  sw          $v0, %lo(D_800E9AA0)($at)
/* 1F4CF0 801DCD70 8C6D0000 */  lw          $t5, 0x0($v1)
/* 1F4CF4 801DCD74 3C01800F */  lui         $at, %hi(D_800E9C60)
/* 1F4CF8 801DCD78 000D7080 */  sll         $t6, $t5, 2
/* 1F4CFC 801DCD7C 002E0821 */  addu        $at, $at, $t6
/* 1F4D00 801DCD80 AC209C60 */  sw          $zero, %lo(D_800E9C60)($at)
/* 1F4D04 801DCD84 3C01800D */  lui         $at, %hi(D_800D7154)
/* 1F4D08 801DCD88 AC2C7154 */  sw          $t4, %lo(D_800D7154)($at)
/* 1F4D0C 801DCD8C 8C6F0000 */  lw          $t7, 0x0($v1)
/* 1F4D10 801DCD90 3C01800E */  lui         $at, %hi(gEntityVtableIndexArray)
/* 1F4D14 801DCD94 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F4D18 801DCD98 000FC880 */  sll         $t9, $t7, 2
/* 1F4D1C 801DCD9C 00390821 */  addu        $at, $at, $t9
/* 1F4D20 801DCDA0 03E00008 */  jr          $ra
/* 1F4D24 801DCDA4 AC20DC50 */   sw         $zero, %lo(gEntityVtableIndexArray)($at)
.type func_801DCC7C_ovl13, @function

.size func_801DCC7C_ovl13, . - func_801DCC7C_ovl13
