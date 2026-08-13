nonmatching auThreadMain, 0xB14

glabel auThreadMain
    /* 20964 8001FD64 27BDFF80 */  addiu      $sp, $sp, -0x80
    /* 20968 8001FD68 AFBF004C */  sw         $ra, 0x4C($sp)
    /* 2096C 8001FD6C AFBE0048 */  sw         $fp, 0x48($sp)
    /* 20970 8001FD70 AFB70044 */  sw         $s7, 0x44($sp)
    /* 20974 8001FD74 AFB60040 */  sw         $s6, 0x40($sp)
    /* 20978 8001FD78 AFB5003C */  sw         $s5, 0x3C($sp)
    /* 2097C 8001FD7C AFB40038 */  sw         $s4, 0x38($sp)
    /* 20980 8001FD80 AFB30034 */  sw         $s3, 0x34($sp)
    /* 20984 8001FD84 AFB20030 */  sw         $s2, 0x30($sp)
    /* 20988 8001FD88 AFB1002C */  sw         $s1, 0x2C($sp)
    /* 2098C 8001FD8C AFB00028 */  sw         $s0, 0x28($sp)
    /* 20990 8001FD90 F7B60020 */  sdc1       $f22, 0x20($sp)
    /* 20994 8001FD94 F7B40018 */  sdc1       $f20, 0x18($sp)
    /* 20998 8001FD98 AFA40080 */  sw         $a0, 0x80($sp)
    /* 2099C 8001FD9C 0C007C93 */  jal        auInit
    /* 209A0 8001FDA0 AFA00070 */   sw        $zero, 0x70($sp)
    /* 209A4 8001FDA4 3C0F8004 */  lui        $t7, %hi(auPublicSettings)
    /* 209A8 8001FDA8 25EFF350 */  addiu      $t7, $t7, %lo(auPublicSettings)
    /* 209AC 8001FDAC 3C0E8009 */  lui        $t6, %hi(auCurrentSettings)
    /* 209B0 8001FDB0 25CE64A0 */  addiu      $t6, $t6, %lo(auCurrentSettings)
    /* 209B4 8001FDB4 25EB0060 */  addiu      $t3, $t7, 0x60
  .L8001FDB8:
    /* 209B8 8001FDB8 8DF90000 */  lw         $t9, 0x0($t7)
    /* 209BC 8001FDBC 25EF000C */  addiu      $t7, $t7, 0xC
    /* 209C0 8001FDC0 25CE000C */  addiu      $t6, $t6, 0xC
    /* 209C4 8001FDC4 ADD9FFF4 */  sw         $t9, -0xC($t6)
    /* 209C8 8001FDC8 8DF8FFF8 */  lw         $t8, -0x8($t7)
    /* 209CC 8001FDCC ADD8FFF8 */  sw         $t8, -0x8($t6)
    /* 209D0 8001FDD0 8DF9FFFC */  lw         $t9, -0x4($t7)
    /* 209D4 8001FDD4 15EBFFF8 */  bne        $t7, $t3, .L8001FDB8
    /* 209D8 8001FDD8 ADD9FFFC */   sw        $t9, -0x4($t6)
    /* 209DC 8001FDDC 8DF90000 */  lw         $t9, 0x0($t7)
    /* 209E0 8001FDE0 8DF80004 */  lw         $t8, 0x4($t7)
    /* 209E4 8001FDE4 ADD90000 */  sw         $t9, 0x0($t6)
    /* 209E8 8001FDE8 0C007CB8 */  jal        auLoadAssets
    /* 209EC 8001FDEC ADD80004 */   sw        $t8, 0x4($t6)
    /* 209F0 8001FDF0 0C007E07 */  jal        auCreatePlayers
    /* 209F4 8001FDF4 00000000 */   nop
    /* 209F8 8001FDF8 3C0D8009 */  lui        $t5, %hi(auCurrentSettings)
    /* 209FC 8001FDFC 25AD64A0 */  addiu      $t5, $t5, %lo(auCurrentSettings)
    /* 20A00 8001FE00 3C0C8004 */  lui        $t4, %hi(auPublicSettings)
    /* 20A04 8001FE04 258CF350 */  addiu      $t4, $t4, %lo(auPublicSettings)
    /* 20A08 8001FE08 25AE0060 */  addiu      $t6, $t5, 0x60
  .L8001FE0C:
    /* 20A0C 8001FE0C 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 20A10 8001FE10 25AD000C */  addiu      $t5, $t5, 0xC
    /* 20A14 8001FE14 258C000C */  addiu      $t4, $t4, 0xC
    /* 20A18 8001FE18 AD8FFFF4 */  sw         $t7, -0xC($t4)
    /* 20A1C 8001FE1C 8DABFFF8 */  lw         $t3, -0x8($t5)
    /* 20A20 8001FE20 AD8BFFF8 */  sw         $t3, -0x8($t4)
    /* 20A24 8001FE24 8DAFFFFC */  lw         $t7, -0x4($t5)
    /* 20A28 8001FE28 15AEFFF8 */  bne        $t5, $t6, .L8001FE0C
    /* 20A2C 8001FE2C AD8FFFFC */   sw        $t7, -0x4($t4)
    /* 20A30 8001FE30 8DAF0000 */  lw         $t7, 0x0($t5)
    /* 20A34 8001FE34 8DAB0004 */  lw         $t3, 0x4($t5)
    /* 20A38 8001FE38 3C048005 */  lui        $a0, %hi(gThreadInitializedMQ)
    /* 20A3C 8001FE3C 24848A08 */  addiu      $a0, $a0, %lo(gThreadInitializedMQ)
    /* 20A40 8001FE40 24050001 */  addiu      $a1, $zero, 0x1
    /* 20A44 8001FE44 00003025 */  or         $a2, $zero, $zero
    /* 20A48 8001FE48 AD8F0000 */  sw         $t7, 0x0($t4)
    /* 20A4C 8001FE4C 0C00B4BC */  jal        osSendMesg
    /* 20A50 8001FE50 AD8B0004 */   sw        $t3, 0x4($t4)
    /* 20A54 8001FE54 3C0146F0 */  lui        $at, (0x46F00000 >> 16)
    /* 20A58 8001FE58 3C1E8009 */  lui        $fp, %hi(auTask)
    /* 20A5C 8001FE5C 3C178009 */  lui        $s7, %hi(auBGMPlayers)
    /* 20A60 8001FE60 3C168009 */  lui        $s6, %hi(auBGMPlayerStatus)
    /* 20A64 8001FE64 3C148009 */  lui        $s4, %hi(auGlobalSongPriority)
    /* 20A68 8001FE68 4481B000 */  mtc1       $at, $f22
    /* 20A6C 8001FE6C 4480A000 */  mtc1       $zero, $f20
    /* 20A70 8001FE70 26946480 */  addiu      $s4, $s4, %lo(auGlobalSongPriority)
    /* 20A74 8001FE74 26D66488 */  addiu      $s6, $s6, %lo(auBGMPlayerStatus)
    /* 20A78 8001FE78 26F76478 */  addiu      $s7, $s7, %lo(auBGMPlayers)
    /* 20A7C 8001FE7C 27DE6458 */  addiu      $fp, $fp, %lo(auTask)
    /* 20A80 8001FE80 24150001 */  addiu      $s5, $zero, 0x1
  .L8001FE84:
    /* 20A84 8001FE84 0C00C534 */  jal        osGetCount
    /* 20A88 8001FE88 00000000 */   nop
    /* 20A8C 8001FE8C 3C048004 */  lui        $a0, %hi(auFrameCounter)
    /* 20A90 8001FE90 8C84F344 */  lw         $a0, %lo(auFrameCounter)($a0)
    /* 20A94 8001FE94 24060003 */  addiu      $a2, $zero, 0x3
    /* 20A98 8001FE98 3C188009 */  lui        $t8, %hi(auScTasks)
    /* 20A9C 8001FE9C 0086001A */  div        $zero, $a0, $a2
    /* 20AA0 8001FEA0 30920001 */  andi       $s2, $a0, 0x1
    /* 20AA4 8001FEA4 00128880 */  sll        $s1, $s2, 2
    /* 20AA8 8001FEA8 3C198009 */  lui        $t9, %hi(auCmdListBuffers)
    /* 20AAC 8001FEAC 0311C021 */  addu       $t8, $t8, $s1
    /* 20AB0 8001FEB0 27396450 */  addiu      $t9, $t9, %lo(auCmdListBuffers)
    /* 20AB4 8001FEB4 8F186460 */  lw         $t8, %lo(auScTasks)($t8)
    /* 20AB8 8001FEB8 02398021 */  addu       $s0, $s1, $t9
    /* 20ABC 8001FEBC 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 20AC0 8001FEC0 3C018009 */  lui        $at, %hi(auCmdList)
    /* 20AC4 8001FEC4 AFD80000 */  sw         $t8, 0x0($fp)
    /* 20AC8 8001FEC8 3C078009 */  lui        $a3, %hi(D_80096430)
    /* 20ACC 8001FECC 3C088009 */  lui        $t0, %hi(D_80096434)
    /* 20AD0 8001FED0 AC2E644C */  sw         $t6, %lo(auCmdList)($at)
    /* 20AD4 8001FED4 25086434 */  addiu      $t0, $t0, %lo(D_80096434)
    /* 20AD8 8001FED8 24E76430 */  addiu      $a3, $a3, %lo(D_80096430)
    /* 20ADC 8001FEDC 8D0D0000 */  lw         $t5, 0x0($t0)
    /* 20AE0 8001FEE0 8CEC0000 */  lw         $t4, 0x0($a3)
    /* 20AE4 8001FEE4 3C098009 */  lui        $t1, %hi(D_80096438)
    /* 20AE8 8001FEE8 25296438 */  addiu      $t1, $t1, %lo(D_80096438)
    /* 20AEC 8001FEEC 3C0B8009 */  lui        $t3, %hi(D_8009642C)
    /* 20AF0 8001FEF0 AD2D0000 */  sw         $t5, 0x0($t1)
    /* 20AF4 8001FEF4 AD0C0000 */  sw         $t4, 0x0($t0)
    /* 20AF8 8001FEF8 00009810 */  mfhi       $s3
    /* 20AFC 8001FEFC 8D6B642C */  lw         $t3, %lo(D_8009642C)($t3)
    /* 20B00 8001FF00 01A07025 */  or         $t6, $t5, $zero
    /* 20B04 8001FF04 240A00B8 */  addiu      $t2, $zero, 0xB8
    /* 20B08 8001FF08 01660019 */  multu      $t3, $a2
    /* 20B0C 8001FF0C AFA2006C */  sw         $v0, 0x6C($sp)
    /* 20B10 8001FF10 14C00002 */  bnez       $a2, .L8001FF1C
    /* 20B14 8001FF14 00000000 */   nop
    /* 20B18 8001FF18 0007000D */  break      7
  .L8001FF1C:
    /* 20B1C 8001FF1C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 20B20 8001FF20 14C10004 */  bne        $a2, $at, .L8001FF34
    /* 20B24 8001FF24 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 20B28 8001FF28 14810002 */  bne        $a0, $at, .L8001FF34
    /* 20B2C 8001FF2C 00000000 */   nop
    /* 20B30 8001FF30 0006000D */  break      6
  .L8001FF34:
    /* 20B34 8001FF34 00007812 */  mflo       $t7
    /* 20B38 8001FF38 01ECC823 */  subu       $t9, $t7, $t4
    /* 20B3C 8001FF3C 8FAC0070 */  lw         $t4, 0x70($sp)
    /* 20B40 8001FF40 032D6823 */  subu       $t5, $t9, $t5
    /* 20B44 8001FF44 01AC5823 */  subu       $t3, $t5, $t4
    /* 20B48 8001FF48 256F005C */  addiu      $t7, $t3, 0x5C
    /* 20B4C 8001FF4C 01EA001A */  div        $zero, $t7, $t2
    /* 20B50 8001FF50 0000C812 */  mflo       $t9
    /* 20B54 8001FF54 01E0C025 */  or         $t8, $t7, $zero
    /* 20B58 8001FF58 ACEF0000 */  sw         $t7, 0x0($a3)
    /* 20B5C 8001FF5C 032A0019 */  multu      $t9, $t2
    /* 20B60 8001FF60 15400002 */  bnez       $t2, .L8001FF6C
    /* 20B64 8001FF64 00000000 */   nop
    /* 20B68 8001FF68 0007000D */  break      7
  .L8001FF6C:
    /* 20B6C 8001FF6C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 20B70 8001FF70 15410004 */  bne        $t2, $at, .L8001FF84
    /* 20B74 8001FF74 3C018000 */   lui       $at, (0x80000000 >> 16)
    /* 20B78 8001FF78 17010002 */  bne        $t8, $at, .L8001FF84
    /* 20B7C 8001FF7C 00000000 */   nop
    /* 20B80 8001FF80 0006000D */  break      6
  .L8001FF84:
    /* 20B84 8001FF84 00007012 */  mflo       $t6
    /* 20B88 8001FF88 25CD00B8 */  addiu      $t5, $t6, 0xB8
    /* 20B8C 8001FF8C 29A10399 */  slti       $at, $t5, 0x399
    /* 20B90 8001FF90 ACED0000 */  sw         $t5, 0x0($a3)
    /* 20B94 8001FF94 14200005 */  bnez       $at, .L8001FFAC
    /* 20B98 8001FF98 01A02825 */   or        $a1, $t5, $zero
    /* 20B9C 8001FF9C 240C0398 */  addiu      $t4, $zero, 0x398
    /* 20BA0 8001FFA0 3C018009 */  lui        $at, %hi(D_80096430)
    /* 20BA4 8001FFA4 AC2C6430 */  sw         $t4, %lo(D_80096430)($at)
    /* 20BA8 8001FFA8 24050398 */  addiu      $a1, $zero, 0x398
  .L8001FFAC:
    /* 20BAC 8001FFAC 3C0F8004 */  lui        $t7, %hi(auSampleCount)
    /* 20BB0 8001FFB0 25EFF348 */  addiu      $t7, $t7, %lo(auSampleCount)
    /* 20BB4 8001FFB4 00135840 */  sll        $t3, $s3, 1
    /* 20BB8 8001FFB8 016F8821 */  addu       $s1, $t3, $t7
    /* 20BBC 8001FFBC 0C00D184 */  jal        osGetTime
    /* 20BC0 8001FFC0 A6250000 */   sh        $a1, 0x0($s1)
    /* 20BC4 8001FFC4 0013C080 */  sll        $t8, $s3, 2
    /* 20BC8 8001FFC8 3C048009 */  lui        $a0, %hi(auDataBuffers)
    /* 20BCC 8001FFCC 3C018009 */  lui        $at, %hi(auCurrTime)
    /* 20BD0 8001FFD0 00982021 */  addu       $a0, $a0, $t8
    /* 20BD4 8001FFD4 AC226508 */  sw         $v0, %lo(auCurrTime)($at)
    /* 20BD8 8001FFD8 AC23650C */  sw         $v1, %lo(D_8009650C)($at)
    /* 20BDC 8001FFDC 0C00BFE8 */  jal        osVirtualToPhysical
    /* 20BE0 8001FFE0 8C846440 */   lw        $a0, %lo(auDataBuffers)($a0)
    /* 20BE4 8001FFE4 3C048009 */  lui        $a0, %hi(auCmdList)
    /* 20BE8 8001FFE8 8C84644C */  lw         $a0, %lo(auCmdList)($a0)
    /* 20BEC 8001FFEC 27A50078 */  addiu      $a1, $sp, 0x78
    /* 20BF0 8001FFF0 00403025 */  or         $a2, $v0, $zero
    /* 20BF4 8001FFF4 0C00A67E */  jal        alAudioFrame
    /* 20BF8 8001FFF8 86270000 */   lh        $a3, 0x0($s1)
    /* 20BFC 8001FFFC 3C018009 */  lui        $at, %hi(auCmdList)
    /* 20C00 80020000 AC22644C */  sw         $v0, %lo(auCmdList)($at)
    /* 20C04 80020004 8FCE0000 */  lw         $t6, 0x0($fp)
    /* 20C08 80020008 24190002 */  addiu      $t9, $zero, 0x2
    /* 20C0C 8002000C 240D0050 */  addiu      $t5, $zero, 0x50
    /* 20C10 80020010 ADD90000 */  sw         $t9, 0x0($t6)
    /* 20C14 80020014 8FCC0000 */  lw         $t4, 0x0($fp)
    /* 20C18 80020018 3C198009 */  lui        $t9, %hi(auSPTaskMQ)
    /* 20C1C 8002001C 27395E00 */  addiu      $t9, $t9, %lo(auSPTaskMQ)
    /* 20C20 80020020 AD8D0004 */  sw         $t5, 0x4($t4)
    /* 20C24 80020024 8FCB0000 */  lw         $t3, 0x0($fp)
    /* 20C28 80020028 240D0002 */  addiu      $t5, $zero, 0x2
    /* 20C2C 8002002C AD600014 */  sw         $zero, 0x14($t3)
    /* 20C30 80020030 8FCF0000 */  lw         $t7, 0x0($fp)
    /* 20C34 80020034 ADF50018 */  sw         $s5, 0x18($t7)
    /* 20C38 80020038 8FD80000 */  lw         $t8, 0x0($fp)
    /* 20C3C 8002003C AF00001C */  sw         $zero, 0x1C($t8)
    /* 20C40 80020040 8FCE0000 */  lw         $t6, 0x0($fp)
    /* 20C44 80020044 ADD90020 */  sw         $t9, 0x20($t6)
    /* 20C48 80020048 8FCC0000 */  lw         $t4, 0x0($fp)
    /* 20C4C 8002004C 3C198009 */  lui        $t9, %hi(auCmdList)
    /* 20C50 80020050 AD8D0028 */  sw         $t5, 0x28($t4)
    /* 20C54 80020054 8FCB0000 */  lw         $t3, 0x0($fp)
    /* 20C58 80020058 AD60002C */  sw         $zero, 0x2C($t3)
    /* 20C5C 8002005C 8FD80000 */  lw         $t8, 0x0($fp)
    /* 20C60 80020060 8E0F0000 */  lw         $t7, 0x0($s0)
    /* 20C64 80020064 AF0F0058 */  sw         $t7, 0x58($t8)
    /* 20C68 80020068 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 20C6C 8002006C 8F39644C */  lw         $t9, %lo(auCmdList)($t9)
    /* 20C70 80020070 8FCF0000 */  lw         $t7, 0x0($fp)
    /* 20C74 80020074 3C188005 */  lui        $t8, %hi(gRSPBootUcode)
    /* 20C78 80020078 032E6823 */  subu       $t5, $t9, $t6
    /* 20C7C 8002007C 000D60C3 */  sra        $t4, $t5, 3
    /* 20C80 80020080 000C58C0 */  sll        $t3, $t4, 3
    /* 20C84 80020084 ADEB005C */  sw         $t3, 0x5C($t7)
    /* 20C88 80020088 8FD90000 */  lw         $t9, 0x0($fp)
    /* 20C8C 8002008C 27188900 */  addiu      $t8, $t8, %lo(gRSPBootUcode)
    /* 20C90 80020090 240E0100 */  addiu      $t6, $zero, 0x100
    /* 20C94 80020094 AF380030 */  sw         $t8, 0x30($t9)
    /* 20C98 80020098 8FCD0000 */  lw         $t5, 0x0($fp)
    /* 20C9C 8002009C 3C0C8004 */  lui        $t4, %hi(n_aspMainTextStart)
    /* 20CA0 800200A0 258C9230 */  addiu      $t4, $t4, %lo(n_aspMainTextStart)
    /* 20CA4 800200A4 ADAE0034 */  sw         $t6, 0x34($t5)
    /* 20CA8 800200A8 8FCB0000 */  lw         $t3, 0x0($fp)
    /* 20CAC 800200AC 240F1000 */  addiu      $t7, $zero, 0x1000
    /* 20CB0 800200B0 3C198004 */  lui        $t9, %hi(n_aspMainDataStart)
    /* 20CB4 800200B4 AD6C0038 */  sw         $t4, 0x38($t3)
    /* 20CB8 800200B8 8FD80000 */  lw         $t8, 0x0($fp)
    /* 20CBC 800200BC 27391D40 */  addiu      $t9, $t9, %lo(n_aspMainDataStart)
    /* 20CC0 800200C0 240D0800 */  addiu      $t5, $zero, 0x800
    /* 20CC4 800200C4 AF0F003C */  sw         $t7, 0x3C($t8)
    /* 20CC8 800200C8 8FCE0000 */  lw         $t6, 0x0($fp)
    /* 20CCC 800200CC ADD90040 */  sw         $t9, 0x40($t6)
    /* 20CD0 800200D0 8FCC0000 */  lw         $t4, 0x0($fp)
    /* 20CD4 800200D4 AD8D0044 */  sw         $t5, 0x44($t4)
    /* 20CD8 800200D8 8FCB0000 */  lw         $t3, 0x0($fp)
    /* 20CDC 800200DC AD600048 */  sw         $zero, 0x48($t3)
    /* 20CE0 800200E0 8FCF0000 */  lw         $t7, 0x0($fp)
    /* 20CE4 800200E4 ADE0004C */  sw         $zero, 0x4C($t7)
    /* 20CE8 800200E8 8FD80000 */  lw         $t8, 0x0($fp)
    /* 20CEC 800200EC AF000060 */  sw         $zero, 0x60($t8)
    /* 20CF0 800200F0 8FD90000 */  lw         $t9, 0x0($fp)
    /* 20CF4 800200F4 AF200064 */  sw         $zero, 0x64($t9)
    /* 20CF8 800200F8 8FCE0000 */  lw         $t6, 0x0($fp)
    /* 20CFC 800200FC ADC00050 */  sw         $zero, 0x50($t6)
    /* 20D00 80020100 8FCD0000 */  lw         $t5, 0x0($fp)
    /* 20D04 80020104 0C00C534 */  jal        osGetCount
    /* 20D08 80020108 ADA00054 */   sw        $zero, 0x54($t5)
    /* 20D0C 8002010C 8FAC006C */  lw         $t4, 0x6C($sp)
    /* 20D10 80020110 24010B9B */  addiu      $at, $zero, 0xB9B
    /* 20D14 80020114 3C048009 */  lui        $a0, %hi(auGameTickQueue)
    /* 20D18 80020118 004C5823 */  subu       $t3, $v0, $t4
    /* 20D1C 8002011C 0161001B */  divu       $zero, $t3, $at
    /* 20D20 80020120 00007812 */  mflo       $t7
    /* 20D24 80020124 3C018009 */  lui        $at, %hi(D_80095DC0)
    /* 20D28 80020128 AC2F5DC0 */  sw         $t7, %lo(D_80095DC0)($at)
    /* 20D2C 8002012C 24845DE8 */  addiu      $a0, $a0, %lo(auGameTickQueue)
    /* 20D30 80020130 00002825 */  or         $a1, $zero, $zero
    /* 20D34 80020134 0C00B540 */  jal        osRecvMesg
    /* 20D38 80020138 02A03025 */   or        $a2, $s5, $zero
    /* 20D3C 8002013C 3C18A450 */  lui        $t8, %hi(D_A4500004)
    /* 20D40 80020140 8F190004 */  lw         $t9, %lo(D_A4500004)($t8)
    /* 20D44 80020144 3C048009 */  lui        $a0, %hi(auSPTaskMQ)
    /* 20D48 80020148 24845E00 */  addiu      $a0, $a0, %lo(auSPTaskMQ)
    /* 20D4C 8002014C 00197082 */  srl        $t6, $t9, 2
    /* 20D50 80020150 AFAE0070 */  sw         $t6, 0x70($sp)
    /* 20D54 80020154 00002825 */  or         $a1, $zero, $zero
    /* 20D58 80020158 0C00B540 */  jal        osRecvMesg
    /* 20D5C 8002015C 02A03025 */   or        $a2, $s5, $zero
    /* 20D60 80020160 3C138004 */  lui        $s3, %hi(auFrameCounter)
    /* 20D64 80020164 8E73F344 */  lw         $s3, %lo(auFrameCounter)($s3)
    /* 20D68 80020168 24010003 */  addiu      $at, $zero, 0x3
    /* 20D6C 8002016C 3C0D8004 */  lui        $t5, %hi(auSoundQuality)
    /* 20D70 80020170 2673FFFF */  addiu      $s3, $s3, -0x1
    /* 20D74 80020174 0261001A */  div        $zero, $s3, $at
    /* 20D78 80020178 8DADF338 */  lw         $t5, %lo(auSoundQuality)($t5)
    /* 20D7C 8002017C 00009810 */  mfhi       $s3
    /* 20D80 80020180 00136040 */  sll        $t4, $s3, 1
    /* 20D84 80020184 15A00022 */  bnez       $t5, .L80020210
    /* 20D88 80020188 3C0B8004 */   lui       $t3, %hi(auSampleCount)
    /* 20D8C 8002018C 256BF348 */  addiu      $t3, $t3, %lo(auSampleCount)
    /* 20D90 80020190 018B8821 */  addu       $s1, $t4, $t3
    /* 20D94 80020194 862F0000 */  lh         $t7, 0x0($s1)
    /* 20D98 80020198 00009025 */  or         $s2, $zero, $zero
    /* 20D9C 8002019C 0013C880 */  sll        $t9, $s3, 2
    /* 20DA0 800201A0 000FC040 */  sll        $t8, $t7, 1
    /* 20DA4 800201A4 1B00001A */  blez       $t8, .L80020210
    /* 20DA8 800201A8 3C0E8009 */   lui       $t6, %hi(auDataBuffers)
    /* 20DAC 800201AC 25CE6440 */  addiu      $t6, $t6, %lo(auDataBuffers)
    /* 20DB0 800201B0 032E8021 */  addu       $s0, $t9, $t6
    /* 20DB4 800201B4 00001825 */  or         $v1, $zero, $zero
    /* 20DB8 800201B8 8E0D0000 */  lw         $t5, 0x0($s0)
  .L800201BC:
    /* 20DBC 800201BC 26520002 */  addiu      $s2, $s2, 0x2
    /* 20DC0 800201C0 01A31021 */  addu       $v0, $t5, $v1
    /* 20DC4 800201C4 844C0002 */  lh         $t4, 0x2($v0)
    /* 20DC8 800201C8 844B0000 */  lh         $t3, 0x0($v0)
    /* 20DCC 800201CC 018B7821 */  addu       $t7, $t4, $t3
    /* 20DD0 800201D0 05E10003 */  bgez       $t7, .L800201E0
    /* 20DD4 800201D4 000FC043 */   sra       $t8, $t7, 1
    /* 20DD8 800201D8 25E10001 */  addiu      $at, $t7, 0x1
    /* 20DDC 800201DC 0001C043 */  sra        $t8, $at, 1
  .L800201E0:
    /* 20DE0 800201E0 AFB80078 */  sw         $t8, 0x78($sp)
    /* 20DE4 800201E4 A4580000 */  sh         $t8, 0x0($v0)
    /* 20DE8 800201E8 8E0E0000 */  lw         $t6, 0x0($s0)
    /* 20DEC 800201EC 8FB90078 */  lw         $t9, 0x78($sp)
    /* 20DF0 800201F0 01C36821 */  addu       $t5, $t6, $v1
    /* 20DF4 800201F4 A5B90002 */  sh         $t9, 0x2($t5)
    /* 20DF8 800201F8 862C0000 */  lh         $t4, 0x0($s1)
    /* 20DFC 800201FC 24630004 */  addiu      $v1, $v1, 0x4
    /* 20E00 80020200 000C5840 */  sll        $t3, $t4, 1
    /* 20E04 80020204 024B082A */  slt        $at, $s2, $t3
    /* 20E08 80020208 5420FFEC */  bnel       $at, $zero, .L800201BC
    /* 20E0C 8002020C 8E0D0000 */   lw        $t5, 0x0($s0)
  .L80020210:
    /* 20E10 80020210 3C188004 */  lui        $t8, %hi(auSampleCount)
    /* 20E14 80020214 3C198009 */  lui        $t9, %hi(auDataBuffers)
    /* 20E18 80020218 27396440 */  addiu      $t9, $t9, %lo(auDataBuffers)
    /* 20E1C 8002021C 2718F348 */  addiu      $t8, $t8, %lo(auSampleCount)
    /* 20E20 80020220 00137840 */  sll        $t7, $s3, 1
    /* 20E24 80020224 00137080 */  sll        $t6, $s3, 2
    /* 20E28 80020228 01D98021 */  addu       $s0, $t6, $t9
    /* 20E2C 8002022C 01F88821 */  addu       $s1, $t7, $t8
    /* 20E30 80020230 0C00E328 */  jal        osWritebackDCacheAll
    /* 20E34 80020234 00009025 */   or        $s2, $zero, $zero
    /* 20E38 80020238 86250000 */  lh         $a1, 0x0($s1)
    /* 20E3C 8002023C 8E040000 */  lw         $a0, 0x0($s0)
    /* 20E40 80020240 0C00E3A0 */  jal        osAiSetNextBuffer
    /* 20E44 80020244 00052880 */   sll       $a1, $a1, 2
    /* 20E48 80020248 3C0D8004 */  lui        $t5, %hi(auDMACount)
    /* 20E4C 8002024C 8DADF334 */  lw         $t5, %lo(auDMACount)($t5)
    /* 20E50 80020250 19A0000C */  blez       $t5, .L80020284
  .L80020254:
    /* 20E54 80020254 3C048009 */   lui       $a0, %hi(auDMA_MQ)
    /* 20E58 80020258 24845E18 */  addiu      $a0, $a0, %lo(auDMA_MQ)
    /* 20E5C 8002025C 00002825 */  or         $a1, $zero, $zero
    /* 20E60 80020260 0C00B540 */  jal        osRecvMesg
    /* 20E64 80020264 00003025 */   or        $a2, $zero, $zero
    /* 20E68 80020268 3C0C8004 */  lui        $t4, %hi(auDMACount)
    /* 20E6C 8002026C 8D8CF334 */  lw         $t4, %lo(auDMACount)($t4)
    /* 20E70 80020270 26520001 */  addiu      $s2, $s2, 0x1
    /* 20E74 80020274 024C082A */  slt        $at, $s2, $t4
    /* 20E78 80020278 1420FFF6 */  bnez       $at, .L80020254
    /* 20E7C 8002027C 00000000 */   nop
    /* 20E80 80020280 00009025 */  or         $s2, $zero, $zero
  .L80020284:
    /* 20E84 80020284 0C00E328 */  jal        osWritebackDCacheAll
    /* 20E88 80020288 00000000 */   nop
    /* 20E8C 8002028C 3C048005 */  lui        $a0, %hi(scTaskMQ)
    /* 20E90 80020290 24848CB8 */  addiu      $a0, $a0, %lo(scTaskMQ)
    /* 20E94 80020294 8FC50000 */  lw         $a1, 0x0($fp)
    /* 20E98 80020298 0C00B4BC */  jal        osSendMesg
    /* 20E9C 8002029C 00003025 */   or        $a2, $zero, $zero
    /* 20EA0 800202A0 3C0B8004 */  lui        $t3, %hi(auFrameCounter)
    /* 20EA4 800202A4 8D6BF344 */  lw         $t3, %lo(auFrameCounter)($t3)
    /* 20EA8 800202A8 3C048009 */  lui        $a0, %hi(D_800964D3)
    /* 20EAC 800202AC 908464D3 */  lbu        $a0, %lo(D_800964D3)($a0)
    /* 20EB0 800202B0 3C018004 */  lui        $at, %hi(auFrameCounter)
    /* 20EB4 800202B4 256F0001 */  addiu      $t7, $t3, 0x1
    /* 20EB8 800202B8 AC2FF344 */  sw         $t7, %lo(auFrameCounter)($at)
    /* 20EBC 800202BC 3C018004 */  lui        $at, %hi(auDMACount)
    /* 20EC0 800202C0 18800013 */  blez       $a0, .L80020310
    /* 20EC4 800202C4 AC20F334 */   sw        $zero, %lo(auDMACount)($at)
    /* 20EC8 800202C8 00008825 */  or         $s1, $zero, $zero
  .L800202CC:
    /* 20ECC 800202CC 3C188009 */  lui        $t8, %hi(D_8009646C)
    /* 20ED0 800202D0 8F18646C */  lw         $t8, %lo(D_8009646C)($t8)
    /* 20ED4 800202D4 26520001 */  addiu      $s2, $s2, 0x1
    /* 20ED8 800202D8 03111021 */  addu       $v0, $t8, $s1
    /* 20EDC 800202DC 8C430000 */  lw         $v1, 0x0($v0)
    /* 20EE0 800202E0 50600008 */  beql       $v1, $zero, .L80020304
    /* 20EE4 800202E4 0244082A */   slt       $at, $s2, $a0
    /* 20EE8 800202E8 946E0010 */  lhu        $t6, 0x10($v1)
    /* 20EEC 800202EC 55C00005 */  bnel       $t6, $zero, .L80020304
    /* 20EF0 800202F0 0244082A */   slt       $at, $s2, $a0
    /* 20EF4 800202F4 AC400000 */  sw         $zero, 0x0($v0)
    /* 20EF8 800202F8 3C048009 */  lui        $a0, %hi(D_800964D3)
    /* 20EFC 800202FC 908464D3 */  lbu        $a0, %lo(D_800964D3)($a0)
    /* 20F00 80020300 0244082A */  slt        $at, $s2, $a0
  .L80020304:
    /* 20F04 80020304 1420FFF1 */  bnez       $at, .L800202CC
    /* 20F08 80020308 26310004 */   addiu     $s1, $s1, 0x4
    /* 20F0C 8002030C 00009025 */  or         $s2, $zero, $zero
  .L80020310:
    /* 20F10 80020310 8ED90000 */  lw         $t9, 0x0($s6)
  .L80020314:
    /* 20F14 80020314 00128880 */  sll        $s1, $s2, 2
    /* 20F18 80020318 24010002 */  addiu      $at, $zero, 0x2
    /* 20F1C 8002031C 03321021 */  addu       $v0, $t9, $s2
    /* 20F20 80020320 90440000 */  lbu        $a0, 0x0($v0)
    /* 20F24 80020324 02F16821 */  addu       $t5, $s7, $s1
    /* 20F28 80020328 10950008 */  beq        $a0, $s5, .L8002034C
    /* 20F2C 8002032C 00801825 */   or        $v1, $a0, $zero
    /* 20F30 80020330 10610026 */  beq        $v1, $at, .L800203CC
    /* 20F34 80020334 00128880 */   sll       $s1, $s2, 2
    /* 20F38 80020338 24010003 */  addiu      $at, $zero, 0x3
    /* 20F3C 8002033C 10610043 */  beq        $v1, $at, .L8002044C
    /* 20F40 80020340 00128880 */   sll       $s1, $s2, 2
    /* 20F44 80020344 1000004D */  b          .L8002047C
    /* 20F48 80020348 26520001 */   addiu     $s2, $s2, 0x1
  .L8002034C:
    /* 20F4C 8002034C 8DA50000 */  lw         $a1, 0x0($t5)
    /* 20F50 80020350 3C0B8009 */  lui        $t3, %hi(auBGMSongId)
    /* 20F54 80020354 8CAC0034 */  lw         $t4, 0x34($a1)
    /* 20F58 80020358 11800005 */  beqz       $t4, .L80020370
    /* 20F5C 8002035C 00000000 */   nop
    /* 20F60 80020360 0C00B460 */  jal        func_8002D180
    /* 20F64 80020364 00A02025 */   or        $a0, $a1, $zero
    /* 20F68 80020368 10000044 */  b          .L8002047C
    /* 20F6C 8002036C 26520001 */   addiu     $s2, $s2, 0x1
  .L80020370:
    /* 20F70 80020370 8D6B648C */  lw         $t3, %lo(auBGMSongId)($t3)
    /* 20F74 80020374 2498FFFF */  addiu      $t8, $a0, -0x1
    /* 20F78 80020378 3C0E8009 */  lui        $t6, %hi(auSeqFile)
    /* 20F7C 8002037C 01717821 */  addu       $t7, $t3, $s1
    /* 20F80 80020380 8DE30000 */  lw         $v1, 0x0($t7)
    /* 20F84 80020384 3C058009 */  lui        $a1, %hi(auBGMSeqData)
    /* 20F88 80020388 04610003 */  bgez       $v1, .L80020398
    /* 20F8C 8002038C 0003C8C0 */   sll       $t9, $v1, 3
    /* 20F90 80020390 10000039 */  b          .L80020478
    /* 20F94 80020394 A0580000 */   sb        $t8, 0x0($v0)
  .L80020398:
    /* 20F98 80020398 8DCE6474 */  lw         $t6, %lo(auSeqFile)($t6)
    /* 20F9C 8002039C 00B12821 */  addu       $a1, $a1, $s1
    /* 20FA0 800203A0 8CA56484 */  lw         $a1, %lo(auBGMSeqData)($a1)
    /* 20FA4 800203A4 01D91021 */  addu       $v0, $t6, $t9
    /* 20FA8 800203A8 8C440004 */  lw         $a0, 0x4($v0)
    /* 20FAC 800203AC 0C0079C9 */  jal        auRomRead
    /* 20FB0 800203B0 8C460008 */   lw        $a2, 0x8($v0)
    /* 20FB4 800203B4 8ECD0000 */  lw         $t5, 0x0($s6)
    /* 20FB8 800203B8 01B21021 */  addu       $v0, $t5, $s2
    /* 20FBC 800203BC 904C0000 */  lbu        $t4, 0x0($v0)
    /* 20FC0 800203C0 258B0001 */  addiu      $t3, $t4, 0x1
    /* 20FC4 800203C4 1000002C */  b          .L80020478
    /* 20FC8 800203C8 A04B0000 */   sb        $t3, 0x0($v0)
  .L800203CC:
    /* 20FCC 800203CC 3C0F8009 */  lui        $t7, %hi(D_8009647C)
    /* 20FD0 800203D0 25EF647C */  addiu      $t7, $t7, %lo(D_8009647C)
    /* 20FD4 800203D4 3C058009 */  lui        $a1, %hi(auBGMSeqData)
    /* 20FD8 800203D8 00B12821 */  addu       $a1, $a1, $s1
    /* 20FDC 800203DC 022F9821 */  addu       $s3, $s1, $t7
    /* 20FE0 800203E0 8E640000 */  lw         $a0, 0x0($s3)
    /* 20FE4 800203E4 8CA56484 */  lw         $a1, %lo(auBGMSeqData)($a1)
    /* 20FE8 800203E8 0C0096DD */  jal        alCSeqNew
    /* 20FEC 800203EC 02F18021 */   addu      $s0, $s7, $s1
    /* 20FF0 800203F0 8E040000 */  lw         $a0, 0x0($s0)
    /* 20FF4 800203F4 0C00B358 */  jal        alCSPSetSeq
    /* 20FF8 800203F8 8E650000 */   lw        $a1, 0x0($s3)
    /* 20FFC 800203FC 0C00B428 */  jal        alCSPPlay
    /* 21000 80020400 8E040000 */   lw        $a0, 0x0($s0)
    /* 21004 80020404 00001825 */  or         $v1, $zero, $zero
    /* 21008 80020408 8E040000 */  lw         $a0, 0x0($s0)
  .L8002040C:
    /* 2100C 8002040C 306500FF */  andi       $a1, $v1, 0xFF
    /* 21010 80020410 92860000 */  lbu        $a2, 0x0($s4)
    /* 21014 80020414 0C008CAC */  jal        n_alCSPSetChlPriority
    /* 21018 80020418 AFA30078 */   sw        $v1, 0x78($sp)
    /* 2101C 8002041C 8FA30078 */  lw         $v1, 0x78($sp)
    /* 21020 80020420 24630001 */  addiu      $v1, $v1, 0x1
    /* 21024 80020424 28610010 */  slti       $at, $v1, 0x10
    /* 21028 80020428 5420FFF8 */  bnel       $at, $zero, .L8002040C
    /* 2102C 8002042C 8E040000 */   lw        $a0, 0x0($s0)
    /* 21030 80020430 8ED80000 */  lw         $t8, 0x0($s6)
    /* 21034 80020434 AFA30078 */  sw         $v1, 0x78($sp)
    /* 21038 80020438 03121021 */  addu       $v0, $t8, $s2
    /* 2103C 8002043C 904E0000 */  lbu        $t6, 0x0($v0)
    /* 21040 80020440 25D90001 */  addiu      $t9, $t6, 0x1
    /* 21044 80020444 1000000C */  b          .L80020478
    /* 21048 80020448 A0590000 */   sb        $t9, 0x0($v0)
  .L8002044C:
    /* 2104C 8002044C 02F16821 */  addu       $t5, $s7, $s1
    /* 21050 80020450 8DAC0000 */  lw         $t4, 0x0($t5)
    /* 21054 80020454 3C188009 */  lui        $t8, %hi(auBGMSongId)
    /* 21058 80020458 8D8B0034 */  lw         $t3, 0x34($t4)
    /* 2105C 8002045C 55600007 */  bnel       $t3, $zero, .L8002047C
    /* 21060 80020460 26520001 */   addiu     $s2, $s2, 0x1
    /* 21064 80020464 A0400000 */  sb         $zero, 0x0($v0)
    /* 21068 80020468 8F18648C */  lw         $t8, %lo(auBGMSongId)($t8)
    /* 2106C 8002046C 240FFFFF */  addiu      $t7, $zero, -0x1
    /* 21070 80020470 03117021 */  addu       $t6, $t8, $s1
    /* 21074 80020474 ADCF0000 */  sw         $t7, 0x0($t6)
  .L80020478:
    /* 21078 80020478 26520001 */  addiu      $s2, $s2, 0x1
  .L8002047C:
    /* 2107C 8002047C 5A40FFA5 */  blezl      $s2, .L80020314
    /* 21080 80020480 8ED90000 */   lw        $t9, 0x0($s6)
    /* 21084 80020484 3C108009 */  lui        $s0, %hi(auBGMVolumeTimer)
    /* 21088 80020488 26106490 */  addiu      $s0, $s0, %lo(auBGMVolumeTimer)
    /* 2108C 8002048C 00008825 */  or         $s1, $zero, $zero
  .L80020490:
    /* 21090 80020490 8E030000 */  lw         $v1, 0x0($s0)
    /* 21094 80020494 3C0D8009 */  lui        $t5, %hi(auBGMVolume)
    /* 21098 80020498 25AD6494 */  addiu      $t5, $t5, %lo(auBGMVolume)
    /* 2109C 8002049C 1060001F */  beqz       $v1, .L8002051C
    /* 210A0 800204A0 2479FFFF */   addiu     $t9, $v1, -0x1
    /* 210A4 800204A4 3C018009 */  lui        $at, %hi(auSongVolumeRate)
    /* 210A8 800204A8 AE190000 */  sw         $t9, 0x0($s0)
    /* 210AC 800204AC 00310821 */  addu       $at, $at, $s1
    /* 210B0 800204B0 022D1021 */  addu       $v0, $s1, $t5
    /* 210B4 800204B4 C4440000 */  lwc1       $f4, 0x0($v0)
    /* 210B8 800204B8 C4266498 */  lwc1       $f6, %lo(auSongVolumeRate)($at)
    /* 210BC 800204BC 46062200 */  add.s      $f8, $f4, $f6
    /* 210C0 800204C0 E4480000 */  swc1       $f8, 0x0($v0)
    /* 210C4 800204C4 C4400000 */  lwc1       $f0, 0x0($v0)
    /* 210C8 800204C8 4614003C */  c.lt.s     $f0, $f20
    /* 210CC 800204CC 00000000 */  nop
    /* 210D0 800204D0 45020005 */  bc1fl      .L800204E8
    /* 210D4 800204D4 4600B03C */   c.lt.s    $f22, $f0
    /* 210D8 800204D8 E4540000 */  swc1       $f20, 0x0($v0)
    /* 210DC 800204DC 10000007 */  b          .L800204FC
    /* 210E0 800204E0 C4400000 */   lwc1      $f0, 0x0($v0)
    /* 210E4 800204E4 4600B03C */  c.lt.s     $f22, $f0
  .L800204E8:
    /* 210E8 800204E8 00000000 */  nop
    /* 210EC 800204EC 45020004 */  bc1fl      .L80020500
    /* 210F0 800204F0 4600028D */   trunc.w.s $f10, $f0
    /* 210F4 800204F4 E4560000 */  swc1       $f22, 0x0($v0)
    /* 210F8 800204F8 C4400000 */  lwc1       $f0, 0x0($v0)
  .L800204FC:
    /* 210FC 800204FC 4600028D */  trunc.w.s  $f10, $f0
  .L80020500:
    /* 21100 80020500 02F16021 */  addu       $t4, $s7, $s1
    /* 21104 80020504 8D840000 */  lw         $a0, 0x0($t4)
    /* 21108 80020508 44055000 */  mfc1       $a1, $f10
    /* 2110C 8002050C 00000000 */  nop
    /* 21110 80020510 00052C00 */  sll        $a1, $a1, 16
    /* 21114 80020514 0C00B3C0 */  jal        alCSPSetVol
    /* 21118 80020518 00052C03 */   sra       $a1, $a1, 16
  .L8002051C:
    /* 2111C 8002051C 3C188009 */  lui        $t8, %hi(auBGMVolume)
    /* 21120 80020520 27186494 */  addiu      $t8, $t8, %lo(auBGMVolume)
    /* 21124 80020524 26100004 */  addiu      $s0, $s0, 0x4
    /* 21128 80020528 0218082B */  sltu       $at, $s0, $t8
    /* 2112C 8002052C 1420FFD8 */  bnez       $at, .L80020490
    /* 21130 80020530 26310004 */   addiu     $s1, $s1, 0x4
    /* 21134 80020534 3C0F8004 */  lui        $t7, %hi(auSettingsUpdated)
    /* 21138 80020538 8DEFF330 */  lw         $t7, %lo(auSettingsUpdated)($t7)
    /* 2113C 8002053C 3C048009 */  lui        $a0, %hi(D_800964D3)
    /* 21140 80020540 11E00062 */  beqz       $t7, .L800206CC
    /* 21144 80020544 00000000 */   nop
    /* 21148 80020548 908464D3 */  lbu        $a0, %lo(D_800964D3)($a0)
    /* 2114C 8002054C 00009025 */  or         $s2, $zero, $zero
    /* 21150 80020550 3C028009 */  lui        $v0, %hi(D_8009646C)
    /* 21154 80020554 1880000E */  blez       $a0, .L80020590
    /* 21158 80020558 24830001 */   addiu     $v1, $a0, 0x1
    /* 2115C 8002055C 8C42646C */  lw         $v0, %lo(D_8009646C)($v0)
    /* 21160 80020560 AFA30078 */  sw         $v1, 0x78($sp)
  .L80020564:
    /* 21164 80020564 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 21168 80020568 26520001 */  addiu      $s2, $s2, 0x1
    /* 2116C 8002056C 0244082A */  slt        $at, $s2, $a0
    /* 21170 80020570 15C00004 */  bnez       $t6, .L80020584
    /* 21174 80020574 24420004 */   addiu     $v0, $v0, 0x4
    /* 21178 80020578 8FA30078 */  lw         $v1, 0x78($sp)
    /* 2117C 8002057C 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 21180 80020580 AFA30078 */  sw         $v1, 0x78($sp)
  .L80020584:
    /* 21184 80020584 1420FFF7 */  bnez       $at, .L80020564
    /* 21188 80020588 8FA30078 */   lw        $v1, 0x78($sp)
    /* 2118C 8002058C 00009025 */  or         $s2, $zero, $zero
  .L80020590:
    /* 21190 80020590 8EC20000 */  lw         $v0, 0x0($s6)
    /* 21194 80020594 AFA30078 */  sw         $v1, 0x78($sp)
  .L80020598:
    /* 21198 80020598 90590000 */  lbu        $t9, 0x0($v0)
    /* 2119C 8002059C 26520001 */  addiu      $s2, $s2, 0x1
    /* 211A0 800205A0 24420001 */  addiu      $v0, $v0, 0x1
    /* 211A4 800205A4 17200003 */  bnez       $t9, .L800205B4
    /* 211A8 800205A8 8FA30078 */   lw        $v1, 0x78($sp)
    /* 211AC 800205AC 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 211B0 800205B0 AFA30078 */  sw         $v1, 0x78($sp)
  .L800205B4:
    /* 211B4 800205B4 1655FFF8 */  bne        $s2, $s5, .L80020598
    /* 211B8 800205B8 8FA30078 */   lw        $v1, 0x78($sp)
    /* 211BC 800205BC 1460003F */  bnez       $v1, .L800206BC
    /* 211C0 800205C0 AFA30078 */   sw        $v1, 0x78($sp)
    /* 211C4 800205C4 3C048009 */  lui        $a0, %hi(auSPTaskMQ)
    /* 211C8 800205C8 24845E00 */  addiu      $a0, $a0, %lo(auSPTaskMQ)
    /* 211CC 800205CC 00002825 */  or         $a1, $zero, $zero
    /* 211D0 800205D0 0C00B540 */  jal        osRecvMesg
    /* 211D4 800205D4 02A03025 */   or        $a2, $s5, $zero
    /* 211D8 800205D8 3C048009 */  lui        $a0, %hi(auSPTaskMQ)
    /* 211DC 800205DC 24845E00 */  addiu      $a0, $a0, %lo(auSPTaskMQ)
    /* 211E0 800205E0 00002825 */  or         $a1, $zero, $zero
    /* 211E4 800205E4 0C00B4BC */  jal        osSendMesg
    /* 211E8 800205E8 02A03025 */   or        $a2, $s5, $zero
    /* 211EC 800205EC 3C048009 */  lui        $a0, %hi(auGlobals)
    /* 211F0 800205F0 0C00A84E */  jal        n_alClose
    /* 211F4 800205F4 248463D0 */   addiu     $a0, $a0, %lo(auGlobals)
    /* 211F8 800205F8 3C0C8004 */  lui        $t4, %hi(auPublicSettings)
    /* 211FC 800205FC 258CF350 */  addiu      $t4, $t4, %lo(auPublicSettings)
    /* 21200 80020600 3C0D8009 */  lui        $t5, %hi(auCurrentSettings)
    /* 21204 80020604 25AD64A0 */  addiu      $t5, $t5, %lo(auCurrentSettings)
    /* 21208 80020608 258F0060 */  addiu      $t7, $t4, 0x60
  .L8002060C:
    /* 2120C 8002060C 8D980000 */  lw         $t8, 0x0($t4)
    /* 21210 80020610 258C000C */  addiu      $t4, $t4, 0xC
    /* 21214 80020614 25AD000C */  addiu      $t5, $t5, 0xC
    /* 21218 80020618 ADB8FFF4 */  sw         $t8, -0xC($t5)
    /* 2121C 8002061C 8D8BFFF8 */  lw         $t3, -0x8($t4)
    /* 21220 80020620 ADABFFF8 */  sw         $t3, -0x8($t5)
    /* 21224 80020624 8D98FFFC */  lw         $t8, -0x4($t4)
    /* 21228 80020628 158FFFF8 */  bne        $t4, $t7, .L8002060C
    /* 2122C 8002062C ADB8FFFC */   sw        $t8, -0x4($t5)
    /* 21230 80020630 8D980000 */  lw         $t8, 0x0($t4)
    /* 21234 80020634 8D8B0004 */  lw         $t3, 0x4($t4)
    /* 21238 80020638 ADB80000 */  sw         $t8, 0x0($t5)
    /* 2123C 8002063C 0C007CB8 */  jal        auLoadAssets
    /* 21240 80020640 ADAB0004 */   sw        $t3, 0x4($t5)
    /* 21244 80020644 0C007E07 */  jal        auCreatePlayers
    /* 21248 80020648 00000000 */   nop
    /* 2124C 8002064C 3C198009 */  lui        $t9, %hi(auCurrentSettings)
    /* 21250 80020650 273964A0 */  addiu      $t9, $t9, %lo(auCurrentSettings)
    /* 21254 80020654 3C0E8004 */  lui        $t6, %hi(auPublicSettings)
    /* 21258 80020658 25CEF350 */  addiu      $t6, $t6, %lo(auPublicSettings)
    /* 2125C 8002065C 272D0060 */  addiu      $t5, $t9, 0x60
  .L80020660:
    /* 21260 80020660 8F2C0000 */  lw         $t4, 0x0($t9)
    /* 21264 80020664 2739000C */  addiu      $t9, $t9, 0xC
    /* 21268 80020668 25CE000C */  addiu      $t6, $t6, 0xC
    /* 2126C 8002066C ADCCFFF4 */  sw         $t4, -0xC($t6)
    /* 21270 80020670 8F2FFFF8 */  lw         $t7, -0x8($t9)
    /* 21274 80020674 ADCFFFF8 */  sw         $t7, -0x8($t6)
    /* 21278 80020678 8F2CFFFC */  lw         $t4, -0x4($t9)
    /* 2127C 8002067C 172DFFF8 */  bne        $t9, $t5, .L80020660
    /* 21280 80020680 ADCCFFFC */   sw        $t4, -0x4($t6)
    /* 21284 80020684 8F2C0000 */  lw         $t4, 0x0($t9)
    /* 21288 80020688 8F2F0004 */  lw         $t7, 0x4($t9)
    /* 2128C 8002068C 3C018004 */  lui        $at, %hi(auSettingsUpdated)
    /* 21290 80020690 3C048005 */  lui        $a0, %hi(gThreadInitializedMQ)
    /* 21294 80020694 ADCC0000 */  sw         $t4, 0x0($t6)
    /* 21298 80020698 ADCF0004 */  sw         $t7, 0x4($t6)
    /* 2129C 8002069C AC20F330 */  sw         $zero, %lo(auSettingsUpdated)($at)
    /* 212A0 800206A0 AFA00070 */  sw         $zero, 0x70($sp)
    /* 212A4 800206A4 24848A08 */  addiu      $a0, $a0, %lo(gThreadInitializedMQ)
    /* 212A8 800206A8 24050001 */  addiu      $a1, $zero, 0x1
    /* 212AC 800206AC 0C00B4BC */  jal        osSendMesg
    /* 212B0 800206B0 00003025 */   or        $a2, $zero, $zero
    /* 212B4 800206B4 10000005 */  b          .L800206CC
    /* 212B8 800206B8 00000000 */   nop
  .L800206BC:
    /* 212BC 800206BC 0C008235 */  jal        auStopBGM
    /* 212C0 800206C0 00000000 */   nop
    /* 212C4 800206C4 0C008322 */  jal        auFunc80020C88
    /* 212C8 800206C8 00000000 */   nop
  .L800206CC:
    /* 212CC 800206CC 3C0B8004 */  lui        $t3, %hi(auRestarting)
    /* 212D0 800206D0 8D6BF340 */  lw         $t3, %lo(auRestarting)($t3)
    /* 212D4 800206D4 1160FDEB */  beqz       $t3, .L8001FE84
    /* 212D8 800206D8 00000000 */   nop
    /* 212DC 800206DC 3C048009 */  lui        $a0, %hi(D_800964D3)
    /* 212E0 800206E0 908464D3 */  lbu        $a0, %lo(D_800964D3)($a0)
    /* 212E4 800206E4 00009025 */  or         $s2, $zero, $zero
    /* 212E8 800206E8 3C028009 */  lui        $v0, %hi(D_8009646C)
    /* 212EC 800206EC 1880000E */  blez       $a0, .L80020728
    /* 212F0 800206F0 24830001 */   addiu     $v1, $a0, 0x1
    /* 212F4 800206F4 8C42646C */  lw         $v0, %lo(D_8009646C)($v0)
    /* 212F8 800206F8 AFA30078 */  sw         $v1, 0x78($sp)
  .L800206FC:
    /* 212FC 800206FC 8C580000 */  lw         $t8, 0x0($v0)
    /* 21300 80020700 26520001 */  addiu      $s2, $s2, 0x1
    /* 21304 80020704 0244082A */  slt        $at, $s2, $a0
    /* 21308 80020708 17000004 */  bnez       $t8, .L8002071C
    /* 2130C 8002070C 24420004 */   addiu     $v0, $v0, 0x4
    /* 21310 80020710 8FA30078 */  lw         $v1, 0x78($sp)
    /* 21314 80020714 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 21318 80020718 AFA30078 */  sw         $v1, 0x78($sp)
  .L8002071C:
    /* 2131C 8002071C 1420FFF7 */  bnez       $at, .L800206FC
    /* 21320 80020720 8FA30078 */   lw        $v1, 0x78($sp)
    /* 21324 80020724 00009025 */  or         $s2, $zero, $zero
  .L80020728:
    /* 21328 80020728 8EC20000 */  lw         $v0, 0x0($s6)
    /* 2132C 8002072C AFA30078 */  sw         $v1, 0x78($sp)
  .L80020730:
    /* 21330 80020730 904D0000 */  lbu        $t5, 0x0($v0)
    /* 21334 80020734 26520001 */  addiu      $s2, $s2, 0x1
    /* 21338 80020738 24420001 */  addiu      $v0, $v0, 0x1
    /* 2133C 8002073C 15A00003 */  bnez       $t5, .L8002074C
    /* 21340 80020740 8FA30078 */   lw        $v1, 0x78($sp)
    /* 21344 80020744 2463FFFF */  addiu      $v1, $v1, -0x1
    /* 21348 80020748 AFA30078 */  sw         $v1, 0x78($sp)
  .L8002074C:
    /* 2134C 8002074C 1655FFF8 */  bne        $s2, $s5, .L80020730
    /* 21350 80020750 8FA30078 */   lw        $v1, 0x78($sp)
    /* 21354 80020754 14600030 */  bnez       $v1, .L80020818
    /* 21358 80020758 AFA30078 */   sw        $v1, 0x78($sp)
    /* 2135C 8002075C 3C048009 */  lui        $a0, %hi(auSPTaskMQ)
    /* 21360 80020760 24845E00 */  addiu      $a0, $a0, %lo(auSPTaskMQ)
    /* 21364 80020764 00002825 */  or         $a1, $zero, $zero
    /* 21368 80020768 0C00B540 */  jal        osRecvMesg
    /* 2136C 8002076C 02A03025 */   or        $a2, $s5, $zero
    /* 21370 80020770 3C048009 */  lui        $a0, %hi(auSPTaskMQ)
    /* 21374 80020774 24845E00 */  addiu      $a0, $a0, %lo(auSPTaskMQ)
    /* 21378 80020778 00002825 */  or         $a1, $zero, $zero
    /* 2137C 8002077C 0C00B4BC */  jal        osSendMesg
    /* 21380 80020780 02A03025 */   or        $a2, $s5, $zero
    /* 21384 80020784 3C048009 */  lui        $a0, %hi(auGlobals)
    /* 21388 80020788 0C00A84E */  jal        n_alClose
    /* 2138C 8002078C 248463D0 */   addiu     $a0, $a0, %lo(auGlobals)
    /* 21390 80020790 3C198009 */  lui        $t9, %hi(auHeapBase)
    /* 21394 80020794 8F395DD8 */  lw         $t9, %lo(auHeapBase)($t9)
    /* 21398 80020798 3C028009 */  lui        $v0, %hi(auHeap)
    /* 2139C 8002079C 24425DC8 */  addiu      $v0, $v0, %lo(auHeap)
    /* 213A0 800207A0 3C0E8009 */  lui        $t6, %hi(auHeapSize)
    /* 213A4 800207A4 AC590004 */  sw         $t9, 0x4($v0)
    /* 213A8 800207A8 8DCE5DDC */  lw         $t6, %lo(auHeapSize)($t6)
    /* 213AC 800207AC 0C007E07 */  jal        auCreatePlayers
    /* 213B0 800207B0 AC4E000C */   sw        $t6, 0xC($v0)
    /* 213B4 800207B4 3C0C8009 */  lui        $t4, %hi(auCurrentSettings)
    /* 213B8 800207B8 258C64A0 */  addiu      $t4, $t4, %lo(auCurrentSettings)
    /* 213BC 800207BC 3C0F8004 */  lui        $t7, %hi(auPublicSettings)
    /* 213C0 800207C0 25EFF350 */  addiu      $t7, $t7, %lo(auPublicSettings)
    /* 213C4 800207C4 258D0060 */  addiu      $t5, $t4, 0x60
  .L800207C8:
    /* 213C8 800207C8 8D980000 */  lw         $t8, 0x0($t4)
    /* 213CC 800207CC 258C000C */  addiu      $t4, $t4, 0xC
    /* 213D0 800207D0 25EF000C */  addiu      $t7, $t7, 0xC
    /* 213D4 800207D4 ADF8FFF4 */  sw         $t8, -0xC($t7)
    /* 213D8 800207D8 8D8BFFF8 */  lw         $t3, -0x8($t4)
    /* 213DC 800207DC ADEBFFF8 */  sw         $t3, -0x8($t7)
    /* 213E0 800207E0 8D98FFFC */  lw         $t8, -0x4($t4)
    /* 213E4 800207E4 158DFFF8 */  bne        $t4, $t5, .L800207C8
    /* 213E8 800207E8 ADF8FFFC */   sw        $t8, -0x4($t7)
    /* 213EC 800207EC 8D980000 */  lw         $t8, 0x0($t4)
    /* 213F0 800207F0 8D8B0004 */  lw         $t3, 0x4($t4)
    /* 213F4 800207F4 3C018004 */  lui        $at, %hi(auRestarting)
    /* 213F8 800207F8 ADF80000 */  sw         $t8, 0x0($t7)
    /* 213FC 800207FC ADEB0004 */  sw         $t3, 0x4($t7)
    /* 21400 80020800 AC20F340 */  sw         $zero, %lo(auRestarting)($at)
    /* 21404 80020804 3C19A450 */  lui        $t9, %hi(D_A4500004)
    /* 21408 80020808 8F2E0004 */  lw         $t6, %lo(D_A4500004)($t9)
    /* 2140C 8002080C 000E6882 */  srl        $t5, $t6, 2
    /* 21410 80020810 1000FD9C */  b          .L8001FE84
    /* 21414 80020814 AFAD0070 */   sw        $t5, 0x70($sp)
  .L80020818:
    /* 21418 80020818 0C008235 */  jal        auStopBGM
    /* 2141C 8002081C 00000000 */   nop
    /* 21420 80020820 0C008322 */  jal        auFunc80020C88
    /* 21424 80020824 00000000 */   nop
    /* 21428 80020828 1000FD96 */  b          .L8001FE84
    /* 2142C 8002082C 00000000 */   nop
    /* 21430 80020830 00000000 */  nop
    /* 21434 80020834 00000000 */  nop
    /* 21438 80020838 00000000 */  nop
    /* 2143C 8002083C 00000000 */  nop
    /* 21440 80020840 8FBF004C */  lw         $ra, 0x4C($sp)
    /* 21444 80020844 D7B40018 */  ldc1       $f20, 0x18($sp)
    /* 21448 80020848 D7B60020 */  ldc1       $f22, 0x20($sp)
    /* 2144C 8002084C 8FB00028 */  lw         $s0, 0x28($sp)
    /* 21450 80020850 8FB1002C */  lw         $s1, 0x2C($sp)
    /* 21454 80020854 8FB20030 */  lw         $s2, 0x30($sp)
    /* 21458 80020858 8FB30034 */  lw         $s3, 0x34($sp)
    /* 2145C 8002085C 8FB40038 */  lw         $s4, 0x38($sp)
    /* 21460 80020860 8FB5003C */  lw         $s5, 0x3C($sp)
    /* 21464 80020864 8FB60040 */  lw         $s6, 0x40($sp)
    /* 21468 80020868 8FB70044 */  lw         $s7, 0x44($sp)
    /* 2146C 8002086C 8FBE0048 */  lw         $fp, 0x48($sp)
    /* 21470 80020870 03E00008 */  jr         $ra
    /* 21474 80020874 27BD0080 */   addiu     $sp, $sp, 0x80
endlabel auThreadMain
.size auThreadMain, . - auThreadMain
