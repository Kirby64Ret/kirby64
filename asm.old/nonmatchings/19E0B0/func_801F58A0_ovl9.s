glabel func_801F58A0_ovl9
/* 1A38F0 801F58A0 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1A38F4 801F58A4 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1A38F8 801F58A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1A38FC 801F58AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A3900 801F58B0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1A3904 801F58B4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1A3908 801F58B8 3C01800F */  lui        $at, %hi(D_800E9C60)
/* 1A390C 801F58BC 24070001 */  addiu      $a3, $zero, 0x1
/* 1A3910 801F58C0 000E7880 */  sll        $t7, $t6, 2
/* 1A3914 801F58C4 002F0821 */  addu       $at, $at, $t7
/* 1A3918 801F58C8 AC279C60 */  sw         $a3, %lo(D_800E9C60)($at)
/* 1A391C 801F58CC 8C580000 */  lw         $t8, 0x0($v0)
/* 1A3920 801F58D0 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1A3924 801F58D4 44802000 */  mtc1       $zero, $f4
/* 1A3928 801F58D8 0018C880 */  sll        $t9, $t8, 2
/* 1A392C 801F58DC 00390821 */  addu       $at, $at, $t9
/* 1A3930 801F58E0 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1A3934 801F58E4 8C480000 */  lw         $t0, 0x0($v0)
/* 1A3938 801F58E8 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1A393C 801F58EC 3C06800E */  lui        $a2, %hi(D_800E6690)
/* 1A3940 801F58F0 00084880 */  sll        $t1, $t0, 2
/* 1A3944 801F58F4 00290821 */  addu       $at, $at, $t1
/* 1A3948 801F58F8 AC27DFD0 */  sw         $a3, %lo(D_800DDFD0)($at)
/* 1A394C 801F58FC 8C4A0000 */  lw         $t2, 0x0($v0)
/* 1A3950 801F5900 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
/* 1A3954 801F5904 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1A3958 801F5908 000A5880 */  sll        $t3, $t2, 2
/* 1A395C 801F590C 00CB6021 */  addu       $t4, $a2, $t3
/* 1A3960 801F5910 E5840000 */  swc1       $f4, 0x0($t4)
/* 1A3964 801F5914 8C430000 */  lw         $v1, 0x0($v0)
/* 1A3968 801F5918 3C040001 */  lui        $a0, (0x10050 >> 16)
/* 1A396C 801F591C 34840050 */  ori        $a0, $a0, (0x10050 & 0xFFFF)
/* 1A3970 801F5920 00031880 */  sll        $v1, $v1, 2
/* 1A3974 801F5924 00C36821 */  addu       $t5, $a2, $v1
/* 1A3978 801F5928 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 1A397C 801F592C 00230821 */  addu       $at, $at, $v1
/* 1A3980 801F5930 24050001 */  addiu      $a1, $zero, 0x1
/* 1A3984 801F5934 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* 1A3988 801F5938 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1A398C 801F593C 3C018022 */  lui        $at, %hi(D_8021D914_ovl9)
/* 1A3990 801F5940 C428D914 */  lwc1       $f8, %lo(D_8021D914_ovl9)($at)
/* 1A3994 801F5944 3C01800E */  lui        $at, %hi(D_800E6850)
/* 1A3998 801F5948 000E7880 */  sll        $t7, $t6, 2
/* 1A399C 801F594C 002F0821 */  addu       $at, $at, $t7
/* 1A39A0 801F5950 0C02AA19 */  jal        func_800AA864
/* 1A39A4 801F5954 E4286850 */   swc1      $f8, %lo(D_800E6850)($at)
/* 1A39A8 801F5958 44806000 */  mtc1       $zero, $f12
/* 1A39AC 801F595C 0C02BB30 */  jal        func_800AECC0
/* 1A39B0 801F5960 00000000 */   nop
/* 1A39B4 801F5964 3C040001 */  lui        $a0, (0x10053 >> 16)
/* 1A39B8 801F5968 0C02A7A9 */  jal        func_800A9EA4
/* 1A39BC 801F596C 34840053 */   ori       $a0, $a0, (0x10053 & 0xFFFF)
/* 1A39C0 801F5970 0C002DAF */  jal        finish_current_thread
/* 1A39C4 801F5974 2404003C */   addiu     $a0, $zero, 0x3C
/* 1A39C8 801F5978 3C01800D */  lui        $at, %hi(D_800D6B10)
/* 1A39CC 801F597C 0C02BB30 */  jal        func_800AECC0
/* 1A39D0 801F5980 C42C6B10 */   lwc1      $f12, %lo(D_800D6B10)($at)
/* 1A39D4 801F5984 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1A39D8 801F5988 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1A39DC 801F598C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1A39E0 801F5990 24180001 */  addiu      $t8, $zero, 0x1
/* 1A39E4 801F5994 8F280000 */  lw         $t0, 0x0($t9)
/* 1A39E8 801F5998 00084880 */  sll        $t1, $t0, 2
/* 1A39EC 801F599C 00290821 */  addu       $at, $at, $t1
/* 1A39F0 801F59A0 0C02BE85 */  jal        func_800AFA14
/* 1A39F4 801F59A4 AC389E20 */   sw        $t8, %lo(D_800E9E20)($at)
/* 1A39F8 801F59A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1A39FC 801F59AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1A3A00 801F59B0 03E00008 */  jr         $ra
/* 1A3A04 801F59B4 00000000 */   nop
