glabel func_80104958
/* 08D3C8 80104958 27BDFF90 */  addiu $sp, $sp, -0x70
/* 08D3CC 8010495C 27AE0020 */  addiu $t6, $sp, 0x20
/* 08D3D0 80104960 3C018013 */  lui   $at, %hi(gCollisionState) # $at, 0x8013
/* 08D3D4 80104964 AFBF001C */  sw    $ra, 0x1c($sp)
/* 08D3D8 80104968 AFA40070 */  sw    $a0, 0x70($sp)
/* 08D3DC 8010496C AFA50074 */  sw    $a1, 0x74($sp)
/* 08D3E0 80104970 AFA60078 */  sw    $a2, 0x78($sp)
/* 08D3E4 80104974 AFA7007C */  sw    $a3, 0x7c($sp)
/* 08D3E8 80104978 AC2EBCF8 */  sw    $t6, %lo(gCollisionState)($at)
/* 08D3EC 8010497C 8C880000 */  lw    $t0, ($a0)
/* 08D3F0 80104980 27AF0028 */  addiu $t7, $sp, 0x28
/* 08D3F4 80104984 27A90034 */  addiu $t1, $sp, 0x34
/* 08D3F8 80104988 ADE80000 */  sw    $t0, ($t7)
/* 08D3FC 8010498C 8C990004 */  lw    $t9, 4($a0)
/* 08D400 80104990 3C0D8010 */  lui   $t5, %hi(func_80102364) # $t5, 0x8010
/* 08D404 80104994 3C0E8010 */  lui   $t6, %hi(func_801021FC) # $t6, 0x8010
/* 08D408 80104998 ADF90004 */  sw    $t9, 4($t7)
/* 08D40C 8010499C 8C880008 */  lw    $t0, 8($a0)
/* 08D410 801049A0 25AD2364 */  addiu $t5, %lo(func_80102364) # addiu $t5, $t5, 0x2364
/* 08D414 801049A4 25CE21FC */  addiu $t6, %lo(func_801021FC) # addiu $t6, $t6, 0x21fc
/* 08D418 801049A8 ADE80008 */  sw    $t0, 8($t7)
/* 08D41C 801049AC 8FAA0074 */  lw    $t2, 0x74($sp)
/* 08D420 801049B0 00002025 */  move  $a0, $zero
/* 08D424 801049B4 8D4C0000 */  lw    $t4, ($t2)
/* 08D428 801049B8 AD2C0000 */  sw    $t4, ($t1)
/* 08D42C 801049BC 8D4B0004 */  lw    $t3, 4($t2)
/* 08D430 801049C0 AD2B0004 */  sw    $t3, 4($t1)
/* 08D434 801049C4 8D4C0008 */  lw    $t4, 8($t2)
/* 08D438 801049C8 AD2C0008 */  sw    $t4, 8($t1)
/* 08D43C 801049CC AFA0004C */  sw    $zero, 0x4c($sp)
/* 08D440 801049D0 AFAD0064 */  sw    $t5, 0x64($sp)
/* 08D444 801049D4 AFAE0060 */  sw    $t6, 0x60($sp)
/* 08D448 801049D8 AFA00054 */  sw    $zero, 0x54($sp)
/* 08D44C 801049DC AFA00058 */  sw    $zero, 0x58($sp)
/* 08D450 801049E0 AFA0005C */  sw    $zero, 0x5c($sp)
/* 08D454 801049E4 AFA00010 */  sw    $zero, 0x10($sp)
/* 08D458 801049E8 8FA70080 */  lw    $a3, 0x80($sp)
/* 08D45C 801049EC 8FA6007C */  lw    $a2, 0x7c($sp)
/* 08D460 801049F0 0C040ED6 */  jal   func_80103B58
/* 08D464 801049F4 8FA50078 */   lw    $a1, 0x78($sp)
/* 08D468 801049F8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 08D46C 801049FC 27BD0070 */  addiu $sp, $sp, 0x70
/* 08D470 80104A00 03E00008 */  jr    $ra
/* 08D474 80104A04 00000000 */   nop   
.type func_80104958, @function
.size func_80104958, . - func_80104958
