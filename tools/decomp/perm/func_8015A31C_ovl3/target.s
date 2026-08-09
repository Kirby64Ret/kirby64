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

glabel func_8015A31C_ovl3
    /* BAD5C 8015A31C AFA40000 */  sw         $a0, 0x0($sp)
    /* BAD60 8015A320 3C048013 */  lui        $a0, %hi(gKirbyState)
    /* BAD64 8015A324 2484E7C0 */  addiu      $a0, $a0, %lo(gKirbyState)
    /* BAD68 8015A328 8C820044 */  lw         $v0, 0x44($a0)
    /* BAD6C 8015A32C 24030001 */  addiu      $v1, $zero, 0x1
    /* BAD70 8015A330 24050002 */  addiu      $a1, $zero, 0x2
    /* BAD74 8015A334 10430005 */  beq        $v0, $v1, .L8015A34C_ovl3
    /* BAD78 8015A338 00000000 */   nop
    /* BAD7C 8015A33C 5045002C */  beql       $v0, $a1, .L8015A3F0_ovl3
    /* BAD80 8015A340 8C890030 */   lw        $t1, 0x30($a0)
    /* BAD84 8015A344 03E00008 */  jr         $ra
    /* BAD88 8015A348 00000000 */   nop
  .L8015A34C_ovl3:
    /* BAD8C 8015A34C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* BAD90 8015A350 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* BAD94 8015A354 3C0E800E */  lui        $t6, %hi(D_800E5F90)
    /* BAD98 8015A358 24010005 */  addiu      $at, $zero, 0x5
    /* BAD9C 8015A35C 8C430000 */  lw         $v1, 0x0($v0)
    /* BADA0 8015A360 00031880 */  sll        $v1, $v1, 2
    /* BADA4 8015A364 01C37021 */  addu       $t6, $t6, $v1
    /* BADA8 8015A368 8DCE5F90 */  lw         $t6, %lo(D_800E5F90)($t6)
    /* BADAC 8015A36C 15C10035 */  bne        $t6, $at, .L8015A444_ovl3
    /* BADB0 8015A370 3C01800E */   lui       $at, %hi(D_800E6BD0)
    /* BADB4 8015A374 00230821 */  addu       $at, $at, $v1
    /* BADB8 8015A378 C4246BD0 */  lwc1       $f4, %lo(D_800E6BD0)($at)
    /* BADBC 8015A37C 3C018019 */  lui        $at, %hi(D_80196FB4_ovl3)
    /* BADC0 8015A380 C4266FB4 */  lwc1       $f6, %lo(D_80196FB4_ovl3)($at)
    /* BADC4 8015A384 3C06800E */  lui        $a2, %hi(D_800E6690)
    /* BADC8 8015A388 4604303E */  c.le.s     $f6, $f4
    /* BADCC 8015A38C 00000000 */  nop
    /* BADD0 8015A390 4500002C */  bc1f       .L8015A444_ovl3
    /* BADD4 8015A394 00000000 */   nop
    /* BADD8 8015A398 44804000 */  mtc1       $zero, $f8
    /* BADDC 8015A39C 24C66690 */  addiu      $a2, $a2, %lo(D_800E6690)
    /* BADE0 8015A3A0 00C37821 */  addu       $t7, $a2, $v1
    /* BADE4 8015A3A4 E5E80000 */  swc1       $f8, 0x0($t7)
    /* BADE8 8015A3A8 8C430000 */  lw         $v1, 0x0($v0)
    /* BADEC 8015A3AC 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* BADF0 8015A3B0 24050002 */  addiu      $a1, $zero, 0x2
    /* BADF4 8015A3B4 00031880 */  sll        $v1, $v1, 2
    /* BADF8 8015A3B8 00C3C021 */  addu       $t8, $a2, $v1
    /* BADFC 8015A3BC C70A0000 */  lwc1       $f10, 0x0($t8)
    /* BAE00 8015A3C0 00230821 */  addu       $at, $at, $v1
    /* BAE04 8015A3C4 E42A64D0 */  swc1       $f10, %lo(D_800E64D0)($at)
    /* BAE08 8015A3C8 8C590000 */  lw         $t9, 0x0($v0)
    /* BAE0C 8015A3CC 3C018019 */  lui        $at, %hi(D_80196FB8_ovl3)
    /* BAE10 8015A3D0 C4306FB8 */  lwc1       $f16, %lo(D_80196FB8_ovl3)($at)
    /* BAE14 8015A3D4 3C01800E */  lui        $at, %hi(D_800E6850)
    /* BAE18 8015A3D8 00194080 */  sll        $t0, $t9, 2
    /* BAE1C 8015A3DC 00280821 */  addu       $at, $at, $t0
    /* BAE20 8015A3E0 E4306850 */  swc1       $f16, %lo(D_800E6850)($at)
    /* BAE24 8015A3E4 03E00008 */  jr         $ra
    /* BAE28 8015A3E8 AC850044 */   sw        $a1, 0x44($a0)
    /* BAE2C 8015A3EC 8C890030 */  lw         $t1, 0x30($a0)
  .L8015A3F0_ovl3:
    /* BAE30 8015A3F0 3C0A800C */  lui        $t2, %hi(D_800BE500)
    /* BAE34 8015A3F4 3C01800C */  lui        $at, %hi(D_800BE52C)
    /* BAE38 8015A3F8 11200012 */  beqz       $t1, .L8015A444_ovl3
    /* BAE3C 8015A3FC 3C0B800C */   lui       $t3, %hi(D_800BE504)
    /* BAE40 8015A400 8D4AE500 */  lw         $t2, %lo(D_800BE500)($t2)
    /* BAE44 8015A404 8D6BE504 */  lw         $t3, %lo(D_800BE504)($t3)
    /* BAE48 8015A408 3C0C800C */  lui        $t4, %hi(D_800BE508)
    /* BAE4C 8015A40C 8D8CE508 */  lw         $t4, %lo(D_800BE508)($t4)
    /* BAE50 8015A410 AC2AE52C */  sw         $t2, %lo(D_800BE52C)($at)
    /* BAE54 8015A414 3C01800C */  lui        $at, %hi(D_800BE530)
    /* BAE58 8015A418 AC2BE530 */  sw         $t3, %lo(D_800BE530)($at)
    /* BAE5C 8015A41C 3C01800C */  lui        $at, %hi(D_800BE534)
    /* BAE60 8015A420 258D0001 */  addiu      $t5, $t4, 0x1
    /* BAE64 8015A424 AC2DE534 */  sw         $t5, %lo(D_800BE534)($at)
    /* BAE68 8015A428 3C01800C */  lui        $at, %hi(D_800BE538)
    /* BAE6C 8015A42C AC20E538 */  sw         $zero, %lo(D_800BE538)($at)
    /* BAE70 8015A430 3C01800C */  lui        $at, %hi(D_800BE4FC)
    /* BAE74 8015A434 AC23E4FC */  sw         $v1, %lo(D_800BE4FC)($at)
    /* BAE78 8015A438 3C01800C */  lui        $at, %hi(D_800BE4F8)
    /* BAE7C 8015A43C AC25E4F8 */  sw         $a1, %lo(D_800BE4F8)($at)
    /* BAE80 8015A440 AC800030 */  sw         $zero, 0x30($a0)
  .L8015A444_ovl3:
    /* BAE84 8015A444 03E00008 */  jr         $ra
    /* BAE88 8015A448 00000000 */   nop
endlabel func_8015A31C_ovl3
