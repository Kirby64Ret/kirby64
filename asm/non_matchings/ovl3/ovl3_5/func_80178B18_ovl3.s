glabel func_80178B18_ovl3
/* 0D9558 80178B18 3C0E8019 */  lui   $t6, %hi(D_80196D78) # $t6, 0x8019
/* 0D955C 80178B1C 95CE6D78 */  lhu   $t6, %lo(D_80196D78)($t6)
/* 0D9560 80178B20 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D9564 80178B24 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D9568 80178B28 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D956C 80178B2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D9570 80178B30 AFA40028 */  sw    $a0, 0x28($sp)
/* 0D9574 80178B34 A7AE0024 */  sh    $t6, 0x24($sp)
/* 0D9578 80178B38 8DF80000 */  lw    $t8, ($t7)
/* 0D957C 80178B3C 3C01800F */ lui $at, %hi(D_800E8920)
/* 0D9580 80178B40 0018C880 */  sll   $t9, $t8, 2
/* 0D9584 80178B44 00390821 */  addu  $at, $at, $t9
/* 0D9588 80178B48 0C054E61 */  jal   func_80153984_ovl3
/* 0D958C 80178B4C AC208920 */ sw $zero, %lo(D_800E8920)($at)
/* 0D9590 80178B50 0C0547A5 */  jal   func_80151E94_ovl3
/* 0D9594 80178B54 27A40024 */   addiu $a0, $sp, 0x24
/* 0D9598 80178B58 1440013D */  bnez  $v0, .L80179050_ovl3
/* 0D959C 80178B5C 3C068013 */   lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D95A0 80178B60 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D95A4 80178B64 90C80017 */  lbu   $t0, 0x17($a2)
/* 0D95A8 80178B68 AFA00020 */  sw    $zero, 0x20($sp)
/* 0D95AC 80178B6C 24040006 */  li    $a0, 6
/* 0D95B0 80178B70 51000006 */  beql  $t0, $zero, .L80178B8C_ovl3
/* 0D95B4 80178B74 90CA000B */   lbu   $t2, 0xb($a2)
/* 0D95B8 80178B78 90C9000B */  lbu   $t1, 0xb($a2)
/* 0D95BC 80178B7C 24010004 */  li    $at, 4
/* 0D95C0 80178B80 11210006 */  beq   $t1, $at, .L80178B9C_ovl3
/* 0D95C4 80178B84 00000000 */   nop   
/* 0D95C8 80178B88 90CA000B */  lbu   $t2, 0xb($a2)
.L80178B8C_ovl3:
/* 0D95CC 80178B8C 24010003 */  li    $at, 3
/* 0D95D0 80178B90 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 0D95D4 80178B94 15410005 */  bne   $t2, $at, .L80178BAC_ovl3
/* 0D95D8 80178B98 00000000 */   nop   
.L80178B9C_ovl3:
/* 0D95DC 80178B9C 0C048BDB */  jal   set_kirby_action_1
/* 0D95E0 80178BA0 24050006 */   li    $a1, 6
/* 0D95E4 80178BA4 1000012B */  b     .L80179054_ovl3
/* 0D95E8 80178BA8 8FBF0014 */   lw    $ra, 0x14($sp)
.L80178BAC_ovl3:
/* 0D95EC 80178BAC 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 0D95F0 80178BB0 3C0C800F */ lui $t4, %hi(D_800E8AE0)
/* 0D95F4 80178BB4 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 0D95F8 80178BB8 8D630000 */  lw    $v1, ($t3)
/* 0D95FC 80178BBC 00031880 */  sll   $v1, $v1, 2
/* 0D9600 80178BC0 01836021 */  addu  $t4, $t4, $v1
/* 0D9604 80178BC4 8D8C8AE0 */ lw $t4, %lo(D_800E8AE0)($t4)
/* 0D9608 80178BC8 318D0006 */  andi  $t5, $t4, 6
/* 0D960C 80178BCC 11A0000F */  beqz  $t5, .L80178C0C_ovl3
/* 0D9610 80178BD0 00000000 */   nop   
/* 0D9614 80178BD4 44816000 */  mtc1  $at, $f12
/* 0D9618 80178BD8 0C05E418 */  jal   func_80179060_ovl3
/* 0D961C 80178BDC 00000000 */   nop   
/* 0D9620 80178BE0 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D9624 80178BE4 14400019 */  bnez  $v0, .L80178C4C_ovl3
/* 0D9628 80178BE8 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D962C 80178BEC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0D9630 80178BF0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0D9634 80178BF4 3C0F800F */ lui $t7, %hi(D_800E8920)
/* 0D9638 80178BF8 8DC30000 */  lw    $v1, ($t6)
/* 0D963C 80178BFC 00031880 */  sll   $v1, $v1, 2
/* 0D9640 80178C00 01E37821 */  addu  $t7, $t7, $v1
/* 0D9644 80178C04 8DEF8920 */ lw $t7, %lo(D_800E8920)($t7)
/* 0D9648 80178C08 11E00010 */  beqz  $t7, .L80178C4C_ovl3
.L80178C0C_ovl3:
/* 0D964C 80178C0C 3C18800F */ lui $t8, %hi(D_800E8920)
/* 0D9650 80178C10 0303C021 */  addu  $t8, $t8, $v1
/* 0D9654 80178C14 8F188920 */ lw $t8, %lo(D_800E8920)($t8)
/* 0D9658 80178C18 24050003 */  li    $a1, 3
/* 0D965C 80178C1C 24040006 */  li    $a0, 6
/* 0D9660 80178C20 13000006 */  beqz  $t8, .L80178C3C_ovl3
/* 0D9664 80178C24 00000000 */   nop   
/* 0D9668 80178C28 0C048BDB */  jal   set_kirby_action_1
/* 0D966C 80178C2C 24040001 */   li    $a0, 1
/* 0D9670 80178C30 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D9674 80178C34 10000005 */  b     .L80178C4C_ovl3
/* 0D9678 80178C38 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
.L80178C3C_ovl3:
/* 0D967C 80178C3C 0C048BDB */  jal   set_kirby_action_1
/* 0D9680 80178C40 24050006 */   li    $a1, 6
/* 0D9684 80178C44 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D9688 80178C48 24C6E7C0 */  addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
.L80178C4C_ovl3:
/* 0D968C 80178C4C 8CD90044 */  lw    $t9, 0x44($a2)
/* 0D9690 80178C50 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 0D9694 80178C54 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 0D9698 80178C58 17200052 */  bnez  $t9, .L80178DA4_ovl3
/* 0D969C 80178C5C 00000000 */   nop   
/* 0D96A0 80178C60 44816000 */  mtc1  $at, $f12
/* 0D96A4 80178C64 0C05E418 */  jal   func_80179060_ovl3
/* 0D96A8 80178C68 00000000 */   nop   
/* 0D96AC 80178C6C 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D96B0 80178C70 1040000B */  beqz  $v0, .L80178CA0_ovl3
/* 0D96B4 80178C74 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D96B8 80178C78 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D96BC 80178C7C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D96C0 80178C80 3C07800F */  lui   $a3, %hi(D_800E9560) # $a3, 0x800f
/* 0D96C4 80178C84 24E79560 */  addiu $a3, %lo(D_800E9560) # addiu $a3, $a3, -0x6aa0
/* 0D96C8 80178C88 8C430000 */  lw    $v1, ($v0)
/* 0D96CC 80178C8C 00031880 */  sll   $v1, $v1, 2
/* 0D96D0 80178C90 00E34021 */  addu  $t0, $a3, $v1
/* 0D96D4 80178C94 8D090000 */  lw    $t1, ($t0)
/* 0D96D8 80178C98 55200023 */  bnezl $t1, .L80178D28_ovl3
/* 0D96DC 80178C9C 8CCB003C */   lw    $t3, 0x3c($a2)
.L80178CA0_ovl3:
/* 0D96E0 80178CA0 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D96E4 80178CA4 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D96E8 80178CA8 44802000 */  mtc1  $zero, $f4
/* 0D96EC 80178CAC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D96F0 80178CB0 8C4A0000 */  lw    $t2, ($v0)
/* 0D96F4 80178CB4 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D96F8 80178CB8 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D96FC 80178CBC 000A5880 */  sll   $t3, $t2, 2
/* 0D9700 80178CC0 00AB6021 */  addu  $t4, $a1, $t3
/* 0D9704 80178CC4 E5840000 */  swc1  $f4, ($t4)
/* 0D9708 80178CC8 8C430000 */  lw    $v1, ($v0)
/* 0D970C 80178CCC 3C07800F */  lui   $a3, %hi(D_800E9560) # $a3, 0x800f
/* 0D9710 80178CD0 24E79560 */  addiu $a3, %lo(D_800E9560) # addiu $a3, $a3, -0x6aa0
/* 0D9714 80178CD4 00031880 */  sll   $v1, $v1, 2
/* 0D9718 80178CD8 00A36821 */  addu  $t5, $a1, $v1
/* 0D971C 80178CDC C5A60000 */  lwc1  $f6, ($t5)
/* 0D9720 80178CE0 00230821 */  addu  $at, $at, $v1
/* 0D9724 80178CE4 24180008 */  li    $t8, 8
/* 0D9728 80178CE8 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0D972C 80178CEC 8C4E0000 */  lw    $t6, ($v0)
/* 0D9730 80178CF0 3C018019 */  lui   $at, %hi(D_8019752C) # $at, 0x8019
/* 0D9734 80178CF4 C428752C */  lwc1  $f8, %lo(D_8019752C)($at)
/* 0D9738 80178CF8 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D973C 80178CFC 000E7880 */  sll   $t7, $t6, 2
/* 0D9740 80178D00 002F0821 */  addu  $at, $at, $t7
/* 0D9744 80178D04 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
/* 0D9748 80178D08 8C590000 */  lw    $t9, ($v0)
/* 0D974C 80178D0C 240A0001 */  li    $t2, 1
/* 0D9750 80178D10 00194080 */  sll   $t0, $t9, 2
/* 0D9754 80178D14 00E84821 */  addu  $t1, $a3, $t0
/* 0D9758 80178D18 AD380000 */  sw    $t8, ($t1)
/* 0D975C 80178D1C 10000066 */  b     .L80178EB8_ovl3
/* 0D9760 80178D20 ACCA0044 */   sw    $t2, 0x44($a2)
/* 0D9764 80178D24 8CCB003C */  lw    $t3, 0x3c($a2)
.L80178D28_ovl3:
/* 0D9768 80178D28 24010002 */  li    $at, 2
/* 0D976C 80178D2C 15610062 */  bne   $t3, $at, .L80178EB8_ovl3
/* 0D9770 80178D30 3C013F80 */   li    $at, 0x3F800000 # 1.000000
/* 0D9774 80178D34 44815000 */  mtc1  $at, $f10
/* 0D9778 80178D38 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D977C 80178D3C 240C0001 */  li    $t4, 1
/* 0D9780 80178D40 00230821 */  addu  $at, $at, $v1
/* 0D9784 80178D44 AFAC0020 */  sw    $t4, 0x20($sp)
/* 0D9788 80178D48 E42A3210 */ swc1 $f10, %lo(D_800E3210)($at)
/* 0D978C 80178D4C 8C4D0000 */  lw    $t5, ($v0)
/* 0D9790 80178D50 3C018019 */  lui   $at, %hi(D_80197530) # $at, 0x8019
/* 0D9794 80178D54 C4307530 */  lwc1  $f16, %lo(D_80197530)($at)
/* 0D9798 80178D58 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D979C 80178D5C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D97A0 80178D60 000D7080 */  sll   $t6, $t5, 2
/* 0D97A4 80178D64 00AE7821 */  addu  $t7, $a1, $t6
/* 0D97A8 80178D68 E5F00000 */  swc1  $f16, ($t7)
/* 0D97AC 80178D6C 8C590000 */  lw    $t9, ($v0)
/* 0D97B0 80178D70 44809000 */  mtc1  $zero, $f18
/* 0D97B4 80178D74 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D97B8 80178D78 00194080 */  sll   $t0, $t9, 2
/* 0D97BC 80178D7C 00280821 */  addu  $at, $at, $t0
/* 0D97C0 80178D80 E4323C90 */ swc1 $f18, %lo(D_800E3C90)($at)
/* 0D97C4 80178D84 ACC0003C */  sw    $zero, 0x3c($a2)
/* 0D97C8 80178D88 8C580000 */  lw    $t8, ($v0)
/* 0D97CC 80178D8C 00184880 */  sll   $t1, $t8, 2
/* 0D97D0 80178D90 00E92021 */  addu  $a0, $a3, $t1
/* 0D97D4 80178D94 8C8A0000 */  lw    $t2, ($a0)
/* 0D97D8 80178D98 254BFFFF */  addiu $t3, $t2, -1
/* 0D97DC 80178D9C 10000046 */  b     .L80178EB8_ovl3
/* 0D97E0 80178DA0 AC8B0000 */   sw    $t3, ($a0)
.L80178DA4_ovl3:
/* 0D97E4 80178DA4 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 0D97E8 80178DA8 3C0C800F */ lui $t4, %hi(D_800E8920)
/* 0D97EC 80178DAC 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D97F0 80178DB0 8C430000 */  lw    $v1, ($v0)
/* 0D97F4 80178DB4 00031880 */  sll   $v1, $v1, 2
/* 0D97F8 80178DB8 01836021 */  addu  $t4, $t4, $v1
/* 0D97FC 80178DBC 8D8C8920 */ lw $t4, %lo(D_800E8920)($t4)
/* 0D9800 80178DC0 5180001D */  beql  $t4, $zero, .L80178E38_ovl3
/* 0D9804 80178DC4 8CCB003C */   lw    $t3, 0x3c($a2)
/* 0D9808 80178DC8 44802000 */  mtc1  $zero, $f4
/* 0D980C 80178DCC 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D9810 80178DD0 00A36821 */  addu  $t5, $a1, $v1
/* 0D9814 80178DD4 E5A40000 */  swc1  $f4, ($t5)
/* 0D9818 80178DD8 8C430000 */  lw    $v1, ($v0)
/* 0D981C 80178DDC 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D9820 80178DE0 3C07800F */  lui   $a3, %hi(D_800E9560) # $a3, 0x800f
/* 0D9824 80178DE4 00031880 */  sll   $v1, $v1, 2
/* 0D9828 80178DE8 00A37021 */  addu  $t6, $a1, $v1
/* 0D982C 80178DEC C5C60000 */  lwc1  $f6, ($t6)
/* 0D9830 80178DF0 00230821 */  addu  $at, $at, $v1
/* 0D9834 80178DF4 24E79560 */  addiu $a3, %lo(D_800E9560) # addiu $a3, $a3, -0x6aa0
/* 0D9838 80178DF8 E4263210 */ swc1 $f6, %lo(D_800E3210)($at)
/* 0D983C 80178DFC 8C4F0000 */  lw    $t7, ($v0)
/* 0D9840 80178E00 3C018019 */  lui   $at, %hi(D_80197534) # $at, 0x8019
/* 0D9844 80178E04 C4287534 */  lwc1  $f8, %lo(D_80197534)($at)
/* 0D9848 80178E08 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D984C 80178E0C 000FC880 */  sll   $t9, $t7, 2
/* 0D9850 80178E10 00390821 */  addu  $at, $at, $t9
/* 0D9854 80178E14 E4283C90 */ swc1 $f8, %lo(D_800E3C90)($at)
/* 0D9858 80178E18 8C580000 */  lw    $t8, ($v0)
/* 0D985C 80178E1C 24080008 */  li    $t0, 8
/* 0D9860 80178E20 00184880 */  sll   $t1, $t8, 2
/* 0D9864 80178E24 00E95021 */  addu  $t2, $a3, $t1
/* 0D9868 80178E28 AD480000 */  sw    $t0, ($t2)
/* 0D986C 80178E2C 10000022 */  b     .L80178EB8_ovl3
/* 0D9870 80178E30 ACC00044 */   sw    $zero, 0x44($a2)
/* 0D9874 80178E34 8CCB003C */  lw    $t3, 0x3c($a2)
.L80178E38_ovl3:
/* 0D9878 80178E38 24010001 */  li    $at, 1
/* 0D987C 80178E3C 1561001E */  bne   $t3, $at, .L80178EB8_ovl3
/* 0D9880 80178E40 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
/* 0D9884 80178E44 44815000 */  mtc1  $at, $f10
/* 0D9888 80178E48 3C01800E */ lui $at, %hi(D_800E3210)
/* 0D988C 80178E4C 240C0001 */  li    $t4, 1
/* 0D9890 80178E50 00230821 */  addu  $at, $at, $v1
/* 0D9894 80178E54 AFAC0020 */  sw    $t4, 0x20($sp)
/* 0D9898 80178E58 E42A3210 */ swc1 $f10, %lo(D_800E3210)($at)
/* 0D989C 80178E5C 8C4D0000 */  lw    $t5, ($v0)
/* 0D98A0 80178E60 3C018019 */  lui   $at, %hi(D_80197538) # $at, 0x8019
/* 0D98A4 80178E64 C4307538 */  lwc1  $f16, %lo(D_80197538)($at)
/* 0D98A8 80178E68 3C05800E */  lui   $a1, %hi(D_800E3750) # $a1, 0x800e
/* 0D98AC 80178E6C 24A53750 */  addiu $a1, %lo(D_800E3750) # addiu $a1, $a1, 0x3750
/* 0D98B0 80178E70 000D7080 */  sll   $t6, $t5, 2
/* 0D98B4 80178E74 00AE7821 */  addu  $t7, $a1, $t6
/* 0D98B8 80178E78 E5F00000 */  swc1  $f16, ($t7)
/* 0D98BC 80178E7C 8C590000 */  lw    $t9, ($v0)
/* 0D98C0 80178E80 44809000 */  mtc1  $zero, $f18
/* 0D98C4 80178E84 3C01800E */ lui $at, %hi(D_800E3C90)
/* 0D98C8 80178E88 0019C080 */  sll   $t8, $t9, 2
/* 0D98CC 80178E8C 00380821 */  addu  $at, $at, $t8
/* 0D98D0 80178E90 E4323C90 */ swc1 $f18, %lo(D_800E3C90)($at)
/* 0D98D4 80178E94 ACC0003C */  sw    $zero, 0x3c($a2)
/* 0D98D8 80178E98 8C490000 */  lw    $t1, ($v0)
/* 0D98DC 80178E9C 3C07800F */  lui   $a3, %hi(D_800E9560) # $a3, 0x800f
/* 0D98E0 80178EA0 24E79560 */  addiu $a3, %lo(D_800E9560) # addiu $a3, $a3, -0x6aa0
/* 0D98E4 80178EA4 00094080 */  sll   $t0, $t1, 2
/* 0D98E8 80178EA8 00E82021 */  addu  $a0, $a3, $t0
/* 0D98EC 80178EAC 8C8A0000 */  lw    $t2, ($a0)
/* 0D98F0 80178EB0 254BFFFF */  addiu $t3, $t2, -1
/* 0D98F4 80178EB4 AC8B0000 */  sw    $t3, ($a0)
.L80178EB8_ovl3:
/* 0D98F8 80178EB8 90CC00B9 */  lbu   $t4, 0xb9($a2)
/* 0D98FC 80178EBC 5580000E */  bnezl $t4, .L80178EF8_ovl3
/* 0D9900 80178EC0 8FB80020 */   lw    $t8, 0x20($sp)
/* 0D9904 80178EC4 8CCD0034 */  lw    $t5, 0x34($a2)
/* 0D9908 80178EC8 31AE0001 */  andi  $t6, $t5, 1
/* 0D990C 80178ECC 55C0000A */  bnezl $t6, .L80178EF8_ovl3
/* 0D9910 80178ED0 8FB80020 */   lw    $t8, 0x20($sp)
/* 0D9914 80178ED4 0C048465 */  jal   func_80121194
/* 0D9918 80178ED8 00000000 */   nop   
/* 0D991C 80178EDC 3C068013 */  lui   $a2, %hi(gKirbyState) # $a2, 0x8013
/* 0D9920 80178EE0 10400004 */  beqz  $v0, .L80178EF4_ovl3
/* 0D9924 80178EE4 24C6E7C0 */   addiu $a2, %lo(gKirbyState) # addiu $a2, $a2, -0x1840
/* 0D9928 80178EE8 8CCF0034 */  lw    $t7, 0x34($a2)
/* 0D992C 80178EEC 35F90001 */  ori   $t9, $t7, 1
/* 0D9930 80178EF0 ACD90034 */  sw    $t9, 0x34($a2)
.L80178EF4_ovl3:
/* 0D9934 80178EF4 8FB80020 */  lw    $t8, 0x20($sp)
.L80178EF8_ovl3:
/* 0D9938 80178EF8 13000055 */  beqz  $t8, .L80179050_ovl3
/* 0D993C 80178EFC 3C09800D */   lui   $t1, %hi(D_800D6FE8) # $t1, 0x800d
/* 0D9940 80178F00 95296FE8 */  lhu   $t1, %lo(D_800D6FE8)($t1)
/* 0D9944 80178F04 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 0D9948 80178F08 31280300 */  andi  $t0, $t1, 0x300
/* 0D994C 80178F0C 15000033 */  bnez  $t0, .L80178FDC_ovl3
/* 0D9950 80178F10 00000000 */   nop   
/* 0D9954 80178F14 0C006291 */  jal   random_soft_s32_range
/* 0D9958 80178F18 24040003 */   li    $a0, 3
/* 0D995C 80178F1C 304A0001 */  andi  $t2, $v0, 1
/* 0D9960 80178F20 11400018 */  beqz  $t2, .L80178F84_ovl3
/* 0D9964 80178F24 3C028005 */ lui $v0, %hi(D_8004A7C4)
/* 0D9968 80178F28 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0D996C 80178F2C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D9970 80178F30 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0D9974 80178F34 44812000 */  mtc1  $at, $f4
/* 0D9978 80178F38 8C4B0000 */  lw    $t3, ($v0)
/* 0D997C 80178F3C 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D9980 80178F40 44804000 */  mtc1  $zero, $f8
/* 0D9984 80178F44 000B6080 */  sll   $t4, $t3, 2
/* 0D9988 80178F48 002C0821 */  addu  $at, $at, $t4
/* 0D998C 80178F4C E42464D0 */ swc1 $f4, %lo(D_800E64D0)($at)
/* 0D9990 80178F50 8C4D0000 */  lw    $t5, ($v0)
/* 0D9994 80178F54 3C018019 */  lui   $at, %hi(D_8019753C) # $at, 0x8019
/* 0D9998 80178F58 C426753C */  lwc1  $f6, %lo(D_8019753C)($at)
/* 0D999C 80178F5C 3C01800E */ lui $at, %hi(D_800E6690)
/* 0D99A0 80178F60 000D7080 */  sll   $t6, $t5, 2
/* 0D99A4 80178F64 002E0821 */  addu  $at, $at, $t6
/* 0D99A8 80178F68 E4266690 */ swc1 $f6, %lo(D_800E6690)($at)
/* 0D99AC 80178F6C 8C4F0000 */  lw    $t7, ($v0)
/* 0D99B0 80178F70 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D99B4 80178F74 000FC880 */  sll   $t9, $t7, 2
/* 0D99B8 80178F78 00390821 */  addu  $at, $at, $t9
/* 0D99BC 80178F7C 10000034 */  b     .L80179050_ovl3
/* 0D99C0 80178F80 E4286850 */ swc1 $f8, %lo(D_800E6850)($at)
.L80178F84_ovl3:
/* 0D99C4 80178F84 8C42A7C4 */ lw $v0, %lo(D_8004A7C4)($v0)
/* 0D99C8 80178F88 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 0D99CC 80178F8C 44815000 */  mtc1  $at, $f10
/* 0D99D0 80178F90 8C580000 */  lw    $t8, ($v0)
/* 0D99D4 80178F94 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D99D8 80178F98 44809000 */  mtc1  $zero, $f18
/* 0D99DC 80178F9C 00184880 */  sll   $t1, $t8, 2
/* 0D99E0 80178FA0 00290821 */  addu  $at, $at, $t1
/* 0D99E4 80178FA4 E42A64D0 */ swc1 $f10, %lo(D_800E64D0)($at)
/* 0D99E8 80178FA8 8C480000 */  lw    $t0, ($v0)
/* 0D99EC 80178FAC 3C018019 */  lui   $at, %hi(D_80197540) # $at, 0x8019
/* 0D99F0 80178FB0 C4307540 */  lwc1  $f16, %lo(D_80197540)($at)
/* 0D99F4 80178FB4 3C01800E */ lui $at, %hi(D_800E6690)
/* 0D99F8 80178FB8 00085080 */  sll   $t2, $t0, 2
/* 0D99FC 80178FBC 002A0821 */  addu  $at, $at, $t2
/* 0D9A00 80178FC0 E4306690 */ swc1 $f16, %lo(D_800E6690)($at)
/* 0D9A04 80178FC4 8C4B0000 */  lw    $t3, ($v0)
/* 0D9A08 80178FC8 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D9A0C 80178FCC 000B6080 */  sll   $t4, $t3, 2
/* 0D9A10 80178FD0 002C0821 */  addu  $at, $at, $t4
/* 0D9A14 80178FD4 1000001E */  b     .L80179050_ovl3
/* 0D9A18 80178FD8 E4326850 */ swc1 $f18, %lo(D_800E6850)($at)
.L80178FDC_ovl3:
/* 0D9A1C 80178FDC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0D9A20 80178FE0 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 0D9A24 80178FE4 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 0D9A28 80178FE8 8C430000 */  lw    $v1, ($v0)
/* 0D9A2C 80178FEC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 0D9A30 80178FF0 44813000 */  mtc1  $at, $f6
/* 0D9A34 80178FF4 00031880 */  sll   $v1, $v1, 2
/* 0D9A38 80178FF8 00836821 */  addu  $t5, $a0, $v1
/* 0D9A3C 80178FFC C5A40000 */  lwc1  $f4, ($t5)
/* 0D9A40 80179000 3C01800E */ lui $at, %hi(D_800E64D0)
/* 0D9A44 80179004 00230821 */  addu  $at, $at, $v1
/* 0D9A48 80179008 46062202 */  mul.s $f8, $f4, $f6
/* 0D9A4C 8017900C 44802000 */  mtc1  $zero, $f4
/* 0D9A50 80179010 E42864D0 */ swc1 $f8, %lo(D_800E64D0)($at)
/* 0D9A54 80179014 8C430000 */  lw    $v1, ($v0)
/* 0D9A58 80179018 3C018019 */  lui   $at, %hi(D_80197544) # $at, 0x8019
/* 0D9A5C 8017901C C4307544 */  lwc1  $f16, %lo(D_80197544)($at)
/* 0D9A60 80179020 00031880 */  sll   $v1, $v1, 2
/* 0D9A64 80179024 00837021 */  addu  $t6, $a0, $v1
/* 0D9A68 80179028 C5CA0000 */  lwc1  $f10, ($t6)
/* 0D9A6C 8017902C 3C01800E */ lui $at, %hi(D_800E6690)
/* 0D9A70 80179030 00230821 */  addu  $at, $at, $v1
/* 0D9A74 80179034 46105482 */  mul.s $f18, $f10, $f16
/* 0D9A78 80179038 E4326690 */ swc1 $f18, %lo(D_800E6690)($at)
/* 0D9A7C 8017903C 8C4F0000 */  lw    $t7, ($v0)
/* 0D9A80 80179040 3C01800E */ lui $at, %hi(D_800E6850)
/* 0D9A84 80179044 000FC880 */  sll   $t9, $t7, 2
/* 0D9A88 80179048 00390821 */  addu  $at, $at, $t9
/* 0D9A8C 8017904C E4246850 */ swc1 $f4, %lo(D_800E6850)($at)
.L80179050_ovl3:
/* 0D9A90 80179050 8FBF0014 */  lw    $ra, 0x14($sp)
.L80179054_ovl3:
/* 0D9A94 80179054 27BD0028 */  addiu $sp, $sp, 0x28
/* 0D9A98 80179058 03E00008 */  jr    $ra
/* 0D9A9C 8017905C 00000000 */   nop   
