glabel func_801DD900_ovl15
/* 1E81C0 801DD900 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E81C4 801DD904 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E81C8 801DD908 27BDFFE8 */  addiu      $sp, $sp, -0x18
.L801DD90C_ovl15:
/* 1E81CC 801DD90C AFBF0014 */  sw         $ra, 0x14($sp)
.L801DD910_ovl15:
/* 1E81D0 801DD910 AFA40018 */  sw         $a0, 0x18($sp)
/* 1E81D4 801DD914 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1E81D8 801DD918 3C01800F */  lui        $at, %hi(D_800E9E20)
.L801DD91C_ovl16:
/* 1E81DC 801DD91C 24080007 */  addiu      $t0, $zero, 0x7
/* 1E81E0 801DD920 000E7880 */  sll        $t7, $t6, 2
glabel func_801DD924_ovl12
/* 1E81E4 801DD924 002F0821 */  addu       $at, $at, $t7
.L801DD928_ovl14:
/* 1E81E8 801DD928 AC209E20 */  sw         $zero, %lo(D_800E9E20)($at)
/* 1E81EC 801DD92C 8C580000 */  lw         $t8, 0x0($v0)
/* 1E81F0 801DD930 3C01800F */  lui        $at, %hi(D_800E9FE0)
/* 1E81F4 801DD934 3C040001 */  lui        $a0, (0x103EA >> 16)
/* 1E81F8 801DD938 0018C880 */  sll        $t9, $t8, 2
/* 1E81FC 801DD93C 00390821 */  addu       $at, $at, $t9
.L801DD940_ovl13:
/* 1E8200 801DD940 AC209FE0 */  sw         $zero, %lo(D_800E9FE0)($at)
/* 1E8204 801DD944 8C490000 */  lw         $t1, 0x0($v0)
.L801DD948_ovl14:
/* 1E8208 801DD948 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1E820C 801DD94C 348403EA */  ori        $a0, $a0, (0x103EA & 0xFFFF)
glabel func_801DD950_ovl15
/* 1E8210 801DD950 00095080 */  sll        $t2, $t1, 2
/* 1E8214 801DD954 002A0821 */  addu       $at, $at, $t2
/* 1E8218 801DD958 0C02A806 */  jal        func_800AA018
/* 1E821C 801DD95C AC28DFD0 */   sw        $t0, %lo(D_800DDFD0)($at)
/* 1E8220 801DD960 3C040001 */  lui        $a0, (0x103E9 >> 16)
glabel func_801DD964_ovl17
/* 1E8224 801DD964 0C02A806 */  jal        func_800AA018
/* 1E8228 801DD968 348403E9 */   ori       $a0, $a0, (0x103E9 & 0xFFFF)
glabel func_801DD96C_ovl14
/* 1E822C 801DD96C 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* 1E8230 801DD970 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* 1E8234 801DD974 3C0B801E */  lui        $t3, %hi(func_801DD840_ovl11)
/* 1E8238 801DD978 3C01800E */  lui        $at, %hi(D_800DF310)
/* 1E823C 801DD97C 8D8D0000 */  lw         $t5, 0x0($t4)
/* 1E8240 801DD980 256BD840 */  addiu      $t3, $t3, %lo(func_801DD840_ovl11)
/* 1E8244 801DD984 000D7080 */  sll        $t6, $t5, 2
/* 1E8248 801DD988 002E0821 */  addu       $at, $at, $t6
/* 1E824C 801DD98C 0C02BC9F */  jal        func_800AF27C
/* 1E8250 801DD990 AC2BF310 */   sw        $t3, %lo(D_800DF310)($at)
.L801DD994_ovl14:
/* 1E8254 801DD994 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 1E8258 801DD998 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* 1E825C 801DD99C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1E8260 801DD9A0 240F0001 */  addiu      $t7, $zero, 0x1
/* 1E8264 801DD9A4 8F190000 */  lw         $t9, 0x0($t8)
/* 1E8268 801DD9A8 00194880 */  sll        $t1, $t9, 2
.L801DD9AC_ovl10:
/* 1E826C 801DD9AC 00290821 */  addu       $at, $at, $t1
/* 1E8270 801DD9B0 0C02BE85 */  jal        func_800AFA14
/* 1E8274 801DD9B4 AC2F9E20 */   sw        $t7, %lo(D_800E9E20)($at)
/* 1E8278 801DD9B8 8FBF0014 */  lw         $ra, 0x14($sp)
.L801DD9BC_ovl16:
/* 1E827C 801DD9BC 27BD0018 */  addiu      $sp, $sp, 0x18
.L801DD9C0_ovl13:
/* 1E8280 801DD9C0 03E00008 */  jr         $ra
.L801DD9C4_ovl13:
/* 1E8284 801DD9C4 00000000 */   nop
