glabel func_801E5B08_ovl10
/* 1D6878 801E5B08 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1D687C 801E5B0C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D6880 801E5B10 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D6884 801E5B14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1D6888 801E5B18 AFA40058 */  sw    $a0, 0x58($sp)
/* 1D688C 801E5B1C AFA5005C */  sw    $a1, 0x5c($sp)
/* 1D6890 801E5B20 8C430000 */  lw    $v1, ($v0)
/* 1D6894 801E5B24 3C01800E */ lui $at, %hi(gEntitiesNextPosXArray)
/* 1D6898 801E5B28 3C07800F */ lui $a3, %hi(D_800E9AA0)
/* 1D689C 801E5B2C 00031880 */  sll   $v1, $v1, 2
/* 1D68A0 801E5B30 00230821 */  addu  $at, $at, $v1
/* 1D68A4 801E5B34 C42425D0 */ lwc1 $f4, %lo(gEntitiesNextPosXArray)($at)
/* 1D68A8 801E5B38 3C01800E */ lui $at, %hi(gEntitiesNextPosYArray)
/* 1D68AC 801E5B3C 00E33821 */  addu  $a3, $a3, $v1
/* 1D68B0 801E5B40 E7A40028 */  swc1  $f4, 0x28($sp)
/* 1D68B4 801E5B44 8C4E0000 */  lw    $t6, ($v0)
/* 1D68B8 801E5B48 8CE79AA0 */ lw $a3, %lo(D_800E9AA0)($a3)
/* 1D68BC 801E5B4C 27A80034 */  addiu $t0, $sp, 0x34
/* 1D68C0 801E5B50 000E7880 */  sll   $t7, $t6, 2
/* 1D68C4 801E5B54 002F0821 */  addu  $at, $at, $t7
/* 1D68C8 801E5B58 C4262790 */ lwc1 $f6, %lo(gEntitiesNextPosYArray)($at)
/* 1D68CC 801E5B5C 3C01800E */ lui $at, %hi(gEntitiesNextPosZArray)
/* 1D68D0 801E5B60 44866000 */  mtc1  $a2, $f12
/* 1D68D4 801E5B64 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 1D68D8 801E5B68 8C580000 */  lw    $t8, ($v0)
/* 1D68DC 801E5B6C 30A500FF */  andi  $a1, $a1, 0xff
/* 1D68E0 801E5B70 0018C880 */  sll   $t9, $t8, 2
/* 1D68E4 801E5B74 00390821 */  addu  $at, $at, $t9
/* 1D68E8 801E5B78 C4282950 */ lwc1 $f8, %lo(gEntitiesNextPosZArray)($at)
/* 1D68EC 801E5B7C E7A80030 */  swc1  $f8, 0x30($sp)
/* 1D68F0 801E5B80 8CEA0008 */  lw    $t2, 8($a3)
/* 1D68F4 801E5B84 AD0A0000 */  sw    $t2, ($t0)
/* 1D68F8 801E5B88 8CE9000C */  lw    $t1, 0xc($a3)
/* 1D68FC 801E5B8C AD090004 */  sw    $t1, 4($t0)
/* 1D6900 801E5B90 8CEA0010 */  lw    $t2, 0x10($a3)
/* 1D6904 801E5B94 AD0A0008 */  sw    $t2, 8($t0)
/* 1D6908 801E5B98 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 1D690C 801E5B9C C4900000 */  lwc1  $f16, ($a0)
/* 1D6910 801E5BA0 C7A40038 */  lwc1  $f4, 0x38($sp)
/* 1D6914 801E5BA4 46105480 */  add.s $f18, $f10, $f16
/* 1D6918 801E5BA8 C7AA003C */  lwc1  $f10, 0x3c($sp)
/* 1D691C 801E5BAC E7B20034 */  swc1  $f18, 0x34($sp)
/* 1D6920 801E5BB0 C4860004 */  lwc1  $f6, 4($a0)
/* 1D6924 801E5BB4 46062200 */  add.s $f8, $f4, $f6
/* 1D6928 801E5BB8 E7A80038 */  swc1  $f8, 0x38($sp)
/* 1D692C 801E5BBC C4900008 */  lwc1  $f16, 8($a0)
/* 1D6930 801E5BC0 AFA50054 */  sw    $a1, 0x54($sp)
/* 1D6934 801E5BC4 27A40028 */  addiu $a0, $sp, 0x28
/* 1D6938 801E5BC8 46105480 */  add.s $f18, $f10, $f16
/* 1D693C 801E5BCC E7AC004C */  swc1  $f12, 0x4c($sp)
/* 1D6940 801E5BD0 0C067B17 */  jal   func_8019EC5C_ovl10
/* 1D6944 801E5BD4 E7B2003C */   swc1  $f18, 0x3c($sp)
/* 1D6948 801E5BD8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1D694C 801E5BDC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1D6950 801E5BE0 C7A40040 */  lwc1  $f4, 0x40($sp)
/* 1D6954 801E5BE4 3C01800E */ lui $at, %hi(D_800E3050)
/* 1D6958 801E5BE8 8C4B0000 */  lw    $t3, ($v0)
/* 1D695C 801E5BEC C7A60044 */  lwc1  $f6, 0x44($sp)
/* 1D6960 801E5BF0 C7A80048 */  lwc1  $f8, 0x48($sp)
/* 1D6964 801E5BF4 000B6080 */  sll   $t4, $t3, 2
/* 1D6968 801E5BF8 002C0821 */  addu  $at, $at, $t4
/* 1D696C 801E5BFC E4243050 */ swc1 $f4, %lo(D_800E3050)($at)
/* 1D6970 801E5C00 8C4D0000 */  lw    $t5, ($v0)
/* 1D6974 801E5C04 3C01800E */ lui $at, %hi(D_800E33D0)
/* 1D6978 801E5C08 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1D697C 801E5C0C 000D7080 */  sll   $t6, $t5, 2
/* 1D6980 801E5C10 002E0821 */  addu  $at, $at, $t6
/* 1D6984 801E5C14 E42633D0 */ swc1 $f6, %lo(D_800E33D0)($at)
/* 1D6988 801E5C18 8C4F0000 */  lw    $t7, ($v0)
/* 1D698C 801E5C1C 3C01800E */ lui $at, %hi(D_800E3210)
/* 1D6990 801E5C20 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 1D6994 801E5C24 000FC080 */  sll   $t8, $t7, 2
/* 1D6998 801E5C28 00380821 */  addu  $at, $at, $t8
/* 1D699C 801E5C2C E4283210 */ swc1 $f8, %lo(D_800E3210)($at)
/* 1D69A0 801E5C30 8C590000 */  lw    $t9, ($v0)
/* 1D69A4 801E5C34 3C01800E */ lui $at, %hi(D_800E3750)
/* 1D69A8 801E5C38 27BD0058 */  addiu $sp, $sp, 0x58
/* 1D69AC 801E5C3C 00194080 */  sll   $t0, $t9, 2
/* 1D69B0 801E5C40 00280821 */  addu  $at, $at, $t0
/* 1D69B4 801E5C44 03E00008 */  jr    $ra
/* 1D69B8 801E5C48 E42A3750 */ swc1 $f10, %lo(D_800E3750)($at)
.type func_801E5B08_ovl10, @function
.size func_801E5B08_ovl10, . - func_801E5B08_ovl10
