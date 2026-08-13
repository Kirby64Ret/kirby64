nonmatching func_800B9008, 0x60

glabel func_800B9008
    /* 61258 800B9008 3C05800F */  lui        $a1, %hi(gSaveBuffer1)
    /* 6125C 800B900C 3C06800F */  lui        $a2, %hi(D_800ECA04)
    /* 61260 800B9010 24C6CA04 */  addiu      $a2, $a2, %lo(D_800ECA04)
    /* 61264 800B9014 24A5C9F8 */  addiu      $a1, $a1, %lo(gSaveBuffer1)
    /* 61268 800B9018 00A01025 */  or         $v0, $a1, $zero
    /* 6126C 800B901C 10C5000E */  beq        $a2, $a1, .L800B9058
    /* 61270 800B9020 00C01825 */   or        $v1, $a2, $zero
    /* 61274 800B9024 2404000C */  addiu      $a0, $zero, 0xC
    /* 61278 800B9028 10800005 */  beqz       $a0, .L800B9040
    /* 6127C 800B902C 24A4000C */   addiu     $a0, $a1, 0xC
  .L800B9030:
    /* 61280 800B9030 24420004 */  addiu      $v0, $v0, 0x4
    /* 61284 800B9034 1482FFFE */  bne        $a0, $v0, .L800B9030
    /* 61288 800B9038 AC40FFFC */   sw        $zero, -0x4($v0)
    /* 6128C 800B903C 10460006 */  beq        $v0, $a2, .L800B9058
  .L800B9040:
    /* 61290 800B9040 24420010 */   addiu     $v0, $v0, 0x10
    /* 61294 800B9044 AC40FFF0 */  sw         $zero, -0x10($v0)
    /* 61298 800B9048 AC40FFF4 */  sw         $zero, -0xC($v0)
    /* 6129C 800B904C AC40FFF8 */  sw         $zero, -0x8($v0)
    /* 612A0 800B9050 1443FFFB */  bne        $v0, $v1, .L800B9040
    /* 612A4 800B9054 AC40FFFC */   sw        $zero, -0x4($v0)
  .L800B9058:
    /* 612A8 800B9058 ACA00000 */  sw         $zero, 0x0($a1)
    /* 612AC 800B905C ACA00004 */  sw         $zero, 0x4($a1)
    /* 612B0 800B9060 03E00008 */  jr         $ra
    /* 612B4 800B9064 ACA00008 */   sw        $zero, 0x8($a1)
endlabel func_800B9008
.size func_800B9008, . - func_800B9008
