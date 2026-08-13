nonmatching func_800BE374, 0x64

glabel func_800BE374
    /* 665C4 800BE374 8C820068 */  lw         $v0, 0x68($a0)
    /* 665C8 800BE378 8C9F000C */  lw         $ra, 0xC($a0)
    /* 665CC 800BE37C 44C2F800 */  ctc1       $v0, $31
    /* 665D0 800BE380 8C9D0008 */  lw         $sp, 0x8($a0)
    /* 665D4 800BE384 8C9E0034 */  lw         $fp, 0x34($a0)
    /* 665D8 800BE388 8C900014 */  lw         $s0, 0x14($a0)
    /* 665DC 800BE38C 8C910018 */  lw         $s1, 0x18($a0)
    /* 665E0 800BE390 8C92001C */  lw         $s2, 0x1C($a0)
    /* 665E4 800BE394 8C930020 */  lw         $s3, 0x20($a0)
    /* 665E8 800BE398 8C940024 */  lw         $s4, 0x24($a0)
    /* 665EC 800BE39C 8C950028 */  lw         $s5, 0x28($a0)
    /* 665F0 800BE3A0 8C96002C */  lw         $s6, 0x2C($a0)
    /* 665F4 800BE3A4 8C970030 */  lw         $s7, 0x30($a0)
    /* 665F8 800BE3A8 D4940038 */  ldc1       $f20, 0x38($a0)
    /* 665FC 800BE3AC D4960040 */  ldc1       $f22, 0x40($a0)
    /* 66600 800BE3B0 D4980048 */  ldc1       $f24, 0x48($a0)
    /* 66604 800BE3B4 D49A0050 */  ldc1       $f26, 0x50($a0)
    /* 66608 800BE3B8 D49C0058 */  ldc1       $f28, 0x58($a0)
    /* 6660C 800BE3BC D49E0060 */  ldc1       $f30, 0x60($a0)
    /* 66610 800BE3C0 00A01025 */  or         $v0, $a1, $zero
    /* 66614 800BE3C4 14400002 */  bnez       $v0, .L800BE3D0
    /* 66618 800BE3C8 03E0C825 */   or        $t9, $ra, $zero
    /* 6661C 800BE3CC 24020001 */  addiu      $v0, $zero, 0x1
  .L800BE3D0:
    /* 66620 800BE3D0 03E00008 */  jr         $ra
    /* 66624 800BE3D4 00000000 */   nop
endlabel func_800BE374
.size func_800BE374, . - func_800BE374
    /* 66628 800BE3D8 00000000 */  nop
    /* 6662C 800BE3DC 00000000 */  nop
