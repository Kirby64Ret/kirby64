.set noat
.set noreorder
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_80169430_ovl3
/* 0C9E70 80169430 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0C9E74 80169434 AFB00018 */  sw    $s0, 0x18($sp)
/* 0C9E78 80169438 AFA50024 */  sw    $a1, 0x24($sp)
/* 0C9E7C 8016943C 93AF0027 */  lbu   $t7, 0x27($sp)
/* 0C9E80 80169440 00048080 */  sll   $s0, $a0, 2
/* 0C9E84 80169444 3C01800F */  lui   $at, 0x800f
/* 0C9E88 80169448 00300821 */  addu  $at, $at, $s0
/* 0C9E8C 8016944C 240E0001 */  li    $t6, 1
/* 0C9E90 80169450 AFA60028 */  sw    $a2, 0x28($sp)
/* 0C9E94 80169454 AC2E8760 */  sw    $t6, -0x78a0($at)
/* 0C9E98 80169458 30C600FF */  andi  $a2, $a2, 0xff
/* 0C9E9C 8016945C 3C01800F */  lui   $at, 0x800f
/* 0C9EA0 80169460 000FC200 */  sll   $t8, $t7, 8
/* 0C9EA4 80169464 0306C825 */  or    $t9, $t8, $a2
/* 0C9EA8 80169468 00300821 */  addu  $at, $at, $s0
/* 0C9EAC 8016946C AFA40020 */  sw    $a0, 0x20($sp)
/* 0C9EB0 80169470 AC39A520 */  sw    $t9, -0x5ae0($at)
/* 0C9EB4 80169474 3C01800E */  lui   $at, 0x800e
/* 0C9EB8 80169478 3C04800E */  lui   $a0, 0x800e
/* 0C9EBC 8016947C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0C9EC0 80169480 00300821 */  addu  $at, $at, $s0
/* 0C9EC4 80169484 00902021 */  addu  $a0, $a0, $s0
/* 0C9EC8 80169488 3C058017 */  lui   $a1, %hi(D_80169694) # $a1, 0x8017
/* 0C9ECC 8016948C AC27DC50 */  sw    $a3, -0x23b0($at)
/* 0C9ED0 80169490 24A59694 */  addiu $a1, %lo(D_80169694) # addiu $a1, $a1, -0x696c
/* 0C9ED4 80169494 0C02C7B2 */  jal   assign_new_process_entry
/* 0C9ED8 80169498 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0C9EDC 8016949C 93A80027 */  lbu   $t0, 0x27($sp)
/* 0C9EE0 801694A0 3C01800E */  lui   $at, 0x800e
/* 0C9EE4 801694A4 00300821 */  addu  $at, $at, $s0
/* 0C9EE8 801694A8 15000035 */  bnez  $t0, .L80169580_ovl3
/* 0C9EEC 801694AC AC20F150 */   sw    $zero, -0xeb0($at)
/* 0C9EF0 801694B0 3C028013 */  lui   $v0, %hi(gKirbyState) # $v0, 0x8013
/* 0C9EF4 801694B4 2442E7C0 */  addiu $v0, %lo(gKirbyState) # addiu $v0, $v0, -0x1840
/* 0C9EF8 801694B8 90490005 */  lbu   $t1, 5($v0)
/* 0C9EFC 801694BC 2403FFFF */  li    $v1, -1
/* 0C9F00 801694C0 240A0015 */  li    $t2, 21
/* 0C9F04 801694C4 3C01800E */  lui   $at, 0x800e
/* 0C9F08 801694C8 AC430000 */  sw    $v1, ($v0)
/* 0C9F0C 801694CC A0400004 */  sb    $zero, 4($v0)
/* 0C9F10 801694D0 A04A0005 */  sb    $t2, 5($v0)
/* 0C9F14 801694D4 AC4000A0 */  sw    $zero, 0xa0($v0)
/* 0C9F18 801694D8 A0400007 */  sb    $zero, 7($v0)
/* 0C9F1C 801694DC AC400034 */  sw    $zero, 0x34($v0)
/* 0C9F20 801694E0 00300821 */  addu  $at, $at, $s0
/* 0C9F24 801694E4 A0490006 */  sb    $t1, 6($v0)
/* 0C9F28 801694E8 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0C9F2C 801694EC 3C01800E */  lui   $at, 0x800e
/* 0C9F30 801694F0 00300821 */  addu  $at, $at, $s0
/* 0C9F34 801694F4 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0C9F38 801694F8 240BFFFD */  li    $t3, -3
/* 0C9F3C 801694FC 3C01800F */  lui   $at, 0x800f
/* 0C9F40 80169500 A04000B0 */  sb    $zero, 0xb0($v0)
/* 0C9F44 80169504 A04000B8 */  sb    $zero, 0xb8($v0)
/* 0C9F48 80169508 A04B000D */  sb    $t3, 0xd($v0)
/* 0C9F4C 8016950C 00300821 */  addu  $at, $at, $s0
/* 0C9F50 80169510 240CFFFF */  li    $t4, -1
/* 0C9F54 80169514 AC2C8060 */  sw    $t4, -0x7fa0($at)
/* 0C9F58 80169518 44803000 */  mtc1  $zero, $f6
/* 0C9F5C 8016951C 3C01800E */  lui   $at, 0x800e
/* 0C9F60 80169520 A44000D4 */  sh    $zero, 0xd4($v0)
/* 0C9F64 80169524 A44300D6 */  sh    $v1, 0xd6($v0)
/* 0C9F68 80169528 00300821 */  addu  $at, $at, $s0
/* 0C9F6C 8016952C 0C047717 */  jal   func_8011DC5C
/* 0C9F70 80169530 E4264010 */   swc1  $f6, 0x4010($at)
/* 0C9F74 80169534 0C04783A */  jal   func_8011E0E8
/* 0C9F78 80169538 00000000 */   nop   
/* 0C9F7C 8016953C 3C048013 */  lui   $a0, %hi(D_8012EAE0) # $a0, 0x8013
/* 0C9F80 80169540 8C84EAE0 */  lw    $a0, %lo(D_8012EAE0)($a0)
/* 0C9F84 80169544 10800005 */  beqz  $a0, .L8016955C_ovl3
/* 0C9F88 80169548 00000000 */   nop   
/* 0C9F8C 8016954C 0C0288B5 */  jal   func_800A22D4
/* 0C9F90 80169550 00000000 */   nop   
/* 0C9F94 80169554 3C018013 */  lui   $at, %hi(D_8012EAE0) # $at, 0x8013
/* 0C9F98 80169558 AC20EAE0 */  sw    $zero, %lo(D_8012EAE0)($at)
.L8016955C_ovl3:
/* 0C9F9C 8016955C 3C01800E */  lui   $at, 0x800e
/* 0C9FA0 80169560 3C04800E */  lui   $a0, 0x800e
/* 0C9FA4 80169564 00300821 */  addu  $at, $at, $s0
/* 0C9FA8 80169568 00902021 */  addu  $a0, $a0, $s0
/* 0C9FAC 8016956C 3C058017 */  lui   $a1, %hi(D_80177098) # $a1, 0x8017
/* 0C9FB0 80169570 AC20DE10 */  sw    $zero, -0x21f0($at)
/* 0C9FB4 80169574 24A57098 */  addiu $a1, %lo(D_80177098) # addiu $a1, $a1, 0x7098
/* 0C9FB8 80169578 0C02C7B2 */  jal   assign_new_process_entry
/* 0C9FBC 8016957C 8C84E890 */   lw    $a0, -0x1770($a0)
.L80169580_ovl3:
/* 0C9FC0 80169580 3C018019 */  lui   $at, %hi(D_801971F0) # $at, 0x8019
/* 0C9FC4 80169584 C42271F0 */  lwc1  $f2, %lo(D_801971F0)($at)
/* 0C9FC8 80169588 3C018019 */  lui   $at, %hi(D_801971F4) # $at, 0x8019
/* 0C9FCC 8016958C C42C71F4 */  lwc1  $f12, %lo(D_801971F4)($at)
/* 0C9FD0 80169590 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0C9FD4 80169594 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0C9FD8 80169598 3C01800E */  lui   $at, 0x800e
/* 0C9FDC 8016959C 00300821 */  addu  $at, $at, $s0
/* 0C9FE0 801695A0 240D0026 */  li    $t5, 38
/* 0C9FE4 801695A4 AC2DDA90 */  sw    $t5, -0x2570($at)
/* 0C9FE8 801695A8 8DCF0000 */  lw    $t7, ($t6)
/* 0C9FEC 801695AC 3C01800E */  lui   $at, 0x800e
/* 0C9FF0 801695B0 00300821 */  addu  $at, $at, $s0
/* 0C9FF4 801695B4 44800000 */  mtc1  $zero, $f0
/* 0C9FF8 801695B8 AC2F0D50 */  sw    $t7, 0xd50($at)
/* 0C9FFC 801695BC 3C01800E */  lui   $at, 0x800e
/* 0CA000 801695C0 00300821 */  addu  $at, $at, $s0
/* 0CA004 801695C4 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 0CA008 801695C8 3C01800E */  lui   $at, 0x800e
/* 0CA00C 801695CC 00300821 */  addu  $at, $at, $s0
/* 0CA010 801695D0 E4203210 */  swc1  $f0, 0x3210($at)
/* 0CA014 801695D4 3C01800E */  lui   $at, 0x800e
/* 0CA018 801695D8 00300821 */  addu  $at, $at, $s0
/* 0CA01C 801695DC E4203050 */  swc1  $f0, 0x3050($at)
/* 0CA020 801695E0 3C01800E */  lui   $at, 0x800e
/* 0CA024 801695E4 00300821 */  addu  $at, $at, $s0
/* 0CA028 801695E8 E42064D0 */  swc1  $f0, 0x64d0($at)
/* 0CA02C 801695EC 3C01800E */  lui   $at, 0x800e
/* 0CA030 801695F0 00300821 */  addu  $at, $at, $s0
/* 0CA034 801695F4 E4203910 */  swc1  $f0, 0x3910($at)
/* 0CA038 801695F8 3C01800E */  lui   $at, 0x800e
/* 0CA03C 801695FC 00300821 */  addu  $at, $at, $s0
/* 0CA040 80169600 E4203750 */  swc1  $f0, 0x3750($at)
/* 0CA044 80169604 3C01800E */  lui   $at, 0x800e
/* 0CA048 80169608 00300821 */  addu  $at, $at, $s0
/* 0CA04C 8016960C E4203590 */  swc1  $f0, 0x3590($at)
/* 0CA050 80169610 3C01800E */  lui   $at, 0x800e
/* 0CA054 80169614 00300821 */  addu  $at, $at, $s0
/* 0CA058 80169618 E4206690 */  swc1  $f0, 0x6690($at)
/* 0CA05C 8016961C 3C01800E */  lui   $at, 0x800e
/* 0CA060 80169620 00300821 */  addu  $at, $at, $s0
/* 0CA064 80169624 E4223E50 */  swc1  $f2, 0x3e50($at)
/* 0CA068 80169628 3C01800E */  lui   $at, 0x800e
/* 0CA06C 8016962C 00300821 */  addu  $at, $at, $s0
/* 0CA070 80169630 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 0CA074 80169634 3C01800E */  lui   $at, 0x800e
/* 0CA078 80169638 00300821 */  addu  $at, $at, $s0
/* 0CA07C 8016963C E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 0CA080 80169640 3C01800E */  lui   $at, 0x800e
/* 0CA084 80169644 00300821 */  addu  $at, $at, $s0
/* 0CA088 80169648 E4226850 */  swc1  $f2, 0x6850($at)
/* 0CA08C 8016964C 3C01800E */  lui   $at, 0x800e
/* 0CA090 80169650 00300821 */  addu  $at, $at, $s0
/* 0CA094 80169654 E42C48D0 */  swc1  $f12, 0x48d0($at)
/* 0CA098 80169658 3C01800E */  lui   $at, 0x800e
/* 0CA09C 8016965C 00300821 */  addu  $at, $at, $s0
/* 0CA0A0 80169660 E42C4710 */  swc1  $f12, 0x4710($at)
/* 0CA0A4 80169664 3C01800E */  lui   $at, 0x800e
/* 0CA0A8 80169668 3C04800E */  lui   $a0, 0x800e
/* 0CA0AC 8016966C 00300821 */  addu  $at, $at, $s0
/* 0CA0B0 80169670 00902021 */  addu  $a0, $a0, $s0
/* 0CA0B4 80169674 8C84E350 */  lw    $a0, -0x1cb0($a0)
/* 0CA0B8 80169678 0C003011 */  jal   func_8000C044_ovl3
/* 0CA0BC 8016967C E42C4550 */   swc1  $f12, 0x4550($at)
/* 0CA0C0 80169680 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CA0C4 80169684 8FB00018 */  lw    $s0, 0x18($sp)
/* 0CA0C8 80169688 27BD0020 */  addiu $sp, $sp, 0x20
/* 0CA0CC 8016968C 03E00008 */  jr    $ra
/* 0CA0D0 80169690 00000000 */   nop   

.type func_80169430_ovl3, @function
.size func_80169430_ovl3, . - func_80169430_ovl3

glabel func_80169694_ovl3
/* 0CA0D4 80169694 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA0D8 80169698 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA0DC 8016969C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA0E0 801696A0 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CA0E4 801696A4 0C068CBB */  jal   func_801A32EC_ovl3
/* 0CA0E8 801696A8 2484A980 */   addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CA0EC 801696AC 0C068E4E */  jal   func_801A3938_ovl3
/* 0CA0F0 801696B0 00002025 */   move  $a0, $zero
/* 0CA0F4 801696B4 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0CA0F8 801696B8 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0CA0FC 801696BC 3C04800E */  lui   $a0, 0x800e
/* 0CA100 801696C0 3C068019 */  lui   $a2, %hi(D_80196910) # $a2, 0x8019
/* 0CA104 801696C4 8DCF0000 */  lw    $t7, ($t6)
/* 0CA108 801696C8 24C66910 */  addiu $a2, %lo(D_80196910) # addiu $a2, $a2, 0x6910
/* 0CA10C 801696CC 24050011 */  li    $a1, 17
/* 0CA110 801696D0 000FC080 */  sll   $t8, $t7, 2
/* 0CA114 801696D4 00982021 */  addu  $a0, $a0, $t8
/* 0CA118 801696D8 0C02911F */  jal   call_virtual_function
/* 0CA11C 801696DC 8C84DC50 */   lw    $a0, -0x23b0($a0)
/* 0CA120 801696E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CA124 801696E4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA128 801696E8 03E00008 */  jr    $ra
/* 0CA12C 801696EC 00000000 */   nop   

.type func_80169694_ovl3, @function
.size func_80169694_ovl3, . - func_80169694_ovl3

glabel func_801696F0_ovl3
/* 0CA130 801696F0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA134 801696F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA138 801696F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA13C 801696FC 3C048013 */  lui   $a0, %hi(D_8012E944) # $a0, 0x8013
/* 0CA140 80169700 0C03FC80 */  jal   func_800FF200
/* 0CA144 80169704 8C84E944 */   lw    $a0, %lo(D_8012E944)($a0)
/* 0CA148 80169708 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CA14C 8016970C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA150 80169710 03E00008 */  jr    $ra
/* 0CA154 80169714 00000000 */   nop   

.type func_801696F0_ovl3, @function
.size func_801696F0_ovl3, . - func_801696F0_ovl3

glabel func_80169718_ovl3
/* 0CA158 80169718 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA15C 8016971C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA160 80169720 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CA164 80169724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA168 80169728 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CA16C 8016972C 8C430000 */  lw    $v1, ($v0)
/* 0CA170 80169730 3C0E800F */  lui   $t6, 0x800f
/* 0CA174 80169734 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0CA178 80169738 00031880 */  sll   $v1, $v1, 2
/* 0CA17C 8016973C 01C37021 */  addu  $t6, $t6, $v1
/* 0CA180 80169740 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 0CA184 80169744 31CF00FF */  andi  $t7, $t6, 0xff
/* 0CA188 80169748 15E00007 */  bnez  $t7, .L80169768_ovl3
/* 0CA18C 8016974C 00000000 */   nop   
/* 0CA190 80169750 0C02A5D8 */  jal   func_800A9760
/* 0CA194 80169754 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0CA198 80169758 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA19C 8016975C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA1A0 80169760 8C430000 */  lw    $v1, ($v0)
/* 0CA1A4 80169764 00031880 */  sll   $v1, $v1, 2
.L80169768_ovl3:
/* 0CA1A8 80169768 3C188017 */  lui   $t8, %hi(D_80169A98) # $t8, 0x8017
/* 0CA1AC 8016976C 3C01800E */  lui   $at, 0x800e
/* 0CA1B0 80169770 00230821 */  addu  $at, $at, $v1
/* 0CA1B4 80169774 27189A98 */  addiu $t8, %lo(D_80169A98) # addiu $t8, $t8, -0x6568
/* 0CA1B8 80169778 AC38F150 */  sw    $t8, -0xeb0($at)
/* 0CA1BC 8016977C 8C490000 */  lw    $t1, ($v0)
/* 0CA1C0 80169780 3C01800E */  lui   $at, 0x800e
/* 0CA1C4 80169784 3C19800B */  lui   $t9, %hi(D_800B4924) # $t9, 0x800b
/* 0CA1C8 80169788 00095080 */  sll   $t2, $t1, 2
/* 0CA1CC 8016978C 002A0821 */  addu  $at, $at, $t2
/* 0CA1D0 80169790 27394924 */  addiu $t9, %lo(D_800B4924) # addiu $t9, $t9, 0x4924
/* 0CA1D4 80169794 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0CA1D8 80169798 8C4B0000 */  lw    $t3, ($v0)
/* 0CA1DC 8016979C 3C01800F */  lui   $at, 0x800f
/* 0CA1E0 801697A0 000B6080 */  sll   $t4, $t3, 2
/* 0CA1E4 801697A4 002C0821 */  addu  $at, $at, $t4
/* 0CA1E8 801697A8 AC208920 */  sw    $zero, -0x76e0($at)
/* 0CA1EC 801697AC 8C4D0000 */  lw    $t5, ($v0)
/* 0CA1F0 801697B0 3C01800F */  lui   $at, 0x800f
/* 0CA1F4 801697B4 000D7080 */  sll   $t6, $t5, 2
/* 0CA1F8 801697B8 002E0821 */  addu  $at, $at, $t6
/* 0CA1FC 801697BC 0C05AEF4 */  jal   func_8016BBD0_ovl3
/* 0CA200 801697C0 AC2098E0 */   sw    $zero, -0x6720($at)
/* 0CA204 801697C4 8FA20018 */  lw    $v0, 0x18($sp)
/* 0CA208 801697C8 3C048013 */  lui   $a0, %hi(D_8012E944) # $a0, 0x8013
/* 0CA20C 801697CC 8C4F0044 */  lw    $t7, 0x44($v0)
/* 0CA210 801697D0 35F80001 */  ori   $t8, $t7, 1
/* 0CA214 801697D4 AC580044 */  sw    $t8, 0x44($v0)
/* 0CA218 801697D8 0C03FC2A */  jal   func_800FF0A8
/* 0CA21C 801697DC 8C84E944 */   lw    $a0, %lo(D_8012E944)($a0)
/* 0CA220 801697E0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA224 801697E4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA228 801697E8 44806000 */  mtc1  $zero, $f12
/* 0CA22C 801697EC 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 0CA230 801697F0 8C490000 */  lw    $t1, ($v0)
/* 0CA234 801697F4 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 0CA238 801697F8 3C018019 */  lui   $at, %hi(D_801971F8) # $at, 0x8019
/* 0CA23C 801697FC 0009C880 */  sll   $t9, $t1, 2
/* 0CA240 80169800 C42E71F8 */  lwc1  $f14, %lo(D_801971F8)($at)
/* 0CA244 80169804 00995021 */  addu  $t2, $a0, $t9
/* 0CA248 80169808 E54C0000 */  swc1  $f12, ($t2)
/* 0CA24C 8016980C 8C430000 */  lw    $v1, ($v0)
/* 0CA250 80169810 3C01800E */  lui   $at, 0x800e
/* 0CA254 80169814 3C05800E */  lui   $a1, %hi(D_800E3E50) # $a1, 0x800e
/* 0CA258 80169818 00031880 */  sll   $v1, $v1, 2
/* 0CA25C 8016981C 00835821 */  addu  $t3, $a0, $v1
/* 0CA260 80169820 C5600000 */  lwc1  $f0, ($t3)
/* 0CA264 80169824 00230821 */  addu  $at, $at, $v1
/* 0CA268 80169828 24A53E50 */  addiu $a1, %lo(D_800E3E50) # addiu $a1, $a1, 0x3e50
/* 0CA26C 8016982C E4203750 */  swc1  $f0, 0x3750($at)
/* 0CA270 80169830 8C4C0000 */  lw    $t4, ($v0)
/* 0CA274 80169834 3C01800E */  lui   $at, 0x800e
/* 0CA278 80169838 3C06800E */  lui   $a2, %hi(D_800E6690) # $a2, 0x800e
/* 0CA27C 8016983C 000C6880 */  sll   $t5, $t4, 2
/* 0CA280 80169840 002D0821 */  addu  $at, $at, $t5
/* 0CA284 80169844 E4203590 */  swc1  $f0, 0x3590($at)
/* 0CA288 80169848 8C4E0000 */  lw    $t6, ($v0)
/* 0CA28C 8016984C 3C01800E */  lui   $at, 0x800e
/* 0CA290 80169850 24C66690 */  addiu $a2, %lo(D_800E6690) # addiu $a2, $a2, 0x6690
/* 0CA294 80169854 000E7880 */  sll   $t7, $t6, 2
/* 0CA298 80169858 002F0821 */  addu  $at, $at, $t7
/* 0CA29C 8016985C E42033D0 */  swc1  $f0, 0x33d0($at)
/* 0CA2A0 80169860 8C580000 */  lw    $t8, ($v0)
/* 0CA2A4 80169864 3C01800E */  lui   $at, 0x800e
/* 0CA2A8 80169868 00184880 */  sll   $t1, $t8, 2
/* 0CA2AC 8016986C 00290821 */  addu  $at, $at, $t1
/* 0CA2B0 80169870 E4203210 */  swc1  $f0, 0x3210($at)
/* 0CA2B4 80169874 8C590000 */  lw    $t9, ($v0)
/* 0CA2B8 80169878 3C01800E */  lui   $at, 0x800e
/* 0CA2BC 8016987C 00195080 */  sll   $t2, $t9, 2
/* 0CA2C0 80169880 002A0821 */  addu  $at, $at, $t2
/* 0CA2C4 80169884 E4203050 */  swc1  $f0, 0x3050($at)
/* 0CA2C8 80169888 8C4B0000 */  lw    $t3, ($v0)
/* 0CA2CC 8016988C 3C01800E */  lui   $at, 0x800e
/* 0CA2D0 80169890 000B6080 */  sll   $t4, $t3, 2
/* 0CA2D4 80169894 00AC6821 */  addu  $t5, $a1, $t4
/* 0CA2D8 80169898 E5AE0000 */  swc1  $f14, ($t5)
/* 0CA2DC 8016989C 8C430000 */  lw    $v1, ($v0)
/* 0CA2E0 801698A0 00031880 */  sll   $v1, $v1, 2
/* 0CA2E4 801698A4 00A37021 */  addu  $t6, $a1, $v1
/* 0CA2E8 801698A8 C5C20000 */  lwc1  $f2, ($t6)
/* 0CA2EC 801698AC 00230821 */  addu  $at, $at, $v1
/* 0CA2F0 801698B0 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 0CA2F4 801698B4 8C4F0000 */  lw    $t7, ($v0)
/* 0CA2F8 801698B8 3C01800E */  lui   $at, 0x800e
/* 0CA2FC 801698BC 000FC080 */  sll   $t8, $t7, 2
/* 0CA300 801698C0 00380821 */  addu  $at, $at, $t8
/* 0CA304 801698C4 E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 0CA308 801698C8 8C490000 */  lw    $t1, ($v0)
/* 0CA30C 801698CC 3C01800E */  lui   $at, 0x800e
/* 0CA310 801698D0 0009C880 */  sll   $t9, $t1, 2
/* 0CA314 801698D4 00D95021 */  addu  $t2, $a2, $t9
/* 0CA318 801698D8 E54C0000 */  swc1  $f12, ($t2)
/* 0CA31C 801698DC 8C430000 */  lw    $v1, ($v0)
/* 0CA320 801698E0 00031880 */  sll   $v1, $v1, 2
/* 0CA324 801698E4 00C35821 */  addu  $t3, $a2, $v1
/* 0CA328 801698E8 C5640000 */  lwc1  $f4, ($t3)
/* 0CA32C 801698EC 00230821 */  addu  $at, $at, $v1
/* 0CA330 801698F0 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 0CA334 801698F4 8C4C0000 */  lw    $t4, ($v0)
/* 0CA338 801698F8 3C01800E */  lui   $at, 0x800e
/* 0CA33C 801698FC 000C6880 */  sll   $t5, $t4, 2
/* 0CA340 80169900 002D0821 */  addu  $at, $at, $t5
/* 0CA344 80169904 0C03EF87 */  jal   func_800FBE1C
/* 0CA348 80169908 E42E6850 */   swc1  $f14, 0x6850($at)
/* 0CA34C 8016990C 0C03E905 */  jal   func_800FA414
/* 0CA350 80169910 24040005 */   li    $a0, 5
/* 0CA354 80169914 00002025 */  move  $a0, $zero
/* 0CA358 80169918 0C02ED1A */  jal   func_800BB468
/* 0CA35C 8016991C 00002825 */   move  $a1, $zero
/* 0CA360 80169920 0C002DAF */  jal   finish_current_thread
/* 0CA364 80169924 24040041 */   li    $a0, 65
/* 0CA368 80169928 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0CA36C 8016992C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0CA370 80169930 8FB90018 */  lw    $t9, 0x18($sp)
/* 0CA374 80169934 3C01800F */  lui   $at, 0x800f
/* 0CA378 80169938 8DF80000 */  lw    $t8, ($t7)
/* 0CA37C 8016993C 240E0001 */  li    $t6, 1
/* 0CA380 80169940 3C048013 */  lui   $a0, %hi(D_8012E944) # $a0, 0x8013
/* 0CA384 80169944 00184880 */  sll   $t1, $t8, 2
/* 0CA388 80169948 00290821 */  addu  $at, $at, $t1
/* 0CA38C 8016994C AC2E98E0 */  sw    $t6, -0x6720($at)
/* 0CA390 80169950 8F2A0044 */  lw    $t2, 0x44($t9)
/* 0CA394 80169954 394B0001 */  xori  $t3, $t2, 1
/* 0CA398 80169958 AF2B0044 */  sw    $t3, 0x44($t9)
/* 0CA39C 8016995C 0C03FC31 */  jal   func_800FF0C4
/* 0CA3A0 80169960 8C84E944 */   lw    $a0, %lo(D_8012E944)($a0)
/* 0CA3A4 80169964 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA3A8 80169968 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA3AC 8016996C 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 0CA3B0 80169970 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 0CA3B4 80169974 8C430000 */  lw    $v1, ($v0)
/* 0CA3B8 80169978 3C06800E */  lui   $a2, %hi(D_800E5F90) # $a2, 0x800e
/* 0CA3BC 8016997C 24C65F90 */  addiu $a2, %lo(D_800E5F90) # addiu $a2, $a2, 0x5f90
/* 0CA3C0 80169980 00031880 */  sll   $v1, $v1, 2
/* 0CA3C4 80169984 00E36021 */  addu  $t4, $a3, $v1
/* 0CA3C8 80169988 8D8D0000 */  lw    $t5, ($t4)
/* 0CA3CC 8016998C 3C01800E */  lui   $at, 0x800e
/* 0CA3D0 80169990 00230821 */  addu  $at, $at, $v1
/* 0CA3D4 80169994 000D7880 */  sll   $t7, $t5, 2
/* 0CA3D8 80169998 00CFC021 */  addu  $t8, $a2, $t7
/* 0CA3DC 8016999C 8F050000 */  lw    $a1, ($t8)
/* 0CA3E0 801699A0 3C08800E */  lui   $t0, %hi(D_800E6BD0) # $t0, 0x800e
/* 0CA3E4 801699A4 25086BD0 */  addiu $t0, %lo(D_800E6BD0) # addiu $t0, $t0, 0x6bd0
/* 0CA3E8 801699A8 AC256150 */  sw    $a1, 0x6150($at)
/* 0CA3EC 801699AC 8C4E0000 */  lw    $t6, ($v0)
/* 0CA3F0 801699B0 3C01800E */  lui   $at, 0x800e
/* 0CA3F4 801699B4 24040003 */  li    $a0, 3
/* 0CA3F8 801699B8 000E4880 */  sll   $t1, $t6, 2
/* 0CA3FC 801699BC 00C95021 */  addu  $t2, $a2, $t1
/* 0CA400 801699C0 AD450000 */  sw    $a1, ($t2)
/* 0CA404 801699C4 8C430000 */  lw    $v1, ($v0)
/* 0CA408 801699C8 00031880 */  sll   $v1, $v1, 2
/* 0CA40C 801699CC 00E35821 */  addu  $t3, $a3, $v1
/* 0CA410 801699D0 8D790000 */  lw    $t9, ($t3)
/* 0CA414 801699D4 00230821 */  addu  $at, $at, $v1
/* 0CA418 801699D8 3C0B800B */  lui   $t3, %hi(D_800B531C) # $t3, 0x800b
/* 0CA41C 801699DC 00196080 */  sll   $t4, $t9, 2
/* 0CA420 801699E0 010C6821 */  addu  $t5, $t0, $t4
/* 0CA424 801699E4 C5A00000 */  lwc1  $f0, ($t5)
/* 0CA428 801699E8 256B531C */  addiu $t3, %lo(D_800B531C) # addiu $t3, $t3, 0x531c
/* 0CA42C 801699EC E4206D90 */  swc1  $f0, 0x6d90($at)
/* 0CA430 801699F0 8C4F0000 */  lw    $t7, ($v0)
/* 0CA434 801699F4 3C01800F */  lui   $at, 0x800f
/* 0CA438 801699F8 000FC080 */  sll   $t8, $t7, 2
/* 0CA43C 801699FC 01187021 */  addu  $t6, $t0, $t8
/* 0CA440 80169A00 E5C00000 */  swc1  $f0, ($t6)
/* 0CA444 80169A04 8C490000 */  lw    $t1, ($v0)
/* 0CA448 80169A08 00095080 */  sll   $t2, $t1, 2
/* 0CA44C 80169A0C 002A0821 */  addu  $at, $at, $t2
/* 0CA450 80169A10 AC208920 */  sw    $zero, -0x76e0($at)
/* 0CA454 80169A14 8C590000 */  lw    $t9, ($v0)
/* 0CA458 80169A18 3C01800E */  lui   $at, 0x800e
/* 0CA45C 80169A1C 00196080 */  sll   $t4, $t9, 2
/* 0CA460 80169A20 002C0821 */  addu  $at, $at, $t4
/* 0CA464 80169A24 AC2BEF90 */  sw    $t3, -0x1070($at)
/* 0CA468 80169A28 8C4D0000 */  lw    $t5, ($v0)
/* 0CA46C 80169A2C 3C01C120 */  li    $at, 0xC1200000 # -10.000000
/* 0CA470 80169A30 44813000 */  mtc1  $at, $f6
/* 0CA474 80169A34 3C01800E */  lui   $at, 0x800e
/* 0CA478 80169A38 000D7880 */  sll   $t7, $t5, 2
/* 0CA47C 80169A3C 002F0821 */  addu  $at, $at, $t7
/* 0CA480 80169A40 E4263210 */  swc1  $f6, 0x3210($at)
/* 0CA484 80169A44 8C580000 */  lw    $t8, ($v0)
/* 0CA488 80169A48 3C018019 */  lui   $at, %hi(D_801971FC) # $at, 0x8019
/* 0CA48C 80169A4C C42871FC */  lwc1  $f8, %lo(D_801971FC)($at)
/* 0CA490 80169A50 3C01800E */  lui   $at, 0x800e
/* 0CA494 80169A54 00187080 */  sll   $t6, $t8, 2
/* 0CA498 80169A58 002E0821 */  addu  $at, $at, $t6
/* 0CA49C 80169A5C E4283750 */  swc1  $f8, 0x3750($at)
/* 0CA4A0 80169A60 8C490000 */  lw    $t1, ($v0)
/* 0CA4A4 80169A64 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 0CA4A8 80169A68 44815000 */  mtc1  $at, $f10
/* 0CA4AC 80169A6C 3C01800E */  lui   $at, 0x800e
/* 0CA4B0 80169A70 00095080 */  sll   $t2, $t1, 2
/* 0CA4B4 80169A74 002A0821 */  addu  $at, $at, $t2
/* 0CA4B8 80169A78 0C03E905 */  jal   func_800FA414
/* 0CA4BC 80169A7C E42A3C90 */   swc1  $f10, 0x3c90($at)
/* 0CA4C0 80169A80 0C02BE85 */  jal   func_800AFA14
/* 0CA4C4 80169A84 00000000 */   nop   
/* 0CA4C8 80169A88 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CA4CC 80169A8C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CA4D0 80169A90 03E00008 */  jr    $ra
/* 0CA4D4 80169A94 00000000 */   nop   

