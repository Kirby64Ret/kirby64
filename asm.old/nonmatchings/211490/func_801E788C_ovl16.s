glabel func_801E788C_ovl16
/* 21DB3C 801E788C 3C0E800D */  lui        $t6, %hi(D_800D7098 + 0x4)
/* 21DB40 801E7890 8DCE709C */  lw         $t6, %lo(D_800D7098 + 0x4)($t6)
/* 21DB44 801E7894 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21DB48 801E7898 AFBF0014 */  sw         $ra, 0x14($sp)
/* 21DB4C 801E789C 2DC10007 */  sltiu      $at, $t6, 0x7
/* 21DB50 801E78A0 10200054 */  beqz       $at, func_801E79F4_ovl16
/* 21DB54 801E78A4 AFA40018 */   sw        $a0, 0x18($sp)
/* 21DB58 801E78A8 000E7080 */  sll        $t6, $t6, 2
/* 21DB5C 801E78AC 3C01801F */  lui        $at, %hi(jtbl_801F0068_ovl16)
/* 21DB60 801E78B0 002E0821 */  addu       $at, $at, $t6
/* 21DB64 801E78B4 8C2E0068 */  lw         $t6, %lo(jtbl_801F0068_ovl16)($at)
/* 21DB68 801E78B8 01C00008 */  jr         $t6
/* 21DB6C 801E78BC 00000000 */   nop
.L801E78C0_ovl9:
/* 21DB70 801E78C0 0C077CC5 */  jal        func_801DF314_ovl16
/* 21DB74 801E78C4 00000000 */   nop
/* 21DB78 801E78C8 1000004A */  b          func_801E79F4_ovl16
/* 21DB7C 801E78CC 00000000 */   nop
/* 21DB80 801E78D0 0C077D8B */  jal        func_801DF62C_ovl16
glabel func_801E78D4_ovl10
/* 21DB84 801E78D4 00000000 */   nop
/* 21DB88 801E78D8 10000046 */  b          func_801E79F4_ovl16
/* 21DB8C 801E78DC 00000000 */   nop
/* 21DB90 801E78E0 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 21DB94 801E78E4 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 21DB98 801E78E8 8CA60000 */  lw         $a2, 0x0($a1)
/* 21DB9C 801E78EC 3C01801F */  lui        $at, %hi(func_801F0060_ovl16 + 0x24)
/* 21DBA0 801E78F0 C4220084 */  lwc1       $f2, %lo(func_801F0060_ovl16 + 0x24)($at)
/* 21DBA4 801E78F4 8CC40000 */  lw         $a0, 0x0($a2)
/* 21DBA8 801E78F8 3C08800F */  lui        $t0, %hi(D_800EA6E0)
/* 21DBAC 801E78FC 2508A6E0 */  addiu      $t0, $t0, %lo(D_800EA6E0)
/* 21DBB0 801E7900 00042080 */  sll        $a0, $a0, 2
/* 21DBB4 801E7904 3C01800F */  lui        $at, %hi(D_800EA8A0)
/* 21DBB8 801E7908 00240821 */  addu       $at, $at, $a0
/* 21DBBC 801E790C 01043821 */  addu       $a3, $t0, $a0
/* 21DBC0 801E7910 C4E40000 */  lwc1       $f4, 0x0($a3)
/* 21DBC4 801E7914 C426A8A0 */  lwc1       $f6, %lo(D_800EA8A0)($at)
/* 21DBC8 801E7918 3C03800E */  lui        $v1, %hi(D_800DFBD0)
.L801E791C_ovl9:
/* 21DBCC 801E791C 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
/* 21DBD0 801E7920 46062200 */  add.s      $f8, $f4, $f6
/* 21DBD4 801E7924 3C01801F */  lui        $at, %hi(func_801F0060_ovl16 + 0x28)
/* 21DBD8 801E7928 E4E80000 */  swc1       $f8, 0x0($a3)
/* 21DBDC 801E792C 8CC40000 */  lw         $a0, 0x0($a2)
/* 21DBE0 801E7930 00042080 */  sll        $a0, $a0, 2
/* 21DBE4 801E7934 0064C021 */  addu       $t8, $v1, $a0
/* 21DBE8 801E7938 8F190000 */  lw         $t9, 0x0($t8)
/* 21DBEC 801E793C 01047821 */  addu       $t7, $t0, $a0
/* 21DBF0 801E7940 C5EA0000 */  lwc1       $f10, 0x0($t7)
glabel func_801E7944_ovl9
/* 21DBF4 801E7944 8F29000C */  lw         $t1, 0xC($t9)
/* 21DBF8 801E7948 E52A0038 */  swc1       $f10, 0x38($t1)
glabel func_801E794C_ovl9
/* 21DBFC 801E794C 8CAA0000 */  lw         $t2, 0x0($a1)
/* 21DC00 801E7950 8D4B0000 */  lw         $t3, 0x0($t2)
/* 21DC04 801E7954 000B6080 */  sll        $t4, $t3, 2
/* 21DC08 801E7958 006C6821 */  addu       $t5, $v1, $t4
/* 21DC0C 801E795C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 21DC10 801E7960 8DC2000C */  lw         $v0, 0xC($t6)
/* 21DC14 801E7964 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21DC18 801E7968 4600103C */  c.lt.s     $f2, $f0
/* 21DC1C 801E796C 00000000 */  nop
/* 21DC20 801E7970 4500000E */  bc1f       .L801E79AC_ovl16
/* 21DC24 801E7974 00000000 */   nop
/* 21DC28 801E7978 46020401 */  sub.s      $f16, $f0, $f2
.L801E797C_ovl16:
/* 21DC2C 801E797C E4500038 */  swc1       $f16, 0x38($v0)
/* 21DC30 801E7980 8CAF0000 */  lw         $t7, 0x0($a1)
.L801E7984_ovl10:
/* 21DC34 801E7984 8DF80000 */  lw         $t8, 0x0($t7)
/* 21DC38 801E7988 0018C880 */  sll        $t9, $t8, 2
/* 21DC3C 801E798C 00794821 */  addu       $t1, $v1, $t9
glabel func_801E7990_ovl10
/* 21DC40 801E7990 8D2A0000 */  lw         $t2, 0x0($t1)
/* 21DC44 801E7994 8D42000C */  lw         $v0, 0xC($t2)
/* 21DC48 801E7998 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21DC4C 801E799C 4600103C */  c.lt.s     $f2, $f0
/* 21DC50 801E79A0 00000000 */  nop
/* 21DC54 801E79A4 4503FFF5 */  bc1tl      .L801E797C_ovl16
/* 21DC58 801E79A8 46020401 */   sub.s     $f16, $f0, $f2
.L801E79AC_ovl16:
/* 21DC5C 801E79AC C42C0088 */  lwc1       $f12, %lo(func_801F0060_ovl16 + 0x28)($at)
/* 21DC60 801E79B0 460C003C */  c.lt.s     $f0, $f12
/* 21DC64 801E79B4 00000000 */  nop
/* 21DC68 801E79B8 4500000E */  bc1f       func_801E79F4_ovl16
/* 21DC6C 801E79BC 00000000 */   nop
/* 21DC70 801E79C0 46020480 */  add.s      $f18, $f0, $f2
.L801E79C4_ovl16:
/* 21DC74 801E79C4 E4520038 */  swc1       $f18, 0x38($v0)
/* 21DC78 801E79C8 8CAB0000 */  lw         $t3, 0x0($a1)
/* 21DC7C 801E79CC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 21DC80 801E79D0 000C6880 */  sll        $t5, $t4, 2
/* 21DC84 801E79D4 006D7021 */  addu       $t6, $v1, $t5
/* 21DC88 801E79D8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 21DC8C 801E79DC 8DE2000C */  lw         $v0, 0xC($t7)
/* 21DC90 801E79E0 C4400038 */  lwc1       $f0, 0x38($v0)
/* 21DC94 801E79E4 460C003C */  c.lt.s     $f0, $f12
/* 21DC98 801E79E8 00000000 */  nop
/* 21DC9C 801E79EC 4503FFF5 */  bc1tl      .L801E79C4_ovl16
/* 21DCA0 801E79F0 46020480 */   add.s     $f18, $f0, $f2
glabel func_801E79F4_ovl16
/* 21DCA4 801E79F4 3C058005 */  lui        $a1, %hi(D_8004A7C4)
/* 21DCA8 801E79F8 24A5A7C4 */  addiu      $a1, $a1, %lo(D_8004A7C4)
/* 21DCAC 801E79FC 8CB80000 */  lw         $t8, 0x0($a1)
/* 21DCB0 801E7A00 3C01800F */  lui        $at, %hi(D_800E8920)
/* 21DCB4 801E7A04 8F190000 */  lw         $t9, 0x0($t8)
/* 21DCB8 801E7A08 00194880 */  sll        $t1, $t9, 2
/* 21DCBC 801E7A0C 00290821 */  addu       $at, $at, $t1
/* 21DCC0 801E7A10 0C076D00 */  jal        func_801DB400_ovl16
/* 21DCC4 801E7A14 AC208920 */   sw        $zero, %lo(D_800E8920)($at)
/* 21DCC8 801E7A18 00002025 */  or         $a0, $zero, $zero
/* 21DCCC 801E7A1C 00002825 */  or         $a1, $zero, $zero
glabel func_801E7A20_ovl9
/* 21DCD0 801E7A20 0C0770C5 */  jal        func_801DC314_ovl16
/* 21DCD4 801E7A24 00003025 */   or        $a2, $zero, $zero
/* 21DCD8 801E7A28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 21DCDC 801E7A2C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21DCE0 801E7A30 03E00008 */  jr         $ra
/* 21DCE4 801E7A34 00000000 */   nop
