glabel func_801DB1E0_ovl17
/* 1E5AA0 801DB1E0 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1E5AA4 801DB1E4 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1E5AA8 801DB1E8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1E5AAC 801DB1EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1E5AB0 801DB1F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E5AB4 801DB1F4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E5AB8 801DB1F8 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1E5ABC 801DB1FC 3C19800B */  lui        $t9, %hi(func_800B113C)
/* 1E5AC0 801DB200 000FC080 */  sll        $t8, $t7, 2
/* 1E5AC4 801DB204 00581021 */  addu       $v0, $v0, $t8
/* 1E5AC8 801DB208 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1E5ACC 801DB20C 2739113C */  addiu      $t9, $t9, %lo(func_800B113C)
/* 1E5AD0 801DB210 AC990048 */  sw         $t9, 0x48($a0)
/* 1E5AD4 801DB214 8C690000 */  lw         $t1, 0x0($v1)
/* 1E5AD8 801DB218 3C08801D */  lui        $t0, %hi(func_801D0D44_ovl8)
/* 1E5ADC 801DB21C 3C01800E */  lui        $at, %hi(D_800DEF90)
/* 1E5AE0 801DB220 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1E5AE4 801DB224 25080D44 */  addiu      $t0, $t0, %lo(func_801D0D44_ovl8)
glabel func_801DB228_ovl14
/* 1E5AE8 801DB228 00803825 */  or         $a3, $a0, $zero
/* 1E5AEC 801DB22C 000A5880 */  sll        $t3, $t2, 2
/* 1E5AF0 801DB230 002B0821 */  addu       $at, $at, $t3
.L801DB234_ovl9:
/* 1E5AF4 801DB234 AC28EF90 */  sw         $t0, %lo(D_800DEF90)($at)
/* 1E5AF8 801DB238 8C440080 */  lw         $a0, 0x80($v0)
/* 1E5AFC 801DB23C 0C03FC2A */  jal        func_800FF0A8
/* 1E5B00 801DB240 AFA70018 */   sw        $a3, 0x18($sp)
/* 1E5B04 801DB244 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1E5B08 801DB248 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1E5B0C 801DB24C 3C03800E */  lui        $v1, %hi(D_800E0810)
/* 1E5B10 801DB250 24630810 */  addiu      $v1, $v1, %lo(D_800E0810)
/* 1E5B14 801DB254 8C4D0000 */  lw         $t5, 0x0($v0)
.L801DB258_ovl9:
/* 1E5B18 801DB258 240C0018 */  addiu      $t4, $zero, 0x18
/* 1E5B1C 801DB25C 8FA40018 */  lw         $a0, 0x18($sp)
/* 1E5B20 801DB260 000D7080 */  sll        $t6, $t5, 2
/* 1E5B24 801DB264 006E7821 */  addu       $t7, $v1, $t6
/* 1E5B28 801DB268 ADEC0000 */  sw         $t4, 0x0($t7)
/* 1E5B2C 801DB26C 8C580000 */  lw         $t8, 0x0($v0)
.L801DB270_ovl10:
/* 1E5B30 801DB270 9085000D */  lbu        $a1, 0xD($a0)
/* 1E5B34 801DB274 0018C880 */  sll        $t9, $t8, 2
/* 1E5B38 801DB278 00794821 */  addu       $t1, $v1, $t9
.L801DB27C_ovl9:
/* 1E5B3C 801DB27C 0C002A22 */  jal        omGMoveObjDL
/* 1E5B40 801DB280 8D260000 */   lw        $a2, 0x0($t1)
/* 1E5B44 801DB284 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1E5B48 801DB288 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 1E5B4C 801DB28C 3C04800E */  lui        $a0, %hi(D_800E7880)
/* 1E5B50 801DB290 3C06801E */  lui        $a2, %hi(D_801E0B00_ovl11)
glabel func_801DB294_ovl12
/* 1E5B54 801DB294 8D480000 */  lw         $t0, 0x0($t2)
.L801DB298_ovl13:
/* 1E5B58 801DB298 24C60B00 */  addiu      $a2, $a2, %lo(D_801E0B00_ovl11)
/* 1E5B5C 801DB29C 24050004 */  addiu      $a1, $zero, 0x4
/* 1E5B60 801DB2A0 00882021 */  addu       $a0, $a0, $t0
/* 1E5B64 801DB2A4 0C02911F */  jal        call_virtual_function
.L801DB2A8_ovl10:
/* 1E5B68 801DB2A8 90847880 */   lbu       $a0, %lo(D_800E7880)($a0)
/* 1E5B6C 801DB2AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E5B70 801DB2B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1E5B74 801DB2B4 03E00008 */  jr         $ra
.L801DB2B8_ovl15:
/* 1E5B78 801DB2B8 00000000 */   nop