.type func_80169718_ovl3, @function
.size func_80169718_ovl3, . - func_80169718_ovl3

glabel func_80169A98_ovl3
/* 0CA4D8 80169A98 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0CA4DC 80169A9C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0CA4E0 80169AA0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0CA4E4 80169AA4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CA4E8 80169AA8 AFA40040 */  sw    $a0, 0x40($sp)
/* 0CA4EC 80169AAC 8DC30000 */  lw    $v1, ($t6)
/* 0CA4F0 80169AB0 3C06800E */  lui   $a2, 0x800e
/* 0CA4F4 80169AB4 3C05800F */  lui   $a1, 0x800f
/* 0CA4F8 80169AB8 00031880 */  sll   $v1, $v1, 2
/* 0CA4FC 80169ABC 00C33021 */  addu  $a2, $a2, $v1
/* 0CA500 80169AC0 8CC60D50 */  lw    $a2, 0xd50($a2)
/* 0CA504 80169AC4 3C18800E */  lui   $t8, 0x800e
/* 0CA508 80169AC8 00A32821 */  addu  $a1, $a1, $v1
/* 0CA50C 80169ACC 00067880 */  sll   $t7, $a2, 2
/* 0CA510 80169AD0 8CA598E0 */  lw    $a1, -0x6720($a1)
/* 0CA514 80169AD4 030FC021 */  addu  $t8, $t8, $t7
/* 0CA518 80169AD8 8F18E350 */  lw    $t8, -0x1cb0($t8)
/* 0CA51C 80169ADC 27A40030 */  addiu $a0, $sp, 0x30
/* 0CA520 80169AE0 14A00034 */  bnez  $a1, .L80169BB4_ovl3
/* 0CA524 80169AE4 8F07003C */   lw    $a3, 0x3c($t8)
/* 0CA528 80169AE8 00E02825 */  move  $a1, $a3
/* 0CA52C 80169AEC 0C02C8D0 */  jal   func_800B2340
/* 0CA530 80169AF0 AFA7003C */   sw    $a3, 0x3c($sp)
/* 0CA534 80169AF4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA538 80169AF8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA53C 80169AFC C7A40030 */  lwc1  $f4, 0x30($sp)
/* 0CA540 80169B00 3C01800E */  lui   $at, 0x800e
/* 0CA544 80169B04 8C590000 */  lw    $t9, ($v0)
/* 0CA548 80169B08 C7A60034 */  lwc1  $f6, 0x34($sp)
/* 0CA54C 80169B0C C7B00038 */  lwc1  $f16, 0x38($sp)
/* 0CA550 80169B10 00194080 */  sll   $t0, $t9, 2
/* 0CA554 80169B14 00280821 */  addu  $at, $at, $t0
/* 0CA558 80169B18 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 0CA55C 80169B1C 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0CA560 80169B20 44814000 */  mtc1  $at, $f8
/* 0CA564 80169B24 8C490000 */  lw    $t1, ($v0)
/* 0CA568 80169B28 3C01800E */  lui   $at, 0x800e
/* 0CA56C 80169B2C 46083281 */  sub.s $f10, $f6, $f8
/* 0CA570 80169B30 00095080 */  sll   $t2, $t1, 2
/* 0CA574 80169B34 002A0821 */  addu  $at, $at, $t2
/* 0CA578 80169B38 3C06800E */  lui   $a2, 0x800e
/* 0CA57C 80169B3C E42A2790 */  swc1  $f10, 0x2790($at)
/* 0CA580 80169B40 8C4B0000 */  lw    $t3, ($v0)
/* 0CA584 80169B44 3C01800E */  lui   $at, 0x800e
/* 0CA588 80169B48 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0CA58C 80169B4C 000B6080 */  sll   $t4, $t3, 2
/* 0CA590 80169B50 002C0821 */  addu  $at, $at, $t4
/* 0CA594 80169B54 E4302950 */  swc1  $f16, 0x2950($at)
/* 0CA598 80169B58 8C4D0000 */  lw    $t5, ($v0)
/* 0CA59C 80169B5C 27A40024 */  addiu $a0, $sp, 0x24
/* 0CA5A0 80169B60 000D7080 */  sll   $t6, $t5, 2
/* 0CA5A4 80169B64 00CE3021 */  addu  $a2, $a2, $t6
/* 0CA5A8 80169B68 0C02C9B6 */  jal   func_800B26D8
/* 0CA5AC 80169B6C 8CC60D50 */   lw    $a2, 0xd50($a2)
/* 0CA5B0 80169B70 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CA5B4 80169B74 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CA5B8 80169B78 3C01800E */  lui   $at, 0x800e
/* 0CA5BC 80169B7C C7A40028 */  lwc1  $f4, 0x28($sp)
/* 0CA5C0 80169B80 8C430000 */  lw    $v1, ($v0)
/* 0CA5C4 80169B84 3C05800F */  lui   $a1, 0x800f
/* 0CA5C8 80169B88 00031880 */  sll   $v1, $v1, 2
/* 0CA5CC 80169B8C 00230821 */  addu  $at, $at, $v1
/* 0CA5D0 80169B90 C43217D0 */  lwc1  $f18, 0x17d0($at)
/* 0CA5D4 80169B94 3C01800E */  lui   $at, 0x800e
/* 0CA5D8 80169B98 00230821 */  addu  $at, $at, $v1
/* 0CA5DC 80169B9C 46049180 */  add.s $f6, $f18, $f4
/* 0CA5E0 80169BA0 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0CA5E4 80169BA4 8C4F0000 */  lw    $t7, ($v0)
/* 0CA5E8 80169BA8 000FC080 */  sll   $t8, $t7, 2
/* 0CA5EC 80169BAC 00B82821 */  addu  $a1, $a1, $t8
/* 0CA5F0 80169BB0 8CA598E0 */  lw    $a1, -0x6720($a1)
.L80169BB4_ovl3:
/* 0CA5F4 80169BB4 18A00010 */  blez  $a1, .L80169BF8_ovl3
/* 0CA5F8 80169BB8 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
/* 0CA5FC 80169BBC 44816000 */  mtc1  $at, $f12
/* 0CA600 80169BC0 0C02EFF8 */  jal   change_kirby_hp
/* 0CA604 80169BC4 00000000 */   nop   
/* 0CA608 80169BC8 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0CA60C 80169BCC C42A6E50 */  lwc1  $f10, %lo(gKirbyHp)($at)
/* 0CA610 80169BD0 44804000 */  mtc1  $zero, $f8
/* 0CA614 80169BD4 00000000 */  nop   
/* 0CA618 80169BD8 460A403C */  c.lt.s $f8, $f10
/* 0CA61C 80169BDC 00000000 */  nop   
/* 0CA620 80169BE0 45000003 */  bc1f  .L80169BF0_ovl3
/* 0CA624 80169BE4 00000000 */   nop   
/* 0CA628 80169BE8 0C029D9E */  jal   play_sound
/* 0CA62C 80169BEC 240400D9 */   li    $a0, 217
.L80169BF0_ovl3:
/* 0CA630 80169BF0 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CA634 80169BF4 24040001 */   li    $a0, 1
.L80169BF8_ovl3:
/* 0CA638 80169BF8 0C05A5BC */  jal   func_801696F0_ovl3
/* 0CA63C 80169BFC 8FA40040 */   lw    $a0, 0x40($sp)
/* 0CA640 80169C00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CA644 80169C04 27BD0040 */  addiu $sp, $sp, 0x40
/* 0CA648 80169C08 03E00008 */  jr    $ra
/* 0CA64C 80169C0C 00000000 */   nop   

.type func_80169A98_ovl3, @function
.size func_80169A98_ovl3, . - func_80169A98_ovl3

glabel func_80169C10_ovl3
/* 0CA650 80169C10 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CA654 80169C14 AFB10018 */  sw    $s1, 0x18($sp)
/* 0CA658 80169C18 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 0CA65C 80169C1C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 0CA660 80169C20 8E220000 */  lw    $v0, ($s1)
/* 0CA664 80169C24 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CA668 80169C28 AFB50028 */  sw    $s5, 0x28($sp)
/* 0CA66C 80169C2C AFB40024 */  sw    $s4, 0x24($sp)
/* 0CA670 80169C30 AFB30020 */  sw    $s3, 0x20($sp)
/* 0CA674 80169C34 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0CA678 80169C38 AFB00014 */  sw    $s0, 0x14($sp)
/* 0CA67C 80169C3C AFA40038 */  sw    $a0, 0x38($sp)
/* 0CA680 80169C40 8C500000 */  lw    $s0, ($v0)
/* 0CA684 80169C44 3C0E800F */  lui   $t6, 0x800f
/* 0CA688 80169C48 00108080 */  sll   $s0, $s0, 2
/* 0CA68C 80169C4C 01D07021 */  addu  $t6, $t6, $s0
/* 0CA690 80169C50 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 0CA694 80169C54 31CF00FF */  andi  $t7, $t6, 0xff
/* 0CA698 80169C58 15E00006 */  bnez  $t7, .L80169C74_ovl3
/* 0CA69C 80169C5C 3C040002 */   lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0CA6A0 80169C60 0C02A5D8 */  jal   func_800A9760
/* 0CA6A4 80169C64 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0CA6A8 80169C68 8E220000 */  lw    $v0, ($s1)
/* 0CA6AC 80169C6C 8C500000 */  lw    $s0, ($v0)
/* 0CA6B0 80169C70 00108080 */  sll   $s0, $s0, 2
.L80169C74_ovl3:
/* 0CA6B4 80169C74 3C188017 */  lui   $t8, %hi(D_8016A144) # $t8, 0x8017
/* 0CA6B8 80169C78 3C01800E */  lui   $at, 0x800e
/* 0CA6BC 80169C7C 00300821 */  addu  $at, $at, $s0
/* 0CA6C0 80169C80 2718A144 */  addiu $t8, %lo(D_8016A144) # addiu $t8, $t8, -0x5ebc
/* 0CA6C4 80169C84 AC38F150 */  sw    $t8, -0xeb0($at)
/* 0CA6C8 80169C88 8C480000 */  lw    $t0, ($v0)
/* 0CA6CC 80169C8C 3C01800E */  lui   $at, 0x800e
/* 0CA6D0 80169C90 3C19800B */  lui   $t9, %hi(func_800B4954) # $t9, 0x800b
/* 0CA6D4 80169C94 00084880 */  sll   $t1, $t0, 2
/* 0CA6D8 80169C98 00290821 */  addu  $at, $at, $t1
/* 0CA6DC 80169C9C 27394954 */  addiu $t9, %lo(func_800B4954) # addiu $t9, $t9, 0x4954
/* 0CA6E0 80169CA0 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0CA6E4 80169CA4 8C4A0000 */  lw    $t2, ($v0)
/* 0CA6E8 80169CA8 3C13800F */  lui   $s3, %hi(D_800E8920) # $s3, 0x800f
/* 0CA6EC 80169CAC 26738920 */  addiu $s3, %lo(D_800E8920) # addiu $s3, $s3, -0x76e0
/* 0CA6F0 80169CB0 000A5880 */  sll   $t3, $t2, 2
/* 0CA6F4 80169CB4 026B6021 */  addu  $t4, $s3, $t3
/* 0CA6F8 80169CB8 AD800000 */  sw    $zero, ($t4)
/* 0CA6FC 80169CBC 8C4D0000 */  lw    $t5, ($v0)
/* 0CA700 80169CC0 3C01800F */  lui   $at, 0x800f
/* 0CA704 80169CC4 3C15800F */  lui   $s5, %hi(D_800E98E0) # $s5, 0x800f
/* 0CA708 80169CC8 000D7080 */  sll   $t6, $t5, 2
/* 0CA70C 80169CCC 002E0821 */  addu  $at, $at, $t6
/* 0CA710 80169CD0 AC20A1A0 */  sw    $zero, -0x5e60($at)
/* 0CA714 80169CD4 8C4F0000 */  lw    $t7, ($v0)
/* 0CA718 80169CD8 26B598E0 */  addiu $s5, %lo(D_800E98E0) # addiu $s5, $s5, -0x6720
/* 0CA71C 80169CDC 000FC080 */  sll   $t8, $t7, 2
/* 0CA720 80169CE0 02B84021 */  addu  $t0, $s5, $t8
/* 0CA724 80169CE4 0C05AEF4 */  jal   func_8016BBD0_ovl3
/* 0CA728 80169CE8 AD000000 */   sw    $zero, ($t0)
/* 0CA72C 80169CEC 0C02CCFD */  jal   func_800B33F4
/* 0CA730 80169CF0 00000000 */   nop   
/* 0CA734 80169CF4 8E390000 */  lw    $t9, ($s1)
/* 0CA738 80169CF8 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 0CA73C 80169CFC 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 0CA740 80169D00 8F220000 */  lw    $v0, ($t9)
/* 0CA744 80169D04 00024880 */  sll   $t1, $v0, 2
/* 0CA748 80169D08 02495021 */  addu  $t2, $s2, $t1
/* 0CA74C 80169D0C 8D450000 */  lw    $a1, ($t2)
/* 0CA750 80169D10 0C03E60A */  jal   func_800F9828
/* 0CA754 80169D14 00402025 */   move  $a0, $v0
/* 0CA758 80169D18 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 0CA75C 80169D1C 44812000 */  mtc1  $at, $f4
/* 0CA760 80169D20 8E220000 */  lw    $v0, ($s1)
/* 0CA764 80169D24 3C01800E */  lui   $at, 0x800e
/* 0CA768 80169D28 46040182 */  mul.s $f6, $f0, $f4
/* 0CA76C 80169D2C 8C4B0000 */  lw    $t3, ($v0)
/* 0CA770 80169D30 3C03800E */  lui   $v1, %hi(gEntitiesNextPosYArray) # $v1, 0x800e
/* 0CA774 80169D34 24632790 */  addiu $v1, %lo(gEntitiesNextPosYArray) # addiu $v1, $v1, 0x2790
/* 0CA778 80169D38 000B6080 */  sll   $t4, $t3, 2
/* 0CA77C 80169D3C 002C0821 */  addu  $at, $at, $t4
/* 0CA780 80169D40 3C14800E */  lui   $s4, %hi(D_800E3210) # $s4, 0x800e
/* 0CA784 80169D44 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0CA788 80169D48 8C500000 */  lw    $s0, ($v0)
/* 0CA78C 80169D4C 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0CA790 80169D50 44815000 */  mtc1  $at, $f10
/* 0CA794 80169D54 00108080 */  sll   $s0, $s0, 2
/* 0CA798 80169D58 02506821 */  addu  $t5, $s2, $s0
/* 0CA79C 80169D5C 8DAE0000 */  lw    $t6, ($t5)
/* 0CA7A0 80169D60 C4680000 */  lwc1  $f8, ($v1)
/* 0CA7A4 80169D64 3C01BE80 */  li    $at, 0xBE800000 # -0.250000
/* 0CA7A8 80169D68 000E7880 */  sll   $t7, $t6, 2
/* 0CA7AC 80169D6C 460A4400 */  add.s $f16, $f8, $f10
/* 0CA7B0 80169D70 006FC021 */  addu  $t8, $v1, $t7
/* 0CA7B4 80169D74 C7120000 */  lwc1  $f18, ($t8)
/* 0CA7B8 80169D78 44813000 */  mtc1  $at, $f6
/* 0CA7BC 80169D7C 26943210 */  addiu $s4, %lo(D_800E3210) # addiu $s4, $s4, 0x3210
/* 0CA7C0 80169D80 46128101 */  sub.s $f4, $f16, $f18
/* 0CA7C4 80169D84 02904021 */  addu  $t0, $s4, $s0
/* 0CA7C8 80169D88 24040003 */  li    $a0, 3
/* 0CA7CC 80169D8C 46062202 */  mul.s $f8, $f4, $f6
/* 0CA7D0 80169D90 0C002DAF */  jal   finish_current_thread
/* 0CA7D4 80169D94 E5080000 */   swc1  $f8, ($t0)
/* 0CA7D8 80169D98 0C02CCFD */  jal   func_800B33F4
/* 0CA7DC 80169D9C 00000000 */   nop   
/* 0CA7E0 80169DA0 00002025 */  move  $a0, $zero
/* 0CA7E4 80169DA4 0C02ED1A */  jal   func_800BB468
/* 0CA7E8 80169DA8 00002825 */   move  $a1, $zero
/* 0CA7EC 80169DAC 8E290000 */  lw    $t1, ($s1)
/* 0CA7F0 80169DB0 8FA20038 */  lw    $v0, 0x38($sp)
/* 0CA7F4 80169DB4 24190001 */  li    $t9, 1
/* 0CA7F8 80169DB8 8D2A0000 */  lw    $t2, ($t1)
/* 0CA7FC 80169DBC 000A5880 */  sll   $t3, $t2, 2
/* 0CA800 80169DC0 02AB6021 */  addu  $t4, $s5, $t3
/* 0CA804 80169DC4 AD990000 */  sw    $t9, ($t4)
/* 0CA808 80169DC8 8C4D0044 */  lw    $t5, 0x44($v0)
/* 0CA80C 80169DCC 35AE0001 */  ori   $t6, $t5, 1
/* 0CA810 80169DD0 0C02CCFD */  jal   func_800B33F4
/* 0CA814 80169DD4 AC4E0044 */   sw    $t6, 0x44($v0)
/* 0CA818 80169DD8 0C03EF87 */  jal   func_800FBE1C
/* 0CA81C 80169DDC 00000000 */   nop   
/* 0CA820 80169DE0 0C03E905 */  jal   func_800FA414
/* 0CA824 80169DE4 24040005 */   li    $a0, 5
/* 0CA828 80169DE8 8E2F0000 */  lw    $t7, ($s1)
/* 0CA82C 80169DEC 3C0A800F */  lui   $t2, 0x800f
/* 0CA830 80169DF0 8DF00000 */  lw    $s0, ($t7)
/* 0CA834 80169DF4 00108080 */  sll   $s0, $s0, 2
/* 0CA838 80169DF8 0250C021 */  addu  $t8, $s2, $s0
/* 0CA83C 80169DFC 8F080000 */  lw    $t0, ($t8)
/* 0CA840 80169E00 00084880 */  sll   $t1, $t0, 2
/* 0CA844 80169E04 01495021 */  addu  $t2, $t2, $t1
/* 0CA848 80169E08 8D4A9FE0 */  lw    $t2, -0x6020($t2)
/* 0CA84C 80169E0C 5540000F */  bnezl $t2, .L80169E4C_ovl3
/* 0CA850 80169E10 240F0002 */   li    $t7, 2
.L80169E14_ovl3:
/* 0CA854 80169E14 0C002DAF */  jal   finish_current_thread
/* 0CA858 80169E18 24040001 */   li    $a0, 1
/* 0CA85C 80169E1C 8E2B0000 */  lw    $t3, ($s1)
/* 0CA860 80169E20 3C0E800F */  lui   $t6, 0x800f
/* 0CA864 80169E24 8D700000 */  lw    $s0, ($t3)
/* 0CA868 80169E28 00108080 */  sll   $s0, $s0, 2
/* 0CA86C 80169E2C 0250C821 */  addu  $t9, $s2, $s0
/* 0CA870 80169E30 8F2C0000 */  lw    $t4, ($t9)
/* 0CA874 80169E34 000C6880 */  sll   $t5, $t4, 2
/* 0CA878 80169E38 01CD7021 */  addu  $t6, $t6, $t5
/* 0CA87C 80169E3C 8DCE9FE0 */  lw    $t6, -0x6020($t6)
/* 0CA880 80169E40 11C0FFF4 */  beqz  $t6, .L80169E14_ovl3
/* 0CA884 80169E44 00000000 */   nop   
/* 0CA888 80169E48 240F0002 */  li    $t7, 2
.L80169E4C_ovl3:
/* 0CA88C 80169E4C 02B0C021 */  addu  $t8, $s5, $s0
/* 0CA890 80169E50 AF0F0000 */  sw    $t7, ($t8)
/* 0CA894 80169E54 8FA80038 */  lw    $t0, 0x38($sp)
/* 0CA898 80169E58 24040003 */  li    $a0, 3
/* 0CA89C 80169E5C 8D090044 */  lw    $t1, 0x44($t0)
/* 0CA8A0 80169E60 392A0001 */  xori  $t2, $t1, 1
/* 0CA8A4 80169E64 0C03E905 */  jal   func_800FA414
/* 0CA8A8 80169E68 AD0A0044 */   sw    $t2, 0x44($t0)
/* 0CA8AC 80169E6C 8E220000 */  lw    $v0, ($s1)
/* 0CA8B0 80169E70 3C05800E */  lui   $a1, %hi(D_800E5F90) # $a1, 0x800e
/* 0CA8B4 80169E74 24A55F90 */  addiu $a1, %lo(D_800E5F90) # addiu $a1, $a1, 0x5f90
/* 0CA8B8 80169E78 8C500000 */  lw    $s0, ($v0)
/* 0CA8BC 80169E7C 3C01800E */  lui   $at, 0x800e
/* 0CA8C0 80169E80 3C06800E */  lui   $a2, %hi(D_800E6BD0) # $a2, 0x800e
/* 0CA8C4 80169E84 00108080 */  sll   $s0, $s0, 2
/* 0CA8C8 80169E88 02505821 */  addu  $t3, $s2, $s0
/* 0CA8CC 80169E8C 8D790000 */  lw    $t9, ($t3)
/* 0CA8D0 80169E90 00300821 */  addu  $at, $at, $s0
/* 0CA8D4 80169E94 24C66BD0 */  addiu $a2, %lo(D_800E6BD0) # addiu $a2, $a2, 0x6bd0
/* 0CA8D8 80169E98 00196080 */  sll   $t4, $t9, 2
/* 0CA8DC 80169E9C 00AC6821 */  addu  $t5, $a1, $t4
/* 0CA8E0 80169EA0 8DA30000 */  lw    $v1, ($t5)
/* 0CA8E4 80169EA4 3C07800E */  lui   $a3, %hi(gEntitiesNextPosYArray) # $a3, 0x800e
/* 0CA8E8 80169EA8 24E72790 */  addiu $a3, %lo(gEntitiesNextPosYArray) # addiu $a3, $a3, 0x2790
/* 0CA8EC 80169EAC AC236150 */  sw    $v1, 0x6150($at)
/* 0CA8F0 80169EB0 8C4E0000 */  lw    $t6, ($v0)
/* 0CA8F4 80169EB4 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 0CA8F8 80169EB8 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CA8FC 80169EBC 000E7880 */  sll   $t7, $t6, 2
/* 0CA900 80169EC0 00AFC021 */  addu  $t8, $a1, $t7
/* 0CA904 80169EC4 AF030000 */  sw    $v1, ($t8)
/* 0CA908 80169EC8 8C500000 */  lw    $s0, ($v0)
/* 0CA90C 80169ECC 2484A980 */  addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CA910 80169ED0 00108080 */  sll   $s0, $s0, 2
/* 0CA914 80169ED4 02504821 */  addu  $t1, $s2, $s0
/* 0CA918 80169ED8 8D2A0000 */  lw    $t2, ($t1)
/* 0CA91C 80169EDC 00300821 */  addu  $at, $at, $s0
/* 0CA920 80169EE0 000A4080 */  sll   $t0, $t2, 2
/* 0CA924 80169EE4 00C85821 */  addu  $t3, $a2, $t0
/* 0CA928 80169EE8 C5600000 */  lwc1  $f0, ($t3)
/* 0CA92C 80169EEC E4206D90 */  swc1  $f0, 0x6d90($at)
/* 0CA930 80169EF0 8C590000 */  lw    $t9, ($v0)
/* 0CA934 80169EF4 00196080 */  sll   $t4, $t9, 2
/* 0CA938 80169EF8 00CC6821 */  addu  $t5, $a2, $t4
/* 0CA93C 80169EFC E5A00000 */  swc1  $f0, ($t5)
/* 0CA940 80169F00 8C500000 */  lw    $s0, ($v0)
/* 0CA944 80169F04 00108080 */  sll   $s0, $s0, 2
/* 0CA948 80169F08 02507021 */  addu  $t6, $s2, $s0
/* 0CA94C 80169F0C 8DCF0000 */  lw    $t7, ($t6)
/* 0CA950 80169F10 00F05021 */  addu  $t2, $a3, $s0
/* 0CA954 80169F14 000FC080 */  sll   $t8, $t7, 2
/* 0CA958 80169F18 00F84821 */  addu  $t1, $a3, $t8
/* 0CA95C 80169F1C C52A0000 */  lwc1  $f10, ($t1)
/* 0CA960 80169F20 0C068CBB */  jal   func_801A32EC_ovl3
/* 0CA964 80169F24 E54A0000 */   swc1  $f10, ($t2)
/* 0CA968 80169F28 8E280000 */  lw    $t0, ($s1)
/* 0CA96C 80169F2C 3C0C800E */  lui   $t4, 0x800e
/* 0CA970 80169F30 3C01C100 */  li    $at, 0xC1000000 # -8.000000
/* 0CA974 80169F34 8D100000 */  lw    $s0, ($t0)
/* 0CA978 80169F38 00001025 */  move  $v0, $zero
/* 0CA97C 80169F3C 00108080 */  sll   $s0, $s0, 2
/* 0CA980 80169F40 02505821 */  addu  $t3, $s2, $s0
/* 0CA984 80169F44 8D790000 */  lw    $t9, ($t3)
/* 0CA988 80169F48 01996021 */  addu  $t4, $t4, $t9
/* 0CA98C 80169F4C 918C7880 */  lbu   $t4, 0x7880($t4)
/* 0CA990 80169F50 318D0001 */  andi  $t5, $t4, 1
/* 0CA994 80169F54 51A00007 */  beql  $t5, $zero, .L80169F74_ovl3
/* 0CA998 80169F58 44819000 */   mtc1  $at, $f18
/* 0CA99C 80169F5C 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0CA9A0 80169F60 44818000 */  mtc1  $at, $f16
/* 0CA9A4 80169F64 02907021 */  addu  $t6, $s4, $s0
/* 0CA9A8 80169F68 10000004 */  b     .L80169F7C_ovl3
/* 0CA9AC 80169F6C E5D00000 */   swc1  $f16, ($t6)
/* 0CA9B0 80169F70 44819000 */  mtc1  $at, $f18
.L80169F74_ovl3:
/* 0CA9B4 80169F74 02907821 */  addu  $t7, $s4, $s0
/* 0CA9B8 80169F78 E5F20000 */  swc1  $f18, ($t7)
.L80169F7C_ovl3:
/* 0CA9BC 80169F7C 2410000A */  li    $s0, 10
/* 0CA9C0 80169F80 8E380000 */  lw    $t8, ($s1)
.L80169F84_ovl3:
/* 0CA9C4 80169F84 24040001 */  li    $a0, 1
/* 0CA9C8 80169F88 8F090000 */  lw    $t1, ($t8)
/* 0CA9CC 80169F8C 00095080 */  sll   $t2, $t1, 2
/* 0CA9D0 80169F90 026A4021 */  addu  $t0, $s3, $t2
/* 0CA9D4 80169F94 AD000000 */  sw    $zero, ($t0)
/* 0CA9D8 80169F98 0C002DAF */  jal   finish_current_thread
/* 0CA9DC 80169F9C AFA20030 */   sw    $v0, 0x30($sp)
/* 0CA9E0 80169FA0 8FA20030 */  lw    $v0, 0x30($sp)
/* 0CA9E4 80169FA4 24420001 */  addiu $v0, $v0, 1
/* 0CA9E8 80169FA8 5450FFF6 */  bnel  $v0, $s0, .L80169F84_ovl3
/* 0CA9EC 80169FAC 8E380000 */   lw    $t8, ($s1)
/* 0CA9F0 80169FB0 8E220000 */  lw    $v0, ($s1)
/* 0CA9F4 80169FB4 3C0B800F */  lui   $t3, 0x800f
/* 0CA9F8 80169FB8 8C500000 */  lw    $s0, ($v0)
/* 0CA9FC 80169FBC 00108080 */  sll   $s0, $s0, 2
/* 0CAA00 80169FC0 01705821 */  addu  $t3, $t3, $s0
/* 0CAA04 80169FC4 8D6BA1A0 */  lw    $t3, -0x5e60($t3)
/* 0CAA08 80169FC8 5560000D */  bnezl $t3, .L8016A000_ovl3
/* 0CAA0C 80169FCC 02907021 */   addu  $t6, $s4, $s0
/* 0CAA10 80169FD0 0C029D9E */  jal   play_sound
/* 0CAA14 80169FD4 240400DB */   li    $a0, 219
/* 0CAA18 80169FD8 8E220000 */  lw    $v0, ($s1)
/* 0CAA1C 80169FDC 3C01800F */  lui   $at, 0x800f
/* 0CAA20 80169FE0 24190001 */  li    $t9, 1
/* 0CAA24 80169FE4 8C4C0000 */  lw    $t4, ($v0)
/* 0CAA28 80169FE8 000C6880 */  sll   $t5, $t4, 2
/* 0CAA2C 80169FEC 002D0821 */  addu  $at, $at, $t5
/* 0CAA30 80169FF0 AC39A1A0 */  sw    $t9, -0x5e60($at)
/* 0CAA34 80169FF4 8C500000 */  lw    $s0, ($v0)
/* 0CAA38 80169FF8 00108080 */  sll   $s0, $s0, 2
/* 0CAA3C 80169FFC 02907021 */  addu  $t6, $s4, $s0
.L8016A000_ovl3:
/* 0CAA40 8016A000 44800000 */  mtc1  $zero, $f0
/* 0CAA44 8016A004 C5CC0000 */  lwc1  $f12, ($t6)
/* 0CAA48 8016A008 3C013D80 */  li    $at, 0x3D800000 # 0.062500
/* 0CAA4C 8016A00C 460C003C */  c.lt.s $f0, $f12
/* 0CAA50 8016A010 00000000 */  nop   
/* 0CAA54 8016A014 45020032 */  bc1fl .L8016A0E0_ovl3
/* 0CAA58 8016A018 0270C821 */   addu  $t9, $s3, $s0
/* 0CAA5C 8016A01C 44812000 */  mtc1  $at, $f4
/* 0CAA60 8016A020 44803000 */  mtc1  $zero, $f6
/* 0CAA64 8016A024 3C01800E */  lui   $at, 0x800e
/* 0CAA68 8016A028 46046082 */  mul.s $f2, $f12, $f4
/* 0CAA6C 8016A02C 4606103C */  c.lt.s $f2, $f6
/* 0CAA70 8016A030 00000000 */  nop   
/* 0CAA74 8016A034 45020008 */  bc1fl .L8016A058_ovl3
/* 0CAA78 8016A038 46001407 */   neg.s $f16, $f2
/* 0CAA7C 8016A03C 46001207 */  neg.s $f8, $f2
/* 0CAA80 8016A040 3C01800E */  lui   $at, 0x800e
/* 0CAA84 8016A044 46004287 */  neg.s $f10, $f8
/* 0CAA88 8016A048 00300821 */  addu  $at, $at, $s0
/* 0CAA8C 8016A04C 10000004 */  b     .L8016A060_ovl3
/* 0CAA90 8016A050 E42A3750 */   swc1  $f10, 0x3750($at)
/* 0CAA94 8016A054 46001407 */  neg.s $f16, $f2
.L8016A058_ovl3:
/* 0CAA98 8016A058 00300821 */  addu  $at, $at, $s0
/* 0CAA9C 8016A05C E4303750 */  swc1  $f16, 0x3750($at)
.L8016A060_ovl3:
/* 0CAAA0 8016A060 8C500000 */  lw    $s0, ($v0)
/* 0CAAA4 8016A064 00108080 */  sll   $s0, $s0, 2
/* 0CAAA8 8016A068 02907821 */  addu  $t7, $s4, $s0
/* 0CAAAC 8016A06C C5F20000 */  lwc1  $f18, ($t7)
/* 0CAAB0 8016A070 02B0C021 */  addu  $t8, $s5, $s0
/* 0CAAB4 8016A074 4612003C */  c.lt.s $f0, $f18
/* 0CAAB8 8016A078 00000000 */  nop   
/* 0CAABC 8016A07C 45020018 */  bc1fl .L8016A0E0_ovl3
/* 0CAAC0 8016A080 0270C821 */   addu  $t9, $s3, $s0
/* 0CAAC4 8016A084 8F090000 */  lw    $t1, ($t8)
/* 0CAAC8 8016A088 29210003 */  slti  $at, $t1, 3
/* 0CAACC 8016A08C 10200013 */  beqz  $at, .L8016A0DC_ovl3
/* 0CAAD0 8016A090 02705021 */   addu  $t2, $s3, $s0
.L8016A094_ovl3:
/* 0CAAD4 8016A094 AD400000 */  sw    $zero, ($t2)
/* 0CAAD8 8016A098 0C002DAF */  jal   finish_current_thread
/* 0CAADC 8016A09C 24040001 */   li    $a0, 1
/* 0CAAE0 8016A0A0 8E220000 */  lw    $v0, ($s1)
/* 0CAAE4 8016A0A4 44800000 */  mtc1  $zero, $f0
/* 0CAAE8 8016A0A8 8C500000 */  lw    $s0, ($v0)
/* 0CAAEC 8016A0AC 00108080 */  sll   $s0, $s0, 2
/* 0CAAF0 8016A0B0 02904021 */  addu  $t0, $s4, $s0
/* 0CAAF4 8016A0B4 C5040000 */  lwc1  $f4, ($t0)
/* 0CAAF8 8016A0B8 02B05821 */  addu  $t3, $s5, $s0
/* 0CAAFC 8016A0BC 4604003C */  c.lt.s $f0, $f4
/* 0CAB00 8016A0C0 00000000 */  nop   
/* 0CAB04 8016A0C4 45020006 */  bc1fl .L8016A0E0_ovl3
/* 0CAB08 8016A0C8 0270C821 */   addu  $t9, $s3, $s0
/* 0CAB0C 8016A0CC 8D6C0000 */  lw    $t4, ($t3)
/* 0CAB10 8016A0D0 29810003 */  slti  $at, $t4, 3
/* 0CAB14 8016A0D4 5420FFEF */  bnezl $at, .L8016A094_ovl3
/* 0CAB18 8016A0D8 02705021 */   addu  $t2, $s3, $s0
.L8016A0DC_ovl3:
/* 0CAB1C 8016A0DC 0270C821 */  addu  $t9, $s3, $s0
.L8016A0E0_ovl3:
/* 0CAB20 8016A0E0 AF200000 */  sw    $zero, ($t9)
/* 0CAB24 8016A0E4 8C4E0000 */  lw    $t6, ($v0)
/* 0CAB28 8016A0E8 3C0D800B */  lui   $t5, %hi(D_800B531C) # $t5, 0x800b
/* 0CAB2C 8016A0EC 3C01800E */  lui   $at, 0x800e
/* 0CAB30 8016A0F0 000E7880 */  sll   $t7, $t6, 2
/* 0CAB34 8016A0F4 002F0821 */  addu  $at, $at, $t7
/* 0CAB38 8016A0F8 25AD531C */  addiu $t5, %lo(D_800B531C) # addiu $t5, $t5, 0x531c
/* 0CAB3C 8016A0FC 0C02CCFD */  jal   func_800B33F4
/* 0CAB40 8016A100 AC2DEF90 */   sw    $t5, -0x1070($at)
/* 0CAB44 8016A104 8E290000 */  lw    $t1, ($s1)
/* 0CAB48 8016A108 24180003 */  li    $t8, 3
/* 0CAB4C 8016A10C 8D2A0000 */  lw    $t2, ($t1)
/* 0CAB50 8016A110 000A4080 */  sll   $t0, $t2, 2
/* 0CAB54 8016A114 02A85821 */  addu  $t3, $s5, $t0
/* 0CAB58 8016A118 0C02BE85 */  jal   func_800AFA14
/* 0CAB5C 8016A11C AD780000 */   sw    $t8, ($t3)
/* 0CAB60 8016A120 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0CAB64 8016A124 8FB00014 */  lw    $s0, 0x14($sp)
/* 0CAB68 8016A128 8FB10018 */  lw    $s1, 0x18($sp)
/* 0CAB6C 8016A12C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0CAB70 8016A130 8FB30020 */  lw    $s3, 0x20($sp)
/* 0CAB74 8016A134 8FB40024 */  lw    $s4, 0x24($sp)
/* 0CAB78 8016A138 8FB50028 */  lw    $s5, 0x28($sp)
/* 0CAB7C 8016A13C 03E00008 */  jr    $ra
/* 0CAB80 8016A140 27BD0038 */   addiu $sp, $sp, 0x38

