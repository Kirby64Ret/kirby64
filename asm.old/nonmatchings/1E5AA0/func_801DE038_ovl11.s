glabel func_801DE038_ovl11
/* 1E88F8 801DE038 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 1E88FC 801DE03C 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
.L801DE040_ovl15:
/* 1E8900 801DE040 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801DE044_ovl13:
/* 1E8904 801DE044 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E8908 801DE048 8DC20000 */  lw         $v0, 0x0($t6)
/* 1E890C 801DE04C 3C0F800F */  lui        $t7, %hi(D_800E9C60)
/* 1E8910 801DE050 00021080 */  sll        $v0, $v0, 2
/* 1E8914 801DE054 01E27821 */  addu       $t7, $t7, $v0
.L801DE058_ovl13:
/* 1E8918 801DE058 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
.L801DE05C_ovl13:
/* 1E891C 801DE05C 11E00007 */  beqz       $t7, .L801DE07C_ovl11
/* 1E8920 801DE060 00000000 */   nop
.L801DE064_ovl17:
/* 1E8924 801DE064 0C06835D */  jal        func_801A0D74_ovl7
/* 1E8928 801DE068 00000000 */   nop
/* 1E892C 801DE06C 3C188005 */  lui        $t8, %hi(D_8004A7C4)
.L801DE070_ovl15:
/* 1E8930 801DE070 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1E8934 801DE074 8F020000 */  lw         $v0, 0x0($t8)
/* 1E8938 801DE078 00021080 */  sll        $v0, $v0, 2
.L801DE07C_ovl11:
/* 1E893C 801DE07C 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* 1E8940 801DE080 00822021 */  addu       $a0, $a0, $v0
glabel func_801DE084_ovl13
/* 1E8944 801DE084 3C06801E */  lui        $a2, %hi(D_801E0BB0_ovl11)
/* 1E8948 801DE088 24C60BB0 */  addiu      $a2, $a2, %lo(D_801E0BB0_ovl11)
/* 1E894C 801DE08C 8C84DFD0 */  lw         $a0, %lo(D_800DDFD0)($a0)
/* 1E8950 801DE090 0C02911F */  jal        call_virtual_function
.L801DE094_ovl9:
/* 1E8954 801DE094 24050005 */   addiu     $a1, $zero, 0x5
/* 1E8958 801DE098 0C066FA7 */  jal        func_8019BE9C_ovl7
/* 1E895C 801DE09C 24040006 */   addiu     $a0, $zero, 0x6
/* 1E8960 801DE0A0 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 1E8964 801DE0A4 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 1E8968 801DE0A8 3C08800F */  lui        $t0, %hi(D_800E9C60)
.L801DE0AC_ovl9:
/* 1E896C 801DE0AC 3C09800F */  lui        $t1, %hi(D_800EA1A0)
/* 1E8970 801DE0B0 8F220000 */  lw         $v0, 0x0($t9)
/* 1E8974 801DE0B4 00021080 */  sll        $v0, $v0, 2
/* 1E8978 801DE0B8 01024021 */  addu       $t0, $t0, $v0
/* 1E897C 801DE0BC 8D089C60 */  lw         $t0, %lo(D_800E9C60)($t0)
.L801DE0C0_ovl17:
/* 1E8980 801DE0C0 01224821 */  addu       $t1, $t1, $v0
.L801DE0C4_ovl17:
/* 1E8984 801DE0C4 51000009 */  beql       $t0, $zero, .L801DE0EC_ovl11
/* 1E8988 801DE0C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1E898C 801DE0CC 8D29A1A0 */  lw         $t1, %lo(D_800EA1A0)($t1)
.L801DE0D0_ovl14:
/* 1E8990 801DE0D0 11200003 */  beqz       $t1, .L801DE0E0_ovl11
/* 1E8994 801DE0D4 00000000 */   nop
/* 1E8998 801DE0D8 0C077782 */  jal        func_801DDE08_ovl11
.L801DE0DC_ovl10:
/* 1E899C 801DE0DC 00000000 */   nop
.L801DE0E0_ovl11:
/* 1E89A0 801DE0E0 0C0776E9 */  jal        func_801DDBA4_ovl11
glabel func_801DE0E4_ovl12
/* 1E89A4 801DE0E4 00000000 */   nop
.L801DE0E8_ovl9:
/* 1E89A8 801DE0E8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DE0EC_ovl11:
/* 1E89AC 801DE0EC 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DE0F0_ovl15:
/* 1E89B0 801DE0F0 03E00008 */  jr         $ra
/* 1E89B4 801DE0F4 00000000 */   nop
