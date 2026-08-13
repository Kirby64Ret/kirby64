nonmatching func_8019E9F0_ovl7, 0x1DC

glabel func_8019E9F0_ovl7
    /* 144A60 8019E9F0 3C0E800D */  lui        $t6, %hi(D_800D7090)
    /* 144A64 8019E9F4 8DCE7090 */  lw         $t6, %lo(D_800D7090)($t6)
    /* 144A68 8019E9F8 3C18800E */  lui        $t8, %hi(D_800E77A0)
    /* 144A6C 8019E9FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
    /* 144A70 8019EA00 000E7840 */  sll        $t7, $t6, 1
    /* 144A74 8019EA04 030FC021 */  addu       $t8, $t8, $t7
    /* 144A78 8019EA08 971877A0 */  lhu        $t8, %lo(D_800E77A0)($t8)
    /* 144A7C 8019EA0C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 144A80 8019EA10 2719FFDC */  addiu      $t9, $t8, -0x24
    /* 144A84 8019EA14 07200067 */  bltz       $t9, .L8019EBB4_ovl7
    /* 144A88 8019EA18 AFB9001C */   sw        $t9, 0x1C($sp)
    /* 144A8C 8019EA1C 2B210009 */  slti       $at, $t9, 0x9
    /* 144A90 8019EA20 10200064 */  beqz       $at, .L8019EBB4_ovl7
    /* 144A94 8019EA24 3C028005 */   lui       $v0, %hi(gDisplayListHeads)
    /* 144A98 8019EA28 2442A3D0 */  addiu      $v0, $v0, %lo(gDisplayListHeads)
    /* 144A9C 8019EA2C 8C430000 */  lw         $v1, 0x0($v0)
    /* 144AA0 8019EA30 3C0FDB02 */  lui        $t7, (0xDB020000 >> 16)
    /* 144AA4 8019EA34 24180018 */  addiu      $t8, $zero, 0x18
    /* 144AA8 8019EA38 246E0008 */  addiu      $t6, $v1, 0x8
    /* 144AAC 8019EA3C AC4E0000 */  sw         $t6, 0x0($v0)
    /* 144AB0 8019EA40 AC780004 */  sw         $t8, 0x4($v1)
    /* 144AB4 8019EA44 AC6F0000 */  sw         $t7, 0x0($v1)
    /* 144AB8 8019EA48 8C430000 */  lw         $v1, 0x0($v0)
    /* 144ABC 8019EA4C 3C0EDC08 */  lui        $t6, (0xDC08060A >> 16)
    /* 144AC0 8019EA50 35CE060A */  ori        $t6, $t6, (0xDC08060A & 0xFFFF)
    /* 144AC4 8019EA54 24790008 */  addiu      $t9, $v1, 0x8
    /* 144AC8 8019EA58 AC590000 */  sw         $t9, 0x0($v0)
    /* 144ACC 8019EA5C AC6E0000 */  sw         $t6, 0x0($v1)
    /* 144AD0 8019EA60 8FAF001C */  lw         $t7, 0x1C($sp)
    /* 144AD4 8019EA64 3C19801C */  lui        $t9, %hi(D_801C27E8_ovl7)
    /* 144AD8 8019EA68 273927E8 */  addiu      $t9, $t9, %lo(D_801C27E8_ovl7)
    /* 144ADC 8019EA6C 000FC080 */  sll        $t8, $t7, 2
    /* 144AE0 8019EA70 030FC023 */  subu       $t8, $t8, $t7
    /* 144AE4 8019EA74 0018C0C0 */  sll        $t8, $t8, 3
    /* 144AE8 8019EA78 03194021 */  addu       $t0, $t8, $t9
    /* 144AEC 8019EA7C 25090008 */  addiu      $t1, $t0, 0x8
    /* 144AF0 8019EA80 AC690004 */  sw         $t1, 0x4($v1)
    /* 144AF4 8019EA84 8C430000 */  lw         $v1, 0x0($v0)
    /* 144AF8 8019EA88 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* 144AFC 8019EA8C 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* 144B00 8019EA90 246E0008 */  addiu      $t6, $v1, 0x8
    /* 144B04 8019EA94 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 144B08 8019EA98 AC680004 */  sw         $t0, 0x4($v1)
    /* 144B0C 8019EA9C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 144B10 8019EAA0 8C450004 */  lw         $a1, 0x4($v0)
    /* 144B14 8019EAA4 240E0018 */  addiu      $t6, $zero, 0x18
    /* 144B18 8019EAA8 3C19DB02 */  lui        $t9, (0xDB020000 >> 16)
    /* 144B1C 8019EAAC 24B80008 */  addiu      $t8, $a1, 0x8
    /* 144B20 8019EAB0 AC580004 */  sw         $t8, 0x4($v0)
    /* 144B24 8019EAB4 ACAE0004 */  sw         $t6, 0x4($a1)
    /* 144B28 8019EAB8 ACB90000 */  sw         $t9, 0x0($a1)
    /* 144B2C 8019EABC 8C450004 */  lw         $a1, 0x4($v0)
    /* 144B30 8019EAC0 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
    /* 144B34 8019EAC4 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
    /* 144B38 8019EAC8 24AF0008 */  addiu      $t7, $a1, 0x8
    /* 144B3C 8019EACC AC4F0004 */  sw         $t7, 0x4($v0)
    /* 144B40 8019EAD0 ACA90004 */  sw         $t1, 0x4($a1)
    /* 144B44 8019EAD4 ACB80000 */  sw         $t8, 0x0($a1)
    /* 144B48 8019EAD8 8C450004 */  lw         $a1, 0x4($v0)
    /* 144B4C 8019EADC 3C0EDC08 */  lui        $t6, (0xDC08090A >> 16)
    /* 144B50 8019EAE0 35CE090A */  ori        $t6, $t6, (0xDC08090A & 0xFFFF)
    /* 144B54 8019EAE4 24B90008 */  addiu      $t9, $a1, 0x8
    /* 144B58 8019EAE8 AC590004 */  sw         $t9, 0x4($v0)
    /* 144B5C 8019EAEC ACA80004 */  sw         $t0, 0x4($a1)
    /* 144B60 8019EAF0 0C06784A */  jal        func_8019E128_ovl7
    /* 144B64 8019EAF4 ACAE0000 */   sw        $t6, 0x0($a1)
    /* 144B68 8019EAF8 3C028005 */  lui        $v0, %hi(gDisplayListHeads)
    /* 144B6C 8019EAFC 2442A3D0 */  addiu      $v0, $v0, %lo(gDisplayListHeads)
    /* 144B70 8019EB00 8C430000 */  lw         $v1, 0x0($v0)
    /* 144B74 8019EB04 3C0DDB02 */  lui        $t5, (0xDB020000 >> 16)
    /* 144B78 8019EB08 241F0018 */  addiu      $ra, $zero, 0x18
    /* 144B7C 8019EB0C 246F0008 */  addiu      $t7, $v1, 0x8
    /* 144B80 8019EB10 AC4F0000 */  sw         $t7, 0x0($v0)
    /* 144B84 8019EB14 AC7F0004 */  sw         $ra, 0x4($v1)
    /* 144B88 8019EB18 AC6D0000 */  sw         $t5, 0x0($v1)
    /* 144B8C 8019EB1C 8C430000 */  lw         $v1, 0x0($v0)
    /* 144B90 8019EB20 3C19DC08 */  lui        $t9, (0xDC08060A >> 16)
    /* 144B94 8019EB24 3C07800C */  lui        $a3, %hi(D_800BE550)
    /* 144B98 8019EB28 24780008 */  addiu      $t8, $v1, 0x8
    /* 144B9C 8019EB2C AC580000 */  sw         $t8, 0x0($v0)
    /* 144BA0 8019EB30 24E7E550 */  addiu      $a3, $a3, %lo(D_800BE550)
    /* 144BA4 8019EB34 3739060A */  ori        $t9, $t9, (0xDC08060A & 0xFFFF)
    /* 144BA8 8019EB38 AC790000 */  sw         $t9, 0x0($v1)
    /* 144BAC 8019EB3C AC670004 */  sw         $a3, 0x4($v1)
    /* 144BB0 8019EB40 8C430000 */  lw         $v1, 0x0($v0)
    /* 144BB4 8019EB44 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
    /* 144BB8 8019EB48 3C09800C */  lui        $t1, %hi(D_800BE548)
    /* 144BBC 8019EB4C 246E0008 */  addiu      $t6, $v1, 0x8
    /* 144BC0 8019EB50 AC4E0000 */  sw         $t6, 0x0($v0)
    /* 144BC4 8019EB54 2529E548 */  addiu      $t1, $t1, %lo(D_800BE548)
    /* 144BC8 8019EB58 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
    /* 144BCC 8019EB5C AC6F0000 */  sw         $t7, 0x0($v1)
    /* 144BD0 8019EB60 AC690004 */  sw         $t1, 0x4($v1)
    /* 144BD4 8019EB64 8C450004 */  lw         $a1, 0x4($v0)
    /* 144BD8 8019EB68 3C0EDC08 */  lui        $t6, (0xDC08060A >> 16)
    /* 144BDC 8019EB6C 35CE060A */  ori        $t6, $t6, (0xDC08060A & 0xFFFF)
    /* 144BE0 8019EB70 24B80008 */  addiu      $t8, $a1, 0x8
    /* 144BE4 8019EB74 AC580004 */  sw         $t8, 0x4($v0)
    /* 144BE8 8019EB78 ACBF0004 */  sw         $ra, 0x4($a1)
    /* 144BEC 8019EB7C ACAD0000 */  sw         $t5, 0x0($a1)
    /* 144BF0 8019EB80 8C450004 */  lw         $a1, 0x4($v0)
    /* 144BF4 8019EB84 3C18DC08 */  lui        $t8, (0xDC08090A >> 16)
    /* 144BF8 8019EB88 3718090A */  ori        $t8, $t8, (0xDC08090A & 0xFFFF)
    /* 144BFC 8019EB8C 24B90008 */  addiu      $t9, $a1, 0x8
    /* 144C00 8019EB90 AC590004 */  sw         $t9, 0x4($v0)
    /* 144C04 8019EB94 ACA70004 */  sw         $a3, 0x4($a1)
    /* 144C08 8019EB98 ACAE0000 */  sw         $t6, 0x0($a1)
    /* 144C0C 8019EB9C 8C450004 */  lw         $a1, 0x4($v0)
    /* 144C10 8019EBA0 24AF0008 */  addiu      $t7, $a1, 0x8
    /* 144C14 8019EBA4 AC4F0004 */  sw         $t7, 0x4($v0)
    /* 144C18 8019EBA8 ACA90004 */  sw         $t1, 0x4($a1)
    /* 144C1C 8019EBAC 10000003 */  b          .L8019EBBC_ovl7
    /* 144C20 8019EBB0 ACB80000 */   sw        $t8, 0x0($a1)
  .L8019EBB4_ovl7:
    /* 144C24 8019EBB4 0C06784A */  jal        func_8019E128_ovl7
    /* 144C28 8019EBB8 00000000 */   nop
  .L8019EBBC_ovl7:
    /* 144C2C 8019EBBC 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 144C30 8019EBC0 27BD0020 */  addiu      $sp, $sp, 0x20
    /* 144C34 8019EBC4 03E00008 */  jr         $ra
    /* 144C38 8019EBC8 00000000 */   nop
endlabel func_8019E9F0_ovl7
.size func_8019E9F0_ovl7, . - func_8019E9F0_ovl7
