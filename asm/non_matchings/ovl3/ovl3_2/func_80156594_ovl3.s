glabel func_80156594_ovl3
/* 0B6FD4 80156594 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B6FD8 80156598 AFA40018 */  sw    $a0, 0x18($sp)
/* 0B6FDC 8015659C 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0B6FE0 801565A0 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0B6FE4 801565A4 9085000B */  lbu   $a1, 0xb($a0)
/* 0B6FE8 801565A8 24010001 */  li    $at, 1
/* 0B6FEC 801565AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B6FF0 801565B0 10A1000A */  beq   $a1, $at, .L801565DC_ovl3
/* 0B6FF4 801565B4 24010002 */   li    $at, 2
/* 0B6FF8 801565B8 10A10008 */  beq   $a1, $at, .L801565DC_ovl3
/* 0B6FFC 801565BC 24010003 */   li    $at, 3
/* 0B7000 801565C0 10A10012 */  beq   $a1, $at, .L8015660C_ovl3
/* 0B7004 801565C4 3C038005 */   lui   $v1, 0x8005
/* 0B7008 801565C8 24010004 */  li    $at, 4
/* 0B700C 801565CC 10A10033 */  beq   $a1, $at, .L8015669C_ovl3
/* 0B7010 801565D0 3C038005 */   lui   $v1, 0x8005
/* 0B7014 801565D4 10000072 */  b     .L801567A0_ovl3
/* 0B7018 801565D8 3C048019 */   lui   $a0, %hi(D_8019002C) # $a0, 0x8019
.L801565DC_ovl3:
/* 0B701C 801565DC 8C83002C */  lw    $v1, %lo(D_8019002C)($a0)
/* 0B7020 801565E0 3C0F7FFF */  lui   $t7, (0x7FFFFFFF >> 16) # lui $t7, 0x7fff
/* 0B7024 801565E4 35EFFFFF */  ori   $t7, (0x7FFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0B7028 801565E8 2C620001 */  sltiu $v0, $v1, 1
/* 0B702C 801565EC 246EFFFF */  addiu $t6, $v1, -1
/* 0B7030 801565F0 1040006D */  beqz  $v0, .L801567A8_ovl3
/* 0B7034 801565F4 AC8E002C */   sw    $t6, %lo(D_8019002C)($a0)
/* 0B7038 801565F8 AC8F002C */  sw    $t7, %lo(D_8019002C)($a0)
/* 0B703C 801565FC 24180002 */  li    $t8, 2
/* 0B7040 80156600 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0B7044 80156604 10000068 */  b     .L801567A8_ovl3
/* 0B7048 80156608 AC38E4F8 */   sw    $t8, %lo(D_800BE4F8)($at)
.L8015660C_ovl3:
/* 0B704C 8015660C 8C63A7C4 */  lw    $v1, -0x583c($v1)
/* 0B7050 80156610 3C05800F */  lui   $a1, %hi(D_800E8AE0) # $a1, 0x800f
/* 0B7054 80156614 24A58AE0 */  addiu $a1, %lo(D_800E8AE0) # addiu $a1, $a1, -0x7520
/* 0B7058 80156618 8C620000 */  lw    $v0, ($v1)
/* 0B705C 8015661C 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0B7060 80156620 00021080 */  sll   $v0, $v0, 2
/* 0B7064 80156624 00A2C821 */  addu  $t9, $a1, $v0
/* 0B7068 80156628 8F280000 */  lw    $t0, ($t9)
/* 0B706C 8015662C 31090006 */  andi  $t1, $t0, 6
/* 0B7070 80156630 5120000F */  beql  $t1, $zero, .L80156670_ovl3
/* 0B7074 80156634 44810000 */   mtc1  $at, $f0
/* 0B7078 80156638 3C018019 */  lui   $at, %hi(D_80196F0C) # $at, 0x8019
/* 0B707C 8015663C C4206F0C */  lwc1  $f0, %lo(D_80196F0C)($at)
/* 0B7080 80156640 3C018019 */  lui   $at, %hi(D_80196F10) # $at, 0x8019
/* 0B7084 80156644 C4246F10 */  lwc1  $f4, %lo(D_80196F10)($at)
/* 0B7088 80156648 3C01800E */  lui   $at, 0x800e
/* 0B708C 8015664C 00220821 */  addu  $at, $at, $v0
/* 0B7090 80156650 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0B7094 80156654 8C6A0000 */  lw    $t2, ($v1)
/* 0B7098 80156658 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0B709C 8015665C 000A5880 */  sll   $t3, $t2, 2
/* 0B70A0 80156660 002B0821 */  addu  $at, $at, $t3
/* 0B70A4 80156664 1000002C */  b     .L80156718_ovl3
/* 0B70A8 80156668 E4206850 */   swc1  $f0, 0x6850($at)
/* 0B70AC 8015666C 44810000 */  mtc1  $at, $f0
.L80156670_ovl3:
/* 0B70B0 80156670 3C01C0C0 */  li    $at, 0xC0C00000 # -6.000000
/* 0B70B4 80156674 44813000 */  mtc1  $at, $f6
/* 0B70B8 80156678 3C01800E */  lui   $at, 0x800e
/* 0B70BC 8015667C 00220821 */  addu  $at, $at, $v0
/* 0B70C0 80156680 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0B70C4 80156684 8C6C0000 */  lw    $t4, ($v1)
/* 0B70C8 80156688 3C01800E */  lui   $at, 0x800e
/* 0B70CC 8015668C 000C6880 */  sll   $t5, $t4, 2
/* 0B70D0 80156690 002D0821 */  addu  $at, $at, $t5
/* 0B70D4 80156694 10000020 */  b     .L80156718_ovl3
/* 0B70D8 80156698 E4206850 */   swc1  $f0, 0x6850($at)
.L8015669C_ovl3:
/* 0B70DC 8015669C 8C63A7C4 */  lw    $v1, -0x583c($v1)
/* 0B70E0 801566A0 3C05800F */  lui   $a1, %hi(D_800E8AE0) # $a1, 0x800f
/* 0B70E4 801566A4 24A58AE0 */  addiu $a1, %lo(D_800E8AE0) # addiu $a1, $a1, -0x7520
/* 0B70E8 801566A8 8C620000 */  lw    $v0, ($v1)
/* 0B70EC 801566AC 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 0B70F0 801566B0 00021080 */  sll   $v0, $v0, 2
/* 0B70F4 801566B4 00A27021 */  addu  $t6, $a1, $v0
/* 0B70F8 801566B8 8DCF0000 */  lw    $t7, ($t6)
/* 0B70FC 801566BC 31F80006 */  andi  $t8, $t7, 6
/* 0B7100 801566C0 5300000D */  beql  $t8, $zero, .L801566F8_ovl3
/* 0B7104 801566C4 44810000 */   mtc1  $at, $f0
/* 0B7108 801566C8 3C018019 */  lui   $at, %hi(D_80196F14) # $at, 0x8019
/* 0B710C 801566CC C4206F14 */  lwc1  $f0, %lo(D_80196F14)($at)
/* 0B7110 801566D0 3C01800E */  lui   $at, 0x800e
/* 0B7114 801566D4 00220821 */  addu  $at, $at, $v0
/* 0B7118 801566D8 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0B711C 801566DC 8C790000 */  lw    $t9, ($v1)
/* 0B7120 801566E0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0B7124 801566E4 00194080 */  sll   $t0, $t9, 2
/* 0B7128 801566E8 00280821 */  addu  $at, $at, $t0
/* 0B712C 801566EC 1000000A */  b     .L80156718_ovl3
/* 0B7130 801566F0 E4206850 */   swc1  $f0, 0x6850($at)
/* 0B7134 801566F4 44810000 */  mtc1  $at, $f0
.L801566F8_ovl3:
/* 0B7138 801566F8 3C01800E */  lui   $at, 0x800e
/* 0B713C 801566FC 00220821 */  addu  $at, $at, $v0
/* 0B7140 80156700 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0B7144 80156704 8C690000 */  lw    $t1, ($v1)
/* 0B7148 80156708 3C01800E */  lui   $at, 0x800e
/* 0B714C 8015670C 00095080 */  sll   $t2, $t1, 2
/* 0B7150 80156710 002A0821 */  addu  $at, $at, $t2
/* 0B7154 80156714 E4206850 */  swc1  $f0, 0x6850($at)
.L80156718_ovl3:
/* 0B7158 80156718 8C620000 */  lw    $v0, ($v1)
/* 0B715C 8015671C 3C01800F */  lui   $at, 0x800f
/* 0B7160 80156720 00021080 */  sll   $v0, $v0, 2
/* 0B7164 80156724 00A25821 */  addu  $t3, $a1, $v0
/* 0B7168 80156728 8D6C0000 */  lw    $t4, ($t3)
/* 0B716C 8015672C 00220821 */  addu  $at, $at, $v0
/* 0B7170 80156730 318D0006 */  andi  $t5, $t4, 6
/* 0B7174 80156734 11A00002 */  beqz  $t5, .L80156740_ovl3
/* 0B7178 80156738 00000000 */   nop   
/* 0B717C 8015673C AC208920 */  sw    $zero, -0x76e0($at)
.L80156740_ovl3:
/* 0B7180 80156740 0C054E61 */  jal   func_80153984_ovl3
/* 0B7184 80156744 00000000 */   nop   
/* 0B7188 80156748 3C048013 */  lui   $a0, %hi(gKirbyState) # $a0, 0x8013
/* 0B718C 8015674C 2484E7C0 */  addiu $a0, %lo(gKirbyState) # addiu $a0, $a0, -0x1840
/* 0B7190 80156750 8C83002C */  lw    $v1, 0x2c($a0)
/* 0B7194 80156754 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0B7198 80156758 3C097FFF */  lui   $t1, (0x7FFFFFFF >> 16) # lui $t1, 0x7fff
/* 0B719C 8015675C 2C620001 */  sltiu $v0, $v1, 1
/* 0B71A0 80156760 246EFFFF */  addiu $t6, $v1, -1
/* 0B71A4 80156764 14400008 */  bnez  $v0, .L80156788_ovl3
/* 0B71A8 80156768 AC8E002C */   sw    $t6, 0x2c($a0)
/* 0B71AC 8015676C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0B71B0 80156770 3C08800E */  lui   $t0, 0x800e
/* 0B71B4 80156774 8DF80000 */  lw    $t8, ($t7)
/* 0B71B8 80156778 0018C880 */  sll   $t9, $t8, 2
/* 0B71BC 8015677C 01194021 */  addu  $t0, $t0, $t9
/* 0B71C0 80156780 8D086310 */  lw    $t0, 0x6310($t0)
/* 0B71C4 80156784 11000008 */  beqz  $t0, .L801567A8_ovl3
.L80156788_ovl3:
/* 0B71C8 80156788 3529FFFF */   ori   $t1, (0x7FFFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* 0B71CC 8015678C AC89002C */  sw    $t1, 0x2c($a0)
/* 0B71D0 80156790 240A0002 */  li    $t2, 2
/* 0B71D4 80156794 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0B71D8 80156798 10000003 */  b     .L801567A8_ovl3
/* 0B71DC 8015679C AC2AE4F8 */   sw    $t2, %lo(D_800BE4F8)($at)
.L801567A0_ovl3:
/* 0B71E0 801567A0 0C02909C */  jal   print_error_stub
/* 0B71E4 801567A4 24846EE0 */   addiu $a0, $a0, 0x6ee0
.L801567A8_ovl3:
/* 0B71E8 801567A8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B71EC 801567AC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B71F0 801567B0 03E00008 */  jr    $ra
/* 0B71F4 801567B4 00000000 */   nop   
