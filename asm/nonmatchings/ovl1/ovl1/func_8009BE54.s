nonmatching func_8009BE54, 0x128

glabel func_8009BE54
    /* 440A4 8009BE54 27BDFFA8 */  addiu      $sp, $sp, -0x58
    /* 440A8 8009BE58 30820007 */  andi       $v0, $a0, 0x7
    /* 440AC 8009BE5C 44866000 */  mtc1       $a2, $f12
    /* 440B0 8009BE60 44877000 */  mtc1       $a3, $f14
    /* 440B4 8009BE64 28410008 */  slti       $at, $v0, 0x8
    /* 440B8 8009BE68 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 440BC 8009BE6C AFA40058 */  sw         $a0, 0x58($sp)
    /* 440C0 8009BE70 14200003 */  bnez       $at, .L8009BE80
    /* 440C4 8009BE74 AFA5005C */   sw        $a1, 0x5C($sp)
    /* 440C8 8009BE78 1000003C */  b          .L8009BF6C
    /* 440CC 8009BE7C 00001025 */   or        $v0, $zero, $zero
  .L8009BE80:
    /* 440D0 8009BE80 00021880 */  sll        $v1, $v0, 2
    /* 440D4 8009BE84 3C0F800D */  lui        $t7, %hi(D_800D6A38)
    /* 440D8 8009BE88 01E37821 */  addu       $t7, $t7, $v1
    /* 440DC 8009BE8C 8DEF6A38 */  lw         $t7, %lo(D_800D6A38)($t7)
    /* 440E0 8009BE90 8FAE005C */  lw         $t6, 0x5C($sp)
    /* 440E4 8009BE94 3C18800D */  lui        $t8, %hi(D_800D6A78)
    /* 440E8 8009BE98 0303C021 */  addu       $t8, $t8, $v1
    /* 440EC 8009BE9C 01CF082A */  slt        $at, $t6, $t7
    /* 440F0 8009BEA0 14200003 */  bnez       $at, .L8009BEB0
    /* 440F4 8009BEA4 8FB9005C */   lw        $t9, 0x5C($sp)
    /* 440F8 8009BEA8 10000030 */  b          .L8009BF6C
    /* 440FC 8009BEAC 00001025 */   or        $v0, $zero, $zero
  .L8009BEB0:
    /* 44100 8009BEB0 8F186A78 */  lw         $t8, %lo(D_800D6A78)($t8)
    /* 44104 8009BEB4 00194080 */  sll        $t0, $t9, 2
    /* 44108 8009BEB8 C7A40068 */  lwc1       $f4, 0x68($sp)
    /* 4410C 8009BEBC 03084821 */  addu       $t1, $t8, $t0
    /* 44110 8009BEC0 8D220000 */  lw         $v0, 0x0($t1)
    /* 44114 8009BEC4 C7A6006C */  lwc1       $f6, 0x6C($sp)
    /* 44118 8009BEC8 C7A80070 */  lwc1       $f8, 0x70($sp)
    /* 4411C 8009BECC 94470002 */  lhu        $a3, 0x2($v0)
    /* 44120 8009BED0 9446000A */  lhu        $a2, 0xA($v0)
    /* 44124 8009BED4 244A003C */  addiu      $t2, $v0, 0x3C
    /* 44128 8009BED8 AFAA0010 */  sw         $t2, 0x10($sp)
    /* 4412C 8009BEDC 944B0006 */  lhu        $t3, 0x6($v0)
    /* 44130 8009BEE0 C7AA0074 */  lwc1       $f10, 0x74($sp)
    /* 44134 8009BEE4 E7AE001C */  swc1       $f14, 0x1C($sp)
    /* 44138 8009BEE8 E7AC0018 */  swc1       $f12, 0x18($sp)
    /* 4413C 8009BEEC E7A40020 */  swc1       $f4, 0x20($sp)
    /* 44140 8009BEF0 E7A60024 */  swc1       $f6, 0x24($sp)
    /* 44144 8009BEF4 E7A80028 */  swc1       $f8, 0x28($sp)
    /* 44148 8009BEF8 AFAB0014 */  sw         $t3, 0x14($sp)
    /* 4414C 8009BEFC E7AA002C */  swc1       $f10, 0x2C($sp)
    /* 44150 8009BF00 C450002C */  lwc1       $f16, 0x2C($v0)
    /* 44154 8009BF04 3C0C800D */  lui        $t4, %hi(D_800D6A98)
    /* 44158 8009BF08 01836021 */  addu       $t4, $t4, $v1
    /* 4415C 8009BF0C E7B00030 */  swc1       $f16, 0x30($sp)
    /* 44160 8009BF10 C452000C */  lwc1       $f18, 0xC($v0)
    /* 44164 8009BF14 8D8C6A98 */  lw         $t4, %lo(D_800D6A98)($t4)
    /* 44168 8009BF18 00076880 */  sll        $t5, $a3, 2
    /* 4416C 8009BF1C E7B20034 */  swc1       $f18, 0x34($sp)
    /* 44170 8009BF20 C4440010 */  lwc1       $f4, 0x10($v0)
    /* 44174 8009BF24 018D7021 */  addu       $t6, $t4, $t5
    /* 44178 8009BF28 00002025 */  or         $a0, $zero, $zero
    /* 4417C 8009BF2C E7A40038 */  swc1       $f4, 0x38($sp)
    /* 44180 8009BF30 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 44184 8009BF34 8FA50058 */  lw         $a1, 0x58($sp)
    /* 44188 8009BF38 95F90016 */  lhu        $t9, 0x16($t7)
    /* 4418C 8009BF3C AFA00040 */  sw         $zero, 0x40($sp)
    /* 44190 8009BF40 0C026E9D */  jal        func_8009BA74
    /* 44194 8009BF44 AFB9003C */   sw        $t9, 0x3C($sp)
    /* 44198 8009BF48 10400007 */  beqz       $v0, .L8009BF68
    /* 4419C 8009BF4C 00402025 */   or        $a0, $v0, $zero
    /* 441A0 8009BF50 8FA60058 */  lw         $a2, 0x58($sp)
    /* 441A4 8009BF54 00002825 */  or         $a1, $zero, $zero
    /* 441A8 8009BF58 AFA20054 */  sw         $v0, 0x54($sp)
    /* 441AC 8009BF5C 0C027138 */  jal        func_8009C4E0
    /* 441B0 8009BF60 000630C3 */   sra       $a2, $a2, 3
    /* 441B4 8009BF64 8FA40054 */  lw         $a0, 0x54($sp)
  .L8009BF68:
    /* 441B8 8009BF68 00801025 */  or         $v0, $a0, $zero
  .L8009BF6C:
    /* 441BC 8009BF6C 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 441C0 8009BF70 27BD0058 */  addiu      $sp, $sp, 0x58
    /* 441C4 8009BF74 03E00008 */  jr         $ra
    /* 441C8 8009BF78 00000000 */   nop
endlabel func_8009BE54
.size func_8009BE54, . - func_8009BE54