.type func_80169C10_ovl3, @function
.size func_80169C10_ovl3, . - func_80169C10_ovl3

glabel func_8016A144_ovl3
/* 0CAB84 8016A144 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CAB88 8016A148 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CAB8C 8016A14C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CAB90 8016A150 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CAB94 8016A154 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CAB98 8016A158 8C430000 */  lw    $v1, ($v0)
/* 0CAB9C 8016A15C 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 0CABA0 8016A160 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 0CABA4 8016A164 00031880 */  sll   $v1, $v1, 2
/* 0CABA8 8016A168 00C37021 */  addu  $t6, $a2, $v1
/* 0CABAC 8016A16C 8DCF0000 */  lw    $t7, ($t6)
/* 0CABB0 8016A170 29E10002 */  slti  $at, $t7, 2
/* 0CABB4 8016A174 14200008 */  bnez  $at, .L8016A198_ovl3
/* 0CABB8 8016A178 3C01800E */   lui   $at, 0x800e
/* 0CABBC 8016A17C 00230821 */  addu  $at, $at, $v1
/* 0CABC0 8016A180 C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0CABC4 8016A184 3C01800E */  lui   $at, 0x800e
/* 0CABC8 8016A188 00230821 */  addu  $at, $at, $v1
/* 0CABCC 8016A18C E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0CABD0 8016A190 8C430000 */  lw    $v1, ($v0)
/* 0CABD4 8016A194 00031880 */  sll   $v1, $v1, 2
.L8016A198_ovl3:
/* 0CABD8 8016A198 3C01800F */  lui   $at, 0x800f
/* 0CABDC 8016A19C 00230821 */  addu  $at, $at, $v1
/* 0CABE0 8016A1A0 AC208920 */  sw    $zero, -0x76e0($at)
/* 0CABE4 8016A1A4 8C430000 */  lw    $v1, ($v0)
/* 0CABE8 8016A1A8 24010001 */  li    $at, 1
/* 0CABEC 8016A1AC 00031880 */  sll   $v1, $v1, 2
/* 0CABF0 8016A1B0 00C32821 */  addu  $a1, $a2, $v1
/* 0CABF4 8016A1B4 8CA40000 */  lw    $a0, ($a1)
/* 0CABF8 8016A1B8 1080004D */  beqz  $a0, .L8016A2F0_ovl3
/* 0CABFC 8016A1BC 00000000 */   nop   
/* 0CAC00 8016A1C0 1081004B */  beq   $a0, $at, .L8016A2F0_ovl3
/* 0CAC04 8016A1C4 24010002 */   li    $at, 2
/* 0CAC08 8016A1C8 1081000B */  beq   $a0, $at, .L8016A1F8_ovl3
/* 0CAC0C 8016A1CC 3C18800E */   lui   $t8, 0x800e
/* 0CAC10 8016A1D0 24010003 */  li    $at, 3
/* 0CAC14 8016A1D4 14810046 */  bne   $a0, $at, .L8016A2F0_ovl3
/* 0CAC18 8016A1D8 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
/* 0CAC1C 8016A1DC 44816000 */  mtc1  $at, $f12
/* 0CAC20 8016A1E0 0C02EFF8 */  jal   change_kirby_hp
/* 0CAC24 8016A1E4 00000000 */   nop   
/* 0CAC28 8016A1E8 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CAC2C 8016A1EC 24040001 */   li    $a0, 1
/* 0CAC30 8016A1F0 1000003F */  b     .L8016A2F0_ovl3
/* 0CAC34 8016A1F4 00000000 */   nop   
.L8016A1F8_ovl3:
/* 0CAC38 8016A1F8 0303C021 */  addu  $t8, $t8, $v1
/* 0CAC3C 8016A1FC 8F186310 */  lw    $t8, 0x6310($t8)
/* 0CAC40 8016A200 24190003 */  li    $t9, 3
/* 0CAC44 8016A204 13000003 */  beqz  $t8, .L8016A214_ovl3
/* 0CAC48 8016A208 00000000 */   nop   
/* 0CAC4C 8016A20C 10000038 */  b     .L8016A2F0_ovl3
/* 0CAC50 8016A210 ACB90000 */   sw    $t9, ($a1)
.L8016A214_ovl3:
/* 0CAC54 8016A214 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CAC58 8016A218 0C068CEE */  jal   func_801A33B8_ovl3
/* 0CAC5C 8016A21C 2484A980 */   addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CAC60 8016A220 3C088013 */  lui   $t0, %hi(D_8012BCA0) # $t0, 0x8013
/* 0CAC64 8016A224 8D08BCA0 */  lw    $t0, %lo(D_8012BCA0)($t0)
/* 0CAC68 8016A228 3C06800F */  lui   $a2, %hi(D_800E98E0) # $a2, 0x800f
/* 0CAC6C 8016A22C 24C698E0 */  addiu $a2, %lo(D_800E98E0) # addiu $a2, $a2, -0x6720
/* 0CAC70 8016A230 00084CC2 */  srl   $t1, $t0, 0x13
/* 0CAC74 8016A234 312A0FFF */  andi  $t2, $t1, 0xfff
/* 0CAC78 8016A238 1140002D */  beqz  $t2, .L8016A2F0_ovl3
/* 0CAC7C 8016A23C 3C028005 */   lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CAC80 8016A240 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CAC84 8016A244 240B0003 */  li    $t3, 3
/* 0CAC88 8016A248 44803000 */  mtc1  $zero, $f6
/* 0CAC8C 8016A24C 8C4C0000 */  lw    $t4, ($v0)
/* 0CAC90 8016A250 3C04800E */  lui   $a0, %hi(D_800E3750) # $a0, 0x800e
/* 0CAC94 8016A254 24843750 */  addiu $a0, %lo(D_800E3750) # addiu $a0, $a0, 0x3750
/* 0CAC98 8016A258 000C6880 */  sll   $t5, $t4, 2
/* 0CAC9C 8016A25C 00CD7021 */  addu  $t6, $a2, $t5
/* 0CACA0 8016A260 ADCB0000 */  sw    $t3, ($t6)
/* 0CACA4 8016A264 8C4F0000 */  lw    $t7, ($v0)
/* 0CACA8 8016A268 3C01800E */  lui   $at, 0x800e
/* 0CACAC 8016A26C 3C0B800F */  lui   $t3, 0x800f
/* 0CACB0 8016A270 000FC080 */  sll   $t8, $t7, 2
/* 0CACB4 8016A274 0098C821 */  addu  $t9, $a0, $t8
/* 0CACB8 8016A278 E7260000 */  swc1  $f6, ($t9)
/* 0CACBC 8016A27C 8C430000 */  lw    $v1, ($v0)
/* 0CACC0 8016A280 00031880 */  sll   $v1, $v1, 2
/* 0CACC4 8016A284 00834021 */  addu  $t0, $a0, $v1
/* 0CACC8 8016A288 C5080000 */  lwc1  $f8, ($t0)
/* 0CACCC 8016A28C 00230821 */  addu  $at, $at, $v1
/* 0CACD0 8016A290 E4283210 */  swc1  $f8, 0x3210($at)
/* 0CACD4 8016A294 8C490000 */  lw    $t1, ($v0)
/* 0CACD8 8016A298 3C018019 */  lui   $at, %hi(D_80197200) # $at, 0x8019
/* 0CACDC 8016A29C C42A7200 */  lwc1  $f10, %lo(D_80197200)($at)
/* 0CACE0 8016A2A0 3C01800E */  lui   $at, 0x800e
/* 0CACE4 8016A2A4 00095080 */  sll   $t2, $t1, 2
/* 0CACE8 8016A2A8 002A0821 */  addu  $at, $at, $t2
/* 0CACEC 8016A2AC E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 0CACF0 8016A2B0 8C4C0000 */  lw    $t4, ($v0)
/* 0CACF4 8016A2B4 000C6880 */  sll   $t5, $t4, 2
/* 0CACF8 8016A2B8 016D5821 */  addu  $t3, $t3, $t5
/* 0CACFC 8016A2BC 8D6BA1A0 */  lw    $t3, -0x5e60($t3)
/* 0CAD00 8016A2C0 1560000B */  bnez  $t3, .L8016A2F0_ovl3
/* 0CAD04 8016A2C4 00000000 */   nop   
/* 0CAD08 8016A2C8 0C029D9E */  jal   play_sound
/* 0CAD0C 8016A2CC 240400DB */   li    $a0, 219
/* 0CAD10 8016A2D0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0CAD14 8016A2D4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0CAD18 8016A2D8 3C01800F */  lui   $at, 0x800f
/* 0CAD1C 8016A2DC 240E0001 */  li    $t6, 1
/* 0CAD20 8016A2E0 8DF80000 */  lw    $t8, ($t7)
/* 0CAD24 8016A2E4 0018C880 */  sll   $t9, $t8, 2
/* 0CAD28 8016A2E8 00390821 */  addu  $at, $at, $t9
/* 0CAD2C 8016A2EC AC2EA1A0 */  sw    $t6, -0x5e60($at)
.L8016A2F0_ovl3:
/* 0CAD30 8016A2F0 0C05A5BC */  jal   func_801696F0_ovl3
/* 0CAD34 8016A2F4 8FA40018 */   lw    $a0, 0x18($sp)
/* 0CAD38 8016A2F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CAD3C 8016A2FC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CAD40 8016A300 03E00008 */  jr    $ra
/* 0CAD44 8016A304 00000000 */   nop   

.type func_8016A144_ovl3, @function
.size func_8016A144_ovl3, . - func_8016A144_ovl3

