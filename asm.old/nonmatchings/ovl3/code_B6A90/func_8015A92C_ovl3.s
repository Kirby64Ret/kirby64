glabel func_8015A92C_ovl3
/* BB36C 8015A92C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BB370 8015A930 AFA40018 */  sw         $a0, 0x18($sp)
/* BB374 8015A934 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* BB378 8015A938 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* BB37C 8015A93C AFBF0014 */  sw         $ra, 0x14($sp)
/* BB380 8015A940 3C18800F */  lui        $t8, %hi(D_800E8AE0)
/* BB384 8015A944 8C8E0000 */  lw         $t6, 0x0($a0)
/* BB388 8015A948 000E7880 */  sll        $t7, $t6, 2
/* BB38C 8015A94C 030FC021 */  addu       $t8, $t8, $t7
/* BB390 8015A950 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
/* BB394 8015A954 33190006 */  andi       $t9, $t8, 0x6
/* BB398 8015A958 17200007 */  bnez       $t9, .L8015A978_ovl3
/* BB39C 8015A95C 00000000 */   nop
/* BB3A0 8015A960 0C054E61 */  jal        func_80153984_ovl3
/* BB3A4 8015A964 00000000 */   nop
/* BB3A8 8015A968 0C0485EE */  jal        func_801217B8
/* BB3AC 8015A96C 00000000 */   nop
/* BB3B0 8015A970 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* BB3B4 8015A974 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L8015A978_ovl3:
/* BB3B8 8015A978 3C088013 */  lui        $t0, %hi(D_8012E7E8 + 0x8)
/* BB3BC 8015A97C 8D08E7F0 */  lw         $t0, %lo(D_8012E7E8 + 0x8)($t0)
/* BB3C0 8015A980 51000012 */  beql       $t0, $zero, .L8015A9CC_ovl3
/* BB3C4 8015A984 8C8D0000 */   lw        $t5, 0x0($a0)
/* BB3C8 8015A988 8C890000 */  lw         $t1, 0x0($a0)
/* BB3CC 8015A98C 3C0B800F */  lui        $t3, %hi(D_800E9720)
glabel D_8015A990_ovl4
/* BB3D0 8015A990 256B9720 */  addiu      $t3, $t3, %lo(D_800E9720)
/* BB3D4 8015A994 00095080 */  sll        $t2, $t1, 2
/* BB3D8 8015A998 014B1021 */  addu       $v0, $t2, $t3
glabel D_8015A99C_ovl4
/* BB3DC 8015A99C 8C430000 */  lw         $v1, 0x0($v0)
/* BB3E0 8015A9A0 2C650001 */  sltiu      $a1, $v1, 0x1
/* BB3E4 8015A9A4 246CFFFF */  addiu      $t4, $v1, -0x1
glabel D_8015A9A8_ovl4
/* BB3E8 8015A9A8 10A00007 */  beqz       $a1, .L8015A9C8_ovl4
/* BB3EC 8015A9AC AC4C0000 */   sw        $t4, 0x0($v0)
/* BB3F0 8015A9B0 0C03DB1E */  jal        func_800F6C78
/* BB3F4 8015A9B4 00000000 */   nop
/* BB3F8 8015A9B8 3C018013 */  lui        $at, %hi(D_8012E7E8 + 0x8)
/* BB3FC 8015A9BC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
glabel D_8015A9C0_ovl4
/* BB400 8015A9C0 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* BB404 8015A9C4 AC20E7F0 */  sw         $zero, %lo(D_8012E7E8 + 0x8)($at)
.L8015A9C8_ovl4:
/* BB408 8015A9C8 8C8D0000 */  lw         $t5, 0x0($a0)
.L8015A9CC_ovl3:
/* BB40C 8015A9CC 3C01800F */  lui        $at, %hi(D_800EA6E0)
/* BB410 8015A9D0 000D7080 */  sll        $t6, $t5, 2
glabel D_8015A9D4_ovl4
/* BB414 8015A9D4 002E0821 */  addu       $at, $at, $t6
/* BB418 8015A9D8 C42CA6E0 */  lwc1       $f12, %lo(D_800EA6E0)($at)
/* BB41C 8015A9DC 3C018019 */  lui        $at, %hi(D_80196FD8_ovl3)
glabel D_8015A9E0_ovl4
/* BB420 8015A9E0 0C048333 */  jal        func_80120CCC
/* BB424 8015A9E4 C42E6FD8 */   lwc1      $f14, %lo(D_80196FD8_ovl3)($at)
/* BB428 8015A9E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BB42C 8015A9EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BB430 8015A9F0 03E00008 */  jr         $ra
/* BB434 8015A9F4 00000000 */   nop
