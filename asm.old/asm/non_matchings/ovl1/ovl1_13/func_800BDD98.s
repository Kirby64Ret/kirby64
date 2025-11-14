glabel func_800BDD98
/* 065FE8 800BDD98 240EFFFF */  li    $t6, -1
/* 065FEC 800BDD9C 3C01800D */  lui   $at, %hi(D_800D6EA8) # $at, 0x800d
/* 065FF0 800BDDA0 AC2E6EA8 */  sw    $t6, %lo(D_800D6EA8)($at)
/* 065FF4 800BDDA4 3C02800D */  lui   $v0, %hi(D_800D6EA0) # $v0, 0x800d
/* 065FF8 800BDDA8 3C03800D */  lui   $v1, %hi(D_800D6EB0) # $v1, 0x800d
/* 065FFC 800BDDAC 3C04800D */  lui   $a0, %hi(D_800D6EAC) # $a0, 0x800d
/* 066000 800BDDB0 24846EAC */  addiu $a0, %lo(D_800D6EAC) # addiu $a0, $a0, 0x6eac
/* 066004 800BDDB4 24636EB0 */  addiu $v1, %lo(D_800D6EB0) # addiu $v1, $v1, 0x6eb0
/* 066008 800BDDB8 24426EA0 */  addiu $v0, %lo(D_800D6EA0) # addiu $v0, $v0, 0x6ea0
/* 06600C 800BDDBC AC400000 */  sw    $zero, ($v0)
/* 066010 800BDDC0 AC600000 */  sw    $zero, ($v1)
/* 066014 800BDDC4 AC800000 */  sw    $zero, ($a0)
/* 066018 800BDDC8 3C01800D */  lui   $at, %hi(D_800D6EA4) # $at, 0x800d
/* 06601C 800BDDCC AC206EA4 */  sw    $zero, %lo(D_800D6EA4)($at)
/* 066020 800BDDD0 3C05800D */  lui   $a1, %hi(D_800D6EC0) # $a1, 0x800d
/* 066024 800BDDD4 3C06800F */  lui   $a2, %hi(D_800F4D10) # $a2, 0x800f
/* 066028 800BDDD8 3C07800D */  lui   $a3, %hi(D_800D6EBC) # $a3, 0x800d
/* 06602C 800BDDDC 3C08800D */  lui   $t0, %hi(D_800D6EB8) # $t0, 0x800d
/* 066030 800BDDE0 25086EB8 */  addiu $t0, %lo(D_800D6EB8) # addiu $t0, $t0, 0x6eb8
/* 066034 800BDDE4 24E76EBC */  addiu $a3, %lo(D_800D6EBC) # addiu $a3, $a3, 0x6ebc
/* 066038 800BDDE8 24C64D10 */  addiu $a2, %lo(D_800F4D10) # addiu $a2, $a2, 0x4d10
/* 06603C 800BDDEC 24A56EC0 */  addiu $a1, %lo(D_800D6EC0) # addiu $a1, $a1, 0x6ec0
/* 066040 800BDDF0 ACA00000 */  sw    $zero, ($a1)
/* 066044 800BDDF4 ACC00000 */  sw    $zero, ($a2)
/* 066048 800BDDF8 ACE00000 */  sw    $zero, ($a3)
/* 06604C 800BDDFC AD000000 */  sw    $zero, ($t0)
/* 066050 800BDE00 3C01800D */ lui $at, %hi(D_800D6EB4)
/* 066054 800BDE04 03E00008 */  jr    $ra
/* 066058 800BDE08 AC206EB4 */ sw $zero, %lo(D_800D6EB4)($at)
.type func_800BDD98, @function
.size func_800BDD98, . - func_800BDD98