glabel func_8016A308_ovl3
/* 0CAD48 8016A308 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0CAD4C 8016A30C AFB6003C */  sw    $s6, 0x3c($sp)
/* 0CAD50 8016A310 3C168005 */  lui   $s6, %hi(D_8004A7C4) # $s6, 0x8005
/* 0CAD54 8016A314 26D6A7C4 */  addiu $s6, %lo(D_8004A7C4) # addiu $s6, $s6, -0x583c
/* 0CAD58 8016A318 AFB00024 */  sw    $s0, 0x24($sp)
/* 0CAD5C 8016A31C 8ED00000 */  lw    $s0, ($s6)
/* 0CAD60 8016A320 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0CAD64 8016A324 AFB70040 */  sw    $s7, 0x40($sp)
/* 0CAD68 8016A328 AFB50038 */  sw    $s5, 0x38($sp)
/* 0CAD6C 8016A32C AFB40034 */  sw    $s4, 0x34($sp)
/* 0CAD70 8016A330 AFB30030 */  sw    $s3, 0x30($sp)
/* 0CAD74 8016A334 AFB2002C */  sw    $s2, 0x2c($sp)
/* 0CAD78 8016A338 AFB10028 */  sw    $s1, 0x28($sp)
/* 0CAD7C 8016A33C F7B60018 */  sdc1  $f22, 0x18($sp)
/* 0CAD80 8016A340 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 0CAD84 8016A344 AFA40078 */  sw    $a0, 0x78($sp)
/* 0CAD88 8016A348 8E060000 */  lw    $a2, ($s0)
/* 0CAD8C 8016A34C 3C0E800F */  lui   $t6, 0x800f
/* 0CAD90 8016A350 00063080 */  sll   $a2, $a2, 2
/* 0CAD94 8016A354 01C67021 */  addu  $t6, $t6, $a2
/* 0CAD98 8016A358 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 0CAD9C 8016A35C 31CF00FF */  andi  $t7, $t6, 0xff
/* 0CADA0 8016A360 15E00006 */  bnez  $t7, .L8016A37C_ovl3
/* 0CADA4 8016A364 3C040002 */   lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0CADA8 8016A368 0C02A5D8 */  jal   func_800A9760
/* 0CADAC 8016A36C 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0CADB0 8016A370 8ED00000 */  lw    $s0, ($s6)
/* 0CADB4 8016A374 8E060000 */  lw    $a2, ($s0)
/* 0CADB8 8016A378 00063080 */  sll   $a2, $a2, 2
.L8016A37C_ovl3:
/* 0CADBC 8016A37C 3C188017 */  lui   $t8, %hi(D_8016A934) # $t8, 0x8017
/* 0CADC0 8016A380 3C01800E */  lui   $at, 0x800e
/* 0CADC4 8016A384 00260821 */  addu  $at, $at, $a2
/* 0CADC8 8016A388 2718A934 */  addiu $t8, %lo(D_8016A934) # addiu $t8, $t8, -0x56cc
/* 0CADCC 8016A38C AC38F150 */  sw    $t8, -0xeb0($at)
/* 0CADD0 8016A390 8E080000 */  lw    $t0, ($s0)
/* 0CADD4 8016A394 3C01800E */  lui   $at, 0x800e
/* 0CADD8 8016A398 3C19800B */  lui   $t9, %hi(func_800B4954) # $t9, 0x800b
/* 0CADDC 8016A39C 00084880 */  sll   $t1, $t0, 2
/* 0CADE0 8016A3A0 00290821 */  addu  $at, $at, $t1
/* 0CADE4 8016A3A4 27394954 */  addiu $t9, %lo(func_800B4954) # addiu $t9, $t9, 0x4954
/* 0CADE8 8016A3A8 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0CADEC 8016A3AC 8E0B0000 */  lw    $t3, ($s0)
/* 0CADF0 8016A3B0 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 0CADF4 8016A3B4 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 0CADF8 8016A3B8 000B6080 */  sll   $t4, $t3, 2
/* 0CADFC 8016A3BC 022C6821 */  addu  $t5, $s1, $t4
/* 0CAE00 8016A3C0 240A0001 */  li    $t2, 1
/* 0CAE04 8016A3C4 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CAE08 8016A3C8 ADAA0000 */  sw    $t2, ($t5)
/* 0CAE0C 8016A3CC 0C068CBB */  jal   func_801A32EC_ovl3
/* 0CAE10 8016A3D0 2484A980 */   addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CAE14 8016A3D4 8ECE0000 */  lw    $t6, ($s6)
/* 0CAE18 8016A3D8 3C0F800E */  lui   $t7, 0x800e
/* 0CAE1C 8016A3DC 3C01800E */  lui   $at, 0x800e
/* 0CAE20 8016A3E0 8DC60000 */  lw    $a2, ($t6)
/* 0CAE24 8016A3E4 44802000 */  mtc1  $zero, $f4
/* 0CAE28 8016A3E8 3C17800F */  lui   $s7, %hi(D_800E98E0) # $s7, 0x800f
/* 0CAE2C 8016A3EC 00063080 */  sll   $a2, $a2, 2
/* 0CAE30 8016A3F0 01E67821 */  addu  $t7, $t7, $a2
/* 0CAE34 8016A3F4 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0CAE38 8016A3F8 26F798E0 */  addiu $s7, %lo(D_800E98E0) # addiu $s7, $s7, -0x6720
/* 0CAE3C 8016A3FC 02E66821 */  addu  $t5, $s7, $a2
/* 0CAE40 8016A400 000FC080 */  sll   $t8, $t7, 2
/* 0CAE44 8016A404 00380821 */  addu  $at, $at, $t8
/* 0CAE48 8016A408 C42064D0 */  lwc1  $f0, 0x64d0($at)
/* 0CAE4C 8016A40C 4604003C */  c.lt.s $f0, $f4
/* 0CAE50 8016A410 00000000 */  nop   
/* 0CAE54 8016A414 45020007 */  bc1fl .L8016A434_ovl3
/* 0CAE58 8016A418 4600028D */   trunc.w.s $f10, $f0
/* 0CAE5C 8016A41C 46000187 */  neg.s $f6, $f0
/* 0CAE60 8016A420 4600320D */  trunc.w.s $f8, $f6
/* 0CAE64 8016A424 44194000 */  mfc1  $t9, $f8
/* 0CAE68 8016A428 10000005 */  b     .L8016A440_ovl3
/* 0CAE6C 8016A42C AFB90064 */   sw    $t9, 0x64($sp)
/* 0CAE70 8016A430 4600028D */  trunc.w.s $f10, $f0
.L8016A434_ovl3:
/* 0CAE74 8016A434 440B5000 */  mfc1  $t3, $f10
/* 0CAE78 8016A438 00000000 */  nop   
/* 0CAE7C 8016A43C AFAB0064 */  sw    $t3, 0x64($sp)
.L8016A440_ovl3:
/* 0CAE80 8016A440 8FAC0064 */  lw    $t4, 0x64($sp)
/* 0CAE84 8016A444 29810006 */  slti  $at, $t4, 6
/* 0CAE88 8016A448 14200002 */  bnez  $at, .L8016A454_ovl3
/* 0CAE8C 8016A44C 240A0005 */   li    $t2, 5
/* 0CAE90 8016A450 AFAA0064 */  sw    $t2, 0x64($sp)
.L8016A454_ovl3:
/* 0CAE94 8016A454 0C05AEF4 */  jal   func_8016BBD0_ovl3
/* 0CAE98 8016A458 ADA00000 */   sw    $zero, ($t5)
/* 0CAE9C 8016A45C 0C02CCFD */  jal   func_800B33F4
/* 0CAEA0 8016A460 00000000 */   nop   
/* 0CAEA4 8016A464 0C03EF87 */  jal   func_800FBE1C
/* 0CAEA8 8016A468 00000000 */   nop   
/* 0CAEAC 8016A46C 0C03E905 */  jal   func_800FA414
/* 0CAEB0 8016A470 24040005 */   li    $a0, 5
/* 0CAEB4 8016A474 8ED00000 */  lw    $s0, ($s6)
/* 0CAEB8 8016A478 3C14800E */  lui   $s4, %hi(gEntitiesAngleXArray) # $s4, 0x800e
/* 0CAEBC 8016A47C 26944010 */  addiu $s4, %lo(gEntitiesAngleXArray) # addiu $s4, $s4, 0x4010
/* 0CAEC0 8016A480 8E060000 */  lw    $a2, ($s0)
/* 0CAEC4 8016A484 3C12800F */  lui   $s2, %hi(D_800EAA60) # $s2, 0x800f
/* 0CAEC8 8016A488 2652AA60 */  addiu $s2, %lo(D_800EAA60) # addiu $s2, $s2, -0x55a0
/* 0CAECC 8016A48C 00063080 */  sll   $a2, $a2, 2
/* 0CAED0 8016A490 02867021 */  addu  $t6, $s4, $a2
/* 0CAED4 8016A494 C5C00000 */  lwc1  $f0, ($t6)
/* 0CAED8 8016A498 02467821 */  addu  $t7, $s2, $a2
/* 0CAEDC 8016A49C 3C01800F */  lui   $at, 0x800f
/* 0CAEE0 8016A4A0 E5E00000 */  swc1  $f0, ($t7)
/* 0CAEE4 8016A4A4 8E180000 */  lw    $t8, ($s0)
/* 0CAEE8 8016A4A8 3C15800E */  lui   $s5, %hi(gEntitiesScaleYArray) # $s5, 0x800e
/* 0CAEEC 8016A4AC 26B54710 */  addiu $s5, %lo(gEntitiesScaleYArray) # addiu $s5, $s5, 0x4710
/* 0CAEF0 8016A4B0 00184080 */  sll   $t0, $t8, 2
/* 0CAEF4 8016A4B4 00280821 */  addu  $at, $at, $t0
/* 0CAEF8 8016A4B8 E420A6E0 */  swc1  $f0, -0x5920($at)
/* 0CAEFC 8016A4BC 8E060000 */  lw    $a2, ($s0)
/* 0CAF00 8016A4C0 3C13800F */  lui   $s3, %hi(D_800EAC20) # $s3, 0x800f
/* 0CAF04 8016A4C4 2673AC20 */  addiu $s3, %lo(D_800EAC20) # addiu $s3, $s3, -0x53e0
/* 0CAF08 8016A4C8 00063080 */  sll   $a2, $a2, 2
/* 0CAF0C 8016A4CC 02A6C821 */  addu  $t9, $s5, $a2
/* 0CAF10 8016A4D0 C7200000 */  lwc1  $f0, ($t9)
/* 0CAF14 8016A4D4 02664821 */  addu  $t1, $s3, $a2
/* 0CAF18 8016A4D8 3C01800F */  lui   $at, 0x800f
/* 0CAF1C 8016A4DC E5200000 */  swc1  $f0, ($t1)
/* 0CAF20 8016A4E0 8E0B0000 */  lw    $t3, ($s0)
/* 0CAF24 8016A4E4 00002025 */  move  $a0, $zero
/* 0CAF28 8016A4E8 00002825 */  move  $a1, $zero
/* 0CAF2C 8016A4EC 000B6080 */  sll   $t4, $t3, 2
/* 0CAF30 8016A4F0 002C0821 */  addu  $at, $at, $t4
/* 0CAF34 8016A4F4 0C02ED1A */  jal   func_800BB468
/* 0CAF38 8016A4F8 E420A8A0 */   swc1  $f0, -0x5760($at)
/* 0CAF3C 8016A4FC 8ECD0000 */  lw    $t5, ($s6)
/* 0CAF40 8016A500 240A0001 */  li    $t2, 1
/* 0CAF44 8016A504 8DAE0000 */  lw    $t6, ($t5)
/* 0CAF48 8016A508 000E7880 */  sll   $t7, $t6, 2
/* 0CAF4C 8016A50C 022FC021 */  addu  $t8, $s1, $t7
/* 0CAF50 8016A510 0C054E86 */  jal   func_80153A18_ovl3
/* 0CAF54 8016A514 AF0A0000 */   sw    $t2, ($t8)
/* 0CAF58 8016A518 8EC80000 */  lw    $t0, ($s6)
/* 0CAF5C 8016A51C 3C05800E */  lui   $a1, 0x800e
/* 0CAF60 8016A520 3C048013 */  lui   $a0, %hi(D_8012BCAC) # $a0, 0x8013
/* 0CAF64 8016A524 8D190000 */  lw    $t9, ($t0)
/* 0CAF68 8016A528 8C84BCAC */  lw    $a0, %lo(D_8012BCAC)($a0)
/* 0CAF6C 8016A52C 00194880 */  sll   $t1, $t9, 2
/* 0CAF70 8016A530 00A92821 */  addu  $a1, $a1, $t1
/* 0CAF74 8016A534 0C03E209 */  jal   func_800F8824
/* 0CAF78 8016A538 8CA517D0 */   lw    $a1, 0x17d0($a1)
/* 0CAF7C 8016A53C 8ED00000 */  lw    $s0, ($s6)
/* 0CAF80 8016A540 3C03800F */  lui   $v1, %hi(D_800EB160) # $v1, 0x800f
/* 0CAF84 8016A544 46000407 */  neg.s $f16, $f0
/* 0CAF88 8016A548 8E0B0000 */  lw    $t3, ($s0)
/* 0CAF8C 8016A54C 2463B160 */  addiu $v1, %lo(D_800EB160) # addiu $v1, $v1, -0x4ea0
/* 0CAF90 8016A550 3C018019 */  lui   $at, %hi(D_80197204) # $at, 0x8019
/* 0CAF94 8016A554 000B6080 */  sll   $t4, $t3, 2
/* 0CAF98 8016A558 C42C7204 */  lwc1  $f12, %lo(D_80197204)($at)
/* 0CAF9C 8016A55C 006C6821 */  addu  $t5, $v1, $t4
/* 0CAFA0 8016A560 E5B00000 */  swc1  $f16, ($t5)
/* 0CAFA4 8016A564 8E060000 */  lw    $a2, ($s0)
/* 0CAFA8 8016A568 3C0A8019 */  lui   $t2, %hi(D_80196954) # $t2, 0x8019
/* 0CAFAC 8016A56C 254A6954 */  addiu $t2, %lo(D_80196954) # addiu $t2, $t2, 0x6954
/* 0CAFB0 8016A570 00063080 */  sll   $a2, $a2, 2
/* 0CAFB4 8016A574 00661021 */  addu  $v0, $v1, $a2
/* 0CAFB8 8016A578 C4420000 */  lwc1  $f2, ($v0)
/* 0CAFBC 8016A57C 00008825 */  move  $s1, $zero
/* 0CAFC0 8016A580 4602603C */  c.lt.s $f12, $f2
/* 0CAFC4 8016A584 00000000 */  nop   
/* 0CAFC8 8016A588 4500000C */  bc1f  .L8016A5BC_ovl3
/* 0CAFCC 8016A58C 3C018019 */   lui   $at, %hi(D_80197208) # $at, 0x8019
/* 0CAFD0 8016A590 C4207208 */  lwc1  $f0, %lo(D_80197208)($at)
/* 0CAFD4 8016A594 46001481 */  sub.s $f18, $f2, $f0
.L8016A598_ovl3:
/* 0CAFD8 8016A598 E4520000 */  swc1  $f18, ($v0)
/* 0CAFDC 8016A59C 8E060000 */  lw    $a2, ($s0)
/* 0CAFE0 8016A5A0 00063080 */  sll   $a2, $a2, 2
/* 0CAFE4 8016A5A4 00661021 */  addu  $v0, $v1, $a2
/* 0CAFE8 8016A5A8 C4420000 */  lwc1  $f2, ($v0)
/* 0CAFEC 8016A5AC 4602603C */  c.lt.s $f12, $f2
/* 0CAFF0 8016A5B0 00000000 */  nop   
/* 0CAFF4 8016A5B4 4503FFF8 */  bc1tl .L8016A598_ovl3
/* 0CAFF8 8016A5B8 46001481 */   sub.s $f18, $f2, $f0
.L8016A5BC_ovl3:
/* 0CAFFC 8016A5BC 3C018019 */  lui   $at, %hi(D_8019720C) # $at, 0x8019
/* 0CB000 8016A5C0 C420720C */  lwc1  $f0, %lo(D_8019720C)($at)
/* 0CB004 8016A5C4 3C018019 */  lui   $at, %hi(D_80197210) # $at, 0x8019
/* 0CB008 8016A5C8 C42C7210 */  lwc1  $f12, %lo(D_80197210)($at)
/* 0CB00C 8016A5CC 3C01800F */  lui   $at, 0x800f
/* 0CB010 8016A5D0 460C103C */  c.lt.s $f2, $f12
/* 0CB014 8016A5D4 00000000 */  nop   
/* 0CB018 8016A5D8 4502000C */  bc1fl .L8016A60C_ovl3
/* 0CB01C 8016A5DC 8FAE0064 */   lw    $t6, 0x64($sp)
/* 0CB020 8016A5E0 46001100 */  add.s $f4, $f2, $f0
.L8016A5E4_ovl3:
/* 0CB024 8016A5E4 E4440000 */  swc1  $f4, ($v0)
/* 0CB028 8016A5E8 8E060000 */  lw    $a2, ($s0)
/* 0CB02C 8016A5EC 00063080 */  sll   $a2, $a2, 2
/* 0CB030 8016A5F0 00661021 */  addu  $v0, $v1, $a2
/* 0CB034 8016A5F4 C4420000 */  lwc1  $f2, ($v0)
/* 0CB038 8016A5F8 460C103C */  c.lt.s $f2, $f12
/* 0CB03C 8016A5FC 00000000 */  nop   
/* 0CB040 8016A600 4503FFF8 */  bc1tl .L8016A5E4_ovl3
/* 0CB044 8016A604 46001100 */   add.s $f4, $f2, $f0
/* 0CB048 8016A608 8FAE0064 */  lw    $t6, 0x64($sp)
.L8016A60C_ovl3:
/* 0CB04C 8016A60C 00260821 */  addu  $at, $at, $a2
/* 0CB050 8016A610 C426A8A0 */  lwc1  $f6, -0x5760($at)
/* 0CB054 8016A614 000E7880 */  sll   $t7, $t6, 2
/* 0CB058 8016A618 01EA2821 */  addu  $a1, $t7, $t2
/* 0CB05C 8016A61C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CB060 8016A620 C4A00000 */  lwc1  $f0, ($a1)
/* 0CB064 8016A624 44814000 */  mtc1  $at, $f8
/* 0CB068 8016A628 AFAF0054 */  sw    $t7, 0x54($sp)
/* 0CB06C 8016A62C 46001503 */  div.s $f20, $f2, $f0
/* 0CB070 8016A630 46080281 */  sub.s $f10, $f0, $f8
/* 0CB074 8016A634 4600540D */  trunc.w.s $f16, $f10
/* 0CB078 8016A638 44088000 */  mfc1  $t0, $f16
/* 0CB07C 8016A63C 00000000 */  nop   
/* 0CB080 8016A640 19000031 */  blez  $t0, .L8016A708_ovl3
/* 0CB084 8016A644 46003583 */   div.s $f22, $f6, $f0
/* 0CB088 8016A648 8E190000 */  lw    $t9, ($s0)
.L8016A64C_ovl3:
/* 0CB08C 8016A64C 24040001 */  li    $a0, 1
/* 0CB090 8016A650 00194880 */  sll   $t1, $t9, 2
/* 0CB094 8016A654 02491021 */  addu  $v0, $s2, $t1
/* 0CB098 8016A658 C4520000 */  lwc1  $f18, ($v0)
/* 0CB09C 8016A65C 46149100 */  add.s $f4, $f18, $f20
/* 0CB0A0 8016A660 E4440000 */  swc1  $f4, ($v0)
/* 0CB0A4 8016A664 8E060000 */  lw    $a2, ($s0)
/* 0CB0A8 8016A668 00063080 */  sll   $a2, $a2, 2
/* 0CB0AC 8016A66C 02465821 */  addu  $t3, $s2, $a2
/* 0CB0B0 8016A670 C5660000 */  lwc1  $f6, ($t3)
/* 0CB0B4 8016A674 02866021 */  addu  $t4, $s4, $a2
/* 0CB0B8 8016A678 E5860000 */  swc1  $f6, ($t4)
/* 0CB0BC 8016A67C 8E0D0000 */  lw    $t5, ($s0)
/* 0CB0C0 8016A680 000D7080 */  sll   $t6, $t5, 2
/* 0CB0C4 8016A684 026E1821 */  addu  $v1, $s3, $t6
/* 0CB0C8 8016A688 C4680000 */  lwc1  $f8, ($v1)
/* 0CB0CC 8016A68C 46164281 */  sub.s $f10, $f8, $f22
/* 0CB0D0 8016A690 E46A0000 */  swc1  $f10, ($v1)
/* 0CB0D4 8016A694 8E060000 */  lw    $a2, ($s0)
/* 0CB0D8 8016A698 00063080 */  sll   $a2, $a2, 2
/* 0CB0DC 8016A69C 02667821 */  addu  $t7, $s3, $a2
/* 0CB0E0 8016A6A0 C5F00000 */  lwc1  $f16, ($t7)
/* 0CB0E4 8016A6A4 02A65021 */  addu  $t2, $s5, $a2
/* 0CB0E8 8016A6A8 E5500000 */  swc1  $f16, ($t2)
/* 0CB0EC 8016A6AC 0C002DAF */  jal   finish_current_thread
/* 0CB0F0 8016A6B0 AFA5004C */   sw    $a1, 0x4c($sp)
/* 0CB0F4 8016A6B4 8ED00000 */  lw    $s0, ($s6)
/* 0CB0F8 8016A6B8 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0CB0FC 8016A6BC 24180001 */  li    $t8, 1
/* 0CB100 8016A6C0 8E080000 */  lw    $t0, ($s0)
/* 0CB104 8016A6C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CB108 8016A6C8 44812000 */  mtc1  $at, $f4
/* 0CB10C 8016A6CC 0008C880 */  sll   $t9, $t0, 2
/* 0CB110 8016A6D0 02F94821 */  addu  $t1, $s7, $t9
/* 0CB114 8016A6D4 AD380000 */  sw    $t8, ($t1)
/* 0CB118 8016A6D8 C4B20000 */  lwc1  $f18, ($a1)
/* 0CB11C 8016A6DC 26310001 */  addiu $s1, $s1, 1
/* 0CB120 8016A6E0 46049181 */  sub.s $f6, $f18, $f4
/* 0CB124 8016A6E4 4600320D */  trunc.w.s $f8, $f6
/* 0CB128 8016A6E8 440C4000 */  mfc1  $t4, $f8
/* 0CB12C 8016A6EC 00000000 */  nop   
/* 0CB130 8016A6F0 022C082A */  slt   $at, $s1, $t4
/* 0CB134 8016A6F4 5420FFD5 */  bnezl $at, .L8016A64C_ovl3
/* 0CB138 8016A6F8 8E190000 */   lw    $t9, ($s0)
/* 0CB13C 8016A6FC 8E060000 */  lw    $a2, ($s0)
/* 0CB140 8016A700 00008825 */  move  $s1, $zero
/* 0CB144 8016A704 00063080 */  sll   $a2, $a2, 2
.L8016A708_ovl3:
/* 0CB148 8016A708 02461021 */  addu  $v0, $s2, $a2
/* 0CB14C 8016A70C C44A0000 */  lwc1  $f10, ($v0)
/* 0CB150 8016A710 24040003 */  li    $a0, 3
/* 0CB154 8016A714 46145400 */  add.s $f16, $f10, $f20
/* 0CB158 8016A718 E4500000 */  swc1  $f16, ($v0)
/* 0CB15C 8016A71C 8E060000 */  lw    $a2, ($s0)
/* 0CB160 8016A720 00063080 */  sll   $a2, $a2, 2
/* 0CB164 8016A724 02466821 */  addu  $t5, $s2, $a2
/* 0CB168 8016A728 C5B20000 */  lwc1  $f18, ($t5)
/* 0CB16C 8016A72C 02867021 */  addu  $t6, $s4, $a2
/* 0CB170 8016A730 0C03E905 */  jal   func_800FA414
/* 0CB174 8016A734 E5D20000 */   swc1  $f18, ($t6)
/* 0CB178 8016A738 8ECA0000 */  lw    $t2, ($s6)
/* 0CB17C 8016A73C 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CB180 8016A740 240F0002 */  li    $t7, 2
/* 0CB184 8016A744 8D480000 */  lw    $t0, ($t2)
/* 0CB188 8016A748 44816000 */  mtc1  $at, $f12
/* 0CB18C 8016A74C 0008C880 */  sll   $t9, $t0, 2
/* 0CB190 8016A750 02F9C021 */  addu  $t8, $s7, $t9
/* 0CB194 8016A754 0C02EFF8 */  jal   change_kirby_hp
/* 0CB198 8016A758 AF0F0000 */   sw    $t7, ($t8)
/* 0CB19C 8016A75C 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0CB1A0 8016A760 C4266E50 */  lwc1  $f6, %lo(gKirbyHp)($at)
/* 0CB1A4 8016A764 44802000 */  mtc1  $zero, $f4
/* 0CB1A8 8016A768 00000000 */  nop   
/* 0CB1AC 8016A76C 4606203C */  c.lt.s $f4, $f6
/* 0CB1B0 8016A770 00000000 */  nop   
/* 0CB1B4 8016A774 45020004 */  bc1fl .L8016A788_ovl3
/* 0CB1B8 8016A778 8ED00000 */   lw    $s0, ($s6)
/* 0CB1BC 8016A77C 0C029D9E */  jal   play_sound
/* 0CB1C0 8016A780 240400D9 */   li    $a0, 217
/* 0CB1C4 8016A784 8ED00000 */  lw    $s0, ($s6)
.L8016A788_ovl3:
/* 0CB1C8 8016A788 24040001 */  li    $a0, 1
/* 0CB1CC 8016A78C 8E060000 */  lw    $a2, ($s0)
/* 0CB1D0 8016A790 00063080 */  sll   $a2, $a2, 2
/* 0CB1D4 8016A794 02464821 */  addu  $t1, $s2, $a2
/* 0CB1D8 8016A798 C5280000 */  lwc1  $f8, ($t1)
/* 0CB1DC 8016A79C 02865821 */  addu  $t3, $s4, $a2
/* 0CB1E0 8016A7A0 E5680000 */  swc1  $f8, ($t3)
/* 0CB1E4 8016A7A4 8E060000 */  lw    $a2, ($s0)
/* 0CB1E8 8016A7A8 00063080 */  sll   $a2, $a2, 2
/* 0CB1EC 8016A7AC 02666021 */  addu  $t4, $s3, $a2
/* 0CB1F0 8016A7B0 C58A0000 */  lwc1  $f10, ($t4)
/* 0CB1F4 8016A7B4 02A66821 */  addu  $t5, $s5, $a2
/* 0CB1F8 8016A7B8 0C002DAF */  jal   finish_current_thread
/* 0CB1FC 8016A7BC E5AA0000 */   swc1  $f10, ($t5)
/* 0CB200 8016A7C0 26310001 */  addiu $s1, $s1, 1
/* 0CB204 8016A7C4 2A21001E */  slti  $at, $s1, 0x1e
/* 0CB208 8016A7C8 5420FFEF */  bnezl $at, .L8016A788_ovl3
/* 0CB20C 8016A7CC 8ED00000 */   lw    $s0, ($s6)
/* 0CB210 8016A7D0 8ECA0000 */  lw    $t2, ($s6)
/* 0CB214 8016A7D4 240E0003 */  li    $t6, 3
/* 0CB218 8016A7D8 3C098019 */  lui   $t1, %hi(D_8019696C) # $t1, 0x8019
/* 0CB21C 8016A7DC 8D480000 */  lw    $t0, ($t2)
/* 0CB220 8016A7E0 2529696C */  addiu $t1, %lo(D_8019696C) # addiu $t1, $t1, 0x696c
/* 0CB224 8016A7E4 00008825 */  move  $s1, $zero
/* 0CB228 8016A7E8 0008C880 */  sll   $t9, $t0, 2
/* 0CB22C 8016A7EC 02F97821 */  addu  $t7, $s7, $t9
/* 0CB230 8016A7F0 ADEE0000 */  sw    $t6, ($t7)
/* 0CB234 8016A7F4 8FB80054 */  lw    $t8, 0x54($sp)
/* 0CB238 8016A7F8 03092821 */  addu  $a1, $t8, $t1
/* 0CB23C 8016A7FC AFA5005C */  sw    $a1, 0x5c($sp)
/* 0CB240 8016A800 8ED00000 */  lw    $s0, ($s6)
.L8016A804_ovl3:
/* 0CB244 8016A804 8FA5005C */  lw    $a1, 0x5c($sp)
/* 0CB248 8016A808 24040001 */  li    $a0, 1
/* 0CB24C 8016A80C 8E0B0000 */  lw    $t3, ($s0)
/* 0CB250 8016A810 C4A20000 */  lwc1  $f2, ($a1)
/* 0CB254 8016A814 000B6080 */  sll   $t4, $t3, 2
/* 0CB258 8016A818 024C1021 */  addu  $v0, $s2, $t4
/* 0CB25C 8016A81C C4500000 */  lwc1  $f16, ($v0)
/* 0CB260 8016A820 46148001 */  sub.s $f0, $f16, $f20
/* 0CB264 8016A824 46001482 */  mul.s $f18, $f2, $f0
/* 0CB268 8016A828 E4400000 */  swc1  $f0, ($v0)
/* 0CB26C 8016A82C 8E0D0000 */  lw    $t5, ($s0)
/* 0CB270 8016A830 000D5080 */  sll   $t2, $t5, 2
/* 0CB274 8016A834 028A4021 */  addu  $t0, $s4, $t2
/* 0CB278 8016A838 E5120000 */  swc1  $f18, ($t0)
/* 0CB27C 8016A83C 8E190000 */  lw    $t9, ($s0)
/* 0CB280 8016A840 00197080 */  sll   $t6, $t9, 2
/* 0CB284 8016A844 026E1821 */  addu  $v1, $s3, $t6
/* 0CB288 8016A848 C4640000 */  lwc1  $f4, ($v1)
/* 0CB28C 8016A84C 46162000 */  add.s $f0, $f4, $f22
/* 0CB290 8016A850 46001182 */  mul.s $f6, $f2, $f0
/* 0CB294 8016A854 E4600000 */  swc1  $f0, ($v1)
/* 0CB298 8016A858 8E0F0000 */  lw    $t7, ($s0)
/* 0CB29C 8016A85C 000FC080 */  sll   $t8, $t7, 2
/* 0CB2A0 8016A860 02B84821 */  addu  $t1, $s5, $t8
/* 0CB2A4 8016A864 0C002DAF */  jal   finish_current_thread
/* 0CB2A8 8016A868 E5260000 */   swc1  $f6, ($t1)
/* 0CB2AC 8016A86C 26310001 */  addiu $s1, $s1, 1
/* 0CB2B0 8016A870 24010004 */  li    $at, 4
/* 0CB2B4 8016A874 5621FFE3 */  bnel  $s1, $at, .L8016A804_ovl3
/* 0CB2B8 8016A878 8ED00000 */   lw    $s0, ($s6)
/* 0CB2BC 8016A87C 8ECC0000 */  lw    $t4, ($s6)
/* 0CB2C0 8016A880 3C0B800B */  lui   $t3, %hi(D_800B531C) # $t3, 0x800b
/* 0CB2C4 8016A884 3C01800E */  lui   $at, 0x800e
/* 0CB2C8 8016A888 8D8D0000 */  lw    $t5, ($t4)
/* 0CB2CC 8016A88C 256B531C */  addiu $t3, %lo(D_800B531C) # addiu $t3, $t3, 0x531c
/* 0CB2D0 8016A890 000D5080 */  sll   $t2, $t5, 2
/* 0CB2D4 8016A894 002A0821 */  addu  $at, $at, $t2
/* 0CB2D8 8016A898 0C02CCFD */  jal   func_800B33F4
/* 0CB2DC 8016A89C AC2BEF90 */   sw    $t3, -0x1070($at)
/* 0CB2E0 8016A8A0 8ED00000 */  lw    $s0, ($s6)
/* 0CB2E4 8016A8A4 3C01800F */  lui   $at, 0x800f
/* 0CB2E8 8016A8A8 24040001 */  li    $a0, 1
/* 0CB2EC 8016A8AC 8E060000 */  lw    $a2, ($s0)
/* 0CB2F0 8016A8B0 00063080 */  sll   $a2, $a2, 2
/* 0CB2F4 8016A8B4 00260821 */  addu  $at, $at, $a2
/* 0CB2F8 8016A8B8 C428A6E0 */  lwc1  $f8, -0x5920($at)
/* 0CB2FC 8016A8BC 02864021 */  addu  $t0, $s4, $a2
/* 0CB300 8016A8C0 3C01800F */  lui   $at, 0x800f
/* 0CB304 8016A8C4 E5080000 */  swc1  $f8, ($t0)
/* 0CB308 8016A8C8 8E060000 */  lw    $a2, ($s0)
/* 0CB30C 8016A8CC 00063080 */  sll   $a2, $a2, 2
/* 0CB310 8016A8D0 00260821 */  addu  $at, $at, $a2
/* 0CB314 8016A8D4 C42AA8A0 */  lwc1  $f10, -0x5760($at)
/* 0CB318 8016A8D8 02A6C821 */  addu  $t9, $s5, $a2
/* 0CB31C 8016A8DC 0C002DAF */  jal   finish_current_thread
/* 0CB320 8016A8E0 E72A0000 */   swc1  $f10, ($t9)
/* 0CB324 8016A8E4 8ECF0000 */  lw    $t7, ($s6)
/* 0CB328 8016A8E8 240E0004 */  li    $t6, 4
/* 0CB32C 8016A8EC 8DF80000 */  lw    $t8, ($t7)
/* 0CB330 8016A8F0 00184880 */  sll   $t1, $t8, 2
/* 0CB334 8016A8F4 02E96021 */  addu  $t4, $s7, $t1
/* 0CB338 8016A8F8 0C02BE85 */  jal   func_800AFA14
/* 0CB33C 8016A8FC AD8E0000 */   sw    $t6, ($t4)
/* 0CB340 8016A900 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0CB344 8016A904 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 0CB348 8016A908 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 0CB34C 8016A90C 8FB00024 */  lw    $s0, 0x24($sp)
/* 0CB350 8016A910 8FB10028 */  lw    $s1, 0x28($sp)
/* 0CB354 8016A914 8FB2002C */  lw    $s2, 0x2c($sp)
/* 0CB358 8016A918 8FB30030 */  lw    $s3, 0x30($sp)
/* 0CB35C 8016A91C 8FB40034 */  lw    $s4, 0x34($sp)
/* 0CB360 8016A920 8FB50038 */  lw    $s5, 0x38($sp)
/* 0CB364 8016A924 8FB6003C */  lw    $s6, 0x3c($sp)
/* 0CB368 8016A928 8FB70040 */  lw    $s7, 0x40($sp)
/* 0CB36C 8016A92C 03E00008 */  jr    $ra
/* 0CB370 8016A930 27BD0078 */   addiu $sp, $sp, 0x78

.type func_8016A308_ovl3, @function
.size func_8016A308_ovl3, . - func_8016A308_ovl3

glabel func_8016A934_ovl3
/* 0CB374 8016A934 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 0CB378 8016A938 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 0CB37C 8016A93C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CB380 8016A940 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CB384 8016A944 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CB388 8016A948 8CC20000 */  lw    $v0, ($a2)
/* 0CB38C 8016A94C 3C01800E */  lui   $at, 0x800e
/* 0CB390 8016A950 3C03800F */  lui   $v1, %hi(D_800E8920) # $v1, 0x800f
/* 0CB394 8016A954 00021080 */  sll   $v0, $v0, 2
/* 0CB398 8016A958 00220821 */  addu  $at, $at, $v0
/* 0CB39C 8016A95C C42417D0 */  lwc1  $f4, 0x17d0($at)
/* 0CB3A0 8016A960 3C01800E */  lui   $at, 0x800e
/* 0CB3A4 8016A964 00220821 */  addu  $at, $at, $v0
/* 0CB3A8 8016A968 E42441D0 */  swc1  $f4, 0x41d0($at)
/* 0CB3AC 8016A96C 8CCF0000 */  lw    $t7, ($a2)
/* 0CB3B0 8016A970 24638920 */  addiu $v1, %lo(D_800E8920) # addiu $v1, $v1, -0x76e0
/* 0CB3B4 8016A974 240E0001 */  li    $t6, 1
/* 0CB3B8 8016A978 000FC080 */  sll   $t8, $t7, 2
/* 0CB3BC 8016A97C 0078C821 */  addu  $t9, $v1, $t8
/* 0CB3C0 8016A980 AF2E0000 */  sw    $t6, ($t9)
/* 0CB3C4 8016A984 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0CB3C8 8016A988 C4286E50 */  lwc1  $f8, %lo(gKirbyHp)($at)
/* 0CB3CC 8016A98C 44803000 */  mtc1  $zero, $f6
/* 0CB3D0 8016A990 00000000 */  nop   
/* 0CB3D4 8016A994 4608303C */  c.lt.s $f6, $f8
/* 0CB3D8 8016A998 00000000 */  nop   
/* 0CB3DC 8016A99C 45000039 */  bc1f  .L8016AA84_ovl3
/* 0CB3E0 8016A9A0 00000000 */   nop   
/* 0CB3E4 8016A9A4 8CC20000 */  lw    $v0, ($a2)
/* 0CB3E8 8016A9A8 3C08800F */  lui   $t0, 0x800f
/* 0CB3EC 8016A9AC 00021080 */  sll   $v0, $v0, 2
/* 0CB3F0 8016A9B0 01024021 */  addu  $t0, $t0, $v0
/* 0CB3F4 8016A9B4 8D0898E0 */  lw    $t0, -0x6720($t0)
/* 0CB3F8 8016A9B8 2D010005 */  sltiu $at, $t0, 5
/* 0CB3FC 8016A9BC 10200033 */  beqz  $at, .L8016AA8C_ovl3
/* 0CB400 8016A9C0 00084080 */   sll   $t0, $t0, 2
/* 0CB404 8016A9C4 3C018019 */  lui   $at, 0x8019
/* 0CB408 8016A9C8 00280821 */  addu  $at, $at, $t0
/* 0CB40C 8016A9CC 8C287214 */  lw    $t0, 0x7214($at)
/* 0CB410 8016A9D0 01000008 */  jr    $t0
/* 0CB414 8016A9D4 00000000 */   nop   
/* 0CB418 8016A9D8 3C01800F */  lui   $at, 0x800f
/* 0CB41C 8016A9DC 00220821 */  addu  $at, $at, $v0
/* 0CB420 8016A9E0 C42AA6E0 */  lwc1  $f10, -0x5920($at)
/* 0CB424 8016A9E4 3C01800E */  lui   $at, 0x800e
/* 0CB428 8016A9E8 00220821 */  addu  $at, $at, $v0
/* 0CB42C 8016A9EC E42A4010 */  swc1  $f10, 0x4010($at)
/* 0CB430 8016A9F0 8CC20000 */  lw    $v0, ($a2)
/* 0CB434 8016A9F4 3C01800F */  lui   $at, 0x800f
/* 0CB438 8016A9F8 24040001 */  li    $a0, 1
/* 0CB43C 8016A9FC 00021080 */  sll   $v0, $v0, 2
/* 0CB440 8016AA00 00220821 */  addu  $at, $at, $v0
/* 0CB444 8016AA04 C430A8A0 */  lwc1  $f16, -0x5760($at)
/* 0CB448 8016AA08 3C01800E */  lui   $at, 0x800e
/* 0CB44C 8016AA0C 00220821 */  addu  $at, $at, $v0
/* 0CB450 8016AA10 E4304710 */  swc1  $f16, 0x4710($at)
/* 0CB454 8016AA14 8CC90000 */  lw    $t1, ($a2)
/* 0CB458 8016AA18 00095080 */  sll   $t2, $t1, 2
/* 0CB45C 8016AA1C 006A5821 */  addu  $t3, $v1, $t2
/* 0CB460 8016AA20 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CB464 8016AA24 AD600000 */   sw    $zero, ($t3)
/* 0CB468 8016AA28 10000018 */  b     .L8016AA8C_ovl3
/* 0CB46C 8016AA2C 00000000 */   nop   
/* 0CB470 8016AA30 3C0C800E */  lui   $t4, %hi(gEntitiesNextPosYArray) # $t4, 0x800e
/* 0CB474 8016AA34 258C2790 */  addiu $t4, %lo(gEntitiesNextPosYArray) # addiu $t4, $t4, 0x2790
/* 0CB478 8016AA38 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0CB47C 8016AA3C 004C1821 */  addu  $v1, $v0, $t4
/* 0CB480 8016AA40 44810000 */  mtc1  $at, $f0
/* 0CB484 8016AA44 C4720000 */  lwc1  $f18, ($v1)
/* 0CB488 8016AA48 3C18800E */  lui   $t8, %hi(gEntitiesPosYArray) # $t8, 0x800e
/* 0CB48C 8016AA4C 27182CD0 */  addiu $t8, %lo(gEntitiesPosYArray) # addiu $t8, $t8, 0x2cd0
/* 0CB490 8016AA50 46009101 */  sub.s $f4, $f18, $f0
/* 0CB494 8016AA54 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CB498 8016AA58 2484A980 */  addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CB49C 8016AA5C E4640000 */  swc1  $f4, ($v1)
/* 0CB4A0 8016AA60 8CCD0000 */  lw    $t5, ($a2)
/* 0CB4A4 8016AA64 000D7880 */  sll   $t7, $t5, 2
/* 0CB4A8 8016AA68 01F82821 */  addu  $a1, $t7, $t8
/* 0CB4AC 8016AA6C C4A60000 */  lwc1  $f6, ($a1)
/* 0CB4B0 8016AA70 46003201 */  sub.s $f8, $f6, $f0
/* 0CB4B4 8016AA74 0C068CEE */  jal   func_801A33B8_ovl3
/* 0CB4B8 8016AA78 E4A80000 */   swc1  $f8, ($a1)
/* 0CB4BC 8016AA7C 10000003 */  b     .L8016AA8C_ovl3
/* 0CB4C0 8016AA80 00000000 */   nop   
.L8016AA84_ovl3:
/* 0CB4C4 8016AA84 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CB4C8 8016AA88 24040001 */   li    $a0, 1
.L8016AA8C_ovl3:
/* 0CB4CC 8016AA8C 0C05A5BC */  jal   func_801696F0_ovl3
/* 0CB4D0 8016AA90 8FA40018 */   lw    $a0, 0x18($sp)
/* 0CB4D4 8016AA94 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CB4D8 8016AA98 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CB4DC 8016AA9C 03E00008 */  jr    $ra
/* 0CB4E0 8016AAA0 00000000 */   nop   

