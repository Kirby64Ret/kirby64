glabel func_801BC794_ovl7
/* 162804 801BC794 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 162808 801BC798 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16280C 801BC79C AFA40020 */  sw         $a0, 0x20($sp)
/* 162810 801BC7A0 2404001C */  addiu      $a0, $zero, 0x1C
/* 162814 801BC7A4 2405001E */  addiu      $a1, $zero, 0x1E
/* 162818 801BC7A8 0C02BB02 */  jal        request_track_general
/* 16281C 801BC7AC 2406003C */   addiu     $a2, $zero, 0x3C
/* 162820 801BC7B0 2401FFFF */  addiu      $at, $zero, -0x1
/* 162824 801BC7B4 14410006 */  bne        $v0, $at, .L801BC7D0_ovl7
/* 162828 801BC7B8 00403825 */   or        $a3, $v0, $zero
/* 16282C 801BC7BC 3C04801D */  lui        $a0, %hi(D_801CE54C_ovl7)
/* 162830 801BC7C0 0C02909C */  jal        print_error_stub
/* 162834 801BC7C4 2484E54C */   addiu     $a0, $a0, %lo(D_801CE54C_ovl7)
/* 162838 801BC7C8 10000067 */  b          .L801BC968_ovl7
/* 16283C 801BC7CC 2402FFFF */   addiu     $v0, $zero, -0x1
.L801BC7D0_ovl7:
/* 162840 801BC7D0 3C01800E */  lui        $at, %hi(D_800E76C0)
/* 162844 801BC7D4 00220821 */  addu       $at, $at, $v0
/* 162848 801BC7D8 240E00FF */  addiu      $t6, $zero, 0xFF
/* 16284C 801BC7DC A02E76C0 */  sb         $t6, %lo(D_800E76C0)($at)
/* 162850 801BC7E0 3C01800E */  lui        $at, %hi(D_800E7730)
/* 162854 801BC7E4 00220821 */  addu       $at, $at, $v0
/* 162858 801BC7E8 240F0003 */  addiu      $t7, $zero, 0x3
/* 16285C 801BC7EC A02F7730 */  sb         $t7, %lo(D_800E7730)($at)
/* 162860 801BC7F0 00021880 */  sll        $v1, $v0, 2
/* 162864 801BC7F4 3C04800E */  lui        $a0, %hi(D_800E0D50)
/* 162868 801BC7F8 3C01800E */  lui        $at, %hi(D_800E77A0)
/* 16286C 801BC7FC 0002C840 */  sll        $t9, $v0, 1
/* 162870 801BC800 00832021 */  addu       $a0, $a0, $v1
/* 162874 801BC804 8C840D50 */  lw         $a0, %lo(D_800E0D50)($a0)
/* 162878 801BC808 00390821 */  addu       $at, $at, $t9
/* 16287C 801BC80C 24180008 */  addiu      $t8, $zero, 0x8
/* 162880 801BC810 8FAE0020 */  lw         $t6, 0x20($sp)
/* 162884 801BC814 A43877A0 */  sh         $t8, %lo(D_800E77A0)($at)
/* 162888 801BC818 3C06800E */  lui        $a2, %hi(D_800E5F90)
/* 16288C 801BC81C 3C01800E */  lui        $at, %hi(D_800E7880)
/* 162890 801BC820 24C65F90 */  addiu      $a2, $a2, %lo(D_800E5F90)
/* 162894 801BC824 00220821 */  addu       $at, $at, $v0
/* 162898 801BC828 00042880 */  sll        $a1, $a0, 2
/* 16289C 801BC82C 00C57821 */  addu       $t7, $a2, $a1
/* 1628A0 801BC830 A02E7880 */  sb         $t6, %lo(D_800E7880)($at)
/* 1628A4 801BC834 8DF80000 */  lw         $t8, 0x0($t7)
/* 1628A8 801BC838 3C08800E */  lui        $t0, %hi(D_800E6BD0)
/* 1628AC 801BC83C 25086BD0 */  addiu      $t0, $t0, %lo(D_800E6BD0)
/* 1628B0 801BC840 00C3C821 */  addu       $t9, $a2, $v1
/* 1628B4 801BC844 01057021 */  addu       $t6, $t0, $a1
/* 1628B8 801BC848 AF380000 */  sw         $t8, 0x0($t9)
/* 1628BC 801BC84C C5C40000 */  lwc1       $f4, 0x0($t6)
/* 1628C0 801BC850 3C09800E */  lui        $t1, %hi(D_800E6A10)
/* 1628C4 801BC854 25296A10 */  addiu      $t1, $t1, %lo(D_800E6A10)
/* 1628C8 801BC858 01037821 */  addu       $t7, $t0, $v1
/* 1628CC 801BC85C 0125C021 */  addu       $t8, $t1, $a1
/* 1628D0 801BC860 E5E40000 */  swc1       $f4, 0x0($t7)
/* 1628D4 801BC864 C7060000 */  lwc1       $f6, 0x0($t8)
/* 1628D8 801BC868 0123C821 */  addu       $t9, $t1, $v1
/* 1628DC 801BC86C 1480000A */  bnez       $a0, .L801BC898_ovl7
/* 1628E0 801BC870 E7260000 */   swc1      $f6, 0x0($t9)
/* 1628E4 801BC874 0C066C51 */  jal        func_8019B144_ovl7
/* 1628E8 801BC878 AFA7001C */   sw        $a3, 0x1C($sp)
/* 1628EC 801BC87C 8FA7001C */  lw         $a3, 0x1C($sp)
/* 1628F0 801BC880 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 1628F4 801BC884 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* 1628F8 801BC888 00072080 */  sll        $a0, $a3, 2
/* 1628FC 801BC88C 01043021 */  addu       $a2, $t0, $a0
/* 162900 801BC890 10000009 */  b          .L801BC8B8_ovl7
/* 162904 801BC894 E4C00000 */   swc1      $f0, 0x0($a2)
.L801BC898_ovl7:
/* 162908 801BC898 3C08800E */  lui        $t0, %hi(gEntitiesNextPosYArray)
/* 16290C 801BC89C 25082790 */  addiu      $t0, $t0, %lo(gEntitiesNextPosYArray)
/* 162910 801BC8A0 01057021 */  addu       $t6, $t0, $a1
/* 162914 801BC8A4 C5C80000 */  lwc1       $f8, 0x0($t6)
/* 162918 801BC8A8 01037821 */  addu       $t7, $t0, $v1
/* 16291C 801BC8AC 00072080 */  sll        $a0, $a3, 2
/* 162920 801BC8B0 01043021 */  addu       $a2, $t0, $a0
/* 162924 801BC8B4 E5E80000 */  swc1       $f8, 0x0($t7)
.L801BC8B8_ovl7:
/* 162928 801BC8B8 3C03800E */  lui        $v1, %hi(D_800E0D50)
/* 16292C 801BC8BC 00641821 */  addu       $v1, $v1, $a0
/* 162930 801BC8C0 8C630D50 */  lw         $v1, %lo(D_800E0D50)($v1)
/* 162934 801BC8C4 3C05800E */  lui        $a1, %hi(gEntitiesAngleXArray)
/* 162938 801BC8C8 24A54010 */  addiu      $a1, $a1, %lo(gEntitiesAngleXArray)
/* 16293C 801BC8CC 00031880 */  sll        $v1, $v1, 2
/* 162940 801BC8D0 00A3C021 */  addu       $t8, $a1, $v1
/* 162944 801BC8D4 C70A0000 */  lwc1       $f10, 0x0($t8)
/* 162948 801BC8D8 3C09800E */  lui        $t1, %hi(gEntitiesAngleYArray)
/* 16294C 801BC8DC 252941D0 */  addiu      $t1, $t1, %lo(gEntitiesAngleYArray)
/* 162950 801BC8E0 00A4C821 */  addu       $t9, $a1, $a0
/* 162954 801BC8E4 01237021 */  addu       $t6, $t1, $v1
/* 162958 801BC8E8 E72A0000 */  swc1       $f10, 0x0($t9)
/* 16295C 801BC8EC C5D00000 */  lwc1       $f16, 0x0($t6)
/* 162960 801BC8F0 3C0A800E */  lui        $t2, %hi(gEntitiesAngleZArray)
/* 162964 801BC8F4 254A4390 */  addiu      $t2, $t2, %lo(gEntitiesAngleZArray)
/* 162968 801BC8F8 01247821 */  addu       $t7, $t1, $a0
/* 16296C 801BC8FC 0143C021 */  addu       $t8, $t2, $v1
/* 162970 801BC900 E5F00000 */  swc1       $f16, 0x0($t7)
/* 162974 801BC904 C7120000 */  lwc1       $f18, 0x0($t8)
/* 162978 801BC908 3C0B800F */  lui        $t3, %hi(D_800E8E60)
/* 16297C 801BC90C 256B8E60 */  addiu      $t3, $t3, %lo(D_800E8E60)
/* 162980 801BC910 0144C821 */  addu       $t9, $t2, $a0
/* 162984 801BC914 01637021 */  addu       $t6, $t3, $v1
/* 162988 801BC918 E7320000 */  swc1       $f18, 0x0($t9)
/* 16298C 801BC91C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 162990 801BC920 3C0C800E */  lui        $t4, %hi(gEntitiesNextPosXArray)
/* 162994 801BC924 258C25D0 */  addiu      $t4, $t4, %lo(gEntitiesNextPosXArray)
/* 162998 801BC928 0164C021 */  addu       $t8, $t3, $a0
/* 16299C 801BC92C 0183C821 */  addu       $t9, $t4, $v1
/* 1629A0 801BC930 AF0F0000 */  sw         $t7, 0x0($t8)
/* 1629A4 801BC934 C7240000 */  lwc1       $f4, 0x0($t9)
/* 1629A8 801BC938 3C0D800E */  lui        $t5, %hi(gEntitiesNextPosZArray)
/* 1629AC 801BC93C 01847021 */  addu       $t6, $t4, $a0
/* 1629B0 801BC940 25AD2950 */  addiu      $t5, $t5, %lo(gEntitiesNextPosZArray)
/* 1629B4 801BC944 E5C40000 */  swc1       $f4, 0x0($t6)
/* 1629B8 801BC948 01037821 */  addu       $t7, $t0, $v1
/* 1629BC 801BC94C 01A3C021 */  addu       $t8, $t5, $v1
/* 1629C0 801BC950 C5E60000 */  lwc1       $f6, 0x0($t7)
/* 1629C4 801BC954 C7080000 */  lwc1       $f8, 0x0($t8)
/* 1629C8 801BC958 01A4C821 */  addu       $t9, $t5, $a0
/* 1629CC 801BC95C 00E01025 */  or         $v0, $a3, $zero
/* 1629D0 801BC960 E4C60000 */  swc1       $f6, 0x0($a2)
/* 1629D4 801BC964 E7280000 */  swc1       $f8, 0x0($t9)
.L801BC968_ovl7:
/* 1629D8 801BC968 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1629DC 801BC96C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1629E0 801BC970 03E00008 */  jr         $ra
/* 1629E4 801BC974 00000000 */   nop
