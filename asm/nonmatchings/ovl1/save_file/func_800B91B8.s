nonmatching func_800B91B8, 0x74

glabel func_800B91B8
    /* 61408 800B91B8 3C05800F */  lui        $a1, %hi(gSaveBuffer1)
    /* 6140C 800B91BC 3C06800F */  lui        $a2, %hi(D_800ECB10)
    /* 61410 800B91C0 3C07800F */  lui        $a3, %hi(D_800ECBA8)
    /* 61414 800B91C4 3C0E9753 */  lui        $t6, (0x97538642 >> 16)
    /* 61418 800B91C8 24E7CBA8 */  addiu      $a3, $a3, %lo(D_800ECBA8)
    /* 6141C 800B91CC 24C6CB10 */  addiu      $a2, $a2, %lo(D_800ECB10)
    /* 61420 800B91D0 24A5C9F8 */  addiu      $a1, $a1, %lo(gSaveBuffer1)
    /* 61424 800B91D4 35CE8642 */  ori        $t6, $t6, (0x97538642 & 0xFFFF)
    /* 61428 800B91D8 ACAE01B0 */  sw         $t6, 0x1B0($a1)
    /* 6142C 800B91DC ACAE0118 */  sw         $t6, 0x118($a1)
    /* 61430 800B91E0 00C01025 */  or         $v0, $a2, $zero
    /* 61434 800B91E4 10E6000E */  beq        $a3, $a2, .L800B9220
    /* 61438 800B91E8 00E01825 */   or        $v1, $a3, $zero
    /* 6143C 800B91EC 24040008 */  addiu      $a0, $zero, 0x8
    /* 61440 800B91F0 10800005 */  beqz       $a0, .L800B9208
    /* 61444 800B91F4 24C40008 */   addiu     $a0, $a2, 0x8
  .L800B91F8:
    /* 61448 800B91F8 24420004 */  addiu      $v0, $v0, 0x4
    /* 6144C 800B91FC 1482FFFE */  bne        $a0, $v0, .L800B91F8
    /* 61450 800B9200 AC40FFFC */   sw        $zero, -0x4($v0)
    /* 61454 800B9204 10470006 */  beq        $v0, $a3, .L800B9220
  .L800B9208:
    /* 61458 800B9208 24420010 */   addiu     $v0, $v0, 0x10
    /* 6145C 800B920C AC40FFF0 */  sw         $zero, -0x10($v0)
    /* 61460 800B9210 AC40FFF4 */  sw         $zero, -0xC($v0)
    /* 61464 800B9214 AC40FFF8 */  sw         $zero, -0x8($v0)
    /* 61468 800B9218 1443FFFB */  bne        $v0, $v1, .L800B9208
    /* 6146C 800B921C AC40FFFC */   sw        $zero, -0x4($v0)
  .L800B9220:
    /* 61470 800B9220 24180003 */  addiu      $t8, $zero, 0x3
    /* 61474 800B9224 03E00008 */  jr         $ra
    /* 61478 800B9228 A4B80164 */   sh        $t8, 0x164($a1)
endlabel func_800B91B8
.size func_800B91B8, . - func_800B91B8
