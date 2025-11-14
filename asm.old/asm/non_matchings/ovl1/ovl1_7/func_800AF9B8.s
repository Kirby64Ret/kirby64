glabel func_800AF9B8
/* 057C08 800AF9B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 057C0C 800AF9BC AFA40020 */  sw    $a0, 0x20($sp)
/* 057C10 800AF9C0 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 057C14 800AF9C4 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 057C18 800AF9C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 057C1C 800AF9CC AFA50024 */  sw    $a1, 0x24($sp)
/* 057C20 800AF9D0 97AE0022 */  lhu   $t6, 0x22($sp)
/* 057C24 800AF9D4 8C980000 */  lw    $t8, ($a0)
/* 057C28 800AF9D8 30A600FF */  andi  $a2, $a1, 0xff
/* 057C2C 800AF9DC 3C05800D */ lui $a1, %hi(D_800D4F10)
/* 057C30 800AF9E0 3C07800E */ lui $a3, %hi(D_800E0810)
/* 057C34 800AF9E4 000E7880 */  sll   $t7, $t6, 2
/* 057C38 800AF9E8 0018C880 */  sll   $t9, $t8, 2
/* 057C3C 800AF9EC 00F93821 */  addu  $a3, $a3, $t9
/* 057C40 800AF9F0 00AF2821 */  addu  $a1, $a1, $t7
/* 057C44 800AF9F4 8CA54F10 */ lw $a1, %lo(D_800D4F10)($a1)
/* 057C48 800AF9F8 8CE70810 */ lw $a3, %lo(D_800E0810)($a3)
/* 057C4C 800AF9FC 0C00297F */  jal   func_8000A5FC
/* 057C50 800AFA00 AFA60010 */   sw    $a2, 0x10($sp)
/* 057C54 800AFA04 8FBF001C */  lw    $ra, 0x1c($sp)
/* 057C58 800AFA08 27BD0020 */  addiu $sp, $sp, 0x20
/* 057C5C 800AFA0C 03E00008 */  jr    $ra
/* 057C60 800AFA10 00000000 */   nop   
.type func_800AF9B8, @function
.size func_800AF9B8, . - func_800AF9B8
