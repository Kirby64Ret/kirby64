glabel func_800A5B64
/* 04DDB4 800A5B64 3C01800D */  lui   $at, %hi(D_800D5C54) # $at, 0x800d
/* 04DDB8 800A5B68 C4245C54 */  lwc1  $f4, %lo(D_800D5C54)($at)
/* 04DDBC 800A5B6C 3C01800C */ lui $at, %hi(D_800BF8EC)
/* 04DDC0 800A5B70 46046182 */  mul.s $f6, $f12, $f4
/* 04DDC4 800A5B74 4600320D */  trunc.w.s $f8, $f6
/* 04DDC8 800A5B78 44024000 */  mfc1  $v0, $f8
/* 04DDCC 800A5B7C 00000000 */  nop   
/* 04DDD0 800A5B80 30420FFF */  andi  $v0, $v0, 0xfff
/* 04DDD4 800A5B84 3042FFFF */  andi  $v0, $v0, 0xffff
/* 04DDD8 800A5B88 304F0400 */  andi  $t7, $v0, 0x400
/* 04DDDC 800A5B8C 11E00008 */  beqz  $t7, .L800A5BB0_ovl1
/* 04DDE0 800A5B90 304B0800 */   andi  $t3, $v0, 0x800
/* 04DDE4 800A5B94 305803FF */  andi  $t8, $v0, 0x3ff
/* 04DDE8 800A5B98 0018C880 */  sll   $t9, $t8, 2
/* 04DDEC 800A5B9C 00194023 */  negu  $t0, $t9
/* 04DDF0 800A5BA0 3C01800C */ lui $at, %hi(D_800BF8EC)
/* 04DDF4 800A5BA4 00280821 */  addu  $at, $at, $t0
/* 04DDF8 800A5BA8 10000005 */  b     .L800A5BC0_ovl1
/* 04DDFC 800A5BAC C422F8EC */ lwc1 $f2, %lo(D_800BF8EC)($at)
.L800A5BB0_ovl1:
/* 04DE00 800A5BB0 304903FF */  andi  $t1, $v0, 0x3ff
/* 04DE04 800A5BB4 00095080 */  sll   $t2, $t1, 2
/* 04DE08 800A5BB8 002A0821 */  addu  $at, $at, $t2
/* 04DE0C 800A5BBC C422E8F0 */  lwc1  $f2, -0x1710($at)
.L800A5BC0_ovl1:
/* 04DE10 800A5BC0 51600004 */  beql  $t3, $zero, .L800A5BD4_ovl1
/* 04DE14 800A5BC4 46001006 */   mov.s $f0, $f2
/* 04DE18 800A5BC8 03E00008 */  jr    $ra
/* 04DE1C 800A5BCC 46001007 */   neg.s $f0, $f2
.type func_800A5B64, @function

/* 04DE20 800A5BD0 46001006 */  mov.s $f0, $f2
.L800A5BD4_ovl1:
/* 04DE24 800A5BD4 03E00008 */  jr    $ra
/* 04DE28 800A5BD8 00000000 */   nop   
.type func_800A5B64, @function
.size func_800A5B64, . - func_800A5B64