.type func_8016A934_ovl3, @function
.size func_8016A934_ovl3, . - func_8016A934_ovl3

glabel func_8016AAA4_ovl3
/* 0CB4E4 8016AAA4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CB4E8 8016AAA8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0CB4EC 8016AAAC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 0CB4F0 8016AAB0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 0CB4F4 8016AAB4 8E020000 */  lw    $v0, ($s0)
/* 0CB4F8 8016AAB8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CB4FC 8016AABC AFB10018 */  sw    $s1, 0x18($sp)
/* 0CB500 8016AAC0 AFA40020 */  sw    $a0, 0x20($sp)
/* 0CB504 8016AAC4 8C430000 */  lw    $v1, ($v0)
/* 0CB508 8016AAC8 3C0E800F */  lui   $t6, 0x800f
/* 0CB50C 8016AACC 3C040002 */  lui   $a0, (0x00020007 >> 16) # lui $a0, 2
/* 0CB510 8016AAD0 00031880 */  sll   $v1, $v1, 2
/* 0CB514 8016AAD4 01C37021 */  addu  $t6, $t6, $v1
/* 0CB518 8016AAD8 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 0CB51C 8016AADC 31CF00FF */  andi  $t7, $t6, 0xff
/* 0CB520 8016AAE0 15E00006 */  bnez  $t7, .L8016AAFC_ovl3
/* 0CB524 8016AAE4 00000000 */   nop   
/* 0CB528 8016AAE8 0C02A5D8 */  jal   func_800A9760
/* 0CB52C 8016AAEC 34840007 */   ori   $a0, (0x00020007 & 0xFFFF) # ori $a0, $a0, 7
/* 0CB530 8016AAF0 8E020000 */  lw    $v0, ($s0)
/* 0CB534 8016AAF4 8C430000 */  lw    $v1, ($v0)
/* 0CB538 8016AAF8 00031880 */  sll   $v1, $v1, 2
.L8016AAFC_ovl3:
/* 0CB53C 8016AAFC 3C188017 */  lui   $t8, %hi(D_8016B410) # $t8, 0x8017
/* 0CB540 8016AB00 3C01800E */  lui   $at, 0x800e
/* 0CB544 8016AB04 00230821 */  addu  $at, $at, $v1
/* 0CB548 8016AB08 2718B410 */  addiu $t8, %lo(D_8016B410) # addiu $t8, $t8, -0x4bf0
/* 0CB54C 8016AB0C AC38F150 */  sw    $t8, -0xeb0($at)
/* 0CB550 8016AB10 8C4C0000 */  lw    $t4, ($v0)
/* 0CB554 8016AB14 3C01800E */  lui   $at, 0x800e
/* 0CB558 8016AB18 3C19800B */  lui   $t9, %hi(D_800B4924) # $t9, 0x800b
/* 0CB55C 8016AB1C 000C6880 */  sll   $t5, $t4, 2
/* 0CB560 8016AB20 002D0821 */  addu  $at, $at, $t5
/* 0CB564 8016AB24 27394924 */  addiu $t9, %lo(D_800B4924) # addiu $t9, $t9, 0x4924
/* 0CB568 8016AB28 AC39EF90 */  sw    $t9, -0x1070($at)
/* 0CB56C 8016AB2C 8C4E0000 */  lw    $t6, ($v0)
/* 0CB570 8016AB30 3C01800F */  lui   $at, 0x800f
/* 0CB574 8016AB34 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 0CB578 8016AB38 000E7880 */  sll   $t7, $t6, 2
/* 0CB57C 8016AB3C 002F0821 */  addu  $at, $at, $t7
/* 0CB580 8016AB40 AC208920 */  sw    $zero, -0x76e0($at)
/* 0CB584 8016AB44 8C580000 */  lw    $t8, ($v0)
/* 0CB588 8016AB48 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 0CB58C 8016AB4C 00186080 */  sll   $t4, $t8, 2
/* 0CB590 8016AB50 022CC821 */  addu  $t9, $s1, $t4
/* 0CB594 8016AB54 0C05AEF4 */  jal   func_8016BBD0_ovl3
/* 0CB598 8016AB58 AF200000 */   sw    $zero, ($t9)
/* 0CB59C 8016AB5C 8E020000 */  lw    $v0, ($s0)
/* 0CB5A0 8016AB60 3C08800E */  lui   $t0, %hi(D_800E0D50) # $t0, 0x800e
/* 0CB5A4 8016AB64 25080D50 */  addiu $t0, %lo(D_800E0D50) # addiu $t0, $t0, 0xd50
/* 0CB5A8 8016AB68 8C430000 */  lw    $v1, ($v0)
/* 0CB5AC 8016AB6C 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0CB5B0 8016AB70 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0CB5B4 8016AB74 00031880 */  sll   $v1, $v1, 2
/* 0CB5B8 8016AB78 01036821 */  addu  $t5, $t0, $v1
/* 0CB5BC 8016AB7C 8DAE0000 */  lw    $t6, ($t5)
/* 0CB5C0 8016AB80 00A36021 */  addu  $t4, $a1, $v1
/* 0CB5C4 8016AB84 C5860000 */  lwc1  $f6, ($t4)
/* 0CB5C8 8016AB88 000E7880 */  sll   $t7, $t6, 2
/* 0CB5CC 8016AB8C 00AFC021 */  addu  $t8, $a1, $t7
/* 0CB5D0 8016AB90 C7040000 */  lwc1  $f4, ($t8)
/* 0CB5D4 8016AB94 3C018019 */  lui   $at, %hi(D_80197228) # $at, 0x8019
/* 0CB5D8 8016AB98 C42C7228 */  lwc1  $f12, %lo(D_80197228)($at)
/* 0CB5DC 8016AB9C 46062201 */  sub.s $f8, $f4, $f6
/* 0CB5E0 8016ABA0 3C018019 */  lui   $at, %hi(D_8019722C) # $at, 0x8019
/* 0CB5E4 8016ABA4 C430722C */  lwc1  $f16, %lo(D_8019722C)($at)
/* 0CB5E8 8016ABA8 3C01800F */  lui   $at, 0x800f
/* 0CB5EC 8016ABAC 460C4282 */  mul.s $f10, $f8, $f12
/* 0CB5F0 8016ABB0 00230821 */  addu  $at, $at, $v1
/* 0CB5F4 8016ABB4 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 0CB5F8 8016ABB8 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 0CB5FC 8016ABBC 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 0CB600 8016ABC0 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 0CB604 8016ABC4 44807000 */  mtc1  $zero, $f14
/* 0CB608 8016ABC8 E42AA6E0 */  swc1  $f10, -0x5920($at)
/* 0CB60C 8016ABCC 8C430000 */  lw    $v1, ($v0)
/* 0CB610 8016ABD0 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 0CB614 8016ABD4 44812000 */  mtc1  $at, $f4
/* 0CB618 8016ABD8 00031880 */  sll   $v1, $v1, 2
/* 0CB61C 8016ABDC 0103C821 */  addu  $t9, $t0, $v1
/* 0CB620 8016ABE0 8F2D0000 */  lw    $t5, ($t9)
/* 0CB624 8016ABE4 00C3C021 */  addu  $t8, $a2, $v1
/* 0CB628 8016ABE8 C7080000 */  lwc1  $f8, ($t8)
/* 0CB62C 8016ABEC 000D7080 */  sll   $t6, $t5, 2
/* 0CB630 8016ABF0 00CE7821 */  addu  $t7, $a2, $t6
/* 0CB634 8016ABF4 C5F20000 */  lwc1  $f18, ($t7)
/* 0CB638 8016ABF8 3C01800F */  lui   $at, 0x800f
/* 0CB63C 8016ABFC 00230821 */  addu  $at, $at, $v1
/* 0CB640 8016AC00 46049181 */  sub.s $f6, $f18, $f4
/* 0CB644 8016AC04 3C09800E */  lui   $t1, %hi(D_800E3910) # $t1, 0x800e
/* 0CB648 8016AC08 25293910 */  addiu $t1, %lo(D_800E3910) # addiu $t1, $t1, 0x3910
/* 0CB64C 8016AC0C 3C0A800E */  lui   $t2, %hi(D_800E3E50) # $t2, 0x800e
/* 0CB650 8016AC10 46083281 */  sub.s $f10, $f6, $f8
/* 0CB654 8016AC14 254A3E50 */  addiu $t2, %lo(D_800E3E50) # addiu $t2, $t2, 0x3e50
/* 0CB658 8016AC18 3C0B800E */  lui   $t3, %hi(D_800E6690) # $t3, 0x800e
/* 0CB65C 8016AC1C 256B6690 */  addiu $t3, %lo(D_800E6690) # addiu $t3, $t3, 0x6690
/* 0CB660 8016AC20 460C5482 */  mul.s $f18, $f10, $f12
/* 0CB664 8016AC24 24040005 */  li    $a0, 5
/* 0CB668 8016AC28 E432A8A0 */  swc1  $f18, -0x5760($at)
/* 0CB66C 8016AC2C 8C430000 */  lw    $v1, ($v0)
/* 0CB670 8016AC30 3C01800F */  lui   $at, 0x800f
/* 0CB674 8016AC34 00031880 */  sll   $v1, $v1, 2
/* 0CB678 8016AC38 01036021 */  addu  $t4, $t0, $v1
/* 0CB67C 8016AC3C 8D990000 */  lw    $t9, ($t4)
/* 0CB680 8016AC40 00E37821 */  addu  $t7, $a3, $v1
/* 0CB684 8016AC44 C5E60000 */  lwc1  $f6, ($t7)
/* 0CB688 8016AC48 00196880 */  sll   $t5, $t9, 2
/* 0CB68C 8016AC4C 00ED7021 */  addu  $t6, $a3, $t5
/* 0CB690 8016AC50 C5C40000 */  lwc1  $f4, ($t6)
/* 0CB694 8016AC54 00230821 */  addu  $at, $at, $v1
/* 0CB698 8016AC58 46062201 */  sub.s $f8, $f4, $f6
/* 0CB69C 8016AC5C 460C4282 */  mul.s $f10, $f8, $f12
/* 0CB6A0 8016AC60 E42AAA60 */  swc1  $f10, -0x55a0($at)
/* 0CB6A4 8016AC64 8C580000 */  lw    $t8, ($v0)
/* 0CB6A8 8016AC68 3C01800E */  lui   $at, 0x800e
/* 0CB6AC 8016AC6C 00186080 */  sll   $t4, $t8, 2
/* 0CB6B0 8016AC70 012CC821 */  addu  $t9, $t1, $t4
/* 0CB6B4 8016AC74 E72E0000 */  swc1  $f14, ($t9)
/* 0CB6B8 8016AC78 8C430000 */  lw    $v1, ($v0)
/* 0CB6BC 8016AC7C 00031880 */  sll   $v1, $v1, 2
/* 0CB6C0 8016AC80 01236821 */  addu  $t5, $t1, $v1
/* 0CB6C4 8016AC84 C5A00000 */  lwc1  $f0, ($t5)
/* 0CB6C8 8016AC88 00230821 */  addu  $at, $at, $v1
/* 0CB6CC 8016AC8C E4203750 */  swc1  $f0, 0x3750($at)
/* 0CB6D0 8016AC90 8C4E0000 */  lw    $t6, ($v0)
/* 0CB6D4 8016AC94 3C01800E */  lui   $at, 0x800e
/* 0CB6D8 8016AC98 000E7880 */  sll   $t7, $t6, 2
/* 0CB6DC 8016AC9C 002F0821 */  addu  $at, $at, $t7
/* 0CB6E0 8016ACA0 E4203590 */  swc1  $f0, 0x3590($at)
/* 0CB6E4 8016ACA4 8C580000 */  lw    $t8, ($v0)
/* 0CB6E8 8016ACA8 3C01800E */  lui   $at, 0x800e
/* 0CB6EC 8016ACAC 00186080 */  sll   $t4, $t8, 2
/* 0CB6F0 8016ACB0 002C0821 */  addu  $at, $at, $t4
/* 0CB6F4 8016ACB4 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 0CB6F8 8016ACB8 8C590000 */  lw    $t9, ($v0)
/* 0CB6FC 8016ACBC 3C01800E */  lui   $at, 0x800e
/* 0CB700 8016ACC0 00196880 */  sll   $t5, $t9, 2
/* 0CB704 8016ACC4 002D0821 */  addu  $at, $at, $t5
/* 0CB708 8016ACC8 E4203210 */  swc1  $f0, 0x3210($at)
/* 0CB70C 8016ACCC 8C4E0000 */  lw    $t6, ($v0)
/* 0CB710 8016ACD0 3C01800E */  lui   $at, 0x800e
/* 0CB714 8016ACD4 000E7880 */  sll   $t7, $t6, 2
/* 0CB718 8016ACD8 002F0821 */  addu  $at, $at, $t7
/* 0CB71C 8016ACDC E4203050 */  swc1  $f0, 0x3050($at)
/* 0CB720 8016ACE0 8C580000 */  lw    $t8, ($v0)
/* 0CB724 8016ACE4 3C01800E */  lui   $at, 0x800e
/* 0CB728 8016ACE8 00186080 */  sll   $t4, $t8, 2
/* 0CB72C 8016ACEC 014CC821 */  addu  $t9, $t2, $t4
/* 0CB730 8016ACF0 E7300000 */  swc1  $f16, ($t9)
/* 0CB734 8016ACF4 8C430000 */  lw    $v1, ($v0)
/* 0CB738 8016ACF8 00031880 */  sll   $v1, $v1, 2
/* 0CB73C 8016ACFC 01436821 */  addu  $t5, $t2, $v1
/* 0CB740 8016AD00 C5A20000 */  lwc1  $f2, ($t5)
/* 0CB744 8016AD04 00230821 */  addu  $at, $at, $v1
/* 0CB748 8016AD08 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 0CB74C 8016AD0C 8C4E0000 */  lw    $t6, ($v0)
/* 0CB750 8016AD10 3C01800E */  lui   $at, 0x800e
/* 0CB754 8016AD14 000E7880 */  sll   $t7, $t6, 2
/* 0CB758 8016AD18 002F0821 */  addu  $at, $at, $t7
/* 0CB75C 8016AD1C E4223AD0 */  swc1  $f2, 0x3ad0($at)
/* 0CB760 8016AD20 8C580000 */  lw    $t8, ($v0)
/* 0CB764 8016AD24 3C01800E */  lui   $at, 0x800e
/* 0CB768 8016AD28 00186080 */  sll   $t4, $t8, 2
/* 0CB76C 8016AD2C 016CC821 */  addu  $t9, $t3, $t4
/* 0CB770 8016AD30 E72E0000 */  swc1  $f14, ($t9)
/* 0CB774 8016AD34 8C430000 */  lw    $v1, ($v0)
/* 0CB778 8016AD38 00031880 */  sll   $v1, $v1, 2
/* 0CB77C 8016AD3C 01636821 */  addu  $t5, $t3, $v1
/* 0CB780 8016AD40 C5B20000 */  lwc1  $f18, ($t5)
/* 0CB784 8016AD44 00230821 */  addu  $at, $at, $v1
/* 0CB788 8016AD48 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 0CB78C 8016AD4C 8C4E0000 */  lw    $t6, ($v0)
/* 0CB790 8016AD50 3C01800E */  lui   $at, 0x800e
/* 0CB794 8016AD54 000E7880 */  sll   $t7, $t6, 2
/* 0CB798 8016AD58 002F0821 */  addu  $at, $at, $t7
/* 0CB79C 8016AD5C 0C002DAF */  jal   finish_current_thread
/* 0CB7A0 8016AD60 E4306850 */   swc1  $f16, 0x6850($at)
/* 0CB7A4 8016AD64 8E020000 */  lw    $v0, ($s0)
/* 0CB7A8 8016AD68 3C08800E */  lui   $t0, %hi(D_800E0D50) # $t0, 0x800e
/* 0CB7AC 8016AD6C 25080D50 */  addiu $t0, %lo(D_800E0D50) # addiu $t0, $t0, 0xd50
/* 0CB7B0 8016AD70 8C430000 */  lw    $v1, ($v0)
/* 0CB7B4 8016AD74 3C05800E */  lui   $a1, %hi(gEntitiesNextPosXArray) # $a1, 0x800e
/* 0CB7B8 8016AD78 24A525D0 */  addiu $a1, %lo(gEntitiesNextPosXArray) # addiu $a1, $a1, 0x25d0
/* 0CB7BC 8016AD7C 00031880 */  sll   $v1, $v1, 2
/* 0CB7C0 8016AD80 0103C021 */  addu  $t8, $t0, $v1
/* 0CB7C4 8016AD84 8F0C0000 */  lw    $t4, ($t8)
/* 0CB7C8 8016AD88 00A37021 */  addu  $t6, $a1, $v1
/* 0CB7CC 8016AD8C 3C06800E */  lui   $a2, %hi(gEntitiesNextPosYArray) # $a2, 0x800e
/* 0CB7D0 8016AD90 000CC880 */  sll   $t9, $t4, 2
/* 0CB7D4 8016AD94 00B96821 */  addu  $t5, $a1, $t9
/* 0CB7D8 8016AD98 C5A40000 */  lwc1  $f4, ($t5)
/* 0CB7DC 8016AD9C 24C62790 */  addiu $a2, %lo(gEntitiesNextPosYArray) # addiu $a2, $a2, 0x2790
/* 0CB7E0 8016ADA0 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 0CB7E4 8016ADA4 E5C40000 */  swc1  $f4, ($t6)
/* 0CB7E8 8016ADA8 8C430000 */  lw    $v1, ($v0)
/* 0CB7EC 8016ADAC 44814000 */  mtc1  $at, $f8
/* 0CB7F0 8016ADB0 3C07800E */  lui   $a3, %hi(gEntitiesNextPosZArray) # $a3, 0x800e
/* 0CB7F4 8016ADB4 00031880 */  sll   $v1, $v1, 2
/* 0CB7F8 8016ADB8 01037821 */  addu  $t7, $t0, $v1
/* 0CB7FC 8016ADBC 8DF80000 */  lw    $t8, ($t7)
/* 0CB800 8016ADC0 00C36821 */  addu  $t5, $a2, $v1
/* 0CB804 8016ADC4 24E72950 */  addiu $a3, %lo(gEntitiesNextPosZArray) # addiu $a3, $a3, 0x2950
/* 0CB808 8016ADC8 00186080 */  sll   $t4, $t8, 2
/* 0CB80C 8016ADCC 00CCC821 */  addu  $t9, $a2, $t4
/* 0CB810 8016ADD0 C7260000 */  lwc1  $f6, ($t9)
/* 0CB814 8016ADD4 46083281 */  sub.s $f10, $f6, $f8
/* 0CB818 8016ADD8 E5AA0000 */  swc1  $f10, ($t5)
/* 0CB81C 8016ADDC 8C430000 */  lw    $v1, ($v0)
/* 0CB820 8016ADE0 240D0001 */  li    $t5, 1
/* 0CB824 8016ADE4 00031880 */  sll   $v1, $v1, 2
/* 0CB828 8016ADE8 01037021 */  addu  $t6, $t0, $v1
/* 0CB82C 8016ADEC 8DCF0000 */  lw    $t7, ($t6)
/* 0CB830 8016ADF0 00E3C821 */  addu  $t9, $a3, $v1
/* 0CB834 8016ADF4 000FC080 */  sll   $t8, $t7, 2
/* 0CB838 8016ADF8 00F86021 */  addu  $t4, $a3, $t8
/* 0CB83C 8016ADFC C5920000 */  lwc1  $f18, ($t4)
/* 0CB840 8016AE00 E7320000 */  swc1  $f18, ($t9)
/* 0CB844 8016AE04 8C4E0000 */  lw    $t6, ($v0)
/* 0CB848 8016AE08 3C19800E */  lui   $t9, 0x800e
/* 0CB84C 8016AE0C 000E7880 */  sll   $t7, $t6, 2
/* 0CB850 8016AE10 022FC021 */  addu  $t8, $s1, $t7
/* 0CB854 8016AE14 AF0D0000 */  sw    $t5, ($t8)
/* 0CB858 8016AE18 8C430000 */  lw    $v1, ($v0)
/* 0CB85C 8016AE1C 00031880 */  sll   $v1, $v1, 2
/* 0CB860 8016AE20 01036021 */  addu  $t4, $t0, $v1
/* 0CB864 8016AE24 8D840000 */  lw    $a0, ($t4)
/* 0CB868 8016AE28 0324C821 */  addu  $t9, $t9, $a0
/* 0CB86C 8016AE2C 93397880 */  lbu   $t9, 0x7880($t9)
/* 0CB870 8016AE30 1320000F */  beqz  $t9, .L8016AE70_ovl3
.L8016AE34_ovl3:
/* 0CB874 8016AE34 00047080 */   sll   $t6, $a0, 2
/* 0CB878 8016AE38 3C0F800E */  lui   $t7, 0x800e
/* 0CB87C 8016AE3C 01EE7821 */  addu  $t7, $t7, $t6
/* 0CB880 8016AE40 8DEFDC50 */  lw    $t7, -0x23b0($t7)
/* 0CB884 8016AE44 11E0000A */  beqz  $t7, .L8016AE70_ovl3
/* 0CB888 8016AE48 00000000 */   nop   
/* 0CB88C 8016AE4C 0C002DAF */  jal   finish_current_thread
/* 0CB890 8016AE50 24040001 */   li    $a0, 1
/* 0CB894 8016AE54 8E0D0000 */  lw    $t5, ($s0)
/* 0CB898 8016AE58 3C04800E */  lui   $a0, 0x800e
/* 0CB89C 8016AE5C 8DA30000 */  lw    $v1, ($t5)
/* 0CB8A0 8016AE60 00031880 */  sll   $v1, $v1, 2
/* 0CB8A4 8016AE64 00832021 */  addu  $a0, $a0, $v1
/* 0CB8A8 8016AE68 1000FFF2 */  b     .L8016AE34_ovl3
/* 0CB8AC 8016AE6C 8C840D50 */   lw    $a0, 0xd50($a0)
.L8016AE70_ovl3:
/* 0CB8B0 8016AE70 3C18800C */  lui   $t8, %hi(D_800BE500) # $t8, 0x800c
/* 0CB8B4 8016AE74 8F18E500 */  lw    $t8, %lo(D_800BE500)($t8)
/* 0CB8B8 8016AE78 24010004 */  li    $at, 4
/* 0CB8BC 8016AE7C 3C0C800C */  lui   $t4, %hi(D_800BE504) # $t4, 0x800c
/* 0CB8C0 8016AE80 57010014 */  bnel  $t8, $at, .L8016AED4_ovl3
/* 0CB8C4 8016AE84 240F0002 */   li    $t7, 2
/* 0CB8C8 8016AE88 8D8CE504 */  lw    $t4, %lo(D_800BE504)($t4)
/* 0CB8CC 8016AE8C 24010001 */  li    $at, 1
/* 0CB8D0 8016AE90 3C19800C */  lui   $t9, %hi(D_800BE508) # $t9, 0x800c
/* 0CB8D4 8016AE94 5581000F */  bnel  $t4, $at, .L8016AED4_ovl3
/* 0CB8D8 8016AE98 240F0002 */   li    $t7, 2
/* 0CB8DC 8016AE9C 8F39E508 */  lw    $t9, %lo(D_800BE508)($t9)
/* 0CB8E0 8016AEA0 5720000C */  bnezl $t9, .L8016AED4_ovl3
/* 0CB8E4 8016AEA4 240F0002 */   li    $t7, 2
/* 0CB8E8 8016AEA8 0C03EFC6 */  jal   func_800FBF18
/* 0CB8EC 8016AEAC 24040003 */   li    $a0, 3
/* 0CB8F0 8016AEB0 0C03EF87 */  jal   func_800FBE1C
/* 0CB8F4 8016AEB4 00000000 */   nop   
/* 0CB8F8 8016AEB8 3C048000 */  lui   $a0, (0x80000004 >> 16) # lui $a0, 0x8000
/* 0CB8FC 8016AEBC 0C03E905 */  jal   func_800FA414
/* 0CB900 8016AEC0 34840004 */   ori   $a0, (0x80000004 & 0xFFFF) # ori $a0, $a0, 4
/* 0CB904 8016AEC4 8E0E0000 */  lw    $t6, ($s0)
/* 0CB908 8016AEC8 8DC30000 */  lw    $v1, ($t6)
/* 0CB90C 8016AECC 00031880 */  sll   $v1, $v1, 2
/* 0CB910 8016AED0 240F0002 */  li    $t7, 2
.L8016AED4_ovl3:
/* 0CB914 8016AED4 02236821 */  addu  $t5, $s1, $v1
/* 0CB918 8016AED8 ADAF0000 */  sw    $t7, ($t5)
/* 0CB91C 8016AEDC 0C002DAF */  jal   finish_current_thread
/* 0CB920 8016AEE0 2404000F */   li    $a0, 15
/* 0CB924 8016AEE4 3C18800C */  lui   $t8, %hi(D_800BE500) # $t8, 0x800c
/* 0CB928 8016AEE8 8F18E500 */  lw    $t8, %lo(D_800BE500)($t8)
/* 0CB92C 8016AEEC 24010004 */  li    $at, 4
/* 0CB930 8016AEF0 3C0C800C */  lui   $t4, %hi(D_800BE504) # $t4, 0x800c
/* 0CB934 8016AEF4 5701000C */  bnel  $t8, $at, .L8016AF28_ovl3
/* 0CB938 8016AEF8 8E0F0000 */   lw    $t7, ($s0)
/* 0CB93C 8016AEFC 8D8CE504 */  lw    $t4, %lo(D_800BE504)($t4)
/* 0CB940 8016AF00 24010001 */  li    $at, 1
/* 0CB944 8016AF04 3C19800C */  lui   $t9, %hi(D_800BE508) # $t9, 0x800c
/* 0CB948 8016AF08 55810007 */  bnel  $t4, $at, .L8016AF28_ovl3
/* 0CB94C 8016AF0C 8E0F0000 */   lw    $t7, ($s0)
/* 0CB950 8016AF10 8F39E508 */  lw    $t9, %lo(D_800BE508)($t9)
/* 0CB954 8016AF14 57200004 */  bnezl $t9, .L8016AF28_ovl3
/* 0CB958 8016AF18 8E0F0000 */   lw    $t7, ($s0)
/* 0CB95C 8016AF1C 0C002DAF */  jal   finish_current_thread
/* 0CB960 8016AF20 2404001E */   li    $a0, 30
/* 0CB964 8016AF24 8E0F0000 */  lw    $t7, ($s0)
.L8016AF28_ovl3:
/* 0CB968 8016AF28 240E0003 */  li    $t6, 3
/* 0CB96C 8016AF2C 24040004 */  li    $a0, 4
/* 0CB970 8016AF30 8DED0000 */  lw    $t5, ($t7)
/* 0CB974 8016AF34 000DC080 */  sll   $t8, $t5, 2
/* 0CB978 8016AF38 02386021 */  addu  $t4, $s1, $t8
/* 0CB97C 8016AF3C 0C002DAF */  jal   finish_current_thread
/* 0CB980 8016AF40 AD8E0000 */   sw    $t6, ($t4)
/* 0CB984 8016AF44 8E020000 */  lw    $v0, ($s0)
/* 0CB988 8016AF48 24190004 */  li    $t9, 4
/* 0CB98C 8016AF4C 3C01800E */  lui   $at, 0x800e
/* 0CB990 8016AF50 8C4F0000 */  lw    $t7, ($v0)
/* 0CB994 8016AF54 240E0023 */  li    $t6, 35
/* 0CB998 8016AF58 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CB99C 8016AF5C 000F6880 */  sll   $t5, $t7, 2
/* 0CB9A0 8016AF60 022DC021 */  addu  $t8, $s1, $t5
/* 0CB9A4 8016AF64 AF190000 */  sw    $t9, ($t8)
/* 0CB9A8 8016AF68 8C4C0000 */  lw    $t4, ($v0)
/* 0CB9AC 8016AF6C 3C0D800B */  lui   $t5, %hi(func_800B4954) # $t5, 0x800b
/* 0CB9B0 8016AF70 25AD4954 */  addiu $t5, %lo(func_800B4954) # addiu $t5, $t5, 0x4954
/* 0CB9B4 8016AF74 000C7880 */  sll   $t7, $t4, 2
/* 0CB9B8 8016AF78 002F0821 */  addu  $at, $at, $t7
/* 0CB9BC 8016AF7C AC2EDA90 */  sw    $t6, -0x2570($at)
/* 0CB9C0 8016AF80 8C590000 */  lw    $t9, ($v0)
/* 0CB9C4 8016AF84 3C01800E */  lui   $at, 0x800e
/* 0CB9C8 8016AF88 2484A980 */  addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CB9CC 8016AF8C 0019C080 */  sll   $t8, $t9, 2
/* 0CB9D0 8016AF90 00380821 */  addu  $at, $at, $t8
/* 0CB9D4 8016AF94 AC2DEF90 */  sw    $t5, -0x1070($at)
/* 0CB9D8 8016AF98 8C4C0000 */  lw    $t4, ($v0)
/* 0CB9DC 8016AF9C 3C01800F */  lui   $at, 0x800f
/* 0CB9E0 8016AFA0 000C7080 */  sll   $t6, $t4, 2
/* 0CB9E4 8016AFA4 002E0821 */  addu  $at, $at, $t6
/* 0CB9E8 8016AFA8 0C068CBB */  jal   func_801A32EC_ovl3
/* 0CB9EC 8016AFAC AC208920 */   sw    $zero, -0x76e0($at)
/* 0CB9F0 8016AFB0 8E020000 */  lw    $v0, ($s0)
/* 0CB9F4 8016AFB4 3C0F800E */  lui   $t7, 0x800e
/* 0CB9F8 8016AFB8 3C07800E */  lui   $a3, %hi(D_800E5F90) # $a3, 0x800e
/* 0CB9FC 8016AFBC 8C430000 */  lw    $v1, ($v0)
/* 0CBA00 8016AFC0 24E75F90 */  addiu $a3, %lo(D_800E5F90) # addiu $a3, $a3, 0x5f90
/* 0CBA04 8016AFC4 3C01800E */  lui   $at, 0x800e
/* 0CBA08 8016AFC8 00031880 */  sll   $v1, $v1, 2
/* 0CBA0C 8016AFCC 01E37821 */  addu  $t7, $t7, $v1
/* 0CBA10 8016AFD0 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0CBA14 8016AFD4 00230821 */  addu  $at, $at, $v1
/* 0CBA18 8016AFD8 3C08800E */  lui   $t0, %hi(D_800E6BD0) # $t0, 0x800e
/* 0CBA1C 8016AFDC 000FC880 */  sll   $t9, $t7, 2
/* 0CBA20 8016AFE0 00F96821 */  addu  $t5, $a3, $t9
/* 0CBA24 8016AFE4 8DA60000 */  lw    $a2, ($t5)
/* 0CBA28 8016AFE8 3C0F800E */  lui   $t7, 0x800e
/* 0CBA2C 8016AFEC 25086BD0 */  addiu $t0, %lo(D_800E6BD0) # addiu $t0, $t0, 0x6bd0
/* 0CBA30 8016AFF0 AC266150 */  sw    $a2, 0x6150($at)
/* 0CBA34 8016AFF4 8C580000 */  lw    $t8, ($v0)
/* 0CBA38 8016AFF8 3C01800E */  lui   $at, 0x800e
/* 0CBA3C 8016AFFC 24040007 */  li    $a0, 7
/* 0CBA40 8016B000 00186080 */  sll   $t4, $t8, 2
/* 0CBA44 8016B004 00EC7021 */  addu  $t6, $a3, $t4
/* 0CBA48 8016B008 ADC60000 */  sw    $a2, ($t6)
/* 0CBA4C 8016B00C 8C430000 */  lw    $v1, ($v0)
/* 0CBA50 8016B010 00002825 */  move  $a1, $zero
/* 0CBA54 8016B014 00031880 */  sll   $v1, $v1, 2
/* 0CBA58 8016B018 01E37821 */  addu  $t7, $t7, $v1
/* 0CBA5C 8016B01C 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0CBA60 8016B020 00230821 */  addu  $at, $at, $v1
/* 0CBA64 8016B024 000FC880 */  sll   $t9, $t7, 2
/* 0CBA68 8016B028 01196821 */  addu  $t5, $t0, $t9
/* 0CBA6C 8016B02C C5A00000 */  lwc1  $f0, ($t5)
/* 0CBA70 8016B030 E4206D90 */  swc1  $f0, 0x6d90($at)
/* 0CBA74 8016B034 8C580000 */  lw    $t8, ($v0)
/* 0CBA78 8016B038 00186080 */  sll   $t4, $t8, 2
/* 0CBA7C 8016B03C 010C7021 */  addu  $t6, $t0, $t4
/* 0CBA80 8016B040 0C02ED1A */  jal   func_800BB468
/* 0CBA84 8016B044 E5C00000 */   swc1  $f0, ($t6)
/* 0CBA88 8016B048 8E020000 */  lw    $v0, ($s0)
/* 0CBA8C 8016B04C 3C0F800E */  lui   $t7, 0x800e
/* 0CBA90 8016B050 8C430000 */  lw    $v1, ($v0)
/* 0CBA94 8016B054 00031880 */  sll   $v1, $v1, 2
/* 0CBA98 8016B058 01E37821 */  addu  $t7, $t7, $v1
/* 0CBA9C 8016B05C 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 0CBAA0 8016B060 000FC880 */  sll   $t9, $t7, 2
/* 0CBAA4 8016B064 02396821 */  addu  $t5, $s1, $t9
/* 0CBAA8 8016B068 8DB80000 */  lw    $t8, ($t5)
/* 0CBAAC 8016B06C 2F010008 */  sltiu $at, $t8, 8
/* 0CBAB0 8016B070 102000B7 */  beqz  $at, .L8016B350_ovl3
/* 0CBAB4 8016B074 0018C080 */   sll   $t8, $t8, 2
/* 0CBAB8 8016B078 3C018019 */  lui   $at, 0x8019
/* 0CBABC 8016B07C 00380821 */  addu  $at, $at, $t8
/* 0CBAC0 8016B080 8C387230 */  lw    $t8, 0x7230($at)
/* 0CBAC4 8016B084 03000008 */  jr    $t8
/* 0CBAC8 8016B088 00000000 */   nop   
/* 0CBACC 8016B08C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBAD0 8016B090 44812000 */  mtc1  $at, $f4
/* 0CBAD4 8016B094 3C01800E */  lui   $at, 0x800e
/* 0CBAD8 8016B098 00230821 */  addu  $at, $at, $v1
/* 0CBADC 8016B09C 100000AC */  b     .L8016B350_ovl3
/* 0CBAE0 8016B0A0 E4243210 */   swc1  $f4, 0x3210($at)
/* 0CBAE4 8016B0A4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBAE8 8016B0A8 44816000 */  mtc1  $at, $f12
/* 0CBAEC 8016B0AC 0C00CAC8 */  jal   sqrtf
/* 0CBAF0 8016B0B0 00000000 */   nop   
/* 0CBAF4 8016B0B4 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBAF8 8016B0B8 44813000 */  mtc1  $at, $f6
/* 0CBAFC 8016B0BC 8E0C0000 */  lw    $t4, ($s0)
/* 0CBB00 8016B0C0 3C01800E */  lui   $at, 0x800e
/* 0CBB04 8016B0C4 46003203 */  div.s $f8, $f6, $f0
/* 0CBB08 8016B0C8 8D8E0000 */  lw    $t6, ($t4)
/* 0CBB0C 8016B0CC 000E7880 */  sll   $t7, $t6, 2
/* 0CBB10 8016B0D0 002F0821 */  addu  $at, $at, $t7
/* 0CBB14 8016B0D4 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 0CBB18 8016B0D8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBB1C 8016B0DC 44816000 */  mtc1  $at, $f12
/* 0CBB20 8016B0E0 0C00CAC8 */  jal   sqrtf
/* 0CBB24 8016B0E4 00000000 */   nop   
/* 0CBB28 8016B0E8 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBB2C 8016B0EC 44815000 */  mtc1  $at, $f10
/* 0CBB30 8016B0F0 8E020000 */  lw    $v0, ($s0)
/* 0CBB34 8016B0F4 3C01800E */  lui   $at, 0x800e
/* 0CBB38 8016B0F8 46005483 */  div.s $f18, $f10, $f0
/* 0CBB3C 8016B0FC 8C590000 */  lw    $t9, ($v0)
/* 0CBB40 8016B100 00196880 */  sll   $t5, $t9, 2
/* 0CBB44 8016B104 002D0821 */  addu  $at, $at, $t5
/* 0CBB48 8016B108 E4323210 */  swc1  $f18, 0x3210($at)
/* 0CBB4C 8016B10C 8C580000 */  lw    $t8, ($v0)
/* 0CBB50 8016B110 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CBB54 8016B114 44812000 */  mtc1  $at, $f4
/* 0CBB58 8016B118 3C01800E */  lui   $at, 0x800e
/* 0CBB5C 8016B11C 00186080 */  sll   $t4, $t8, 2
/* 0CBB60 8016B120 002C0821 */  addu  $at, $at, $t4
/* 0CBB64 8016B124 1000008A */  b     .L8016B350_ovl3
/* 0CBB68 8016B128 E4246A10 */   swc1  $f4, 0x6a10($at)
/* 0CBB6C 8016B12C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBB70 8016B130 44813000 */  mtc1  $at, $f6
/* 0CBB74 8016B134 3C01800E */  lui   $at, 0x800e
/* 0CBB78 8016B138 00230821 */  addu  $at, $at, $v1
/* 0CBB7C 8016B13C E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0CBB80 8016B140 8C4E0000 */  lw    $t6, ($v0)
/* 0CBB84 8016B144 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CBB88 8016B148 44814000 */  mtc1  $at, $f8
/* 0CBB8C 8016B14C 3C01800E */  lui   $at, 0x800e
/* 0CBB90 8016B150 000E7880 */  sll   $t7, $t6, 2
/* 0CBB94 8016B154 002F0821 */  addu  $at, $at, $t7
/* 0CBB98 8016B158 1000007D */  b     .L8016B350_ovl3
/* 0CBB9C 8016B15C E4286A10 */   swc1  $f8, 0x6a10($at)
/* 0CBBA0 8016B160 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBBA4 8016B164 44816000 */  mtc1  $at, $f12
/* 0CBBA8 8016B168 0C00CAC8 */  jal   sqrtf
/* 0CBBAC 8016B16C 00000000 */   nop   
/* 0CBBB0 8016B170 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBBB4 8016B174 44815000 */  mtc1  $at, $f10
/* 0CBBB8 8016B178 8E190000 */  lw    $t9, ($s0)
/* 0CBBBC 8016B17C 3C01800E */  lui   $at, 0x800e
/* 0CBBC0 8016B180 46005483 */  div.s $f18, $f10, $f0
/* 0CBBC4 8016B184 8F2D0000 */  lw    $t5, ($t9)
/* 0CBBC8 8016B188 000DC080 */  sll   $t8, $t5, 2
/* 0CBBCC 8016B18C 00380821 */  addu  $at, $at, $t8
/* 0CBBD0 8016B190 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 0CBBD4 8016B194 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBBD8 8016B198 44816000 */  mtc1  $at, $f12
/* 0CBBDC 8016B19C 0C00CAC8 */  jal   sqrtf
/* 0CBBE0 8016B1A0 00000000 */   nop   
/* 0CBBE4 8016B1A4 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBBE8 8016B1A8 44812000 */  mtc1  $at, $f4
/* 0CBBEC 8016B1AC 8E020000 */  lw    $v0, ($s0)
/* 0CBBF0 8016B1B0 3C01800E */  lui   $at, 0x800e
/* 0CBBF4 8016B1B4 46002183 */  div.s $f6, $f4, $f0
/* 0CBBF8 8016B1B8 8C4C0000 */  lw    $t4, ($v0)
/* 0CBBFC 8016B1BC 000C7080 */  sll   $t6, $t4, 2
/* 0CBC00 8016B1C0 002E0821 */  addu  $at, $at, $t6
/* 0CBC04 8016B1C4 46003207 */  neg.s $f8, $f6
/* 0CBC08 8016B1C8 E4283210 */  swc1  $f8, 0x3210($at)
/* 0CBC0C 8016B1CC 8C4F0000 */  lw    $t7, ($v0)
/* 0CBC10 8016B1D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CBC14 8016B1D4 44815000 */  mtc1  $at, $f10
/* 0CBC18 8016B1D8 3C01800E */  lui   $at, 0x800e
/* 0CBC1C 8016B1DC 000FC880 */  sll   $t9, $t7, 2
/* 0CBC20 8016B1E0 00390821 */  addu  $at, $at, $t9
/* 0CBC24 8016B1E4 1000005A */  b     .L8016B350_ovl3
/* 0CBC28 8016B1E8 E42A6A10 */   swc1  $f10, 0x6a10($at)
/* 0CBC2C 8016B1EC 3C01C170 */  li    $at, 0xC1700000 # -15.000000
/* 0CBC30 8016B1F0 44819000 */  mtc1  $at, $f18
/* 0CBC34 8016B1F4 3C01800E */  lui   $at, 0x800e
/* 0CBC38 8016B1F8 00230821 */  addu  $at, $at, $v1
/* 0CBC3C 8016B1FC 10000054 */  b     .L8016B350_ovl3
/* 0CBC40 8016B200 E4323210 */   swc1  $f18, 0x3210($at)
/* 0CBC44 8016B204 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBC48 8016B208 44816000 */  mtc1  $at, $f12
/* 0CBC4C 8016B20C 0C00CAC8 */  jal   sqrtf
/* 0CBC50 8016B210 00000000 */   nop   
/* 0CBC54 8016B214 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBC58 8016B218 44812000 */  mtc1  $at, $f4
/* 0CBC5C 8016B21C 8E0D0000 */  lw    $t5, ($s0)
/* 0CBC60 8016B220 3C01800E */  lui   $at, 0x800e
/* 0CBC64 8016B224 46002183 */  div.s $f6, $f4, $f0
/* 0CBC68 8016B228 8DB80000 */  lw    $t8, ($t5)
/* 0CBC6C 8016B22C 00186080 */  sll   $t4, $t8, 2
/* 0CBC70 8016B230 002C0821 */  addu  $at, $at, $t4
/* 0CBC74 8016B234 46003207 */  neg.s $f8, $f6
/* 0CBC78 8016B238 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 0CBC7C 8016B23C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBC80 8016B240 44816000 */  mtc1  $at, $f12
/* 0CBC84 8016B244 0C00CAC8 */  jal   sqrtf
/* 0CBC88 8016B248 00000000 */   nop   
/* 0CBC8C 8016B24C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBC90 8016B250 44815000 */  mtc1  $at, $f10
/* 0CBC94 8016B254 8E020000 */  lw    $v0, ($s0)
/* 0CBC98 8016B258 3C01800E */  lui   $at, 0x800e
/* 0CBC9C 8016B25C 46005483 */  div.s $f18, $f10, $f0
/* 0CBCA0 8016B260 8C4E0000 */  lw    $t6, ($v0)
/* 0CBCA4 8016B264 000E7880 */  sll   $t7, $t6, 2
/* 0CBCA8 8016B268 002F0821 */  addu  $at, $at, $t7
/* 0CBCAC 8016B26C 46009107 */  neg.s $f4, $f18
/* 0CBCB0 8016B270 E4243210 */  swc1  $f4, 0x3210($at)
/* 0CBCB4 8016B274 8C590000 */  lw    $t9, ($v0)
/* 0CBCB8 8016B278 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CBCBC 8016B27C 44813000 */  mtc1  $at, $f6
/* 0CBCC0 8016B280 3C01800E */  lui   $at, 0x800e
/* 0CBCC4 8016B284 00196880 */  sll   $t5, $t9, 2
/* 0CBCC8 8016B288 002D0821 */  addu  $at, $at, $t5
/* 0CBCCC 8016B28C 10000030 */  b     .L8016B350_ovl3
/* 0CBCD0 8016B290 E4266A10 */   swc1  $f6, 0x6a10($at)
/* 0CBCD4 8016B294 3C01C170 */  li    $at, 0xC1700000 # -15.000000
/* 0CBCD8 8016B298 44814000 */  mtc1  $at, $f8
/* 0CBCDC 8016B29C 3C01800E */  lui   $at, 0x800e
/* 0CBCE0 8016B2A0 00230821 */  addu  $at, $at, $v1
/* 0CBCE4 8016B2A4 E42864D0 */  swc1  $f8, 0x64d0($at)
/* 0CBCE8 8016B2A8 8C580000 */  lw    $t8, ($v0)
/* 0CBCEC 8016B2AC 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CBCF0 8016B2B0 44815000 */  mtc1  $at, $f10
/* 0CBCF4 8016B2B4 3C01800E */  lui   $at, 0x800e
/* 0CBCF8 8016B2B8 00186080 */  sll   $t4, $t8, 2
/* 0CBCFC 8016B2BC 002C0821 */  addu  $at, $at, $t4
/* 0CBD00 8016B2C0 10000023 */  b     .L8016B350_ovl3
/* 0CBD04 8016B2C4 E42A6A10 */   swc1  $f10, 0x6a10($at)
/* 0CBD08 8016B2C8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBD0C 8016B2CC 44816000 */  mtc1  $at, $f12
/* 0CBD10 8016B2D0 0C00CAC8 */  jal   sqrtf
/* 0CBD14 8016B2D4 00000000 */   nop   
/* 0CBD18 8016B2D8 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBD1C 8016B2DC 44819000 */  mtc1  $at, $f18
/* 0CBD20 8016B2E0 8E0E0000 */  lw    $t6, ($s0)
/* 0CBD24 8016B2E4 3C01800E */  lui   $at, 0x800e
/* 0CBD28 8016B2E8 46009103 */  div.s $f4, $f18, $f0
/* 0CBD2C 8016B2EC 8DCF0000 */  lw    $t7, ($t6)
/* 0CBD30 8016B2F0 000FC880 */  sll   $t9, $t7, 2
/* 0CBD34 8016B2F4 00390821 */  addu  $at, $at, $t9
/* 0CBD38 8016B2F8 46002187 */  neg.s $f6, $f4
/* 0CBD3C 8016B2FC E42664D0 */  swc1  $f6, 0x64d0($at)
/* 0CBD40 8016B300 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 0CBD44 8016B304 44816000 */  mtc1  $at, $f12
/* 0CBD48 8016B308 0C00CAC8 */  jal   sqrtf
/* 0CBD4C 8016B30C 00000000 */   nop   
/* 0CBD50 8016B310 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 0CBD54 8016B314 44814000 */  mtc1  $at, $f8
/* 0CBD58 8016B318 8E020000 */  lw    $v0, ($s0)
/* 0CBD5C 8016B31C 3C01800E */  lui   $at, 0x800e
/* 0CBD60 8016B320 46004283 */  div.s $f10, $f8, $f0
/* 0CBD64 8016B324 8C4D0000 */  lw    $t5, ($v0)
/* 0CBD68 8016B328 000DC080 */  sll   $t8, $t5, 2
/* 0CBD6C 8016B32C 00380821 */  addu  $at, $at, $t8
/* 0CBD70 8016B330 E42A3210 */  swc1  $f10, 0x3210($at)
/* 0CBD74 8016B334 8C4C0000 */  lw    $t4, ($v0)
/* 0CBD78 8016B338 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 0CBD7C 8016B33C 44819000 */  mtc1  $at, $f18
/* 0CBD80 8016B340 3C01800E */  lui   $at, 0x800e
/* 0CBD84 8016B344 000C7080 */  sll   $t6, $t4, 2
/* 0CBD88 8016B348 002E0821 */  addu  $at, $at, $t6
/* 0CBD8C 8016B34C E4326A10 */  swc1  $f18, 0x6a10($at)
.L8016B350_ovl3:
/* 0CBD90 8016B350 0C05AF00 */  jal   func_8016BC00_ovl3
/* 0CBD94 8016B354 00000000 */   nop   
/* 0CBD98 8016B358 8E020000 */  lw    $v0, ($s0)
/* 0CBD9C 8016B35C 24010004 */  li    $at, 4
/* 0CBDA0 8016B360 8C4F0000 */  lw    $t7, ($v0)
/* 0CBDA4 8016B364 000FC880 */  sll   $t9, $t7, 2
/* 0CBDA8 8016B368 02391821 */  addu  $v1, $s1, $t9
/* 0CBDAC 8016B36C 8C640000 */  lw    $a0, ($v1)
/* 0CBDB0 8016B370 5481000C */  bnel  $a0, $at, .L8016B3A4_ovl3
/* 0CBDB4 8016B374 24010006 */   li    $at, 6
.L8016B378_ovl3:
/* 0CBDB8 8016B378 0C002DAF */  jal   finish_current_thread
/* 0CBDBC 8016B37C 24040001 */   li    $a0, 1
/* 0CBDC0 8016B380 8E020000 */  lw    $v0, ($s0)
/* 0CBDC4 8016B384 24010004 */  li    $at, 4
/* 0CBDC8 8016B388 8C4D0000 */  lw    $t5, ($v0)
/* 0CBDCC 8016B38C 000DC080 */  sll   $t8, $t5, 2
/* 0CBDD0 8016B390 02381821 */  addu  $v1, $s1, $t8
/* 0CBDD4 8016B394 8C640000 */  lw    $a0, ($v1)
/* 0CBDD8 8016B398 1081FFF7 */  beq   $a0, $at, .L8016B378_ovl3
/* 0CBDDC 8016B39C 00000000 */   nop   
/* 0CBDE0 8016B3A0 24010006 */  li    $at, 6
.L8016B3A4_ovl3:
/* 0CBDE4 8016B3A4 10810012 */  beq   $a0, $at, .L8016B3F0_ovl3
/* 0CBDE8 8016B3A8 240C0002 */   li    $t4, 2
/* 0CBDEC 8016B3AC 240C0005 */  li    $t4, 5
/* 0CBDF0 8016B3B0 AC6C0000 */  sw    $t4, ($v1)
/* 0CBDF4 8016B3B4 8C4F0000 */  lw    $t7, ($v0)
/* 0CBDF8 8016B3B8 3C0E800B */  lui   $t6, %hi(D_800B531C) # $t6, 0x800b
/* 0CBDFC 8016B3BC 3C01800E */  lui   $at, 0x800e
/* 0CBE00 8016B3C0 000FC880 */  sll   $t9, $t7, 2
/* 0CBE04 8016B3C4 00390821 */  addu  $at, $at, $t9
/* 0CBE08 8016B3C8 25CE531C */  addiu $t6, %lo(D_800B531C) # addiu $t6, $t6, 0x531c
/* 0CBE0C 8016B3CC AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0CBE10 8016B3D0 8C4D0000 */  lw    $t5, ($v0)
/* 0CBE14 8016B3D4 3C01800F */  lui   $at, 0x800f
/* 0CBE18 8016B3D8 000DC080 */  sll   $t8, $t5, 2
/* 0CBE1C 8016B3DC 00380821 */  addu  $at, $at, $t8
/* 0CBE20 8016B3E0 0C02BE85 */  jal   func_800AFA14
/* 0CBE24 8016B3E4 AC208920 */   sw    $zero, -0x76e0($at)
/* 0CBE28 8016B3E8 10000005 */  b     .L8016B400_ovl3
/* 0CBE2C 8016B3EC 8FBF001C */   lw    $ra, 0x1c($sp)
.L8016B3F0_ovl3:
/* 0CBE30 8016B3F0 3C01800C */  lui   $at, %hi(D_800BE4F8) # $at, 0x800c
/* 0CBE34 8016B3F4 0C02BE85 */  jal   func_800AFA14
/* 0CBE38 8016B3F8 AC2CE4F8 */   sw    $t4, %lo(D_800BE4F8)($at)
/* 0CBE3C 8016B3FC 8FBF001C */  lw    $ra, 0x1c($sp)
.L8016B400_ovl3:
/* 0CBE40 8016B400 8FB00014 */  lw    $s0, 0x14($sp)
/* 0CBE44 8016B404 8FB10018 */  lw    $s1, 0x18($sp)
/* 0CBE48 8016B408 03E00008 */  jr    $ra
/* 0CBE4C 8016B40C 27BD0020 */   addiu $sp, $sp, 0x20

