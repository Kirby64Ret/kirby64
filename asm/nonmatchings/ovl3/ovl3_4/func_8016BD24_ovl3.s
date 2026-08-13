nonmatching func_8016BD24_ovl3, 0x208

glabel func_8016BD24_ovl3
    /* CC764 8016BD24 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* CC768 8016BD28 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* CC76C 8016BD2C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* CC770 8016BD30 AFBF001C */  sw         $ra, 0x1C($sp)
    /* CC774 8016BD34 8C460000 */  lw         $a2, 0x0($v0)
    /* CC778 8016BD38 3C03800F */  lui        $v1, %hi(D_800EA520)
    /* CC77C 8016BD3C 3C01800D */  lui        $at, %hi(gKirbyHp)
    /* CC780 8016BD40 00063080 */  sll        $a2, $a2, 2
    /* CC784 8016BD44 00661821 */  addu       $v1, $v1, $a2
    /* CC788 8016BD48 8C63A520 */  lw         $v1, %lo(D_800EA520)($v1)
    /* CC78C 8016BD4C 00031A03 */  sra        $v1, $v1, 8
    /* CC790 8016BD50 306300FF */  andi       $v1, $v1, 0xFF
    /* CC794 8016BD54 54600066 */  bnel       $v1, $zero, .L8016BEF0_ovl3
    /* CC798 8016BD58 44800000 */   mtc1      $zero, $f0
    /* CC79C 8016BD5C 44802000 */  mtc1       $zero, $f4
    /* CC7A0 8016BD60 C4266E50 */  lwc1       $f6, %lo(gKirbyHp)($at)
    /* CC7A4 8016BD64 24050017 */  addiu      $a1, $zero, 0x17
    /* CC7A8 8016BD68 46062032 */  c.eq.s     $f4, $f6
    /* CC7AC 8016BD6C 00000000 */  nop
    /* CC7B0 8016BD70 45000008 */  bc1f       .L8016BD94_ovl3
    /* CC7B4 8016BD74 00000000 */   nop
    /* CC7B8 8016BD78 0C048BDB */  jal        set_kirby_action_1
    /* CC7BC 8016BD7C 24040016 */   addiu     $a0, $zero, 0x16
    /* CC7C0 8016BD80 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* CC7C4 8016BD84 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* CC7C8 8016BD88 8DC60000 */  lw         $a2, 0x0($t6)
    /* CC7CC 8016BD8C 1000001C */  b          .L8016BE00_ovl3
    /* CC7D0 8016BD90 00063080 */   sll       $a2, $a2, 2
  .L8016BD94_ovl3:
    /* CC7D4 8016BD94 10800006 */  beqz       $a0, .L8016BDB0_ovl3
    /* CC7D8 8016BD98 240F0001 */   addiu     $t7, $zero, 0x1
    /* CC7DC 8016BD9C 24010001 */  addiu      $at, $zero, 0x1
    /* CC7E0 8016BDA0 1081000D */  beq        $a0, $at, .L8016BDD8_ovl3
    /* CC7E4 8016BDA4 24080006 */   addiu     $t0, $zero, 0x6
    /* CC7E8 8016BDA8 10000015 */  b          .L8016BE00_ovl3
    /* CC7EC 8016BDAC 00000000 */   nop
  .L8016BDB0_ovl3:
    /* CC7F0 8016BDB0 3C018013 */  lui        $at, %hi(D_8012E7C5)
    /* CC7F4 8016BDB4 A02FE7C5 */  sb         $t7, %lo(D_8012E7C5)($at)
    /* CC7F8 8016BDB8 8C580000 */  lw         $t8, 0x0($v0)
    /* CC7FC 8016BDBC 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* CC800 8016BDC0 0018C880 */  sll        $t9, $t8, 2
    /* CC804 8016BDC4 00390821 */  addu       $at, $at, $t9
    /* CC808 8016BDC8 AC20DC50 */  sw         $zero, %lo(gEntityFuncListIDArray)($at)
    /* CC80C 8016BDCC 8C460000 */  lw         $a2, 0x0($v0)
    /* CC810 8016BDD0 1000000B */  b          .L8016BE00_ovl3
    /* CC814 8016BDD4 00063080 */   sll       $a2, $a2, 2
  .L8016BDD8_ovl3:
    /* CC818 8016BDD8 3C018013 */  lui        $at, %hi(D_8012E7C5)
    /* CC81C 8016BDDC A028E7C5 */  sb         $t0, %lo(D_8012E7C5)($at)
    /* CC820 8016BDE0 8C4A0000 */  lw         $t2, 0x0($v0)
    /* CC824 8016BDE4 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* CC828 8016BDE8 24090006 */  addiu      $t1, $zero, 0x6
    /* CC82C 8016BDEC 000A5880 */  sll        $t3, $t2, 2
    /* CC830 8016BDF0 002B0821 */  addu       $at, $at, $t3
    /* CC834 8016BDF4 AC29DC50 */  sw         $t1, %lo(gEntityFuncListIDArray)($at)
    /* CC838 8016BDF8 8C460000 */  lw         $a2, 0x0($v0)
    /* CC83C 8016BDFC 00063080 */  sll        $a2, $a2, 2
  .L8016BE00_ovl3:
    /* CC840 8016BE00 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* CC844 8016BE04 00862021 */  addu       $a0, $a0, $a2
    /* CC848 8016BE08 3C058017 */  lui        $a1, %hi(func_8016C510_ovl3)
    /* CC84C 8016BE0C 24A5C510 */  addiu      $a1, $a1, %lo(func_8016C510_ovl3)
    /* CC850 8016BE10 0C02C7B2 */  jal        assign_new_process_entry
    /* CC854 8016BE14 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* CC858 8016BE18 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* CC85C 8016BE1C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* CC860 8016BE20 3C0C800B */  lui        $t4, %hi(func_800B531C)
    /* CC864 8016BE24 3C01800E */  lui        $at, %hi(D_800DEF90)
    /* CC868 8016BE28 8C4D0000 */  lw         $t5, 0x0($v0)
    /* CC86C 8016BE2C 258C531C */  addiu      $t4, $t4, %lo(func_800B531C)
    /* CC870 8016BE30 3C0F8017 */  lui        $t7, %hi(func_8016C558_ovl3)
    /* CC874 8016BE34 000D7080 */  sll        $t6, $t5, 2
    /* CC878 8016BE38 002E0821 */  addu       $at, $at, $t6
    /* CC87C 8016BE3C AC2CEF90 */  sw         $t4, %lo(D_800DEF90)($at)
    /* CC880 8016BE40 8C580000 */  lw         $t8, 0x0($v0)
    /* CC884 8016BE44 3C01800E */  lui        $at, %hi(D_800DF150)
    /* CC888 8016BE48 25EFC558 */  addiu      $t7, $t7, %lo(func_8016C558_ovl3)
    /* CC88C 8016BE4C 0018C880 */  sll        $t9, $t8, 2
    /* CC890 8016BE50 00390821 */  addu       $at, $at, $t9
    /* CC894 8016BE54 AC2FF150 */  sw         $t7, %lo(D_800DF150)($at)
    /* CC898 8016BE58 8C4A0000 */  lw         $t2, 0x0($v0)
    /* CC89C 8016BE5C 3C01800E */  lui        $at, %hi(D_800DDA90)
    /* CC8A0 8016BE60 24080023 */  addiu      $t0, $zero, 0x23
    /* CC8A4 8016BE64 000A4880 */  sll        $t1, $t2, 2
    /* CC8A8 8016BE68 00290821 */  addu       $at, $at, $t1
    /* CC8AC 8016BE6C AC28DA90 */  sw         $t0, %lo(D_800DDA90)($at)
    /* CC8B0 8016BE70 3C01800D */  lui        $at, %hi(gameTicksPerDraw)
    /* CC8B4 8016BE74 0C02BB30 */  jal        func_800AECC0
    /* CC8B8 8016BE78 C42C6B10 */   lwc1      $f12, %lo(gameTicksPerDraw)($at)
    /* CC8BC 8016BE7C 3C01800D */  lui        $at, %hi(gameTicksPerDraw)
    /* CC8C0 8016BE80 0C02BB48 */  jal        func_800AED20
    /* CC8C4 8016BE84 C42C6B10 */   lwc1      $f12, %lo(gameTicksPerDraw)($at)
    /* CC8C8 8016BE88 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* CC8CC 8016BE8C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* CC8D0 8016BE90 3C01800F */  lui        $at, %hi(D_800E8760)
    /* CC8D4 8016BE94 240C002D */  addiu      $t4, $zero, 0x2D
    /* CC8D8 8016BE98 8C4B0000 */  lw         $t3, 0x0($v0)
    /* CC8DC 8016BE9C 240FFFFF */  addiu      $t7, $zero, -0x1
    /* CC8E0 8016BEA0 000B6880 */  sll        $t5, $t3, 2
    /* CC8E4 8016BEA4 002D0821 */  addu       $at, $at, $t5
    /* CC8E8 8016BEA8 AC208760 */  sw         $zero, %lo(D_800E8760)($at)
    /* CC8EC 8016BEAC 8C4E0000 */  lw         $t6, 0x0($v0)
    /* CC8F0 8016BEB0 3C01800E */  lui        $at, %hi(D_800E7CE0)
    /* CC8F4 8016BEB4 000EC080 */  sll        $t8, $t6, 2
    /* CC8F8 8016BEB8 00380821 */  addu       $at, $at, $t8
    /* CC8FC 8016BEBC AC2C7CE0 */  sw         $t4, %lo(D_800E7CE0)($at)
    /* CC900 8016BEC0 8C590000 */  lw         $t9, 0x0($v0)
    /* CC904 8016BEC4 3C01800E */  lui        $at, %hi(D_800E0D50)
    /* CC908 8016BEC8 00195080 */  sll        $t2, $t9, 2
    /* CC90C 8016BECC 002A0821 */  addu       $at, $at, $t2
    /* CC910 8016BED0 AC2F0D50 */  sw         $t7, %lo(D_800E0D50)($at)
    /* CC914 8016BED4 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
    /* CC918 8016BED8 44816000 */  mtc1       $at, $f12
    /* CC91C 8016BEDC 0C0548D2 */  jal        func_80152348_ovl3
    /* CC920 8016BEE0 00000000 */   nop
    /* CC924 8016BEE4 1000000D */  b          .L8016BF1C_ovl3
    /* CC928 8016BEE8 24020001 */   addiu     $v0, $zero, 0x1
    /* CC92C 8016BEEC 44800000 */  mtc1       $zero, $f0
  .L8016BEF0_ovl3:
    /* CC930 8016BEF0 00002025 */  or         $a0, $zero, $zero
    /* CC934 8016BEF4 00002825 */  or         $a1, $zero, $zero
    /* CC938 8016BEF8 44060000 */  mfc1       $a2, $f0
    /* CC93C 8016BEFC 44070000 */  mfc1       $a3, $f0
    /* CC940 8016BF00 0C03F55C */  jal        func_800FD570
    /* CC944 8016BF04 E7A00010 */   swc1      $f0, 0x10($sp)
    /* CC948 8016BF08 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* CC94C 8016BF0C 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* CC950 8016BF10 0C02C640 */  jal        func_800B1900
    /* CC954 8016BF14 95040002 */   lhu       $a0, 0x2($t0)
    /* CC958 8016BF18 00001025 */  or         $v0, $zero, $zero
  .L8016BF1C_ovl3:
    /* CC95C 8016BF1C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* CC960 8016BF20 27BD0020 */  addiu      $sp, $sp, 0x20
    /* CC964 8016BF24 03E00008 */  jr         $ra
    /* CC968 8016BF28 00000000 */   nop
endlabel func_8016BD24_ovl3
.size func_8016BD24_ovl3, . - func_8016BD24_ovl3
    /* CC96C 8016BF2C 00000000 */  nop
    /* CC970 8016BF30 00000000 */  nop
    /* CC974 8016BF34 00000000 */  nop
    /* CC978 8016BF38 00000000 */  nop
    /* CC97C 8016BF3C 00000000 */  nop
    /* CC980 8016BF40 00000000 */  nop
    /* CC984 8016BF44 00000000 */  nop
    /* CC988 8016BF48 00000000 */  nop
    /* CC98C 8016BF4C 00000000 */  nop
    /* CC990 8016BF50 00000000 */  nop
    /* CC994 8016BF54 00000000 */  nop
    /* CC998 8016BF58 00000000 */  nop
    /* CC99C 8016BF5C 00000000 */  nop
