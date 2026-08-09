.set noat
.set noreorder
.set gp=64

.macro glabel label, visibility=global
    .\visibility \label
    .type \label, @function
    \label:
.endm

.macro endlabel label
    .size \label, . - \label
.endm

.macro alabel label, visibility=global
    .\visibility \label
    .type \label, @function
    \label:
.endm

.macro ehlabel label, visibility=global
    .\visibility \label
    \label:
.endm


.macro jlabel label, visibility=local
    \label:
.endm


.macro dlabel label, visibility=global
    .\visibility \label
    .type \label, @object
    \label:
.endm

.macro enddlabel label
    .size \label, . - \label
.endm


.macro nonmatching label, size=1
    .global \label\().NON_MATCHING
    .type \label\().NON_MATCHING, @object
    .size \label\().NON_MATCHING, \size
    \label\().NON_MATCHING:
.endm

# Float register aliases (o32 ABI)

.set $fv0,          $f0
.set $fv0f,         $f1
.set $fv1,          $f2
.set $fv1f,         $f3
.set $ft0,          $f4
.set $ft0f,         $f5
.set $ft1,          $f6
.set $ft1f,         $f7
.set $ft2,          $f8
.set $ft2f,         $f9
.set $ft3,          $f10
.set $ft3f,         $f11
.set $fa0,          $f12
.set $fa0f,         $f13
.set $fa1,          $f14
.set $fa1f,         $f15
.set $ft4,          $f16
.set $ft4f,         $f17
.set $ft5,          $f18
.set $ft5f,         $f19
.set $fs0,          $f20
.set $fs0f,         $f21
.set $fs1,          $f22
.set $fs1f,         $f23
.set $fs2,          $f24
.set $fs2f,         $f25
.set $fs3,          $f26
.set $fs3f,         $f27
.set $fs4,          $f28
.set $fs4f,         $f29
.set $fs5,          $f30
.set $fs5f,         $f31

.set noreorder
.text