.type func_8016AAA4_ovl3, @function
.size func_8016AAA4_ovl3, . - func_8016AAA4_ovl3

glabel func_8016B410_ovl3
/* 0CBE50 8016B410 3C0E800C */  lui   $t6, %hi(D_800BE500) # $t6, 0x800c
/* 0CBE54 8016B414 8DCEE500 */  lw    $t6, %lo(D_800BE500)($t6)
/* 0CBE58 8016B418 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CBE5C 8016B41C 24010004 */  li    $at, 4
/* 0CBE60 8016B420 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CBE64 8016B424 15C10015 */  bne   $t6, $at, .L8016B47C_ovl3
/* 0CBE68 8016B428 AFA40018 */   sw    $a0, 0x18($sp)
/* 0CBE6C 8016B42C 3C0F800C */  lui   $t7, %hi(D_800BE504) # $t7, 0x800c
/* 0CBE70 8016B430 8DEFE504 */  lw    $t7, %lo(D_800BE504)($t7)
/* 0CBE74 8016B434 24010001 */  li    $at, 1
/* 0CBE78 8016B438 3C18800C */  lui   $t8, %hi(D_800BE508) # $t8, 0x800c
/* 0CBE7C 8016B43C 15E1000F */  bne   $t7, $at, .L8016B47C_ovl3
/* 0CBE80 8016B440 00000000 */   nop   
/* 0CBE84 8016B444 8F18E508 */  lw    $t8, %lo(D_800BE508)($t8)
/* 0CBE88 8016B448 3C028013 */  lui   $v0, %hi(D_801292B0) # $v0, 0x8013
/* 0CBE8C 8016B44C 3C01800E */  lui   $at, %hi(gEntitiesNextPosXArray) # $at, 0x800e
/* 0CBE90 8016B450 1700000A */  bnez  $t8, .L8016B47C_ovl3
/* 0CBE94 8016B454 00000000 */   nop   
/* 0CBE98 8016B458 C42425D0 */  lwc1  $f4, %lo(gEntitiesNextPosXArray)($at)
/* 0CBE9C 8016B45C 244292B0 */  addiu $v0, %lo(D_801292B0) # addiu $v0, $v0, -0x6d50
/* 0CBEA0 8016B460 3C01800E */  lui   $at, %hi(gEntitiesNextPosYArray) # $at, 0x800e
/* 0CBEA4 8016B464 E4440000 */  swc1  $f4, ($v0)
/* 0CBEA8 8016B468 C4262790 */  lwc1  $f6, %lo(gEntitiesNextPosYArray)($at)
/* 0CBEAC 8016B46C 3C01800E */  lui   $at, %hi(gEntitiesNextPosZArray) # $at, 0x800e
/* 0CBEB0 8016B470 E4460004 */  swc1  $f6, 4($v0)
/* 0CBEB4 8016B474 C4282950 */  lwc1  $f8, %lo(gEntitiesNextPosZArray)($at)
/* 0CBEB8 8016B478 E4480008 */  swc1  $f8, 8($v0)
.L8016B47C_ovl3:
/* 0CBEBC 8016B47C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0CBEC0 8016B480 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0CBEC4 8016B484 3C19800F */  lui   $t9, 0x800f
/* 0CBEC8 8016B488 8C620000 */  lw    $v0, ($v1)
/* 0CBECC 8016B48C 00021080 */  sll   $v0, $v0, 2
/* 0CBED0 8016B490 0322C821 */  addu  $t9, $t9, $v0
/* 0CBED4 8016B494 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 0CBED8 8016B498 2F210007 */  sltiu $at, $t9, 7
/* 0CBEDC 8016B49C 102000A5 */  beqz  $at, .L8016B734_ovl3
/* 0CBEE0 8016B4A0 0019C880 */   sll   $t9, $t9, 2
/* 0CBEE4 8016B4A4 3C018019 */  lui   $at, 0x8019
/* 0CBEE8 8016B4A8 00390821 */  addu  $at, $at, $t9
/* 0CBEEC 8016B4AC 8C397250 */  lw    $t9, 0x7250($at)
/* 0CBEF0 8016B4B0 03200008 */  jr    $t9
/* 0CBEF4 8016B4B4 00000000 */   nop   
/* 0CBEF8 8016B4B8 3C09800E */  lui   $t1, %hi(gEntitiesNextPosXArray) # $t1, 0x800e
/* 0CBEFC 8016B4BC 252925D0 */  addiu $t1, %lo(gEntitiesNextPosXArray) # addiu $t1, $t1, 0x25d0
/* 0CBF00 8016B4C0 3C01800F */  lui   $at, 0x800f
/* 0CBF04 8016B4C4 00220821 */  addu  $at, $at, $v0
/* 0CBF08 8016B4C8 00492021 */  addu  $a0, $v0, $t1
/* 0CBF0C 8016B4CC C48A0000 */  lwc1  $f10, ($a0)
/* 0CBF10 8016B4D0 C430A6E0 */  lwc1  $f16, -0x5920($at)
/* 0CBF14 8016B4D4 3C0A800E */  lui   $t2, %hi(gEntitiesNextPosYArray) # $t2, 0x800e
/* 0CBF18 8016B4D8 254A2790 */  addiu $t2, %lo(gEntitiesNextPosYArray) # addiu $t2, $t2, 0x2790
/* 0CBF1C 8016B4DC 46105480 */  add.s $f18, $f10, $f16
/* 0CBF20 8016B4E0 3C01800F */  lui   $at, 0x800f
/* 0CBF24 8016B4E4 3C0B800E */  lui   $t3, %hi(gEntitiesNextPosZArray) # $t3, 0x800e
/* 0CBF28 8016B4E8 256B2950 */  addiu $t3, %lo(gEntitiesNextPosZArray) # addiu $t3, $t3, 0x2950
/* 0CBF2C 8016B4EC E4920000 */  swc1  $f18, ($a0)
/* 0CBF30 8016B4F0 8C620000 */  lw    $v0, ($v1)
/* 0CBF34 8016B4F4 00021080 */  sll   $v0, $v0, 2
/* 0CBF38 8016B4F8 004A2821 */  addu  $a1, $v0, $t2
/* 0CBF3C 8016B4FC 00220821 */  addu  $at, $at, $v0
/* 0CBF40 8016B500 C426A8A0 */  lwc1  $f6, -0x5760($at)
/* 0CBF44 8016B504 C4A40000 */  lwc1  $f4, ($a1)
/* 0CBF48 8016B508 3C01800F */  lui   $at, 0x800f
/* 0CBF4C 8016B50C 46062200 */  add.s $f8, $f4, $f6
/* 0CBF50 8016B510 E4A80000 */  swc1  $f8, ($a1)
/* 0CBF54 8016B514 8C620000 */  lw    $v0, ($v1)
/* 0CBF58 8016B518 00021080 */  sll   $v0, $v0, 2
/* 0CBF5C 8016B51C 004B3021 */  addu  $a2, $v0, $t3
/* 0CBF60 8016B520 00220821 */  addu  $at, $at, $v0
/* 0CBF64 8016B524 C430AA60 */  lwc1  $f16, -0x55a0($at)
/* 0CBF68 8016B528 C4CA0000 */  lwc1  $f10, ($a2)
/* 0CBF6C 8016B52C 46105480 */  add.s $f18, $f10, $f16
/* 0CBF70 8016B530 10000080 */  b     .L8016B734_ovl3
/* 0CBF74 8016B534 E4D20000 */   swc1  $f18, ($a2)
/* 0CBF78 8016B538 3C04801D */  lui   $a0, %hi(D_801CB1FC) # $a0, 0x801d
/* 0CBF7C 8016B53C 0C068E4E */  jal   func_801A3938_ovl3
/* 0CBF80 8016B540 2484B1FC */   addiu $a0, %lo(D_801CB1FC) # addiu $a0, $a0, -0x4e04
/* 0CBF84 8016B544 3C04801A */  lui   $a0, %hi(D_801A38BC) # $a0, 0x801a
/* 0CBF88 8016B548 0C068DB3 */  jal   func_801A36CC_ovl3
/* 0CBF8C 8016B54C 248438BC */   addiu $a0, %lo(D_801A38BC) # addiu $a0, $a0, 0x38bc
/* 0CBF90 8016B550 3C04801D */  lui   $a0, %hi(D_801CA980) # $a0, 0x801d
/* 0CBF94 8016B554 0C068CEE */  jal   func_801A33B8_ovl3
/* 0CBF98 8016B558 2484A980 */   addiu $a0, %lo(D_801CA980) # addiu $a0, $a0, -0x5680
/* 0CBF9C 8016B55C 0C05ADD3 */  jal   func_8016B74C_ovl3
/* 0CBFA0 8016B560 00000000 */   nop   
/* 0CBFA4 8016B564 1040000A */  beqz  $v0, .L8016B590_ovl3
/* 0CBFA8 8016B568 3C068013 */   lui   $a2, %hi(D_8012BCA0) # $a2, 0x8013
/* 0CBFAC 8016B56C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0CBFB0 8016B570 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0CBFB4 8016B574 3C01800F */  lui   $at, 0x800f
/* 0CBFB8 8016B578 240C0006 */  li    $t4, 6
/* 0CBFBC 8016B57C 8DAE0000 */  lw    $t6, ($t5)
/* 0CBFC0 8016B580 000E7880 */  sll   $t7, $t6, 2
/* 0CBFC4 8016B584 002F0821 */  addu  $at, $at, $t7
/* 0CBFC8 8016B588 1000006A */  b     .L8016B734_ovl3
/* 0CBFCC 8016B58C AC2C98E0 */   sw    $t4, -0x6720($at)
.L8016B590_ovl3:
/* 0CBFD0 8016B590 24C6BCA0 */  addiu $a2, %lo(D_8012BCA0) # addiu $a2, $a2, -0x4360
/* 0CBFD4 8016B594 8CC20000 */  lw    $v0, ($a2)
/* 0CBFD8 8016B598 3C04801D */  lui   $a0, 0x801d
/* 0CBFDC 8016B59C 000214C2 */  srl   $v0, $v0, 0x13
/* 0CBFE0 8016B5A0 30580FFF */  andi  $t8, $v0, 0xfff
/* 0CBFE4 8016B5A4 1300004A */  beqz  $t8, .L8016B6D0_ovl3
/* 0CBFE8 8016B5A8 305901C0 */   andi  $t9, $v0, 0x1c0
/* 0CBFEC 8016B5AC 13200016 */  beqz  $t9, .L8016B608_ovl3
/* 0CBFF0 8016B5B0 00000000 */   nop   
/* 0CBFF4 8016B5B4 8CC20014 */  lw    $v0, 0x14($a2)
/* 0CBFF8 8016B5B8 10400013 */  beqz  $v0, .L8016B608_ovl3
/* 0CBFFC 8016B5BC 00000000 */   nop   
/* 0CC000 8016B5C0 94430012 */  lhu   $v1, 0x12($v0)
/* 0CC004 8016B5C4 24010004 */  li    $at, 4
/* 0CC008 8016B5C8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0CC00C 8016B5CC 10610003 */  beq   $v1, $at, .L8016B5DC_ovl3
/* 0CC010 8016B5D0 24010005 */   li    $at, 5
/* 0CC014 8016B5D4 1461000C */  bne   $v1, $at, .L8016B608_ovl3
/* 0CC018 8016B5D8 00000000 */   nop   
.L8016B5DC_ovl3:
/* 0CC01C 8016B5DC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0CC020 8016B5E0 3C04800E */  lui   $a0, 0x800e
/* 0CC024 8016B5E4 3C058017 */  lui   $a1, %hi(D_8016B9D4) # $a1, 0x8017
/* 0CC028 8016B5E8 8D2A0000 */  lw    $t2, ($t1)
/* 0CC02C 8016B5EC 24A5B9D4 */  addiu $a1, %lo(D_8016B9D4) # addiu $a1, $a1, -0x462c
/* 0CC030 8016B5F0 000A5880 */  sll   $t3, $t2, 2
/* 0CC034 8016B5F4 008B2021 */  addu  $a0, $a0, $t3
/* 0CC038 8016B5F8 0C02C7B2 */  jal   assign_new_process_entry
/* 0CC03C 8016B5FC 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0CC040 8016B600 1000004F */  b     .L8016B740_ovl3
/* 0CC044 8016B604 8FBF0014 */   lw    $ra, 0x14($sp)
.L8016B608_ovl3:
/* 0CC048 8016B608 0C029D9E */  jal   play_sound
/* 0CC04C 8016B60C 240400D7 */   li    $a0, 215
/* 0CC050 8016B610 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 0CC054 8016B614 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 0CC058 8016B618 3C018019 */  lui   $at, %hi(D_8019726C) # $at, 0x8019
/* 0CC05C 8016B61C C420726C */  lwc1  $f0, %lo(D_8019726C)($at)
/* 0CC060 8016B620 8C6E0000 */  lw    $t6, ($v1)
/* 0CC064 8016B624 3C01800F */  lui   $at, 0x800f
/* 0CC068 8016B628 240D0005 */  li    $t5, 5
/* 0CC06C 8016B62C 000E6080 */  sll   $t4, $t6, 2
/* 0CC070 8016B630 002C0821 */  addu  $at, $at, $t4
/* 0CC074 8016B634 AC2D98E0 */  sw    $t5, -0x6720($at)
/* 0CC078 8016B638 8C6F0000 */  lw    $t7, ($v1)
/* 0CC07C 8016B63C 3C07800E */  lui   $a3, %hi(D_800E64D0) # $a3, 0x800e
/* 0CC080 8016B640 24E764D0 */  addiu $a3, %lo(D_800E64D0) # addiu $a3, $a3, 0x64d0
/* 0CC084 8016B644 000FC080 */  sll   $t8, $t7, 2
/* 0CC088 8016B648 00F82021 */  addu  $a0, $a3, $t8
/* 0CC08C 8016B64C C4840000 */  lwc1  $f4, ($a0)
/* 0CC090 8016B650 3C08800E */  lui   $t0, %hi(D_800E3210) # $t0, 0x800e
/* 0CC094 8016B654 25083210 */  addiu $t0, %lo(D_800E3210) # addiu $t0, $t0, 0x3210
/* 0CC098 8016B658 46002182 */  mul.s $f6, $f4, $f0
/* 0CC09C 8016B65C 3C068013 */  lui   $a2, %hi(D_8012BCA0) # $a2, 0x8013
/* 0CC0A0 8016B660 24C6BCA0 */  addiu $a2, %lo(D_8012BCA0) # addiu $a2, $a2, -0x4360
/* 0CC0A4 8016B664 8CC20000 */  lw    $v0, ($a2)
/* 0CC0A8 8016B668 000214C2 */  srl   $v0, $v0, 0x13
/* 0CC0AC 8016B66C E4860000 */  swc1  $f6, ($a0)
/* 0CC0B0 8016B670 8C790000 */  lw    $t9, ($v1)
/* 0CC0B4 8016B674 304A003F */  andi  $t2, $v0, 0x3f
/* 0CC0B8 8016B678 304D0FC0 */  andi  $t5, $v0, 0xfc0
/* 0CC0BC 8016B67C 00194880 */  sll   $t1, $t9, 2
/* 0CC0C0 8016B680 01092821 */  addu  $a1, $t0, $t1
/* 0CC0C4 8016B684 C4A80000 */  lwc1  $f8, ($a1)
/* 0CC0C8 8016B688 46004282 */  mul.s $f10, $f8, $f0
/* 0CC0CC 8016B68C 11400007 */  beqz  $t2, .L8016B6AC_ovl3
/* 0CC0D0 8016B690 E4AA0000 */   swc1  $f10, ($a1)
/* 0CC0D4 8016B694 8C6B0000 */  lw    $t3, ($v1)
/* 0CC0D8 8016B698 000B7080 */  sll   $t6, $t3, 2
/* 0CC0DC 8016B69C 00EE2021 */  addu  $a0, $a3, $t6
/* 0CC0E0 8016B6A0 C4900000 */  lwc1  $f16, ($a0)
/* 0CC0E4 8016B6A4 46008487 */  neg.s $f18, $f16
/* 0CC0E8 8016B6A8 E4920000 */  swc1  $f18, ($a0)
.L8016B6AC_ovl3:
/* 0CC0EC 8016B6AC 11A00021 */  beqz  $t5, .L8016B734_ovl3
/* 0CC0F0 8016B6B0 00000000 */   nop   
/* 0CC0F4 8016B6B4 8C6C0000 */  lw    $t4, ($v1)
/* 0CC0F8 8016B6B8 000C7880 */  sll   $t7, $t4, 2
/* 0CC0FC 8016B6BC 010F2821 */  addu  $a1, $t0, $t7
/* 0CC100 8016B6C0 C4A40000 */  lwc1  $f4, ($a1)
/* 0CC104 8016B6C4 46002187 */  neg.s $f6, $f4
/* 0CC108 8016B6C8 1000001A */  b     .L8016B734_ovl3
/* 0CC10C 8016B6CC E4A60000 */   swc1  $f6, ($a1)
.L8016B6D0_ovl3:
/* 0CC110 8016B6D0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0CC114 8016B6D4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0CC118 8016B6D8 2484A840 */  addiu $a0, $a0, -0x57c0
/* 0CC11C 8016B6DC 0C04455D */  jal   func_80111574
/* 0CC120 8016B6E0 8F050000 */   lw    $a1, ($t8)
/* 0CC124 8016B6E4 0C044713 */  jal   func_80111C4C
/* 0CC128 8016B6E8 00402025 */   move  $a0, $v0
/* 0CC12C 8016B6EC 10000011 */  b     .L8016B734_ovl3
/* 0CC130 8016B6F0 00000000 */   nop   
/* 0CC134 8016B6F4 3C01800E */  lui   $at, 0x800e
/* 0CC138 8016B6F8 00220821 */  addu  $at, $at, $v0
/* 0CC13C 8016B6FC C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 0CC140 8016B700 3C018019 */  lui   $at, %hi(D_80197270) # $at, 0x8019
/* 0CC144 8016B704 C42A7270 */  lwc1  $f10, %lo(D_80197270)($at)
/* 0CC148 8016B708 3C01800E */  lui   $at, 0x800e
/* 0CC14C 8016B70C 00220821 */  addu  $at, $at, $v0
/* 0CC150 8016B710 460A4002 */  mul.s $f0, $f8, $f10
/* 0CC154 8016B714 24040001 */  li    $a0, 1
/* 0CC158 8016B718 E42017D0 */  swc1  $f0, 0x17d0($at)
/* 0CC15C 8016B71C 8C790000 */  lw    $t9, ($v1)
/* 0CC160 8016B720 3C01800E */  lui   $at, 0x800e
/* 0CC164 8016B724 00194880 */  sll   $t1, $t9, 2
/* 0CC168 8016B728 00290821 */  addu  $at, $at, $t1
/* 0CC16C 8016B72C 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CC170 8016B730 E42041D0 */   swc1  $f0, 0x41d0($at)
.L8016B734_ovl3:
/* 0CC174 8016B734 0C05A5BC */  jal   func_801696F0_ovl3
/* 0CC178 8016B738 8FA40018 */   lw    $a0, 0x18($sp)
/* 0CC17C 8016B73C 8FBF0014 */  lw    $ra, 0x14($sp)
.L8016B740_ovl3:
/* 0CC180 8016B740 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CC184 8016B744 03E00008 */  jr    $ra
/* 0CC188 8016B748 00000000 */   nop   

