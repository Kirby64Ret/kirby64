nonmatching func_8010BBD4, 0x138

glabel func_8010BBD4
    /* 94644 8010BBD4 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 94648 8010BBD8 AFB20020 */  sw         $s2, 0x20($sp)
    /* 9464C 8010BBDC 3C128013 */  lui        $s2, %hi(D_8012BD00)
    /* 94650 8010BBE0 2652BD00 */  addiu      $s2, $s2, %lo(D_8012BD00)
    /* 94654 8010BBE4 924F0000 */  lbu        $t7, 0x0($s2)
    /* 94658 8010BBE8 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 9465C 8010BBEC AFBF0024 */  sw         $ra, 0x24($sp)
    /* 94660 8010BBF0 35F80080 */  ori        $t8, $t7, 0x80
    /* 94664 8010BBF4 AFB00018 */  sw         $s0, 0x18($sp)
    /* 94668 8010BBF8 A2580000 */  sb         $t8, 0x0($s2)
    /* 9466C 8010BBFC 8C990058 */  lw         $t9, 0x58($a0)
    /* 94670 8010BC00 3C118013 */  lui        $s1, %hi(D_8012BCA0)
    /* 94674 8010BC04 2631BCA0 */  addiu      $s1, $s1, %lo(D_8012BCA0)
    /* 94678 8010BC08 00808025 */  or         $s0, $a0, $zero
    /* 9467C 8010BC0C 02202025 */  or         $a0, $s1, $zero
    /* 94680 8010BC10 0C041486 */  jal        func_80105218
    /* 94684 8010BC14 AE590044 */   sw        $t9, 0x44($s2)
    /* 94688 8010BC18 0C0413EE */  jal        func_80104FB8
    /* 9468C 8010BC1C 02002025 */   or        $a0, $s0, $zero
    /* 94690 8010BC20 02002025 */  or         $a0, $s0, $zero
    /* 94694 8010BC24 0C041B17 */  jal        func_80106C5C
    /* 94698 8010BC28 02202825 */   or        $a1, $s1, $zero
    /* 9469C 8010BC2C 10400003 */  beqz       $v0, .L8010BC3C
    /* 946A0 8010BC30 02002025 */   or        $a0, $s0, $zero
    /* 946A4 8010BC34 0C041DF5 */  jal        func_801077D4
    /* 946A8 8010BC38 02202825 */   or        $a1, $s1, $zero
  .L8010BC3C:
    /* 946AC 8010BC3C 02002025 */  or         $a0, $s0, $zero
    /* 946B0 8010BC40 0C041E28 */  jal        func_801078A0
    /* 946B4 8010BC44 02202825 */   or        $a1, $s1, $zero
    /* 946B8 8010BC48 10400003 */  beqz       $v0, .L8010BC58
    /* 946BC 8010BC4C 02002025 */   or        $a0, $s0, $zero
    /* 946C0 8010BC50 0C042493 */  jal        func_8010924C
    /* 946C4 8010BC54 02202825 */   or        $a1, $s1, $zero
  .L8010BC58:
    /* 946C8 8010BC58 8E230000 */  lw         $v1, 0x0($s1)
    /* 946CC 8010BC5C 00031CC2 */  srl        $v1, $v1, 19
    /* 946D0 8010BC60 1060000D */  beqz       $v1, .L8010BC98
    /* 946D4 8010BC64 00601025 */   or        $v0, $v1, $zero
    /* 946D8 8010BC68 30480E00 */  andi       $t0, $v0, 0xE00
    /* 946DC 8010BC6C 1100000A */  beqz       $t0, .L8010BC98
    /* 946E0 8010BC70 3C098013 */   lui       $t1, %hi(D_8012BCA4)
    /* 946E4 8010BC74 8D29BCA4 */  lw         $t1, %lo(D_8012BCA4)($t1)
    /* 946E8 8010BC78 24010014 */  addiu      $at, $zero, 0x14
    /* 946EC 8010BC7C 02002025 */  or         $a0, $s0, $zero
    /* 946F0 8010BC80 51210006 */  beql       $t1, $at, .L8010BC9C
    /* 946F4 8010BC84 306A01C0 */   andi      $t2, $v1, 0x1C0
    /* 946F8 8010BC88 0C041B17 */  jal        func_80106C5C
    /* 946FC 8010BC8C 02202825 */   or        $a1, $s1, $zero
    /* 94700 8010BC90 8E230000 */  lw         $v1, 0x0($s1)
    /* 94704 8010BC94 00031CC2 */  srl        $v1, $v1, 19
  .L8010BC98:
    /* 94708 8010BC98 306A01C0 */  andi       $t2, $v1, 0x1C0
  .L8010BC9C:
    /* 9470C 8010BC9C 1140000F */  beqz       $t2, .L8010BCDC
    /* 94710 8010BCA0 3C0B8013 */   lui       $t3, %hi(D_8012BCB4)
    /* 94714 8010BCA4 8D6BBCB4 */  lw         $t3, %lo(D_8012BCB4)($t3)
    /* 94718 8010BCA8 3C0E8013 */  lui        $t6, %hi(D_8012BCA0)
    /* 9471C 8010BCAC 956C0008 */  lhu        $t4, 0x8($t3)
    /* 94720 8010BCB0 318D0004 */  andi       $t5, $t4, 0x4
    /* 94724 8010BCB4 51A0000A */  beql       $t5, $zero, .L8010BCE0
    /* 94728 8010BCB8 924C0000 */   lbu       $t4, 0x0($s2)
    /* 9472C 8010BCBC 8DCEBCA0 */  lw         $t6, %lo(D_8012BCA0)($t6)
    /* 94730 8010BCC0 96290000 */  lhu        $t1, 0x0($s1)
    /* 94734 8010BCC4 000E7CC2 */  srl        $t7, $t6, 19
    /* 94738 8010BCC8 31F8FE3F */  andi       $t8, $t7, 0xFE3F
    /* 9473C 8010BCCC 001840C0 */  sll        $t0, $t8, 3
    /* 94740 8010BCD0 312A0007 */  andi       $t2, $t1, 0x7
    /* 94744 8010BCD4 010A5825 */  or         $t3, $t0, $t2
    /* 94748 8010BCD8 A62B0000 */  sh         $t3, 0x0($s1)
  .L8010BCDC:
    /* 9474C 8010BCDC 924C0000 */  lbu        $t4, 0x0($s2)
  .L8010BCE0:
    /* 94750 8010BCE0 8E4E0040 */  lw         $t6, 0x40($s2)
    /* 94754 8010BCE4 00001025 */  or         $v0, $zero, $zero
    /* 94758 8010BCE8 318DFF7F */  andi       $t5, $t4, 0xFF7F
    /* 9475C 8010BCEC A24D0000 */  sb         $t5, 0x0($s2)
    /* 94760 8010BCF0 AE0E0058 */  sw         $t6, 0x58($s0)
    /* 94764 8010BCF4 8FBF0024 */  lw         $ra, 0x24($sp)
    /* 94768 8010BCF8 8FB20020 */  lw         $s2, 0x20($sp)
    /* 9476C 8010BCFC 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 94770 8010BD00 8FB00018 */  lw         $s0, 0x18($sp)
    /* 94774 8010BD04 03E00008 */  jr         $ra
    /* 94778 8010BD08 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_8010BBD4
.size func_8010BBD4, . - func_8010BBD4
