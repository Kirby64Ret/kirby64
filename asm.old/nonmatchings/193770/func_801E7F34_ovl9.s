glabel func_801E7F34_ovl9
/* 195F84 801E7F34 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 195F88 801E7F38 AFB20044 */  sw         $s2, 0x44($sp)
/* 195F8C 801E7F3C 3C128005 */  lui        $s2, %hi(D_8004A7C4)
/* 195F90 801E7F40 2652A7C4 */  addiu      $s2, $s2, %lo(D_8004A7C4)
/* 195F94 801E7F44 AFA40070 */  sw         $a0, 0x70($sp)
/* 195F98 801E7F48 8E440000 */  lw         $a0, 0x0($s2)
/* 195F9C 801E7F4C AFBF004C */  sw         $ra, 0x4C($sp)
/* 195FA0 801E7F50 AFB30048 */  sw         $s3, 0x48($sp)
/* 195FA4 801E7F54 AFB10040 */  sw         $s1, 0x40($sp)
/* 195FA8 801E7F58 AFB0003C */  sw         $s0, 0x3C($sp)
/* 195FAC 801E7F5C F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 195FB0 801E7F60 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 195FB4 801E7F64 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 195FB8 801E7F68 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 195FBC 801E7F6C F7B40010 */  sdc1       $f20, 0x10($sp)
/* 195FC0 801E7F70 8C8E0000 */  lw         $t6, 0x0($a0)
/* 195FC4 801E7F74 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 195FC8 801E7F78 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 195FCC 801E7F7C 000E7880 */  sll        $t7, $t6, 2
/* 195FD0 801E7F80 002F0821 */  addu       $at, $at, $t7
/* 195FD4 801E7F84 AC20DFD0 */  sw         $zero, %lo(D_800DDFD0)($at)
/* 195FD8 801E7F88 8C990000 */  lw         $t9, 0x0($a0)
/* 195FDC 801E7F8C 24421B50 */  addiu      $v0, $v0, %lo(D_800E1B50)
/* 195FE0 801E7F90 3C18801D */  lui        $t8, %hi(D_801C8880)
/* 195FE4 801E7F94 00194080 */  sll        $t0, $t9, 2
/* 195FE8 801E7F98 00484821 */  addu       $t1, $v0, $t0
/* 195FEC 801E7F9C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 195FF0 801E7FA0 27188880 */  addiu      $t8, $t8, %lo(D_801C8880)
.L801E7FA4_ovl10:
/* 195FF4 801E7FA4 3C0B801D */  lui        $t3, %hi(D_801CBBC0)
/* 195FF8 801E7FA8 AD58008C */  sw         $t8, 0x8C($t2)
/* 195FFC 801E7FAC 8E4C0000 */  lw         $t4, 0x0($s2)
/* 196000 801E7FB0 3C10800D */  lui        $s0, %hi(D_800D6B10)
/* 196004 801E7FB4 256BBBC0 */  addiu      $t3, $t3, %lo(D_801CBBC0)
.L801E7FB8_ovl10:
/* 196008 801E7FB8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 19600C 801E7FBC 26106B10 */  addiu      $s0, $s0, %lo(D_800D6B10)
/* 196010 801E7FC0 000D7080 */  sll        $t6, $t5, 2
/* 196014 801E7FC4 004E7821 */  addu       $t7, $v0, $t6
/* 196018 801E7FC8 8DF90000 */  lw         $t9, 0x0($t7)
/* 19601C 801E7FCC AF2B0098 */  sw         $t3, 0x98($t9)
/* 196020 801E7FD0 0C02BB30 */  jal        func_800AECC0
/* 196024 801E7FD4 C60C0000 */   lwc1      $f12, 0x0($s0)
/* 196028 801E7FD8 0C02BB48 */  jal        func_800AED20
/* 19602C 801E7FDC C60C0000 */   lwc1      $f12, 0x0($s0)
/* 196030 801E7FE0 0C02CCFD */  jal        func_800B33F4
/* 196034 801E7FE4 00000000 */   nop
/* 196038 801E7FE8 8E490000 */  lw         $t1, 0x0($s2)
/* 19603C 801E7FEC 3C01800F */  lui        $at, %hi(D_800E8920)
/* 196040 801E7FF0 24080001 */  addiu      $t0, $zero, 0x1
/* 196044 801E7FF4 8D380000 */  lw         $t8, 0x0($t1)
/* 196048 801E7FF8 3C040001 */  lui        $a0, (0x1021A >> 16)
.L801E7FFC_ovl10:
/* 19604C 801E7FFC 3484021A */  ori        $a0, $a0, (0x1021A & 0xFFFF)
/* 196050 801E8000 00185080 */  sll        $t2, $t8, 2
/* 196054 801E8004 002A0821 */  addu       $at, $at, $t2
glabel func_801E8008_ovl10
/* 196058 801E8008 0C02A806 */  jal        func_800AA018
/* 19605C 801E800C AC288920 */   sw        $t0, %lo(D_800E8920)($at)
/* 196060 801E8010 3C040001 */  lui        $a0, (0x10219 >> 16)
/* 196064 801E8014 0C02A806 */  jal        func_800AA018
/* 196068 801E8018 34840219 */   ori       $a0, $a0, (0x10219 & 0xFFFF)
/* 19606C 801E801C 0C066A40 */  jal        func_8019A900_ovl7
/* 196070 801E8020 27A40068 */   addiu     $a0, $sp, 0x68
/* 196074 801E8024 10400004 */  beqz       $v0, .L801E8038_ovl9
/* 196078 801E8028 8FAC0068 */   lw        $t4, 0x68($sp)
/* 19607C 801E802C 448C2000 */  mtc1       $t4, $f4
/* 196080 801E8030 10000004 */  b          .L801E8044_ovl9
/* 196084 801E8034 46802520 */   cvt.s.w   $f20, $f4
.L801E8038_ovl9:
/* 196088 801E8038 0C066D82 */  jal        func_8019B608_ovl7
/* 19608C 801E803C 00002025 */   or        $a0, $zero, $zero
/* 196090 801E8040 46000506 */  mov.s      $f20, $f0
.L801E8044_ovl9:
/* 196094 801E8044 0C006291 */  jal        random_soft_s32_range
/* 196098 801E8048 2404000C */   addiu     $a0, $zero, 0xC
/* 19609C 801E804C 8E440000 */  lw         $a0, 0x0($s2)
glabel func_801E8050_ovl10
/* 1960A0 801E8050 3C13800F */  lui        $s3, %hi(D_800E98E0)
/* 1960A4 801E8054 267398E0 */  addiu      $s3, $s3, %lo(D_800E98E0)
/* 1960A8 801E8058 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1960AC 801E805C 000D7080 */  sll        $t6, $t5, 2
/* 1960B0 801E8060 026E1821 */  addu       $v1, $s3, $t6
/* 1960B4 801E8064 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1960B8 801E8068 544F000B */  bnel       $v0, $t7, .L801E8098_ovl9
/* 1960BC 801E806C AC620000 */   sw        $v0, 0x0($v1)
.L801E8070_ovl9:
/* 1960C0 801E8070 0C006291 */  jal        random_soft_s32_range
/* 1960C4 801E8074 2404000C */   addiu     $a0, $zero, 0xC
/* 1960C8 801E8078 8E440000 */  lw         $a0, 0x0($s2)
/* 1960CC 801E807C 8C8B0000 */  lw         $t3, 0x0($a0)
/* 1960D0 801E8080 000BC880 */  sll        $t9, $t3, 2
/* 1960D4 801E8084 02791821 */  addu       $v1, $s3, $t9
/* 1960D8 801E8088 8C690000 */  lw         $t1, 0x0($v1)
/* 1960DC 801E808C 1049FFF8 */  beq        $v0, $t1, .L801E8070_ovl9
/* 1960E0 801E8090 00000000 */   nop
/* 1960E4 801E8094 AC620000 */  sw         $v0, 0x0($v1)
.L801E8098_ovl9:
/* 1960E8 801E8098 8C980000 */  lw         $t8, 0x0($a0)
/* 1960EC 801E809C 3C01800F */  lui        $at, %hi(D_800E9C60)
.L801E80A0_ovl16:
/* 1960F0 801E80A0 3C11800E */  lui        $s1, %hi(D_800E6A10)
/* 1960F4 801E80A4 00184080 */  sll        $t0, $t8, 2
/* 1960F8 801E80A8 00280821 */  addu       $at, $at, $t0
/* 1960FC 801E80AC AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
/* 196100 801E80B0 8C850000 */  lw         $a1, 0x0($a0)
/* 196104 801E80B4 3C02800F */  lui        $v0, %hi(D_800E9FE0)
/* 196108 801E80B8 26316A10 */  addiu      $s1, $s1, %lo(D_800E6A10)
/* 19610C 801E80BC 00052880 */  sll        $a1, $a1, 2
/* 196110 801E80C0 02655021 */  addu       $t2, $s3, $a1
/* 196114 801E80C4 8D4C0000 */  lw         $t4, 0x0($t2)
/* 196118 801E80C8 24429FE0 */  addiu      $v0, $v0, %lo(D_800E9FE0)
/* 19611C 801E80CC 00455821 */  addu       $t3, $v0, $a1
/* 196120 801E80D0 29810009 */  slti       $at, $t4, 0x9
/* 196124 801E80D4 14200002 */  bnez       $at, .L801E80E0_ovl9
/* 196128 801E80D8 02256821 */   addu      $t5, $s1, $a1
.L801E80DC_ovl16:
/* 19612C 801E80DC 4600A507 */  neg.s      $f20, $f20
.L801E80E0_ovl9:
/* 196130 801E80E0 C5A60000 */  lwc1       $f6, 0x0($t5)
/* 196134 801E80E4 240E0001 */  addiu      $t6, $zero, 0x1
/* 196138 801E80E8 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 19613C 801E80EC 4606A032 */  c.eq.s     $f20, $f6
/* 196140 801E80F0 00000000 */  nop
/* 196144 801E80F4 45030007 */  bc1tl      .L801E8114_ovl16
/* 196148 801E80F8 AD600000 */   sw        $zero, 0x0($t3)
/* 19614C 801E80FC 3C02800F */  lui        $v0, %hi(D_800E9FE0)
/* 196150 801E8100 24429FE0 */  addiu      $v0, $v0, %lo(D_800E9FE0)
/* 196154 801E8104 00457821 */  addu       $t7, $v0, $a1
/* 196158 801E8108 10000002 */  b          .L801E8114_ovl16
/* 19615C 801E810C ADEE0000 */   sw        $t6, 0x0($t7)
/* 196160 801E8110 AD600000 */  sw         $zero, 0x0($t3)
.L801E8114_ovl16:
/* 196164 801E8114 8C990000 */  lw         $t9, 0x0($a0)
/* 196168 801E8118 00194880 */  sll        $t1, $t9, 2
/* 19616C 801E811C 0229C021 */  addu       $t8, $s1, $t1
/* 196170 801E8120 E7140000 */  swc1       $f20, 0x0($t8)
/* 196174 801E8124 8C850000 */  lw         $a1, 0x0($a0)
/* 196178 801E8128 00052880 */  sll        $a1, $a1, 2
/* 19617C 801E812C 00454021 */  addu       $t0, $v0, $a1
/* 196180 801E8130 8D0A0000 */  lw         $t2, 0x0($t0)
/* 196184 801E8134 11400027 */  beqz       $t2, .L801E81D4_ovl9
/* 196188 801E8138 00000000 */   nop
/* 19618C 801E813C 4481A000 */  mtc1       $at, $f20
/* 196190 801E8140 4480B000 */  mtc1       $zero, $f22
/* 196194 801E8144 3C10800E */  lui        $s0, %hi(D_800E4C50)
/* 196198 801E8148 26104C50 */  addiu      $s0, $s0, %lo(D_800E4C50)
/* 19619C 801E814C 4614B03E */  c.le.s     $f22, $f20
/* 1961A0 801E8150 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1961A4 801E8154 45020026 */  bc1fl      .L801E81F0_ovl9
/* 1961A8 801E8158 02657821 */   addu      $t7, $s3, $a1
.L801E815C_ovl16:
/* 1961AC 801E815C 4481E000 */  mtc1       $at, $f28
/* 1961B0 801E8160 3C018022 */  lui        $at, %hi(D_8021D07C_ovl9)
/* 1961B4 801E8164 C43AD07C */  lwc1       $f26, %lo(D_8021D07C_ovl9)($at)
/* 1961B8 801E8168 3C018022 */  lui        $at, %hi(D_8021D080_ovl9)
/* 1961BC 801E816C C438D080 */  lwc1       $f24, %lo(D_8021D080_ovl9)($at)
.L801E8170_ovl16:
/* 1961C0 801E8170 8E4C0000 */  lw         $t4, 0x0($s2)
.L801E8174_ovl9:
/* 1961C4 801E8174 24040001 */  addiu      $a0, $zero, 0x1
/* 1961C8 801E8178 8D850000 */  lw         $a1, 0x0($t4)
/* 1961CC 801E817C 00052880 */  sll        $a1, $a1, 2
/* 1961D0 801E8180 02256821 */  addu       $t5, $s1, $a1
glabel func_801E8184_ovl10
/* 1961D4 801E8184 C5A00000 */  lwc1       $f0, 0x0($t5)
/* 1961D8 801E8188 02057021 */  addu       $t6, $s0, $a1
/* 1961DC 801E818C 46180202 */  mul.s      $f8, $f0, $f24
/* 1961E0 801E8190 00000000 */  nop
/* 1961E4 801E8194 46144282 */  mul.s      $f10, $f8, $f20
/* 1961E8 801E8198 00000000 */  nop
/* 1961EC 801E819C 4600D402 */  mul.s      $f16, $f26, $f0
/* 1961F0 801E81A0 46105480 */  add.s      $f18, $f10, $f16
/* 1961F4 801E81A4 0C002DAF */  jal        finish_current_thread
/* 1961F8 801E81A8 E5D20000 */   swc1      $f18, 0x0($t6)
/* 1961FC 801E81AC 461CA501 */  sub.s      $f20, $f20, $f28
/* 196200 801E81B0 4614B03E */  c.le.s     $f22, $f20
/* 196204 801E81B4 00000000 */  nop
/* 196208 801E81B8 4503FFEE */  bc1tl      .L801E8174_ovl9
/* 19620C 801E81BC 8E4C0000 */   lw        $t4, 0x0($s2)
/* 196210 801E81C0 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 196214 801E81C4 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 196218 801E81C8 8C850000 */  lw         $a1, 0x0($a0)
/* 19621C 801E81CC 10000007 */  b          .L801E81EC_ovl9
.L801E81D0_ovl10:
/* 196220 801E81D0 00052880 */   sll       $a1, $a1, 2
.L801E81D4_ovl9:
/* 196224 801E81D4 0C002DAF */  jal        finish_current_thread
/* 196228 801E81D8 24040004 */   addiu     $a0, $zero, 0x4
/* 19622C 801E81DC 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 196230 801E81E0 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 196234 801E81E4 8C850000 */  lw         $a1, 0x0($a0)
/* 196238 801E81E8 00052880 */  sll        $a1, $a1, 2
.L801E81EC_ovl9:
/* 19623C 801E81EC 02657821 */  addu       $t7, $s3, $a1
.L801E81F0_ovl9:
/* 196240 801E81F0 8DEB0000 */  lw         $t3, 0x0($t7)
/* 196244 801E81F4 3C018022 */  lui        $at, %hi(D_8021BF6C_ovl9)
/* 196248 801E81F8 02254821 */  addu       $t1, $s1, $a1
/* 19624C 801E81FC 000BC880 */  sll        $t9, $t3, 2
.L801E8200_ovl10:
/* 196250 801E8200 00390821 */  addu       $at, $at, $t9
/* 196254 801E8204 C424BF6C */  lwc1       $f4, %lo(D_8021BF6C_ovl9)($at)
/* 196258 801E8208 C5260000 */  lwc1       $f6, 0x0($t1)
glabel func_801E820C_ovl16
/* 19625C 801E820C 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 196260 801E8210 00250821 */  addu       $at, $at, $a1
/* 196264 801E8214 46062202 */  mul.s      $f8, $f4, $f6
/* 196268 801E8218 8FBF004C */  lw         $ra, 0x4C($sp)
/* 19626C 801E821C 240C0002 */  addiu      $t4, $zero, 0x2
/* 196270 801E8220 8FB10040 */  lw         $s1, 0x40($sp)
/* 196274 801E8224 D7B40010 */  ldc1       $f20, 0x10($sp)
.L801E8228_ovl10:
/* 196278 801E8228 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 19627C 801E822C D7B80020 */  ldc1       $f24, 0x20($sp)
/* 196280 801E8230 E42864D0 */  swc1       $f8, %lo(D_800E64D0)($at)
glabel func_801E8234_ovl10
/* 196284 801E8234 8C850000 */  lw         $a1, 0x0($a0)
/* 196288 801E8238 3C018022 */  lui        $at, %hi(D_8021BF9C_ovl9)
/* 19628C 801E823C D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 196290 801E8240 00052880 */  sll        $a1, $a1, 2
/* 196294 801E8244 0265C021 */  addu       $t8, $s3, $a1
/* 196298 801E8248 8F080000 */  lw         $t0, 0x0($t8)
/* 19629C 801E824C 8FB30048 */  lw         $s3, 0x48($sp)
/* 1962A0 801E8250 D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 1962A4 801E8254 00085080 */  sll        $t2, $t0, 2
/* 1962A8 801E8258 002A0821 */  addu       $at, $at, $t2
/* 1962AC 801E825C C42ABF9C */  lwc1       $f10, %lo(D_8021BF9C_ovl9)($at)
/* 1962B0 801E8260 3C01800E */  lui        $at, %hi(D_800E3210)
/* 1962B4 801E8264 00250821 */  addu       $at, $at, $a1
/* 1962B8 801E8268 E42A3210 */  swc1       $f10, %lo(D_800E3210)($at)
/* 1962BC 801E826C 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1962C0 801E8270 3C01800E */  lui        $at, %hi(gEntityVtableIndexArray)
/* 1962C4 801E8274 8FB0003C */  lw         $s0, 0x3C($sp)
/* 1962C8 801E8278 000D7080 */  sll        $t6, $t5, 2
/* 1962CC 801E827C 002E0821 */  addu       $at, $at, $t6
/* 1962D0 801E8280 8FB20044 */  lw         $s2, 0x44($sp)
/* 1962D4 801E8284 AC2CDC50 */  sw         $t4, %lo(gEntityVtableIndexArray)($at)
/* 1962D8 801E8288 03E00008 */  jr         $ra
/* 1962DC 801E828C 27BD0070 */   addiu     $sp, $sp, 0x70
