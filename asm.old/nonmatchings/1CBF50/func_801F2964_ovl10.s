glabel func_801F2964_ovl10
/* 1E36D4 801F2964 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1E36D8 801F2968 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1E36DC 801F296C AFB60030 */  sw         $s6, 0x30($sp)
/* 1E36E0 801F2970 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1E36E4 801F2974 AFB40028 */  sw         $s4, 0x28($sp)
/* 1E36E8 801F2978 AFB30024 */  sw         $s3, 0x24($sp)
/* 1E36EC 801F297C AFB20020 */  sw         $s2, 0x20($sp)
/* 1E36F0 801F2980 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1E36F4 801F2984 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E36F8 801F2988 0C02AC3D */  jal        func_800AB0F4
/* 1E36FC 801F298C AFA40038 */   sw        $a0, 0x38($sp)
/* 1E3700 801F2990 244EFFED */  addiu      $t6, $v0, -0x13
/* 1E3704 801F2994 2DC1000C */  sltiu      $at, $t6, 0xC
/* 1E3708 801F2998 1020028A */  beqz       $at, .L801F33C4_ovl10
/* 1E370C 801F299C 8FA40038 */   lw        $a0, 0x38($sp)
/* 1E3710 801F29A0 000E7080 */  sll        $t6, $t6, 2
/* 1E3714 801F29A4 3C01801F */  lui        $at, %hi(jtbl_801F4CF4_ovl10)
/* 1E3718 801F29A8 002E0821 */  addu       $at, $at, $t6
/* 1E371C 801F29AC 8C2E4CF4 */  lw         $t6, %lo(jtbl_801F4CF4_ovl10)($at)
/* 1E3720 801F29B0 01C00008 */  jr         $t6
/* 1E3724 801F29B4 00000000 */   nop
/* 1E3728 801F29B8 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E372C 801F29BC 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3730 801F29C0 8E300000 */  lw         $s0, 0x0($s1)
.L801F29C4_ovl9:
/* 1E3734 801F29C4 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3738 801F29C8 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E373C 801F29CC 260F0008 */  addiu      $t7, $s0, 0x8
glabel func_801F29D0_ovl9
/* 1E3740 801F29D0 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3744 801F29D4 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3748 801F29D8 8C980000 */  lw         $t8, 0x0($a0)
/* 1E374C 801F29DC 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3750 801F29E0 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3754 801F29E4 0018C880 */  sll        $t9, $t8, 2
/* 1E3758 801F29E8 03F97021 */  addu       $t6, $ra, $t9
/* 1E375C 801F29EC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E3760 801F29F0 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3764 801F29F4 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3768 801F29F8 AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E376C 801F29FC 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3770 801F2A00 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3774 801F2A04 3C0E801F */  lui        $t6, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3778 801F2A08 26180008 */  addiu      $t8, $s0, 0x8
/* 1E377C 801F2A0C AE380000 */  sw         $t8, 0x0($s1)
/* 1E3780 801F2A10 AE140004 */  sw         $s4, 0x4($s0)
/* 1E3784 801F2A14 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3788 801F2A18 8E300000 */  lw         $s0, 0x0($s1)
/* 1E378C 801F2A1C 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3790 801F2A20 25CE4DA0 */  addiu      $t6, $t6, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3794 801F2A24 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3798 801F2A28 AE390000 */  sw         $t9, 0x0($s1)
/* 1E379C 801F2A2C AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E37A0 801F2A30 AE150000 */  sw         $s5, 0x0($s0)
/* 1E37A4 801F2A34 8E300000 */  lw         $s0, 0x0($s1)
/* 1E37A8 801F2A38 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E37AC 801F2A3C 3C18801F */  lui        $t8, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E37B0 801F2A40 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E37B4 801F2A44 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E37B8 801F2A48 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E37BC 801F2A4C 27184D98 */  addiu      $t8, $t8, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E37C0 801F2A50 AE180004 */  sw         $t8, 0x4($s0)
/* 1E37C4 801F2A54 0C02AC48 */  jal        func_800AB120
/* 1E37C8 801F2A58 AE160000 */   sw        $s6, 0x0($s0)
/* 1E37CC 801F2A5C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E37D0 801F2A60 3C0F801F */  lui        $t7, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E37D4 801F2A64 25EF4758 */  addiu      $t7, $t7, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E37D8 801F2A68 26190008 */  addiu      $t9, $s0, 0x8
/* 1E37DC 801F2A6C AE390000 */  sw         $t9, 0x0($s1)
/* 1E37E0 801F2A70 AE140004 */  sw         $s4, 0x4($s0)
/* 1E37E4 801F2A74 AE130000 */  sw         $s3, 0x0($s0)
/* 1E37E8 801F2A78 8E300000 */  lw         $s0, 0x0($s1)
.L801F2A7C_ovl9:
/* 1E37EC 801F2A7C 3C19801F */  lui        $t9, %hi(func_801F471C_ovl9 + 0x34)
/* 1E37F0 801F2A80 27394750 */  addiu      $t9, $t9, %lo(func_801F471C_ovl9 + 0x34)
/* 1E37F4 801F2A84 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E37F8 801F2A88 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E37FC 801F2A8C AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E3800 801F2A90 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3804 801F2A94 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3808 801F2A98 26180008 */  addiu      $t8, $s0, 0x8
/* 1E380C 801F2A9C AE380000 */  sw         $t8, 0x0($s1)
/* 1E3810 801F2AA0 AE190004 */  sw         $t9, 0x4($s0)
/* 1E3814 801F2AA4 10000247 */  b          .L801F33C4_ovl10
/* 1E3818 801F2AA8 AE160000 */   sw        $s6, 0x0($s0)
/* 1E381C 801F2AAC 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3820 801F2AB0 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
.L801F2AB4_ovl9:
/* 1E3824 801F2AB4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3828 801F2AB8 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E382C 801F2ABC 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3830 801F2AC0 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3834 801F2AC4 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3838 801F2AC8 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E383C 801F2ACC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1E3840 801F2AD0 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3844 801F2AD4 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3848 801F2AD8 000FC080 */  sll        $t8, $t7, 2
/* 1E384C 801F2ADC 03F8C821 */  addu       $t9, $ra, $t8
/* 1E3850 801F2AE0 8F2E0000 */  lw         $t6, 0x0($t9)
/* 1E3854 801F2AE4 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3858 801F2AE8 24140018 */  addiu      $s4, $zero, 0x18
/* 1E385C 801F2AEC AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E3860 801F2AF0 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3864 801F2AF4 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3868 801F2AF8 3C19801F */  lui        $t9, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E386C 801F2AFC 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3870 801F2B00 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3874 801F2B04 AE140004 */  sw         $s4, 0x4($s0)
/* 1E3878 801F2B08 AE130000 */  sw         $s3, 0x0($s0)
/* 1E387C 801F2B0C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3880 801F2B10 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3884 801F2B14 27394DA0 */  addiu      $t9, $t9, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3888 801F2B18 26180008 */  addiu      $t8, $s0, 0x8
.L801F2B1C_ovl9:
/* 1E388C 801F2B1C AE380000 */  sw         $t8, 0x0($s1)
/* 1E3890 801F2B20 AE190004 */  sw         $t9, 0x4($s0)
/* 1E3894 801F2B24 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3898 801F2B28 8E300000 */  lw         $s0, 0x0($s1)
/* 1E389C 801F2B2C 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E38A0 801F2B30 3C0F801F */  lui        $t7, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E38A4 801F2B34 260E0008 */  addiu      $t6, $s0, 0x8
.L801F2B38_ovl9:
/* 1E38A8 801F2B38 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E38AC 801F2B3C AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E38B0 801F2B40 25EF4D98 */  addiu      $t7, $t7, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E38B4 801F2B44 AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E38B8 801F2B48 0C02AC7C */  jal        func_800AB1F0
/* 1E38BC 801F2B4C AE160000 */   sw        $s6, 0x0($s0)
/* 1E38C0 801F2B50 8E300000 */  lw         $s0, 0x0($s1)
/* 1E38C4 801F2B54 3C0E801F */  lui        $t6, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E38C8 801F2B58 25CE4758 */  addiu      $t6, $t6, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E38CC 801F2B5C 26180008 */  addiu      $t8, $s0, 0x8
/* 1E38D0 801F2B60 AE380000 */  sw         $t8, 0x0($s1)
/* 1E38D4 801F2B64 AE140004 */  sw         $s4, 0x4($s0)
.L801F2B68_ovl9:
/* 1E38D8 801F2B68 AE130000 */  sw         $s3, 0x0($s0)
/* 1E38DC 801F2B6C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E38E0 801F2B70 3C18801F */  lui        $t8, %hi(func_801F471C_ovl9 + 0x34)
/* 1E38E4 801F2B74 27184750 */  addiu      $t8, $t8, %lo(func_801F471C_ovl9 + 0x34)
.L801F2B78_ovl9:
/* 1E38E8 801F2B78 26190008 */  addiu      $t9, $s0, 0x8
/* 1E38EC 801F2B7C AE390000 */  sw         $t9, 0x0($s1)
glabel func_801F2B80_ovl9
/* 1E38F0 801F2B80 AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E38F4 801F2B84 AE150000 */  sw         $s5, 0x0($s0)
/* 1E38F8 801F2B88 8E300000 */  lw         $s0, 0x0($s1)
/* 1E38FC 801F2B8C 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3900 801F2B90 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3904 801F2B94 AE180004 */  sw         $t8, 0x4($s0)
/* 1E3908 801F2B98 1000020A */  b          .L801F33C4_ovl10
/* 1E390C 801F2B9C AE160000 */   sw        $s6, 0x0($s0)
/* 1E3910 801F2BA0 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3914 801F2BA4 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3918 801F2BA8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E391C 801F2BAC 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3920 801F2BB0 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3924 801F2BB4 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3928 801F2BB8 AE390000 */  sw         $t9, 0x0($s1)
/* 1E392C 801F2BBC AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3930 801F2BC0 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1E3934 801F2BC4 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3938 801F2BC8 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
.L801F2BCC_ovl9:
/* 1E393C 801F2BCC 000E7880 */  sll        $t7, $t6, 2
/* 1E3940 801F2BD0 03EFC021 */  addu       $t8, $ra, $t7
/* 1E3944 801F2BD4 8F190000 */  lw         $t9, 0x0($t8)
/* 1E3948 801F2BD8 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E394C 801F2BDC 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3950 801F2BE0 AE190004 */  sw         $t9, 0x4($s0)
/* 1E3954 801F2BE4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3958 801F2BE8 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
.L801F2BEC_ovl9:
/* 1E395C 801F2BEC 3C18801F */  lui        $t8, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3960 801F2BF0 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3964 801F2BF4 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3968 801F2BF8 AE140004 */  sw         $s4, 0x4($s0)
/* 1E396C 801F2BFC AE130000 */  sw         $s3, 0x0($s0)
/* 1E3970 801F2C00 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3974 801F2C04 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3978 801F2C08 27184DA0 */  addiu      $t8, $t8, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E397C 801F2C0C 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3980 801F2C10 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3984 801F2C14 AE180004 */  sw         $t8, 0x4($s0)
/* 1E3988 801F2C18 AE150000 */  sw         $s5, 0x0($s0)
/* 1E398C 801F2C1C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3990 801F2C20 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E3994 801F2C24 3C0E801F */  lui        $t6, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E3998 801F2C28 26190008 */  addiu      $t9, $s0, 0x8
/* 1E399C 801F2C2C 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E39A0 801F2C30 AE390000 */  sw         $t9, 0x0($s1)
/* 1E39A4 801F2C34 25CE4D98 */  addiu      $t6, $t6, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E39A8 801F2C38 AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E39AC 801F2C3C 0C0050E9 */  jal        func_800143A4
/* 1E39B0 801F2C40 AE160000 */   sw        $s6, 0x0($s0)
/* 1E39B4 801F2C44 8E300000 */  lw         $s0, 0x0($s1)
/* 1E39B8 801F2C48 3C19801F */  lui        $t9, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E39BC 801F2C4C 27394758 */  addiu      $t9, $t9, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E39C0 801F2C50 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E39C4 801F2C54 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E39C8 801F2C58 AE140004 */  sw         $s4, 0x4($s0)
/* 1E39CC 801F2C5C AE130000 */  sw         $s3, 0x0($s0)
/* 1E39D0 801F2C60 8E300000 */  lw         $s0, 0x0($s1)
/* 1E39D4 801F2C64 3C0F801F */  lui        $t7, %hi(func_801F471C_ovl9 + 0x34)
/* 1E39D8 801F2C68 25EF4750 */  addiu      $t7, $t7, %lo(func_801F471C_ovl9 + 0x34)
/* 1E39DC 801F2C6C 26180008 */  addiu      $t8, $s0, 0x8
/* 1E39E0 801F2C70 AE380000 */  sw         $t8, 0x0($s1)
/* 1E39E4 801F2C74 AE190004 */  sw         $t9, 0x4($s0)
/* 1E39E8 801F2C78 AE150000 */  sw         $s5, 0x0($s0)
/* 1E39EC 801F2C7C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E39F0 801F2C80 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E39F4 801F2C84 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E39F8 801F2C88 AE0F0004 */  sw         $t7, 0x4($s0)
.L801F2C8C_ovl9:
/* 1E39FC 801F2C8C 100001CD */  b          .L801F33C4_ovl10
/* 1E3A00 801F2C90 AE160000 */   sw        $s6, 0x0($s0)
/* 1E3A04 801F2C94 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3A08 801F2C98 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
.L801F2C9C_ovl9:
/* 1E3A0C 801F2C9C 8E300000 */  lw         $s0, 0x0($s1)
.L801F2CA0_ovl9:
/* 1E3A10 801F2CA0 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3A14 801F2CA4 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3A18 801F2CA8 26180008 */  addiu      $t8, $s0, 0x8
glabel func_801F2CAC_ovl9
/* 1E3A1C 801F2CAC AE380000 */  sw         $t8, 0x0($s1)
/* 1E3A20 801F2CB0 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3A24 801F2CB4 8C990000 */  lw         $t9, 0x0($a0)
/* 1E3A28 801F2CB8 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3A2C 801F2CBC 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3A30 801F2CC0 00197080 */  sll        $t6, $t9, 2
/* 1E3A34 801F2CC4 03EE7821 */  addu       $t7, $ra, $t6
/* 1E3A38 801F2CC8 8DF80000 */  lw         $t8, 0x0($t7)
/* 1E3A3C 801F2CCC 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3A40 801F2CD0 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3A44 801F2CD4 AE180004 */  sw         $t8, 0x4($s0)
/* 1E3A48 801F2CD8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3A4C 801F2CDC 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3A50 801F2CE0 3C0F801F */  lui        $t7, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3A54 801F2CE4 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3A58 801F2CE8 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3A5C 801F2CEC AE140004 */  sw         $s4, 0x4($s0)
glabel func_801F2CF0_ovl9
/* 1E3A60 801F2CF0 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3A64 801F2CF4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3A68 801F2CF8 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3A6C 801F2CFC 25EF4DA0 */  addiu      $t7, $t7, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3A70 801F2D00 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3A74 801F2D04 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3A78 801F2D08 AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E3A7C 801F2D0C AE150000 */  sw         $s5, 0x0($s0)
/* 1E3A80 801F2D10 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3A84 801F2D14 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E3A88 801F2D18 3C19801F */  lui        $t9, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E3A8C 801F2D1C 26180008 */  addiu      $t8, $s0, 0x8
/* 1E3A90 801F2D20 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E3A94 801F2D24 AE380000 */  sw         $t8, 0x0($s1)
/* 1E3A98 801F2D28 27394D98 */  addiu      $t9, $t9, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E3A9C 801F2D2C AE190004 */  sw         $t9, 0x4($s0)
/* 1E3AA0 801F2D30 0C005617 */  jal        func_8001585C
/* 1E3AA4 801F2D34 AE160000 */   sw        $s6, 0x0($s0)
glabel func_801F2D38_ovl9
/* 1E3AA8 801F2D38 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3AAC 801F2D3C 3C18801F */  lui        $t8, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E3AB0 801F2D40 27184758 */  addiu      $t8, $t8, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E3AB4 801F2D44 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3AB8 801F2D48 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3ABC 801F2D4C AE140004 */  sw         $s4, 0x4($s0)
/* 1E3AC0 801F2D50 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3AC4 801F2D54 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3AC8 801F2D58 3C0E801F */  lui        $t6, %hi(func_801F471C_ovl9 + 0x34)
/* 1E3ACC 801F2D5C 25CE4750 */  addiu      $t6, $t6, %lo(func_801F471C_ovl9 + 0x34)
/* 1E3AD0 801F2D60 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3AD4 801F2D64 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3AD8 801F2D68 AE180004 */  sw         $t8, 0x4($s0)
/* 1E3ADC 801F2D6C AE150000 */  sw         $s5, 0x0($s0)
/* 1E3AE0 801F2D70 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3AE4 801F2D74 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3AE8 801F2D78 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3AEC 801F2D7C AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E3AF0 801F2D80 10000190 */  b          .L801F33C4_ovl10
/* 1E3AF4 801F2D84 AE160000 */   sw        $s6, 0x0($s0)
/* 1E3AF8 801F2D88 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3AFC 801F2D8C 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3B00 801F2D90 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3B04 801F2D94 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3B08 801F2D98 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
.L801F2D9C_ovl9:
/* 1E3B0C 801F2D9C 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3B10 801F2DA0 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3B14 801F2DA4 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3B18 801F2DA8 8C980000 */  lw         $t8, 0x0($a0)
/* 1E3B1C 801F2DAC 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3B20 801F2DB0 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3B24 801F2DB4 0018C880 */  sll        $t9, $t8, 2
/* 1E3B28 801F2DB8 03F97021 */  addu       $t6, $ra, $t9
/* 1E3B2C 801F2DBC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E3B30 801F2DC0 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3B34 801F2DC4 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3B38 801F2DC8 AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E3B3C 801F2DCC 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3B40 801F2DD0 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3B44 801F2DD4 3C02801F */  lui        $v0, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3B48 801F2DD8 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3B4C 801F2DDC AE380004 */  sw         $t8, 0x4($s1)
/* 1E3B50 801F2DE0 AE4D0000 */  sw         $t5, 0x0($s2)
/* 1E3B54 801F2DE4 8C990000 */  lw         $t9, 0x0($a0)
/* 1E3B58 801F2DE8 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3B5C 801F2DEC 24424DA0 */  addiu      $v0, $v0, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3B60 801F2DF0 00197080 */  sll        $t6, $t9, 2
/* 1E3B64 801F2DF4 03EE7821 */  addu       $t7, $ra, $t6
/* 1E3B68 801F2DF8 8DF80000 */  lw         $t8, 0x0($t7)
/* 1E3B6C 801F2DFC 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E3B70 801F2E00 3C03801F */  lui        $v1, %hi(func_801F4D7C_ovl10 + 0x1C)
glabel func_801F2E04_ovl9
/* 1E3B74 801F2E04 AE580004 */  sw         $t8, 0x4($s2)
/* 1E3B78 801F2E08 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3B7C 801F2E0C 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E3B80 801F2E10 24634D98 */  addiu      $v1, $v1, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E3B84 801F2E14 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3B88 801F2E18 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3B8C 801F2E1C AE140004 */  sw         $s4, 0x4($s0)
/* 1E3B90 801F2E20 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3B94 801F2E24 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3B98 801F2E28 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3B9C 801F2E2C AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3BA0 801F2E30 AE020004 */  sw         $v0, 0x4($s0)
/* 1E3BA4 801F2E34 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3BA8 801F2E38 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3BAC 801F2E3C 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3BB0 801F2E40 AE2F0000 */  sw         $t7, 0x0($s1)
.L801F2E44_ovl9:
/* 1E3BB4 801F2E44 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3BB8 801F2E48 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3BBC 801F2E4C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3BC0 801F2E50 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3BC4 801F2E54 AE380004 */  sw         $t8, 0x4($s1)
/* 1E3BC8 801F2E58 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3BCC 801F2E5C AE530000 */  sw         $s3, 0x0($s2)
/* 1E3BD0 801F2E60 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3BD4 801F2E64 26590008 */  addiu      $t9, $s2, 0x8
/* 1E3BD8 801F2E68 AE390004 */  sw         $t9, 0x4($s1)
glabel func_801F2E6C_ovl9
/* 1E3BDC 801F2E6C AE420004 */  sw         $v0, 0x4($s2)
/* 1E3BE0 801F2E70 AE550000 */  sw         $s5, 0x0($s2)
/* 1E3BE4 801F2E74 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3BE8 801F2E78 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3BEC 801F2E7C AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3BF0 801F2E80 AE430004 */  sw         $v1, 0x4($s2)
/* 1E3BF4 801F2E84 0C02AC5D */  jal        func_800AB174
/* 1E3BF8 801F2E88 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3BFC 801F2E8C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3C00 801F2E90 3C02801F */  lui        $v0, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E3C04 801F2E94 24424758 */  addiu      $v0, $v0, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E3C08 801F2E98 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3C0C 801F2E9C AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3C10 801F2EA0 AE140004 */  sw         $s4, 0x4($s0)
/* 1E3C14 801F2EA4 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3C18 801F2EA8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3C1C 801F2EAC 3C03801F */  lui        $v1, %hi(func_801F471C_ovl9 + 0x34)
/* 1E3C20 801F2EB0 24634750 */  addiu      $v1, $v1, %lo(func_801F471C_ovl9 + 0x34)
/* 1E3C24 801F2EB4 26180008 */  addiu      $t8, $s0, 0x8
/* 1E3C28 801F2EB8 AE380000 */  sw         $t8, 0x0($s1)
/* 1E3C2C 801F2EBC AE020004 */  sw         $v0, 0x4($s0)
/* 1E3C30 801F2EC0 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3C34 801F2EC4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3C38 801F2EC8 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3C3C 801F2ECC AE390000 */  sw         $t9, 0x0($s1)
/* 1E3C40 801F2ED0 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3C44 801F2ED4 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3C48 801F2ED8 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3C4C 801F2EDC 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3C50 801F2EE0 AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3C54 801F2EE4 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3C58 801F2EE8 AE530000 */  sw         $s3, 0x0($s2)
/* 1E3C5C 801F2EEC 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3C60 801F2EF0 264F0008 */  addiu      $t7, $s2, 0x8
/* 1E3C64 801F2EF4 AE2F0004 */  sw         $t7, 0x4($s1)
/* 1E3C68 801F2EF8 AE420004 */  sw         $v0, 0x4($s2)
/* 1E3C6C 801F2EFC AE550000 */  sw         $s5, 0x0($s2)
/* 1E3C70 801F2F00 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3C74 801F2F04 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3C78 801F2F08 AE380004 */  sw         $t8, 0x4($s1)
/* 1E3C7C 801F2F0C AE430004 */  sw         $v1, 0x4($s2)
/* 1E3C80 801F2F10 1000012C */  b          .L801F33C4_ovl10
/* 1E3C84 801F2F14 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3C88 801F2F18 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3C8C 801F2F1C 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3C90 801F2F20 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3C94 801F2F24 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3C98 801F2F28 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3C9C 801F2F2C 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3CA0 801F2F30 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3CA4 801F2F34 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3CA8 801F2F38 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1E3CAC 801F2F3C 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3CB0 801F2F40 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3CB4 801F2F44 000E7880 */  sll        $t7, $t6, 2
/* 1E3CB8 801F2F48 03EFC021 */  addu       $t8, $ra, $t7
/* 1E3CBC 801F2F4C 8F190000 */  lw         $t9, 0x0($t8)
/* 1E3CC0 801F2F50 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3CC4 801F2F54 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3CC8 801F2F58 AE190004 */  sw         $t9, 0x4($s0)
/* 1E3CCC 801F2F5C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3CD0 801F2F60 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3CD4 801F2F64 3C02801F */  lui        $v0, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3CD8 801F2F68 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3CDC 801F2F6C AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3CE0 801F2F70 AE4D0000 */  sw         $t5, 0x0($s2)
/* 1E3CE4 801F2F74 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1E3CE8 801F2F78 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3CEC 801F2F7C 24424DA0 */  addiu      $v0, $v0, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3CF0 801F2F80 000FC080 */  sll        $t8, $t7, 2
/* 1E3CF4 801F2F84 03F8C821 */  addu       $t9, $ra, $t8
/* 1E3CF8 801F2F88 8F2E0000 */  lw         $t6, 0x0($t9)
/* 1E3CFC 801F2F8C 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E3D00 801F2F90 3C03801F */  lui        $v1, %hi(func_801F4D7C_ovl10 + 0x1C)
glabel func_801F2F94_ovl9
/* 1E3D04 801F2F94 AE4E0004 */  sw         $t6, 0x4($s2)
/* 1E3D08 801F2F98 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3D0C 801F2F9C 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E3D10 801F2FA0 24634D98 */  addiu      $v1, $v1, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E3D14 801F2FA4 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3D18 801F2FA8 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3D1C 801F2FAC AE140004 */  sw         $s4, 0x4($s0)
/* 1E3D20 801F2FB0 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3D24 801F2FB4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3D28 801F2FB8 26180008 */  addiu      $t8, $s0, 0x8
/* 1E3D2C 801F2FBC AE380000 */  sw         $t8, 0x0($s1)
/* 1E3D30 801F2FC0 AE020004 */  sw         $v0, 0x4($s0)
/* 1E3D34 801F2FC4 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3D38 801F2FC8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3D3C 801F2FCC 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3D40 801F2FD0 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3D44 801F2FD4 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3D48 801F2FD8 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3D4C 801F2FDC 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3D50 801F2FE0 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3D54 801F2FE4 AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3D58 801F2FE8 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3D5C 801F2FEC AE530000 */  sw         $s3, 0x0($s2)
/* 1E3D60 801F2FF0 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3D64 801F2FF4 264F0008 */  addiu      $t7, $s2, 0x8
/* 1E3D68 801F2FF8 AE2F0004 */  sw         $t7, 0x4($s1)
/* 1E3D6C 801F2FFC AE420004 */  sw         $v0, 0x4($s2)
/* 1E3D70 801F3000 AE550000 */  sw         $s5, 0x0($s2)
/* 1E3D74 801F3004 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3D78 801F3008 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3D7C 801F300C AE380004 */  sw         $t8, 0x4($s1)
.L801F3010_ovl9:
/* 1E3D80 801F3010 AE430004 */  sw         $v1, 0x4($s2)
/* 1E3D84 801F3014 0C02AC91 */  jal        func_800AB244
/* 1E3D88 801F3018 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3D8C 801F301C 8E300000 */  lw         $s0, 0x0($s1)
glabel func_801F3020_ovl9
/* 1E3D90 801F3020 3C02801F */  lui        $v0, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E3D94 801F3024 24424758 */  addiu      $v0, $v0, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E3D98 801F3028 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3D9C 801F302C AE390000 */  sw         $t9, 0x0($s1)
/* 1E3DA0 801F3030 AE140004 */  sw         $s4, 0x4($s0)
/* 1E3DA4 801F3034 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3DA8 801F3038 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3DAC 801F303C 3C03801F */  lui        $v1, %hi(func_801F471C_ovl9 + 0x34)
/* 1E3DB0 801F3040 24634750 */  addiu      $v1, $v1, %lo(func_801F471C_ovl9 + 0x34)
/* 1E3DB4 801F3044 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3DB8 801F3048 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3DBC 801F304C AE020004 */  sw         $v0, 0x4($s0)
/* 1E3DC0 801F3050 AE150000 */  sw         $s5, 0x0($s0)
/* 1E3DC4 801F3054 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3DC8 801F3058 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3DCC 801F305C AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3DD0 801F3060 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3DD4 801F3064 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3DD8 801F3068 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3DDC 801F306C 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3DE0 801F3070 AE380004 */  sw         $t8, 0x4($s1)
/* 1E3DE4 801F3074 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3DE8 801F3078 AE530000 */  sw         $s3, 0x0($s2)
/* 1E3DEC 801F307C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3DF0 801F3080 26590008 */  addiu      $t9, $s2, 0x8
/* 1E3DF4 801F3084 AE390004 */  sw         $t9, 0x4($s1)
/* 1E3DF8 801F3088 AE420004 */  sw         $v0, 0x4($s2)
/* 1E3DFC 801F308C AE550000 */  sw         $s5, 0x0($s2)
/* 1E3E00 801F3090 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3E04 801F3094 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3E08 801F3098 AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3E0C 801F309C AE430004 */  sw         $v1, 0x4($s2)
/* 1E3E10 801F30A0 100000C8 */  b          .L801F33C4_ovl10
/* 1E3E14 801F30A4 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3E18 801F30A8 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3E1C 801F30AC 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3E20 801F30B0 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3E24 801F30B4 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3E28 801F30B8 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3E2C 801F30BC 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3E30 801F30C0 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3E34 801F30C4 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3E38 801F30C8 8C980000 */  lw         $t8, 0x0($a0)
/* 1E3E3C 801F30CC 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3E40 801F30D0 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3E44 801F30D4 0018C880 */  sll        $t9, $t8, 2
/* 1E3E48 801F30D8 03F97021 */  addu       $t6, $ra, $t9
/* 1E3E4C 801F30DC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1E3E50 801F30E0 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3E54 801F30E4 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3E58 801F30E8 AE0F0004 */  sw         $t7, 0x4($s0)
/* 1E3E5C 801F30EC 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3E60 801F30F0 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3E64 801F30F4 3C02801F */  lui        $v0, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3E68 801F30F8 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3E6C 801F30FC AE380004 */  sw         $t8, 0x4($s1)
/* 1E3E70 801F3100 AE4D0000 */  sw         $t5, 0x0($s2)
/* 1E3E74 801F3104 8C990000 */  lw         $t9, 0x0($a0)
/* 1E3E78 801F3108 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E3E7C 801F310C 24424DA0 */  addiu      $v0, $v0, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E3E80 801F3110 00197080 */  sll        $t6, $t9, 2
/* 1E3E84 801F3114 03EE7821 */  addu       $t7, $ra, $t6
/* 1E3E88 801F3118 8DF80000 */  lw         $t8, 0x0($t7)
/* 1E3E8C 801F311C 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E3E90 801F3120 3C03801F */  lui        $v1, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E3E94 801F3124 AE580004 */  sw         $t8, 0x4($s2)
/* 1E3E98 801F3128 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3E9C 801F312C 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E3EA0 801F3130 24634D98 */  addiu      $v1, $v1, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E3EA4 801F3134 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3EA8 801F3138 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3EAC 801F313C AE140004 */  sw         $s4, 0x4($s0)
/* 1E3EB0 801F3140 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3EB4 801F3144 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3EB8 801F3148 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E3EBC 801F314C AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E3EC0 801F3150 AE020004 */  sw         $v0, 0x4($s0)
/* 1E3EC4 801F3154 AE150000 */  sw         $s5, 0x0($s0)
glabel func_801F3158_ovl9
/* 1E3EC8 801F3158 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3ECC 801F315C 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3ED0 801F3160 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3ED4 801F3164 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3ED8 801F3168 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3EDC 801F316C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3EE0 801F3170 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3EE4 801F3174 AE380004 */  sw         $t8, 0x4($s1)
/* 1E3EE8 801F3178 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3EEC 801F317C AE530000 */  sw         $s3, 0x0($s2)
/* 1E3EF0 801F3180 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3EF4 801F3184 26590008 */  addiu      $t9, $s2, 0x8
/* 1E3EF8 801F3188 AE390004 */  sw         $t9, 0x4($s1)
/* 1E3EFC 801F318C AE420004 */  sw         $v0, 0x4($s2)
/* 1E3F00 801F3190 AE550000 */  sw         $s5, 0x0($s2)
/* 1E3F04 801F3194 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3F08 801F3198 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3F0C 801F319C AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3F10 801F31A0 AE430004 */  sw         $v1, 0x4($s2)
/* 1E3F14 801F31A4 0C0052B5 */  jal        func_80014AD4
/* 1E3F18 801F31A8 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3F1C 801F31AC 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3F20 801F31B0 3C02801F */  lui        $v0, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E3F24 801F31B4 24424758 */  addiu      $v0, $v0, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E3F28 801F31B8 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E3F2C 801F31BC AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E3F30 801F31C0 AE140004 */  sw         $s4, 0x4($s0)
/* 1E3F34 801F31C4 AE130000 */  sw         $s3, 0x0($s0)
/* 1E3F38 801F31C8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3F3C 801F31CC 3C03801F */  lui        $v1, %hi(func_801F471C_ovl9 + 0x34)
/* 1E3F40 801F31D0 24634750 */  addiu      $v1, $v1, %lo(func_801F471C_ovl9 + 0x34)
.L801F31D4_ovl9:
/* 1E3F44 801F31D4 26180008 */  addiu      $t8, $s0, 0x8
/* 1E3F48 801F31D8 AE380000 */  sw         $t8, 0x0($s1)
/* 1E3F4C 801F31DC AE020004 */  sw         $v0, 0x4($s0)
/* 1E3F50 801F31E0 AE150000 */  sw         $s5, 0x0($s0)
glabel func_801F31E4_ovl9
/* 1E3F54 801F31E4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3F58 801F31E8 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3F5C 801F31EC AE390000 */  sw         $t9, 0x0($s1)
/* 1E3F60 801F31F0 AE030004 */  sw         $v1, 0x4($s0)
/* 1E3F64 801F31F4 AE160000 */  sw         $s6, 0x0($s0)
/* 1E3F68 801F31F8 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3F6C 801F31FC 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3F70 801F3200 AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E3F74 801F3204 AE540004 */  sw         $s4, 0x4($s2)
/* 1E3F78 801F3208 AE530000 */  sw         $s3, 0x0($s2)
/* 1E3F7C 801F320C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3F80 801F3210 264F0008 */  addiu      $t7, $s2, 0x8
/* 1E3F84 801F3214 AE2F0004 */  sw         $t7, 0x4($s1)
/* 1E3F88 801F3218 AE420004 */  sw         $v0, 0x4($s2)
/* 1E3F8C 801F321C AE550000 */  sw         $s5, 0x0($s2)
/* 1E3F90 801F3220 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3F94 801F3224 26580008 */  addiu      $t8, $s2, 0x8
/* 1E3F98 801F3228 AE380004 */  sw         $t8, 0x4($s1)
/* 1E3F9C 801F322C AE430004 */  sw         $v1, 0x4($s2)
/* 1E3FA0 801F3230 10000064 */  b          .L801F33C4_ovl10
/* 1E3FA4 801F3234 AE560000 */   sw        $s6, 0x0($s2)
/* 1E3FA8 801F3238 3C118005 */  lui        $s1, %hi(D_8004A3D0)
/* 1E3FAC 801F323C 2631A3D0 */  addiu      $s1, $s1, %lo(D_8004A3D0)
/* 1E3FB0 801F3240 8E300000 */  lw         $s0, 0x0($s1)
/* 1E3FB4 801F3244 3C0DDB06 */  lui        $t5, (0xDB060010 >> 16)
/* 1E3FB8 801F3248 35AD0010 */  ori        $t5, $t5, (0xDB060010 & 0xFFFF)
/* 1E3FBC 801F324C 26190008 */  addiu      $t9, $s0, 0x8
/* 1E3FC0 801F3250 AE390000 */  sw         $t9, 0x0($s1)
/* 1E3FC4 801F3254 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1E3FC8 801F3258 8C8E0000 */  lw         $t6, 0x0($a0)
/* 1E3FCC 801F325C 3C1F800E */  lui        $ra, %hi(gSegment4StartArray)
/* 1E3FD0 801F3260 27FFF4D0 */  addiu      $ra, $ra, %lo(gSegment4StartArray)
/* 1E3FD4 801F3264 000E7880 */  sll        $t7, $t6, 2
/* 1E3FD8 801F3268 03EFC021 */  addu       $t8, $ra, $t7
/* 1E3FDC 801F326C 8F190000 */  lw         $t9, 0x0($t8)
/* 1E3FE0 801F3270 3C13DB02 */  lui        $s3, (0xDB020000 >> 16)
/* 1E3FE4 801F3274 24140018 */  addiu      $s4, $zero, 0x18
/* 1E3FE8 801F3278 AE190004 */  sw         $t9, 0x4($s0)
/* 1E3FEC 801F327C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E3FF0 801F3280 3C15DC08 */  lui        $s5, (0xDC08060A >> 16)
/* 1E3FF4 801F3284 3C02801F */  lui        $v0, %hi(func_801F4D7C_ovl10 + 0x24)
/* 1E3FF8 801F3288 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E3FFC 801F328C AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E4000 801F3290 AE4D0000 */  sw         $t5, 0x0($s2)
glabel func_801F3294_ovl9
/* 1E4004 801F3294 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1E4008 801F3298 36B5060A */  ori        $s5, $s5, (0xDC08060A & 0xFFFF)
/* 1E400C 801F329C 24424DA0 */  addiu      $v0, $v0, %lo(func_801F4D7C_ovl10 + 0x24)
/* 1E4010 801F32A0 000FC080 */  sll        $t8, $t7, 2
/* 1E4014 801F32A4 03F8C821 */  addu       $t9, $ra, $t8
/* 1E4018 801F32A8 8F2E0000 */  lw         $t6, 0x0($t9)
/* 1E401C 801F32AC 3C16DC08 */  lui        $s6, (0xDC08090A >> 16)
/* 1E4020 801F32B0 3C03801F */  lui        $v1, %hi(func_801F4D7C_ovl10 + 0x1C)
/* 1E4024 801F32B4 AE4E0004 */  sw         $t6, 0x4($s2)
/* 1E4028 801F32B8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E402C 801F32BC 36D6090A */  ori        $s6, $s6, (0xDC08090A & 0xFFFF)
/* 1E4030 801F32C0 24634D98 */  addiu      $v1, $v1, %lo(func_801F4D7C_ovl10 + 0x1C)
/* 1E4034 801F32C4 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E4038 801F32C8 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E403C 801F32CC AE140004 */  sw         $s4, 0x4($s0)
/* 1E4040 801F32D0 AE130000 */  sw         $s3, 0x0($s0)
/* 1E4044 801F32D4 8E300000 */  lw         $s0, 0x0($s1)
/* 1E4048 801F32D8 26180008 */  addiu      $t8, $s0, 0x8
/* 1E404C 801F32DC AE380000 */  sw         $t8, 0x0($s1)
/* 1E4050 801F32E0 AE020004 */  sw         $v0, 0x4($s0)
/* 1E4054 801F32E4 AE150000 */  sw         $s5, 0x0($s0)
/* 1E4058 801F32E8 8E300000 */  lw         $s0, 0x0($s1)
/* 1E405C 801F32EC 26190008 */  addiu      $t9, $s0, 0x8
/* 1E4060 801F32F0 AE390000 */  sw         $t9, 0x0($s1)
/* 1E4064 801F32F4 AE030004 */  sw         $v1, 0x4($s0)
/* 1E4068 801F32F8 AE160000 */  sw         $s6, 0x0($s0)
.L801F32FC_ovl9:
/* 1E406C 801F32FC 8E320004 */  lw         $s2, 0x4($s1)
/* 1E4070 801F3300 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E4074 801F3304 AE2E0004 */  sw         $t6, 0x4($s1)
glabel func_801F3308_ovl9
/* 1E4078 801F3308 AE540004 */  sw         $s4, 0x4($s2)
/* 1E407C 801F330C AE530000 */  sw         $s3, 0x0($s2)
/* 1E4080 801F3310 8E320004 */  lw         $s2, 0x4($s1)
/* 1E4084 801F3314 264F0008 */  addiu      $t7, $s2, 0x8
/* 1E4088 801F3318 AE2F0004 */  sw         $t7, 0x4($s1)
/* 1E408C 801F331C AE420004 */  sw         $v0, 0x4($s2)
/* 1E4090 801F3320 AE550000 */  sw         $s5, 0x0($s2)
/* 1E4094 801F3324 8E320004 */  lw         $s2, 0x4($s1)
/* 1E4098 801F3328 26580008 */  addiu      $t8, $s2, 0x8
/* 1E409C 801F332C AE380004 */  sw         $t8, 0x4($s1)
/* 1E40A0 801F3330 AE430004 */  sw         $v1, 0x4($s2)
/* 1E40A4 801F3334 0C0056F3 */  jal        func_80015BCC
/* 1E40A8 801F3338 AE560000 */   sw        $s6, 0x0($s2)
/* 1E40AC 801F333C 8E300000 */  lw         $s0, 0x0($s1)
/* 1E40B0 801F3340 3C02801F */  lui        $v0, %hi(func_801F471C_ovl9 + 0x3C)
/* 1E40B4 801F3344 24424758 */  addiu      $v0, $v0, %lo(func_801F471C_ovl9 + 0x3C)
/* 1E40B8 801F3348 26190008 */  addiu      $t9, $s0, 0x8
/* 1E40BC 801F334C AE390000 */  sw         $t9, 0x0($s1)
glabel func_801F3350_ovl9
/* 1E40C0 801F3350 AE140004 */  sw         $s4, 0x4($s0)
/* 1E40C4 801F3354 AE130000 */  sw         $s3, 0x0($s0)
/* 1E40C8 801F3358 8E300000 */  lw         $s0, 0x0($s1)
/* 1E40CC 801F335C 3C03801F */  lui        $v1, %hi(func_801F471C_ovl9 + 0x34)
/* 1E40D0 801F3360 24634750 */  addiu      $v1, $v1, %lo(func_801F471C_ovl9 + 0x34)
/* 1E40D4 801F3364 260E0008 */  addiu      $t6, $s0, 0x8
/* 1E40D8 801F3368 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1E40DC 801F336C AE020004 */  sw         $v0, 0x4($s0)
/* 1E40E0 801F3370 AE150000 */  sw         $s5, 0x0($s0)
/* 1E40E4 801F3374 8E300000 */  lw         $s0, 0x0($s1)
/* 1E40E8 801F3378 260F0008 */  addiu      $t7, $s0, 0x8
/* 1E40EC 801F337C AE2F0000 */  sw         $t7, 0x0($s1)
/* 1E40F0 801F3380 AE030004 */  sw         $v1, 0x4($s0)
/* 1E40F4 801F3384 AE160000 */  sw         $s6, 0x0($s0)
/* 1E40F8 801F3388 8E320004 */  lw         $s2, 0x4($s1)
/* 1E40FC 801F338C 26580008 */  addiu      $t8, $s2, 0x8
/* 1E4100 801F3390 AE380004 */  sw         $t8, 0x4($s1)
/* 1E4104 801F3394 AE540004 */  sw         $s4, 0x4($s2)
/* 1E4108 801F3398 AE530000 */  sw         $s3, 0x0($s2)
/* 1E410C 801F339C 8E320004 */  lw         $s2, 0x4($s1)
/* 1E4110 801F33A0 26590008 */  addiu      $t9, $s2, 0x8
/* 1E4114 801F33A4 AE390004 */  sw         $t9, 0x4($s1)
/* 1E4118 801F33A8 AE420004 */  sw         $v0, 0x4($s2)
/* 1E411C 801F33AC AE550000 */  sw         $s5, 0x0($s2)
/* 1E4120 801F33B0 8E320004 */  lw         $s2, 0x4($s1)
.L801F33B4_ovl9:
/* 1E4124 801F33B4 264E0008 */  addiu      $t6, $s2, 0x8
/* 1E4128 801F33B8 AE2E0004 */  sw         $t6, 0x4($s1)
/* 1E412C 801F33BC AE430004 */  sw         $v1, 0x4($s2)
/* 1E4130 801F33C0 AE560000 */  sw         $s6, 0x0($s2)
.L801F33C4_ovl10:
/* 1E4134 801F33C4 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1E4138 801F33C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E413C 801F33CC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1E4140 801F33D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 1E4144 801F33D4 8FB30024 */  lw         $s3, 0x24($sp)
/* 1E4148 801F33D8 8FB40028 */  lw         $s4, 0x28($sp)
/* 1E414C 801F33DC 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1E4150 801F33E0 8FB60030 */  lw         $s6, 0x30($sp)
/* 1E4154 801F33E4 03E00008 */  jr         $ra
/* 1E4158 801F33E8 27BD0038 */   addiu     $sp, $sp, 0x38
/* 1E415C 801F33EC 00000000 */  nop