.type func_8016B410_ovl3, @function
.size func_8016B410_ovl3, . - func_8016B410_ovl3

glabel func_8016B74C_ovl3
/* 0CC18C 8016B74C 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0CC190 8016B750 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0CC194 8016B754 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0CC198 8016B758 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CC19C 8016B75C 8DCF0000 */  lw    $t7, ($t6)
/* 0CC1A0 8016B760 3C04800E */  lui   $a0, 0x800e
/* 0CC1A4 8016B764 000FC080 */  sll   $t8, $t7, 2
/* 0CC1A8 8016B768 00982021 */  addu  $a0, $a0, $t8
/* 0CC1AC 8016B76C 0C03E50E */  jal   func_800F9438
/* 0CC1B0 8016B770 8C845F90 */   lw    $a0, 0x5f90($a0)
/* 0CC1B4 8016B774 14400003 */  bnez  $v0, .L8016B784_ovl3
/* 0CC1B8 8016B778 00000000 */   nop   
/* 0CC1BC 8016B77C 10000091 */  b     .L8016B9C4_ovl3
/* 0CC1C0 8016B780 00001025 */   move  $v0, $zero
.L8016B784_ovl3:
/* 0CC1C4 8016B784 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC1C8 8016B788 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC1CC 8016B78C 3C05800E */  lui   $a1, 0x800e
/* 0CC1D0 8016B790 3C01800E */  lui   $at, 0x800e
/* 0CC1D4 8016B794 8C430000 */  lw    $v1, ($v0)
/* 0CC1D8 8016B798 24060001 */  li    $a2, 1
/* 0CC1DC 8016B79C 24070008 */  li    $a3, 8
/* 0CC1E0 8016B7A0 00031880 */  sll   $v1, $v1, 2
/* 0CC1E4 8016B7A4 00A32821 */  addu  $a1, $a1, $v1
/* 0CC1E8 8016B7A8 8CA50490 */  lw    $a1, 0x0490($a1)
/* 0CC1EC 8016B7AC 00230821 */  addu  $at, $at, $v1
/* 0CC1F0 8016B7B0 C4242B10 */  lwc1  $f4, 0x2b10($at)
/* 0CC1F4 8016B7B4 8CA40004 */  lw    $a0, 4($a1)
/* 0CC1F8 8016B7B8 3C01800E */  lui   $at, 0x800e
/* 0CC1FC 8016B7BC E7A40040 */  swc1  $f4, 0x40($sp)
/* 0CC200 8016B7C0 8C590000 */  lw    $t9, ($v0)
/* 0CC204 8016B7C4 C4880000 */  lwc1  $f8, ($a0)
/* 0CC208 8016B7C8 27A50034 */  addiu $a1, $sp, 0x34
/* 0CC20C 8016B7CC 00194080 */  sll   $t0, $t9, 2
/* 0CC210 8016B7D0 00280821 */  addu  $at, $at, $t0
/* 0CC214 8016B7D4 C4262CD0 */  lwc1  $f6, 0x2cd0($at)
/* 0CC218 8016B7D8 3C01800E */  lui   $at, 0x800e
/* 0CC21C 8016B7DC 46083280 */  add.s $f10, $f6, $f8
/* 0CC220 8016B7E0 E7AA0044 */  swc1  $f10, 0x44($sp)
/* 0CC224 8016B7E4 8C490000 */  lw    $t1, ($v0)
/* 0CC228 8016B7E8 00095080 */  sll   $t2, $t1, 2
/* 0CC22C 8016B7EC 002A0821 */  addu  $at, $at, $t2
/* 0CC230 8016B7F0 C4302E90 */  lwc1  $f16, 0x2e90($at)
/* 0CC234 8016B7F4 3C01800E */  lui   $at, 0x800e
/* 0CC238 8016B7F8 27A90030 */  addiu $t1, $sp, 0x30
/* 0CC23C 8016B7FC E7B00048 */  swc1  $f16, 0x48($sp)
/* 0CC240 8016B800 8C4B0000 */  lw    $t3, ($v0)
/* 0CC244 8016B804 000B6080 */  sll   $t4, $t3, 2
/* 0CC248 8016B808 002C0821 */  addu  $at, $at, $t4
/* 0CC24C 8016B80C C43225D0 */  lwc1  $f18, 0x25d0($at)
/* 0CC250 8016B810 3C01800E */  lui   $at, 0x800e
/* 0CC254 8016B814 E7B20034 */  swc1  $f18, 0x34($sp)
/* 0CC258 8016B818 8C4D0000 */  lw    $t5, ($v0)
/* 0CC25C 8016B81C C4860000 */  lwc1  $f6, ($a0)
/* 0CC260 8016B820 27A40040 */  addiu $a0, $sp, 0x40
/* 0CC264 8016B824 000D7080 */  sll   $t6, $t5, 2
/* 0CC268 8016B828 002E0821 */  addu  $at, $at, $t6
/* 0CC26C 8016B82C C4242790 */  lwc1  $f4, 0x2790($at)
/* 0CC270 8016B830 3C01800E */  lui   $at, 0x800e
/* 0CC274 8016B834 46062200 */  add.s $f8, $f4, $f6
/* 0CC278 8016B838 44802000 */  mtc1  $zero, $f4
/* 0CC27C 8016B83C E7A80038 */  swc1  $f8, 0x38($sp)
/* 0CC280 8016B840 8C4F0000 */  lw    $t7, ($v0)
/* 0CC284 8016B844 000FC080 */  sll   $t8, $t7, 2
/* 0CC288 8016B848 00380821 */  addu  $at, $at, $t8
/* 0CC28C 8016B84C C42A2950 */  lwc1  $f10, 0x2950($at)
/* 0CC290 8016B850 3C01800E */  lui   $at, 0x800e
/* 0CC294 8016B854 E7AA003C */  swc1  $f10, 0x3c($sp)
/* 0CC298 8016B858 8C430000 */  lw    $v1, ($v0)
/* 0CC29C 8016B85C 00031880 */  sll   $v1, $v1, 2
/* 0CC2A0 8016B860 00230821 */  addu  $at, $at, $v1
/* 0CC2A4 8016B864 C4306BD0 */  lwc1  $f16, 0x6bd0($at)
/* 0CC2A8 8016B868 3C01800E */  lui   $at, 0x800e
/* 0CC2AC 8016B86C 00230821 */  addu  $at, $at, $v1
/* 0CC2B0 8016B870 C4326D90 */  lwc1  $f18, 0x6d90($at)
/* 0CC2B4 8016B874 46128001 */  sub.s $f0, $f16, $f18
/* 0CC2B8 8016B878 46040032 */  c.eq.s $f0, $f4
/* 0CC2BC 8016B87C 00000000 */  nop   
/* 0CC2C0 8016B880 45010019 */  bc1t  .L8016B8E8_ovl3
/* 0CC2C4 8016B884 00000000 */   nop   
/* 0CC2C8 8016B888 44803000 */  mtc1  $zero, $f6
/* 0CC2CC 8016B88C 3C198013 */  lui   $t9, %hi(D_8012BCC0) # $t9, 0x8013
/* 0CC2D0 8016B890 3C088013 */  lui   $t0, %hi(D_8012BCCC) # $t0, 0x8013
/* 0CC2D4 8016B894 4600303C */  c.lt.s $f6, $f0
/* 0CC2D8 8016B898 00000000 */  nop   
/* 0CC2DC 8016B89C 45000004 */  bc1f  .L8016B8B0_ovl3
/* 0CC2E0 8016B8A0 00000000 */   nop   
/* 0CC2E4 8016B8A4 8F39BCC0 */  lw    $t9, %lo(D_8012BCC0)($t9)
/* 0CC2E8 8016B8A8 10000003 */  b     .L8016B8B8_ovl3
/* 0CC2EC 8016B8AC AFB90030 */   sw    $t9, 0x30($sp)
.L8016B8B0_ovl3:
/* 0CC2F0 8016B8B0 8D08BCCC */  lw    $t0, %lo(D_8012BCCC)($t0)
/* 0CC2F4 8016B8B4 AFA80030 */  sw    $t0, 0x30($sp)
.L8016B8B8_ovl3:
/* 0CC2F8 8016B8B8 0C0412AD */  jal   func_80104AB4
/* 0CC2FC 8016B8BC AFA90010 */   sw    $t1, 0x10($sp)
/* 0CC300 8016B8C0 10400009 */  beqz  $v0, .L8016B8E8_ovl3
/* 0CC304 8016B8C4 8FA40030 */   lw    $a0, 0x30($sp)
/* 0CC308 8016B8C8 0C043700 */  jal   func_8010DC00
/* 0CC30C 8016B8CC 27A5004C */   addiu $a1, $sp, 0x4c
/* 0CC310 8016B8D0 C7A80050 */  lwc1  $f8, 0x50($sp)
/* 0CC314 8016B8D4 44805000 */  mtc1  $zero, $f10
/* 0CC318 8016B8D8 00000000 */  nop   
/* 0CC31C 8016B8DC 460A4032 */  c.eq.s $f8, $f10
/* 0CC320 8016B8E0 00000000 */  nop   
/* 0CC324 8016B8E4 45010036 */  bc1t  .L8016B9C0_ovl3
.L8016B8E8_ovl3:
/* 0CC328 8016B8E8 3C0A8005 */   lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 0CC32C 8016B8EC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 0CC330 8016B8F0 3C01800E */  lui   $at, 0x800e
/* 0CC334 8016B8F4 44802000 */  mtc1  $zero, $f4
/* 0CC338 8016B8F8 8D430000 */  lw    $v1, ($t2)
/* 0CC33C 8016B8FC 27A40040 */  addiu $a0, $sp, 0x40
/* 0CC340 8016B900 27A50034 */  addiu $a1, $sp, 0x34
/* 0CC344 8016B904 00031880 */  sll   $v1, $v1, 2
/* 0CC348 8016B908 00230821 */  addu  $at, $at, $v1
/* 0CC34C 8016B90C C4302790 */  lwc1  $f16, 0x2790($at)
/* 0CC350 8016B910 3C01800E */  lui   $at, 0x800e
/* 0CC354 8016B914 00230821 */  addu  $at, $at, $v1
/* 0CC358 8016B918 C4322CD0 */  lwc1  $f18, 0x2cd0($at)
/* 0CC35C 8016B91C 24060001 */  li    $a2, 1
/* 0CC360 8016B920 24070008 */  li    $a3, 8
/* 0CC364 8016B924 46128001 */  sub.s $f0, $f16, $f18
/* 0CC368 8016B928 27AD0030 */  addiu $t5, $sp, 0x30
/* 0CC36C 8016B92C 46040032 */  c.eq.s $f0, $f4
/* 0CC370 8016B930 00000000 */  nop   
/* 0CC374 8016B934 45010020 */  bc1t  .L8016B9B8_ovl3
/* 0CC378 8016B938 00000000 */   nop   
/* 0CC37C 8016B93C 44803000 */  mtc1  $zero, $f6
/* 0CC380 8016B940 3C0B8013 */  lui   $t3, %hi(D_8012BCB4) # $t3, 0x8013
/* 0CC384 8016B944 3C0C8013 */  lui   $t4, %hi(D_8012BCA8) # $t4, 0x8013
/* 0CC388 8016B948 4600303C */  c.lt.s $f6, $f0
/* 0CC38C 8016B94C 00000000 */  nop   
/* 0CC390 8016B950 45000004 */  bc1f  .L8016B964_ovl3
/* 0CC394 8016B954 00000000 */   nop   
/* 0CC398 8016B958 8D6BBCB4 */  lw    $t3, %lo(D_8012BCB4)($t3)
/* 0CC39C 8016B95C 10000003 */  b     .L8016B96C_ovl3
/* 0CC3A0 8016B960 AFAB0030 */   sw    $t3, 0x30($sp)
.L8016B964_ovl3:
/* 0CC3A4 8016B964 8D8CBCA8 */  lw    $t4, %lo(D_8012BCA8)($t4)
/* 0CC3A8 8016B968 AFAC0030 */  sw    $t4, 0x30($sp)
.L8016B96C_ovl3:
/* 0CC3AC 8016B96C 0C0412AD */  jal   func_80104AB4
/* 0CC3B0 8016B970 AFAD0010 */   sw    $t5, 0x10($sp)
/* 0CC3B4 8016B974 10400010 */  beqz  $v0, .L8016B9B8_ovl3
/* 0CC3B8 8016B978 8FA40030 */   lw    $a0, 0x30($sp)
/* 0CC3BC 8016B97C 0C043700 */  jal   func_8010DC00
/* 0CC3C0 8016B980 27A5004C */   addiu $a1, $sp, 0x4c
/* 0CC3C4 8016B984 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 0CC3C8 8016B988 44805000 */  mtc1  $zero, $f10
/* 0CC3CC 8016B98C C7B00054 */  lwc1  $f16, 0x54($sp)
/* 0CC3D0 8016B990 460A4032 */  c.eq.s $f8, $f10
/* 0CC3D4 8016B994 00000000 */  nop   
/* 0CC3D8 8016B998 45000007 */  bc1f  .L8016B9B8_ovl3
/* 0CC3DC 8016B99C 00000000 */   nop   
/* 0CC3E0 8016B9A0 44809000 */  mtc1  $zero, $f18
/* 0CC3E4 8016B9A4 00000000 */  nop   
/* 0CC3E8 8016B9A8 46128032 */  c.eq.s $f16, $f18
/* 0CC3EC 8016B9AC 00000000 */  nop   
/* 0CC3F0 8016B9B0 45030004 */  bc1tl .L8016B9C4_ovl3
/* 0CC3F4 8016B9B4 24020001 */   li    $v0, 1
.L8016B9B8_ovl3:
/* 0CC3F8 8016B9B8 10000002 */  b     .L8016B9C4_ovl3
/* 0CC3FC 8016B9BC 00001025 */   move  $v0, $zero
.L8016B9C0_ovl3:
/* 0CC400 8016B9C0 24020001 */  li    $v0, 1
.L8016B9C4_ovl3:
/* 0CC404 8016B9C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CC408 8016B9C8 27BD0060 */  addiu $sp, $sp, 0x60
/* 0CC40C 8016B9CC 03E00008 */  jr    $ra
/* 0CC410 8016B9D0 00000000 */   nop   

.type func_8016B74C_ovl3, @function
.size func_8016B74C_ovl3, . - func_8016B74C_ovl3

