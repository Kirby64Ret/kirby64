nonmatching func_801D2B90_ovl8, 0x250

glabel func_801D2B90_ovl8
    /* 176670 801D2B90 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 176674 801D2B94 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 176678 801D2B98 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 17667C 801D2B9C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 176680 801D2BA0 8DC20000 */  lw         $v0, 0x0($t6)
    /* 176684 801D2BA4 3C0F800E */  lui        $t7, %hi(D_800E1B50)
    /* 176688 801D2BA8 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* 17668C 801D2BAC 00023880 */  sll        $a3, $v0, 2
    /* 176690 801D2BB0 01E77821 */  addu       $t7, $t7, $a3
    /* 176694 801D2BB4 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
    /* 176698 801D2BB8 0307C021 */  addu       $t8, $t8, $a3
    /* 17669C 801D2BBC 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* 1766A0 801D2BC0 3C08800C */  lui        $t0, %hi(gGameState)
    /* 1766A4 801D2BC4 8D08E4F0 */  lw         $t0, %lo(gGameState)($t0)
    /* 1766A8 801D2BC8 AFAF001C */  sw         $t7, 0x1C($sp)
    /* 1766AC 801D2BCC 8F190004 */  lw         $t9, 0x4($t8)
    /* 1766B0 801D2BD0 24010021 */  addiu      $at, $zero, 0x21
    /* 1766B4 801D2BD4 15010006 */  bne        $t0, $at, .L801D2BF0_ovl8
    /* 1766B8 801D2BD8 AFB90018 */   sw        $t9, 0x18($sp)
    /* 1766BC 801D2BDC 0C07511F */  jal        func_801D447C_ovl8
    /* 1766C0 801D2BE0 00000000 */   nop
    /* 1766C4 801D2BE4 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 1766C8 801D2BE8 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 1766CC 801D2BEC 8D220000 */  lw         $v0, 0x0($t1)
  .L801D2BF0_ovl8:
    /* 1766D0 801D2BF0 3C0A800E */  lui        $t2, %hi(D_800E7880)
    /* 1766D4 801D2BF4 01425021 */  addu       $t2, $t2, $v0
    /* 1766D8 801D2BF8 914A7880 */  lbu        $t2, %lo(D_800E7880)($t2)
    /* 1766DC 801D2BFC 00002025 */  or         $a0, $zero, $zero
    /* 1766E0 801D2C00 29410006 */  slti       $at, $t2, 0x6
    /* 1766E4 801D2C04 1020000C */  beqz       $at, .L801D2C38_ovl8
    /* 1766E8 801D2C08 00000000 */   nop
    /* 1766EC 801D2C0C 0C008266 */  jal        auSetBGMVolume
    /* 1766F0 801D2C10 24057800 */   addiu     $a1, $zero, 0x7800
    /* 1766F4 801D2C14 3C0B800D */  lui        $t3, %hi(D_800D6B54)
    /* 1766F8 801D2C18 8D6B6B54 */  lw         $t3, %lo(D_800D6B54)($t3)
    /* 1766FC 801D2C1C 00002025 */  or         $a0, $zero, $zero
    /* 176700 801D2C20 15600007 */  bnez       $t3, .L801D2C40_ovl8
    /* 176704 801D2C24 00000000 */   nop
    /* 176708 801D2C28 0C029D6C */  jal        play_music
    /* 17670C 801D2C2C 24050018 */   addiu     $a1, $zero, 0x18
    /* 176710 801D2C30 10000003 */  b          .L801D2C40_ovl8
    /* 176714 801D2C34 00000000 */   nop
  .L801D2C38_ovl8:
    /* 176718 801D2C38 0C029D9E */  jal        play_sound
    /* 17671C 801D2C3C 24040226 */   addiu     $a0, $zero, 0x226
  .L801D2C40_ovl8:
    /* 176720 801D2C40 3C0C800C */  lui        $t4, %hi(D_800BE500)
    /* 176724 801D2C44 8D8CE500 */  lw         $t4, %lo(D_800BE500)($t4)
    /* 176728 801D2C48 3C0D800D */  lui        $t5, %hi(D_800D6BC0)
    /* 17672C 801D2C4C 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
    /* 176730 801D2C50 01AC6821 */  addu       $t5, $t5, $t4
    /* 176734 801D2C54 91AD6BC0 */  lbu        $t5, %lo(D_800D6BC0)($t5)
    /* 176738 801D2C58 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 17673C 801D2C5C 24050002 */  addiu      $a1, $zero, 0x2
    /* 176740 801D2C60 11A0001C */  beqz       $t5, .L801D2CD4_ovl8
    /* 176744 801D2C64 24060033 */   addiu     $a2, $zero, 0x33
    /* 176748 801D2C68 44812000 */  mtc1       $at, $f4
    /* 17674C 801D2C6C 3C01800E */  lui        $at, %hi(D_800E7B20)
    /* 176750 801D2C70 C4267B20 */  lwc1       $f6, %lo(D_800E7B20)($at)
    /* 176754 801D2C74 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 176758 801D2C78 46062032 */  c.eq.s     $f4, $f6
    /* 17675C 801D2C7C 00000000 */  nop
    /* 176760 801D2C80 4500000B */  bc1f       .L801D2CB0_ovl8
    /* 176764 801D2C84 00000000 */   nop
    /* 176768 801D2C88 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 17676C 801D2C8C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 176770 801D2C90 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* 176774 801D2C94 2484A520 */  addiu      $a0, $a0, %lo(D_800EA520)
    /* 176778 801D2C98 8C6F0000 */  lw         $t7, 0x0($v1)
    /* 17677C 801D2C9C 240E0001 */  addiu      $t6, $zero, 0x1
    /* 176780 801D2CA0 000FC080 */  sll        $t8, $t7, 2
    /* 176784 801D2CA4 0098C821 */  addu       $t9, $a0, $t8
    /* 176788 801D2CA8 10000011 */  b          .L801D2CF0_ovl8
    /* 17678C 801D2CAC AF2E0000 */   sw        $t6, 0x0($t9)
  .L801D2CB0_ovl8:
    /* 176790 801D2CB0 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 176794 801D2CB4 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* 176798 801D2CB8 2484A520 */  addiu      $a0, $a0, %lo(D_800EA520)
    /* 17679C 801D2CBC 8C690000 */  lw         $t1, 0x0($v1)
    /* 1767A0 801D2CC0 24080002 */  addiu      $t0, $zero, 0x2
    /* 1767A4 801D2CC4 00095080 */  sll        $t2, $t1, 2
    /* 1767A8 801D2CC8 008A5821 */  addu       $t3, $a0, $t2
    /* 1767AC 801D2CCC 10000008 */  b          .L801D2CF0_ovl8
    /* 1767B0 801D2CD0 AD680000 */   sw        $t0, 0x0($t3)
  .L801D2CD4_ovl8:
    /* 1767B4 801D2CD4 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 1767B8 801D2CD8 3C04800F */  lui        $a0, %hi(D_800EA520)
    /* 1767BC 801D2CDC 2484A520 */  addiu      $a0, $a0, %lo(D_800EA520)
    /* 1767C0 801D2CE0 8C6C0000 */  lw         $t4, 0x0($v1)
    /* 1767C4 801D2CE4 000C6880 */  sll        $t5, $t4, 2
    /* 1767C8 801D2CE8 008D7821 */  addu       $t7, $a0, $t5
    /* 1767CC 801D2CEC ADE00000 */  sw         $zero, 0x0($t7)
  .L801D2CF0_ovl8:
    /* 1767D0 801D2CF0 8C670000 */  lw         $a3, 0x0($v1)
    /* 1767D4 801D2CF4 24010001 */  addiu      $at, $zero, 0x1
    /* 1767D8 801D2CF8 00073880 */  sll        $a3, $a3, 2
    /* 1767DC 801D2CFC 0087C021 */  addu       $t8, $a0, $a3
    /* 1767E0 801D2D00 8F020000 */  lw         $v0, 0x0($t8)
    /* 1767E4 801D2D04 00002025 */  or         $a0, $zero, $zero
    /* 1767E8 801D2D08 10400008 */  beqz       $v0, .L801D2D2C_ovl8
    /* 1767EC 801D2D0C 00000000 */   nop
    /* 1767F0 801D2D10 1041000F */  beq        $v0, $at, .L801D2D50_ovl8
    /* 1767F4 801D2D14 3C040001 */   lui       $a0, (0x100D1 >> 16)
    /* 1767F8 801D2D18 24010002 */  addiu      $at, $zero, 0x2
    /* 1767FC 801D2D1C 10410017 */  beq        $v0, $at, .L801D2D7C_ovl8
    /* 176800 801D2D20 3C040001 */   lui       $a0, (0x100C5 >> 16)
    /* 176804 801D2D24 1000001F */  b          .L801D2DA4_ovl8
    /* 176808 801D2D28 00000000 */   nop
  .L801D2D2C_ovl8:
    /* 17680C 801D2D2C 0C02A040 */  jal        func_800A8100
    /* 176810 801D2D30 8FA70018 */   lw        $a3, 0x18($sp)
    /* 176814 801D2D34 8FAE001C */  lw         $t6, 0x1C($sp)
    /* 176818 801D2D38 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 17681C 801D2D3C ADC20034 */  sw         $v0, 0x34($t6)
    /* 176820 801D2D40 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 176824 801D2D44 8C670000 */  lw         $a3, 0x0($v1)
    /* 176828 801D2D48 10000016 */  b          .L801D2DA4_ovl8
    /* 17682C 801D2D4C 00073880 */   sll       $a3, $a3, 2
  .L801D2D50_ovl8:
    /* 176830 801D2D50 0C02A5D8 */  jal        func_800A9760
    /* 176834 801D2D54 348400D1 */   ori       $a0, $a0, (0x100D1 & 0xFFFF)
    /* 176838 801D2D58 8FA9001C */  lw         $t1, 0x1C($sp)
    /* 17683C 801D2D5C 3C19801D */  lui        $t9, %hi(D_801C9F2C)
    /* 176840 801D2D60 27399F2C */  addiu      $t9, $t9, %lo(D_801C9F2C)
    /* 176844 801D2D64 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 176848 801D2D68 AD39008C */  sw         $t9, 0x8C($t1)
    /* 17684C 801D2D6C 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 176850 801D2D70 8C670000 */  lw         $a3, 0x0($v1)
    /* 176854 801D2D74 1000000B */  b          .L801D2DA4_ovl8
    /* 176858 801D2D78 00073880 */   sll       $a3, $a3, 2
  .L801D2D7C_ovl8:
    /* 17685C 801D2D7C 0C02A5D8 */  jal        func_800A9760
    /* 176860 801D2D80 348400C5 */   ori       $a0, $a0, (0x100C5 & 0xFFFF)
    /* 176864 801D2D84 8FA8001C */  lw         $t0, 0x1C($sp)
    /* 176868 801D2D88 3C0A801D */  lui        $t2, %hi(D_801CA100)
    /* 17686C 801D2D8C 254AA100 */  addiu      $t2, $t2, %lo(D_801CA100)
    /* 176870 801D2D90 3C038005 */  lui        $v1, %hi(omCurrentObj)
    /* 176874 801D2D94 AD0A008C */  sw         $t2, 0x8C($t0)
    /* 176878 801D2D98 8C63A7C4 */  lw         $v1, %lo(omCurrentObj)($v1)
    /* 17687C 801D2D9C 8C670000 */  lw         $a3, 0x0($v1)
    /* 176880 801D2DA0 00073880 */  sll        $a3, $a3, 2
  .L801D2DA4_ovl8:
    /* 176884 801D2DA4 3C01800F */  lui        $at, %hi(D_800E8920)
    /* 176888 801D2DA8 00270821 */  addu       $at, $at, $a3
    /* 17688C 801D2DAC AC208920 */  sw         $zero, %lo(D_800E8920)($at)
    /* 176890 801D2DB0 8C6B0000 */  lw         $t3, 0x0($v1)
    /* 176894 801D2DB4 3C04800E */  lui        $a0, %hi(D_800E7880)
    /* 176898 801D2DB8 3C06801E */  lui        $a2, %hi(D_801DB020_ovl8)
    /* 17689C 801D2DBC 008B2021 */  addu       $a0, $a0, $t3
    /* 1768A0 801D2DC0 90847880 */  lbu        $a0, %lo(D_800E7880)($a0)
    /* 1768A4 801D2DC4 24C6B020 */  addiu      $a2, $a2, %lo(D_801DB020_ovl8)
    /* 1768A8 801D2DC8 0C02911F */  jal        utilFuncTableJump
    /* 1768AC 801D2DCC 24050009 */   addiu     $a1, $zero, 0x9
    /* 1768B0 801D2DD0 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1768B4 801D2DD4 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 1768B8 801D2DD8 03E00008 */  jr         $ra
    /* 1768BC 801D2DDC 00000000 */   nop
endlabel func_801D2B90_ovl8
.size func_801D2B90_ovl8, . - func_801D2B90_ovl8
