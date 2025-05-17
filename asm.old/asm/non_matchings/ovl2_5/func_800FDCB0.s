glabel func_800FDCB0
/* 086720 800FDCB0 44867000 */  mtc1  $a2, $f14
/* 086724 800FDCB4 C7AC0018 */  lwc1  $f12, 0x18($sp)
/* 086728 800FDCB8 AFA50004 */  sw    $a1, 4($sp)
/* 08672C 800FDCBC 4600710D */  trunc.w.s $f4, $f14
/* 086730 800FDCC0 AFA7000C */  sw    $a3, 0xc($sp)
/* 086734 800FDCC4 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 086738 800FDCC8 44811000 */  mtc1  $at, $f2
/* 08673C 800FDCCC 44022000 */  mfc1  $v0, $f4
/* 086740 800FDCD0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 086744 800FDCD4 460C1102 */  mul.s $f4, $f2, $f12
/* 086748 800FDCD8 A4820002 */  sh    $v0, 2($a0)
/* 08674C 800FDCDC A4820012 */  sh    $v0, 0x12($a0)
/* 086750 800FDCE0 C7A60004 */  lwc1  $f6, 4($sp)
/* 086754 800FDCE4 44818000 */  mtc1  $at, $f16
/* 086758 800FDCE8 3C01457C */  li    $at, 0x457C0000 # 4032.000000
/* 08675C 800FDCEC 4600320D */  trunc.w.s $f8, $f6
/* 086760 800FDCF0 44817000 */  mtc1  $at, $f14
/* 086764 800FDCF4 3C0D8005 */  lui   $t5, %hi(gDisplayListHeads) # $t5, 0x8005
/* 086768 800FDCF8 46102180 */  add.s $f6, $f4, $f16
/* 08676C 800FDCFC 44054000 */  mfc1  $a1, $f8
/* 086770 800FDD00 25ADA3D0 */  addiu $t5, %lo(gDisplayListHeads) # addiu $t5, $t5, -0x5c30
/* 086774 800FDD04 3C0FE700 */  lui   $t7, 0xe700
/* 086778 800FDD08 A4850022 */  sh    $a1, 0x22($a0)
/* 08677C 800FDD0C A4850032 */  sh    $a1, 0x32($a0)
/* 086780 800FDD10 C7AA0010 */  lwc1  $f10, 0x10($sp)
/* 086784 800FDD14 4600320D */  trunc.w.s $f8, $f6
/* 086788 800FDD18 3C19FA00 */  lui   $t9, 0xfa00
/* 08678C 800FDD1C 00801825 */  move  $v1, $a0
/* 086790 800FDD20 4600548D */  trunc.w.s $f18, $f10
/* 086794 800FDD24 460C7282 */  mul.s $f10, $f14, $f12
/* 086798 800FDD28 44074000 */  mfc1  $a3, $f8
/* 08679C 800FDD2C 24840070 */  addiu $a0, $a0, 0x70
/* 0867A0 800FDD30 44069000 */  mfc1  $a2, $f18
/* 0867A4 800FDD34 A487FFD4 */  sh    $a3, -0x2c($a0)
/* 0867A8 800FDD38 A486FFD2 */  sh    $a2, -0x2e($a0)
/* 0867AC 800FDD3C 4600548D */  trunc.w.s $f18, $f10
/* 0867B0 800FDD40 C7A00014 */  lwc1  $f0, 0x14($sp)
/* 0867B4 800FDD44 A487FFE4 */  sh    $a3, -0x1c($a0)
/* 0867B8 800FDD48 A486FFE2 */  sh    $a2, -0x1e($a0)
/* 0867BC 800FDD4C 44089000 */  mfc1  $t0, $f18
/* 0867C0 800FDD50 46001202 */  mul.s $f8, $f2, $f0
/* 0867C4 800FDD54 A488FFDA */  sh    $t0, -0x26($a0)
/* 0867C8 800FDD58 A488FFEA */  sh    $t0, -0x16($a0)
/* 0867CC 800FDD5C C7A4000C */  lwc1  $f4, 0xc($sp)
/* 0867D0 800FDD60 4600218D */  trunc.w.s $f6, $f4
/* 0867D4 800FDD64 46007102 */  mul.s $f4, $f14, $f0
/* 0867D8 800FDD68 46104280 */  add.s $f10, $f8, $f16
/* 0867DC 800FDD6C 44053000 */  mfc1  $a1, $f6
/* 0867E0 800FDD70 4600548D */  trunc.w.s $f18, $f10
/* 0867E4 800FDD74 A485FFF2 */  sh    $a1, -0xe($a0)
/* 0867E8 800FDD78 A4850002 */  sh    $a1, 2($a0)
/* 0867EC 800FDD7C 4600218D */  trunc.w.s $f6, $f4
/* 0867F0 800FDD80 44099000 */  mfc1  $t1, $f18
/* 0867F4 800FDD84 44023000 */  mfc1  $v0, $f6
/* 0867F8 800FDD88 A489FFF4 */  sh    $t1, -0xc($a0)
/* 0867FC 800FDD8C A4890004 */  sh    $t1, 4($a0)
/* 086800 800FDD90 A482FFFA */  sh    $v0, -6($a0)
/* 086804 800FDD94 A482000A */  sh    $v0, 0xa($a0)
/* 086808 800FDD98 8DA60000 */  lw    $a2, ($t5)
/* 08680C 800FDD9C 24CE0008 */  addiu $t6, $a2, 8
/* 086810 800FDDA0 ADAE0000 */  sw    $t6, ($t5)
/* 086814 800FDDA4 ACC00004 */  sw    $zero, 4($a2)
/* 086818 800FDDA8 ACCF0000 */  sw    $t7, ($a2)
/* 08681C 800FDDAC 8DA60000 */  lw    $a2, ($t5)
/* 086820 800FDDB0 24D80008 */  addiu $t8, $a2, 8
/* 086824 800FDDB4 ADB80000 */  sw    $t8, ($t5)
/* 086828 800FDDB8 ACD90000 */  sw    $t9, ($a2)
/* 08682C 800FDDBC 8FAE001C */  lw    $t6, 0x1c($sp)
/* 086830 800FDDC0 3C190100 */  lui   $t9, (0x01008010 >> 16) # lui $t9, 0x100
/* 086834 800FDDC4 37398010 */  ori   $t9, (0x01008010 & 0xFFFF) # ori $t9, $t9, 0x8010
/* 086838 800FDDC8 31CF00FF */  andi  $t7, $t6, 0xff
/* 08683C 800FDDCC ACCF0004 */  sw    $t7, 4($a2)
/* 086840 800FDDD0 8DA60000 */  lw    $a2, ($t5)
/* 086844 800FDDD4 3C0F0604 */  lui   $t7, (0x0604060E >> 16) # lui $t7, 0x604
/* 086848 800FDDD8 35EF060E */  ori   $t7, (0x0604060E & 0xFFFF) # ori $t7, $t7, 0x60e
/* 08684C 800FDDDC 24D80008 */  addiu $t8, $a2, 8
/* 086850 800FDDE0 ADB80000 */  sw    $t8, ($t5)
/* 086854 800FDDE4 ACC30004 */  sw    $v1, 4($a2)
/* 086858 800FDDE8 ACD90000 */  sw    $t9, ($a2)
/* 08685C 800FDDEC 8DA60000 */  lw    $a2, ($t5)
/* 086860 800FDDF0 3C18000C */  lui   $t8, (0x000C040E >> 16) # lui $t8, 0xc
/* 086864 800FDDF4 3718040E */  ori   $t8, (0x000C040E & 0xFFFF) # ori $t8, $t8, 0x40e
/* 086868 800FDDF8 24CE0008 */  addiu $t6, $a2, 8
/* 08686C 800FDDFC ADAE0000 */  sw    $t6, ($t5)
/* 086870 800FDE00 ACD80004 */  sw    $t8, 4($a2)
/* 086874 800FDE04 ACCF0000 */  sw    $t7, ($a2)
/* 086878 800FDE08 8DA60000 */  lw    $a2, ($t5)
/* 08687C 800FDE0C 3C0EE700 */  lui   $t6, 0xe700
/* 086880 800FDE10 3C18FA00 */  lui   $t8, 0xfa00
/* 086884 800FDE14 24D90008 */  addiu $t9, $a2, 8
/* 086888 800FDE18 ADB90000 */  sw    $t9, ($t5)
/* 08688C 800FDE1C ACC00004 */  sw    $zero, 4($a2)
/* 086890 800FDE20 ACCE0000 */  sw    $t6, ($a2)
/* 086894 800FDE24 8DA60000 */  lw    $a2, ($t5)
/* 086898 800FDE28 24CF0008 */  addiu $t7, $a2, 8
/* 08689C 800FDE2C ADAF0000 */  sw    $t7, ($t5)
/* 0868A0 800FDE30 ACD80000 */  sw    $t8, ($a2)
/* 0868A4 800FDE34 8FB90020 */  lw    $t9, 0x20($sp)
/* 0868A8 800FDE38 3C180608 */  lui   $t8, (0x06080A02 >> 16) # lui $t8, 0x608
/* 0868AC 800FDE3C 37180A02 */  ori   $t8, (0x06080A02 & 0xFFFF) # ori $t8, $t8, 0xa02
/* 0868B0 800FDE40 332E00FF */  andi  $t6, $t9, 0xff
/* 0868B4 800FDE44 ACCE0004 */  sw    $t6, 4($a2)
/* 0868B8 800FDE48 8DA60000 */  lw    $a2, ($t5)
/* 0868BC 800FDE4C 24190802 */  li    $t9, 2050
/* 0868C0 800FDE50 24CF0008 */  addiu $t7, $a2, 8
/* 0868C4 800FDE54 ADAF0000 */  sw    $t7, ($t5)
/* 0868C8 800FDE58 ACD90004 */  sw    $t9, 4($a2)
/* 0868CC 800FDE5C 03E00008 */  jr    $ra
/* 0868D0 800FDE60 ACD80000 */   sw    $t8, ($a2)
.type func_800FDCB0, @function
.size func_800FDCB0, . - func_800FDCB0
