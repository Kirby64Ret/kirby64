glabel func_80153868_ovl6
/* 137BF8 80153868 3C0E8016 */  lui        $t6, %hi(gFrameBuffers + 0x18)
.L8015386C_ovl3:
/* 137BFC 8015386C 8DCEA690 */  lw         $t6, %lo(gFrameBuffers + 0x18)($t6)
/* 137C00 80153870 27BDFFE0 */  addiu      $sp, $sp, -0x20
.L80153874_ovl3:
/* 137C04 80153874 AFBF0014 */  sw         $ra, 0x14($sp)
/* 137C08 80153878 15C00028 */  bnez       $t6, .L8015391C_ovl6
/* 137C0C 8015387C 3C0F800E */   lui       $t7, %hi(D_800DE350 + 0xFC)
/* 137C10 80153880 8DEFE44C */  lw         $t7, %lo(D_800DE350 + 0xFC)($t7)
/* 137C14 80153884 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* 137C18 80153888 24040011 */  addiu      $a0, $zero, 0x11
/* 137C1C 8015388C 15E00023 */  bnez       $t7, .L8015391C_ovl6
.L80153890_ovl4:
/* 137C20 80153890 2405003F */   addiu     $a1, $zero, 0x3F
/* 137C24 80153894 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
.L80153898_ovl4:
/* 137C28 80153898 24060040 */  addiu      $a2, $zero, 0x40
/* 137C2C 8015389C 0C02BB02 */  jal        request_track_general
/* 137C30 801538A0 AFB8001C */   sw        $t8, 0x1C($sp)
.L801538A4_ovl4:
/* 137C34 801538A4 3C19800E */  lui        $t9, %hi(D_800DE350 + 0xFC)
/* 137C38 801538A8 8F39E44C */  lw         $t9, %lo(D_800DE350 + 0xFC)($t9)
/* 137C3C 801538AC 3C018005 */  lui        $at, %hi(D_8004A7C4)
/* 137C40 801538B0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray + 0xFC)
.L801538B4_ovl3:
/* 137C44 801538B4 8C84E60C */  lw         $a0, %lo(gEntityGObjProcessArray + 0xFC)($a0)
/* 137C48 801538B8 0C00236A */  jal        func_80008DA8
.L801538BC_ovl3:
/* 137C4C 801538BC AC39A7C4 */   sw        $t9, %lo(D_8004A7C4)($at)
/* 137C50 801538C0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray2 + 0xFC)
/* 137C54 801538C4 0C00236A */  jal        func_80008DA8
glabel func_801538C8_ovl3
/* 137C58 801538C8 8C84E7CC */   lw        $a0, %lo(gEntityGObjProcessArray2 + 0xFC)($a0)
/* 137C5C 801538CC 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray5 + 0xFC)
/* 137C60 801538D0 0C00236A */  jal        func_80008DA8
/* 137C64 801538D4 8C84ED0C */   lw        $a0, %lo(gEntityGObjProcessArray5 + 0xFC)($a0)
/* 137C68 801538D8 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* 137C6C 801538DC 3C058001 */  lui        $a1, %hi(func_8000E324)
/* 137C70 801538E0 24A5E324 */  addiu      $a1, $a1, %lo(func_8000E324)
/* 137C74 801538E4 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* 137C78 801538E8 24060001 */  addiu      $a2, $zero, 0x1
/* 137C7C 801538EC 0C002286 */  jal        func_80008A18
/* 137C80 801538F0 24070003 */   addiu     $a3, $zero, 0x3
.L801538F4_ovl4:
/* 137C84 801538F4 3C088016 */  lui        $t0, %hi(D_8015A560_ovl6)
/* 137C88 801538F8 8D08A560 */  lw         $t0, %lo(D_8015A560_ovl6)($t0)
/* 137C8C 801538FC 3C050001 */  lui        $a1, (0x1869F >> 16)
/* 137C90 80153900 34A5869F */  ori        $a1, $a1, (0x1869F & 0xFFFF)
/* 137C94 80153904 2406000C */  addiu      $a2, $zero, 0xC
.L80153908_ovl4:
/* 137C98 80153908 0C02A619 */  jal        func_800A9864
/* 137C9C 8015390C 8D040004 */   lw        $a0, 0x4($t0)
/* 137CA0 80153910 8FA9001C */  lw         $t1, 0x1C($sp)
/* 137CA4 80153914 3C018005 */  lui        $at, %hi(D_8004A7C4)
/* 137CA8 80153918 AC29A7C4 */  sw         $t1, %lo(D_8004A7C4)($at)
.L8015391C_ovl6:
/* 137CAC 8015391C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 137CB0 80153920 27BD0020 */  addiu      $sp, $sp, 0x20
/* 137CB4 80153924 03E00008 */  jr         $ra
/* 137CB8 80153928 00000000 */   nop
