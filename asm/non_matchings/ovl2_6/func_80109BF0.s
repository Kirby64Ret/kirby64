glabel func_80109BF0
/* 092660 80109BF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 092664 80109BF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 092668 80109BF8 AFB10018 */  sw    $s1, 0x18($sp)
/* 09266C 80109BFC AFB00014 */  sw    $s0, 0x14($sp)
/* 092670 80109C00 AFA60030 */  sw    $a2, 0x30($sp)
/* 092674 80109C04 AFA00024 */  sw    $zero, 0x24($sp)
/* 092678 80109C08 8C8E0058 */  lw    $t6, 0x58($a0)
/* 09267C 80109C0C 00808825 */  move  $s1, $a0
/* 092680 80109C10 3C018013 */  lui   $at, %hi(D_8012BD44) # $at, 0x8013
/* 092684 80109C14 00A08025 */  move  $s0, $a1
/* 092688 80109C18 00A02025 */  move  $a0, $a1
/* 09268C 80109C1C 0C041486 */  jal   func_80105218
/* 092690 80109C20 AC2EBD44 */   sw    $t6, %lo(D_8012BD44)($at)
/* 092694 80109C24 0C0413EE */  jal   func_80104FB8
/* 092698 80109C28 02202025 */   move  $a0, $s1
/* 09269C 80109C2C 02202025 */  move  $a0, $s1
/* 0926A0 80109C30 0C0414A1 */  jal   func_80105284
/* 0926A4 80109C34 02002825 */   move  $a1, $s0
/* 0926A8 80109C38 10400003 */  beqz  $v0, .L80109C48_ovl2
/* 0926AC 80109C3C 02202025 */   move  $a0, $s1
/* 0926B0 80109C40 0C041831 */  jal   func_801060C4
/* 0926B4 80109C44 02002825 */   move  $a1, $s0
.L80109C48_ovl2:
/* 0926B8 80109C48 02202025 */  move  $a0, $s1
/* 0926BC 80109C4C 0C0418FC */  jal   func_801063F0
/* 0926C0 80109C50 02002825 */   move  $a1, $s0
/* 0926C4 80109C54 10400003 */  beqz  $v0, .L80109C64_ovl2
/* 0926C8 80109C58 02202025 */   move  $a0, $s1
/* 0926CC 80109C5C 0C041A4C */  jal   func_80106930
/* 0926D0 80109C60 02002825 */   move  $a1, $s0
.L80109C64_ovl2:
/* 0926D4 80109C64 02202025 */  move  $a0, $s1
/* 0926D8 80109C68 0C041B17 */  jal   func_80106C5C
/* 0926DC 80109C6C 02002825 */   move  $a1, $s0
/* 0926E0 80109C70 10400006 */  beqz  $v0, .L80109C8C_ovl2
/* 0926E4 80109C74 02202025 */   move  $a0, $s1
/* 0926E8 80109C78 0C041CF1 */  jal   func_801073C4
/* 0926EC 80109C7C 02002825 */   move  $a1, $s0
/* 0926F0 80109C80 02202025 */  move  $a0, $s1
/* 0926F4 80109C84 0C0425BC */  jal   func_801096F0
/* 0926F8 80109C88 02002825 */   move  $a1, $s0
.L80109C8C_ovl2:
/* 0926FC 80109C8C 02202025 */  move  $a0, $s1
/* 092700 80109C90 0C041E28 */  jal   func_801078A0
/* 092704 80109C94 02002825 */   move  $a1, $s0
/* 092708 80109C98 1040000E */  beqz  $v0, .L80109CD4_ovl2
/* 09270C 80109C9C 8FAF0030 */   lw    $t7, 0x30($sp)
/* 092710 80109CA0 31F80008 */  andi  $t8, $t7, 8
/* 092714 80109CA4 13000006 */  beqz  $t8, .L80109CC0_ovl2
/* 092718 80109CA8 02202025 */   move  $a0, $s1
/* 09271C 80109CAC 02202025 */  move  $a0, $s1
/* 092720 80109CB0 0C042382 */  jal   func_80108E08
/* 092724 80109CB4 02002825 */   move  $a1, $s0
/* 092728 80109CB8 10000003 */  b     .L80109CC8_ovl2
/* 09272C 80109CBC AFA20024 */   sw    $v0, 0x24($sp)
.L80109CC0_ovl2:
/* 092730 80109CC0 0C042490 */  jal   func_80109240
/* 092734 80109CC4 02002825 */   move  $a1, $s0
.L80109CC8_ovl2:
/* 092738 80109CC8 02202025 */  move  $a0, $s1
/* 09273C 80109CCC 0C0426D7 */  jal   func_80109B5C
/* 092740 80109CD0 02002825 */   move  $a1, $s0
.L80109CD4_ovl2:
/* 092744 80109CD4 02202025 */  move  $a0, $s1
/* 092748 80109CD8 0C0419A7 */  jal   func_8010669C
/* 09274C 80109CDC 02002825 */   move  $a1, $s0
/* 092750 80109CE0 10400003 */  beqz  $v0, .L80109CF0_ovl2
/* 092754 80109CE4 02202025 */   move  $a0, $s1
/* 092758 80109CE8 0C041A4C */  jal   func_80106930
/* 09275C 80109CEC 02002825 */   move  $a1, $s0
.L80109CF0_ovl2:
/* 092760 80109CF0 02202025 */  move  $a0, $s1
/* 092764 80109CF4 0C04154C */  jal   func_80105530
/* 092768 80109CF8 02002825 */   move  $a1, $s0
/* 09276C 80109CFC 10400003 */  beqz  $v0, .L80109D0C_ovl2
/* 092770 80109D00 02202025 */   move  $a0, $s1
/* 092774 80109D04 0C041831 */  jal   func_801060C4
/* 092778 80109D08 02002825 */   move  $a1, $s0
.L80109D0C_ovl2:
/* 09277C 80109D0C 02202025 */  move  $a0, $s1
/* 092780 80109D10 0C041C1D */  jal   func_80107074
/* 092784 80109D14 02002825 */   move  $a1, $s0
/* 092788 80109D18 10400003 */  beqz  $v0, .L80109D28_ovl2
/* 09278C 80109D1C 02202025 */   move  $a0, $s1
/* 092790 80109D20 0C041CF1 */  jal   func_801073C4
/* 092794 80109D24 02002825 */   move  $a1, $s0
.L80109D28_ovl2:
/* 092798 80109D28 8E030000 */  lw    $v1, ($s0)
/* 09279C 80109D2C 00031CC2 */  srl   $v1, $v1, 0x13
/* 0927A0 80109D30 10600020 */  beqz  $v1, .L80109DB4_ovl2
/* 0927A4 80109D34 30790E00 */   andi  $t9, $v1, 0xe00
/* 0927A8 80109D38 5320000A */  beql  $t9, $zero, .L80109D64_ovl2
/* 0927AC 80109D3C 30690007 */   andi  $t1, $v1, 7
/* 0927B0 80109D40 8E080004 */  lw    $t0, 4($s0)
/* 0927B4 80109D44 24010014 */  li    $at, 20
/* 0927B8 80109D48 02202025 */  move  $a0, $s1
/* 0927BC 80109D4C 11010004 */  beq   $t0, $at, .L80109D60_ovl2
/* 0927C0 80109D50 02002825 */   move  $a1, $s0
/* 0927C4 80109D54 0C041B17 */  jal   func_80106C5C
/* 0927C8 80109D58 AFA30020 */   sw    $v1, 0x20($sp)
/* 0927CC 80109D5C 8FA30020 */  lw    $v1, 0x20($sp)
.L80109D60_ovl2:
/* 0927D0 80109D60 30690007 */  andi  $t1, $v1, 7
.L80109D64_ovl2:
/* 0927D4 80109D64 5120000A */  beql  $t1, $zero, .L80109D90_ovl2
/* 0927D8 80109D68 306B0038 */   andi  $t3, $v1, 0x38
/* 0927DC 80109D6C 8E0A001C */  lw    $t2, 0x1c($s0)
/* 0927E0 80109D70 24010014 */  li    $at, 20
/* 0927E4 80109D74 02202025 */  move  $a0, $s1
/* 0927E8 80109D78 11410004 */  beq   $t2, $at, .L80109D8C_ovl2
/* 0927EC 80109D7C 02002825 */   move  $a1, $s0
/* 0927F0 80109D80 0C0418FC */  jal   func_801063F0
/* 0927F4 80109D84 AFA30020 */   sw    $v1, 0x20($sp)
/* 0927F8 80109D88 8FA30020 */  lw    $v1, 0x20($sp)
.L80109D8C_ovl2:
/* 0927FC 80109D8C 306B0038 */  andi  $t3, $v1, 0x38
.L80109D90_ovl2:
/* 092800 80109D90 11600008 */  beqz  $t3, .L80109DB4_ovl2
/* 092804 80109D94 00000000 */   nop   
/* 092808 80109D98 8E0C0028 */  lw    $t4, 0x28($s0)
/* 09280C 80109D9C 24010014 */  li    $at, 20
/* 092810 80109DA0 02202025 */  move  $a0, $s1
/* 092814 80109DA4 11810003 */  beq   $t4, $at, .L80109DB4_ovl2
/* 092818 80109DA8 00000000 */   nop   
/* 09281C 80109DAC 0C0414A1 */  jal   func_80105284
/* 092820 80109DB0 02002825 */   move  $a1, $s0
.L80109DB4_ovl2:
/* 092824 80109DB4 3C0D8013 */  lui   $t5, %hi(D_8012BD40) # $t5, 0x8013
/* 092828 80109DB8 8DADBD40 */  lw    $t5, %lo(D_8012BD40)($t5)
/* 09282C 80109DBC AE2D0058 */  sw    $t5, 0x58($s1)
/* 092830 80109DC0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 092834 80109DC4 8FB10018 */  lw    $s1, 0x18($sp)
/* 092838 80109DC8 8FB00014 */  lw    $s0, 0x14($sp)
/* 09283C 80109DCC 8FA20024 */  lw    $v0, 0x24($sp)
/* 092840 80109DD0 03E00008 */  jr    $ra
/* 092844 80109DD4 27BD0028 */   addiu $sp, $sp, 0x28
