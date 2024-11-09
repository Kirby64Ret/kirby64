.section .late_rodata
glabel D_800D66F8
.float 65535.0

.section .late_rodata
glabel D_800D66FC
.float 9999.0

.section .text
glabel func_800AE138
/* 056388 800AE138 00041080 */  sll   $v0, $a0, 2
/* 05638C 800AE13C 3C01800E */ lui $at, %hi(D_800DE350)
/* 056390 800AE140 00220821 */  addu  $at, $at, $v0
/* 056394 800AE144 AC20E350 */ sw $zero, %lo(D_800DE350)($at)
/* 056398 800AE148 3C01800E */ lui $at, %hi(D_800DD710)
/* 05639C 800AE14C 2403FFFF */  li    $v1, -1
/* 0563A0 800AE150 00220821 */  addu  $at, $at, $v0
/* 0563A4 800AE154 AC23D710 */ sw $v1, %lo(D_800DD710)($at)
/* 0563A8 800AE158 3C01800E */ lui $at, %hi(gEntityGObjProcessArray5)
/* 0563AC 800AE15C 00220821 */  addu  $at, $at, $v0
/* 0563B0 800AE160 AC20EC10 */ sw $zero, %lo(gEntityGObjProcessArray5)($at)
/* 0563B4 800AE164 3C01800E */ lui $at, %hi(gEntityGObjProcessArray4)
/* 0563B8 800AE168 00220821 */  addu  $at, $at, $v0
/* 0563BC 800AE16C AC20EA50 */ sw $zero, %lo(gEntityGObjProcessArray4)($at)
/* 0563C0 800AE170 3C01800E */ lui $at, %hi(gEntityGObjProcessArray3)
/* 0563C4 800AE174 00220821 */  addu  $at, $at, $v0
/* 0563C8 800AE178 AC20E890 */ sw $zero, %lo(gEntityGObjProcessArray3)($at)
/* 0563CC 800AE17C 3C01800E */ lui $at, %hi(gEntityGObjProcessArray2)
/* 0563D0 800AE180 00220821 */  addu  $at, $at, $v0
/* 0563D4 800AE184 AC20E6D0 */ sw $zero, %lo(gEntityGObjProcessArray2)($at)
/* 0563D8 800AE188 3C01800E */ lui $at, %hi(gEntityGObjProcessArray)
/* 0563DC 800AE18C 00220821 */  addu  $at, $at, $v0
/* 0563E0 800AE190 AC20E510 */ sw $zero, %lo(gEntityGObjProcessArray)($at)
/* 0563E4 800AE194 3C01800E */ lui $at, %hi(D_800DE190)
/* 0563E8 800AE198 00220821 */  addu  $at, $at, $v0
/* 0563EC 800AE19C AC20E190 */ sw $zero, %lo(D_800DE190)($at)
/* 0563F0 800AE1A0 3C01800E */ lui $at, %hi(D_800DDFD0)
/* 0563F4 800AE1A4 00220821 */  addu  $at, $at, $v0
/* 0563F8 800AE1A8 AC20DFD0 */ sw $zero, %lo(D_800DDFD0)($at)
/* 0563FC 800AE1AC 3C01800E */ lui $at, %hi(D_800DDE10)
/* 056400 800AE1B0 00220821 */  addu  $at, $at, $v0
/* 056404 800AE1B4 AC20DE10 */ sw $zero, %lo(D_800DDE10)($at)
/* 056408 800AE1B8 3C01800E */ lui $at, %hi(gEntityVtableIndexArray)
/* 05640C 800AE1BC 00220821 */  addu  $at, $at, $v0
/* 056410 800AE1C0 AC20DC50 */ sw $zero, %lo(gEntityVtableIndexArray)($at)
/* 056414 800AE1C4 3C01800E */ lui $at, %hi(D_800DD8D0)
/* 056418 800AE1C8 00220821 */  addu  $at, $at, $v0
/* 05641C 800AE1CC AC20D8D0 */ sw $zero, %lo(D_800DD8D0)($at)
/* 056420 800AE1D0 3C01800E */ lui $at, %hi(D_800E0810)
/* 056424 800AE1D4 00220821 */  addu  $at, $at, $v0
/* 056428 800AE1D8 240E0010 */  li    $t6, 16
/* 05642C 800AE1DC AC2E0810 */ sw $t6, %lo(D_800E0810)($at)
/* 056430 800AE1E0 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 056434 800AE1E4 C4206B10 */  lwc1  $f0, %lo(D_800D6B10)($at)
/* 056438 800AE1E8 3C01800E */ lui $at, %hi(D_800E0B90)
/* 05643C 800AE1EC 00220821 */  addu  $at, $at, $v0
/* 056440 800AE1F0 E4200B90 */ swc1 $f0, %lo(D_800E0B90)($at)
/* 056444 800AE1F4 3C01800E */ lui $at, %hi(D_800E09D0)
/* 056448 800AE1F8 00220821 */  addu  $at, $at, $v0
/* 05644C 800AE1FC E42009D0 */ swc1 $f0, %lo(D_800E09D0)($at)
/* 056450 800AE200 3C01800E */ lui $at, %hi(D_800E0F10)
/* 056454 800AE204 00220821 */  addu  $at, $at, $v0
/* 056458 800AE208 AC230F10 */ sw $v1, %lo(D_800E0F10)($at)
/* 05645C 800AE20C 3C01800E */ lui $at, %hi(D_800E0D50)
/* 056460 800AE210 00220821 */  addu  $at, $at, $v0
/* 056464 800AE214 AC230D50 */ sw $v1, %lo(D_800E0D50)($at)
/* 056468 800AE218 3C01800E */ lui $at, %hi(D_800E0490)
/* 05646C 800AE21C 00220821 */  addu  $at, $at, $v0
/* 056470 800AE220 AC200490 */ sw $zero, %lo(D_800E0490)($at)
/* 056474 800AE224 3C01800E */ lui $at, %hi(D_800E0650)
/* 056478 800AE228 00220821 */  addu  $at, $at, $v0
/* 05647C 800AE22C AC200650 */ sw $zero, %lo(D_800E0650)($at)
/* 056480 800AE230 3C01800E */ lui $at, %hi(D_800E1B50)
/* 056484 800AE234 00220821 */  addu  $at, $at, $v0
/* 056488 800AE238 AC201B50 */ sw $zero, %lo(D_800E1B50)($at)
/* 05648C 800AE23C 3C01800E */ lui $at, %hi(D_800E1ED0)
/* 056490 800AE240 00220821 */  addu  $at, $at, $v0
/* 056494 800AE244 AC231ED0 */ sw $v1, %lo(D_800E1ED0)($at)
/* 056498 800AE248 3C01800E */ lui $at, %hi(D_800DEDD0)
/* 05649C 800AE24C 00220821 */  addu  $at, $at, $v0
/* 0564A0 800AE250 AC20EDD0 */ sw $zero, %lo(D_800DEDD0)($at)
/* 0564A4 800AE254 3C01800E */ lui $at, %hi(D_800DEF90)
/* 0564A8 800AE258 00220821 */  addu  $at, $at, $v0
/* 0564AC 800AE25C AC20EF90 */ sw $zero, %lo(D_800DEF90)($at)
/* 0564B0 800AE260 3C01800E */ lui $at, %hi(D_800DF150)
/* 0564B4 800AE264 00220821 */  addu  $at, $at, $v0
/* 0564B8 800AE268 AC20F150 */ sw $zero, %lo(D_800DF150)($at)
/* 0564BC 800AE26C 3C01800E */ lui $at, %hi(D_800DF850)
/* 0564C0 800AE270 2405FFFF */  li    $a1, -1
/* 0564C4 800AE274 00220821 */  addu  $at, $at, $v0
/* 0564C8 800AE278 AC25F850 */ sw $a1, %lo(D_800DF850)($at)
/* 0564CC 800AE27C 3C01800E */ lui $at, %hi(D_800DF690)
/* 0564D0 800AE280 00220821 */  addu  $at, $at, $v0
/* 0564D4 800AE284 AC25F690 */ sw $a1, %lo(D_800DF690)($at)
/* 0564D8 800AE288 3C01800E */ lui $at, %hi(gSegment4StartArray)
/* 0564DC 800AE28C 00220821 */  addu  $at, $at, $v0
/* 0564E0 800AE290 AC25F4D0 */ sw $a1, %lo(gSegment4StartArray)($at)
/* 0564E4 800AE294 3C01800E */ lui $at, %hi(D_800E0110)
/* 0564E8 800AE298 2406FFFF */  li    $a2, -1
/* 0564EC 800AE29C 00220821 */  addu  $at, $at, $v0
/* 0564F0 800AE2A0 AC260110 */ sw $a2, %lo(D_800E0110)($at)
/* 0564F4 800AE2A4 3C01800E */ lui $at, %hi(D_800DFF50)
/* 0564F8 800AE2A8 00220821 */  addu  $at, $at, $v0
/* 0564FC 800AE2AC AC26FF50 */  sw    $a2, %lo(D_800DFF50)($at)
/* 056500 800AE2B0 3C01800E */ lui $at, %hi(D_800E02D0)
/* 056504 800AE2B4 00220821 */  addu  $at, $at, $v0
/* 056508 800AE2B8 AC2602D0 */ sw $a2, %lo(D_800E02D0)($at)
/* 05650C 800AE2BC 3C01800E */ lui $at, %hi(D_800DFBD0)
/* 056510 800AE2C0 00220821 */  addu  $at, $at, $v0
/* 056514 800AE2C4 44801000 */  mtc1  $zero, $f2
/* 056518 800AE2C8 AC25FBD0 */ sw $a1, %lo(D_800DFBD0)($at)
/* 05651C 800AE2CC 3C01800E */ lui $at, %hi(D_800E2410)
/* 056520 800AE2D0 00220821 */  addu  $at, $at, $v0
/* 056524 800AE2D4 E4222410 */ swc1 $f2, %lo(D_800E2410)($at)
/* 056528 800AE2D8 3C01800E */ lui $at, %hi(D_800E2250)
/* 05652C 800AE2DC 00220821 */  addu  $at, $at, $v0
/* 056530 800AE2E0 E4222250 */ swc1 $f2, %lo(D_800E2250)($at)
/* 056534 800AE2E4 3C01800E */ lui $at, %hi(D_800E2090)
/* 056538 800AE2E8 00220821 */  addu  $at, $at, $v0
/* 05653C 800AE2EC E4222090 */ swc1 $f2, %lo(D_800E2090)($at)
/* 056540 800AE2F0 3C01800D */  lui   $at, %hi(D_800D66F8) # $at, 0x800d
/* 056544 800AE2F4 C42C66F8 */  lwc1  $f12, %lo(D_800D66F8)($at)
/* 056548 800AE2F8 3C01800E */ lui $at, %hi(gEntitiesPosZArray)
/* 05654C 800AE2FC 00220821 */  addu  $at, $at, $v0
/* 056550 800AE300 E4222E90 */ swc1 $f2, %lo(gEntitiesPosZArray)($at)
/* 056554 800AE304 3C01800E */ lui $at, %hi(gEntitiesPosYArray)
/* 056558 800AE308 00220821 */  addu  $at, $at, $v0
/* 05655C 800AE30C E4222CD0 */ swc1 $f2, %lo(gEntitiesPosYArray)($at)
/* 056560 800AE310 3C01800E */ lui $at, %hi(gEntitiesPosXArray)
/* 056564 800AE314 00220821 */  addu  $at, $at, $v0
/* 056568 800AE318 E4222B10 */ swc1 $f2, %lo(gEntitiesPosXArray)($at)
/* 05656C 800AE31C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 056570 800AE320 00220821 */  addu  $at, $at, $v0
/* 056574 800AE324 E4222950 */ swc1 $f2, %lo(gEntitiesNextPosZArray)($at)
/* 056578 800AE328 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 05657C 800AE32C 00220821 */  addu  $at, $at, $v0
/* 056580 800AE330 E4222790 */ swc1 $f2, %lo(gEntitiesNextPosYArray)($at)
/* 056584 800AE334 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 056588 800AE338 00220821 */  addu  $at, $at, $v0
/* 05658C 800AE33C E42225D0 */ swc1 $f2, %lo(gEntitiesNextPosXArray)($at)
/* 056590 800AE340 3C01800E */ lui $at, %hi(D_800E3910)
/* 056594 800AE344 00220821 */  addu  $at, $at, $v0
/* 056598 800AE348 E4223910 */ swc1 $f2, %lo(D_800E3910)($at)
/* 05659C 800AE34C 3C01800E */ lui $at, %hi(D_800E3750)
/* 0565A0 800AE350 00220821 */  addu  $at, $at, $v0
/* 0565A4 800AE354 E4223750 */ swc1 $f2, %lo(D_800E3750)($at)
/* 0565A8 800AE358 3C01800E */ lui $at, %hi(D_800E3590)
/* 0565AC 800AE35C 00220821 */  addu  $at, $at, $v0
/* 0565B0 800AE360 E4223590 */ swc1 $f2, %lo(D_800E3590)($at)
/* 0565B4 800AE364 3C01800E */ lui $at, %hi(D_800E33D0)
/* 0565B8 800AE368 00220821 */  addu  $at, $at, $v0
/* 0565BC 800AE36C E42233D0 */ swc1 $f2, %lo(D_800E33D0)($at)
/* 0565C0 800AE370 3C01800E */ lui $at, %hi(D_800E3210)
/* 0565C4 800AE374 00220821 */  addu  $at, $at, $v0
/* 0565C8 800AE378 E4223210 */ swc1 $f2, %lo(D_800E3210)($at)
/* 0565CC 800AE37C 3C01800E */ lui $at, %hi(D_800E3050)
/* 0565D0 800AE380 00220821 */  addu  $at, $at, $v0
/* 0565D4 800AE384 E4223050 */ swc1 $f2, %lo(D_800E3050)($at)
/* 0565D8 800AE388 3C01800E */ lui $at, %hi(D_800E3E50)
/* 0565DC 800AE38C 00220821 */  addu  $at, $at, $v0
/* 0565E0 800AE390 E42C3E50 */ swc1 $f12, %lo(D_800E3E50)($at)
/* 0565E4 800AE394 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0565E8 800AE398 00220821 */  addu  $at, $at, $v0
/* 0565EC 800AE39C E42C3C90 */ swc1 $f12, %lo(D_800E3C90)($at)
/* 0565F0 800AE3A0 3C01800E */ lui $at, %hi(D_800E3AD0)
/* 0565F4 800AE3A4 00220821 */  addu  $at, $at, $v0
/* 0565F8 800AE3A8 E42C3AD0 */ swc1 $f12, %lo(D_800E3AD0)($at)
/* 0565FC 800AE3AC 3C01800E */ lui $at, %hi(gEntitiesAngleZArray)
/* 056600 800AE3B0 00220821 */  addu  $at, $at, $v0
/* 056604 800AE3B4 E4224390 */ swc1 $f2, %lo(gEntitiesAngleZArray)($at)
/* 056608 800AE3B8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 05660C 800AE3BC 44810000 */  mtc1  $at, $f0
/* 056610 800AE3C0 3C01800E */ lui $at, %hi(gEntitiesAngleYArray)
/* 056614 800AE3C4 00220821 */  addu  $at, $at, $v0
/* 056618 800AE3C8 E42241D0 */ swc1 $f2, %lo(gEntitiesAngleYArray)($at)
/* 05661C 800AE3CC 3C01800E */ lui $at, %hi(gEntitiesAngleXArray)
/* 056620 800AE3D0 00220821 */  addu  $at, $at, $v0
/* 056624 800AE3D4 E4224010 */ swc1 $f2, %lo(gEntitiesAngleXArray)($at)
/* 056628 800AE3D8 3C01800E */ lui $at, %hi(D_800E1450)
/* 05662C 800AE3DC 00220821 */  addu  $at, $at, $v0
/* 056630 800AE3E0 E4221450 */ swc1 $f2, %lo(D_800E1450)($at)
/* 056634 800AE3E4 3C01800E */ lui $at, %hi(D_800E1290)
/* 056638 800AE3E8 00220821 */  addu  $at, $at, $v0
/* 05663C 800AE3EC E4221290 */ swc1 $f2, %lo(D_800E1290)($at)
/* 056640 800AE3F0 3C01800E */ lui $at, %hi(D_800E10D0)
/* 056644 800AE3F4 00220821 */  addu  $at, $at, $v0
/* 056648 800AE3F8 E42210D0 */ swc1 $f2, %lo(D_800E10D0)($at)
/* 05664C 800AE3FC 3C01800E */ lui $at, %hi(gEntitiesScaleZArray)
/* 056650 800AE400 00220821 */  addu  $at, $at, $v0
/* 056654 800AE404 E42048D0 */ swc1 $f0, %lo(gEntitiesScaleZArray)($at)
/* 056658 800AE408 3C01800E */ lui $at, %hi(gEntitiesScaleYArray)
/* 05665C 800AE40C 00220821 */  addu  $at, $at, $v0
/* 056660 800AE410 E4204710 */ swc1 $f0, %lo(gEntitiesScaleYArray)($at)
/* 056664 800AE414 3C01800E */ lui $at, %hi(gEntitiesScaleXArray)
/* 056668 800AE418 00220821 */  addu  $at, $at, $v0
/* 05666C 800AE41C E4204550 */ swc1 $f0, %lo(gEntitiesScaleXArray)($at)
/* 056670 800AE420 3C01800E */ lui $at, %hi(D_800E5DD0)
/* 056674 800AE424 00220821 */  addu  $at, $at, $v0
/* 056678 800AE428 E4225DD0 */ swc1 $f2, %lo(D_800E5DD0)($at)
/* 05667C 800AE42C 3C01800E */ lui $at, %hi(D_800E5C10)
/* 056680 800AE430 00220821 */  addu  $at, $at, $v0
/* 056684 800AE434 E4225C10 */ swc1 $f2, %lo(D_800E5C10)($at)
/* 056688 800AE438 3C01800E */ lui $at, %hi(D_800E5A50)
/* 05668C 800AE43C 00220821 */  addu  $at, $at, $v0
/* 056690 800AE440 E4225A50 */ swc1 $f2, %lo(D_800E5A50)($at)
/* 056694 800AE444 3C01800E */ lui $at, %hi(D_800E4E10)
/* 056698 800AE448 00220821 */  addu  $at, $at, $v0
/* 05669C 800AE44C E4224E10 */ swc1 $f2, %lo(D_800E4E10)($at)
/* 0566A0 800AE450 3C01800E */ lui $at, %hi(D_800E4C50)
/* 0566A4 800AE454 00220821 */  addu  $at, $at, $v0
/* 0566A8 800AE458 E4224C50 */ swc1 $f2, %lo(D_800E4C50)($at)
/* 0566AC 800AE45C 3C01800E */ lui $at, %hi(D_800E4A90)
/* 0566B0 800AE460 00220821 */  addu  $at, $at, $v0
/* 0566B4 800AE464 E4224A90 */ swc1 $f2, %lo(D_800E4A90)($at)
/* 0566B8 800AE468 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0566BC 800AE46C 44812000 */  mtc1  $at, $f4
/* 0566C0 800AE470 3C0F800E */  lui   $t7, %hi(D_800E5350) # $t7, 0x800e
/* 0566C4 800AE474 25EF5350 */  addiu $t7, %lo(D_800E5350) # addiu $t7, $t7, 0x5350
/* 0566C8 800AE478 004F2821 */  addu  $a1, $v0, $t7
/* 0566CC 800AE47C E4A40000 */  swc1  $f4, ($a1)
/* 0566D0 800AE480 C4A00000 */  lwc1  $f0, ($a1)
/* 0566D4 800AE484 3C01800E */ lui $at, %hi(D_800E5190)
/* 0566D8 800AE488 00220821 */  addu  $at, $at, $v0
/* 0566DC 800AE48C E4205190 */ swc1 $f0, %lo(D_800E5190)($at)
/* 0566E0 800AE490 3C01800E */ lui $at, %hi(D_800E4FD0)
/* 0566E4 800AE494 00220821 */  addu  $at, $at, $v0
/* 0566E8 800AE498 E4204FD0 */ swc1 $f0, %lo(D_800E4FD0)($at)
/* 0566EC 800AE49C 3C01800E */ lui $at, %hi(D_800E7650)
/* 0566F0 800AE4A0 00240821 */  addu  $at, $at, $a0
/* 0566F4 800AE4A4 A0207650 */ sb $zero, %lo(D_800E7650)($at)
/* 0566F8 800AE4A8 3C01800F */ lui $at, %hi(D_800E8AE0)
/* 0566FC 800AE4AC 00220821 */  addu  $at, $at, $v0
/* 056700 800AE4B0 AC208AE0 */ sw $zero, %lo(D_800E8AE0)($at)
/* 056704 800AE4B4 3C01800F */ lui $at, %hi(D_800E8220)
/* 056708 800AE4B8 00220821 */  addu  $at, $at, $v0
/* 05670C 800AE4BC AC208220 */ sw $zero, %lo(D_800E8220)($at)
/* 056710 800AE4C0 3C01800F */ lui $at, %hi(D_800E83E0)
/* 056714 800AE4C4 00220821 */  addu  $at, $at, $v0
/* 056718 800AE4C8 AC2083E0 */ sw $zero, %lo(D_800E83E0)($at)
/* 05671C 800AE4CC 3C01800F */ lui $at, %hi(D_800E8760)
/* 056720 800AE4D0 00220821 */  addu  $at, $at, $v0
/* 056724 800AE4D4 AC208760 */ sw $zero, %lo(D_800E8760)($at)
/* 056728 800AE4D8 3C01800F */ lui $at, %hi(D_800E8E60)
/* 05672C 800AE4DC 00220821 */  addu  $at, $at, $v0
/* 056730 800AE4E0 AC208E60 */ sw $zero, %lo(D_800E8E60)($at)
/* 056734 800AE4E4 3C01800F */ lui $at, %hi(D_800E9020)
/* 056738 800AE4E8 00220821 */  addu  $at, $at, $v0
/* 05673C 800AE4EC E4229020 */ swc1 $f2, %lo(D_800E9020)($at)
/* 056740 800AE4F0 3C01800E */ lui $at, %hi(D_800E76C0)
/* 056744 800AE4F4 240600FF */  li    $a2, 255
/* 056748 800AE4F8 00240821 */  addu  $at, $at, $a0
/* 05674C 800AE4FC A02676C0 */ sb $a2, %lo(D_800E76C0)($at)
/* 056750 800AE500 3C01800E */ lui $at, %hi(D_800E7730)
/* 056754 800AE504 00240821 */  addu  $at, $at, $a0
/* 056758 800AE508 A0267730 */ sb $a2, %lo(D_800E7730)($at)
/* 05675C 800AE50C 3C01800E */ lui $at, %hi(D_800E77A0)
/* 056760 800AE510 0004C840 */  sll   $t9, $a0, 1
/* 056764 800AE514 00390821 */  addu  $at, $at, $t9
/* 056768 800AE518 3418FFFF */  li    $t8, 65535
/* 05676C 800AE51C A43877A0 */ sh $t8, %lo(D_800E77A0)($at)
/* 056770 800AE520 3C01800E */ lui $at, %hi(D_800E7880)
/* 056774 800AE524 00240821 */  addu  $at, $at, $a0
/* 056778 800AE528 A0267880 */ sb $a2, %lo(D_800E7880)($at)
/* 05677C 800AE52C 3C01800E */ lui $at, %hi(D_800E78F0)
/* 056780 800AE530 00240821 */  addu  $at, $at, $a0
/* 056784 800AE534 A02078F0 */ sb $zero, %lo(D_800E78F0)($at)
/* 056788 800AE538 3C01800E */ lui $at, %hi(D_800E7B20)
/* 05678C 800AE53C 00220821 */  addu  $at, $at, $v0
/* 056790 800AE540 E4227B20 */ swc1 $f2, %lo(D_800E7B20)($at)
/* 056794 800AE544 3C01800E */ lui $at, %hi(D_800E7CE0)
/* 056798 800AE548 00220821 */  addu  $at, $at, $v0
/* 05679C 800AE54C AC207CE0 */ sw $zero, %lo(D_800E7CE0)($at)
/* 0567A0 800AE550 3C01800F */ lui $at, %hi(D_800EA520)
/* 0567A4 800AE554 00220821 */  addu  $at, $at, $v0
/* 0567A8 800AE558 AC20A520 */ sw $zero, %lo(D_800EA520)($at)
/* 0567AC 800AE55C 3C01800F */ lui $at, %hi(D_800EA360)
/* 0567B0 800AE560 00220821 */  addu  $at, $at, $v0
/* 0567B4 800AE564 AC20A360 */ sw $zero, %lo(D_800EA360)($at)
/* 0567B8 800AE568 3C01800F */ lui $at, %hi(D_800EA1A0)
/* 0567BC 800AE56C 00220821 */  addu  $at, $at, $v0
/* 0567C0 800AE570 AC20A1A0 */ sw $zero, %lo(D_800EA1A0)($at)
/* 0567C4 800AE574 3C01800F */ lui $at, %hi(D_800E9FE0)
/* 0567C8 800AE578 00220821 */  addu  $at, $at, $v0
/* 0567CC 800AE57C AC209FE0 */ sw $zero, %lo(D_800E9FE0)($at)
/* 0567D0 800AE580 3C01800F */ lui $at, %hi(D_800E9E20)
/* 0567D4 800AE584 00220821 */  addu  $at, $at, $v0
/* 0567D8 800AE588 AC209E20 */ sw $zero, %lo(D_800E9E20)($at)
/* 0567DC 800AE58C 3C01800F */ lui $at, %hi(D_800E9C60)
/* 0567E0 800AE590 00220821 */  addu  $at, $at, $v0
/* 0567E4 800AE594 AC209C60 */ sw $zero, %lo(D_800E9C60)($at)
/* 0567E8 800AE598 3C01800F */ lui $at, %hi(D_800E9AA0)
/* 0567EC 800AE59C 00220821 */  addu  $at, $at, $v0
/* 0567F0 800AE5A0 AC209AA0 */ sw $zero, %lo(D_800E9AA0)($at)
/* 0567F4 800AE5A4 3C01800F */ lui $at, %hi(D_800E98E0)
/* 0567F8 800AE5A8 00220821 */  addu  $at, $at, $v0
/* 0567FC 800AE5AC AC2098E0 */ sw $zero, %lo(D_800E98E0)($at)
/* 056800 800AE5B0 3C01800F */ lui $at, %hi(D_800EB320)
/* 056804 800AE5B4 00220821 */  addu  $at, $at, $v0
/* 056808 800AE5B8 E422B320 */ swc1 $f2, %lo(D_800EB320)($at)
/* 05680C 800AE5BC 3C01800F */ lui $at, %hi(D_800EB160)
/* 056810 800AE5C0 00220821 */  addu  $at, $at, $v0
/* 056814 800AE5C4 E422B160 */ swc1 $f2, %lo(D_800EB160)($at)
/* 056818 800AE5C8 3C01800F */ lui $at, %hi(D_800EAFA0)
/* 05681C 800AE5CC 00220821 */  addu  $at, $at, $v0
/* 056820 800AE5D0 E422AFA0 */ swc1 $f2, %lo(D_800EAFA0)($at)
/* 056824 800AE5D4 3C01800F */ lui $at, %hi(D_800EADE0)
/* 056828 800AE5D8 00220821 */  addu  $at, $at, $v0
/* 05682C 800AE5DC E422ADE0 */ swc1 $f2, %lo(D_800EADE0)($at)
/* 056830 800AE5E0 3C01800F */ lui $at, %hi(D_800EAC20)
/* 056834 800AE5E4 00220821 */  addu  $at, $at, $v0
/* 056838 800AE5E8 E422AC20 */ swc1 $f2, %lo(D_800EAC20)($at)
/* 05683C 800AE5EC 3C01800F */ lui $at, %hi(D_800EAA60)
/* 056840 800AE5F0 00220821 */  addu  $at, $at, $v0
/* 056844 800AE5F4 E422AA60 */ swc1 $f2, %lo(D_800EAA60)($at)
/* 056848 800AE5F8 3C01800F */ lui $at, %hi(D_800EA8A0)
/* 05684C 800AE5FC 00220821 */  addu  $at, $at, $v0
/* 056850 800AE600 E422A8A0 */ swc1 $f2, %lo(D_800EA8A0)($at)
/* 056854 800AE604 3C01800F */ lui $at, %hi(D_800EA6E0)
/* 056858 800AE608 00220821 */  addu  $at, $at, $v0
/* 05685C 800AE60C E422A6E0 */ swc1 $f2, %lo(D_800EA6E0)($at)
/* 056860 800AE610 3C01800F */ lui $at, %hi(D_800EB6A0)
/* 056864 800AE614 00220821 */  addu  $at, $at, $v0
/* 056868 800AE618 AC20B6A0 */ sw $zero, %lo(D_800EB6A0)($at)
/* 05686C 800AE61C 3C01800F */ lui $at, %hi(D_800EB4E0)
/* 056870 800AE620 00220821 */  addu  $at, $at, $v0
/* 056874 800AE624 AC20B4E0 */ sw $zero, %lo(D_800EB4E0)($at)
/* 056878 800AE628 3C01800F */ lui $at, %hi(D_800EBA20)
/* 05687C 800AE62C 00220821 */  addu  $at, $at, $v0
/* 056880 800AE630 E422BA20 */ swc1 $f2, %lo(D_800EBA20)($at)
/* 056884 800AE634 3C01800F */ lui $at, %hi(D_800EB860)
/* 056888 800AE638 00220821 */  addu  $at, $at, $v0
/* 05688C 800AE63C E422B860 */ swc1 $f2, %lo(D_800EB860)($at)
/* 056890 800AE640 3C01800F */ lui $at, %hi(D_800EC120)
/* 056894 800AE644 00220821 */  addu  $at, $at, $v0
/* 056898 800AE648 AC23C120 */ sw $v1, %lo(D_800EC120)($at)
/* 05689C 800AE64C 3C01800F */ lui $at, %hi(D_800EBF60)
/* 0568A0 800AE650 00220821 */  addu  $at, $at, $v0
/* 0568A4 800AE654 AC23BF60 */ sw $v1, %lo(D_800EBF60)($at)
/* 0568A8 800AE658 3C01800F */ lui $at, %hi(D_800EBDA0)
/* 0568AC 800AE65C 00220821 */  addu  $at, $at, $v0
/* 0568B0 800AE660 AC23BDA0 */ sw $v1, %lo(D_800EBDA0)($at)
/* 0568B4 800AE664 3C01800F */ lui $at, %hi(D_800EBBE0)
/* 0568B8 800AE668 00220821 */  addu  $at, $at, $v0
/* 0568BC 800AE66C AC23BBE0 */ sw $v1, %lo(D_800EBBE0)($at)
/* 0568C0 800AE670 3C01800F */ lui $at, %hi(D_800EC4A0)
/* 0568C4 800AE674 00220821 */  addu  $at, $at, $v0
/* 0568C8 800AE678 AC20C4A0 */ sw $zero, %lo(D_800EC4A0)($at)
/* 0568CC 800AE67C 3C01800F */ lui $at, %hi(D_800EC2E0)
/* 0568D0 800AE680 00220821 */  addu  $at, $at, $v0
/* 0568D4 800AE684 AC20C2E0 */ sw $zero, %lo(D_800EC2E0)($at)
/* 0568D8 800AE688 3C01800F */ lui $at, %hi(D_800EC820)
/* 0568DC 800AE68C 00220821 */  addu  $at, $at, $v0
/* 0568E0 800AE690 E422C820 */ swc1 $f2, %lo(D_800EC820)($at)
/* 0568E4 800AE694 3C01800F */ lui $at, %hi(D_800EC660)
/* 0568E8 800AE698 00220821 */  addu  $at, $at, $v0
/* 0568EC 800AE69C E422C660 */ swc1 $f2, %lo(D_800EC660)($at)
/* 0568F0 800AE6A0 3C01800E */ lui $at, %hi(D_800E6150)
/* 0568F4 800AE6A4 00220821 */  addu  $at, $at, $v0
/* 0568F8 800AE6A8 AC236150 */ sw $v1, %lo(D_800E6150)($at)
/* 0568FC 800AE6AC 3C01800E */ lui $at, %hi(D_800E5F90)
/* 056900 800AE6B0 00220821 */  addu  $at, $at, $v0
/* 056904 800AE6B4 AC235F90 */ sw $v1, %lo(D_800E5F90)($at)
/* 056908 800AE6B8 3C01800E */ lui $at, %hi(D_800E6D90)
/* 05690C 800AE6BC 00220821 */  addu  $at, $at, $v0
/* 056910 800AE6C0 E4226D90 */ swc1 $f2, %lo(D_800E6D90)($at)
/* 056914 800AE6C4 3C01800E */ lui $at, %hi(D_800E6BD0)
/* 056918 800AE6C8 00220821 */  addu  $at, $at, $v0
/* 05691C 800AE6CC E4226BD0 */ swc1 $f2, %lo(D_800E6BD0)($at)
/* 056920 800AE6D0 3C01800E */ lui $at, %hi(D_800E17D0)
/* 056924 800AE6D4 00220821 */  addu  $at, $at, $v0
/* 056928 800AE6D8 E42217D0 */ swc1 $f2, %lo(D_800E17D0)($at)
/* 05692C 800AE6DC 3C01800E */ lui $at, %hi(D_800E1610)
/* 056930 800AE6E0 00220821 */  addu  $at, $at, $v0
/* 056934 800AE6E4 E4221610 */ swc1 $f2, %lo(D_800E1610)($at)
/* 056938 800AE6E8 3C01800E */ lui $at, %hi(D_800E6A10)
/* 05693C 800AE6EC 00220821 */  addu  $at, $at, $v0
/* 056940 800AE6F0 E4226A10 */ swc1 $f2, %lo(D_800E6A10)($at)
/* 056944 800AE6F4 3C01800E */ lui $at, %hi(D_800E6690)
/* 056948 800AE6F8 00220821 */  addu  $at, $at, $v0
/* 05694C 800AE6FC E4226690 */ swc1 $f2, %lo(D_800E6690)($at)
/* 056950 800AE700 3C01800E */ lui $at, %hi(D_800E64D0)
/* 056954 800AE704 00220821 */  addu  $at, $at, $v0
/* 056958 800AE708 3C09800E */  lui   $t1, %hi(D_800E6F50) # $t1, 0x800e
/* 05695C 800AE70C E42264D0 */ swc1 $f2, %lo(D_800E64D0)($at)
/* 056960 800AE710 25296F50 */  addiu $t1, %lo(D_800E6F50) # addiu $t1, $t1, 0x6f50
/* 056964 800AE714 00044100 */  sll   $t0, $a0, 4
/* 056968 800AE718 01091821 */  addu  $v1, $t0, $t1
/* 05696C 800AE71C E4620008 */  swc1  $f2, 8($v1)
/* 056970 800AE720 E4620004 */  swc1  $f2, 4($v1)
/* 056974 800AE724 E4620000 */  swc1  $f2, ($v1)
/* 056978 800AE728 3C01800D */  lui   $at, %hi(D_800D66FC) # $at, 0x800d
/* 05697C 800AE72C C42666FC */  lwc1  $f6, %lo(D_800D66FC)($at)
/* 056980 800AE730 3C01800E */ lui $at, %hi(D_800E6850)
/* 056984 800AE734 00220821 */  addu  $at, $at, $v0
/* 056988 800AE738 E466000C */  swc1  $f6, 0xc($v1)
/* 05698C 800AE73C E42C6850 */ swc1 $f12, %lo(D_800E6850)($at)
/* 056990 800AE740 3C01800F */ lui $at, %hi(D_800E8CA0)
/* 056994 800AE744 00220821 */  addu  $at, $at, $v0
/* 056998 800AE748 AC208CA0 */ sw $zero, %lo(D_800E8CA0)($at)
/* 05699C 800AE74C 3C01800E */ lui $at, %hi(D_800E6310)
/* 0569A0 800AE750 00220821 */  addu  $at, $at, $v0
/* 0569A4 800AE754 AC206310 */ sw $zero, %lo(D_800E6310)($at)
/* 0569A8 800AE758 3C01800E */ lui $at, %hi(D_800E56D0)
/* 0569AC 800AE75C 00220821 */  addu  $at, $at, $v0
/* 0569B0 800AE760 E42256D0 */ swc1 $f2, %lo(D_800E56D0)($at)
/* 0569B4 800AE764 3C01800E */ lui $at, %hi(D_800E5510)
/* 0569B8 800AE768 00220821 */  addu  $at, $at, $v0
/* 0569BC 800AE76C E4225510 */ swc1 $f2, %lo(D_800E5510)($at)
/* 0569C0 800AE770 3C01800E */ lui $at, %hi(D_800E5890)
/* 0569C4 800AE774 00220821 */  addu  $at, $at, $v0
/* 0569C8 800AE778 3C0A800F */  lui   $t2, %hi(D_800E9720) # $t2, 0x800f
/* 0569CC 800AE77C E4225890 */ swc1 $f2, %lo(D_800E5890)($at)
/* 0569D0 800AE780 254A9720 */  addiu $t2, %lo(D_800E9720) # addiu $t2, $t2, -0x68e0
/* 0569D4 800AE784 004A2821 */  addu  $a1, $v0, $t2
/* 0569D8 800AE788 3C01800F */ lui $at, %hi(D_800E9560)
/* 0569DC 800AE78C 00220821 */  addu  $at, $at, $v0
/* 0569E0 800AE790 ACA00000 */  sw    $zero, ($a1)
/* 0569E4 800AE794 AC209560 */ sw $zero, %lo(D_800E9560)($at)
/* 0569E8 800AE798 3C01800F */ lui $at, %hi(D_800E93A0)
/* 0569EC 800AE79C 00220821 */  addu  $at, $at, $v0
/* 0569F0 800AE7A0 03E00008 */  jr    $ra
/* 0569F4 800AE7A4 AC2093A0 */ sw $zero, %lo(D_800E93A0)($at)
.type func_800AE138, @function
.size func_800AE138, . - func_800AE138
