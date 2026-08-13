nonmatching alSeqNextEvent, 0x184

glabel alSeqNextEvent
    /* 2D648 8002CA48 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2D64C 8002CA4C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2D650 8002CA50 00803025 */  or         $a2, $a0, $zero
    /* 2D654 8002CA54 0C00B27F */  jal        func_8002C9FC
    /* 2D658 8002CA58 00A03825 */   or        $a3, $a1, $zero
    /* 2D65C 8002CA5C 8CCE000C */  lw         $t6, 0xC($a2)
    /* 2D660 8002CA60 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D664 8002CA64 00404825 */  or         $t1, $v0, $zero
    /* 2D668 8002CA68 01C27821 */  addu       $t7, $t6, $v0
    /* 2D66C 8002CA6C ACCF000C */  sw         $t7, 0xC($a2)
    /* 2D670 8002CA70 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D674 8002CA74 240100FF */  addiu      $at, $zero, 0xFF
    /* 2D678 8002CA78 24780001 */  addiu      $t8, $v1, 0x1
    /* 2D67C 8002CA7C ACD80008 */  sw         $t8, 0x8($a2)
    /* 2D680 8002CA80 00801025 */  or         $v0, $a0, $zero
    /* 2D684 8002CA84 1481002F */  bne        $a0, $at, .L8002CB44
    /* 2D688 8002CA88 308500FF */   andi      $a1, $a0, 0xFF
    /* 2D68C 8002CA8C 93020000 */  lbu        $v0, 0x0($t8)
    /* 2D690 8002CA90 27190001 */  addiu      $t9, $t8, 0x1
    /* 2D694 8002CA94 24010051 */  addiu      $at, $zero, 0x51
    /* 2D698 8002CA98 ACD90008 */  sw         $t9, 0x8($a2)
    /* 2D69C 8002CA9C 1441001B */  bne        $v0, $at, .L8002CB0C
    /* 2D6A0 8002CAA0 00404025 */   or        $t0, $v0, $zero
    /* 2D6A4 8002CAA4 240E0003 */  addiu      $t6, $zero, 0x3
    /* 2D6A8 8002CAA8 A4EE0000 */  sh         $t6, 0x0($a3)
    /* 2D6AC 8002CAAC ACE90004 */  sw         $t1, 0x4($a3)
    /* 2D6B0 8002CAB0 A0E50008 */  sb         $a1, 0x8($a3)
    /* 2D6B4 8002CAB4 A0E80009 */  sb         $t0, 0x9($a3)
    /* 2D6B8 8002CAB8 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D6BC 8002CABC 90620000 */  lbu        $v0, 0x0($v1)
    /* 2D6C0 8002CAC0 246F0001 */  addiu      $t7, $v1, 0x1
    /* 2D6C4 8002CAC4 ACCF0008 */  sw         $t7, 0x8($a2)
    /* 2D6C8 8002CAC8 A0E2000A */  sb         $v0, 0xA($a3)
    /* 2D6CC 8002CACC 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D6D0 8002CAD0 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D6D4 8002CAD4 24780001 */  addiu      $t8, $v1, 0x1
    /* 2D6D8 8002CAD8 ACD80008 */  sw         $t8, 0x8($a2)
    /* 2D6DC 8002CADC A0E4000B */  sb         $a0, 0xB($a3)
    /* 2D6E0 8002CAE0 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D6E4 8002CAE4 90650000 */  lbu        $a1, 0x0($v1)
    /* 2D6E8 8002CAE8 24790001 */  addiu      $t9, $v1, 0x1
    /* 2D6EC 8002CAEC ACD90008 */  sw         $t9, 0x8($a2)
    /* 2D6F0 8002CAF0 A0E5000C */  sb         $a1, 0xC($a3)
    /* 2D6F4 8002CAF4 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D6F8 8002CAF8 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D6FC 8002CAFC 246E0001 */  addiu      $t6, $v1, 0x1
    /* 2D700 8002CB00 ACCE0008 */  sw         $t6, 0x8($a2)
    /* 2D704 8002CB04 1000000D */  b          .L8002CB3C
    /* 2D708 8002CB08 A0E4000D */   sb        $a0, 0xD($a3)
  .L8002CB0C:
    /* 2D70C 8002CB0C 2401002F */  addiu      $at, $zero, 0x2F
    /* 2D710 8002CB10 1441000A */  bne        $v0, $at, .L8002CB3C
    /* 2D714 8002CB14 240F0004 */   addiu     $t7, $zero, 0x4
    /* 2D718 8002CB18 A4EF0000 */  sh         $t7, 0x0($a3)
    /* 2D71C 8002CB1C ACE90004 */  sw         $t1, 0x4($a3)
    /* 2D720 8002CB20 A0E50008 */  sb         $a1, 0x8($a3)
    /* 2D724 8002CB24 A0E80009 */  sb         $t0, 0x9($a3)
    /* 2D728 8002CB28 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D72C 8002CB2C 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D730 8002CB30 24780001 */  addiu      $t8, $v1, 0x1
    /* 2D734 8002CB34 ACD80008 */  sw         $t8, 0x8($a2)
    /* 2D738 8002CB38 A0E4000A */  sb         $a0, 0xA($a3)
  .L8002CB3C:
    /* 2D73C 8002CB3C 1000001F */  b          .L8002CBBC
    /* 2D740 8002CB40 A4C0001A */   sh        $zero, 0x1A($a2)
  .L8002CB44:
    /* 2D744 8002CB44 24190001 */  addiu      $t9, $zero, 0x1
    /* 2D748 8002CB48 304E0080 */  andi       $t6, $v0, 0x80
    /* 2D74C 8002CB4C A4F90000 */  sh         $t9, 0x0($a3)
    /* 2D750 8002CB50 11C00009 */  beqz       $t6, .L8002CB78
    /* 2D754 8002CB54 ACE90004 */   sw        $t1, 0x4($a3)
    /* 2D758 8002CB58 A0E50008 */  sb         $a1, 0x8($a3)
    /* 2D75C 8002CB5C 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D760 8002CB60 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D764 8002CB64 246F0001 */  addiu      $t7, $v1, 0x1
    /* 2D768 8002CB68 ACCF0008 */  sw         $t7, 0x8($a2)
    /* 2D76C 8002CB6C A0E40009 */  sb         $a0, 0x9($a3)
    /* 2D770 8002CB70 10000004 */  b          .L8002CB84
    /* 2D774 8002CB74 A4C5001A */   sh        $a1, 0x1A($a2)
  .L8002CB78:
    /* 2D778 8002CB78 84D8001A */  lh         $t8, 0x1A($a2)
    /* 2D77C 8002CB7C A0E40009 */  sb         $a0, 0x9($a3)
    /* 2D780 8002CB80 A0F80008 */  sb         $t8, 0x8($a3)
  .L8002CB84:
    /* 2D784 8002CB84 90E20008 */  lbu        $v0, 0x8($a3)
    /* 2D788 8002CB88 240100C0 */  addiu      $at, $zero, 0xC0
    /* 2D78C 8002CB8C 304200F0 */  andi       $v0, $v0, 0xF0
    /* 2D790 8002CB90 10410009 */  beq        $v0, $at, .L8002CBB8
    /* 2D794 8002CB94 240100D0 */   addiu     $at, $zero, 0xD0
    /* 2D798 8002CB98 50410008 */  beql       $v0, $at, .L8002CBBC
    /* 2D79C 8002CB9C A0E0000A */   sb        $zero, 0xA($a3)
    /* 2D7A0 8002CBA0 8CC30008 */  lw         $v1, 0x8($a2)
    /* 2D7A4 8002CBA4 90640000 */  lbu        $a0, 0x0($v1)
    /* 2D7A8 8002CBA8 24790001 */  addiu      $t9, $v1, 0x1
    /* 2D7AC 8002CBAC ACD90008 */  sw         $t9, 0x8($a2)
    /* 2D7B0 8002CBB0 10000002 */  b          .L8002CBBC
    /* 2D7B4 8002CBB4 A0E4000A */   sb        $a0, 0xA($a3)
  .L8002CBB8:
    /* 2D7B8 8002CBB8 A0E0000A */  sb         $zero, 0xA($a3)
  .L8002CBBC:
    /* 2D7BC 8002CBBC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 2D7C0 8002CBC0 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2D7C4 8002CBC4 03E00008 */  jr         $ra
    /* 2D7C8 8002CBC8 00000000 */   nop
endlabel alSeqNextEvent
.size alSeqNextEvent, . - alSeqNextEvent
