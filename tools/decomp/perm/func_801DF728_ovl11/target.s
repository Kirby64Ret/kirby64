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

glabel func_801DF728_ovl11
    /* 1E9FE8 801DF728 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1E9FEC 801DF72C 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1E9FF0 801DF730 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1E9FF4 801DF734 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1E9FF8 801DF738 8DC20000 */  lw         $v0, 0x0($t6)
    /* 1E9FFC 801DF73C 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* 1EA000 801DF740 25EF98E0 */  addiu      $t7, $t7, %lo(D_800E98E0)
    /* 1EA004 801DF744 00021080 */  sll        $v0, $v0, 2
    /* 1EA008 801DF748 004F1821 */  addu       $v1, $v0, $t7
    /* 1EA00C 801DF74C 8C650000 */  lw         $a1, 0x0($v1)
    /* 1EA010 801DF750 14A00009 */  bnez       $a1, .L801DF778_ovl11
    /* 1EA014 801DF754 24B8FFFF */   addiu     $t8, $a1, -0x1
    /* 1EA018 801DF758 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 1EA01C 801DF75C 00822021 */  addu       $a0, $a0, $v0
    /* 1EA020 801DF760 3C05801B */  lui        $a1, %hi(func_801ACF84_ovl7)
    /* 1EA024 801DF764 24A5CF84 */  addiu      $a1, $a1, %lo(func_801ACF84_ovl7)
    /* 1EA028 801DF768 0C02C7B2 */  jal        assign_new_process_entry
    /* 1EA02C 801DF76C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 1EA030 801DF770 10000006 */  b          .L801DF78C_ovl11
    /* 1EA034 801DF774 8FBF0014 */   lw        $ra, 0x14($sp)
  .L801DF778_ovl11:
    /* 1EA038 801DF778 0C06835D */  jal        func_801A0D74_ovl7
    /* 1EA03C 801DF77C AC780000 */   sw        $t8, 0x0($v1)
    /* 1EA040 801DF780 0C0680ED */  jal        func_801A03B4_ovl7
    /* 1EA044 801DF784 00000000 */   nop
    /* 1EA048 801DF788 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DF78C_ovl11:
    /* 1EA04C 801DF78C 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EA050 801DF790 03E00008 */  jr         $ra
    /* 1EA054 801DF794 00000000 */   nop
endlabel func_801DF728_ovl11
