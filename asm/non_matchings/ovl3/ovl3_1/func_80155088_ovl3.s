glabel func_80155088_ovl3
/* 0B5AC8 80155088 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0B5ACC 8015508C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 0B5AD0 80155090 8CCE0000 */  lw    $t6, ($a2)
/* 0B5AD4 80155094 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0B5AD8 80155098 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5ADC 8015509C 8DC20000 */  lw    $v0, ($t6)
/* 0B5AE0 801550A0 3C05800E */  lui   $a1, 0x800e
/* 0B5AE4 801550A4 3C01800E */  lui   $at, 0x800e
/* 0B5AE8 801550A8 00021080 */  sll   $v0, $v0, 2
/* 0B5AEC 801550AC 00A22821 */  addu  $a1, $a1, $v0
/* 0B5AF0 801550B0 8CA50490 */  lw    $a1, 0x490($a1)
/* 0B5AF4 801550B4 00220821 */  addu  $at, $at, $v0
/* 0B5AF8 801550B8 C42425D0 */  lwc1  $f4, 0x25d0($at)
/* 0B5AFC 801550BC 8CA30004 */  lw    $v1, 4($a1)
/* 0B5B00 801550C0 3C01800E */  lui   $at, 0x800e
/* 0B5B04 801550C4 E4840004 */  swc1  $f4, 4($a0)
/* 0B5B08 801550C8 8CCF0000 */  lw    $t7, ($a2)
/* 0B5B0C 801550CC 8DF80000 */  lw    $t8, ($t7)
/* 0B5B10 801550D0 0018C880 */  sll   $t9, $t8, 2
/* 0B5B14 801550D4 00390821 */  addu  $at, $at, $t9
/* 0B5B18 801550D8 C4262790 */  lwc1  $f6, 0x2790($at)
/* 0B5B1C 801550DC 3C01800E */  lui   $at, 0x800e
/* 0B5B20 801550E0 E4860008 */  swc1  $f6, 8($a0)
/* 0B5B24 801550E4 8CCB0000 */  lw    $t3, ($a2)
/* 0B5B28 801550E8 8D6C0000 */  lw    $t4, ($t3)
/* 0B5B2C 801550EC 000C6880 */  sll   $t5, $t4, 2
/* 0B5B30 801550F0 002D0821 */  addu  $at, $at, $t5
/* 0B5B34 801550F4 C4282950 */  lwc1  $f8, 0x2950($at)
/* 0B5B38 801550F8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0B5B3C 801550FC E488000C */  swc1  $f8, 0xc($a0)
/* 0B5B40 80155100 C46A0000 */  lwc1  $f10, ($v1)
/* 0B5B44 80155104 E48A0010 */  swc1  $f10, 0x10($a0)
/* 0B5B48 80155108 C4720000 */  lwc1  $f18, ($v1)
/* 0B5B4C 8015510C C4700004 */  lwc1  $f16, 4($v1)
/* 0B5B50 80155110 46128100 */  add.s $f4, $f16, $f18
/* 0B5B54 80155114 44818000 */  mtc1  $at, $f16
/* 0B5B58 80155118 3C01800E */  lui   $at, 0x800e
/* 0B5B5C 8015511C E4840014 */  swc1  $f4, 0x14($a0)
/* 0B5B60 80155120 C4680000 */  lwc1  $f8, ($v1)
/* 0B5B64 80155124 C4660008 */  lwc1  $f6, 8($v1)
/* 0B5B68 80155128 46083280 */  add.s $f10, $f6, $f8
/* 0B5B6C 8015512C E48A0018 */  swc1  $f10, 0x18($a0)
/* 0B5B70 80155130 8CCE0000 */  lw    $t6, ($a2)
/* 0B5B74 80155134 8DCF0000 */  lw    $t7, ($t6)
/* 0B5B78 80155138 000FC080 */  sll   $t8, $t7, 2
/* 0B5B7C 8015513C 00380821 */  addu  $at, $at, $t8
/* 0B5B80 80155140 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 0B5B84 80155144 46128032 */  c.eq.s $f16, $f18
/* 0B5B88 80155148 00000000 */  nop   
/* 0B5B8C 8015514C 45020007 */  bc1fl .L8015516C_ovl3
/* 0B5B90 80155150 C4680010 */   lwc1  $f8, 0x10($v1)
/* 0B5B94 80155154 C464000C */  lwc1  $f4, 0xc($v1)
/* 0B5B98 80155158 E484001C */  swc1  $f4, 0x1c($a0)
/* 0B5B9C 8015515C C4660010 */  lwc1  $f6, 0x10($v1)
/* 0B5BA0 80155160 10000005 */  b     .L80155178_ovl3
/* 0B5BA4 80155164 E4860020 */   swc1  $f6, 0x20($a0)
/* 0B5BA8 80155168 C4680010 */  lwc1  $f8, 0x10($v1)
.L8015516C_ovl3:
/* 0B5BAC 8015516C E488001C */  swc1  $f8, 0x1c($a0)
/* 0B5BB0 80155170 C46A000C */  lwc1  $f10, 0xc($v1)
/* 0B5BB4 80155174 E48A0020 */  swc1  $f10, 0x20($a0)
.L80155178_ovl3:
/* 0B5BB8 80155178 8CD90000 */  lw    $t9, ($a2)
/* 0B5BBC 8015517C 3C01800E */  lui   $at, 0x800e
/* 0B5BC0 80155180 8F2B0000 */  lw    $t3, ($t9)
/* 0B5BC4 80155184 000B6080 */  sll   $t4, $t3, 2
/* 0B5BC8 80155188 002C0821 */  addu  $at, $at, $t4
/* 0B5BCC 8015518C C43017D0 */  lwc1  $f16, 0x17d0($at)
/* 0B5BD0 80155190 3C01800F */  lui   $at, 0x800f
/* 0B5BD4 80155194 E4900024 */  swc1  $f16, 0x24($a0)
/* 0B5BD8 80155198 8CCD0000 */  lw    $t5, ($a2)
/* 0B5BDC 8015519C 8DAE0000 */  lw    $t6, ($t5)
/* 0B5BE0 801551A0 AFA40048 */  sw    $a0, 0x48($sp)
/* 0B5BE4 801551A4 AFA3002C */  sw    $v1, 0x2c($sp)
/* 0B5BE8 801551A8 000E7880 */  sll   $t7, $t6, 2
/* 0B5BEC 801551AC 002F0821 */  addu  $at, $at, $t7
/* 0B5BF0 801551B0 0C04309D */  jal   func_8010C274
/* 0B5BF4 801551B4 AC208920 */   sw    $zero, -0x76e0($at)
/* 0B5BF8 801551B8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0B5BFC 801551BC 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 0B5C00 801551C0 8CD80000 */  lw    $t8, ($a2)
/* 0B5C04 801551C4 3C01800E */  lui   $at, 0x800e
/* 0B5C08 801551C8 8FA40048 */  lw    $a0, 0x48($sp)
/* 0B5C0C 801551CC 8F190000 */  lw    $t9, ($t8)
/* 0B5C10 801551D0 3C058013 */  lui   $a1, %hi(D_8012BCA0) # $a1, 0x8013
/* 0B5C14 801551D4 24A5BCA0 */  addiu $a1, %lo(D_8012BCA0) # addiu $a1, $a1, -0x4360
/* 0B5C18 801551D8 00195880 */  sll   $t3, $t9, 2
/* 0B5C1C 801551DC 002B0821 */  addu  $at, $at, $t3
/* 0B5C20 801551E0 C43225D0 */  lwc1  $f18, 0x25d0($at)
/* 0B5C24 801551E4 3C01800E */  lui   $at, 0x800e
/* 0B5C28 801551E8 E4920004 */  swc1  $f18, 4($a0)
/* 0B5C2C 801551EC 8CCC0000 */  lw    $t4, ($a2)
/* 0B5C30 801551F0 8D8D0000 */  lw    $t5, ($t4)
/* 0B5C34 801551F4 000D7080 */  sll   $t6, $t5, 2
/* 0B5C38 801551F8 002E0821 */  addu  $at, $at, $t6
/* 0B5C3C 801551FC C4242790 */  lwc1  $f4, 0x2790($at)
/* 0B5C40 80155200 3C01800E */  lui   $at, 0x800e
/* 0B5C44 80155204 E4840008 */  swc1  $f4, 8($a0)
/* 0B5C48 80155208 8CCF0000 */  lw    $t7, ($a2)
/* 0B5C4C 8015520C 8DF80000 */  lw    $t8, ($t7)
/* 0B5C50 80155210 0018C880 */  sll   $t9, $t8, 2
/* 0B5C54 80155214 00390821 */  addu  $at, $at, $t9
/* 0B5C58 80155218 C4262950 */  lwc1  $f6, 0x2950($at)
/* 0B5C5C 8015521C 0C04148E */  jal   func_80105238
/* 0B5C60 80155220 E486000C */   swc1  $f6, 0xc($a0)
/* 0B5C64 80155224 3C0B8013 */  lui   $t3, %hi(D_8012BCA0) # $t3, 0x8013
/* 0B5C68 80155228 8D6BBCA0 */  lw    $t3, %lo(D_8012BCA0)($t3)
/* 0B5C6C 8015522C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0B5C70 80155230 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 0B5C74 80155234 000B64C2 */  srl   $t4, $t3, 0x13
/* 0B5C78 80155238 11800008 */  beqz  $t4, .L8015525C_ovl3
/* 0B5C7C 8015523C 8FA3002C */   lw    $v1, 0x2c($sp)
/* 0B5C80 80155240 8CCE0000 */  lw    $t6, ($a2)
/* 0B5C84 80155244 3C01800F */  lui   $at, 0x800f
/* 0B5C88 80155248 240D0001 */  li    $t5, 1
/* 0B5C8C 8015524C 8DCF0000 */  lw    $t7, ($t6)
/* 0B5C90 80155250 000FC080 */  sll   $t8, $t7, 2
/* 0B5C94 80155254 00380821 */  addu  $at, $at, $t8
/* 0B5C98 80155258 AC2D8920 */  sw    $t5, -0x76e0($at)
.L8015525C_ovl3:
/* 0B5C9C 8015525C 8CC70000 */  lw    $a3, ($a2)
/* 0B5CA0 80155260 3C01800E */  lui   $at, 0x800e
/* 0B5CA4 80155264 27A4003C */  addiu $a0, $sp, 0x3c
/* 0B5CA8 80155268 8CF90000 */  lw    $t9, ($a3)
/* 0B5CAC 8015526C 00195880 */  sll   $t3, $t9, 2
/* 0B5CB0 80155270 002B0821 */  addu  $at, $at, $t3
/* 0B5CB4 80155274 C42825D0 */  lwc1  $f8, 0x25d0($at)
/* 0B5CB8 80155278 3C01800E */  lui   $at, 0x800e
/* 0B5CBC 8015527C E7A8003C */  swc1  $f8, 0x3c($sp)
/* 0B5CC0 80155280 8CEC0000 */  lw    $t4, ($a3)
/* 0B5CC4 80155284 C4700000 */  lwc1  $f16, ($v1)
/* 0B5CC8 80155288 000C7080 */  sll   $t6, $t4, 2
/* 0B5CCC 8015528C 002E0821 */  addu  $at, $at, $t6
/* 0B5CD0 80155290 C42A2790 */  lwc1  $f10, 0x2790($at)
/* 0B5CD4 80155294 3C01800E */  lui   $at, 0x800e
/* 0B5CD8 80155298 46105480 */  add.s $f18, $f10, $f16
/* 0B5CDC 8015529C E7B20040 */  swc1  $f18, 0x40($sp)
/* 0B5CE0 801552A0 8CEF0000 */  lw    $t7, ($a3)
/* 0B5CE4 801552A4 000F6880 */  sll   $t5, $t7, 2
/* 0B5CE8 801552A8 002D0821 */  addu  $at, $at, $t5
/* 0B5CEC 801552AC C4242950 */  lwc1  $f4, 0x2950($at)
/* 0B5CF0 801552B0 0C0437E7 */  jal   func_8010DF9C
/* 0B5CF4 801552B4 E7A40044 */   swc1  $f4, 0x44($sp)
/* 0B5CF8 801552B8 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0B5CFC 801552BC 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 0B5D00 801552C0 8CC70000 */  lw    $a3, ($a2)
/* 0B5D04 801552C4 3C08800F */  lui   $t0, %hi(D_800E8AE0) # $t0, 0x800f
/* 0B5D08 801552C8 25088AE0 */  addiu $t0, %lo(D_800E8AE0) # addiu $t0, $t0, -0x7520
/* 0B5D0C 801552CC 8CF80000 */  lw    $t8, ($a3)
/* 0B5D10 801552D0 00405025 */  move  $t2, $v0
/* 0B5D14 801552D4 0018C880 */  sll   $t9, $t8, 2
/* 0B5D18 801552D8 01191821 */  addu  $v1, $t0, $t9
/* 0B5D1C 801552DC 8C6B0000 */  lw    $t3, ($v1)
/* 0B5D20 801552E0 000B6042 */  srl   $t4, $t3, 1
/* 0B5D24 801552E4 1040004B */  beqz  $v0, .L80155414_ovl3
/* 0B5D28 801552E8 AC6C0000 */   sw    $t4, ($v1)
/* 0B5D2C 801552EC 18400049 */  blez  $v0, .L80155414_ovl3
/* 0B5D30 801552F0 00002825 */   move  $a1, $zero
/* 0B5D34 801552F4 30430003 */  andi  $v1, $v0, 3
/* 0B5D38 801552F8 10600014 */  beqz  $v1, .L8015534C_ovl3
/* 0B5D3C 801552FC 00604825 */   move  $t1, $v1
/* 0B5D40 80155300 3C0F8013 */  lui   $t7, %hi(D_8012BCA0) # $t7, 0x8013
/* 0B5D44 80155304 25EFBCA0 */  addiu $t7, %lo(D_8012BCA0) # addiu $t7, $t7, -0x4360
/* 0B5D48 80155308 00007080 */  sll   $t6, $zero, 2
/* 0B5D4C 8015530C 01CF2021 */  addu  $a0, $t6, $t7
/* 0B5D50 80155310 24060001 */  li    $a2, 1
.L80155314_ovl3:
/* 0B5D54 80155314 8C8D0040 */  lw    $t5, 0x40($a0)
/* 0B5D58 80155318 24A50001 */  addiu $a1, $a1, 1
/* 0B5D5C 8015531C 91B80004 */  lbu   $t8, 4($t5)
/* 0B5D60 80155320 14D80007 */  bne   $a2, $t8, .L80155340_ovl3
/* 0B5D64 80155324 00000000 */   nop   
/* 0B5D68 80155328 8CF90000 */  lw    $t9, ($a3)
/* 0B5D6C 8015532C 00195880 */  sll   $t3, $t9, 2
/* 0B5D70 80155330 010B1821 */  addu  $v1, $t0, $t3
/* 0B5D74 80155334 8C6C0000 */  lw    $t4, ($v1)
/* 0B5D78 80155338 358E0004 */  ori   $t6, $t4, 4
/* 0B5D7C 8015533C AC6E0000 */  sw    $t6, ($v1)
.L80155340_ovl3:
/* 0B5D80 80155340 1525FFF4 */  bne   $t1, $a1, .L80155314_ovl3
/* 0B5D84 80155344 24840004 */   addiu $a0, $a0, 4
/* 0B5D88 80155348 10A20032 */  beq   $a1, $v0, .L80155414_ovl3
.L8015534C_ovl3:
/* 0B5D8C 8015534C 3C0D8013 */   lui   $t5, %hi(D_8012BCA0) # $t5, 0x8013
/* 0B5D90 80155350 25ADBCA0 */  addiu $t5, %lo(D_8012BCA0) # addiu $t5, $t5, -0x4360
/* 0B5D94 80155354 00057880 */  sll   $t7, $a1, 2
/* 0B5D98 80155358 000AC080 */  sll   $t8, $t2, 2
/* 0B5D9C 8015535C 030D1021 */  addu  $v0, $t8, $t5
/* 0B5DA0 80155360 01ED2021 */  addu  $a0, $t7, $t5
/* 0B5DA4 80155364 24060001 */  li    $a2, 1
/* 0B5DA8 80155368 8C990040 */  lw    $t9, 0x40($a0)
.L8015536C_ovl3:
/* 0B5DAC 8015536C 932B0004 */  lbu   $t3, 4($t9)
/* 0B5DB0 80155370 54CB0008 */  bnel  $a2, $t3, .L80155394_ovl3
/* 0B5DB4 80155374 8C8D0044 */   lw    $t5, 0x44($a0)
/* 0B5DB8 80155378 8CEC0000 */  lw    $t4, ($a3)
/* 0B5DBC 8015537C 000C7080 */  sll   $t6, $t4, 2
/* 0B5DC0 80155380 010E1821 */  addu  $v1, $t0, $t6
/* 0B5DC4 80155384 8C6F0000 */  lw    $t7, ($v1)
/* 0B5DC8 80155388 35F80004 */  ori   $t8, $t7, 4
/* 0B5DCC 8015538C AC780000 */  sw    $t8, ($v1)
/* 0B5DD0 80155390 8C8D0044 */  lw    $t5, 0x44($a0)
.L80155394_ovl3:
/* 0B5DD4 80155394 91B90004 */  lbu   $t9, 4($t5)
/* 0B5DD8 80155398 54D90008 */  bnel  $a2, $t9, .L801553BC_ovl3
/* 0B5DDC 8015539C 8C980048 */   lw    $t8, 0x48($a0)
/* 0B5DE0 801553A0 8CEB0000 */  lw    $t3, ($a3)
/* 0B5DE4 801553A4 000B6080 */  sll   $t4, $t3, 2
/* 0B5DE8 801553A8 010C1821 */  addu  $v1, $t0, $t4
/* 0B5DEC 801553AC 8C6E0000 */  lw    $t6, ($v1)
/* 0B5DF0 801553B0 35CF0004 */  ori   $t7, $t6, 4
/* 0B5DF4 801553B4 AC6F0000 */  sw    $t7, ($v1)
/* 0B5DF8 801553B8 8C980048 */  lw    $t8, 0x48($a0)
.L801553BC_ovl3:
/* 0B5DFC 801553BC 930D0004 */  lbu   $t5, 4($t8)
/* 0B5E00 801553C0 54CD0008 */  bnel  $a2, $t5, .L801553E4_ovl3
/* 0B5E04 801553C4 8C8F004C */   lw    $t7, 0x4c($a0)
/* 0B5E08 801553C8 8CF90000 */  lw    $t9, ($a3)
/* 0B5E0C 801553CC 00195880 */  sll   $t3, $t9, 2
/* 0B5E10 801553D0 010B1821 */  addu  $v1, $t0, $t3
/* 0B5E14 801553D4 8C6C0000 */  lw    $t4, ($v1)
/* 0B5E18 801553D8 358E0004 */  ori   $t6, $t4, 4
/* 0B5E1C 801553DC AC6E0000 */  sw    $t6, ($v1)
/* 0B5E20 801553E0 8C8F004C */  lw    $t7, 0x4c($a0)
.L801553E4_ovl3:
/* 0B5E24 801553E4 24840010 */  addiu $a0, $a0, 0x10
/* 0B5E28 801553E8 91F80004 */  lbu   $t8, 4($t7)
/* 0B5E2C 801553EC 14D80007 */  bne   $a2, $t8, .L8015540C_ovl3
/* 0B5E30 801553F0 00000000 */   nop   
/* 0B5E34 801553F4 8CED0000 */  lw    $t5, ($a3)
/* 0B5E38 801553F8 000DC880 */  sll   $t9, $t5, 2
/* 0B5E3C 801553FC 01191821 */  addu  $v1, $t0, $t9
/* 0B5E40 80155400 8C6B0000 */  lw    $t3, ($v1)
/* 0B5E44 80155404 356C0004 */  ori   $t4, $t3, 4
/* 0B5E48 80155408 AC6C0000 */  sw    $t4, ($v1)
.L8015540C_ovl3:
/* 0B5E4C 8015540C 5482FFD7 */  bnel  $a0, $v0, .L8015536C_ovl3
/* 0B5E50 80155410 8C990040 */   lw    $t9, 0x40($a0)
.L80155414_ovl3:
/* 0B5E54 80155414 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5E58 80155418 27BD0048 */  addiu $sp, $sp, 0x48
/* 0B5E5C 8015541C 03E00008 */  jr    $ra
/* 0B5E60 80155420 00000000 */   nop   
