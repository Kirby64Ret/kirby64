glabel func_80123354
/* 0ABDC4 80123354 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0ABDC8 80123358 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0ABDCC 8012335C AFBE0038 */  sw    $fp, 0x38($sp)
/* 0ABDD0 80123360 AFB70034 */  sw    $s7, 0x34($sp)
/* 0ABDD4 80123364 AFB60030 */  sw    $s6, 0x30($sp)
/* 0ABDD8 80123368 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0ABDDC 8012336C AFB40028 */  sw    $s4, 0x28($sp)
/* 0ABDE0 80123370 AFB30024 */  sw    $s3, 0x24($sp)
/* 0ABDE4 80123374 AFB20020 */  sw    $s2, 0x20($sp)
/* 0ABDE8 80123378 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0ABDEC 8012337C AFB00018 */  sw    $s0, 0x18($sp)
/* 0ABDF0 80123380 8C820000 */  lw    $v0, ($a0)
/* 0ABDF4 80123384 3C0E800E */ lui $t6, %hi(D_800DD8D0)
/* 0ABDF8 80123388 0080F025 */  move  $fp, $a0
/* 0ABDFC 8012338C 0002A080 */  sll   $s4, $v0, 2
/* 0ABE00 80123390 01D47021 */  addu  $t6, $t6, $s4
/* 0ABE04 80123394 8DCED8D0 */ lw $t6, %lo(D_800DD8D0)($t6)
/* 0ABE08 80123398 31CF0040 */  andi  $t7, $t6, 0x40
/* 0ABE0C 8012339C 55E002B0 */  bnezl $t7, .L80123E60_ovl2
/* 0ABE10 801233A0 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0ABE14 801233A4 0C02AC3D */  jal   func_800AB0F4
/* 0ABE18 801233A8 00000000 */   nop   
/* 0ABE1C 801233AC 2458FFED */  addiu $t8, $v0, -0x13
/* 0ABE20 801233B0 2F01000C */  sltiu $at, $t8, 0xc
/* 0ABE24 801233B4 102002A9 */  beqz  $at, .L80123E5C_ovl2
/* 0ABE28 801233B8 0018C080 */   sll   $t8, $t8, 2
/* 0ABE2C 801233BC 3C018013 */ lui $at, %hi(D_8012909C)
/* 0ABE30 801233C0 00380821 */  addu  $at, $at, $t8
/* 0ABE34 801233C4 8C38909C */ lw $t8, %lo(D_8012909C)($at)
/* 0ABE38 801233C8 03000008 */  jr    $t8
/* 0ABE3C 801233CC 00000000 */   nop   
/* 0ABE40 801233D0 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0ABE44 801233D4 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0ABE48 801233D8 8E300000 */  lw    $s0, ($s1)
/* 0ABE4C 801233DC 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0ABE50 801233E0 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0ABE54 801233E4 26190008 */  addiu $t9, $s0, 8
/* 0ABE58 801233E8 AE390000 */  sw    $t9, ($s1)
/* 0ABE5C 801233EC 3C0A800E */ lui $t2, %hi(gSegment4StartArray)
/* 0ABE60 801233F0 01545021 */  addu  $t2, $t2, $s4
/* 0ABE64 801233F4 AE070000 */  sw    $a3, ($s0)
/* 0ABE68 801233F8 8D4AF4D0 */ lw $t2, %lo(gSegment4StartArray)($t2)
/* 0ABE6C 801233FC 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0ABE70 80123400 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0ABE74 80123404 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0ABE78 80123408 AE0A0004 */  sw    $t2, 4($s0)
/* 0ABE7C 8012340C 8E65000C */  lw    $a1, 0xc($s3)
/* 0ABE80 80123410 0C02953F */  jal   func_800A54FC
/* 0ABE84 80123414 24847010 */   addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0ABE88 80123418 8E300000 */  lw    $s0, ($s1)
/* 0ABE8C 8012341C 3C16DB02 */  lui   $s6, 0xdb02
/* 0ABE90 80123420 24170018 */  li    $s7, 24
/* 0ABE94 80123424 260B0008 */  addiu $t3, $s0, 8
/* 0ABE98 80123428 AE2B0000 */  sw    $t3, ($s1)
/* 0ABE9C 8012342C AE170004 */  sw    $s7, 4($s0)
/* 0ABEA0 80123430 AE160000 */  sw    $s6, ($s0)
/* 0ABEA4 80123434 8E300000 */  lw    $s0, ($s1)
/* 0ABEA8 80123438 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0ABEAC 8012343C 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0ABEB0 80123440 260C0008 */  addiu $t4, $s0, 8
/* 0ABEB4 80123444 AE2C0000 */  sw    $t4, ($s1)
/* 0ABEB8 80123448 AE140000 */  sw    $s4, ($s0)
/* 0ABEBC 8012344C 8E6D000C */  lw    $t5, 0xc($s3)
/* 0ABEC0 80123450 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0ABEC4 80123454 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0ABEC8 80123458 25AE0008 */  addiu $t6, $t5, 8
/* 0ABECC 8012345C AE0E0004 */  sw    $t6, 4($s0)
/* 0ABED0 80123460 8E300000 */  lw    $s0, ($s1)
/* 0ABED4 80123464 03C02025 */  move  $a0, $fp
/* 0ABED8 80123468 260F0008 */  addiu $t7, $s0, 8
/* 0ABEDC 8012346C AE2F0000 */  sw    $t7, ($s1)
/* 0ABEE0 80123470 AE150000 */  sw    $s5, ($s0)
/* 0ABEE4 80123474 8E78000C */  lw    $t8, 0xc($s3)
/* 0ABEE8 80123478 AE180004 */  sw    $t8, 4($s0)
/* 0ABEEC 8012347C 8E79000C */  lw    $t9, 0xc($s3)
/* 0ABEF0 80123480 272A0018 */  addiu $t2, $t9, 0x18
/* 0ABEF4 80123484 0C02AC48 */  jal   func_800AB120
/* 0ABEF8 80123488 AE6A000C */   sw    $t2, 0xc($s3)
/* 0ABEFC 8012348C 8E300000 */  lw    $s0, ($s1)
/* 0ABF00 80123490 3C0D800C */  lui   $t5, %hi(D_800BE550) # $t5, 0x800c
/* 0ABF04 80123494 25ADE550 */  addiu $t5, %lo(D_800BE550) # addiu $t5, $t5, -0x1ab0
/* 0ABF08 80123498 260B0008 */  addiu $t3, $s0, 8
/* 0ABF0C 8012349C AE2B0000 */  sw    $t3, ($s1)
/* 0ABF10 801234A0 AE170004 */  sw    $s7, 4($s0)
/* 0ABF14 801234A4 AE160000 */  sw    $s6, ($s0)
/* 0ABF18 801234A8 8E300000 */  lw    $s0, ($s1)
/* 0ABF1C 801234AC 3C0F800C */  lui   $t7, %hi(D_800BE548) # $t7, 0x800c
/* 0ABF20 801234B0 25EFE548 */  addiu $t7, %lo(D_800BE548) # addiu $t7, $t7, -0x1ab8
/* 0ABF24 801234B4 260C0008 */  addiu $t4, $s0, 8
/* 0ABF28 801234B8 AE2C0000 */  sw    $t4, ($s1)
/* 0ABF2C 801234BC AE0D0004 */  sw    $t5, 4($s0)
/* 0ABF30 801234C0 AE140000 */  sw    $s4, ($s0)
/* 0ABF34 801234C4 8E300000 */  lw    $s0, ($s1)
/* 0ABF38 801234C8 260E0008 */  addiu $t6, $s0, 8
/* 0ABF3C 801234CC AE2E0000 */  sw    $t6, ($s1)
/* 0ABF40 801234D0 AE0F0004 */  sw    $t7, 4($s0)
/* 0ABF44 801234D4 10000261 */  b     .L80123E5C_ovl2
/* 0ABF48 801234D8 AE150000 */   sw    $s5, ($s0)
/* 0ABF4C 801234DC 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0ABF50 801234E0 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0ABF54 801234E4 8E300000 */  lw    $s0, ($s1)
/* 0ABF58 801234E8 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0ABF5C 801234EC 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0ABF60 801234F0 26180008 */  addiu $t8, $s0, 8
/* 0ABF64 801234F4 AE380000 */  sw    $t8, ($s1)
/* 0ABF68 801234F8 3C19800E */ lui $t9, %hi(gSegment4StartArray)
/* 0ABF6C 801234FC 0334C821 */  addu  $t9, $t9, $s4
/* 0ABF70 80123500 AE070000 */  sw    $a3, ($s0)
/* 0ABF74 80123504 8F39F4D0 */ lw $t9, %lo(gSegment4StartArray)($t9)
/* 0ABF78 80123508 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0ABF7C 8012350C 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0ABF80 80123510 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0ABF84 80123514 AE190004 */  sw    $t9, 4($s0)
/* 0ABF88 80123518 8E65000C */  lw    $a1, 0xc($s3)
/* 0ABF8C 8012351C 0C02953F */  jal   func_800A54FC
/* 0ABF90 80123520 24847010 */   addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0ABF94 80123524 8E300000 */  lw    $s0, ($s1)
/* 0ABF98 80123528 3C16DB02 */  lui   $s6, 0xdb02
/* 0ABF9C 8012352C 24170018 */  li    $s7, 24
/* 0ABFA0 80123530 260A0008 */  addiu $t2, $s0, 8
/* 0ABFA4 80123534 AE2A0000 */  sw    $t2, ($s1)
/* 0ABFA8 80123538 AE170004 */  sw    $s7, 4($s0)
/* 0ABFAC 8012353C AE160000 */  sw    $s6, ($s0)
/* 0ABFB0 80123540 8E300000 */  lw    $s0, ($s1)
/* 0ABFB4 80123544 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0ABFB8 80123548 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0ABFBC 8012354C 260B0008 */  addiu $t3, $s0, 8
/* 0ABFC0 80123550 AE2B0000 */  sw    $t3, ($s1)
/* 0ABFC4 80123554 AE140000 */  sw    $s4, ($s0)
/* 0ABFC8 80123558 8E6C000C */  lw    $t4, 0xc($s3)
/* 0ABFCC 8012355C 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0ABFD0 80123560 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0ABFD4 80123564 258D0008 */  addiu $t5, $t4, 8
/* 0ABFD8 80123568 AE0D0004 */  sw    $t5, 4($s0)
/* 0ABFDC 8012356C 8E300000 */  lw    $s0, ($s1)
/* 0ABFE0 80123570 03C02025 */  move  $a0, $fp
/* 0ABFE4 80123574 260E0008 */  addiu $t6, $s0, 8
/* 0ABFE8 80123578 AE2E0000 */  sw    $t6, ($s1)
/* 0ABFEC 8012357C AE150000 */  sw    $s5, ($s0)
/* 0ABFF0 80123580 8E6F000C */  lw    $t7, 0xc($s3)
/* 0ABFF4 80123584 AE0F0004 */  sw    $t7, 4($s0)
/* 0ABFF8 80123588 8E78000C */  lw    $t8, 0xc($s3)
/* 0ABFFC 8012358C 27190018 */  addiu $t9, $t8, 0x18
/* 0AC000 80123590 0C02AC7C */  jal   func_800AB1F0
/* 0AC004 80123594 AE79000C */   sw    $t9, 0xc($s3)
/* 0AC008 80123598 8E300000 */  lw    $s0, ($s1)
/* 0AC00C 8012359C 3C0C800C */  lui   $t4, %hi(D_800BE550) # $t4, 0x800c
/* 0AC010 801235A0 258CE550 */  addiu $t4, %lo(D_800BE550) # addiu $t4, $t4, -0x1ab0
/* 0AC014 801235A4 260A0008 */  addiu $t2, $s0, 8
/* 0AC018 801235A8 AE2A0000 */  sw    $t2, ($s1)
/* 0AC01C 801235AC AE170004 */  sw    $s7, 4($s0)
/* 0AC020 801235B0 AE160000 */  sw    $s6, ($s0)
/* 0AC024 801235B4 8E300000 */  lw    $s0, ($s1)
/* 0AC028 801235B8 3C0E800C */  lui   $t6, %hi(D_800BE548) # $t6, 0x800c
/* 0AC02C 801235BC 25CEE548 */  addiu $t6, %lo(D_800BE548) # addiu $t6, $t6, -0x1ab8
/* 0AC030 801235C0 260B0008 */  addiu $t3, $s0, 8
/* 0AC034 801235C4 AE2B0000 */  sw    $t3, ($s1)
/* 0AC038 801235C8 AE0C0004 */  sw    $t4, 4($s0)
/* 0AC03C 801235CC AE140000 */  sw    $s4, ($s0)
/* 0AC040 801235D0 8E300000 */  lw    $s0, ($s1)
/* 0AC044 801235D4 260D0008 */  addiu $t5, $s0, 8
/* 0AC048 801235D8 AE2D0000 */  sw    $t5, ($s1)
/* 0AC04C 801235DC AE0E0004 */  sw    $t6, 4($s0)
/* 0AC050 801235E0 1000021E */  b     .L80123E5C_ovl2
/* 0AC054 801235E4 AE150000 */   sw    $s5, ($s0)
/* 0AC058 801235E8 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC05C 801235EC 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC060 801235F0 8E300000 */  lw    $s0, ($s1)
/* 0AC064 801235F4 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC068 801235F8 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC06C 801235FC 260F0008 */  addiu $t7, $s0, 8
/* 0AC070 80123600 AE2F0000 */  sw    $t7, ($s1)
/* 0AC074 80123604 3C18800E */ lui $t8, %hi(gSegment4StartArray)
/* 0AC078 80123608 0314C021 */  addu  $t8, $t8, $s4
/* 0AC07C 8012360C AE070000 */  sw    $a3, ($s0)
/* 0AC080 80123610 8F18F4D0 */ lw $t8, %lo(gSegment4StartArray)($t8)
/* 0AC084 80123614 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC088 80123618 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC08C 8012361C 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC090 80123620 AE180004 */  sw    $t8, 4($s0)
/* 0AC094 80123624 8E65000C */  lw    $a1, 0xc($s3)
/* 0AC098 80123628 0C02953F */  jal   func_800A54FC
/* 0AC09C 8012362C 24847010 */   addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC0A0 80123630 8E300000 */  lw    $s0, ($s1)
/* 0AC0A4 80123634 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC0A8 80123638 24170018 */  li    $s7, 24
/* 0AC0AC 8012363C 26190008 */  addiu $t9, $s0, 8
/* 0AC0B0 80123640 AE390000 */  sw    $t9, ($s1)
/* 0AC0B4 80123644 AE170004 */  sw    $s7, 4($s0)
/* 0AC0B8 80123648 AE160000 */  sw    $s6, ($s0)
/* 0AC0BC 8012364C 8E300000 */  lw    $s0, ($s1)
/* 0AC0C0 80123650 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC0C4 80123654 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC0C8 80123658 260A0008 */  addiu $t2, $s0, 8
/* 0AC0CC 8012365C AE2A0000 */  sw    $t2, ($s1)
/* 0AC0D0 80123660 AE140000 */  sw    $s4, ($s0)
/* 0AC0D4 80123664 8E6B000C */  lw    $t3, 0xc($s3)
/* 0AC0D8 80123668 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC0DC 8012366C 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC0E0 80123670 256C0008 */  addiu $t4, $t3, 8
/* 0AC0E4 80123674 AE0C0004 */  sw    $t4, 4($s0)
/* 0AC0E8 80123678 8E300000 */  lw    $s0, ($s1)
/* 0AC0EC 8012367C 03C02025 */  move  $a0, $fp
/* 0AC0F0 80123680 260D0008 */  addiu $t5, $s0, 8
/* 0AC0F4 80123684 AE2D0000 */  sw    $t5, ($s1)
/* 0AC0F8 80123688 AE150000 */  sw    $s5, ($s0)
/* 0AC0FC 8012368C 8E6E000C */  lw    $t6, 0xc($s3)
/* 0AC100 80123690 AE0E0004 */  sw    $t6, 4($s0)
/* 0AC104 80123694 8E6F000C */  lw    $t7, 0xc($s3)
/* 0AC108 80123698 25F80018 */  addiu $t8, $t7, 0x18
/* 0AC10C 8012369C 0C02ACB0 */  jal   func_800AB2C0
/* 0AC110 801236A0 AE78000C */   sw    $t8, 0xc($s3)
/* 0AC114 801236A4 8E300000 */  lw    $s0, ($s1)
/* 0AC118 801236A8 3C0B800C */  lui   $t3, %hi(D_800BE550) # $t3, 0x800c
/* 0AC11C 801236AC 256BE550 */  addiu $t3, %lo(D_800BE550) # addiu $t3, $t3, -0x1ab0
/* 0AC120 801236B0 26190008 */  addiu $t9, $s0, 8
/* 0AC124 801236B4 AE390000 */  sw    $t9, ($s1)
/* 0AC128 801236B8 AE170004 */  sw    $s7, 4($s0)
/* 0AC12C 801236BC AE160000 */  sw    $s6, ($s0)
/* 0AC130 801236C0 8E300000 */  lw    $s0, ($s1)
/* 0AC134 801236C4 3C0D800C */  lui   $t5, %hi(D_800BE548) # $t5, 0x800c
/* 0AC138 801236C8 25ADE548 */  addiu $t5, %lo(D_800BE548) # addiu $t5, $t5, -0x1ab8
/* 0AC13C 801236CC 260A0008 */  addiu $t2, $s0, 8
/* 0AC140 801236D0 AE2A0000 */  sw    $t2, ($s1)
/* 0AC144 801236D4 AE0B0004 */  sw    $t3, 4($s0)
/* 0AC148 801236D8 AE140000 */  sw    $s4, ($s0)
/* 0AC14C 801236DC 8E300000 */  lw    $s0, ($s1)
/* 0AC150 801236E0 260C0008 */  addiu $t4, $s0, 8
/* 0AC154 801236E4 AE2C0000 */  sw    $t4, ($s1)
/* 0AC158 801236E8 AE0D0004 */  sw    $t5, 4($s0)
/* 0AC15C 801236EC 100001DB */  b     .L80123E5C_ovl2
/* 0AC160 801236F0 AE150000 */   sw    $s5, ($s0)
/* 0AC164 801236F4 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC168 801236F8 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC16C 801236FC 8E300000 */  lw    $s0, ($s1)
/* 0AC170 80123700 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC174 80123704 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC178 80123708 260E0008 */  addiu $t6, $s0, 8
/* 0AC17C 8012370C AE2E0000 */  sw    $t6, ($s1)
/* 0AC180 80123710 3C0F800E */ lui $t7, %hi(gSegment4StartArray)
/* 0AC184 80123714 01F47821 */  addu  $t7, $t7, $s4
/* 0AC188 80123718 AE070000 */  sw    $a3, ($s0)
/* 0AC18C 8012371C 8DEFF4D0 */ lw $t7, %lo(gSegment4StartArray)($t7)
/* 0AC190 80123720 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC194 80123724 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC198 80123728 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC19C 8012372C AE0F0004 */  sw    $t7, 4($s0)
/* 0AC1A0 80123730 8E65000C */  lw    $a1, 0xc($s3)
/* 0AC1A4 80123734 0C02953F */  jal   func_800A54FC
/* 0AC1A8 80123738 24847010 */   addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC1AC 8012373C 8E300000 */  lw    $s0, ($s1)
/* 0AC1B0 80123740 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC1B4 80123744 24170018 */  li    $s7, 24
/* 0AC1B8 80123748 26180008 */  addiu $t8, $s0, 8
/* 0AC1BC 8012374C AE380000 */  sw    $t8, ($s1)
/* 0AC1C0 80123750 AE170004 */  sw    $s7, 4($s0)
/* 0AC1C4 80123754 AE160000 */  sw    $s6, ($s0)
/* 0AC1C8 80123758 8E300000 */  lw    $s0, ($s1)
/* 0AC1CC 8012375C 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC1D0 80123760 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC1D4 80123764 26190008 */  addiu $t9, $s0, 8
/* 0AC1D8 80123768 AE390000 */  sw    $t9, ($s1)
/* 0AC1DC 8012376C AE140000 */  sw    $s4, ($s0)
/* 0AC1E0 80123770 8E6A000C */  lw    $t2, 0xc($s3)
/* 0AC1E4 80123774 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC1E8 80123778 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC1EC 8012377C 254B0008 */  addiu $t3, $t2, 8
/* 0AC1F0 80123780 AE0B0004 */  sw    $t3, 4($s0)
/* 0AC1F4 80123784 8E300000 */  lw    $s0, ($s1)
/* 0AC1F8 80123788 03C02025 */  move  $a0, $fp
/* 0AC1FC 8012378C 260C0008 */  addiu $t4, $s0, 8
/* 0AC200 80123790 AE2C0000 */  sw    $t4, ($s1)
/* 0AC204 80123794 AE150000 */  sw    $s5, ($s0)
/* 0AC208 80123798 8E6D000C */  lw    $t5, 0xc($s3)
/* 0AC20C 8012379C AE0D0004 */  sw    $t5, 4($s0)
/* 0AC210 801237A0 8E6E000C */  lw    $t6, 0xc($s3)
/* 0AC214 801237A4 25CF0018 */  addiu $t7, $t6, 0x18
/* 0AC218 801237A8 0C02ACE8 */  jal   func_800AB3A0
/* 0AC21C 801237AC AE6F000C */   sw    $t7, 0xc($s3)
/* 0AC220 801237B0 8E300000 */  lw    $s0, ($s1)
/* 0AC224 801237B4 3C0A800C */  lui   $t2, %hi(D_800BE550) # $t2, 0x800c
/* 0AC228 801237B8 254AE550 */  addiu $t2, %lo(D_800BE550) # addiu $t2, $t2, -0x1ab0
/* 0AC22C 801237BC 26180008 */  addiu $t8, $s0, 8
/* 0AC230 801237C0 AE380000 */  sw    $t8, ($s1)
/* 0AC234 801237C4 AE170004 */  sw    $s7, 4($s0)
/* 0AC238 801237C8 AE160000 */  sw    $s6, ($s0)
/* 0AC23C 801237CC 8E300000 */  lw    $s0, ($s1)
/* 0AC240 801237D0 3C0C800C */  lui   $t4, %hi(D_800BE548) # $t4, 0x800c
/* 0AC244 801237D4 258CE548 */  addiu $t4, %lo(D_800BE548) # addiu $t4, $t4, -0x1ab8
/* 0AC248 801237D8 26190008 */  addiu $t9, $s0, 8
/* 0AC24C 801237DC AE390000 */  sw    $t9, ($s1)
/* 0AC250 801237E0 AE0A0004 */  sw    $t2, 4($s0)
/* 0AC254 801237E4 AE140000 */  sw    $s4, ($s0)
/* 0AC258 801237E8 8E300000 */  lw    $s0, ($s1)
/* 0AC25C 801237EC 260B0008 */  addiu $t3, $s0, 8
/* 0AC260 801237F0 AE2B0000 */  sw    $t3, ($s1)
/* 0AC264 801237F4 AE0C0004 */  sw    $t4, 4($s0)
/* 0AC268 801237F8 10000198 */  b     .L80123E5C_ovl2
/* 0AC26C 801237FC AE150000 */   sw    $s5, ($s0)
/* 0AC270 80123800 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC274 80123804 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC278 80123808 8E300000 */  lw    $s0, ($s1)
/* 0AC27C 8012380C 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC280 80123810 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0AC284 80123814 260D0008 */  addiu $t5, $s0, 8
/* 0AC288 80123818 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC28C 8012381C AE2D0000 */  sw    $t5, ($s1)
/* 0AC290 80123820 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0AC294 80123824 028E1021 */  addu  $v0, $s4, $t6
/* 0AC298 80123828 AE070000 */  sw    $a3, ($s0)
/* 0AC29C 8012382C 8C4F0000 */  lw    $t7, ($v0)
/* 0AC2A0 80123830 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC2A4 80123834 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC2A8 80123838 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC2AC 8012383C 8E320004 */  lw    $s2, 4($s1)
/* 0AC2B0 80123840 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC2B4 80123844 24847010 */  addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC2B8 80123848 26580008 */  addiu $t8, $s2, 8
/* 0AC2BC 8012384C AE380004 */  sw    $t8, 4($s1)
/* 0AC2C0 80123850 AE470000 */  sw    $a3, ($s2)
/* 0AC2C4 80123854 8C590000 */  lw    $t9, ($v0)
/* 0AC2C8 80123858 AE590004 */  sw    $t9, 4($s2)
/* 0AC2CC 8012385C 0C02953F */  jal   func_800A54FC
/* 0AC2D0 80123860 8E65000C */   lw    $a1, 0xc($s3)
/* 0AC2D4 80123864 8E300000 */  lw    $s0, ($s1)
/* 0AC2D8 80123868 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC2DC 8012386C 24170018 */  li    $s7, 24
/* 0AC2E0 80123870 260A0008 */  addiu $t2, $s0, 8
/* 0AC2E4 80123874 AE2A0000 */  sw    $t2, ($s1)
/* 0AC2E8 80123878 AE170004 */  sw    $s7, 4($s0)
/* 0AC2EC 8012387C AE160000 */  sw    $s6, ($s0)
/* 0AC2F0 80123880 8E300000 */  lw    $s0, ($s1)
/* 0AC2F4 80123884 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC2F8 80123888 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC2FC 8012388C 260B0008 */  addiu $t3, $s0, 8
/* 0AC300 80123890 AE2B0000 */  sw    $t3, ($s1)
/* 0AC304 80123894 AE140000 */  sw    $s4, ($s0)
/* 0AC308 80123898 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC30C 8012389C 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC310 801238A0 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC314 801238A4 258D0008 */  addiu $t5, $t4, 8
/* 0AC318 801238A8 AE0D0004 */  sw    $t5, 4($s0)
/* 0AC31C 801238AC 8E300000 */  lw    $s0, ($s1)
/* 0AC320 801238B0 03C02025 */  move  $a0, $fp
/* 0AC324 801238B4 260E0008 */  addiu $t6, $s0, 8
/* 0AC328 801238B8 AE2E0000 */  sw    $t6, ($s1)
/* 0AC32C 801238BC AE150000 */  sw    $s5, ($s0)
/* 0AC330 801238C0 8E6F000C */  lw    $t7, 0xc($s3)
/* 0AC334 801238C4 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC338 801238C8 8E320004 */  lw    $s2, 4($s1)
/* 0AC33C 801238CC 26580008 */  addiu $t8, $s2, 8
/* 0AC340 801238D0 AE380004 */  sw    $t8, 4($s1)
/* 0AC344 801238D4 AE540000 */  sw    $s4, ($s2)
/* 0AC348 801238D8 8E79000C */  lw    $t9, 0xc($s3)
/* 0AC34C 801238DC 272A0008 */  addiu $t2, $t9, 8
/* 0AC350 801238E0 AE4A0004 */  sw    $t2, 4($s2)
/* 0AC354 801238E4 8E320004 */  lw    $s2, 4($s1)
/* 0AC358 801238E8 264B0008 */  addiu $t3, $s2, 8
/* 0AC35C 801238EC AE2B0004 */  sw    $t3, 4($s1)
/* 0AC360 801238F0 AE550000 */  sw    $s5, ($s2)
/* 0AC364 801238F4 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC368 801238F8 AE4C0004 */  sw    $t4, 4($s2)
/* 0AC36C 801238FC 8E6D000C */  lw    $t5, 0xc($s3)
/* 0AC370 80123900 25AE0018 */  addiu $t6, $t5, 0x18
/* 0AC374 80123904 0C02AC5D */  jal   func_800AB174
/* 0AC378 80123908 AE6E000C */   sw    $t6, 0xc($s3)
/* 0AC37C 8012390C 8E300000 */  lw    $s0, ($s1)
/* 0AC380 80123910 3C02800C */  lui   $v0, %hi(D_800BE550) # $v0, 0x800c
/* 0AC384 80123914 2442E550 */  addiu $v0, %lo(D_800BE550) # addiu $v0, $v0, -0x1ab0
/* 0AC388 80123918 260F0008 */  addiu $t7, $s0, 8
/* 0AC38C 8012391C AE2F0000 */  sw    $t7, ($s1)
/* 0AC390 80123920 AE170004 */  sw    $s7, 4($s0)
/* 0AC394 80123924 AE160000 */  sw    $s6, ($s0)
/* 0AC398 80123928 8E300000 */  lw    $s0, ($s1)
/* 0AC39C 8012392C 3C03800C */  lui   $v1, %hi(D_800BE548) # $v1, 0x800c
/* 0AC3A0 80123930 2463E548 */  addiu $v1, %lo(D_800BE548) # addiu $v1, $v1, -0x1ab8
/* 0AC3A4 80123934 26180008 */  addiu $t8, $s0, 8
/* 0AC3A8 80123938 AE380000 */  sw    $t8, ($s1)
/* 0AC3AC 8012393C AE020004 */  sw    $v0, 4($s0)
/* 0AC3B0 80123940 AE140000 */  sw    $s4, ($s0)
/* 0AC3B4 80123944 8E300000 */  lw    $s0, ($s1)
/* 0AC3B8 80123948 26190008 */  addiu $t9, $s0, 8
/* 0AC3BC 8012394C AE390000 */  sw    $t9, ($s1)
/* 0AC3C0 80123950 AE030004 */  sw    $v1, 4($s0)
/* 0AC3C4 80123954 AE150000 */  sw    $s5, ($s0)
/* 0AC3C8 80123958 8E320004 */  lw    $s2, 4($s1)
/* 0AC3CC 8012395C 264A0008 */  addiu $t2, $s2, 8
/* 0AC3D0 80123960 AE2A0004 */  sw    $t2, 4($s1)
/* 0AC3D4 80123964 AE570004 */  sw    $s7, 4($s2)
/* 0AC3D8 80123968 AE560000 */  sw    $s6, ($s2)
/* 0AC3DC 8012396C 8E320004 */  lw    $s2, 4($s1)
/* 0AC3E0 80123970 264B0008 */  addiu $t3, $s2, 8
/* 0AC3E4 80123974 AE2B0004 */  sw    $t3, 4($s1)
/* 0AC3E8 80123978 AE420004 */  sw    $v0, 4($s2)
/* 0AC3EC 8012397C AE540000 */  sw    $s4, ($s2)
/* 0AC3F0 80123980 8E320004 */  lw    $s2, 4($s1)
/* 0AC3F4 80123984 264C0008 */  addiu $t4, $s2, 8
/* 0AC3F8 80123988 AE2C0004 */  sw    $t4, 4($s1)
/* 0AC3FC 8012398C AE430004 */  sw    $v1, 4($s2)
/* 0AC400 80123990 10000132 */  b     .L80123E5C_ovl2
/* 0AC404 80123994 AE550000 */   sw    $s5, ($s2)
/* 0AC408 80123998 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC40C 8012399C 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC410 801239A0 8E300000 */  lw    $s0, ($s1)
/* 0AC414 801239A4 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC418 801239A8 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0AC41C 801239AC 260D0008 */  addiu $t5, $s0, 8
/* 0AC420 801239B0 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC424 801239B4 AE2D0000 */  sw    $t5, ($s1)
/* 0AC428 801239B8 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0AC42C 801239BC 028E1021 */  addu  $v0, $s4, $t6
/* 0AC430 801239C0 AE070000 */  sw    $a3, ($s0)
/* 0AC434 801239C4 8C4F0000 */  lw    $t7, ($v0)
/* 0AC438 801239C8 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC43C 801239CC 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC440 801239D0 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC444 801239D4 8E320004 */  lw    $s2, 4($s1)
/* 0AC448 801239D8 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC44C 801239DC 24847010 */  addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC450 801239E0 26580008 */  addiu $t8, $s2, 8
/* 0AC454 801239E4 AE380004 */  sw    $t8, 4($s1)
/* 0AC458 801239E8 AE470000 */  sw    $a3, ($s2)
/* 0AC45C 801239EC 8C590000 */  lw    $t9, ($v0)
/* 0AC460 801239F0 AE590004 */  sw    $t9, 4($s2)
/* 0AC464 801239F4 0C02953F */  jal   func_800A54FC
/* 0AC468 801239F8 8E65000C */   lw    $a1, 0xc($s3)
/* 0AC46C 801239FC 8E300000 */  lw    $s0, ($s1)
/* 0AC470 80123A00 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC474 80123A04 24170018 */  li    $s7, 24
/* 0AC478 80123A08 260A0008 */  addiu $t2, $s0, 8
/* 0AC47C 80123A0C AE2A0000 */  sw    $t2, ($s1)
/* 0AC480 80123A10 AE170004 */  sw    $s7, 4($s0)
/* 0AC484 80123A14 AE160000 */  sw    $s6, ($s0)
/* 0AC488 80123A18 8E300000 */  lw    $s0, ($s1)
/* 0AC48C 80123A1C 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC490 80123A20 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC494 80123A24 260B0008 */  addiu $t3, $s0, 8
/* 0AC498 80123A28 AE2B0000 */  sw    $t3, ($s1)
/* 0AC49C 80123A2C AE140000 */  sw    $s4, ($s0)
/* 0AC4A0 80123A30 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC4A4 80123A34 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC4A8 80123A38 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC4AC 80123A3C 258D0008 */  addiu $t5, $t4, 8
/* 0AC4B0 80123A40 AE0D0004 */  sw    $t5, 4($s0)
/* 0AC4B4 80123A44 8E300000 */  lw    $s0, ($s1)
/* 0AC4B8 80123A48 03C02025 */  move  $a0, $fp
/* 0AC4BC 80123A4C 260E0008 */  addiu $t6, $s0, 8
/* 0AC4C0 80123A50 AE2E0000 */  sw    $t6, ($s1)
/* 0AC4C4 80123A54 AE150000 */  sw    $s5, ($s0)
/* 0AC4C8 80123A58 8E6F000C */  lw    $t7, 0xc($s3)
/* 0AC4CC 80123A5C AE0F0004 */  sw    $t7, 4($s0)
/* 0AC4D0 80123A60 8E320004 */  lw    $s2, 4($s1)
/* 0AC4D4 80123A64 26580008 */  addiu $t8, $s2, 8
/* 0AC4D8 80123A68 AE380004 */  sw    $t8, 4($s1)
/* 0AC4DC 80123A6C AE540000 */  sw    $s4, ($s2)
/* 0AC4E0 80123A70 8E79000C */  lw    $t9, 0xc($s3)
/* 0AC4E4 80123A74 272A0008 */  addiu $t2, $t9, 8
/* 0AC4E8 80123A78 AE4A0004 */  sw    $t2, 4($s2)
/* 0AC4EC 80123A7C 8E320004 */  lw    $s2, 4($s1)
/* 0AC4F0 80123A80 264B0008 */  addiu $t3, $s2, 8
/* 0AC4F4 80123A84 AE2B0004 */  sw    $t3, 4($s1)
/* 0AC4F8 80123A88 AE550000 */  sw    $s5, ($s2)
/* 0AC4FC 80123A8C 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC500 80123A90 AE4C0004 */  sw    $t4, 4($s2)
/* 0AC504 80123A94 8E6D000C */  lw    $t5, 0xc($s3)
/* 0AC508 80123A98 25AE0018 */  addiu $t6, $t5, 0x18
/* 0AC50C 80123A9C 0C02AC91 */  jal   func_800AB244
/* 0AC510 80123AA0 AE6E000C */   sw    $t6, 0xc($s3)
/* 0AC514 80123AA4 8E300000 */  lw    $s0, ($s1)
/* 0AC518 80123AA8 3C02800C */  lui   $v0, %hi(D_800BE550) # $v0, 0x800c
/* 0AC51C 80123AAC 2442E550 */  addiu $v0, %lo(D_800BE550) # addiu $v0, $v0, -0x1ab0
/* 0AC520 80123AB0 260F0008 */  addiu $t7, $s0, 8
/* 0AC524 80123AB4 AE2F0000 */  sw    $t7, ($s1)
/* 0AC528 80123AB8 AE170004 */  sw    $s7, 4($s0)
/* 0AC52C 80123ABC AE160000 */  sw    $s6, ($s0)
/* 0AC530 80123AC0 8E300000 */  lw    $s0, ($s1)
/* 0AC534 80123AC4 3C03800C */  lui   $v1, %hi(D_800BE548) # $v1, 0x800c
/* 0AC538 80123AC8 2463E548 */  addiu $v1, %lo(D_800BE548) # addiu $v1, $v1, -0x1ab8
/* 0AC53C 80123ACC 26180008 */  addiu $t8, $s0, 8
/* 0AC540 80123AD0 AE380000 */  sw    $t8, ($s1)
/* 0AC544 80123AD4 AE020004 */  sw    $v0, 4($s0)
/* 0AC548 80123AD8 AE140000 */  sw    $s4, ($s0)
/* 0AC54C 80123ADC 8E300000 */  lw    $s0, ($s1)
/* 0AC550 80123AE0 26190008 */  addiu $t9, $s0, 8
/* 0AC554 80123AE4 AE390000 */  sw    $t9, ($s1)
/* 0AC558 80123AE8 AE030004 */  sw    $v1, 4($s0)
/* 0AC55C 80123AEC AE150000 */  sw    $s5, ($s0)
/* 0AC560 80123AF0 8E320004 */  lw    $s2, 4($s1)
/* 0AC564 80123AF4 264A0008 */  addiu $t2, $s2, 8
/* 0AC568 80123AF8 AE2A0004 */  sw    $t2, 4($s1)
/* 0AC56C 80123AFC AE570004 */  sw    $s7, 4($s2)
/* 0AC570 80123B00 AE560000 */  sw    $s6, ($s2)
/* 0AC574 80123B04 8E320004 */  lw    $s2, 4($s1)
/* 0AC578 80123B08 264B0008 */  addiu $t3, $s2, 8
/* 0AC57C 80123B0C AE2B0004 */  sw    $t3, 4($s1)
/* 0AC580 80123B10 AE420004 */  sw    $v0, 4($s2)
/* 0AC584 80123B14 AE540000 */  sw    $s4, ($s2)
/* 0AC588 80123B18 8E320004 */  lw    $s2, 4($s1)
/* 0AC58C 80123B1C 264C0008 */  addiu $t4, $s2, 8
/* 0AC590 80123B20 AE2C0004 */  sw    $t4, 4($s1)
/* 0AC594 80123B24 AE430004 */  sw    $v1, 4($s2)
/* 0AC598 80123B28 100000CC */  b     .L80123E5C_ovl2
/* 0AC59C 80123B2C AE550000 */   sw    $s5, ($s2)
/* 0AC5A0 80123B30 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC5A4 80123B34 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC5A8 80123B38 8E300000 */  lw    $s0, ($s1)
/* 0AC5AC 80123B3C 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC5B0 80123B40 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0AC5B4 80123B44 260D0008 */  addiu $t5, $s0, 8
/* 0AC5B8 80123B48 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC5BC 80123B4C AE2D0000 */  sw    $t5, ($s1)
/* 0AC5C0 80123B50 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0AC5C4 80123B54 028E1021 */  addu  $v0, $s4, $t6
/* 0AC5C8 80123B58 AE070000 */  sw    $a3, ($s0)
/* 0AC5CC 80123B5C 8C4F0000 */  lw    $t7, ($v0)
/* 0AC5D0 80123B60 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC5D4 80123B64 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC5D8 80123B68 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC5DC 80123B6C 8E320004 */  lw    $s2, 4($s1)
/* 0AC5E0 80123B70 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC5E4 80123B74 24847010 */  addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC5E8 80123B78 26580008 */  addiu $t8, $s2, 8
/* 0AC5EC 80123B7C AE380004 */  sw    $t8, 4($s1)
/* 0AC5F0 80123B80 AE470000 */  sw    $a3, ($s2)
/* 0AC5F4 80123B84 8C590000 */  lw    $t9, ($v0)
/* 0AC5F8 80123B88 AE590004 */  sw    $t9, 4($s2)
/* 0AC5FC 80123B8C 0C02953F */  jal   func_800A54FC
/* 0AC600 80123B90 8E65000C */   lw    $a1, 0xc($s3)
/* 0AC604 80123B94 8E300000 */  lw    $s0, ($s1)
/* 0AC608 80123B98 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC60C 80123B9C 24170018 */  li    $s7, 24
/* 0AC610 80123BA0 260A0008 */  addiu $t2, $s0, 8
/* 0AC614 80123BA4 AE2A0000 */  sw    $t2, ($s1)
/* 0AC618 80123BA8 AE170004 */  sw    $s7, 4($s0)
/* 0AC61C 80123BAC AE160000 */  sw    $s6, ($s0)
/* 0AC620 80123BB0 8E300000 */  lw    $s0, ($s1)
/* 0AC624 80123BB4 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC628 80123BB8 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC62C 80123BBC 260B0008 */  addiu $t3, $s0, 8
/* 0AC630 80123BC0 AE2B0000 */  sw    $t3, ($s1)
/* 0AC634 80123BC4 AE140000 */  sw    $s4, ($s0)
/* 0AC638 80123BC8 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC63C 80123BCC 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC640 80123BD0 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC644 80123BD4 258D0008 */  addiu $t5, $t4, 8
/* 0AC648 80123BD8 AE0D0004 */  sw    $t5, 4($s0)
/* 0AC64C 80123BDC 8E300000 */  lw    $s0, ($s1)
/* 0AC650 80123BE0 03C02025 */  move  $a0, $fp
/* 0AC654 80123BE4 260E0008 */  addiu $t6, $s0, 8
/* 0AC658 80123BE8 AE2E0000 */  sw    $t6, ($s1)
/* 0AC65C 80123BEC AE150000 */  sw    $s5, ($s0)
/* 0AC660 80123BF0 8E6F000C */  lw    $t7, 0xc($s3)
/* 0AC664 80123BF4 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC668 80123BF8 8E320004 */  lw    $s2, 4($s1)
/* 0AC66C 80123BFC 26580008 */  addiu $t8, $s2, 8
/* 0AC670 80123C00 AE380004 */  sw    $t8, 4($s1)
/* 0AC674 80123C04 AE540000 */  sw    $s4, ($s2)
/* 0AC678 80123C08 8E79000C */  lw    $t9, 0xc($s3)
/* 0AC67C 80123C0C 272A0008 */  addiu $t2, $t9, 8
/* 0AC680 80123C10 AE4A0004 */  sw    $t2, 4($s2)
/* 0AC684 80123C14 8E320004 */  lw    $s2, 4($s1)
/* 0AC688 80123C18 264B0008 */  addiu $t3, $s2, 8
/* 0AC68C 80123C1C AE2B0004 */  sw    $t3, 4($s1)
/* 0AC690 80123C20 AE550000 */  sw    $s5, ($s2)
/* 0AC694 80123C24 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC698 80123C28 AE4C0004 */  sw    $t4, 4($s2)
/* 0AC69C 80123C2C 8E6D000C */  lw    $t5, 0xc($s3)
/* 0AC6A0 80123C30 25AE0018 */  addiu $t6, $t5, 0x18
/* 0AC6A4 80123C34 0C02ACC5 */  jal   func_800AB314
/* 0AC6A8 80123C38 AE6E000C */   sw    $t6, 0xc($s3)
/* 0AC6AC 80123C3C 8E300000 */  lw    $s0, ($s1)
/* 0AC6B0 80123C40 3C02800C */  lui   $v0, %hi(D_800BE550) # $v0, 0x800c
/* 0AC6B4 80123C44 2442E550 */  addiu $v0, %lo(D_800BE550) # addiu $v0, $v0, -0x1ab0
/* 0AC6B8 80123C48 260F0008 */  addiu $t7, $s0, 8
/* 0AC6BC 80123C4C AE2F0000 */  sw    $t7, ($s1)
/* 0AC6C0 80123C50 AE170004 */  sw    $s7, 4($s0)
/* 0AC6C4 80123C54 AE160000 */  sw    $s6, ($s0)
/* 0AC6C8 80123C58 8E300000 */  lw    $s0, ($s1)
/* 0AC6CC 80123C5C 3C03800C */  lui   $v1, %hi(D_800BE548) # $v1, 0x800c
/* 0AC6D0 80123C60 2463E548 */  addiu $v1, %lo(D_800BE548) # addiu $v1, $v1, -0x1ab8
/* 0AC6D4 80123C64 26180008 */  addiu $t8, $s0, 8
/* 0AC6D8 80123C68 AE380000 */  sw    $t8, ($s1)
/* 0AC6DC 80123C6C AE020004 */  sw    $v0, 4($s0)
/* 0AC6E0 80123C70 AE140000 */  sw    $s4, ($s0)
/* 0AC6E4 80123C74 8E300000 */  lw    $s0, ($s1)
/* 0AC6E8 80123C78 26190008 */  addiu $t9, $s0, 8
/* 0AC6EC 80123C7C AE390000 */  sw    $t9, ($s1)
/* 0AC6F0 80123C80 AE030004 */  sw    $v1, 4($s0)
/* 0AC6F4 80123C84 AE150000 */  sw    $s5, ($s0)
/* 0AC6F8 80123C88 8E320004 */  lw    $s2, 4($s1)
/* 0AC6FC 80123C8C 264A0008 */  addiu $t2, $s2, 8
/* 0AC700 80123C90 AE2A0004 */  sw    $t2, 4($s1)
/* 0AC704 80123C94 AE570004 */  sw    $s7, 4($s2)
/* 0AC708 80123C98 AE560000 */  sw    $s6, ($s2)
/* 0AC70C 80123C9C 8E320004 */  lw    $s2, 4($s1)
/* 0AC710 80123CA0 264B0008 */  addiu $t3, $s2, 8
/* 0AC714 80123CA4 AE2B0004 */  sw    $t3, 4($s1)
/* 0AC718 80123CA8 AE420004 */  sw    $v0, 4($s2)
/* 0AC71C 80123CAC AE540000 */  sw    $s4, ($s2)
/* 0AC720 80123CB0 8E320004 */  lw    $s2, 4($s1)
/* 0AC724 80123CB4 264C0008 */  addiu $t4, $s2, 8
/* 0AC728 80123CB8 AE2C0004 */  sw    $t4, 4($s1)
/* 0AC72C 80123CBC AE430004 */  sw    $v1, 4($s2)
/* 0AC730 80123CC0 10000066 */  b     .L80123E5C_ovl2
/* 0AC734 80123CC4 AE550000 */   sw    $s5, ($s2)
/* 0AC738 80123CC8 3C118005 */  lui   $s1, %hi(gDisplayListHeads) # $s1, 0x8005
/* 0AC73C 80123CCC 2631A3D0 */  addiu $s1, %lo(gDisplayListHeads) # addiu $s1, $s1, -0x5c30
/* 0AC740 80123CD0 8E300000 */  lw    $s0, ($s1)
/* 0AC744 80123CD4 3C07DB06 */  lui   $a3, (0xDB060010 >> 16) # lui $a3, 0xdb06
/* 0AC748 80123CD8 3C0E800E */  lui   $t6, %hi(gSegment4StartArray) # $t6, 0x800e
/* 0AC74C 80123CDC 260D0008 */  addiu $t5, $s0, 8
/* 0AC750 80123CE0 34E70010 */  ori   $a3, (0xDB060010 & 0xFFFF) # ori $a3, $a3, 0x10
/* 0AC754 80123CE4 AE2D0000 */  sw    $t5, ($s1)
/* 0AC758 80123CE8 25CEF4D0 */  addiu $t6, %lo(gSegment4StartArray) # addiu $t6, $t6, -0xb30
/* 0AC75C 80123CEC 028E1021 */  addu  $v0, $s4, $t6
/* 0AC760 80123CF0 AE070000 */  sw    $a3, ($s0)
/* 0AC764 80123CF4 8C4F0000 */  lw    $t7, ($v0)
/* 0AC768 80123CF8 3C138005 */  lui   $s3, %hi(gDynamicBuffer1) # $s3, 0x8005
/* 0AC76C 80123CFC 2673A3F8 */  addiu $s3, %lo(gDynamicBuffer1) # addiu $s3, $s3, -0x5c08
/* 0AC770 80123D00 AE0F0004 */  sw    $t7, 4($s0)
/* 0AC774 80123D04 8E320004 */  lw    $s2, 4($s1)
/* 0AC778 80123D08 3C04800D */  lui   $a0, %hi(D_800D7010) # $a0, 0x800d
/* 0AC77C 80123D0C 24847010 */  addiu $a0, %lo(D_800D7010) # addiu $a0, $a0, 0x7010
/* 0AC780 80123D10 26580008 */  addiu $t8, $s2, 8
/* 0AC784 80123D14 AE380004 */  sw    $t8, 4($s1)
/* 0AC788 80123D18 AE470000 */  sw    $a3, ($s2)
/* 0AC78C 80123D1C 8C590000 */  lw    $t9, ($v0)
/* 0AC790 80123D20 AE590004 */  sw    $t9, 4($s2)
/* 0AC794 80123D24 0C02953F */  jal   func_800A54FC
/* 0AC798 80123D28 8E65000C */   lw    $a1, 0xc($s3)
/* 0AC79C 80123D2C 8E300000 */  lw    $s0, ($s1)
/* 0AC7A0 80123D30 3C16DB02 */  lui   $s6, 0xdb02
/* 0AC7A4 80123D34 24170018 */  li    $s7, 24
/* 0AC7A8 80123D38 260A0008 */  addiu $t2, $s0, 8
/* 0AC7AC 80123D3C AE2A0000 */  sw    $t2, ($s1)
/* 0AC7B0 80123D40 AE170004 */  sw    $s7, 4($s0)
/* 0AC7B4 80123D44 AE160000 */  sw    $s6, ($s0)
/* 0AC7B8 80123D48 8E300000 */  lw    $s0, ($s1)
/* 0AC7BC 80123D4C 3C14DC08 */  lui   $s4, (0xDC08060A >> 16) # lui $s4, 0xdc08
/* 0AC7C0 80123D50 3694060A */  ori   $s4, (0xDC08060A & 0xFFFF) # ori $s4, $s4, 0x60a
/* 0AC7C4 80123D54 260B0008 */  addiu $t3, $s0, 8
/* 0AC7C8 80123D58 AE2B0000 */  sw    $t3, ($s1)
/* 0AC7CC 80123D5C AE140000 */  sw    $s4, ($s0)
/* 0AC7D0 80123D60 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC7D4 80123D64 3C15DC08 */  lui   $s5, (0xDC08090A >> 16) # lui $s5, 0xdc08
/* 0AC7D8 80123D68 36B5090A */  ori   $s5, (0xDC08090A & 0xFFFF) # ori $s5, $s5, 0x90a
/* 0AC7DC 80123D6C 258D0008 */  addiu $t5, $t4, 8
/* 0AC7E0 80123D70 AE0D0004 */  sw    $t5, 4($s0)
/* 0AC7E4 80123D74 8E300000 */  lw    $s0, ($s1)
/* 0AC7E8 80123D78 03C02025 */  move  $a0, $fp
/* 0AC7EC 80123D7C 260E0008 */  addiu $t6, $s0, 8
/* 0AC7F0 80123D80 AE2E0000 */  sw    $t6, ($s1)
/* 0AC7F4 80123D84 AE150000 */  sw    $s5, ($s0)
/* 0AC7F8 80123D88 8E6F000C */  lw    $t7, 0xc($s3)
/* 0AC7FC 80123D8C AE0F0004 */  sw    $t7, 4($s0)
/* 0AC800 80123D90 8E320004 */  lw    $s2, 4($s1)
/* 0AC804 80123D94 26580008 */  addiu $t8, $s2, 8
/* 0AC808 80123D98 AE380004 */  sw    $t8, 4($s1)
/* 0AC80C 80123D9C AE540000 */  sw    $s4, ($s2)
/* 0AC810 80123DA0 8E79000C */  lw    $t9, 0xc($s3)
/* 0AC814 80123DA4 272A0008 */  addiu $t2, $t9, 8
/* 0AC818 80123DA8 AE4A0004 */  sw    $t2, 4($s2)
/* 0AC81C 80123DAC 8E320004 */  lw    $s2, 4($s1)
/* 0AC820 80123DB0 264B0008 */  addiu $t3, $s2, 8
/* 0AC824 80123DB4 AE2B0004 */  sw    $t3, 4($s1)
/* 0AC828 80123DB8 AE550000 */  sw    $s5, ($s2)
/* 0AC82C 80123DBC 8E6C000C */  lw    $t4, 0xc($s3)
/* 0AC830 80123DC0 AE4C0004 */  sw    $t4, 4($s2)
/* 0AC834 80123DC4 8E6D000C */  lw    $t5, 0xc($s3)
/* 0AC838 80123DC8 25AE0018 */  addiu $t6, $t5, 0x18
/* 0AC83C 80123DCC 0C02ACFD */  jal   func_800AB3F4
/* 0AC840 80123DD0 AE6E000C */   sw    $t6, 0xc($s3)
/* 0AC844 80123DD4 8E300000 */  lw    $s0, ($s1)
/* 0AC848 80123DD8 3C02800C */  lui   $v0, %hi(D_800BE550) # $v0, 0x800c
/* 0AC84C 80123DDC 2442E550 */  addiu $v0, %lo(D_800BE550) # addiu $v0, $v0, -0x1ab0
/* 0AC850 80123DE0 260F0008 */  addiu $t7, $s0, 8
/* 0AC854 80123DE4 AE2F0000 */  sw    $t7, ($s1)
/* 0AC858 80123DE8 AE170004 */  sw    $s7, 4($s0)
/* 0AC85C 80123DEC AE160000 */  sw    $s6, ($s0)
/* 0AC860 80123DF0 8E300000 */  lw    $s0, ($s1)
/* 0AC864 80123DF4 3C03800C */  lui   $v1, %hi(D_800BE548) # $v1, 0x800c
/* 0AC868 80123DF8 2463E548 */  addiu $v1, %lo(D_800BE548) # addiu $v1, $v1, -0x1ab8
/* 0AC86C 80123DFC 26180008 */  addiu $t8, $s0, 8
/* 0AC870 80123E00 AE380000 */  sw    $t8, ($s1)
/* 0AC874 80123E04 AE020004 */  sw    $v0, 4($s0)
/* 0AC878 80123E08 AE140000 */  sw    $s4, ($s0)
/* 0AC87C 80123E0C 8E300000 */  lw    $s0, ($s1)
/* 0AC880 80123E10 26190008 */  addiu $t9, $s0, 8
/* 0AC884 80123E14 AE390000 */  sw    $t9, ($s1)
/* 0AC888 80123E18 AE030004 */  sw    $v1, 4($s0)
/* 0AC88C 80123E1C AE150000 */  sw    $s5, ($s0)
/* 0AC890 80123E20 8E320004 */  lw    $s2, 4($s1)
/* 0AC894 80123E24 264A0008 */  addiu $t2, $s2, 8
/* 0AC898 80123E28 AE2A0004 */  sw    $t2, 4($s1)
/* 0AC89C 80123E2C AE570004 */  sw    $s7, 4($s2)
/* 0AC8A0 80123E30 AE560000 */  sw    $s6, ($s2)
/* 0AC8A4 80123E34 8E320004 */  lw    $s2, 4($s1)
/* 0AC8A8 80123E38 264B0008 */  addiu $t3, $s2, 8
/* 0AC8AC 80123E3C AE2B0004 */  sw    $t3, 4($s1)
/* 0AC8B0 80123E40 AE420004 */  sw    $v0, 4($s2)
/* 0AC8B4 80123E44 AE540000 */  sw    $s4, ($s2)
/* 0AC8B8 80123E48 8E320004 */  lw    $s2, 4($s1)
/* 0AC8BC 80123E4C 264C0008 */  addiu $t4, $s2, 8
/* 0AC8C0 80123E50 AE2C0004 */  sw    $t4, 4($s1)
/* 0AC8C4 80123E54 AE430004 */  sw    $v1, 4($s2)
/* 0AC8C8 80123E58 AE550000 */  sw    $s5, ($s2)
.L80123E5C_ovl2:
/* 0AC8CC 80123E5C 8FBF003C */  lw    $ra, 0x3c($sp)
.L80123E60_ovl2:
/* 0AC8D0 80123E60 8FB00018 */  lw    $s0, 0x18($sp)
/* 0AC8D4 80123E64 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0AC8D8 80123E68 8FB20020 */  lw    $s2, 0x20($sp)
/* 0AC8DC 80123E6C 8FB30024 */  lw    $s3, 0x24($sp)
/* 0AC8E0 80123E70 8FB40028 */  lw    $s4, 0x28($sp)
/* 0AC8E4 80123E74 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0AC8E8 80123E78 8FB60030 */  lw    $s6, 0x30($sp)
/* 0AC8EC 80123E7C 8FB70034 */  lw    $s7, 0x34($sp)
/* 0AC8F0 80123E80 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0AC8F4 80123E84 03E00008 */  jr    $ra
/* 0AC8F8 80123E88 27BD0040 */   addiu $sp, $sp, 0x40
/* 0AC8FC 80123E8C 00000000 */  nop   
# Unknown region 0AC900-0B1B40 [5240]
.type func_80123354, @function

.size func_80123354, . - func_80123354