glabel func_80121D3C
    /* AA7AC 80121D3C 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* AA7B0 80121D40 AFB00018 */  sw         $s0, 0x18($sp)
    /* AA7B4 80121D44 3C108013 */  lui        $s0, %hi(gKirbyState)
    /* AA7B8 80121D48 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
    /* AA7BC 80121D4C 92020009 */  lbu        $v0, 0x9($s0)
    /* AA7C0 80121D50 AFBF001C */  sw         $ra, 0x1C($sp)
    /* AA7C4 80121D54 304E0001 */  andi       $t6, $v0, 0x1
    /* AA7C8 80121D58 51C0006A */  beql       $t6, $zero, .L80121F04
    /* AA7CC 80121D5C 8FBF001C */   lw        $ra, 0x1C($sp)
    /* AA7D0 80121D60 8603006A */  lh         $v1, 0x6A($s0)
    /* AA7D4 80121D64 240D0002 */  addiu      $t5, $zero, 0x2
    /* AA7D8 80121D68 240E0258 */  addiu      $t6, $zero, 0x258
    /* AA7DC 80121D6C 10600038 */  beqz       $v1, .L80121E50
    /* AA7E0 80121D70 3C0F800D */   lui       $t7, %hi(D_800D6B44)
    /* AA7E4 80121D74 246FFFFF */  addiu      $t7, $v1, -0x1
    /* AA7E8 80121D78 A60F006A */  sh         $t7, 0x6A($s0)
    /* AA7EC 80121D7C 8618006A */  lh         $t8, 0x6A($s0)
    /* AA7F0 80121D80 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* AA7F4 80121D84 2484A7C4 */  addiu      $a0, $a0, %lo(omCurrentObj)
    /* AA7F8 80121D88 17000013 */  bnez       $t8, .L80121DD8
    /* AA7FC 80121D8C 240A0002 */   addiu     $t2, $zero, 0x2
    /* AA800 80121D90 3059FFFE */  andi       $t9, $v0, 0xFFFE
    /* AA804 80121D94 A6000068 */  sh         $zero, 0x68($s0)
    /* AA808 80121D98 A2190009 */  sb         $t9, 0x9($s0)
    /* AA80C 80121D9C 0C0288B5 */  jal        func_800A22D4
    /* AA810 80121DA0 8E04006C */   lw        $a0, 0x6C($s0)
    /* AA814 80121DA4 8E050054 */  lw         $a1, 0x54($s0)
    /* AA818 80121DA8 3C018000 */  lui        $at, (0x80000000 >> 16)
    /* AA81C 80121DAC 3C08800D */  lui        $t0, %hi(D_800D6B54)
    /* AA820 80121DB0 50A10054 */  beql       $a1, $at, .L80121F04
    /* AA824 80121DB4 8FBF001C */   lw        $ra, 0x1C($sp)
    /* AA828 80121DB8 8D086B54 */  lw         $t0, %lo(D_800D6B54)($t0)
    /* AA82C 80121DBC 55000051 */  bnel       $t0, $zero, .L80121F04
    /* AA830 80121DC0 8FBF001C */   lw        $ra, 0x1C($sp)
    /* AA834 80121DC4 0C029D6C */  jal        play_music
    /* AA838 80121DC8 00002025 */   or        $a0, $zero, $zero
    /* AA83C 80121DCC 3C098000 */  lui        $t1, (0x80000000 >> 16)
    /* AA840 80121DD0 1000004B */  b          .L80121F00
    /* AA844 80121DD4 AE090054 */   sw        $t1, 0x54($s0)
  .L80121DD8:
    /* AA848 80121DD8 8C8B0000 */  lw         $t3, 0x0($a0)
    /* AA84C 80121DDC A60A0068 */  sh         $t2, 0x68($s0)
    /* AA850 80121DE0 8E02006C */  lw         $v0, 0x6C($s0)
    /* AA854 80121DE4 8D6C0000 */  lw         $t4, 0x0($t3)
    /* AA858 80121DE8 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* AA85C 80121DEC 8C4E004C */  lw         $t6, 0x4C($v0)
    /* AA860 80121DF0 000C6880 */  sll        $t5, $t4, 2
    /* AA864 80121DF4 002D0821 */  addu       $at, $at, $t5
    /* AA868 80121DF8 C42425D0 */  lwc1       $f4, %lo(gEntitiesNextPosXArray)($at)
    /* AA86C 80121DFC 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* AA870 80121E00 E5C40004 */  swc1       $f4, 0x4($t6)
    /* AA874 80121E04 8C8F0000 */  lw         $t7, 0x0($a0)
    /* AA878 80121E08 8C48004C */  lw         $t0, 0x4C($v0)
    /* AA87C 80121E0C 8DF80000 */  lw         $t8, 0x0($t7)
    /* AA880 80121E10 0018C880 */  sll        $t9, $t8, 2
    /* AA884 80121E14 00390821 */  addu       $at, $at, $t9
    /* AA888 80121E18 C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* AA88C 80121E1C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* AA890 80121E20 44814000 */  mtc1       $at, $f8
    /* AA894 80121E24 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* AA898 80121E28 46083280 */  add.s      $f10, $f6, $f8
    /* AA89C 80121E2C E50A0008 */  swc1       $f10, 0x8($t0)
    /* AA8A0 80121E30 8C890000 */  lw         $t1, 0x0($a0)
    /* AA8A4 80121E34 8C4C004C */  lw         $t4, 0x4C($v0)
    /* AA8A8 80121E38 8D2A0000 */  lw         $t2, 0x0($t1)
    /* AA8AC 80121E3C 000A5880 */  sll        $t3, $t2, 2
    /* AA8B0 80121E40 002B0821 */  addu       $at, $at, $t3
    /* AA8B4 80121E44 C4302950 */  lwc1       $f16, %lo(gEntitiesNextPosZArray)($at)
    /* AA8B8 80121E48 1000002D */  b          .L80121F00
    /* AA8BC 80121E4C E590000C */   swc1      $f16, 0xC($t4)
  .L80121E50:
    /* AA8C0 80121E50 A60D0068 */  sh         $t5, 0x68($s0)
    /* AA8C4 80121E54 A60E006A */  sh         $t6, 0x6A($s0)
    /* AA8C8 80121E58 8DEF6B44 */  lw         $t7, %lo(D_800D6B44)($t7)
    /* AA8CC 80121E5C 24040004 */  addiu      $a0, $zero, 0x4
    /* AA8D0 80121E60 24050028 */  addiu      $a1, $zero, 0x28
    /* AA8D4 80121E64 0C02ED1A */  jal        func_800BB468
    /* AA8D8 80121E68 AE0F0054 */   sw        $t7, 0x54($s0)
    /* AA8DC 80121E6C 00002025 */  or         $a0, $zero, $zero
    /* AA8E0 80121E70 0C029D6C */  jal        play_music
    /* AA8E4 80121E74 2405001F */   addiu     $a1, $zero, 0x1F
    /* AA8E8 80121E78 24040001 */  addiu      $a0, $zero, 0x1
    /* AA8EC 80121E7C 24050001 */  addiu      $a1, $zero, 0x1
    /* AA8F0 80121E80 0C02A08D */  jal        func_800A8234
    /* AA8F4 80121E84 24060007 */   addiu     $a2, $zero, 0x7
    /* AA8F8 80121E88 3C048005 */  lui        $a0, %hi(omCurrentObj)
    /* AA8FC 80121E8C 2484A7C4 */  addiu      $a0, $a0, %lo(omCurrentObj)
    /* AA900 80121E90 8C980000 */  lw         $t8, 0x0($a0)
    /* AA904 80121E94 AE02006C */  sw         $v0, 0x6C($s0)
    /* AA908 80121E98 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* AA90C 80121E9C 8F190000 */  lw         $t9, 0x0($t8)
    /* AA910 80121EA0 8C49004C */  lw         $t1, 0x4C($v0)
    /* AA914 80121EA4 00194080 */  sll        $t0, $t9, 2
    /* AA918 80121EA8 00280821 */  addu       $at, $at, $t0
    /* AA91C 80121EAC C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* AA920 80121EB0 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* AA924 80121EB4 E5320004 */  swc1       $f18, 0x4($t1)
    /* AA928 80121EB8 8C8A0000 */  lw         $t2, 0x0($a0)
    /* AA92C 80121EBC 8C4D004C */  lw         $t5, 0x4C($v0)
    /* AA930 80121EC0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* AA934 80121EC4 000B6080 */  sll        $t4, $t3, 2
    /* AA938 80121EC8 002C0821 */  addu       $at, $at, $t4
    /* AA93C 80121ECC C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* AA940 80121ED0 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
    /* AA944 80121ED4 44813000 */  mtc1       $at, $f6
    /* AA948 80121ED8 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* AA94C 80121EDC 46062200 */  add.s      $f8, $f4, $f6
    /* AA950 80121EE0 E5A80008 */  swc1       $f8, 0x8($t5)
    /* AA954 80121EE4 8C8E0000 */  lw         $t6, 0x0($a0)
    /* AA958 80121EE8 8C59004C */  lw         $t9, 0x4C($v0)
    /* AA95C 80121EEC 8DCF0000 */  lw         $t7, 0x0($t6)
    /* AA960 80121EF0 000FC080 */  sll        $t8, $t7, 2
    /* AA964 80121EF4 00380821 */  addu       $at, $at, $t8
    /* AA968 80121EF8 C42A2950 */  lwc1       $f10, %lo(gEntitiesNextPosZArray)($at)
    /* AA96C 80121EFC E72A000C */  swc1       $f10, 0xC($t9)
  .L80121F00:
    /* AA970 80121F00 8FBF001C */  lw         $ra, 0x1C($sp)
  .L80121F04:
    /* AA974 80121F04 8FB00018 */  lw         $s0, 0x18($sp)
    /* AA978 80121F08 27BD0020 */  addiu      $sp, $sp, 0x20
    /* AA97C 80121F0C 03E00008 */  jr         $ra
    /* AA980 80121F10 00000000 */   nop
endlabel func_80121D3C
