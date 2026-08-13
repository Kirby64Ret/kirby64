nonmatching func_801556D8_ovl3, 0x160

glabel func_801556D8_ovl3
    /* B6118 801556D8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* B611C 801556DC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* B6120 801556E0 27BDFF90 */  addiu      $sp, $sp, -0x70
    /* B6124 801556E4 AFBF0024 */  sw         $ra, 0x24($sp)
    /* B6128 801556E8 E7AC0070 */  swc1       $f12, 0x70($sp)
    /* B612C 801556EC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* B6130 801556F0 3C05800E */  lui        $a1, %hi(D_800E0490)
    /* B6134 801556F4 000E7880 */  sll        $t7, $t6, 2
    /* B6138 801556F8 00AF2821 */  addu       $a1, $a1, $t7
    /* B613C 801556FC 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
    /* B6140 80155700 50A00006 */  beql       $a1, $zero, .L8015571C_ovl3
    /* B6144 80155704 44801000 */   mtc1      $zero, $f2
    /* B6148 80155708 8CA40004 */  lw         $a0, 0x4($a1)
    /* B614C 8015570C 44801000 */  mtc1       $zero, $f2
    /* B6150 80155710 10000004 */  b          .L80155724_ovl3
    /* B6154 80155714 C4800000 */   lwc1      $f0, 0x0($a0)
    /* B6158 80155718 44801000 */  mtc1       $zero, $f2
  .L8015571C_ovl3:
    /* B615C 8015571C 00000000 */  nop
    /* B6160 80155720 46001006 */  mov.s      $f0, $f2
  .L80155724_ovl3:
    /* B6164 80155724 E7A20044 */  swc1       $f2, 0x44($sp)
    /* B6168 80155728 E7A2003C */  swc1       $f2, 0x3C($sp)
    /* B616C 8015572C 8C580000 */  lw         $t8, 0x0($v0)
    /* B6170 80155730 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* B6174 80155734 27A40054 */  addiu      $a0, $sp, 0x54
    /* B6178 80155738 0018C880 */  sll        $t9, $t8, 2
    /* B617C 8015573C 00390821 */  addu       $at, $at, $t9
    /* B6180 80155740 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* B6184 80155744 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* B6188 80155748 27A50048 */  addiu      $a1, $sp, 0x48
    /* B618C 8015574C E7A40048 */  swc1       $f4, 0x48($sp)
    /* B6190 80155750 C7A60048 */  lwc1       $f6, 0x48($sp)
    /* B6194 80155754 27A6003C */  addiu      $a2, $sp, 0x3C
    /* B6198 80155758 00003825 */  or         $a3, $zero, $zero
    /* B619C 8015575C E7A60054 */  swc1       $f6, 0x54($sp)
    /* B61A0 80155760 8C480000 */  lw         $t0, 0x0($v0)
    /* B61A4 80155764 00084880 */  sll        $t1, $t0, 2
    /* B61A8 80155768 00290821 */  addu       $at, $at, $t1
    /* B61AC 8015576C C4282950 */  lwc1       $f8, %lo(gEntitiesNextPosZArray)($at)
    /* B61B0 80155770 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* B61B4 80155774 E7A80050 */  swc1       $f8, 0x50($sp)
    /* B61B8 80155778 C7AA0050 */  lwc1       $f10, 0x50($sp)
    /* B61BC 8015577C C7A80070 */  lwc1       $f8, 0x70($sp)
    /* B61C0 80155780 E7AA005C */  swc1       $f10, 0x5C($sp)
    /* B61C4 80155784 8C4A0000 */  lw         $t2, 0x0($v0)
    /* B61C8 80155788 AFA0001C */  sw         $zero, 0x1C($sp)
    /* B61CC 8015578C AFA00018 */  sw         $zero, 0x18($sp)
    /* B61D0 80155790 000A5880 */  sll        $t3, $t2, 2
    /* B61D4 80155794 002B0821 */  addu       $at, $at, $t3
    /* B61D8 80155798 C4302790 */  lwc1       $f16, %lo(gEntitiesNextPosYArray)($at)
    /* B61DC 8015579C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* B61E0 801557A0 44812000 */  mtc1       $at, $f4
    /* B61E4 801557A4 46008480 */  add.s      $f18, $f16, $f0
    /* B61E8 801557A8 AFA00014 */  sw         $zero, 0x14($sp)
    /* B61EC 801557AC AFA00010 */  sw         $zero, 0x10($sp)
    /* B61F0 801557B0 E7A40040 */  swc1       $f4, 0x40($sp)
    /* B61F4 801557B4 E7B20058 */  swc1       $f18, 0x58($sp)
    /* B61F8 801557B8 C7A60058 */  lwc1       $f6, 0x58($sp)
    /* B61FC 801557BC 46083280 */  add.s      $f10, $f6, $f8
    /* B6200 801557C0 0C040FA8 */  jal        func_80103EA0
    /* B6204 801557C4 E7AA004C */   swc1      $f10, 0x4C($sp)
    /* B6208 801557C8 C7B20058 */  lwc1       $f18, 0x58($sp)
    /* B620C 801557CC C7A40070 */  lwc1       $f4, 0x70($sp)
    /* B6210 801557D0 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
    /* B6214 801557D4 44818000 */  mtc1       $at, $f16
    /* B6218 801557D8 46049181 */  sub.s      $f6, $f18, $f4
    /* B621C 801557DC AFA2006C */  sw         $v0, 0x6C($sp)
    /* B6220 801557E0 27A40054 */  addiu      $a0, $sp, 0x54
    /* B6224 801557E4 27A50048 */  addiu      $a1, $sp, 0x48
    /* B6228 801557E8 E7A6004C */  swc1       $f6, 0x4C($sp)
    /* B622C 801557EC 27A6003C */  addiu      $a2, $sp, 0x3C
    /* B6230 801557F0 00003825 */  or         $a3, $zero, $zero
    /* B6234 801557F4 AFA00010 */  sw         $zero, 0x10($sp)
    /* B6238 801557F8 AFA00014 */  sw         $zero, 0x14($sp)
    /* B623C 801557FC AFA00018 */  sw         $zero, 0x18($sp)
    /* B6240 80155800 AFA0001C */  sw         $zero, 0x1C($sp)
    /* B6244 80155804 0C040FA8 */  jal        func_80103EA0
    /* B6248 80155808 E7B00040 */   swc1      $f16, 0x40($sp)
    /* B624C 8015580C 10400002 */  beqz       $v0, .L80155818_ovl3
    /* B6250 80155810 00001825 */   or        $v1, $zero, $zero
    /* B6254 80155814 24030001 */  addiu      $v1, $zero, 0x1
  .L80155818_ovl3:
    /* B6258 80155818 8FAC006C */  lw         $t4, 0x6C($sp)
    /* B625C 8015581C 8FBF0024 */  lw         $ra, 0x24($sp)
    /* B6260 80155820 51800003 */  beql       $t4, $zero, .L80155830_ovl3
    /* B6264 80155824 00601025 */   or        $v0, $v1, $zero
    /* B6268 80155828 34630002 */  ori        $v1, $v1, 0x2
    /* B626C 8015582C 00601025 */  or         $v0, $v1, $zero
  .L80155830_ovl3:
    /* B6270 80155830 03E00008 */  jr         $ra
    /* B6274 80155834 27BD0070 */   addiu     $sp, $sp, 0x70
endlabel func_801556D8_ovl3
.size func_801556D8_ovl3, . - func_801556D8_ovl3
