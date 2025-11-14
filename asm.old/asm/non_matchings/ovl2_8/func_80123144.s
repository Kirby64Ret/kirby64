glabel func_80123144
/* 0ABBB4 80123144 3C0E8013 */  lui   $t6, %hi(D_8012E8CA) # $t6, 0x8013
/* 0ABBB8 80123148 95CEE8CA */  lhu   $t6, %lo(D_8012E8CA)($t6)
/* 0ABBBC 8012314C 3C018013 */ lui $at, %hi(D_80128440)
/* 0ABBC0 80123150 000E78C0 */  sll   $t7, $t6, 3
/* 0ABBC4 80123154 01EE7823 */  subu  $t7, $t7, $t6
/* 0ABBC8 80123158 000F7880 */  sll   $t7, $t7, 2
/* 0ABBCC 8012315C 002F0821 */  addu  $at, $at, $t7
/* 0ABBD0 80123160 C4248440 */ lwc1 $f4, %lo(D_80128440)($at)
/* 0ABBD4 80123164 460C2002 */  mul.s $f0, $f4, $f12
/* 0ABBD8 80123168 03E00008 */  jr    $ra
/* 0ABBDC 8012316C 00000000 */   nop   
.type func_80123144, @function
.size func_80123144, . - func_80123144
