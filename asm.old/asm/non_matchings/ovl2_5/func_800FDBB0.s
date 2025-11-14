glabel func_800FDBB0
/* 086620 800FDBB0 44869000 */  mtc1  $a2, $f18
/* 086624 800FDBB4 C7B00010 */  lwc1  $f16, 0x10($sp)
/* 086628 800FDBB8 AFA50004 */  sw    $a1, 4($sp)
/* 08662C 800FDBBC 4600948D */  trunc.w.s $f18, $f18
/* 086630 800FDBC0 AFA7000C */  sw    $a3, 0xc($sp)
/* 086634 800FDBC4 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 086638 800FDBC8 44817000 */  mtc1  $at, $f14
/* 08663C 800FDBCC 44039000 */  mfc1  $v1, $f18
/* 086640 800FDBD0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 086644 800FDBD4 46107382 */  mul.s $f14, $f14, $f16
/* 086648 800FDBD8 44819000 */  mtc1  $at, $f18
/* 08664C 800FDBDC A4830002 */  sh    $v1, 2($a0)
/* 086650 800FDBE0 A4830012 */  sh    $v1, 0x12($a0)
/* 086654 800FDBE4 C7AC0004 */  lwc1  $f12, 4($sp)
/* 086658 800FDBE8 3C01457C */  li    $at, 0x457C0000 # 4032.000000
/* 08665C 800FDBEC 44815000 */  mtc1  $at, $f10
/* 086660 800FDBF0 4600630D */  trunc.w.s $f12, $f12
/* 086664 800FDBF4 00801025 */  move  $v0, $a0
/* 086668 800FDBF8 46105402 */  mul.s $f16, $f10, $f16
/* 08666C 800FDBFC 46127480 */  add.s $f18, $f14, $f18
/* 086670 800FDC00 44056000 */  mfc1  $a1, $f12
/* 086674 800FDC04 3C0B8005 */  lui   $t3, %hi(gDisplayListHeads) # $t3, 0x8005
/* 086678 800FDC08 256BA3D0 */  addiu $t3, %lo(gDisplayListHeads) # addiu $t3, $t3, -0x5c30
/* 08667C 800FDC0C A4850022 */  sh    $a1, 0x22($a0)
/* 086680 800FDC10 4600948D */  trunc.w.s $f18, $f18
/* 086684 800FDC14 A4850032 */  sh    $a1, 0x32($a0)
/* 086688 800FDC18 C7AC000C */  lwc1  $f12, 0xc($sp)
/* 08668C 800FDC1C 4600840D */  trunc.w.s $f16, $f16
/* 086690 800FDC20 44079000 */  mfc1  $a3, $f18
/* 086694 800FDC24 3C0E0100 */  lui   $t6, (0x0100600C >> 16) # lui $t6, 0x100
/* 086698 800FDC28 4600630D */  trunc.w.s $f12, $f12
/* 08669C 800FDC2C 44088000 */  mfc1  $t0, $f16
/* 0866A0 800FDC30 A4870044 */  sh    $a3, 0x44($a0)
/* 0866A4 800FDC34 A4870054 */  sh    $a3, 0x54($a0)
/* 0866A8 800FDC38 44066000 */  mfc1  $a2, $f12
/* 0866AC 800FDC3C A488004A */  sh    $t0, 0x4a($a0)
/* 0866B0 800FDC40 A488005A */  sh    $t0, 0x5a($a0)
/* 0866B4 800FDC44 A4860042 */  sh    $a2, 0x42($a0)
/* 0866B8 800FDC48 A4860052 */  sh    $a2, 0x52($a0)
/* 0866BC 800FDC4C 8D650000 */  lw    $a1, ($t3)
/* 0866C0 800FDC50 35CE600C */  ori   $t6, (0x0100600C & 0xFFFF) # ori $t6, $t6, 0x600c
/* 0866C4 800FDC54 3C180604 */  lui   $t8, (0x0604060A >> 16) # lui $t8, 0x604
/* 0866C8 800FDC58 24AD0008 */  addiu $t5, $a1, 8
/* 0866CC 800FDC5C AD6D0000 */  sw    $t5, ($t3)
/* 0866D0 800FDC60 ACAE0000 */  sw    $t6, ($a1)
/* 0866D4 800FDC64 ACA20004 */  sw    $v0, 4($a1)
/* 0866D8 800FDC68 8D650000 */  lw    $a1, ($t3)
/* 0866DC 800FDC6C 3C190008 */  lui   $t9, (0x0008040A >> 16) # lui $t9, 8
/* 0866E0 800FDC70 3718060A */  ori   $t8, (0x0604060A & 0xFFFF) # ori $t8, $t8, 0x60a
/* 0866E4 800FDC74 24AF0008 */  addiu $t7, $a1, 8
/* 0866E8 800FDC78 AD6F0000 */  sw    $t7, ($t3)
/* 0866EC 800FDC7C 3739040A */  ori   $t9, (0x0008040A & 0xFFFF) # ori $t9, $t9, 0x40a
/* 0866F0 800FDC80 ACB80000 */  sw    $t8, ($a1)
/* 0866F4 800FDC84 ACB90004 */  sw    $t9, 4($a1)
/* 0866F8 800FDC88 8D650000 */  lw    $a1, ($t3)
/* 0866FC 800FDC8C 3C0D0608 */  lui   $t5, (0x06080A02 >> 16) # lui $t5, 0x608
/* 086700 800FDC90 35AD0A02 */  ori   $t5, (0x06080A02 & 0xFFFF) # ori $t5, $t5, 0xa02
/* 086704 800FDC94 24AC0008 */  addiu $t4, $a1, 8
/* 086708 800FDC98 AD6C0000 */  sw    $t4, ($t3)
/* 08670C 800FDC9C 240E0802 */  li    $t6, 2050
/* 086710 800FDCA0 24840050 */  addiu $a0, $a0, 0x50
/* 086714 800FDCA4 ACAD0000 */  sw    $t5, ($a1)
/* 086718 800FDCA8 03E00008 */  jr    $ra
/* 08671C 800FDCAC ACAE0004 */   sw    $t6, 4($a1)
.type func_800FDBB0, @function
.size func_800FDBB0, . - func_800FDBB0
