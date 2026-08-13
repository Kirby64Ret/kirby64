nonmatching func_8017F7B0_ovl5, 0x2CC

glabel func_8017F7B0_ovl5
    /* 126C20 8017F7B0 3C0E8019 */  lui        $t6, %hi(D_8018EDD0_ovl5)
    /* 126C24 8017F7B4 91CEEDD0 */  lbu        $t6, %lo(D_8018EDD0_ovl5)($t6)
    /* 126C28 8017F7B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 126C2C 8017F7BC AFBF0014 */  sw         $ra, 0x14($sp)
    /* 126C30 8017F7C0 15C000AA */  bnez       $t6, .L8017FA6C_ovl5
    /* 126C34 8017F7C4 AFA40018 */   sw        $a0, 0x18($sp)
    /* 126C38 8017F7C8 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 126C3C 8017F7CC 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 126C40 8017F7D0 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* 126C44 8017F7D4 25EF98E0 */  addiu      $t7, $t7, %lo(D_800E98E0)
    /* 126C48 8017F7D8 8CA30000 */  lw         $v1, 0x0($a1)
    /* 126C4C 8017F7DC 00031880 */  sll        $v1, $v1, 2
    /* 126C50 8017F7E0 006F1021 */  addu       $v0, $v1, $t7
    /* 126C54 8017F7E4 8C440000 */  lw         $a0, 0x0($v0)
    /* 126C58 8017F7E8 10800003 */  beqz       $a0, .L8017F7F8_ovl5
    /* 126C5C 8017F7EC 2498FFFF */   addiu     $t8, $a0, -0x1
    /* 126C60 8017F7F0 1000009E */  b          .L8017FA6C_ovl5
    /* 126C64 8017F7F4 AC580000 */   sw        $t8, 0x0($v0)
  .L8017F7F8_ovl5:
    /* 126C68 8017F7F8 3C068005 */  lui        $a2, %hi(gPlayerControllers)
    /* 126C6C 8017F7FC 24C68F20 */  addiu      $a2, $a2, %lo(gPlayerControllers)
    /* 126C70 8017F800 94C40002 */  lhu        $a0, 0x2($a2)
    /* 126C74 8017F804 30994000 */  andi       $t9, $a0, 0x4000
    /* 126C78 8017F808 5320000F */  beql       $t9, $zero, .L8017F848_ovl5
    /* 126C7C 8017F80C 94CB0000 */   lhu       $t3, 0x0($a2)
    /* 126C80 8017F810 0C029D9E */  jal        play_sound
    /* 126C84 8017F814 2404002B */   addiu     $a0, $zero, 0x2B
    /* 126C88 8017F818 3C04800C */  lui        $a0, %hi(gGameState)
    /* 126C8C 8017F81C 2484E4F0 */  addiu      $a0, $a0, %lo(gGameState)
    /* 126C90 8017F820 8C880000 */  lw         $t0, 0x0($a0)
    /* 126C94 8017F824 3C01800D */  lui        $at, %hi(D_800D6B68)
    /* 126C98 8017F828 2409000A */  addiu      $t1, $zero, 0xA
    /* 126C9C 8017F82C AC286B68 */  sw         $t0, %lo(D_800D6B68)($at)
    /* 126CA0 8017F830 AC890000 */  sw         $t1, 0x0($a0)
    /* 126CA4 8017F834 3C018019 */  lui        $at, %hi(D_8018EDD0_ovl5)
    /* 126CA8 8017F838 240A0001 */  addiu      $t2, $zero, 0x1
    /* 126CAC 8017F83C 1000008B */  b          .L8017FA6C_ovl5
    /* 126CB0 8017F840 A02AEDD0 */   sb        $t2, %lo(D_8018EDD0_ovl5)($at)
    /* 126CB4 8017F844 94CB0000 */  lhu        $t3, 0x0($a2)
  .L8017F848_ovl5:
    /* 126CB8 8017F848 316C0C00 */  andi       $t4, $t3, 0xC00
    /* 126CBC 8017F84C 11800007 */  beqz       $t4, .L8017F86C_ovl5
    /* 126CC0 8017F850 3C0D800F */   lui       $t5, %hi(D_800E9C60)
    /* 126CC4 8017F854 25AD9C60 */  addiu      $t5, $t5, %lo(D_800E9C60)
    /* 126CC8 8017F858 006D1021 */  addu       $v0, $v1, $t5
    /* 126CCC 8017F85C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 126CD0 8017F860 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 126CD4 8017F864 10000009 */  b          .L8017F88C_ovl5
    /* 126CD8 8017F868 AC4F0000 */   sw        $t7, 0x0($v0)
  .L8017F86C_ovl5:
    /* 126CDC 8017F86C 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 126CE0 8017F870 00230821 */  addu       $at, $at, $v1
    /* 126CE4 8017F874 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 126CE8 8017F878 8CB80000 */  lw         $t8, 0x0($a1)
    /* 126CEC 8017F87C 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 126CF0 8017F880 0018C880 */  sll        $t9, $t8, 2
    /* 126CF4 8017F884 00390821 */  addu       $at, $at, $t9
    /* 126CF8 8017F888 AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
  .L8017F88C_ovl5:
    /* 126CFC 8017F88C 3C088019 */  lui        $t0, %hi(D_8018EDD8_ovl5)
    /* 126D00 8017F890 8D08EDD8 */  lw         $t0, %lo(D_8018EDD8_ovl5)($t0)
    /* 126D04 8017F894 3C0A800F */  lui        $t2, %hi(D_800E98E0)
    /* 126D08 8017F898 00084880 */  sll        $t1, $t0, 2
    /* 126D0C 8017F89C 01495021 */  addu       $t2, $t2, $t1
    /* 126D10 8017F8A0 8D4A98E0 */  lw         $t2, %lo(D_800E98E0)($t2)
    /* 126D14 8017F8A4 55400072 */  bnel       $t2, $zero, .L8017FA70_ovl5
    /* 126D18 8017F8A8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 126D1C 8017F8AC 8CAB0000 */  lw         $t3, 0x0($a1)
    /* 126D20 8017F8B0 3C0D800F */  lui        $t5, %hi(D_800E9AA0)
    /* 126D24 8017F8B4 25AD9AA0 */  addiu      $t5, $t5, %lo(D_800E9AA0)
    /* 126D28 8017F8B8 000B6080 */  sll        $t4, $t3, 2
    /* 126D2C 8017F8BC 018D1021 */  addu       $v0, $t4, $t5
    /* 126D30 8017F8C0 8C430000 */  lw         $v1, 0x0($v0)
    /* 126D34 8017F8C4 10600003 */  beqz       $v1, .L8017F8D4_ovl5
    /* 126D38 8017F8C8 246EFFFF */   addiu     $t6, $v1, -0x1
    /* 126D3C 8017F8CC 10000067 */  b          .L8017FA6C_ovl5
    /* 126D40 8017F8D0 AC4E0000 */   sw        $t6, 0x0($v0)
  .L8017F8D4_ovl5:
    /* 126D44 8017F8D4 308F9000 */  andi       $t7, $a0, 0x9000
    /* 126D48 8017F8D8 11E0002A */  beqz       $t7, .L8017F984_ovl5
    /* 126D4C 8017F8DC 3C058019 */   lui       $a1, %hi(D_8018EDD4_ovl5)
    /* 126D50 8017F8E0 24A5EDD4 */  addiu      $a1, $a1, %lo(D_8018EDD4_ovl5)
    /* 126D54 8017F8E4 8CB80000 */  lw         $t8, 0x0($a1)
    /* 126D58 8017F8E8 3C048019 */  lui        $a0, %hi(D_80189C98_ovl5)
    /* 126D5C 8017F8EC 0018C880 */  sll        $t9, $t8, 2
    /* 126D60 8017F8F0 00992021 */  addu       $a0, $a0, $t9
    /* 126D64 8017F8F4 0C05FEE1 */  jal        func_8017FB84_ovl5
    /* 126D68 8017F8F8 8C849C98 */   lw        $a0, %lo(D_80189C98_ovl5)($a0)
    /* 126D6C 8017F8FC 3C068005 */  lui        $a2, %hi(gPlayerControllers)
    /* 126D70 8017F900 10400020 */  beqz       $v0, .L8017F984_ovl5
    /* 126D74 8017F904 24C68F20 */   addiu     $a2, $a2, %lo(gPlayerControllers)
    /* 126D78 8017F908 0C029D9E */  jal        play_sound
    /* 126D7C 8017F90C 240400ED */   addiu     $a0, $zero, 0xED
    /* 126D80 8017F910 3C04800C */  lui        $a0, %hi(gGameState)
    /* 126D84 8017F914 2484E4F0 */  addiu      $a0, $a0, %lo(gGameState)
    /* 126D88 8017F918 8C880000 */  lw         $t0, 0x0($a0)
    /* 126D8C 8017F91C 3C058019 */  lui        $a1, %hi(D_8018EDD4_ovl5)
    /* 126D90 8017F920 3C01800D */  lui        $at, %hi(D_800D6B68)
    /* 126D94 8017F924 24A5EDD4 */  addiu      $a1, $a1, %lo(D_8018EDD4_ovl5)
    /* 126D98 8017F928 AC286B68 */  sw         $t0, %lo(D_800D6B68)($at)
    /* 126D9C 8017F92C 8CA20000 */  lw         $v0, 0x0($a1)
    /* 126DA0 8017F930 3C038019 */  lui        $v1, %hi(D_80189C98_ovl5)
    /* 126DA4 8017F934 24010010 */  addiu      $at, $zero, 0x10
    /* 126DA8 8017F938 00024880 */  sll        $t1, $v0, 2
    /* 126DAC 8017F93C 00691821 */  addu       $v1, $v1, $t1
    /* 126DB0 8017F940 8C639C98 */  lw         $v1, %lo(D_80189C98_ovl5)($v1)
    /* 126DB4 8017F944 240A0022 */  addiu      $t2, $zero, 0x22
    /* 126DB8 8017F948 240B0015 */  addiu      $t3, $zero, 0x15
    /* 126DBC 8017F94C 14610003 */  bne        $v1, $at, .L8017F95C_ovl5
    /* 126DC0 8017F950 240C0001 */   addiu     $t4, $zero, 0x1
    /* 126DC4 8017F954 10000002 */  b          .L8017F960_ovl5
    /* 126DC8 8017F958 AC8A0000 */   sw        $t2, 0x0($a0)
  .L8017F95C_ovl5:
    /* 126DCC 8017F95C AC8B0000 */  sw         $t3, 0x0($a0)
  .L8017F960_ovl5:
    /* 126DD0 8017F960 3C04800D */  lui        $a0, %hi(D_800D7178)
    /* 126DD4 8017F964 24847178 */  addiu      $a0, $a0, %lo(D_800D7178)
    /* 126DD8 8017F968 AC82006C */  sw         $v0, 0x6C($a0)
    /* 126DDC 8017F96C AC830070 */  sw         $v1, 0x70($a0)
    /* 126DE0 8017F970 3C018019 */  lui        $at, %hi(D_8018EDD0_ovl5)
    /* 126DE4 8017F974 0C029D36 */  jal        func_800A74D8
    /* 126DE8 8017F978 A02CEDD0 */   sb        $t4, %lo(D_8018EDD0_ovl5)($at)
    /* 126DEC 8017F97C 1000003C */  b          .L8017FA70_ovl5
    /* 126DF0 8017F980 8FBF0014 */   lw        $ra, 0x14($sp)
  .L8017F984_ovl5:
    /* 126DF4 8017F984 94C20000 */  lhu        $v0, 0x0($a2)
    /* 126DF8 8017F988 304D0800 */  andi       $t5, $v0, 0x800
    /* 126DFC 8017F98C 11A0001B */  beqz       $t5, .L8017F9FC_ovl5
    /* 126E00 8017F990 304B0400 */   andi      $t3, $v0, 0x400
    /* 126E04 8017F994 0C029D9E */  jal        play_sound
    /* 126E08 8017F998 24040113 */   addiu     $a0, $zero, 0x113
    /* 126E0C 8017F99C 3C0E8019 */  lui        $t6, %hi(D_8018EDD8_ovl5)
    /* 126E10 8017F9A0 8DCEEDD8 */  lw         $t6, %lo(D_8018EDD8_ovl5)($t6)
    /* 126E14 8017F9A4 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 126E18 8017F9A8 24030001 */  addiu      $v1, $zero, 0x1
    /* 126E1C 8017F9AC 000E7880 */  sll        $t7, $t6, 2
    /* 126E20 8017F9B0 3C058019 */  lui        $a1, %hi(D_8018EDD4_ovl5)
    /* 126E24 8017F9B4 002F0821 */  addu       $at, $at, $t7
    /* 126E28 8017F9B8 24A5EDD4 */  addiu      $a1, $a1, %lo(D_8018EDD4_ovl5)
    /* 126E2C 8017F9BC AC2398E0 */  sw         $v1, %lo(D_800E98E0)($at)
    /* 126E30 8017F9C0 8CA20000 */  lw         $v0, 0x0($a1)
    /* 126E34 8017F9C4 24180011 */  addiu      $t8, $zero, 0x11
    /* 126E38 8017F9C8 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 126E3C 8017F9CC 14400003 */  bnez       $v0, .L8017F9DC_ovl5
    /* 126E40 8017F9D0 2459FFFF */   addiu     $t9, $v0, -0x1
    /* 126E44 8017F9D4 10000002 */  b          .L8017F9E0_ovl5
    /* 126E48 8017F9D8 ACB80000 */   sw        $t8, 0x0($a1)
  .L8017F9DC_ovl5:
    /* 126E4C 8017F9DC ACB90000 */  sw         $t9, 0x0($a1)
  .L8017F9E0_ovl5:
    /* 126E50 8017F9E0 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 126E54 8017F9E4 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 126E58 8017F9E8 8D090000 */  lw         $t1, 0x0($t0)
    /* 126E5C 8017F9EC 00095080 */  sll        $t2, $t1, 2
    /* 126E60 8017F9F0 002A0821 */  addu       $at, $at, $t2
    /* 126E64 8017F9F4 1000001D */  b          .L8017FA6C_ovl5
    /* 126E68 8017F9F8 AC239AA0 */   sw        $v1, %lo(D_800E9AA0)($at)
  .L8017F9FC_ovl5:
    /* 126E6C 8017F9FC 5160001C */  beql       $t3, $zero, .L8017FA70_ovl5
    /* 126E70 8017FA00 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 126E74 8017FA04 0C029D9E */  jal        play_sound
    /* 126E78 8017FA08 24040113 */   addiu     $a0, $zero, 0x113
    /* 126E7C 8017FA0C 3C0D8019 */  lui        $t5, %hi(D_8018EDD8_ovl5)
    /* 126E80 8017FA10 8DADEDD8 */  lw         $t5, %lo(D_8018EDD8_ovl5)($t5)
    /* 126E84 8017FA14 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 126E88 8017FA18 3C058019 */  lui        $a1, %hi(D_8018EDD4_ovl5)
    /* 126E8C 8017FA1C 000D7080 */  sll        $t6, $t5, 2
    /* 126E90 8017FA20 002E0821 */  addu       $at, $at, $t6
    /* 126E94 8017FA24 240C0002 */  addiu      $t4, $zero, 0x2
    /* 126E98 8017FA28 24A5EDD4 */  addiu      $a1, $a1, %lo(D_8018EDD4_ovl5)
    /* 126E9C 8017FA2C AC2C98E0 */  sw         $t4, %lo(D_800E98E0)($at)
    /* 126EA0 8017FA30 8CA20000 */  lw         $v0, 0x0($a1)
    /* 126EA4 8017FA34 24010011 */  addiu      $at, $zero, 0x11
    /* 126EA8 8017FA38 3C188005 */  lui        $t8, %hi(omCurrentObj)
    /* 126EAC 8017FA3C 14410003 */  bne        $v0, $at, .L8017FA4C_ovl5
    /* 126EB0 8017FA40 244F0001 */   addiu     $t7, $v0, 0x1
    /* 126EB4 8017FA44 10000002 */  b          .L8017FA50_ovl5
    /* 126EB8 8017FA48 ACA00000 */   sw        $zero, 0x0($a1)
  .L8017FA4C_ovl5:
    /* 126EBC 8017FA4C ACAF0000 */  sw         $t7, 0x0($a1)
  .L8017FA50_ovl5:
    /* 126EC0 8017FA50 8F18A7C4 */  lw         $t8, %lo(omCurrentObj)($t8)
    /* 126EC4 8017FA54 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 126EC8 8017FA58 24030001 */  addiu      $v1, $zero, 0x1
    /* 126ECC 8017FA5C 8F190000 */  lw         $t9, 0x0($t8)
    /* 126ED0 8017FA60 00194080 */  sll        $t0, $t9, 2
    /* 126ED4 8017FA64 00280821 */  addu       $at, $at, $t0
    /* 126ED8 8017FA68 AC239AA0 */  sw         $v1, %lo(D_800E9AA0)($at)
  .L8017FA6C_ovl5:
    /* 126EDC 8017FA6C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017FA70_ovl5:
    /* 126EE0 8017FA70 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 126EE4 8017FA74 03E00008 */  jr         $ra
    /* 126EE8 8017FA78 00000000 */   nop
endlabel func_8017F7B0_ovl5
.size func_8017F7B0_ovl5, . - func_8017F7B0_ovl5
