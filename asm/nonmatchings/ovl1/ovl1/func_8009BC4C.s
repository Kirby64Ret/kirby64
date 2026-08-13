nonmatching func_8009BC4C, 0xF0

glabel func_8009BC4C
    /* 43E9C 8009BC4C 30A20007 */  andi       $v0, $a1, 0x7
    /* 43EA0 8009BC50 27BDFFB0 */  addiu      $sp, $sp, -0x50
    /* 43EA4 8009BC54 28410008 */  slti       $at, $v0, 0x8
    /* 43EA8 8009BC58 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 43EAC 8009BC5C 14200003 */  bnez       $at, .L8009BC6C
    /* 43EB0 8009BC60 AFA60058 */   sw        $a2, 0x58($sp)
    /* 43EB4 8009BC64 10000031 */  b          .L8009BD2C
    /* 43EB8 8009BC68 00001025 */   or        $v0, $zero, $zero
  .L8009BC6C:
    /* 43EBC 8009BC6C 00021880 */  sll        $v1, $v0, 2
    /* 43EC0 8009BC70 3C0F800D */  lui        $t7, %hi(D_800D6A38)
    /* 43EC4 8009BC74 01E37821 */  addu       $t7, $t7, $v1
    /* 43EC8 8009BC78 8DEF6A38 */  lw         $t7, %lo(D_800D6A38)($t7)
    /* 43ECC 8009BC7C 8FAE0058 */  lw         $t6, 0x58($sp)
    /* 43ED0 8009BC80 3C18800D */  lui        $t8, %hi(D_800D6A78)
    /* 43ED4 8009BC84 0303C021 */  addu       $t8, $t8, $v1
    /* 43ED8 8009BC88 01CF082A */  slt        $at, $t6, $t7
    /* 43EDC 8009BC8C 14200003 */  bnez       $at, .L8009BC9C
    /* 43EE0 8009BC90 8FB90058 */   lw        $t9, 0x58($sp)
    /* 43EE4 8009BC94 10000025 */  b          .L8009BD2C
    /* 43EE8 8009BC98 00001025 */   or        $v0, $zero, $zero
  .L8009BC9C:
    /* 43EEC 8009BC9C 8F186A78 */  lw         $t8, %lo(D_800D6A78)($t8)
    /* 43EF0 8009BCA0 00194080 */  sll        $t0, $t9, 2
    /* 43EF4 8009BCA4 44800000 */  mtc1       $zero, $f0
    /* 43EF8 8009BCA8 03084821 */  addu       $t1, $t8, $t0
    /* 43EFC 8009BCAC 8D220000 */  lw         $v0, 0x0($t1)
    /* 43F00 8009BCB0 3C0C800D */  lui        $t4, %hi(D_800D6A98)
    /* 43F04 8009BCB4 01836021 */  addu       $t4, $t4, $v1
    /* 43F08 8009BCB8 94470002 */  lhu        $a3, 0x2($v0)
    /* 43F0C 8009BCBC 9446000A */  lhu        $a2, 0xA($v0)
    /* 43F10 8009BCC0 244A003C */  addiu      $t2, $v0, 0x3C
    /* 43F14 8009BCC4 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 43F18 8009BCC8 944B0006 */  lhu        $t3, 0x6($v0)
    /* 43F1C 8009BCCC E7A00020 */  swc1       $f0, 0x20($sp)
    /* 43F20 8009BCD0 E7A0001C */  swc1       $f0, 0x1C($sp)
    /* 43F24 8009BCD4 E7A00018 */  swc1       $f0, 0x18($sp)
    /* 43F28 8009BCD8 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 43F2C 8009BCDC C4440014 */  lwc1       $f4, 0x14($v0)
    /* 43F30 8009BCE0 8D8C6A98 */  lw         $t4, %lo(D_800D6A98)($t4)
    /* 43F34 8009BCE4 00076880 */  sll        $t5, $a3, 2
    /* 43F38 8009BCE8 E7A40024 */  swc1       $f4, 0x24($sp)
    /* 43F3C 8009BCEC C4460018 */  lwc1       $f6, 0x18($v0)
    /* 43F40 8009BCF0 018D7021 */  addu       $t6, $t4, $t5
    /* 43F44 8009BCF4 E7A60028 */  swc1       $f6, 0x28($sp)
    /* 43F48 8009BCF8 C448001C */  lwc1       $f8, 0x1C($v0)
    /* 43F4C 8009BCFC E7A8002C */  swc1       $f8, 0x2C($sp)
    /* 43F50 8009BD00 C44A002C */  lwc1       $f10, 0x2C($v0)
    /* 43F54 8009BD04 E7AA0030 */  swc1       $f10, 0x30($sp)
    /* 43F58 8009BD08 C450000C */  lwc1       $f16, 0xC($v0)
    /* 43F5C 8009BD0C E7B00034 */  swc1       $f16, 0x34($sp)
    /* 43F60 8009BD10 C4520010 */  lwc1       $f18, 0x10($v0)
    /* 43F64 8009BD14 E7B20038 */  swc1       $f18, 0x38($sp)
    /* 43F68 8009BD18 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 43F6C 8009BD1C 95F90016 */  lhu        $t9, 0x16($t7)
    /* 43F70 8009BD20 AFA00040 */  sw         $zero, 0x40($sp)
    /* 43F74 8009BD24 0C026E9D */  jal        func_8009BA74
    /* 43F78 8009BD28 AFB9003C */   sw        $t9, 0x3C($sp)
  .L8009BD2C:
    /* 43F7C 8009BD2C 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 43F80 8009BD30 27BD0050 */  addiu      $sp, $sp, 0x50
    /* 43F84 8009BD34 03E00008 */  jr         $ra
    /* 43F88 8009BD38 00000000 */   nop
endlabel func_8009BC4C
.size func_8009BC4C, . - func_8009BC4C
