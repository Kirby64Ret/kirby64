nonmatching func_8019A9AC_ovl7, 0x124

glabel func_8019A9AC_ovl7
    /* 140A1C 8019A9AC 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 140A20 8019A9B0 E7AC0038 */  swc1       $f12, 0x38($sp)
    /* 140A24 8019A9B4 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* 140A28 8019A9B8 44818000 */  mtc1       $at, $f16
    /* 140A2C 8019A9BC C7A40038 */  lwc1       $f4, 0x38($sp)
    /* 140A30 8019A9C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 140A34 8019A9C4 00001825 */  or         $v1, $zero, $zero
    /* 140A38 8019A9C8 46102032 */  c.eq.s     $f4, $f16
    /* 140A3C 8019A9CC 3C02800E */  lui        $v0, %hi(gEntitiesNextPosYArray)
    /* 140A40 8019A9D0 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 140A44 8019A9D4 C7AA0038 */  lwc1       $f10, 0x38($sp)
    /* 140A48 8019A9D8 4501001B */  bc1t       .L8019AA48_ovl7
    /* 140A4C 8019A9DC 27A40030 */   addiu     $a0, $sp, 0x30
    /* 140A50 8019A9E0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 140A54 8019A9E4 24422790 */  addiu      $v0, $v0, %lo(gEntitiesNextPosYArray)
    /* 140A58 8019A9E8 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* 140A5C 8019A9EC 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 140A60 8019A9F0 44814000 */  mtc1       $at, $f8
    /* 140A64 8019A9F4 C4460000 */  lwc1       $f6, 0x0($v0)
    /* 140A68 8019A9F8 000FC080 */  sll        $t8, $t7, 2
    /* 140A6C 8019A9FC 0058C821 */  addu       $t9, $v0, $t8
    /* 140A70 8019AA00 46083000 */  add.s      $f0, $f6, $f8
    /* 140A74 8019AA04 C7220000 */  lwc1       $f2, 0x0($t9)
    /* 140A78 8019AA08 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 140A7C 8019AA0C 44819000 */  mtc1       $at, $f18
    /* 140A80 8019AA10 4602003C */  c.lt.s     $f0, $f2
    /* 140A84 8019AA14 46125102 */  mul.s      $f4, $f10, $f18
    /* 140A88 8019AA18 45020005 */  bc1fl      .L8019AA30_ovl7
    /* 140A8C 8019AA1C 46020301 */   sub.s     $f12, $f0, $f2
    /* 140A90 8019AA20 46020301 */  sub.s      $f12, $f0, $f2
    /* 140A94 8019AA24 10000002 */  b          .L8019AA30_ovl7
    /* 140A98 8019AA28 46006307 */   neg.s     $f12, $f12
    /* 140A9C 8019AA2C 46020301 */  sub.s      $f12, $f0, $f2
  .L8019AA30_ovl7:
    /* 140AA0 8019AA30 4604603E */  c.le.s     $f12, $f4
    /* 140AA4 8019AA34 00000000 */  nop
    /* 140AA8 8019AA38 45020005 */  bc1fl      .L8019AA50_ovl7
    /* 140AAC 8019AA3C 46107032 */   c.eq.s    $f14, $f16
    /* 140AB0 8019AA40 10000002 */  b          .L8019AA4C_ovl7
    /* 140AB4 8019AA44 24030001 */   addiu     $v1, $zero, 0x1
  .L8019AA48_ovl7:
    /* 140AB8 8019AA48 24030001 */  addiu      $v1, $zero, 0x1
  .L8019AA4C_ovl7:
    /* 140ABC 8019AA4C 46107032 */  c.eq.s     $f14, $f16
  .L8019AA50_ovl7:
    /* 140AC0 8019AA50 00000000 */  nop
    /* 140AC4 8019AA54 45030019 */  bc1tl      .L8019AABC_ovl7
    /* 140AC8 8019AA58 34630002 */   ori       $v1, $v1, 0x2
    /* 140ACC 8019AA5C AFA30028 */  sw         $v1, 0x28($sp)
    /* 140AD0 8019AA60 0C066A40 */  jal        func_8019A900_ovl7
    /* 140AD4 8019AA64 E7AE003C */   swc1      $f14, 0x3C($sp)
    /* 140AD8 8019AA68 8FA30028 */  lw         $v1, 0x28($sp)
    /* 140ADC 8019AA6C 10400013 */  beqz       $v0, .L8019AABC_ovl7
    /* 140AE0 8019AA70 C7AE003C */   lwc1      $f14, 0x3C($sp)
    /* 140AE4 8019AA74 C7A20034 */  lwc1       $f2, 0x34($sp)
    /* 140AE8 8019AA78 44803000 */  mtc1       $zero, $f6
    /* 140AEC 8019AA7C 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* 140AF0 8019AA80 44814000 */  mtc1       $at, $f8
    /* 140AF4 8019AA84 4606103C */  c.lt.s     $f2, $f6
    /* 140AF8 8019AA88 46087282 */  mul.s      $f10, $f14, $f8
    /* 140AFC 8019AA8C 45020004 */  bc1fl      .L8019AAA0_ovl7
    /* 140B00 8019AA90 46001006 */   mov.s     $f0, $f2
    /* 140B04 8019AA94 10000002 */  b          .L8019AAA0_ovl7
    /* 140B08 8019AA98 46001007 */   neg.s     $f0, $f2
    /* 140B0C 8019AA9C 46001006 */  mov.s      $f0, $f2
  .L8019AAA0_ovl7:
    /* 140B10 8019AAA0 460A003E */  c.le.s     $f0, $f10
    /* 140B14 8019AAA4 00000000 */  nop
    /* 140B18 8019AAA8 45020005 */  bc1fl      .L8019AAC0_ovl7
    /* 140B1C 8019AAAC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 140B20 8019AAB0 10000002 */  b          .L8019AABC_ovl7
    /* 140B24 8019AAB4 34630002 */   ori       $v1, $v1, 0x2
    /* 140B28 8019AAB8 34630002 */  ori        $v1, $v1, 0x2
  .L8019AABC_ovl7:
    /* 140B2C 8019AABC 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8019AAC0_ovl7:
    /* 140B30 8019AAC0 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 140B34 8019AAC4 00601025 */  or         $v0, $v1, $zero
    /* 140B38 8019AAC8 03E00008 */  jr         $ra
    /* 140B3C 8019AACC 00000000 */   nop
endlabel func_8019A9AC_ovl7
.size func_8019A9AC_ovl7, . - func_8019A9AC_ovl7
