nonmatching func_80167F54_ovl3, 0x4B4

glabel func_80167F54_ovl3
    /* C8994 80167F54 27BDFFC0 */  addiu      $sp, $sp, -0x40
    /* C8998 80167F58 AFB00020 */  sw         $s0, 0x20($sp)
    /* C899C 80167F5C 3C108005 */  lui        $s0, %hi(omCurrentObj)
    /* C89A0 80167F60 2610A7C4 */  addiu      $s0, $s0, %lo(omCurrentObj)
    /* C89A4 80167F64 8E030000 */  lw         $v1, 0x0($s0)
    /* C89A8 80167F68 AFBF0024 */  sw         $ra, 0x24($sp)
    /* C89AC 80167F6C AFA40040 */  sw         $a0, 0x40($sp)
    /* C89B0 80167F70 8C680000 */  lw         $t0, 0x0($v1)
    /* C89B4 80167F74 3C098013 */  lui        $t1, %hi(gKirbyState)
    /* C89B8 80167F78 2529E7C0 */  addiu      $t1, $t1, %lo(gKirbyState)
    /* C89BC 80167F7C 8D2500A0 */  lw         $a1, 0xA0($t1)
    /* C89C0 80167F80 3C06800F */  lui        $a2, %hi(D_800E9FE0)
    /* C89C4 80167F84 00081080 */  sll        $v0, $t0, 2
    /* C89C8 80167F88 00C23021 */  addu       $a2, $a2, $v0
    /* C89CC 80167F8C 10A0010E */  beqz       $a1, .L801683C8_ovl3
    /* C89D0 80167F90 8CC69FE0 */   lw        $a2, %lo(D_800E9FE0)($a2)
    /* C89D4 80167F94 3C04800F */  lui        $a0, %hi(D_800EC2E0)
    /* C89D8 80167F98 00822021 */  addu       $a0, $a0, $v0
    /* C89DC 80167F9C 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
    /* C89E0 80167FA0 24070001 */  addiu      $a3, $zero, 0x1
    /* C89E4 80167FA4 50800008 */  beql       $a0, $zero, .L80167FC8_ovl3
    /* C89E8 80167FA8 8D2E0044 */   lw        $t6, 0x44($t1)
    /* C89EC 80167FAC 10870025 */  beq        $a0, $a3, .L80168044_ovl3
    /* C89F0 80167FB0 24010002 */   addiu     $at, $zero, 0x2
    /* C89F4 80167FB4 108100B1 */  beq        $a0, $at, .L8016827C_ovl3
    /* C89F8 80167FB8 3C0E800F */   lui       $t6, %hi(D_800E98E0)
    /* C89FC 80167FBC 10000103 */  b          .L801683CC_ovl3
    /* C8A00 80167FC0 8CCB0000 */   lw        $t3, 0x0($a2)
    /* C8A04 80167FC4 8D2E0044 */  lw         $t6, 0x44($t1)
  .L80167FC8_ovl3:
    /* C8A08 80167FC8 3C0F800E */  lui        $t7, %hi(D_800E0D50)
    /* C8A0C 80167FCC 01E27821 */  addu       $t7, $t7, $v0
    /* C8A10 80167FD0 15C000FD */  bnez       $t6, .L801683C8_ovl3
    /* C8A14 80167FD4 3C01800E */   lui       $at, %hi(D_800E17D0)
    /* C8A18 80167FD8 8DEF0D50 */  lw         $t7, %lo(D_800E0D50)($t7)
    /* C8A1C 80167FDC 3C048019 */  lui        $a0, %hi(D_80191CAC_ovl3)
    /* C8A20 80167FE0 24841CAC */  addiu      $a0, $a0, %lo(D_80191CAC_ovl3)
    /* C8A24 80167FE4 000FC080 */  sll        $t8, $t7, 2
    /* C8A28 80167FE8 00380821 */  addu       $at, $at, $t8
    /* C8A2C 80167FEC C42417D0 */  lwc1       $f4, %lo(D_800E17D0)($at)
    /* C8A30 80167FF0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C8A34 80167FF4 00220821 */  addu       $at, $at, $v0
    /* C8A38 80167FF8 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
    /* C8A3C 80167FFC 0C044681 */  jal        func_80111A04
    /* C8A40 80168000 8C650000 */   lw        $a1, 0x0($v1)
    /* C8A44 80168004 0C044713 */  jal        func_80111C4C
    /* C8A48 80168008 00402025 */   or        $a0, $v0, $zero
    /* C8A4C 8016800C 8E190000 */  lw         $t9, 0x0($s0)
    /* C8A50 80168010 3C0C801A */  lui        $t4, %hi(D_80198540_ovl3)
    /* C8A54 80168014 258C8540 */  addiu      $t4, $t4, %lo(D_80198540_ovl3)
    /* C8A58 80168018 8F280000 */  lw         $t0, 0x0($t9)
    /* C8A5C 8016801C 3C058019 */  lui        $a1, %hi(D_8019570C_ovl3)
    /* C8A60 80168020 24A5570C */  addiu      $a1, $a1, %lo(D_8019570C_ovl3)
    /* C8A64 80168024 00085140 */  sll        $t2, $t0, 5
    /* C8A68 80168028 254BF880 */  addiu      $t3, $t2, -0x780
    /* C8A6C 8016802C 016C2021 */  addu       $a0, $t3, $t4
    /* C8A70 80168030 00003025 */  or         $a2, $zero, $zero
    /* C8A74 80168034 0C055754 */  jal        func_80155D50_ovl3
    /* C8A78 80168038 01003825 */   or        $a3, $t0, $zero
    /* C8A7C 8016803C 100000EE */  b          .L801683F8_ovl3
    /* C8A80 80168040 8FBF0024 */   lw        $ra, 0x24($sp)
  .L80168044_ovl3:
    /* C8A84 80168044 14A00003 */  bnez       $a1, .L80168054_ovl3
    /* C8A88 80168048 3C0E800F */   lui       $t6, %hi(D_800E98E0)
    /* C8A8C 8016804C 8D2D0044 */  lw         $t5, 0x44($t1)
    /* C8A90 80168050 10ED00DD */  beq        $a3, $t5, .L801683C8_ovl3
  .L80168054_ovl3:
    /* C8A94 80168054 25CE98E0 */   addiu     $t6, $t6, %lo(D_800E98E0)
    /* C8A98 80168058 004E2021 */  addu       $a0, $v0, $t6
    /* C8A9C 8016805C 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C8AA0 80168060 3C19800F */  lui        $t9, %hi(D_800E98E0)
    /* C8AA4 80168064 39F80001 */  xori       $t8, $t7, 0x1
    /* C8AA8 80168068 AC980000 */  sw         $t8, 0x0($a0)
    /* C8AAC 8016806C 8C620000 */  lw         $v0, 0x0($v1)
    /* C8AB0 80168070 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* C8AB4 80168074 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
    /* C8AB8 80168078 00021080 */  sll        $v0, $v0, 2
    /* C8ABC 8016807C 0322C821 */  addu       $t9, $t9, $v0
    /* C8AC0 80168080 8F3998E0 */  lw         $t9, %lo(D_800E98E0)($t9)
    /* C8AC4 80168084 00625021 */  addu       $t2, $v1, $v0
    /* C8AC8 80168088 1720001B */  bnez       $t9, .L801680F8_ovl3
    /* C8ACC 8016808C 00000000 */   nop
    /* C8AD0 80168090 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C8AD4 80168094 3C048019 */  lui        $a0, %hi(D_80196904_ovl3)
    /* C8AD8 80168098 24846904 */  addiu      $a0, $a0, %lo(D_80196904_ovl3)
    /* C8ADC 8016809C 8D6C000C */  lw         $t4, 0xC($t3)
    /* C8AE0 801680A0 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C8AE4 801680A4 8D8D0080 */  lw         $t5, 0x80($t4)
    /* C8AE8 801680A8 ADAF0058 */  sw         $t7, 0x58($t5)
    /* C8AEC 801680AC 8E180000 */  lw         $t8, 0x0($s0)
    /* C8AF0 801680B0 8F190000 */  lw         $t9, 0x0($t8)
    /* C8AF4 801680B4 8C980000 */  lw         $t8, 0x0($a0)
    /* C8AF8 801680B8 00195080 */  sll        $t2, $t9, 2
    /* C8AFC 801680BC 006A5821 */  addu       $t3, $v1, $t2
    /* C8B00 801680C0 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C8B04 801680C4 8D8D0014 */  lw         $t5, 0x14($t4)
    /* C8B08 801680C8 8DAE0080 */  lw         $t6, 0x80($t5)
    /* C8B0C 801680CC ADD80058 */  sw         $t8, 0x58($t6)
    /* C8B10 801680D0 8E190000 */  lw         $t9, 0x0($s0)
    /* C8B14 801680D4 8F2A0000 */  lw         $t2, 0x0($t9)
    /* C8B18 801680D8 8C990000 */  lw         $t9, 0x0($a0)
    /* C8B1C 801680DC 000A5880 */  sll        $t3, $t2, 2
    /* C8B20 801680E0 006B6021 */  addu       $t4, $v1, $t3
    /* C8B24 801680E4 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C8B28 801680E8 8DAE001C */  lw         $t6, 0x1C($t5)
    /* C8B2C 801680EC 8DCF0080 */  lw         $t7, 0x80($t6)
    /* C8B30 801680F0 1000001D */  b          .L80168168_ovl3
    /* C8B34 801680F4 ADF90058 */   sw        $t9, 0x58($t7)
  .L801680F8_ovl3:
    /* C8B38 801680F8 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* C8B3C 801680FC 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
    /* C8B40 80168100 00625021 */  addu       $t2, $v1, $v0
    /* C8B44 80168104 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C8B48 80168108 3C048019 */  lui        $a0, %hi(D_80196908_ovl3)
    /* C8B4C 8016810C 24846908 */  addiu      $a0, $a0, %lo(D_80196908_ovl3)
    /* C8B50 80168110 8D6C000C */  lw         $t4, 0xC($t3)
    /* C8B54 80168114 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C8B58 80168118 8D8D0080 */  lw         $t5, 0x80($t4)
    /* C8B5C 8016811C ADAF0058 */  sw         $t7, 0x58($t5)
    /* C8B60 80168120 8E180000 */  lw         $t8, 0x0($s0)
    /* C8B64 80168124 8F190000 */  lw         $t9, 0x0($t8)
    /* C8B68 80168128 8C980000 */  lw         $t8, 0x0($a0)
    /* C8B6C 8016812C 00195080 */  sll        $t2, $t9, 2
    /* C8B70 80168130 006A5821 */  addu       $t3, $v1, $t2
    /* C8B74 80168134 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C8B78 80168138 8D8D0014 */  lw         $t5, 0x14($t4)
    /* C8B7C 8016813C 8DAE0080 */  lw         $t6, 0x80($t5)
    /* C8B80 80168140 ADD80058 */  sw         $t8, 0x58($t6)
    /* C8B84 80168144 8E190000 */  lw         $t9, 0x0($s0)
    /* C8B88 80168148 8F2A0000 */  lw         $t2, 0x0($t9)
    /* C8B8C 8016814C 8C990000 */  lw         $t9, 0x0($a0)
    /* C8B90 80168150 000A5880 */  sll        $t3, $t2, 2
    /* C8B94 80168154 006B6021 */  addu       $t4, $v1, $t3
    /* C8B98 80168158 8D8D0000 */  lw         $t5, 0x0($t4)
    /* C8B9C 8016815C 8DAE001C */  lw         $t6, 0x1C($t5)
    /* C8BA0 80168160 8DCF0080 */  lw         $t7, 0x80($t6)
    /* C8BA4 80168164 ADF90058 */  sw         $t9, 0x58($t7)
  .L80168168_ovl3:
    /* C8BA8 80168168 8E0A0000 */  lw         $t2, 0x0($s0)
    /* C8BAC 8016816C C5260040 */  lwc1       $f6, 0x40($t1)
    /* C8BB0 80168170 3C01800E */  lui        $at, %hi(D_800E17D0)
    /* C8BB4 80168174 8D4B0000 */  lw         $t3, 0x0($t2)
    /* C8BB8 80168178 44802000 */  mtc1       $zero, $f4
    /* C8BBC 8016817C 3C048019 */  lui        $a0, %hi(D_80195500_ovl3)
    /* C8BC0 80168180 000B6080 */  sll        $t4, $t3, 2
    /* C8BC4 80168184 006C6821 */  addu       $t5, $v1, $t4
    /* C8BC8 80168188 8DAE0000 */  lw         $t6, 0x0($t5)
    /* C8BCC 8016818C 3C05801A */  lui        $a1, %hi(D_80198700_ovl3)
    /* C8BD0 80168190 24A58700 */  addiu      $a1, $a1, %lo(D_80198700_ovl3)
    /* C8BD4 80168194 8DCF0004 */  lw         $t7, 0x4($t6)
    /* C8BD8 80168198 24845500 */  addiu      $a0, $a0, %lo(D_80195500_ovl3)
    /* C8BDC 8016819C 24060010 */  addiu      $a2, $zero, 0x10
    /* C8BE0 801681A0 E5E60040 */  swc1       $f6, 0x40($t7)
    /* C8BE4 801681A4 8E180000 */  lw         $t8, 0x0($s0)
    /* C8BE8 801681A8 C5280040 */  lwc1       $f8, 0x40($t1)
    /* C8BEC 801681AC 8F190000 */  lw         $t9, 0x0($t8)
    /* C8BF0 801681B0 00195080 */  sll        $t2, $t9, 2
    /* C8BF4 801681B4 006A5821 */  addu       $t3, $v1, $t2
    /* C8BF8 801681B8 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C8BFC 801681BC 8D8D0004 */  lw         $t5, 0x4($t4)
    /* C8C00 801681C0 E5A80044 */  swc1       $f8, 0x44($t5)
    /* C8C04 801681C4 8E0E0000 */  lw         $t6, 0x0($s0)
    /* C8C08 801681C8 C52A0040 */  lwc1       $f10, 0x40($t1)
    /* C8C0C 801681CC 3C0D800E */  lui        $t5, %hi(D_800E0D50)
    /* C8C10 801681D0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* C8C14 801681D4 000FC080 */  sll        $t8, $t7, 2
    /* C8C18 801681D8 0078C821 */  addu       $t9, $v1, $t8
    /* C8C1C 801681DC 8F2A0000 */  lw         $t2, 0x0($t9)
    /* C8C20 801681E0 8D4B0004 */  lw         $t3, 0x4($t2)
    /* C8C24 801681E4 E56A0048 */  swc1       $f10, 0x48($t3)
    /* C8C28 801681E8 8E0C0000 */  lw         $t4, 0x0($s0)
    /* C8C2C 801681EC 8D820000 */  lw         $v0, 0x0($t4)
    /* C8C30 801681F0 E7A40014 */  swc1       $f4, 0x14($sp)
    /* C8C34 801681F4 00021080 */  sll        $v0, $v0, 2
    /* C8C38 801681F8 01A26821 */  addu       $t5, $t5, $v0
    /* C8C3C 801681FC 8DAD0D50 */  lw         $t5, %lo(D_800E0D50)($t5)
    /* C8C40 80168200 000D7080 */  sll        $t6, $t5, 2
    /* C8C44 80168204 002E0821 */  addu       $at, $at, $t6
    /* C8C48 80168208 C43017D0 */  lwc1       $f16, %lo(D_800E17D0)($at)
    /* C8C4C 8016820C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C8C50 80168210 00220821 */  addu       $at, $at, $v0
    /* C8C54 80168214 E43041D0 */  swc1       $f16, %lo(gEntitiesAngleYArray)($at)
    /* C8C58 80168218 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* C8C5C 8016821C 44819000 */  mtc1       $at, $f18
    /* C8C60 80168220 8D270040 */  lw         $a3, 0x40($t1)
    /* C8C64 80168224 0C054849 */  jal        func_80152124_ovl3
    /* C8C68 80168228 E7B20010 */   swc1      $f18, 0x10($sp)
    /* C8C6C 8016822C 8E0F0000 */  lw         $t7, 0x0($s0)
    /* C8C70 80168230 3C0A801A */  lui        $t2, %hi(D_80198540_ovl3)
    /* C8C74 80168234 254A8540 */  addiu      $t2, $t2, %lo(D_80198540_ovl3)
    /* C8C78 80168238 8DE80000 */  lw         $t0, 0x0($t7)
    /* C8C7C 8016823C 3C058019 */  lui        $a1, %hi(D_80195600_ovl3)
    /* C8C80 80168240 24A55600 */  addiu      $a1, $a1, %lo(D_80195600_ovl3)
    /* C8C84 80168244 0008C140 */  sll        $t8, $t0, 5
    /* C8C88 80168248 2719F880 */  addiu      $t9, $t8, -0x780
    /* C8C8C 8016824C 032A2021 */  addu       $a0, $t9, $t2
    /* C8C90 80168250 00003025 */  or         $a2, $zero, $zero
    /* C8C94 80168254 0C055754 */  jal        func_80155D50_ovl3
    /* C8C98 80168258 01003825 */   or        $a3, $t0, $zero
    /* C8C9C 8016825C 8E0B0000 */  lw         $t3, 0x0($s0)
    /* C8CA0 80168260 44803000 */  mtc1       $zero, $f6
    /* C8CA4 80168264 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C8CA8 80168268 8D6C0000 */  lw         $t4, 0x0($t3)
    /* C8CAC 8016826C 000C6880 */  sll        $t5, $t4, 2
    /* C8CB0 80168270 002D0821 */  addu       $at, $at, $t5
    /* C8CB4 80168274 1000005F */  b          .L801683F4_ovl3
    /* C8CB8 80168278 E42641D0 */   swc1      $f6, %lo(gEntitiesAngleYArray)($at)
  .L8016827C_ovl3:
    /* C8CBC 8016827C 01C27021 */  addu       $t6, $t6, $v0
    /* C8CC0 80168280 8DCE98E0 */  lw         $t6, %lo(D_800E98E0)($t6)
    /* C8CC4 80168284 3C04800E */  lui        $a0, %hi(gEntitiesNextPosXArray)
    /* C8CC8 80168288 248425D0 */  addiu      $a0, $a0, %lo(gEntitiesNextPosXArray)
    /* C8CCC 8016828C 15C00041 */  bnez       $t6, .L80168394_ovl3
    /* C8CD0 80168290 3C05800E */   lui       $a1, %hi(gEntitiesNextPosYArray)
    /* C8CD4 80168294 3C03800E */  lui        $v1, %hi(D_800E1B50 + 0x1C0)
    /* C8CD8 80168298 00621821 */  addu       $v1, $v1, $v0
    /* C8CDC 8016829C 8C631D10 */  lw         $v1, %lo(D_800E1B50 + 0x1C0)($v1)
    /* C8CE0 801682A0 0082C021 */  addu       $t8, $a0, $v0
    /* C8CE4 801682A4 C70A0000 */  lwc1       $f10, 0x0($t8)
    /* C8CE8 801682A8 00031880 */  sll        $v1, $v1, 2
    /* C8CEC 801682AC 00837821 */  addu       $t7, $a0, $v1
    /* C8CF0 801682B0 C5E80000 */  lwc1       $f8, 0x0($t7)
    /* C8CF4 801682B4 3C06800E */  lui        $a2, %hi(gEntitiesNextPosZArray)
    /* C8CF8 801682B8 24C62950 */  addiu      $a2, $a2, %lo(gEntitiesNextPosZArray)
    /* C8CFC 801682BC 24A52790 */  addiu      $a1, $a1, %lo(gEntitiesNextPosYArray)
    /* C8D00 801682C0 460A4301 */  sub.s      $f12, $f8, $f10
    /* C8D04 801682C4 00A3C821 */  addu       $t9, $a1, $v1
    /* C8D08 801682C8 00A25021 */  addu       $t2, $a1, $v0
    /* C8D0C 801682CC 00C35821 */  addu       $t3, $a2, $v1
    /* C8D10 801682D0 00C26021 */  addu       $t4, $a2, $v0
    /* C8D14 801682D4 C5520000 */  lwc1       $f18, 0x0($t2)
    /* C8D18 801682D8 C7300000 */  lwc1       $f16, 0x0($t9)
    /* C8D1C 801682DC C5880000 */  lwc1       $f8, 0x0($t4)
    /* C8D20 801682E0 C5660000 */  lwc1       $f6, 0x0($t3)
    /* C8D24 801682E4 46128101 */  sub.s      $f4, $f16, $f18
    /* C8D28 801682E8 E7AC002C */  swc1       $f12, 0x2C($sp)
    /* C8D2C 801682EC 46083381 */  sub.s      $f14, $f6, $f8
    /* C8D30 801682F0 E7A40030 */  swc1       $f4, 0x30($sp)
    /* C8D34 801682F4 0C0061C3 */  jal        atan2f
    /* C8D38 801682F8 E7AE0034 */   swc1      $f14, 0x34($sp)
    /* C8D3C 801682FC C7A2002C */  lwc1       $f2, 0x2C($sp)
    /* C8D40 80168300 C7AE0034 */  lwc1       $f14, 0x34($sp)
    /* C8D44 80168304 8E0D0000 */  lw         $t5, 0x0($s0)
    /* C8D48 80168308 46021282 */  mul.s      $f10, $f2, $f2
    /* C8D4C 8016830C 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C8D50 80168310 8DAE0000 */  lw         $t6, 0x0($t5)
    /* C8D54 80168314 460E7402 */  mul.s      $f16, $f14, $f14
    /* C8D58 80168318 000E7880 */  sll        $t7, $t6, 2
    /* C8D5C 8016831C 002F0821 */  addu       $at, $at, $t7
    /* C8D60 80168320 E42041D0 */  swc1       $f0, %lo(gEntitiesAngleYArray)($at)
    /* C8D64 80168324 0C00CAC8 */  jal        sqrtf
    /* C8D68 80168328 46105300 */   add.s     $f12, $f10, $f16
    /* C8D6C 8016832C C7AC0030 */  lwc1       $f12, 0x30($sp)
    /* C8D70 80168330 0C0061C3 */  jal        atan2f
    /* C8D74 80168334 46000386 */   mov.s     $f14, $f0
    /* C8D78 80168338 8E030000 */  lw         $v1, 0x0($s0)
    /* C8D7C 8016833C 46000487 */  neg.s      $f18, $f0
    /* C8D80 80168340 3C01800E */  lui        $at, %hi(gEntitiesAngleXArray)
    /* C8D84 80168344 8C780000 */  lw         $t8, 0x0($v1)
    /* C8D88 80168348 44802000 */  mtc1       $zero, $f4
    /* C8D8C 8016834C 3C0E800F */  lui        $t6, %hi(D_800E98E0)
    /* C8D90 80168350 0018C880 */  sll        $t9, $t8, 2
    /* C8D94 80168354 00390821 */  addu       $at, $at, $t9
    /* C8D98 80168358 E4324010 */  swc1       $f18, %lo(gEntitiesAngleXArray)($at)
    /* C8D9C 8016835C 8C6A0000 */  lw         $t2, 0x0($v1)
    /* C8DA0 80168360 3C01800E */  lui        $at, %hi(gEntitiesAngleZArray)
    /* C8DA4 80168364 25CE98E0 */  addiu      $t6, $t6, %lo(D_800E98E0)
    /* C8DA8 80168368 000A5880 */  sll        $t3, $t2, 2
    /* C8DAC 8016836C 002B0821 */  addu       $at, $at, $t3
    /* C8DB0 80168370 E4244390 */  swc1       $f4, %lo(gEntitiesAngleZArray)($at)
    /* C8DB4 80168374 8C6C0000 */  lw         $t4, 0x0($v1)
    /* C8DB8 80168378 000C6880 */  sll        $t5, $t4, 2
    /* C8DBC 8016837C 01AE2021 */  addu       $a0, $t5, $t6
    /* C8DC0 80168380 8C8F0000 */  lw         $t7, 0x0($a0)
    /* C8DC4 80168384 25F80001 */  addiu      $t8, $t7, 0x1
    /* C8DC8 80168388 AC980000 */  sw         $t8, 0x0($a0)
    /* C8DCC 8016838C 8C620000 */  lw         $v0, 0x0($v1)
    /* C8DD0 80168390 00021080 */  sll        $v0, $v0, 2
  .L80168394_ovl3:
    /* C8DD4 80168394 3C03800E */  lui        $v1, %hi(D_800DFBD0)
    /* C8DD8 80168398 2463FBD0 */  addiu      $v1, $v1, %lo(D_800DFBD0)
    /* C8DDC 8016839C 0062C821 */  addu       $t9, $v1, $v0
    /* C8DE0 801683A0 8F2A0000 */  lw         $t2, 0x0($t9)
    /* C8DE4 801683A4 3C048019 */  lui        $a0, %hi(D_80191C68_ovl3)
    /* C8DE8 801683A8 24841C68 */  addiu      $a0, $a0, %lo(D_80191C68_ovl3)
    /* C8DEC 801683AC 8D450008 */  lw         $a1, 0x8($t2)
    /* C8DF0 801683B0 C4A00044 */  lwc1       $f0, 0x44($a1)
    /* C8DF4 801683B4 44060000 */  mfc1       $a2, $f0
    /* C8DF8 801683B8 0C05A153 */  jal        func_8016854C_ovl3
    /* C8DFC 801683BC 00000000 */   nop
    /* C8E00 801683C0 1000000D */  b          .L801683F8_ovl3
    /* C8E04 801683C4 8FBF0024 */   lw        $ra, 0x24($sp)
  .L801683C8_ovl3:
    /* C8E08 801683C8 8CCB0000 */  lw         $t3, 0x0($a2)
  .L801683CC_ovl3:
    /* C8E0C 801683CC 00C02025 */  or         $a0, $a2, $zero
    /* C8E10 801683D0 11600006 */  beqz       $t3, .L801683EC_ovl3
    /* C8E14 801683D4 00000000 */   nop
    /* C8E18 801683D8 0C029E1C */  jal        func_800A7870
    /* C8E1C 801683DC 24C50004 */   addiu     $a1, $a2, 0x4
    /* C8E20 801683E0 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* C8E24 801683E4 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* C8E28 801683E8 8D880000 */  lw         $t0, 0x0($t4)
  .L801683EC_ovl3:
    /* C8E2C 801683EC 0C02C640 */  jal        func_800B1900
    /* C8E30 801683F0 3104FFFF */   andi      $a0, $t0, 0xFFFF
  .L801683F4_ovl3:
    /* C8E34 801683F4 8FBF0024 */  lw         $ra, 0x24($sp)
  .L801683F8_ovl3:
    /* C8E38 801683F8 8FB00020 */  lw         $s0, 0x20($sp)
    /* C8E3C 801683FC 27BD0040 */  addiu      $sp, $sp, 0x40
    /* C8E40 80168400 03E00008 */  jr         $ra
    /* C8E44 80168404 00000000 */   nop
endlabel func_80167F54_ovl3
.size func_80167F54_ovl3, . - func_80167F54_ovl3
