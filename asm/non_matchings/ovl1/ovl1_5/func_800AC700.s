glabel func_800AC700
/* 054950 800AC700 90AE0001 */  lbu   $t6, 1($a1)
/* 054954 800AC704 3C03800D */ lui $v1, %hi(D_800D4E60)
/* 054958 800AC708 94B80004 */  lhu   $t8, 4($a1)
/* 05495C 800AC70C 006E1821 */  addu  $v1, $v1, $t6
/* 054960 800AC710 90634E60 */ lbu $v1, %lo(D_800D4E60)($v1)
/* 054964 800AC714 A4800000 */  sh    $zero, ($a0)
/* 054968 800AC718 A4800008 */  sh    $zero, 8($a0)
/* 05496C 800AC71C 94A90004 */  lhu   $t1, 4($a1)
/* 054970 800AC720 00607827 */  not   $t7, $v1
/* 054974 800AC724 0303C821 */  addu  $t9, $t8, $v1
/* 054978 800AC728 01F91024 */  and   $v0, $t7, $t9
/* 05497C 800AC72C 00025880 */  sll   $t3, $v0, 2
/* 054980 800AC730 00095080 */  sll   $t2, $t1, 2
/* 054984 800AC734 A48A0006 */  sh    $t2, 6($a0)
/* 054988 800AC738 A48B0002 */  sh    $t3, 2($a0)
/* 05498C 800AC73C 94A60006 */  lhu   $a2, 6($a1)
/* 054990 800AC740 A480000C */  sh    $zero, 0xc($a0)
/* 054994 800AC744 848C000C */  lh    $t4, 0xc($a0)
/* 054998 800AC748 00063080 */  sll   $a2, $a2, 2
/* 05499C 800AC74C A486000A */  sh    $a2, 0xa($a0)
/* 0549A0 800AC750 A486000E */  sh    $a2, 0xe($a0)
/* 0549A4 800AC754 A48C0004 */  sh    $t4, 4($a0)
/* 0549A8 800AC758 8CAD0008 */  lw    $t5, 8($a1)
/* 0549AC 800AC75C 340EFFF4 */  li    $t6, 65524
/* 0549B0 800AC760 A48E0014 */  sh    $t6, 0x14($a0)
/* 0549B4 800AC764 AC8D0010 */  sw    $t5, 0x10($a0)
/* 0549B8 800AC768 90B80000 */  lbu   $t8, ($a1)
/* 0549BC 800AC76C 24080400 */  li    $t0, 1024
/* 0549C0 800AC770 A0980016 */  sb    $t8, 0x16($a0)
/* 0549C4 800AC774 90AF0001 */  lbu   $t7, 1($a1)
/* 0549C8 800AC778 A4800018 */  sh    $zero, 0x18($a0)
/* 0549CC 800AC77C A480001A */  sh    $zero, 0x1a($a0)
/* 0549D0 800AC780 A488001C */  sh    $t0, 0x1c($a0)
/* 0549D4 800AC784 A488001E */  sh    $t0, 0x1e($a0)
/* 0549D8 800AC788 AC800020 */  sw    $zero, 0x20($a0)
/* 0549DC 800AC78C 03E00008 */  jr    $ra
/* 0549E0 800AC790 A08F0017 */   sb    $t7, 0x17($a0)
.type func_800AC700, @function
.size func_800AC700, . - func_800AC700
