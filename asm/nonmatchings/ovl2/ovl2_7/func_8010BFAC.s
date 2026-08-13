nonmatching func_8010BFAC, 0x1D8

glabel func_8010BFAC
    /* 94A1C 8010BFAC 3C028013 */  lui        $v0, %hi(D_8012BD00)
    /* 94A20 8010BFB0 2442BD00 */  addiu      $v0, $v0, %lo(D_8012BD00)
    /* 94A24 8010BFB4 904F0000 */  lbu        $t7, 0x0($v0)
    /* 94A28 8010BFB8 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 94A2C 8010BFBC AFB00014 */  sw         $s0, 0x14($sp)
    /* 94A30 8010BFC0 35F80080 */  ori        $t8, $t7, 0x80
    /* 94A34 8010BFC4 AFBF001C */  sw         $ra, 0x1C($sp)
    /* 94A38 8010BFC8 AFB10018 */  sw         $s1, 0x18($sp)
    /* 94A3C 8010BFCC A0580000 */  sb         $t8, 0x0($v0)
    /* 94A40 8010BFD0 8C990058 */  lw         $t9, 0x58($a0)
    /* 94A44 8010BFD4 3C108013 */  lui        $s0, %hi(D_8012BCA0)
    /* 94A48 8010BFD8 2610BCA0 */  addiu      $s0, $s0, %lo(D_8012BCA0)
    /* 94A4C 8010BFDC 00808825 */  or         $s1, $a0, $zero
    /* 94A50 8010BFE0 02002025 */  or         $a0, $s0, $zero
    /* 94A54 8010BFE4 0C041486 */  jal        func_80105218
    /* 94A58 8010BFE8 AC590044 */   sw        $t9, 0x44($v0)
    /* 94A5C 8010BFEC 0C0413EE */  jal        func_80104FB8
    /* 94A60 8010BFF0 02202025 */   or        $a0, $s1, $zero
    /* 94A64 8010BFF4 02202025 */  or         $a0, $s1, $zero
    /* 94A68 8010BFF8 0C0414A1 */  jal        func_80105284
    /* 94A6C 8010BFFC 02002825 */   or        $a1, $s0, $zero
    /* 94A70 8010C000 10400003 */  beqz       $v0, .L8010C010
    /* 94A74 8010C004 02202025 */   or        $a0, $s1, $zero
    /* 94A78 8010C008 0C0427EB */  jal        func_80109FAC
    /* 94A7C 8010C00C 02002825 */   or        $a1, $s0, $zero
  .L8010C010:
    /* 94A80 8010C010 02202025 */  or         $a0, $s1, $zero
    /* 94A84 8010C014 0C0418FC */  jal        func_801063F0
    /* 94A88 8010C018 02002825 */   or        $a1, $s0, $zero
    /* 94A8C 8010C01C 10400003 */  beqz       $v0, .L8010C02C
    /* 94A90 8010C020 02202025 */   or        $a0, $s1, $zero
    /* 94A94 8010C024 0C04284E */  jal        func_8010A138
    /* 94A98 8010C028 02002825 */   or        $a1, $s0, $zero
  .L8010C02C:
    /* 94A9C 8010C02C 02202025 */  or         $a0, $s1, $zero
    /* 94AA0 8010C030 0C0419A7 */  jal        func_8010669C
    /* 94AA4 8010C034 02002825 */   or        $a1, $s0, $zero
    /* 94AA8 8010C038 10400003 */  beqz       $v0, .L8010C048
    /* 94AAC 8010C03C 02202025 */   or        $a0, $s1, $zero
    /* 94AB0 8010C040 0C041A4C */  jal        func_80106930
    /* 94AB4 8010C044 02002825 */   or        $a1, $s0, $zero
  .L8010C048:
    /* 94AB8 8010C048 02202025 */  or         $a0, $s1, $zero
    /* 94ABC 8010C04C 0C04154C */  jal        func_80105530
    /* 94AC0 8010C050 02002825 */   or        $a1, $s0, $zero
    /* 94AC4 8010C054 10400003 */  beqz       $v0, .L8010C064
    /* 94AC8 8010C058 02202025 */   or        $a0, $s1, $zero
    /* 94ACC 8010C05C 0C0427EB */  jal        func_80109FAC
    /* 94AD0 8010C060 02002825 */   or        $a1, $s0, $zero
  .L8010C064:
    /* 94AD4 8010C064 8E030000 */  lw         $v1, 0x0($s0)
    /* 94AD8 8010C068 00031CC2 */  srl        $v1, $v1, 19
    /* 94ADC 8010C06C 10600015 */  beqz       $v1, .L8010C0C4
    /* 94AE0 8010C070 30680007 */   andi      $t0, $v1, 0x7
    /* 94AE4 8010C074 11000009 */  beqz       $t0, .L8010C09C
    /* 94AE8 8010C078 3C098013 */   lui       $t1, %hi(D_8012BCBC)
    /* 94AEC 8010C07C 8D29BCBC */  lw         $t1, %lo(D_8012BCBC)($t1)
    /* 94AF0 8010C080 24010014 */  addiu      $at, $zero, 0x14
    /* 94AF4 8010C084 02202025 */  or         $a0, $s1, $zero
    /* 94AF8 8010C088 11210004 */  beq        $t1, $at, .L8010C09C
    /* 94AFC 8010C08C 02002825 */   or        $a1, $s0, $zero
    /* 94B00 8010C090 0C0418FC */  jal        func_801063F0
    /* 94B04 8010C094 AFA30020 */   sw        $v1, 0x20($sp)
    /* 94B08 8010C098 8FA30020 */  lw         $v1, 0x20($sp)
  .L8010C09C:
    /* 94B0C 8010C09C 306A0038 */  andi       $t2, $v1, 0x38
    /* 94B10 8010C0A0 11400008 */  beqz       $t2, .L8010C0C4
    /* 94B14 8010C0A4 3C0B8013 */   lui       $t3, %hi(D_8012BCC8)
    /* 94B18 8010C0A8 8D6BBCC8 */  lw         $t3, %lo(D_8012BCC8)($t3)
    /* 94B1C 8010C0AC 24010014 */  addiu      $at, $zero, 0x14
    /* 94B20 8010C0B0 02202025 */  or         $a0, $s1, $zero
    /* 94B24 8010C0B4 51610004 */  beql       $t3, $at, .L8010C0C8
    /* 94B28 8010C0B8 8E020000 */   lw        $v0, 0x0($s0)
    /* 94B2C 8010C0BC 0C0414A1 */  jal        func_80105284
    /* 94B30 8010C0C0 02002825 */   or        $a1, $s0, $zero
  .L8010C0C4:
    /* 94B34 8010C0C4 8E020000 */  lw         $v0, 0x0($s0)
  .L8010C0C8:
    /* 94B38 8010C0C8 3C038013 */  lui        $v1, %hi(D_8012BD00)
    /* 94B3C 8010C0CC 3C0D8013 */  lui        $t5, %hi(D_8012BCC0)
    /* 94B40 8010C0D0 000214C2 */  srl        $v0, $v0, 19
    /* 94B44 8010C0D4 304C0007 */  andi       $t4, $v0, 0x7
    /* 94B48 8010C0D8 1180000E */  beqz       $t4, .L8010C114
    /* 94B4C 8010C0DC 2463BD00 */   addiu     $v1, $v1, %lo(D_8012BD00)
    /* 94B50 8010C0E0 8DADBCC0 */  lw         $t5, %lo(D_8012BCC0)($t5)
    /* 94B54 8010C0E4 95AE0008 */  lhu        $t6, 0x8($t5)
    /* 94B58 8010C0E8 31CF0004 */  andi       $t7, $t6, 0x4
    /* 94B5C 8010C0EC 51E0000A */  beql       $t7, $zero, .L8010C118
    /* 94B60 8010C0F0 304C0038 */   andi      $t4, $v0, 0x38
    /* 94B64 8010C0F4 96090000 */  lhu        $t1, 0x0($s0)
    /* 94B68 8010C0F8 3058FFF8 */  andi       $t8, $v0, 0xFFF8
    /* 94B6C 8010C0FC 001840C0 */  sll        $t0, $t8, 3
    /* 94B70 8010C100 312A0007 */  andi       $t2, $t1, 0x7
    /* 94B74 8010C104 010A5825 */  or         $t3, $t0, $t2
    /* 94B78 8010C108 A60B0000 */  sh         $t3, 0x0($s0)
    /* 94B7C 8010C10C 8E020000 */  lw         $v0, 0x0($s0)
    /* 94B80 8010C110 000214C2 */  srl        $v0, $v0, 19
  .L8010C114:
    /* 94B84 8010C114 304C0038 */  andi       $t4, $v0, 0x38
  .L8010C118:
    /* 94B88 8010C118 1180000F */  beqz       $t4, .L8010C158
    /* 94B8C 8010C11C 3C0D8013 */   lui       $t5, %hi(D_8012BCCC)
    /* 94B90 8010C120 8DADBCCC */  lw         $t5, %lo(D_8012BCCC)($t5)
    /* 94B94 8010C124 3C188013 */  lui        $t8, %hi(D_8012BCA0)
    /* 94B98 8010C128 95AE0008 */  lhu        $t6, 0x8($t5)
    /* 94B9C 8010C12C 31CF0004 */  andi       $t7, $t6, 0x4
    /* 94BA0 8010C130 51E0000A */  beql       $t7, $zero, .L8010C15C
    /* 94BA4 8010C134 906E0000 */   lbu       $t6, 0x0($v1)
    /* 94BA8 8010C138 8F18BCA0 */  lw         $t8, %lo(D_8012BCA0)($t8)
    /* 94BAC 8010C13C 960B0000 */  lhu        $t3, 0x0($s0)
    /* 94BB0 8010C140 0018CCC2 */  srl        $t9, $t8, 19
    /* 94BB4 8010C144 3329FFC7 */  andi       $t1, $t9, 0xFFC7
    /* 94BB8 8010C148 000950C0 */  sll        $t2, $t1, 3
    /* 94BBC 8010C14C 316C0007 */  andi       $t4, $t3, 0x7
    /* 94BC0 8010C150 014C6825 */  or         $t5, $t2, $t4
    /* 94BC4 8010C154 A60D0000 */  sh         $t5, 0x0($s0)
  .L8010C158:
    /* 94BC8 8010C158 906E0000 */  lbu        $t6, 0x0($v1)
  .L8010C15C:
    /* 94BCC 8010C15C 8C780040 */  lw         $t8, 0x40($v1)
    /* 94BD0 8010C160 00001025 */  or         $v0, $zero, $zero
    /* 94BD4 8010C164 31CFFF7F */  andi       $t7, $t6, 0xFF7F
    /* 94BD8 8010C168 A06F0000 */  sb         $t7, 0x0($v1)
    /* 94BDC 8010C16C AE380058 */  sw         $t8, 0x58($s1)
    /* 94BE0 8010C170 8FBF001C */  lw         $ra, 0x1C($sp)
    /* 94BE4 8010C174 8FB10018 */  lw         $s1, 0x18($sp)
    /* 94BE8 8010C178 8FB00014 */  lw         $s0, 0x14($sp)
    /* 94BEC 8010C17C 03E00008 */  jr         $ra
    /* 94BF0 8010C180 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8010BFAC
.size func_8010BFAC, . - func_8010BFAC
