glabel check_save_file_completion_cheat_code
/* F8630 80151100 3C028005 */  lui        $v0, %hi(gPlayerControllers)
/* F8634 80151104 24428F20 */  addiu      $v0, $v0, %lo(gPlayerControllers)
/* F8638 80151108 944E000A */  lhu        $t6, 0xA($v0)
/* F863C 8015110C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F8640 80151110 AFBF0014 */  sw         $ra, 0x14($sp)
/* F8644 80151114 31CF0020 */  andi       $t7, $t6, 0x20
/* F8648 80151118 11E00052 */  beqz       $t7, .L80151264_ovl4
/* F864C 8015111C AFA40018 */   sw        $a0, 0x18($sp)
.L80151120_ovl6:
/* F8650 80151120 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* F8654 80151124 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* F8658 80151128 3C09800F */  lui        $t1, %hi(D_800E9C60)
/* F865C 8015112C 25299C60 */  addiu      $t1, $t1, %lo(D_800E9C60)
/* F8660 80151130 8F190000 */  lw         $t9, 0x0($t8)
/* F8664 80151134 00194080 */  sll        $t0, $t9, 2
glabel func_80151138_ovl6
/* F8668 80151138 01091821 */  addu       $v1, $t0, $t1
/* F866C 8015113C 8C640000 */  lw         $a0, 0x0($v1)
/* F8670 80151140 2C810006 */  sltiu      $at, $a0, 0x6
/* F8674 80151144 10200047 */  beqz       $at, .L80151264_ovl4
/* F8678 80151148 00045080 */   sll       $t2, $a0, 2
.L8015114C_ovl3:
/* F867C 8015114C 3C018016 */  lui        $at, %hi(jtbl_8015C4C0_ovl4)
.L80151150_ovl3:
/* F8680 80151150 002A0821 */  addu       $at, $at, $t2
/* F8684 80151154 8C2AC4C0 */  lw         $t2, %lo(jtbl_8015C4C0_ovl4)($at)
.L80151158_ovl6:
/* F8688 80151158 01400008 */  jr         $t2
/* F868C 8015115C 00000000 */   nop
glabel func_80151160_ovl3
/* F8690 80151160 944B000C */  lhu        $t3, 0xC($v0)
/* F8694 80151164 248D0001 */  addiu      $t5, $a0, 0x1
/* F8698 80151168 316C0008 */  andi       $t4, $t3, 0x8
/* F869C 8015116C 5180003E */  beql       $t4, $zero, .L80151268_ovl4
/* F86A0 80151170 8FBF0014 */   lw        $ra, 0x14($sp)
/* F86A4 80151174 1000003B */  b          .L80151264_ovl4
/* F86A8 80151178 AC6D0000 */   sw        $t5, 0x0($v1)
/* F86AC 8015117C 944E000C */  lhu        $t6, 0xC($v0)
/* F86B0 80151180 24980001 */  addiu      $t8, $a0, 0x1
/* F86B4 80151184 31CF0008 */  andi       $t7, $t6, 0x8
/* F86B8 80151188 51E00037 */  beql       $t7, $zero, .L80151268_ovl4
/* F86BC 8015118C 8FBF0014 */   lw        $ra, 0x14($sp)
/* F86C0 80151190 10000034 */  b          .L80151264_ovl4
.L80151194_ovl6:
/* F86C4 80151194 AC780000 */   sw        $t8, 0x0($v1)
/* F86C8 80151198 9459000C */  lhu        $t9, 0xC($v0)
/* F86CC 8015119C 24890001 */  addiu      $t1, $a0, 0x1
/* F86D0 801511A0 33280010 */  andi       $t0, $t9, 0x10
/* F86D4 801511A4 51000030 */  beql       $t0, $zero, .L80151268_ovl4
.L801511A8_ovl6:
/* F86D8 801511A8 8FBF0014 */   lw        $ra, 0x14($sp)
/* F86DC 801511AC 1000002D */  b          .L80151264_ovl4
/* F86E0 801511B0 AC690000 */   sw        $t1, 0x0($v1)
/* F86E4 801511B4 944A000C */  lhu        $t2, 0xC($v0)
/* F86E8 801511B8 248C0001 */  addiu      $t4, $a0, 0x1
.L801511BC_ovl6:
/* F86EC 801511BC 314B0001 */  andi       $t3, $t2, 0x1
/* F86F0 801511C0 51600029 */  beql       $t3, $zero, .L80151268_ovl4
/* F86F4 801511C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* F86F8 801511C8 10000026 */  b          .L80151264_ovl4
/* F86FC 801511CC AC6C0000 */   sw        $t4, 0x0($v1)
/* F8700 801511D0 944D000C */  lhu        $t5, 0xC($v0)
/* F8704 801511D4 248F0001 */  addiu      $t7, $a0, 0x1
/* F8708 801511D8 31AE0002 */  andi       $t6, $t5, 0x2
/* F870C 801511DC 51C00022 */  beql       $t6, $zero, .L80151268_ovl4
/* F8710 801511E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* F8714 801511E4 1000001F */  b          .L80151264_ovl4
/* F8718 801511E8 AC6F0000 */   sw        $t7, 0x0($v1)
/* F871C 801511EC 9458000C */  lhu        $t8, 0xC($v0)
.L801511F0_ovl6:
/* F8720 801511F0 3C02800F */  lui        $v0, %hi(gSaveBuffer1)
.L801511F4_ovl6:
/* F8724 801511F4 2442C9F8 */  addiu      $v0, $v0, %lo(gSaveBuffer1)
.L801511F8_ovl3:
/* F8728 801511F8 33191000 */  andi       $t9, $t8, 0x1000
/* F872C 801511FC 5320001A */  beql       $t9, $zero, .L80151268_ovl4
/* F8730 80151200 8FBF0014 */   lw        $ra, 0x14($sp)
glabel func_80151204_ovl6
/* F8734 80151204 8C4800CC */  lw         $t0, 0xCC($v0)
.L80151208_ovl3:
/* F8738 80151208 24010001 */  addiu      $at, $zero, 0x1
/* F873C 8015120C 55010016 */  bnel       $t0, $at, .L80151268_ovl4
/* F8740 80151210 8FBF0014 */   lw        $ra, 0x14($sp)
/* F8744 80151214 8C4900C4 */  lw         $t1, 0xC4($v0)
/* F8748 80151218 3C039999 */  lui        $v1, (0x99999999 >> 16)
/* F874C 8015121C 34639999 */  ori        $v1, $v1, (0x99999999 & 0xFFFF)
/* F8750 80151220 50690011 */  beql       $v1, $t1, .L80151268_ovl4
/* F8754 80151224 8FBF0014 */   lw        $ra, 0x14($sp)
/* F8758 80151228 8C4A006C */  lw         $t2, 0x6C($v0)
/* F875C 8015122C 546A000E */  bnel       $v1, $t2, .L80151268_ovl4
/* F8760 80151230 8FBF0014 */   lw        $ra, 0x14($sp)
/* F8764 80151234 0C02E971 */  jal        save_file_set_to_full_completion
/* F8768 80151238 24040002 */   addiu     $a0, $zero, 0x2
/* F876C 8015123C 0C029D9E */  jal        play_sound
/* F8770 80151240 24040001 */   addiu     $a0, $zero, 0x1
/* F8774 80151244 3C0C8005 */  lui        $t4, %hi(D_8004A7C4)
/* F8778 80151248 8D8CA7C4 */  lw         $t4, %lo(D_8004A7C4)($t4)
/* F877C 8015124C 3C01800F */  lui        $at, %hi(D_800E9C60)
/* F8780 80151250 240BFFFF */  addiu      $t3, $zero, -0x1
/* F8784 80151254 8D8D0000 */  lw         $t5, 0x0($t4)
/* F8788 80151258 000D7080 */  sll        $t6, $t5, 2
/* F878C 8015125C 002E0821 */  addu       $at, $at, $t6
/* F8790 80151260 AC2B9C60 */  sw         $t3, %lo(D_800E9C60)($at)
.L80151264_ovl4:
/* F8794 80151264 8FBF0014 */  lw         $ra, 0x14($sp)
.L80151268_ovl4:
/* F8798 80151268 27BD0018 */  addiu      $sp, $sp, 0x18
/* F879C 8015126C 03E00008 */  jr         $ra
/* F87A0 80151270 00000000 */   nop
