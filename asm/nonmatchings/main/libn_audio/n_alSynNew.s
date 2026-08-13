nonmatching n_alSynNew, 0x300

glabel n_alSynNew
    /* 2AA38 80029E38 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 2AA3C 80029E3C AFB20024 */  sw         $s2, 0x24($sp)
    /* 2AA40 80029E40 3C128004 */  lui        $s2, %hi(n_syn)
    /* 2AA44 80029E44 2652FB14 */  addiu      $s2, $s2, %lo(n_syn)
    /* 2AA48 80029E48 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 2AA4C 80029E4C AFBF0034 */  sw         $ra, 0x34($sp)
    /* 2AA50 80029E50 AFB50030 */  sw         $s5, 0x30($sp)
    /* 2AA54 80029E54 AFB4002C */  sw         $s4, 0x2C($sp)
    /* 2AA58 80029E58 AFB30028 */  sw         $s3, 0x28($sp)
    /* 2AA5C 80029E5C AFB10020 */  sw         $s1, 0x20($sp)
    /* 2AA60 80029E60 AFB0001C */  sw         $s0, 0x1C($sp)
    /* 2AA64 80029E64 8C950014 */  lw         $s5, 0x14($a0)
    /* 2AA68 80029E68 ADC00000 */  sw         $zero, 0x0($t6)
    /* 2AA6C 80029E6C 8E4F0000 */  lw         $t7, 0x0($s2)
    /* 2AA70 80029E70 240E00B8 */  addiu      $t6, $zero, 0xB8
    /* 2AA74 80029E74 0080A025 */  or         $s4, $a0, $zero
    /* 2AA78 80029E78 ADE00004 */  sw         $zero, 0x4($t7)
    /* 2AA7C 80029E7C 8E580000 */  lw         $t8, 0x0($s2)
    /* 2AA80 80029E80 00002825 */  or         $a1, $zero, $zero
    /* 2AA84 80029E84 24070001 */  addiu      $a3, $zero, 0x1
    /* 2AA88 80029E88 AF000008 */  sw         $zero, 0x8($t8)
    /* 2AA8C 80029E8C 8E590000 */  lw         $t9, 0x0($s2)
    /* 2AA90 80029E90 02A03025 */  or         $a2, $s5, $zero
    /* 2AA94 80029E94 AF20000C */  sw         $zero, 0xC($t9)
    /* 2AA98 80029E98 8E490000 */  lw         $t1, 0x0($s2)
    /* 2AA9C 80029E9C 8C880004 */  lw         $t0, 0x4($a0)
    /* 2AAA0 80029EA0 AD280044 */  sw         $t0, 0x44($t1)
    /* 2AAA4 80029EA4 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 2AAA8 80029EA8 24090001 */  addiu      $t1, $zero, 0x1
    /* 2AAAC 80029EAC AD40002C */  sw         $zero, 0x2C($t2)
    /* 2AAB0 80029EB0 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 2AAB4 80029EB4 AD600028 */  sw         $zero, 0x28($t3)
    /* 2AAB8 80029EB8 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 2AABC 80029EBC 8C8C0018 */  lw         $t4, 0x18($a0)
    /* 2AAC0 80029EC0 240B0044 */  addiu      $t3, $zero, 0x44
    /* 2AAC4 80029EC4 ADAC004C */  sw         $t4, 0x4C($t5)
    /* 2AAC8 80029EC8 8E4F0000 */  lw         $t7, 0x0($s2)
    /* 2AACC 80029ECC ADEE0050 */  sw         $t6, 0x50($t7)
    /* 2AAD0 80029ED0 8E590000 */  lw         $t9, 0x0($s2)
    /* 2AAD4 80029ED4 8C980010 */  lw         $t8, 0x10($a0)
    /* 2AAD8 80029ED8 00002025 */  or         $a0, $zero, $zero
    /* 2AADC 80029EDC AF380030 */  sw         $t8, 0x30($t9)
    /* 2AAE0 80029EE0 8E480000 */  lw         $t0, 0x0($s2)
    /* 2AAE4 80029EE4 AD000054 */  sw         $zero, 0x54($t0)
    /* 2AAE8 80029EE8 8E4A0000 */  lw         $t2, 0x0($s2)
    /* 2AAEC 80029EEC AD490058 */  sw         $t1, 0x58($t2)
    /* 2AAF0 80029EF0 0C0078F5 */  jal        alHeapDBAlloc
    /* 2AAF4 80029EF4 AFAB0010 */   sw        $t3, 0x10($sp)
    /* 2AAF8 80029EF8 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 2AAFC 80029EFC 24080004 */  addiu      $t0, $zero, 0x4
    /* 2AB00 80029F00 00002025 */  or         $a0, $zero, $zero
    /* 2AB04 80029F04 AD820040 */  sw         $v0, 0x40($t4)
    /* 2AB08 80029F08 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 2AB0C 80029F0C 00002825 */  or         $a1, $zero, $zero
    /* 2AB10 80029F10 02A03025 */  or         $a2, $s5, $zero
    /* 2AB14 80029F14 8DAE0040 */  lw         $t6, 0x40($t5)
    /* 2AB18 80029F18 ADC00014 */  sw         $zero, 0x14($t6)
    /* 2AB1C 80029F1C 8E580000 */  lw         $t8, 0x0($s2)
    /* 2AB20 80029F20 8E8F0004 */  lw         $t7, 0x4($s4)
    /* 2AB24 80029F24 8F190040 */  lw         $t9, 0x40($t8)
    /* 2AB28 80029F28 AF2F0018 */  sw         $t7, 0x18($t9)
    /* 2AB2C 80029F2C 8E870004 */  lw         $a3, 0x4($s4)
    /* 2AB30 80029F30 0C0078F5 */  jal        alHeapDBAlloc
    /* 2AB34 80029F34 AFA80010 */   sw        $t0, 0x10($sp)
    /* 2AB38 80029F38 8E490000 */  lw         $t1, 0x0($s2)
    /* 2AB3C 80029F3C 240B0014 */  addiu      $t3, $zero, 0x14
    /* 2AB40 80029F40 00002025 */  or         $a0, $zero, $zero
    /* 2AB44 80029F44 8D2A0040 */  lw         $t2, 0x40($t1)
    /* 2AB48 80029F48 00002825 */  or         $a1, $zero, $zero
    /* 2AB4C 80029F4C 02A03025 */  or         $a2, $s5, $zero
    /* 2AB50 80029F50 AD42001C */  sw         $v0, 0x1C($t2)
    /* 2AB54 80029F54 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2AB58 80029F58 0C0078F5 */  jal        alHeapDBAlloc
    /* 2AB5C 80029F5C 24070001 */   addiu     $a3, $zero, 0x1
    /* 2AB60 80029F60 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 2AB64 80029F64 00002025 */  or         $a0, $zero, $zero
    /* 2AB68 80029F68 02802825 */  or         $a1, $s4, $zero
    /* 2AB6C 80029F6C AD82003C */  sw         $v0, 0x3C($t4)
    /* 2AB70 80029F70 928D001C */  lbu        $t5, 0x1C($s4)
    /* 2AB74 80029F74 51A0000D */  beql       $t5, $zero, .L80029FAC
    /* 2AB78 80029F78 8E4A0000 */   lw        $t2, 0x0($s2)
    /* 2AB7C 80029F7C 0C00B448 */  jal        func_8002D120
    /* 2AB80 80029F80 02A03025 */   or        $a2, $s5, $zero
    /* 2AB84 80029F84 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 2AB88 80029F88 3C0F8003 */  lui        $t7, %hi(func_80028318)
    /* 2AB8C 80029F8C 25EF8318 */  addiu      $t7, $t7, %lo(func_80028318)
    /* 2AB90 80029F90 8DD80040 */  lw         $t8, 0x40($t6)
    /* 2AB94 80029F94 AF020020 */  sw         $v0, 0x20($t8)
    /* 2AB98 80029F98 8E590000 */  lw         $t9, 0x0($s2)
    /* 2AB9C 80029F9C 8F28003C */  lw         $t0, 0x3C($t9)
    /* 2ABA0 80029FA0 10000006 */  b          .L80029FBC
    /* 2ABA4 80029FA4 AD0F0004 */   sw        $t7, 0x4($t0)
    /* 2ABA8 80029FA8 8E4A0000 */  lw         $t2, 0x0($s2)
  .L80029FAC:
    /* 2ABAC 80029FAC 3C098002 */  lui        $t1, %hi(n_alAuxBusPull)
    /* 2ABB0 80029FB0 25297CB4 */  addiu      $t1, $t1, %lo(n_alAuxBusPull)
    /* 2ABB4 80029FB4 8D4B003C */  lw         $t3, 0x3C($t2)
    /* 2ABB8 80029FB8 AD690004 */  sw         $t1, 0x4($t3)
  .L80029FBC:
    /* 2ABBC 80029FBC 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 2ABC0 80029FC0 2408008C */  addiu      $t0, $zero, 0x8C
    /* 2ABC4 80029FC4 00002025 */  or         $a0, $zero, $zero
    /* 2ABC8 80029FC8 AD800010 */  sw         $zero, 0x10($t4)
    /* 2ABCC 80029FCC 8E4D0000 */  lw         $t5, 0x0($s2)
    /* 2ABD0 80029FD0 00002825 */  or         $a1, $zero, $zero
    /* 2ABD4 80029FD4 02A03025 */  or         $a2, $s5, $zero
    /* 2ABD8 80029FD8 ADA00014 */  sw         $zero, 0x14($t5)
    /* 2ABDC 80029FDC 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 2ABE0 80029FE0 ADC00020 */  sw         $zero, 0x20($t6)
    /* 2ABE4 80029FE4 8E580000 */  lw         $t8, 0x0($s2)
    /* 2ABE8 80029FE8 AF000024 */  sw         $zero, 0x24($t8)
    /* 2ABEC 80029FEC 8E590000 */  lw         $t9, 0x0($s2)
    /* 2ABF0 80029FF0 AF200018 */  sw         $zero, 0x18($t9)
    /* 2ABF4 80029FF4 8E4F0000 */  lw         $t7, 0x0($s2)
    /* 2ABF8 80029FF8 ADE0001C */  sw         $zero, 0x1C($t7)
    /* 2ABFC 80029FFC 8E870004 */  lw         $a3, 0x4($s4)
    /* 2AC00 8002A000 0C0078F5 */  jal        alHeapDBAlloc
    /* 2AC04 8002A004 AFA80010 */   sw        $t0, 0x10($sp)
    /* 2AC08 8002A008 8E8A0004 */  lw         $t2, 0x4($s4)
    /* 2AC0C 8002A00C 00008825 */  or         $s1, $zero, $zero
    /* 2AC10 8002A010 00408025 */  or         $s0, $v0, $zero
    /* 2AC14 8002A014 59400026 */  blezl      $t2, .L8002A0B0
    /* 2AC18 8002A018 8E870008 */   lw        $a3, 0x8($s4)
    /* 2AC1C 8002A01C 8E420000 */  lw         $v0, 0x0($s2)
  .L8002A020:
    /* 2AC20 8002A020 02009825 */  or         $s3, $s0, $zero
    /* 2AC24 8002A024 02002025 */  or         $a0, $s0, $zero
    /* 2AC28 8002A028 8C490010 */  lw         $t1, 0x10($v0)
    /* 2AC2C 8002A02C 24420010 */  addiu      $v0, $v0, 0x10
    /* 2AC30 8002A030 AE020004 */  sw         $v0, 0x4($s0)
    /* 2AC34 8002A034 AE090000 */  sw         $t1, 0x0($s0)
    /* 2AC38 8002A038 8C430000 */  lw         $v1, 0x0($v0)
    /* 2AC3C 8002A03C 50600003 */  beql       $v1, $zero, .L8002A04C
    /* 2AC40 8002A040 AC500000 */   sw        $s0, 0x0($v0)
    /* 2AC44 8002A044 AC700004 */  sw         $s0, 0x4($v1)
    /* 2AC48 8002A048 AC500000 */  sw         $s0, 0x0($v0)
  .L8002A04C:
    /* 2AC4C 8002A04C AE000008 */  sw         $zero, 0x8($s0)
    /* 2AC50 8002A050 8E4B0000 */  lw         $t3, 0x0($s2)
    /* 2AC54 8002A054 02A03025 */  or         $a2, $s5, $zero
    /* 2AC58 8002A058 0C00A744 */  jal        alN_PVoiceNew
    /* 2AC5C 8002A05C 8D650030 */   lw        $a1, 0x30($t3)
    /* 2AC60 8002A060 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 2AC64 8002A064 26310001 */  addiu      $s1, $s1, 0x1
    /* 2AC68 8002A068 2610008C */  addiu      $s0, $s0, 0x8C
    /* 2AC6C 8002A06C 8D820040 */  lw         $v0, 0x40($t4)
    /* 2AC70 8002A070 8C4E0014 */  lw         $t6, 0x14($v0)
    /* 2AC74 8002A074 8C4D001C */  lw         $t5, 0x1C($v0)
    /* 2AC78 8002A078 000EC080 */  sll        $t8, $t6, 2
    /* 2AC7C 8002A07C 01B8C821 */  addu       $t9, $t5, $t8
    /* 2AC80 8002A080 AF330000 */  sw         $s3, 0x0($t9)
    /* 2AC84 8002A084 8E4F0000 */  lw         $t7, 0x0($s2)
    /* 2AC88 8002A088 8DE20040 */  lw         $v0, 0x40($t7)
    /* 2AC8C 8002A08C 8C480014 */  lw         $t0, 0x14($v0)
    /* 2AC90 8002A090 250A0001 */  addiu      $t2, $t0, 0x1
    /* 2AC94 8002A094 AC4A0014 */  sw         $t2, 0x14($v0)
    /* 2AC98 8002A098 8E890004 */  lw         $t1, 0x4($s4)
    /* 2AC9C 8002A09C 0229082A */  slt        $at, $s1, $t1
    /* 2ACA0 8002A0A0 5420FFDF */  bnel       $at, $zero, .L8002A020
    /* 2ACA4 8002A0A4 8E420000 */   lw        $v0, 0x0($s2)
    /* 2ACA8 8002A0A8 00008825 */  or         $s1, $zero, $zero
    /* 2ACAC 8002A0AC 8E870008 */  lw         $a3, 0x8($s4)
  .L8002A0B0:
    /* 2ACB0 8002A0B0 240B0020 */  addiu      $t3, $zero, 0x20
    /* 2ACB4 8002A0B4 AFAB0010 */  sw         $t3, 0x10($sp)
    /* 2ACB8 8002A0B8 00002025 */  or         $a0, $zero, $zero
    /* 2ACBC 8002A0BC 00002825 */  or         $a1, $zero, $zero
    /* 2ACC0 8002A0C0 0C0078F5 */  jal        alHeapDBAlloc
    /* 2ACC4 8002A0C4 02A03025 */   or        $a2, $s5, $zero
    /* 2ACC8 8002A0C8 8E4C0000 */  lw         $t4, 0x0($s2)
    /* 2ACCC 8002A0CC 00401825 */  or         $v1, $v0, $zero
    /* 2ACD0 8002A0D0 AD800038 */  sw         $zero, 0x38($t4)
    /* 2ACD4 8002A0D4 8E8E0008 */  lw         $t6, 0x8($s4)
    /* 2ACD8 8002A0D8 59C0000D */  blezl      $t6, .L8002A110
    /* 2ACDC 8002A0DC 8E480000 */   lw        $t0, 0x0($s2)
    /* 2ACE0 8002A0E0 8E4D0000 */  lw         $t5, 0x0($s2)
  .L8002A0E4:
    /* 2ACE4 8002A0E4 26310001 */  addiu      $s1, $s1, 0x1
    /* 2ACE8 8002A0E8 8DB80038 */  lw         $t8, 0x38($t5)
    /* 2ACEC 8002A0EC AC780000 */  sw         $t8, 0x0($v1)
    /* 2ACF0 8002A0F0 8E590000 */  lw         $t9, 0x0($s2)
    /* 2ACF4 8002A0F4 AF230038 */  sw         $v1, 0x38($t9)
    /* 2ACF8 8002A0F8 8E8F0008 */  lw         $t7, 0x8($s4)
    /* 2ACFC 8002A0FC 24630020 */  addiu      $v1, $v1, 0x20
    /* 2AD00 8002A100 022F082A */  slt        $at, $s1, $t7
    /* 2AD04 8002A104 5420FFF7 */  bnel       $at, $zero, .L8002A0E4
    /* 2AD08 8002A108 8E4D0000 */   lw        $t5, 0x0($s2)
    /* 2AD0C 8002A10C 8E480000 */  lw         $t0, 0x0($s2)
  .L8002A110:
    /* 2AD10 8002A110 AD150034 */  sw         $s5, 0x34($t0)
    /* 2AD14 8002A114 8FBF0034 */  lw         $ra, 0x34($sp)
    /* 2AD18 8002A118 8FB50030 */  lw         $s5, 0x30($sp)
    /* 2AD1C 8002A11C 8FB4002C */  lw         $s4, 0x2C($sp)
    /* 2AD20 8002A120 8FB30028 */  lw         $s3, 0x28($sp)
    /* 2AD24 8002A124 8FB20024 */  lw         $s2, 0x24($sp)
    /* 2AD28 8002A128 8FB10020 */  lw         $s1, 0x20($sp)
    /* 2AD2C 8002A12C 8FB0001C */  lw         $s0, 0x1C($sp)
    /* 2AD30 8002A130 03E00008 */  jr         $ra
    /* 2AD34 8002A134 27BD0038 */   addiu     $sp, $sp, 0x38
endlabel n_alSynNew
.size n_alSynNew, . - n_alSynNew