glabel func_8016B9D4_ovl3
/* 0CC414 8016B9D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC418 8016B9D8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC41C 8016B9DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CC420 8016B9E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CC424 8016B9E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CC428 8016B9E8 8C4F0000 */  lw    $t7, ($v0)
/* 0CC42C 8016B9EC 3C0E8017 */  lui   $t6, %hi(D_8016BB40) # $t6, 0x8017
/* 0CC430 8016B9F0 3C01800E */  lui   $at, 0x800e
/* 0CC434 8016B9F4 000FC080 */  sll   $t8, $t7, 2
/* 0CC438 8016B9F8 00380821 */  addu  $at, $at, $t8
/* 0CC43C 8016B9FC 25CEBB40 */  addiu $t6, %lo(D_8016BB40) # addiu $t6, $t6, -0x44c0
/* 0CC440 8016BA00 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 0CC444 8016BA04 8C480000 */  lw    $t0, ($v0)
/* 0CC448 8016BA08 3C01800E */  lui   $at, 0x800e
/* 0CC44C 8016BA0C 3C19800B */  lui   $t9, %hi(D_800B4924) # $t9, 0x800b
/* 0CC450 8016BA10 00084880 */  sll   $t1, $t0, 2
/* 0CC454 8016BA14 00290821 */  addu  $at, $at, $t1
/* 0CC458 8016BA18 27394924 */  addiu $t9, %lo(D_800B4924) # addiu $t9, $t9, 0x4924
/* 0CC45C 8016BA1C AC39EF90 */  sw    $t9, -0x1070($at)
/* 0CC460 8016BA20 8C4A0000 */  lw    $t2, ($v0)
/* 0CC464 8016BA24 3C01800F */  lui   $at, 0x800f
/* 0CC468 8016BA28 3C040002 */  lui   $a0, 2
/* 0CC46C 8016BA2C 000A5880 */  sll   $t3, $t2, 2
/* 0CC470 8016BA30 002B0821 */  addu  $at, $at, $t3
/* 0CC474 8016BA34 AC208920 */  sw    $zero, -0x76e0($at)
/* 0CC478 8016BA38 8C4C0000 */  lw    $t4, ($v0)
/* 0CC47C 8016BA3C 3C01800F */  lui   $at, 0x800f
/* 0CC480 8016BA40 000C6880 */  sll   $t5, $t4, 2
/* 0CC484 8016BA44 002D0821 */  addu  $at, $at, $t5
/* 0CC488 8016BA48 AC2098E0 */  sw    $zero, -0x6720($at)
/* 0CC48C 8016BA4C 8C4F0000 */  lw    $t7, ($v0)
/* 0CC490 8016BA50 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0CC494 8016BA54 44812000 */  mtc1  $at, $f4
/* 0CC498 8016BA58 3C01800E */  lui   $at, 0x800e
/* 0CC49C 8016BA5C 000F7080 */  sll   $t6, $t7, 2
/* 0CC4A0 8016BA60 002E0821 */  addu  $at, $at, $t6
/* 0CC4A4 8016BA64 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 0CC4A8 8016BA68 46062032 */  c.eq.s $f4, $f6
/* 0CC4AC 8016BA6C 00000000 */  nop   
/* 0CC4B0 8016BA70 45000009 */  bc1f  .L8016BA98_ovl3
/* 0CC4B4 8016BA74 00000000 */   nop   
/* 0CC4B8 8016BA78 3C040002 */  lui   $a0, (0x000200F7 >> 16) # lui $a0, 2
/* 0CC4BC 8016BA7C 0C02A806 */  jal   func_800AA018
/* 0CC4C0 8016BA80 348400F7 */   ori   $a0, (0x000200F7 & 0xFFFF) # ori $a0, $a0, 0xf7
/* 0CC4C4 8016BA84 3C040002 */  lui   $a0, (0x000200FB >> 16) # lui $a0, 2
/* 0CC4C8 8016BA88 0C02A806 */  jal   func_800AA018
/* 0CC4CC 8016BA8C 348400F8 */   ori   $a0, (0x000200F8 & 0xFFFF) # ori $a0, $a0, 0xf8
/* 0CC4D0 8016BA90 10000006 */  b     .L8016BAAC_ovl3
/* 0CC4D4 8016BA94 00000000 */   nop   
.L8016BA98_ovl3:
/* 0CC4D8 8016BA98 0C02A806 */  jal   func_800AA018
/* 0CC4DC 8016BA9C 348400FB */   ori   $a0, (0x000200FB & 0xFFFF) # ori $a0, $a0, 0xfb
/* 0CC4E0 8016BAA0 3C040002 */  lui   $a0, (0x000200FC >> 16) # lui $a0, 2
/* 0CC4E4 8016BAA4 0C02A806 */  jal   func_800AA018
/* 0CC4E8 8016BAA8 348400FC */   ori   $a0, (0x000200FC & 0xFFFF) # ori $a0, $a0, 0xfc
.L8016BAAC_ovl3:
/* 0CC4EC 8016BAAC 0C02CCFD */  jal   func_800B33F4
/* 0CC4F0 8016BAB0 00000000 */   nop   
/* 0CC4F4 8016BAB4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 0CC4F8 8016BAB8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 0CC4FC 8016BABC 3C018019 */  lui   $at, %hi(D_80197274) # $at, 0x8019
/* 0CC500 8016BAC0 C4287274 */  lwc1  $f8, %lo(D_80197274)($at)
/* 0CC504 8016BAC4 8F080000 */  lw    $t0, ($t8)
/* 0CC508 8016BAC8 3C01800E */  lui   $at, 0x800e
/* 0CC50C 8016BACC 240400FF */  li    $a0, 255
/* 0CC510 8016BAD0 0008C880 */  sll   $t9, $t0, 2
/* 0CC514 8016BAD4 00390821 */  addu  $at, $at, $t9
/* 0CC518 8016BAD8 0C029D9E */  jal   play_sound
/* 0CC51C 8016BADC E4283210 */   swc1  $f8, 0x3210($at)
/* 0CC520 8016BAE0 0C002DAF */  jal   finish_current_thread
/* 0CC524 8016BAE4 2404000A */   li    $a0, 10
/* 0CC528 8016BAE8 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 0CC52C 8016BAEC 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 0CC530 8016BAF0 44805000 */  mtc1  $zero, $f10
/* 0CC534 8016BAF4 3C01800E */  lui   $at, 0x800e
/* 0CC538 8016BAF8 8D2A0000 */  lw    $t2, ($t1)
/* 0CC53C 8016BAFC 000A5880 */  sll   $t3, $t2, 2
/* 0CC540 8016BB00 002B0821 */  addu  $at, $at, $t3
/* 0CC544 8016BB04 0C02BC9F */  jal   func_800AF27C
/* 0CC548 8016BB08 E42A3210 */   swc1  $f10, 0x3210($at)
/* 0CC54C 8016BB0C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 0CC550 8016BB10 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 0CC554 8016BB14 3C01800F */  lui   $at, 0x800f
/* 0CC558 8016BB18 240C0001 */  li    $t4, 1
/* 0CC55C 8016BB1C 8DAF0000 */  lw    $t7, ($t5)
/* 0CC560 8016BB20 000F7080 */  sll   $t6, $t7, 2
/* 0CC564 8016BB24 002E0821 */  addu  $at, $at, $t6
/* 0CC568 8016BB28 0C02BE85 */  jal   func_800AFA14
/* 0CC56C 8016BB2C AC2C98E0 */   sw    $t4, -0x6720($at)
/* 0CC570 8016BB30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CC574 8016BB34 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CC578 8016BB38 03E00008 */  jr    $ra
/* 0CC57C 8016BB3C 00000000 */   nop   

.type func_8016B9D4_ovl3, @function
.size func_8016B9D4_ovl3, . - func_8016B9D4_ovl3

glabel func_8016BB40_ovl3
/* 0CC580 8016BB40 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 0CC584 8016BB44 8CA5A7C4 */  lw    $a1, %lo(D_8004A7C4)($a1)
/* 0CC588 8016BB48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CC58C 8016BB4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CC590 8016BB50 AFA40018 */  sw    $a0, 0x18($sp)
/* 0CC594 8016BB54 8CA20000 */  lw    $v0, ($a1)
/* 0CC598 8016BB58 3C03800F */  lui   $v1, 0x800f
/* 0CC59C 8016BB5C 24010001 */  li    $at, 1
/* 0CC5A0 8016BB60 00021080 */  sll   $v0, $v0, 2
/* 0CC5A4 8016BB64 00621821 */  addu  $v1, $v1, $v0
/* 0CC5A8 8016BB68 8C6398E0 */  lw    $v1, -0x6720($v1)
/* 0CC5AC 8016BB6C 10600012 */  beqz  $v1, .L8016BBB8_ovl3
/* 0CC5B0 8016BB70 00000000 */   nop   
/* 0CC5B4 8016BB74 14610010 */  bne   $v1, $at, .L8016BBB8_ovl3
/* 0CC5B8 8016BB78 3C01800E */   lui   $at, 0x800e
/* 0CC5BC 8016BB7C 00220821 */  addu  $at, $at, $v0
/* 0CC5C0 8016BB80 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 0CC5C4 8016BB84 3C018019 */  lui   $at, %hi(D_80197278) # $at, 0x8019
/* 0CC5C8 8016BB88 C4267278 */  lwc1  $f6, %lo(D_80197278)($at)
/* 0CC5CC 8016BB8C 3C01800E */  lui   $at, 0x800e
/* 0CC5D0 8016BB90 00220821 */  addu  $at, $at, $v0
/* 0CC5D4 8016BB94 46062002 */  mul.s $f0, $f4, $f6
/* 0CC5D8 8016BB98 00002025 */  move  $a0, $zero
/* 0CC5DC 8016BB9C E42017D0 */  swc1  $f0, 0x17d0($at)
/* 0CC5E0 8016BBA0 8CAE0000 */  lw    $t6, ($a1)
/* 0CC5E4 8016BBA4 3C01800E */  lui   $at, 0x800e
/* 0CC5E8 8016BBA8 000E7880 */  sll   $t7, $t6, 2
/* 0CC5EC 8016BBAC 002F0821 */  addu  $at, $at, $t7
/* 0CC5F0 8016BBB0 0C05AF49 */  jal   func_8016BD24_ovl3
/* 0CC5F4 8016BBB4 E42041D0 */   swc1  $f0, 0x41d0($at)
.L8016BBB8_ovl3:
/* 0CC5F8 8016BBB8 0C05A5BC */  jal   func_801696F0_ovl3
/* 0CC5FC 8016BBBC 8FA40018 */   lw    $a0, 0x18($sp)
/* 0CC600 8016BBC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CC604 8016BBC4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CC608 8016BBC8 03E00008 */  jr    $ra
/* 0CC60C 8016BBCC 00000000 */   nop   

.type func_8016BB40_ovl3, @function
.size func_8016BB40_ovl3, . - func_8016BB40_ovl3

glabel func_8016BBD0_ovl3
/* 0CC610 8016BBD0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CC614 8016BBD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CC618 8016BBD8 3C040002 */  lui   $a0, (0x00020027 >> 16) # lui $a0, 2
/* 0CC61C 8016BBDC 0C02A806 */  jal   func_800AA018
/* 0CC620 8016BBE0 34840027 */   ori   $a0, (0x00020027 & 0xFFFF) # ori $a0, $a0, 0x27
/* 0CC624 8016BBE4 3C040002 */  lui   $a0, (0x00020028 >> 16) # lui $a0, 2
/* 0CC628 8016BBE8 0C02A806 */  jal   func_800AA018
/* 0CC62C 8016BBEC 34840028 */   ori   $a0, (0x00020028 & 0xFFFF) # ori $a0, $a0, 0x28
/* 0CC630 8016BBF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CC634 8016BBF4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CC638 8016BBF8 03E00008 */  jr    $ra
/* 0CC63C 8016BBFC 00000000 */   nop   

.type func_8016BBD0_ovl3, @function
.size func_8016BBD0_ovl3, . - func_8016BBD0_ovl3

glabel func_8016BC00_ovl3
/* 0CC640 8016BC00 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0CC644 8016BC04 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0CC648 8016BC08 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CC64C 8016BC0C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CC650 8016BC10 8DC30000 */  lw    $v1, ($t6)
/* 0CC654 8016BC14 3C0F800E */  lui   $t7, 0x800e
/* 0CC658 8016BC18 00031880 */  sll   $v1, $v1, 2
/* 0CC65C 8016BC1C 01E37821 */  addu  $t7, $t7, $v1
/* 0CC660 8016BC20 8DEFDC50 */  lw    $t7, -0x23b0($t7)
/* 0CC664 8016BC24 2DE10011 */  sltiu $at, $t7, 0x11
/* 0CC668 8016BC28 1020002E */  beqz  $at, .L8016BCE4_ovl3
/* 0CC66C 8016BC2C 000F7880 */   sll   $t7, $t7, 2
/* 0CC670 8016BC30 3C018019 */  lui   $at, 0x8019
/* 0CC674 8016BC34 002F0821 */  addu  $at, $at, $t7
/* 0CC678 8016BC38 8C2F727C */  lw    $t7, 0x727c($at)
/* 0CC67C 8016BC3C 01E00008 */  jr    $t7
/* 0CC680 8016BC40 00000000 */   nop   
/* 0CC684 8016BC44 3C01800E */  lui   $at, 0x800e
/* 0CC688 8016BC48 00230821 */  addu  $at, $at, $v1
/* 0CC68C 8016BC4C C42464D0 */  lwc1  $f4, 0x64d0($at)
/* 0CC690 8016BC50 44803000 */  mtc1  $zero, $f6
/* 0CC694 8016BC54 3C040002 */  lui   $a0, 2
/* 0CC698 8016BC58 4604303E */  c.le.s $f6, $f4
/* 0CC69C 8016BC5C 00000000 */  nop   
/* 0CC6A0 8016BC60 45000009 */  bc1f  .L8016BC88_ovl3
/* 0CC6A4 8016BC64 00000000 */   nop   
/* 0CC6A8 8016BC68 3C040002 */  lui   $a0, (0x00020029 >> 16) # lui $a0, 2
/* 0CC6AC 8016BC6C 0C02A806 */  jal   func_800AA018
/* 0CC6B0 8016BC70 34840029 */   ori   $a0, (0x00020029 & 0xFFFF) # ori $a0, $a0, 0x29
/* 0CC6B4 8016BC74 3C040002 */  lui   $a0, (0x0002002B >> 16) # lui $a0, 2
/* 0CC6B8 8016BC78 0C02A806 */  jal   func_800AA018
/* 0CC6BC 8016BC7C 3484002A */   ori   $a0, (0x0002002A & 0xFFFF) # ori $a0, $a0, 0x2a
/* 0CC6C0 8016BC80 10000006 */  b     .L8016BC9C_ovl3
/* 0CC6C4 8016BC84 00000000 */   nop   
.L8016BC88_ovl3:
/* 0CC6C8 8016BC88 0C02A806 */  jal   func_800AA018
/* 0CC6CC 8016BC8C 3484002B */   ori   $a0, (0x0002002B & 0xFFFF) # ori $a0, $a0, 0x2b
/* 0CC6D0 8016BC90 3C040002 */  lui   $a0, (0x0002002C >> 16) # lui $a0, 2
/* 0CC6D4 8016BC94 0C02A806 */  jal   func_800AA018
/* 0CC6D8 8016BC98 3484002C */   ori   $a0, (0x0002002C & 0xFFFF) # ori $a0, $a0, 0x2c
.L8016BC9C_ovl3:
/* 0CC6DC 8016BC9C 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC6E0 8016BCA0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC6E4 8016BCA4 3C018019 */  lui   $at, %hi(D_801972C0) # $at, 0x8019
/* 0CC6E8 8016BCA8 C42872C0 */  lwc1  $f8, %lo(D_801972C0)($at)
/* 0CC6EC 8016BCAC 8C580000 */  lw    $t8, ($v0)
/* 0CC6F0 8016BCB0 3C04800E */  lui   $a0, %hi(D_800E17D0) # $a0, 0x800e
/* 0CC6F4 8016BCB4 248417D0 */  addiu $a0, %lo(D_800E17D0) # addiu $a0, $a0, 0x17d0
/* 0CC6F8 8016BCB8 0018C880 */  sll   $t9, $t8, 2
/* 0CC6FC 8016BCBC 00994021 */  addu  $t0, $a0, $t9
/* 0CC700 8016BCC0 E5080000 */  swc1  $f8, ($t0)
/* 0CC704 8016BCC4 8C430000 */  lw    $v1, ($v0)
/* 0CC708 8016BCC8 3C01800E */  lui   $at, 0x800e
/* 0CC70C 8016BCCC 00031880 */  sll   $v1, $v1, 2
/* 0CC710 8016BCD0 00834821 */  addu  $t1, $a0, $v1
/* 0CC714 8016BCD4 C52A0000 */  lwc1  $f10, ($t1)
/* 0CC718 8016BCD8 00230821 */  addu  $at, $at, $v1
/* 0CC71C 8016BCDC 10000007 */  b     .L8016BCFC_ovl3
/* 0CC720 8016BCE0 E42A41D0 */   swc1  $f10, 0x41d0($at)
.L8016BCE4_ovl3:
/* 0CC724 8016BCE4 3C040002 */  lui   $a0, (0x00020027 >> 16) # lui $a0, 2
/* 0CC728 8016BCE8 0C02A806 */  jal   func_800AA018
/* 0CC72C 8016BCEC 34840027 */   ori   $a0, (0x00020027 & 0xFFFF) # ori $a0, $a0, 0x27
/* 0CC730 8016BCF0 3C040002 */  lui   $a0, (0x00020028 >> 16) # lui $a0, 2
/* 0CC734 8016BCF4 0C02A806 */  jal   func_800AA018
/* 0CC738 8016BCF8 34840028 */   ori   $a0, (0x00020028 & 0xFFFF) # ori $a0, $a0, 0x28
.L8016BCFC_ovl3:
/* 0CC73C 8016BCFC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0CC740 8016BD00 0C02BB30 */  jal   func_800AECC0
/* 0CC744 8016BD04 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0CC748 8016BD08 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0CC74C 8016BD0C 0C02BB48 */  jal   func_800AED20
/* 0CC750 8016BD10 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0CC754 8016BD14 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CC758 8016BD18 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CC75C 8016BD1C 03E00008 */  jr    $ra
/* 0CC760 8016BD20 00000000 */   nop   

.type func_8016BC00_ovl3, @function
.size func_8016BC00_ovl3, . - func_8016BC00_ovl3

glabel func_8016BD24_ovl3
/* 0CC764 8016BD24 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC768 8016BD28 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC76C 8016BD2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CC770 8016BD30 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0CC774 8016BD34 8C460000 */  lw    $a2, ($v0)
/* 0CC778 8016BD38 3C03800F */  lui   $v1, 0x800f
/* 0CC77C 8016BD3C 3C01800D */  lui   $at, %hi(gKirbyHp) # $at, 0x800d
/* 0CC780 8016BD40 00063080 */  sll   $a2, $a2, 2
/* 0CC784 8016BD44 00661821 */  addu  $v1, $v1, $a2
/* 0CC788 8016BD48 8C63A520 */  lw    $v1, -0x5ae0($v1)
/* 0CC78C 8016BD4C 00031A03 */  sra   $v1, $v1, 8
/* 0CC790 8016BD50 306300FF */  andi  $v1, $v1, 0xff
/* 0CC794 8016BD54 54600066 */  bnezl $v1, .L8016BEF0_ovl3
/* 0CC798 8016BD58 44800000 */   mtc1  $zero, $f0
/* 0CC79C 8016BD5C 44802000 */  mtc1  $zero, $f4
/* 0CC7A0 8016BD60 C4266E50 */  lwc1  $f6, %lo(gKirbyHp)($at)
/* 0CC7A4 8016BD64 24050017 */  li    $a1, 23
/* 0CC7A8 8016BD68 46062032 */  c.eq.s $f4, $f6
/* 0CC7AC 8016BD6C 00000000 */  nop   
/* 0CC7B0 8016BD70 45000008 */  bc1f  .L8016BD94_ovl3
/* 0CC7B4 8016BD74 00000000 */   nop   
/* 0CC7B8 8016BD78 0C048BDB */  jal   set_kirby_action_1
/* 0CC7BC 8016BD7C 24040016 */   li    $a0, 22
/* 0CC7C0 8016BD80 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0CC7C4 8016BD84 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0CC7C8 8016BD88 8DC60000 */  lw    $a2, ($t6)
/* 0CC7CC 8016BD8C 1000001C */  b     .L8016BE00_ovl3
/* 0CC7D0 8016BD90 00063080 */   sll   $a2, $a2, 2
.L8016BD94_ovl3:
/* 0CC7D4 8016BD94 10800006 */  beqz  $a0, .L8016BDB0_ovl3
/* 0CC7D8 8016BD98 240F0001 */   li    $t7, 1
/* 0CC7DC 8016BD9C 24010001 */  li    $at, 1
/* 0CC7E0 8016BDA0 1081000D */  beq   $a0, $at, .L8016BDD8_ovl3
/* 0CC7E4 8016BDA4 24080006 */   li    $t0, 6
/* 0CC7E8 8016BDA8 10000015 */  b     .L8016BE00_ovl3
/* 0CC7EC 8016BDAC 00000000 */   nop   
.L8016BDB0_ovl3:
/* 0CC7F0 8016BDB0 3C018013 */  lui   $at, %hi(D_8012E7C5) # $at, 0x8013
/* 0CC7F4 8016BDB4 A02FE7C5 */  sb    $t7, %lo(D_8012E7C5)($at)
/* 0CC7F8 8016BDB8 8C580000 */  lw    $t8, ($v0)
/* 0CC7FC 8016BDBC 3C01800E */  lui   $at, 0x800e
/* 0CC800 8016BDC0 0018C880 */  sll   $t9, $t8, 2
/* 0CC804 8016BDC4 00390821 */  addu  $at, $at, $t9
/* 0CC808 8016BDC8 AC20DC50 */  sw    $zero, -0x23b0($at)
/* 0CC80C 8016BDCC 8C460000 */  lw    $a2, ($v0)
/* 0CC810 8016BDD0 1000000B */  b     .L8016BE00_ovl3
/* 0CC814 8016BDD4 00063080 */   sll   $a2, $a2, 2
.L8016BDD8_ovl3:
/* 0CC818 8016BDD8 3C018013 */  lui   $at, %hi(D_8012E7C5) # $at, 0x8013
/* 0CC81C 8016BDDC A028E7C5 */  sb    $t0, %lo(D_8012E7C5)($at)
/* 0CC820 8016BDE0 8C4A0000 */  lw    $t2, ($v0)
/* 0CC824 8016BDE4 3C01800E */  lui   $at, 0x800e
/* 0CC828 8016BDE8 24090006 */  li    $t1, 6
/* 0CC82C 8016BDEC 000A5880 */  sll   $t3, $t2, 2
/* 0CC830 8016BDF0 002B0821 */  addu  $at, $at, $t3
/* 0CC834 8016BDF4 AC29DC50 */  sw    $t1, -0x23b0($at)
/* 0CC838 8016BDF8 8C460000 */  lw    $a2, ($v0)
/* 0CC83C 8016BDFC 00063080 */  sll   $a2, $a2, 2
.L8016BE00_ovl3:
/* 0CC840 8016BE00 3C04800E */  lui   $a0, 0x800e
/* 0CC844 8016BE04 00862021 */  addu  $a0, $a0, $a2
/* 0CC848 8016BE08 3C058017 */  lui   $a1, %hi(D_8016C510) # $a1, 0x8017
/* 0CC84C 8016BE0C 24A5C510 */  addiu $a1, %lo(D_8016C510) # addiu $a1, $a1, -0x3af0
/* 0CC850 8016BE10 0C02C7B2 */  jal   assign_new_process_entry
/* 0CC854 8016BE14 8C84E510 */   lw    $a0, -0x1af0($a0)
/* 0CC858 8016BE18 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC85C 8016BE1C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC860 8016BE20 3C0C800B */  lui   $t4, %hi(D_800B531C) # $t4, 0x800b
/* 0CC864 8016BE24 3C01800E */  lui   $at, 0x800e
/* 0CC868 8016BE28 8C4D0000 */  lw    $t5, ($v0)
/* 0CC86C 8016BE2C 258C531C */  addiu $t4, %lo(D_800B531C) # addiu $t4, $t4, 0x531c
/* 0CC870 8016BE30 3C0F8017 */  lui   $t7, %hi(D_8016C558) # $t7, 0x8017
/* 0CC874 8016BE34 000D7080 */  sll   $t6, $t5, 2
/* 0CC878 8016BE38 002E0821 */  addu  $at, $at, $t6
/* 0CC87C 8016BE3C AC2CEF90 */  sw    $t4, -0x1070($at)
/* 0CC880 8016BE40 8C580000 */  lw    $t8, ($v0)
/* 0CC884 8016BE44 3C01800E */  lui   $at, 0x800e
/* 0CC888 8016BE48 25EFC558 */  addiu $t7, %lo(D_8016C558) # addiu $t7, $t7, -0x3aa8
/* 0CC88C 8016BE4C 0018C880 */  sll   $t9, $t8, 2
/* 0CC890 8016BE50 00390821 */  addu  $at, $at, $t9
/* 0CC894 8016BE54 AC2FF150 */  sw    $t7, -0xeb0($at)
/* 0CC898 8016BE58 8C4A0000 */  lw    $t2, ($v0)
/* 0CC89C 8016BE5C 3C01800E */  lui   $at, 0x800e
/* 0CC8A0 8016BE60 24080023 */  li    $t0, 35
/* 0CC8A4 8016BE64 000A4880 */  sll   $t1, $t2, 2
/* 0CC8A8 8016BE68 00290821 */  addu  $at, $at, $t1
/* 0CC8AC 8016BE6C AC28DA90 */  sw    $t0, -0x2570($at)
/* 0CC8B0 8016BE70 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0CC8B4 8016BE74 0C02BB30 */  jal   func_800AECC0
/* 0CC8B8 8016BE78 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0CC8BC 8016BE7C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 0CC8C0 8016BE80 0C02BB48 */  jal   func_800AED20
/* 0CC8C4 8016BE84 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 0CC8C8 8016BE88 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0CC8CC 8016BE8C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0CC8D0 8016BE90 3C01800F */  lui   $at, 0x800f
/* 0CC8D4 8016BE94 240C002D */  li    $t4, 45
/* 0CC8D8 8016BE98 8C4B0000 */  lw    $t3, ($v0)
/* 0CC8DC 8016BE9C 240FFFFF */  li    $t7, -1
/* 0CC8E0 8016BEA0 000B6880 */  sll   $t5, $t3, 2
/* 0CC8E4 8016BEA4 002D0821 */  addu  $at, $at, $t5
/* 0CC8E8 8016BEA8 AC208760 */  sw    $zero, -0x78a0($at)
/* 0CC8EC 8016BEAC 8C4E0000 */  lw    $t6, ($v0)
/* 0CC8F0 8016BEB0 3C01800E */  lui   $at, 0x800e
/* 0CC8F4 8016BEB4 000EC080 */  sll   $t8, $t6, 2
/* 0CC8F8 8016BEB8 00380821 */  addu  $at, $at, $t8
/* 0CC8FC 8016BEBC AC2C7CE0 */  sw    $t4, 0x7ce0($at)
/* 0CC900 8016BEC0 8C590000 */  lw    $t9, ($v0)
/* 0CC904 8016BEC4 3C01800E */  lui   $at, 0x800e
/* 0CC908 8016BEC8 00195080 */  sll   $t2, $t9, 2
/* 0CC90C 8016BECC 002A0821 */  addu  $at, $at, $t2
/* 0CC910 8016BED0 AC2F0D50 */  sw    $t7, 0xd50($at)
/* 0CC914 8016BED4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0CC918 8016BED8 44816000 */  mtc1  $at, $f12
/* 0CC91C 8016BEDC 0C0548D2 */  jal   func_80152348_ovl3
/* 0CC920 8016BEE0 00000000 */   nop   
/* 0CC924 8016BEE4 1000000D */  b     .L8016BF1C_ovl3
/* 0CC928 8016BEE8 24020001 */   li    $v0, 1
/* 0CC92C 8016BEEC 44800000 */  mtc1  $zero, $f0
.L8016BEF0_ovl3:
/* 0CC930 8016BEF0 00002025 */  move  $a0, $zero
/* 0CC934 8016BEF4 00002825 */  move  $a1, $zero
/* 0CC938 8016BEF8 44060000 */  mfc1  $a2, $f0
/* 0CC93C 8016BEFC 44070000 */  mfc1  $a3, $f0
/* 0CC940 8016BF00 0C03F55C */  jal   func_800FD570
/* 0CC944 8016BF04 E7A00010 */   swc1  $f0, 0x10($sp)
/* 0CC948 8016BF08 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 0CC94C 8016BF0C 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 0CC950 8016BF10 0C02C640 */  jal   func_800B1900
/* 0CC954 8016BF14 95040002 */   lhu   $a0, 2($t0)
/* 0CC958 8016BF18 00001025 */  move  $v0, $zero
.L8016BF1C_ovl3:
/* 0CC95C 8016BF1C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0CC960 8016BF20 27BD0020 */  addiu $sp, $sp, 0x20
/* 0CC964 8016BF24 03E00008 */  jr    $ra
/* 0CC968 8016BF28 00000000 */   nop   
/* 0CC96C 8016BF2C 00000000 */  nop   
/* 0CC970 8016BF30 00000000 */  nop   
/* 0CC974 8016BF34 00000000 */  nop   
/* 0CC978 8016BF38 00000000 */  nop   
/* 0CC97C 8016BF3C 00000000 */  nop   
/* 0CC980 8016BF40 00000000 */  nop   
/* 0CC984 8016BF44 00000000 */  nop   
/* 0CC988 8016BF48 00000000 */  nop   
/* 0CC98C 8016BF4C 00000000 */  nop   
/* 0CC990 8016BF50 00000000 */  nop   
/* 0CC994 8016BF54 00000000 */  nop   
/* 0CC998 8016BF58 00000000 */  nop   
/* 0CC99C 8016BF5C 00000000 */  nop   

.type func_8016BD24_ovl3, @function
.size func_8016BD24_ovl3, . - func_8016BD24_ovl3
