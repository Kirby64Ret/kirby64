glabel func_8016C558_ovl3
/* CCF98 8016C558 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CCF9C 8016C55C AFBF0014 */  sw         $ra, 0x14($sp)
/* CCFA0 8016C560 0C047952 */  jal        func_8011E548
/* CCFA4 8016C564 AFA40038 */   sw        $a0, 0x38($sp)
/* CCFA8 8016C568 0C0476BE */  jal        func_8011DAF8
/* CCFAC 8016C56C 00000000 */   nop
/* CCFB0 8016C570 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CCFB4 8016C574 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CCFB8 8016C578 90EE0017 */  lbu        $t6, 0x17($a3)
/* CCFBC 8016C57C 51C00003 */  beql       $t6, $zero, .L8016C58C_ovl3
/* CCFC0 8016C580 94EF0068 */   lhu       $t7, 0x68($a3)
/* CCFC4 8016C584 A0E0000A */  sb         $zero, 0xA($a3)
/* CCFC8 8016C588 94EF0068 */  lhu        $t7, 0x68($a3)
.L8016C58C_ovl3:
/* CCFCC 8016C58C 24010002 */  addiu      $at, $zero, 0x2
/* CCFD0 8016C590 15E10004 */  bne        $t7, $at, .L8016C5A4_ovl3
/* CCFD4 8016C594 3C048019 */   lui       $a0, %hi(D_80193168_ovl3)
/* CCFD8 8016C598 24843168 */  addiu      $a0, $a0, %lo(D_80193168_ovl3)
/* CCFDC 8016C59C 0C055127 */  jal        func_8015449C_ovl3
/* CCFE0 8016C5A0 00002825 */   or        $a1, $zero, $zero
.L8016C5A4_ovl3:
/* CCFE4 8016C5A4 3C188005 */  lui        $t8, %hi(D_8004A7C4)
/* CCFE8 8016C5A8 8F18A7C4 */  lw         $t8, %lo(D_8004A7C4)($t8)
/* CCFEC 8016C5AC 3C04800E */  lui        $a0, %hi(D_800DDFD0)
/* CCFF0 8016C5B0 3C068019 */  lui        $a2, %hi(D_80196AE8_ovl3)
/* CCFF4 8016C5B4 8F190000 */  lw         $t9, 0x0($t8)
/* CCFF8 8016C5B8 24C66AE8 */  addiu      $a2, $a2, %lo(D_80196AE8_ovl3)
/* CCFFC 8016C5BC 24050053 */  addiu      $a1, $zero, 0x53
/* CD000 8016C5C0 00194080 */  sll        $t0, $t9, 2
/* CD004 8016C5C4 00882021 */  addu       $a0, $a0, $t0
/* CD008 8016C5C8 0C02911F */  jal        call_virtual_function
/* CD00C 8016C5CC 8C84DFD0 */   lw        $a0, %lo(D_800DDFD0)($a0)
/* CD010 8016C5D0 0C048827 */  jal        func_8012209C
/* CD014 8016C5D4 00000000 */   nop
/* CD018 8016C5D8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD01C 8016C5DC 10400003 */  beqz       $v0, .L8016C5EC_ovl3
/* CD020 8016C5E0 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CD024 8016C5E4 24090001 */  addiu      $t1, $zero, 0x1
/* CD028 8016C5E8 A0E90017 */  sb         $t1, 0x17($a3)
.L8016C5EC_ovl3:
/* CD02C 8016C5EC 90EA0017 */  lbu        $t2, 0x17($a3)
/* CD030 8016C5F0 51400006 */  beql       $t2, $zero, .L8016C60C_ovl5
/* CD034 8016C5F4 8CEB00A0 */   lw        $t3, 0xA0($a3)
/* CD038 8016C5F8 0C056A7E */  jal        func_8015A9F8_ovl3
/* CD03C 8016C5FC 00000000 */   nop
/* CD040 8016C600 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD044 8016C604 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CD048 8016C608 8CEB00A0 */  lw         $t3, 0xA0($a3)
.L8016C60C_ovl5:
/* CD04C 8016C60C 2401000F */  addiu      $at, $zero, 0xF
/* CD050 8016C610 1561000B */  bne        $t3, $at, .L8016C640_ovl3
/* CD054 8016C614 3C018019 */   lui       $at, %hi(D_80197344_ovl3)
/* CD058 8016C618 C4247344 */  lwc1       $f4, %lo(D_80197344_ovl3)($at)
/* CD05C 8016C61C C4E60038 */  lwc1       $f6, 0x38($a3)
.L8016C620_ovl5:
/* CD060 8016C620 46062032 */  c.eq.s     $f4, $f6
/* CD064 8016C624 00000000 */  nop
/* CD068 8016C628 45000005 */  bc1f       .L8016C640_ovl3
/* CD06C 8016C62C 00000000 */   nop
/* CD070 8016C630 0C0486F3 */  jal        func_80121BCC
/* CD074 8016C634 240400F9 */   addiu     $a0, $zero, 0xF9
.L8016C638_ovl5:
/* CD078 8016C638 10000003 */  b          .L8016C648_ovl3
/* CD07C 8016C63C 00000000 */   nop
.L8016C640_ovl3:
/* CD080 8016C640 0C0486F3 */  jal        func_80121BCC
/* CD084 8016C644 240400FB */   addiu     $a0, $zero, 0xFB
.L8016C648_ovl3:
/* CD088 8016C648 0C048681 */  jal        func_80121A04
/* CD08C 8016C64C 00000000 */   nop
/* CD090 8016C650 0C04874F */  jal        func_80121D3C
/* CD094 8016C654 00000000 */   nop
.L8016C658_ovl5:
/* CD098 8016C658 0C0484A9 */  jal        func_801212A4
/* CD09C 8016C65C 00000000 */   nop
/* CD0A0 8016C660 3C0C800D */  lui        $t4, %hi(D_800D6B54)
/* CD0A4 8016C664 8D8C6B54 */  lw         $t4, %lo(D_800D6B54)($t4)
/* CD0A8 8016C668 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD0AC 8016C66C 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016C670_ovl5:
/* CD0B0 8016C670 15800013 */  bnez       $t4, .L8016C6C0_ovl3
/* CD0B4 8016C674 3C01800D */   lui       $at, %hi(gKirbyHp)
/* CD0B8 8016C678 44804000 */  mtc1       $zero, $f8
/* CD0BC 8016C67C C42A6E50 */  lwc1       $f10, %lo(gKirbyHp)($at)
/* CD0C0 8016C680 460A4032 */  c.eq.s     $f8, $f10
/* CD0C4 8016C684 00000000 */  nop
.L8016C688_ovl5:
/* CD0C8 8016C688 4501000D */  bc1t       .L8016C6C0_ovl3
/* CD0CC 8016C68C 00000000 */   nop
/* CD0D0 8016C690 8CED015C */  lw         $t5, 0x15C($a3)
/* CD0D4 8016C694 11A00006 */  beqz       $t5, .L8016C6B0_ovl3
/* CD0D8 8016C698 00000000 */   nop
/* CD0DC 8016C69C 90EE0014 */  lbu        $t6, 0x14($a3)
/* CD0E0 8016C6A0 15C00003 */  bnez       $t6, .L8016C6B0_ovl3
.L8016C6A4_ovl5:
/* CD0E4 8016C6A4 00000000 */   nop
/* CD0E8 8016C6A8 0C047529 */  jal        func_8011D4A4
/* CD0EC 8016C6AC C4EC0158 */   lwc1      $f12, 0x158($a3)
.L8016C6B0_ovl3:
/* CD0F0 8016C6B0 0C0487D4 */  jal        func_80121F50
/* CD0F4 8016C6B4 00000000 */   nop
/* CD0F8 8016C6B8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD0FC 8016C6BC 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
.L8016C6C0_ovl3:
/* CD100 8016C6C0 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* CD104 8016C6C4 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* CD108 8016C6C8 3C01800E */  lui        $at, %hi(D_800E3210)
/* CD10C 8016C6CC 44808000 */  mtc1       $zero, $f16
.L8016C6D0_ovl5:
/* CD110 8016C6D0 8DF80000 */  lw         $t8, 0x0($t7)
/* CD114 8016C6D4 0018C880 */  sll        $t9, $t8, 2
/* CD118 8016C6D8 00390821 */  addu       $at, $at, $t9
/* CD11C 8016C6DC C4323210 */  lwc1       $f18, %lo(D_800E3210)($at)
/* CD120 8016C6E0 4610903E */  c.le.s     $f18, $f16
/* CD124 8016C6E4 00000000 */  nop
/* CD128 8016C6E8 45020006 */  bc1fl      .L8016C704_ovl3
/* CD12C 8016C6EC 8CEA00E4 */   lw        $t2, 0xE4($a3)
.L8016C6F0_ovl5:
/* CD130 8016C6F0 8CE80034 */  lw         $t0, 0x34($a3)
/* CD134 8016C6F4 2401FFFB */  addiu      $at, $zero, -0x5
.L8016C6F8_ovl5:
/* CD138 8016C6F8 01014824 */  and        $t1, $t0, $at
/* CD13C 8016C6FC ACE90034 */  sw         $t1, 0x34($a3)
/* CD140 8016C700 8CEA00E4 */  lw         $t2, 0xE4($a3)
.L8016C704_ovl3:
/* CD144 8016C704 3C014100 */  lui        $at, (0x41000000 >> 16)
/* CD148 8016C708 11400025 */  beqz       $t2, .L8016C7A0_ovl3
.L8016C70C_ovl5:
/* CD14C 8016C70C 00000000 */   nop
/* CD150 8016C710 44812000 */  mtc1       $at, $f4
/* CD154 8016C714 C4E6017C */  lwc1       $f6, 0x17C($a3)
.L8016C718_ovl5:
/* CD158 8016C718 4606203C */  c.lt.s     $f4, $f6
/* CD15C 8016C71C 00000000 */  nop
/* CD160 8016C720 4500001F */  bc1f       .L8016C7A0_ovl3
/* CD164 8016C724 00000000 */   nop
/* CD168 8016C728 90E30005 */  lbu        $v1, 0x5($a3)
/* CD16C 8016C72C 2401000D */  addiu      $at, $zero, 0xD
/* CD170 8016C730 1061001B */  beq        $v1, $at, .L8016C7A0_ovl3
/* CD174 8016C734 24010009 */   addiu     $at, $zero, 0x9
/* CD178 8016C738 10610019 */  beq        $v1, $at, .L8016C7A0_ovl3
/* CD17C 8016C73C 00000000 */   nop
/* CD180 8016C740 0C05A4F1 */  jal        func_801693C4
/* CD184 8016C744 24040001 */   addiu     $a0, $zero, 0x1
/* CD188 8016C748 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD18C 8016C74C 2401FFFF */  addiu      $at, $zero, -0x1
/* CD190 8016C750 10410013 */  beq        $v0, $at, .L8016C7A0_ovl3
/* CD194 8016C754 24E7E7C0 */   addiu     $a3, $a3, %lo(gKirbyState)
/* CD198 8016C758 3C0B8005 */  lui        $t3, %hi(D_8004A7C4)
.L8016C75C_ovl5:
/* CD19C 8016C75C 8D6BA7C4 */  lw         $t3, %lo(D_8004A7C4)($t3)
/* CD1A0 8016C760 3C05800E */  lui        $a1, %hi(D_800E0490)
/* CD1A4 8016C764 00022080 */  sll        $a0, $v0, 2
/* CD1A8 8016C768 8D6C0000 */  lw         $t4, 0x0($t3)
/* CD1AC 8016C76C 3C01800F */  lui        $at, %hi(D_800EC2E0)
.L8016C770_ovl5:
/* CD1B0 8016C770 00240821 */  addu       $at, $at, $a0
/* CD1B4 8016C774 000C6880 */  sll        $t5, $t4, 2
/* CD1B8 8016C778 00AD2821 */  addu       $a1, $a1, $t5
/* CD1BC 8016C77C 8CA50490 */  lw         $a1, %lo(D_800E0490)($a1)
/* CD1C0 8016C780 AC20C2E0 */  sw         $zero, %lo(D_800EC2E0)($at)
/* CD1C4 8016C784 3C01800F */  lui        $at, %hi(D_800EC660)
.L8016C788_ovl5:
/* CD1C8 8016C788 8CA30004 */  lw         $v1, 0x4($a1)
/* CD1CC 8016C78C 00240821 */  addu       $at, $at, $a0
/* CD1D0 8016C790 C4680000 */  lwc1       $f8, 0x0($v1)
/* CD1D4 8016C794 C46A0004 */  lwc1       $f10, 0x4($v1)
/* CD1D8 8016C798 460A4400 */  add.s      $f16, $f8, $f10
/* CD1DC 8016C79C E430C660 */  swc1       $f16, %lo(D_800EC660)($at)
.L8016C7A0_ovl3:
/* CD1E0 8016C7A0 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* CD1E4 8016C7A4 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
.L8016C7A8_ovl5:
/* CD1E8 8016C7A8 90E30005 */  lbu        $v1, 0x5($a3)
/* CD1EC 8016C7AC 2401000B */  addiu      $at, $zero, 0xB
/* CD1F0 8016C7B0 8C820000 */  lw         $v0, 0x0($a0)
/* CD1F4 8016C7B4 3C0E800E */  lui        $t6, %hi(D_800DFBD0)
/* CD1F8 8016C7B8 14610021 */  bne        $v1, $at, .L8016C840_ovl5
/* CD1FC 8016C7BC 00021080 */   sll       $v0, $v0, 2
.L8016C7C0_ovl5:
/* CD200 8016C7C0 01C27021 */  addu       $t6, $t6, $v0
/* CD204 8016C7C4 8DCEFBD0 */  lw         $t6, %lo(D_800DFBD0)($t6)
/* CD208 8016C7C8 27A40024 */  addiu      $a0, $sp, 0x24
/* CD20C 8016C7CC 3406FFFF */  ori        $a2, $zero, 0xFFFF
/* CD210 8016C7D0 0C02C8D0 */  jal        func_800B2340
/* CD214 8016C7D4 8DC50008 */   lw        $a1, 0x8($t6)
.L8016C7D8_ovl5:
/* CD218 8016C7D8 3C028013 */  lui        $v0, %hi(D_8012E922 + 0x22)
/* CD21C 8016C7DC 2442E944 */  addiu      $v0, $v0, %lo(D_8012E922 + 0x22)
/* CD220 8016C7E0 8C4F0000 */  lw         $t7, 0x0($v0)
/* CD224 8016C7E4 C7B20024 */  lwc1       $f18, 0x24($sp)
/* CD228 8016C7E8 3C088005 */  lui        $t0, %hi(D_8004A7C4)
/* CD22C 8016C7EC 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
/* CD230 8016C7F0 E5F20004 */  swc1       $f18, 0x4($t7)
.L8016C7F4_ovl5:
/* CD234 8016C7F4 8C580000 */  lw         $t8, 0x0($v0)
/* CD238 8016C7F8 C7A40028 */  lwc1       $f4, 0x28($sp)
/* CD23C 8016C7FC 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD240 8016C800 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CD244 8016C804 E7040008 */  swc1       $f4, 0x8($t8)
/* CD248 8016C808 8C590000 */  lw         $t9, 0x0($v0)
/* CD24C 8016C80C C7A6002C */  lwc1       $f6, 0x2C($sp)
/* CD250 8016C810 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* CD254 8016C814 E726000C */  swc1       $f6, 0xC($t9)
/* CD258 8016C818 8D08A7C4 */  lw         $t0, %lo(D_8004A7C4)($t0)
/* CD25C 8016C81C 8C4B0000 */  lw         $t3, 0x0($v0)
.L8016C820_ovl5:
/* CD260 8016C820 8D090000 */  lw         $t1, 0x0($t0)
/* CD264 8016C824 00095080 */  sll        $t2, $t1, 2
/* CD268 8016C828 002A0821 */  addu       $at, $at, $t2
/* CD26C 8016C82C C42841D0 */  lwc1       $f8, %lo(gEntitiesAngleYArray)($at)
/* CD270 8016C830 E568001C */  swc1       $f8, 0x1C($t3)
/* CD274 8016C834 90E30005 */  lbu        $v1, 0x5($a3)
/* CD278 8016C838 1000000F */  b          .L8016C878_ovl3
/* CD27C 8016C83C 8C84A7C4 */   lw        $a0, %lo(D_8004A7C4)($a0)
.L8016C840_ovl5:
/* CD280 8016C840 3C0C800E */  lui        $t4, %hi(gEntityVtableIndexArray)
/* CD284 8016C844 01826021 */  addu       $t4, $t4, $v0
.L8016C848_ovl5:
/* CD288 8016C848 8D8CDC50 */  lw         $t4, %lo(gEntityVtableIndexArray)($t4)
/* CD28C 8016C84C 24010050 */  addiu      $at, $zero, 0x50
/* CD290 8016C850 11810009 */  beq        $t4, $at, .L8016C878_ovl3
/* CD294 8016C854 3C028013 */   lui       $v0, %hi(D_8012E922 + 0x22)
/* CD298 8016C858 2442E944 */  addiu      $v0, $v0, %lo(D_8012E922 + 0x22)
/* CD29C 8016C85C 0C03FC80 */  jal        func_800FF200
/* CD2A0 8016C860 8C440000 */   lw        $a0, 0x0($v0)
/* CD2A4 8016C864 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD2A8 8016C868 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CD2AC 8016C86C 3C048005 */  lui        $a0, %hi(D_8004A7C4)
/* CD2B0 8016C870 8C84A7C4 */  lw         $a0, %lo(D_8004A7C4)($a0)
/* CD2B4 8016C874 90E30005 */  lbu        $v1, 0x5($a3)
.L8016C878_ovl3:
/* CD2B8 8016C878 2401000D */  addiu      $at, $zero, 0xD
.L8016C87C_ovl5:
/* CD2BC 8016C87C 10610023 */  beq        $v1, $at, .L8016C90C_ovl3
.L8016C880_ovl5:
/* CD2C0 8016C880 24010006 */   addiu     $at, $zero, 0x6
/* CD2C4 8016C884 50610022 */  beql       $v1, $at, .L8016C910_ovl3
/* CD2C8 8016C888 90E20015 */   lbu       $v0, 0x15($a3)
/* CD2CC 8016C88C 8CED00E4 */  lw         $t5, 0xE4($a3)
/* CD2D0 8016C890 51A0001F */  beql       $t5, $zero, .L8016C910_ovl3
/* CD2D4 8016C894 90E20015 */   lbu       $v0, 0x15($a3)
/* CD2D8 8016C898 8C820000 */  lw         $v0, 0x0($a0)
/* CD2DC 8016C89C 3C01800E */  lui        $at, %hi(D_800E3210)
/* CD2E0 8016C8A0 44805000 */  mtc1       $zero, $f10
/* CD2E4 8016C8A4 00021080 */  sll        $v0, $v0, 2
/* CD2E8 8016C8A8 00220821 */  addu       $at, $at, $v0
/* CD2EC 8016C8AC C4303210 */  lwc1       $f16, %lo(D_800E3210)($at)
/* CD2F0 8016C8B0 3C05800E */  lui        $a1, %hi(D_800E3750)
/* CD2F4 8016C8B4 4610503C */  c.lt.s     $f10, $f16
/* CD2F8 8016C8B8 00000000 */  nop
/* CD2FC 8016C8BC 45020014 */  bc1fl      .L8016C910_ovl3
glabel func_8016C8C0_ovl5
/* CD300 8016C8C0 90E20015 */   lbu       $v0, 0x15($a3)
/* CD304 8016C8C4 44809000 */  mtc1       $zero, $f18
/* CD308 8016C8C8 24A53750 */  addiu      $a1, $a1, %lo(D_800E3750)
/* CD30C 8016C8CC 00A27021 */  addu       $t6, $a1, $v0
/* CD310 8016C8D0 E5D20000 */  swc1       $f18, 0x0($t6)
/* CD314 8016C8D4 8C820000 */  lw         $v0, 0x0($a0)
/* CD318 8016C8D8 3C01800E */  lui        $at, %hi(D_800E3210)
/* CD31C 8016C8DC 00021080 */  sll        $v0, $v0, 2
/* CD320 8016C8E0 00A27821 */  addu       $t7, $a1, $v0
/* CD324 8016C8E4 C5E40000 */  lwc1       $f4, 0x0($t7)
/* CD328 8016C8E8 00220821 */  addu       $at, $at, $v0
/* CD32C 8016C8EC E4243210 */  swc1       $f4, %lo(D_800E3210)($at)
/* CD330 8016C8F0 8C980000 */  lw         $t8, 0x0($a0)
/* CD334 8016C8F4 3C018019 */  lui        $at, %hi(D_80197348_ovl3)
/* CD338 8016C8F8 C4267348 */  lwc1       $f6, %lo(D_80197348_ovl3)($at)
/* CD33C 8016C8FC 3C01800E */  lui        $at, %hi(D_800E3C90)
/* CD340 8016C900 0018C880 */  sll        $t9, $t8, 2
/* CD344 8016C904 00390821 */  addu       $at, $at, $t9
/* CD348 8016C908 E4263C90 */  swc1       $f6, %lo(D_800E3C90)($at)
.L8016C90C_ovl3:
/* CD34C 8016C90C 90E20015 */  lbu        $v0, 0x15($a3)
.L8016C910_ovl3:
/* CD350 8016C910 10400002 */  beqz       $v0, .L8016C91C_ovl3
/* CD354 8016C914 2448FFFF */   addiu     $t0, $v0, -0x1
/* CD358 8016C918 A0E80015 */  sb         $t0, 0x15($a3)
.L8016C91C_ovl3:
/* CD35C 8016C91C 90E20016 */  lbu        $v0, 0x16($a3)
/* CD360 8016C920 10400002 */  beqz       $v0, .L8016C92C_ovl3
/* CD364 8016C924 2449FFFF */   addiu     $t1, $v0, -0x1
/* CD368 8016C928 A0E90016 */  sb         $t1, 0x16($a3)
.L8016C92C_ovl3:
/* CD36C 8016C92C 8C8A0000 */  lw         $t2, 0x0($a0)
/* CD370 8016C930 3C0C800F */  lui        $t4, %hi(D_800E8920)
/* CD374 8016C934 000A5880 */  sll        $t3, $t2, 2
/* CD378 8016C938 018B6021 */  addu       $t4, $t4, $t3
/* CD37C 8016C93C 8D8C8920 */  lw         $t4, %lo(D_800E8920)($t4)
/* CD380 8016C940 1180000F */  beqz       $t4, .L8016C980_ovl3
/* CD384 8016C944 3C0D800D */   lui       $t5, %hi(gGameTampered)
/* CD388 8016C948 8DAD6EC8 */  lw         $t5, %lo(gGameTampered)($t5)
/* CD38C 8016C94C 240F00F0 */  addiu      $t7, $zero, 0xF0
/* CD390 8016C950 51A0000A */  beql       $t5, $zero, .L8016C97C_ovl3
/* CD394 8016C954 ACEF001C */   sw        $t7, 0x1C($a3)
/* CD398 8016C958 0C006291 */  jal        random_soft_s32_range
/* CD39C 8016C95C 2404003C */   addiu     $a0, $zero, 0x3C
/* CD3A0 8016C960 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD3A4 8016C964 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CD3A8 8016C968 244E005A */  addiu      $t6, $v0, 0x5A
/* CD3AC 8016C96C ACEE001C */  sw         $t6, 0x1C($a3)
/* CD3B0 8016C970 10000002 */  b          .L8016C97C_ovl3
glabel func_8016C974_ovl5
/* CD3B4 8016C974 90E30005 */   lbu       $v1, 0x5($a3)
/* CD3B8 8016C978 ACEF001C */  sw         $t7, 0x1C($a3)
.L8016C97C_ovl3:
/* CD3BC 8016C97C A4E000BA */  sh         $zero, 0xBA($a3)
.L8016C980_ovl3:
/* CD3C0 8016C980 24010017 */  addiu      $at, $zero, 0x17
/* CD3C4 8016C984 5061000B */  beql       $v1, $at, .L8016C9B4_ovl3
/* CD3C8 8016C988 8CE400A0 */   lw        $a0, 0xA0($a3)
/* CD3CC 8016C98C 80F8000D */  lb         $t8, 0xD($a3)
/* CD3D0 8016C990 2401FFFE */  addiu      $at, $zero, -0x2
/* CD3D4 8016C994 24040010 */  addiu      $a0, $zero, 0x10
/* CD3D8 8016C998 57010006 */  bnel       $t8, $at, .L8016C9B4_ovl3
/* CD3DC 8016C99C 8CE400A0 */   lw        $a0, 0xA0($a3)
/* CD3E0 8016C9A0 0C048BDB */  jal        set_kirby_action_1
/* CD3E4 8016C9A4 24050001 */   addiu     $a1, $zero, 0x1
/* CD3E8 8016C9A8 3C078013 */  lui        $a3, %hi(gKirbyState)
/* CD3EC 8016C9AC 24E7E7C0 */  addiu      $a3, $a3, %lo(gKirbyState)
/* CD3F0 8016C9B0 8CE400A0 */  lw         $a0, 0xA0($a3)
.L8016C9B4_ovl3:
/* CD3F4 8016C9B4 24010001 */  addiu      $at, $zero, 0x1
/* CD3F8 8016C9B8 10810016 */  beq        $a0, $at, .L8016CA14_ovl3
/* CD3FC 8016C9BC 3C03801A */   lui       $v1, %hi(D_80198830_ovl3)
/* CD400 8016C9C0 24638830 */  addiu      $v1, $v1, %lo(D_80198830_ovl3)
/* CD404 8016C9C4 84620000 */  lh         $v0, 0x0($v1)
/* CD408 8016C9C8 1440000F */  bnez       $v0, .L8016CA08_ovl3
/* CD40C 8016C9CC 00000000 */   nop
/* CD410 8016C9D0 84790002 */  lh         $t9, 0x2($v1)
/* CD414 8016C9D4 240A001E */  addiu      $t2, $zero, 0x1E
/* CD418 8016C9D8 240B0002 */  addiu      $t3, $zero, 0x2
/* CD41C 8016C9DC 27280001 */  addiu      $t0, $t9, 0x1
/* CD420 8016C9E0 A4680002 */  sh         $t0, 0x2($v1)
/* CD424 8016C9E4 84690002 */  lh         $t1, 0x2($v1)
/* CD428 8016C9E8 29210002 */  slti       $at, $t1, 0x2
/* CD42C 8016C9EC 50200004 */  beql       $at, $zero, .L8016CA00_ovl3
/* CD430 8016C9F0 A4600000 */   sh        $zero, 0x0($v1)
/* CD434 8016C9F4 10000007 */  b          .L8016CA14_ovl3
/* CD438 8016C9F8 A46A0000 */   sh        $t2, 0x0($v1)
/* CD43C 8016C9FC A4600000 */  sh         $zero, 0x0($v1)
.L8016CA00_ovl3:
/* CD440 8016CA00 10000004 */  b          .L8016CA14_ovl3
/* CD444 8016CA04 A46B0002 */   sh        $t3, 0x2($v1)
.L8016CA08_ovl3:
/* CD448 8016CA08 18400002 */  blez       $v0, .L8016CA14_ovl3
/* CD44C 8016CA0C 244CFFFF */   addiu     $t4, $v0, -0x1
/* CD450 8016CA10 A46C0000 */  sh         $t4, 0x0($v1)
.L8016CA14_ovl3:
/* CD454 8016CA14 3C03801A */  lui        $v1, %hi(D_80198830_ovl3)
/* CD458 8016CA18 2401000C */  addiu      $at, $zero, 0xC
/* CD45C 8016CA1C 10810017 */  beq        $a0, $at, .L8016CA7C_ovl3
/* CD460 8016CA20 24638830 */   addiu     $v1, $v1, %lo(D_80198830_ovl3)
/* CD464 8016CA24 8462000A */  lh         $v0, 0xA($v1)
/* CD468 8016CA28 3C0D8005 */  lui        $t5, %hi(D_8004A7C4)
/* CD46C 8016CA2C 14400012 */  bnez       $v0, .L8016CA78_ovl3
/* CD470 8016CA30 2448FFFF */   addiu     $t0, $v0, -0x1
/* CD474 8016CA34 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* CD478 8016CA38 3C0E800F */  lui        $t6, %hi(D_800E8920)
/* CD47C 8016CA3C 3C0F800F */  lui        $t7, %hi(D_800E8AE0)
/* CD480 8016CA40 8DA20000 */  lw         $v0, 0x0($t5)
/* CD484 8016CA44 24190003 */  addiu      $t9, $zero, 0x3
/* CD488 8016CA48 00021080 */  sll        $v0, $v0, 2
glabel func_8016CA4C_ovl5
/* CD48C 8016CA4C 01C27021 */  addu       $t6, $t6, $v0
/* CD490 8016CA50 8DCE8920 */  lw         $t6, %lo(D_800E8920)($t6)
/* CD494 8016CA54 01E27821 */  addu       $t7, $t7, $v0
/* CD498 8016CA58 15C00005 */  bnez       $t6, .L8016CA70_ovl3
/* CD49C 8016CA5C 00000000 */   nop
/* CD4A0 8016CA60 8DEF8AE0 */  lw         $t7, %lo(D_800E8AE0)($t7)
/* CD4A4 8016CA64 31F80006 */  andi       $t8, $t7, 0x6
/* CD4A8 8016CA68 53000005 */  beql       $t8, $zero, .L8016CA80_ovl5
/* CD4AC 8016CA6C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8016CA70_ovl3:
/* CD4B0 8016CA70 10000002 */  b          .L8016CA7C_ovl3
/* CD4B4 8016CA74 A4790008 */   sh        $t9, 0x8($v1)
.L8016CA78_ovl3:
/* CD4B8 8016CA78 A468000A */  sh         $t0, 0xA($v1)
.L8016CA7C_ovl3:
/* CD4BC 8016CA7C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8016CA80_ovl5:
/* CD4C0 8016CA80 27BD0038 */  addiu      $sp, $sp, 0x38
.L8016CA84_ovl5:
/* CD4C4 8016CA84 03E00008 */  jr         $ra
/* CD4C8 8016CA88 00000000 */   nop
