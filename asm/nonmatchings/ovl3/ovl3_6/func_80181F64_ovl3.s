nonmatching func_80181F64_ovl3, 0x6F4

glabel func_80181F64_ovl3
    /* E29A4 80181F64 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* E29A8 80181F68 AFB00014 */  sw         $s0, 0x14($sp)
    /* E29AC 80181F6C 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* E29B0 80181F70 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* E29B4 80181F74 8E0E00A0 */  lw         $t6, 0xA0($s0)
    /* E29B8 80181F78 AFBF001C */  sw         $ra, 0x1C($sp)
    /* E29BC 80181F7C AFB10018 */  sw         $s1, 0x18($sp)
    /* E29C0 80181F80 15C00092 */  bnez       $t6, .L801821CC_ovl3
    /* E29C4 80181F84 AFA40020 */   sw        $a0, 0x20($sp)
    /* E29C8 80181F88 AE000030 */  sw         $zero, 0x30($s0)
    /* E29CC 80181F8C A2000007 */  sb         $zero, 0x7($s0)
    /* E29D0 80181F90 AE000050 */  sw         $zero, 0x50($s0)
    /* E29D4 80181F94 AE00004C */  sw         $zero, 0x4C($s0)
    /* E29D8 80181F98 A60000D2 */  sh         $zero, 0xD2($s0)
    /* E29DC 80181F9C 0C0473D6 */  jal        func_8011CF58
    /* E29E0 80181FA0 A60000D0 */   sh        $zero, 0xD0($s0)
    /* E29E4 80181FA4 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* E29E8 80181FA8 8E190090 */  lw         $t9, 0x90($s0)
    /* E29EC 80181FAC 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* E29F0 80181FB0 8E290000 */  lw         $t1, 0x0($s1)
    /* E29F4 80181FB4 AE1900A0 */  sw         $t9, 0xA0($s0)
    /* E29F8 80181FB8 3C01800E */  lui        $at, %hi(D_800DDFD0)
    /* E29FC 80181FBC 8D2A0000 */  lw         $t2, 0x0($t1)
    /* E2A00 80181FC0 24080032 */  addiu      $t0, $zero, 0x32
    /* E2A04 80181FC4 000A5880 */  sll        $t3, $t2, 2
    /* E2A08 80181FC8 002B0821 */  addu       $at, $at, $t3
    /* E2A0C 80181FCC 0C04828A */  jal        func_80120A28
    /* E2A10 80181FD0 AC28DFD0 */   sw        $t0, %lo(D_800DDFD0)($at)
    /* E2A14 80181FD4 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E2A18 80181FD8 2404000A */   addiu     $a0, $zero, 0xA
    /* E2A1C 80181FDC 00026080 */  sll        $t4, $v0, 2
    /* E2A20 80181FE0 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* E2A24 80181FE4 002C0821 */  addu       $at, $at, $t4
    /* E2A28 80181FE8 AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
    /* E2A2C 80181FEC 8E230000 */  lw         $v1, 0x0($s1)
    /* E2A30 80181FF0 3C01800F */  lui        $at, %hi(D_800E83E0)
    /* E2A34 80181FF4 240F007D */  addiu      $t7, $zero, 0x7D
    /* E2A38 80181FF8 8C6D0000 */  lw         $t5, 0x0($v1)
    /* E2A3C 80181FFC 24090006 */  addiu      $t1, $zero, 0x6
    /* E2A40 80182000 240400BA */  addiu      $a0, $zero, 0xBA
    /* E2A44 80182004 000D7080 */  sll        $t6, $t5, 2
    /* E2A48 80182008 002E0821 */  addu       $at, $at, $t6
    /* E2A4C 8018200C AC2083E0 */  sw         $zero, %lo(D_800E83E0)($at)
    /* E2A50 80182010 8C780000 */  lw         $t8, 0x0($v1)
    /* E2A54 80182014 3C01800F */  lui        $at, %hi(D_800E9720)
    /* E2A58 80182018 0018C880 */  sll        $t9, $t8, 2
    /* E2A5C 8018201C 00390821 */  addu       $at, $at, $t9
    /* E2A60 80182020 AC2F9720 */  sw         $t7, %lo(D_800E9720)($at)
    /* E2A64 80182024 8C6A0000 */  lw         $t2, 0x0($v1)
    /* E2A68 80182028 3C01800F */  lui        $at, %hi(D_800E9560)
    /* E2A6C 8018202C 000A4080 */  sll        $t0, $t2, 2
    /* E2A70 80182030 00280821 */  addu       $at, $at, $t0
    /* E2A74 80182034 AC299560 */  sw         $t1, %lo(D_800E9560)($at)
    /* E2A78 80182038 AE000044 */  sw         $zero, 0x44($s0)
    /* E2A7C 8018203C 0C029D9E */  jal        play_sound
    /* E2A80 80182040 AE00003C */   sw        $zero, 0x3C($s0)
    /* E2A84 80182044 3C040002 */  lui        $a0, (0x201FE >> 16)
    /* E2A88 80182048 3C050002 */  lui        $a1, (0x201FF >> 16)
    /* E2A8C 8018204C 34A501FF */  ori        $a1, $a1, (0x201FF & 0xFFFF)
    /* E2A90 80182050 348401FE */  ori        $a0, $a0, (0x201FE & 0xFFFF)
    /* E2A94 80182054 0C048C3A */  jal        func_801230E8
    /* E2A98 80182058 00003025 */   or        $a2, $zero, $zero
    /* E2A9C 8018205C 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E2AA0 80182060 3C0C8018 */  lui        $t4, %hi(func_80182658_ovl3)
    /* E2AA4 80182064 3C01800E */  lui        $at, %hi(D_800DF310)
    /* E2AA8 80182068 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E2AAC 8018206C 258C2658 */  addiu      $t4, $t4, %lo(func_80182658_ovl3)
    /* E2AB0 80182070 000EC080 */  sll        $t8, $t6, 2
    /* E2AB4 80182074 00380821 */  addu       $at, $at, $t8
    /* E2AB8 80182078 0C02BC9F */  jal        func_800AF27C
    /* E2ABC 8018207C AC2CF310 */   sw        $t4, %lo(D_800DF310)($at)
    /* E2AC0 80182080 0C04783A */  jal        func_8011E0E8
    /* E2AC4 80182084 00000000 */   nop
    /* E2AC8 80182088 8E2A0000 */  lw         $t2, 0x0($s1)
    /* E2ACC 8018208C 3C0F8019 */  lui        $t7, %hi(D_80190784_ovl3)
    /* E2AD0 80182090 25EF0784 */  addiu      $t7, $t7, %lo(D_80190784_ovl3)
    /* E2AD4 80182094 AE0F015C */  sw         $t7, 0x15C($s0)
    /* E2AD8 80182098 8D490000 */  lw         $t1, 0x0($t2)
    /* E2ADC 8018209C 3C198019 */  lui        $t9, %hi(D_80192998_ovl3)
    /* E2AE0 801820A0 3C01800E */  lui        $at, %hi(D_800E0490)
    /* E2AE4 801820A4 00094080 */  sll        $t0, $t1, 2
    /* E2AE8 801820A8 00280821 */  addu       $at, $at, $t0
    /* E2AEC 801820AC 27392998 */  addiu      $t9, $t9, %lo(D_80192998_ovl3)
    /* E2AF0 801820B0 3C040002 */  lui        $a0, (0x2001E >> 16)
    /* E2AF4 801820B4 AC390490 */  sw         $t9, %lo(D_800E0490)($at)
    /* E2AF8 801820B8 0C048BC2 */  jal        func_80122F08
    /* E2AFC 801820BC 3484001E */   ori       $a0, $a0, (0x2001E & 0xFFFF)
    /* E2B00 801820C0 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E2B04 801820C4 240B0002 */  addiu      $t3, $zero, 0x2
    /* E2B08 801820C8 AE0B0154 */  sw         $t3, 0x154($s0)
    /* E2B0C 801820CC 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E2B10 801820D0 3C18800F */  lui        $t8, %hi(D_800E8AE0)
    /* E2B14 801820D4 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E2B18 801820D8 000E6080 */  sll        $t4, $t6, 2
    /* E2B1C 801820DC 030CC021 */  addu       $t8, $t8, $t4
    /* E2B20 801820E0 8F188AE0 */  lw         $t8, %lo(D_800E8AE0)($t8)
    /* E2B24 801820E4 330F0006 */  andi       $t7, $t8, 0x6
    /* E2B28 801820E8 55E00006 */  bnel       $t7, $zero, .L80182104_ovl3
    /* E2B2C 801820EC 44816000 */   mtc1      $at, $f12
    /* E2B30 801820F0 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E2B34 801820F4 44816000 */  mtc1       $at, $f12
    /* E2B38 801820F8 10000003 */  b          .L80182108_ovl3
    /* E2B3C 801820FC 00000000 */   nop
    /* E2B40 80182100 44816000 */  mtc1       $at, $f12
  .L80182104_ovl3:
    /* E2B44 80182104 00000000 */  nop
  .L80182108_ovl3:
    /* E2B48 80182108 0C02BB30 */  jal        func_800AECC0
    /* E2B4C 8018210C 00000000 */   nop
    /* E2B50 80182110 8E2A0000 */  lw         $t2, 0x0($s1)
    /* E2B54 80182114 3C08800F */  lui        $t0, %hi(D_800E8AE0)
    /* E2B58 80182118 3C013F00 */  lui        $at, (0x3F000000 >> 16)
    /* E2B5C 8018211C 8D490000 */  lw         $t1, 0x0($t2)
    /* E2B60 80182120 0009C880 */  sll        $t9, $t1, 2
    /* E2B64 80182124 01194021 */  addu       $t0, $t0, $t9
    /* E2B68 80182128 8D088AE0 */  lw         $t0, %lo(D_800E8AE0)($t0)
    /* E2B6C 8018212C 310B0006 */  andi       $t3, $t0, 0x6
    /* E2B70 80182130 55600006 */  bnel       $t3, $zero, .L8018214C_ovl3
    /* E2B74 80182134 44816000 */   mtc1      $at, $f12
    /* E2B78 80182138 3C013FA0 */  lui        $at, (0x3FA00000 >> 16)
    /* E2B7C 8018213C 44816000 */  mtc1       $at, $f12
    /* E2B80 80182140 10000003 */  b          .L80182150_ovl3
    /* E2B84 80182144 00000000 */   nop
    /* E2B88 80182148 44816000 */  mtc1       $at, $f12
  .L8018214C_ovl3:
    /* E2B8C 8018214C 00000000 */  nop
  .L80182150_ovl3:
    /* E2B90 80182150 0C02BB48 */  jal        func_800AED20
    /* E2B94 80182154 00000000 */   nop
    /* E2B98 80182158 8E2D0000 */  lw         $t5, 0x0($s1)
    /* E2B9C 8018215C 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* E2BA0 80182160 24040001 */  addiu      $a0, $zero, 0x1
    /* E2BA4 80182164 8DAE0000 */  lw         $t6, 0x0($t5)
    /* E2BA8 80182168 24050001 */  addiu      $a1, $zero, 0x1
    /* E2BAC 8018216C 24060035 */  addiu      $a2, $zero, 0x35
    /* E2BB0 80182170 000E6080 */  sll        $t4, $t6, 2
    /* E2BB4 80182174 030CC021 */  addu       $t8, $t8, $t4
    /* E2BB8 80182178 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* E2BBC 8018217C 0C02A040 */  jal        func_800A8100
    /* E2BC0 80182180 8F070020 */   lw        $a3, 0x20($t8)
    /* E2BC4 80182184 AE02004C */  sw         $v0, 0x4C($s0)
    /* E2BC8 80182188 0C047701 */  jal        func_8011DC04
    /* E2BCC 8018218C 2404000F */   addiu     $a0, $zero, 0xF
    /* E2BD0 80182190 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E2BD4 80182194 3C19800F */  lui        $t9, %hi(D_800E8920)
    /* E2BD8 80182198 24080001 */  addiu      $t0, $zero, 0x1
    /* E2BDC 8018219C 8DEA0000 */  lw         $t2, 0x0($t7)
    /* E2BE0 801821A0 240D0004 */  addiu      $t5, $zero, 0x4
    /* E2BE4 801821A4 000A4880 */  sll        $t1, $t2, 2
    /* E2BE8 801821A8 0329C821 */  addu       $t9, $t9, $t1
    /* E2BEC 801821AC 8F398920 */  lw         $t9, %lo(D_800E8920)($t9)
    /* E2BF0 801821B0 53200005 */  beql       $t9, $zero, .L801821C8_ovl3
    /* E2BF4 801821B4 AE0D003C */   sw        $t5, 0x3C($s0)
    /* E2BF8 801821B8 AE08003C */  sw         $t0, 0x3C($s0)
    /* E2BFC 801821BC 10000003 */  b          .L801821CC_ovl3
    /* E2C00 801821C0 AE080044 */   sw        $t0, 0x44($s0)
    /* E2C04 801821C4 AE0D003C */  sw         $t5, 0x3C($s0)
  .L801821C8_ovl3:
    /* E2C08 801821C8 AE0D0044 */  sw         $t5, 0x44($s0)
  .L801821CC_ovl3:
    /* E2C0C 801821CC 8E0C0044 */  lw         $t4, 0x44($s0)
    /* E2C10 801821D0 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* E2C14 801821D4 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* E2C18 801821D8 2598FFFF */  addiu      $t8, $t4, -0x1
    /* E2C1C 801821DC 2F010006 */  sltiu      $at, $t8, 0x6
    /* E2C20 801821E0 102000D7 */  beqz       $at, .L80182540_ovl3
    /* E2C24 801821E4 0018C080 */   sll       $t8, $t8, 2
    /* E2C28 801821E8 3C018019 */  lui        $at, %hi(jtbl_8019774C_ovl3)
    /* E2C2C 801821EC 00380821 */  addu       $at, $at, $t8
    /* E2C30 801821F0 8C38774C */  lw         $t8, %lo(jtbl_8019774C_ovl3)($at)
    /* E2C34 801821F4 03000008 */  jr         $t8
    /* E2C38 801821F8 00000000 */   nop
  jlabel .L801821FC_ovl3
    /* E2C3C 801821FC 0C04828A */  jal        func_80120A28
    /* E2C40 80182200 00000000 */   nop
    /* E2C44 80182204 3C040002 */  lui        $a0, (0x201F9 >> 16)
    /* E2C48 80182208 3C050002 */  lui        $a1, (0x2001E >> 16)
    /* E2C4C 8018220C 34A5001E */  ori        $a1, $a1, (0x2001E & 0xFFFF)
    /* E2C50 80182210 348401F9 */  ori        $a0, $a0, (0x201F9 & 0xFFFF)
    /* E2C54 80182214 0C02A9E3 */  jal        func_800AA78C
    /* E2C58 80182218 3C0640C0 */   lui       $a2, (0x40C00000 >> 16)
    /* E2C5C 8018221C 3C040002 */  lui        $a0, (0x201F9 >> 16)
    /* E2C60 80182220 0C02A806 */  jal        func_800AA018
    /* E2C64 80182224 348401F9 */   ori       $a0, $a0, (0x201F9 & 0xFFFF)
    /* E2C68 80182228 0C02BE85 */  jal        curObjSleepForever
    /* E2C6C 8018222C 00000000 */   nop
  jlabel .L80182230_ovl3
    /* E2C70 80182230 8E230000 */  lw         $v1, 0x0($s1)
    /* E2C74 80182234 3C01800E */  lui        $at, %hi(D_800E6A10)
    /* E2C78 80182238 3C040002 */  lui        $a0, (0x201FD >> 16)
    /* E2C7C 8018223C 8C620000 */  lw         $v0, 0x0($v1)
    /* E2C80 80182240 3C050002 */  lui        $a1, (0x2001E >> 16)
    /* E2C84 80182244 34A5001E */  ori        $a1, $a1, (0x2001E & 0xFFFF)
    /* E2C88 80182248 00021080 */  sll        $v0, $v0, 2
    /* E2C8C 8018224C 00220821 */  addu       $at, $at, $v0
    /* E2C90 80182250 C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
    /* E2C94 80182254 3C013E80 */  lui        $at, (0x3E800000 >> 16)
    /* E2C98 80182258 44813000 */  mtc1       $at, $f6
    /* E2C9C 8018225C 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E2CA0 80182260 00220821 */  addu       $at, $at, $v0
    /* E2CA4 80182264 46062202 */  mul.s      $f8, $f4, $f6
    /* E2CA8 80182268 348401FD */  ori        $a0, $a0, (0x201FD & 0xFFFF)
    /* E2CAC 8018226C 3C064040 */  lui        $a2, (0x40400000 >> 16)
    /* E2CB0 80182270 E4286690 */  swc1       $f8, %lo(D_800E6690)($at)
    /* E2CB4 80182274 8C6F0000 */  lw         $t7, 0x0($v1)
    /* E2CB8 80182278 3C014000 */  lui        $at, (0x40000000 >> 16)
    /* E2CBC 8018227C 44815000 */  mtc1       $at, $f10
    /* E2CC0 80182280 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E2CC4 80182284 000F5080 */  sll        $t2, $t7, 2
    /* E2CC8 80182288 002A0821 */  addu       $at, $at, $t2
    /* E2CCC 8018228C 0C02A9E3 */  jal        func_800AA78C
    /* E2CD0 80182290 E42A6850 */   swc1      $f10, %lo(D_800E6850)($at)
    /* E2CD4 80182294 3C040002 */  lui        $a0, (0x201FD >> 16)
    /* E2CD8 80182298 0C02A806 */  jal        func_800AA018
    /* E2CDC 8018229C 348401FD */   ori       $a0, $a0, (0x201FD & 0xFFFF)
    /* E2CE0 801822A0 0C02BE85 */  jal        curObjSleepForever
    /* E2CE4 801822A4 00000000 */   nop
  jlabel .L801822A8_ovl3
    /* E2CE8 801822A8 8E230000 */  lw         $v1, 0x0($s1)
    /* E2CEC 801822AC 3C01800F */  lui        $at, %hi(D_800E8920)
    /* E2CF0 801822B0 3C0D800F */  lui        $t5, %hi(D_800E8AE0)
    /* E2CF4 801822B4 8C690000 */  lw         $t1, 0x0($v1)
    /* E2CF8 801822B8 00001025 */  or         $v0, $zero, $zero
    /* E2CFC 801822BC 0009C880 */  sll        $t9, $t1, 2
    /* E2D00 801822C0 00390821 */  addu       $at, $at, $t9
    /* E2D04 801822C4 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* E2D08 801822C8 8C680000 */  lw         $t0, 0x0($v1)
    /* E2D0C 801822CC 24010006 */  addiu      $at, $zero, 0x6
    /* E2D10 801822D0 00085880 */  sll        $t3, $t0, 2
    /* E2D14 801822D4 01AB6821 */  addu       $t5, $t5, $t3
    /* E2D18 801822D8 8DAD8AE0 */  lw         $t5, %lo(D_800E8AE0)($t5)
    /* E2D1C 801822DC 31AE0006 */  andi       $t6, $t5, 0x6
    /* E2D20 801822E0 15C10003 */  bne        $t6, $at, .L801822F0_ovl3
    /* E2D24 801822E4 00000000 */   nop
    /* E2D28 801822E8 10000001 */  b          .L801822F0_ovl3
    /* E2D2C 801822EC 24020001 */   addiu     $v0, $zero, 0x1
  .L801822F0_ovl3:
    /* E2D30 801822F0 1040001B */  beqz       $v0, .L80182360_ovl3
    /* E2D34 801822F4 00000000 */   nop
    /* E2D38 801822F8 0C029D9E */  jal        play_sound
    /* E2D3C 801822FC 2404010B */   addiu     $a0, $zero, 0x10B
    /* E2D40 80182300 3C014108 */  lui        $at, (0x41080000 >> 16)
    /* E2D44 80182304 44810000 */  mtc1       $at, $f0
    /* E2D48 80182308 3C014080 */  lui        $at, (0x40800000 >> 16)
    /* E2D4C 8018230C 44818000 */  mtc1       $at, $f16
    /* E2D50 80182310 8E230000 */  lw         $v1, 0x0($s1)
    /* E2D54 80182314 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E2D58 80182318 E61000CC */  swc1       $f16, 0xCC($s0)
    /* E2D5C 8018231C 8C6C0000 */  lw         $t4, 0x0($v1)
    /* E2D60 80182320 000CC080 */  sll        $t8, $t4, 2
    /* E2D64 80182324 00380821 */  addu       $at, $at, $t8
    /* E2D68 80182328 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* E2D6C 8018232C 8C6F0000 */  lw         $t7, 0x0($v1)
    /* E2D70 80182330 3C018019 */  lui        $at, %hi(D_80197764_ovl3)
    /* E2D74 80182334 C4327764 */  lwc1       $f18, %lo(D_80197764_ovl3)($at)
    /* E2D78 80182338 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2D7C 8018233C 000F5080 */  sll        $t2, $t7, 2
    /* E2D80 80182340 002A0821 */  addu       $at, $at, $t2
    /* E2D84 80182344 E4323750 */  swc1       $f18, %lo(D_800E3750)($at)
    /* E2D88 80182348 8C690000 */  lw         $t1, 0x0($v1)
    /* E2D8C 8018234C 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E2D90 80182350 0009C880 */  sll        $t9, $t1, 2
    /* E2D94 80182354 00390821 */  addu       $at, $at, $t9
    /* E2D98 80182358 1000001D */  b          .L801823D0_ovl3
    /* E2D9C 8018235C E4203C90 */   swc1      $f0, %lo(D_800E3C90)($at)
  .L80182360_ovl3:
    /* E2DA0 80182360 0C029D9E */  jal        play_sound
    /* E2DA4 80182364 240400F7 */   addiu     $a0, $zero, 0xF7
    /* E2DA8 80182368 3C014100 */  lui        $at, (0x41000000 >> 16)
    /* E2DAC 8018236C 44812000 */  mtc1       $at, $f4
    /* E2DB0 80182370 3C014188 */  lui        $at, (0x41880000 >> 16)
    /* E2DB4 80182374 44816000 */  mtc1       $at, $f12
    /* E2DB8 80182378 0C048C51 */  jal        func_80123144
    /* E2DBC 8018237C E60400CC */   swc1      $f4, 0xCC($s0)
    /* E2DC0 80182380 8E230000 */  lw         $v1, 0x0($s1)
    /* E2DC4 80182384 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E2DC8 80182388 8C680000 */  lw         $t0, 0x0($v1)
    /* E2DCC 8018238C 00085880 */  sll        $t3, $t0, 2
    /* E2DD0 80182390 002B0821 */  addu       $at, $at, $t3
    /* E2DD4 80182394 E4203210 */  swc1       $f0, %lo(D_800E3210)($at)
    /* E2DD8 80182398 8C6D0000 */  lw         $t5, 0x0($v1)
    /* E2DDC 8018239C 3C018019 */  lui        $at, %hi(D_80197768_ovl3)
    /* E2DE0 801823A0 C4267768 */  lwc1       $f6, %lo(D_80197768_ovl3)($at)
    /* E2DE4 801823A4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2DE8 801823A8 000D7080 */  sll        $t6, $t5, 2
    /* E2DEC 801823AC 002E0821 */  addu       $at, $at, $t6
    /* E2DF0 801823B0 E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* E2DF4 801823B4 8C6C0000 */  lw         $t4, 0x0($v1)
    /* E2DF8 801823B8 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* E2DFC 801823BC 44814000 */  mtc1       $at, $f8
    /* E2E00 801823C0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E2E04 801823C4 000CC080 */  sll        $t8, $t4, 2
    /* E2E08 801823C8 00380821 */  addu       $at, $at, $t8
    /* E2E0C 801823CC E4283C90 */  swc1       $f8, %lo(D_800E3C90)($at)
  .L801823D0_ovl3:
    /* E2E10 801823D0 3C040002 */  lui        $a0, (0x201FA >> 16)
    /* E2E14 801823D4 0C02A806 */  jal        func_800AA018
    /* E2E18 801823D8 348401FA */   ori       $a0, $a0, (0x201FA & 0xFFFF)
    /* E2E1C 801823DC 8E2F0000 */  lw         $t7, 0x0($s1)
    /* E2E20 801823E0 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E2E24 801823E4 C60A00CC */  lwc1       $f10, 0xCC($s0)
    /* E2E28 801823E8 8DEA0000 */  lw         $t2, 0x0($t7)
    /* E2E2C 801823EC 000A4880 */  sll        $t1, $t2, 2
    /* E2E30 801823F0 00290821 */  addu       $at, $at, $t1
    /* E2E34 801823F4 C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
    /* E2E38 801823F8 4610503C */  c.lt.s     $f10, $f16
    /* E2E3C 801823FC 00000000 */  nop
    /* E2E40 80182400 4502000F */  bc1fl      .L80182440_ovl3
    /* E2E44 80182404 960D00D2 */   lhu       $t5, 0xD2($s0)
  .L80182408_ovl3:
    /* E2E48 80182408 0C002DAF */  jal        ohSleep
    /* E2E4C 8018240C 24040001 */   addiu     $a0, $zero, 0x1
    /* E2E50 80182410 8E390000 */  lw         $t9, 0x0($s1)
    /* E2E54 80182414 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E2E58 80182418 C61200CC */  lwc1       $f18, 0xCC($s0)
    /* E2E5C 8018241C 8F280000 */  lw         $t0, 0x0($t9)
    /* E2E60 80182420 00085880 */  sll        $t3, $t0, 2
    /* E2E64 80182424 002B0821 */  addu       $at, $at, $t3
    /* E2E68 80182428 C4243210 */  lwc1       $f4, %lo(D_800E3210)($at)
    /* E2E6C 8018242C 4604903C */  c.lt.s     $f18, $f4
    /* E2E70 80182430 00000000 */  nop
    /* E2E74 80182434 4501FFF4 */  bc1t       .L80182408_ovl3
    /* E2E78 80182438 00000000 */   nop
    /* E2E7C 8018243C 960D00D2 */  lhu        $t5, 0xD2($s0)
  .L80182440_ovl3:
    /* E2E80 80182440 3C040002 */  lui        $a0, (0x201FB >> 16)
    /* E2E84 80182444 348401FB */  ori        $a0, $a0, (0x201FB & 0xFFFF)
    /* E2E88 80182448 25AE0001 */  addiu      $t6, $t5, 0x1
    /* E2E8C 8018244C 0C02A855 */  jal        func_800AA154
    /* E2E90 80182450 A60E00D2 */   sh        $t6, 0xD2($s0)
    /* E2E94 80182454 24180004 */  addiu      $t8, $zero, 0x4
    /* E2E98 80182458 A60000D2 */  sh         $zero, 0xD2($s0)
    /* E2E9C 8018245C A60000D0 */  sh         $zero, 0xD0($s0)
    /* E2EA0 80182460 AE18003C */  sw         $t8, 0x3C($s0)
    /* E2EA4 80182464 AE180044 */  sw         $t8, 0x44($s0)
  jlabel .L80182468_ovl3
    /* E2EA8 80182468 8E230000 */  lw         $v1, 0x0($s1)
    /* E2EAC 8018246C 3C01800F */  lui        $at, %hi(D_800E8920)
    /* E2EB0 80182470 3C19800F */  lui        $t9, %hi(D_800E8AE0)
    /* E2EB4 80182474 8C6A0000 */  lw         $t2, 0x0($v1)
    /* E2EB8 80182478 3C040002 */  lui        $a0, (0x201F8 >> 16)
    /* E2EBC 8018247C 3C050002 */  lui        $a1, (0x2001E >> 16)
    /* E2EC0 80182480 000A4880 */  sll        $t1, $t2, 2
    /* E2EC4 80182484 00290821 */  addu       $at, $at, $t1
    /* E2EC8 80182488 AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* E2ECC 8018248C 8C620000 */  lw         $v0, 0x0($v1)
    /* E2ED0 80182490 34A5001E */  ori        $a1, $a1, (0x2001E & 0xFFFF)
    /* E2ED4 80182494 348401F8 */  ori        $a0, $a0, (0x201F8 & 0xFFFF)
    /* E2ED8 80182498 00021080 */  sll        $v0, $v0, 2
    /* E2EDC 8018249C 0322C821 */  addu       $t9, $t9, $v0
    /* E2EE0 801824A0 8F398AE0 */  lw         $t9, %lo(D_800E8AE0)($t9)
    /* E2EE4 801824A4 33280006 */  andi       $t0, $t9, 0x6
    /* E2EE8 801824A8 1100000D */  beqz       $t0, .L801824E0_ovl3
    /* E2EEC 801824AC 3C018019 */   lui       $at, %hi(D_8019776C_ovl3)
    /* E2EF0 801824B0 C426776C */  lwc1       $f6, %lo(D_8019776C_ovl3)($at)
    /* E2EF4 801824B4 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2EF8 801824B8 00220821 */  addu       $at, $at, $v0
    /* E2EFC 801824BC E4263750 */  swc1       $f6, %lo(D_800E3750)($at)
    /* E2F00 801824C0 8C6B0000 */  lw         $t3, 0x0($v1)
    /* E2F04 801824C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
    /* E2F08 801824C8 44814000 */  mtc1       $at, $f8
    /* E2F0C 801824CC 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E2F10 801824D0 000B6880 */  sll        $t5, $t3, 2
    /* E2F14 801824D4 002D0821 */  addu       $at, $at, $t5
    /* E2F18 801824D8 1000000D */  b          .L80182510_ovl3
    /* E2F1C 801824DC E4283C90 */   swc1      $f8, %lo(D_800E3C90)($at)
  .L801824E0_ovl3:
    /* E2F20 801824E0 3C018019 */  lui        $at, %hi(D_80197770_ovl3)
    /* E2F24 801824E4 C42A7770 */  lwc1       $f10, %lo(D_80197770_ovl3)($at)
    /* E2F28 801824E8 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2F2C 801824EC 00220821 */  addu       $at, $at, $v0
    /* E2F30 801824F0 E42A3750 */  swc1       $f10, %lo(D_800E3750)($at)
    /* E2F34 801824F4 8C6E0000 */  lw         $t6, 0x0($v1)
    /* E2F38 801824F8 3C014180 */  lui        $at, (0x41800000 >> 16)
    /* E2F3C 801824FC 44818000 */  mtc1       $at, $f16
    /* E2F40 80182500 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E2F44 80182504 000E6080 */  sll        $t4, $t6, 2
    /* E2F48 80182508 002C0821 */  addu       $at, $at, $t4
    /* E2F4C 8018250C E4303C90 */  swc1       $f16, %lo(D_800E3C90)($at)
  .L80182510_ovl3:
    /* E2F50 80182510 0C02A9E3 */  jal        func_800AA78C
    /* E2F54 80182514 3C064040 */   lui       $a2, (0x40400000 >> 16)
    /* E2F58 80182518 3C040002 */  lui        $a0, (0x201F8 >> 16)
    /* E2F5C 8018251C 0C02A806 */  jal        func_800AA018
    /* E2F60 80182520 348401F8 */   ori       $a0, $a0, (0x201F8 & 0xFFFF)
    /* E2F64 80182524 0C02BE85 */  jal        curObjSleepForever
    /* E2F68 80182528 00000000 */   nop
  jlabel .L8018252C_ovl3
    /* E2F6C 8018252C 3C040002 */  lui        $a0, (0x201FC >> 16)
    /* E2F70 80182530 0C02A806 */  jal        func_800AA018
    /* E2F74 80182534 348401FC */   ori       $a0, $a0, (0x201FC & 0xFFFF)
    /* E2F78 80182538 0C02BE85 */  jal        curObjSleepForever
    /* E2F7C 8018253C 00000000 */   nop
  jlabel .L80182540_ovl3
    /* E2F80 80182540 8E230000 */  lw         $v1, 0x0($s1)
    /* E2F84 80182544 3C018019 */  lui        $at, %hi(D_80197774_ovl3)
    /* E2F88 80182548 C4227774 */  lwc1       $f2, %lo(D_80197774_ovl3)($at)
    /* E2F8C 8018254C 8C780000 */  lw         $t8, 0x0($v1)
    /* E2F90 80182550 44800000 */  mtc1       $zero, $f0
    /* E2F94 80182554 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E2F98 80182558 00187880 */  sll        $t7, $t8, 2
    /* E2F9C 8018255C 002F0821 */  addu       $at, $at, $t7
    /* E2FA0 80182560 E4206690 */  swc1       $f0, %lo(D_800E6690)($at)
    /* E2FA4 80182564 8C620000 */  lw         $v0, 0x0($v1)
    /* E2FA8 80182568 3C01800E */  lui        $at, %hi(D_800E6690)
    /* E2FAC 8018256C 00021080 */  sll        $v0, $v0, 2
    /* E2FB0 80182570 00220821 */  addu       $at, $at, $v0
    /* E2FB4 80182574 C4326690 */  lwc1       $f18, %lo(D_800E6690)($at)
    /* E2FB8 80182578 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* E2FBC 8018257C 00220821 */  addu       $at, $at, $v0
    /* E2FC0 80182580 E43264D0 */  swc1       $f18, %lo(D_800E64D0)($at)
    /* E2FC4 80182584 8C6A0000 */  lw         $t2, 0x0($v1)
    /* E2FC8 80182588 3C01800E */  lui        $at, %hi(D_800E6850)
    /* E2FCC 8018258C 000A4880 */  sll        $t1, $t2, 2
    /* E2FD0 80182590 00290821 */  addu       $at, $at, $t1
    /* E2FD4 80182594 E4226850 */  swc1       $f2, %lo(D_800E6850)($at)
    /* E2FD8 80182598 8C790000 */  lw         $t9, 0x0($v1)
    /* E2FDC 8018259C 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2FE0 801825A0 00194080 */  sll        $t0, $t9, 2
    /* E2FE4 801825A4 00280821 */  addu       $at, $at, $t0
    /* E2FE8 801825A8 E4203750 */  swc1       $f0, %lo(D_800E3750)($at)
    /* E2FEC 801825AC 8C620000 */  lw         $v0, 0x0($v1)
    /* E2FF0 801825B0 3C01800E */  lui        $at, %hi(D_800E3750)
    /* E2FF4 801825B4 00021080 */  sll        $v0, $v0, 2
    /* E2FF8 801825B8 00220821 */  addu       $at, $at, $v0
    /* E2FFC 801825BC C4243750 */  lwc1       $f4, %lo(D_800E3750)($at)
    /* E3000 801825C0 3C01800E */  lui        $at, %hi(D_800E3210)
    /* E3004 801825C4 00220821 */  addu       $at, $at, $v0
    /* E3008 801825C8 E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
    /* E300C 801825CC 8C6B0000 */  lw         $t3, 0x0($v1)
    /* E3010 801825D0 3C01800E */  lui        $at, %hi(D_800E3C90)
    /* E3014 801825D4 000B6880 */  sll        $t5, $t3, 2
    /* E3018 801825D8 002D0821 */  addu       $at, $at, $t5
    /* E301C 801825DC 0C04783A */  jal        func_8011E0E8
    /* E3020 801825E0 E4223C90 */   swc1      $f2, %lo(D_800E3C90)($at)
    /* E3024 801825E4 0C047717 */  jal        func_8011DC5C
    /* E3028 801825E8 00000000 */   nop
    /* E302C 801825EC 24040006 */  addiu      $a0, $zero, 0x6
    /* E3030 801825F0 0C02ED1A */  jal        func_800BB468
    /* E3034 801825F4 24050010 */   addiu     $a1, $zero, 0x10
    /* E3038 801825F8 0C05A4F1 */  jal        func_801693C4_ovl3
    /* E303C 801825FC 2404000A */   addiu     $a0, $zero, 0xA
    /* E3040 80182600 00026080 */  sll        $t4, $v0, 2
    /* E3044 80182604 3C01800F */  lui        $at, %hi(D_800EC2E0)
    /* E3048 80182608 002C0821 */  addu       $at, $at, $t4
    /* E304C 8018260C 240E0001 */  addiu      $t6, $zero, 0x1
    /* E3050 80182610 0C047585 */  jal        func_8011D614
    /* E3054 80182614 AC2EC2E0 */   sw        $t6, %lo(D_800EC2E0)($at)
    /* E3058 80182618 3C040002 */  lui        $a0, (0x20200 >> 16)
    /* E305C 8018261C 3C050002 */  lui        $a1, (0x20201 >> 16)
    /* E3060 80182620 34A50201 */  ori        $a1, $a1, (0x20201 & 0xFFFF)
    /* E3064 80182624 34840200 */  ori        $a0, $a0, (0x20200 & 0xFFFF)
    /* E3068 80182628 0C048C3A */  jal        func_801230E8
    /* E306C 8018262C 24060001 */   addiu     $a2, $zero, 0x1
    /* E3070 80182630 8E180030 */  lw         $t8, 0x30($s0)
    /* E3074 80182634 AE0000A0 */  sw         $zero, 0xA0($s0)
    /* E3078 80182638 270F0001 */  addiu      $t7, $t8, 0x1
    /* E307C 8018263C 0C02BE85 */  jal        curObjSleepForever
    /* E3080 80182640 AE0F0030 */   sw        $t7, 0x30($s0)
    /* E3084 80182644 8FBF001C */  lw         $ra, 0x1C($sp)
    /* E3088 80182648 8FB00014 */  lw         $s0, 0x14($sp)
    /* E308C 8018264C 8FB10018 */  lw         $s1, 0x18($sp)
    /* E3090 80182650 03E00008 */  jr         $ra
    /* E3094 80182654 27BD0020 */   addiu     $sp, $sp, 0x20
endlabel func_80181F64_ovl3
.size func_80181F64_ovl3, . - func_80181F64_ovl3
