glabel func_8019E860_ovl7
/* 1448D0 8019E860 3C028005 */  lui        $v0, %hi(D_8004A3D0)
/* 1448D4 8019E864 2442A3D0 */  addiu      $v0, $v0, %lo(D_8004A3D0)
/* 1448D8 8019E868 8C430000 */  lw         $v1, 0x0($v0)
/* 1448DC 8019E86C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1448E0 8019E870 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1448E4 8019E874 246E0008 */  addiu      $t6, $v1, 0x8
/* 1448E8 8019E878 AC4E0000 */  sw         $t6, 0x0($v0)
/* 1448EC 8019E87C 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
/* 1448F0 8019E880 240F0018 */  addiu      $t7, $zero, 0x18
/* 1448F4 8019E884 AC6F0004 */  sw         $t7, 0x4($v1)
/* 1448F8 8019E888 AC7F0000 */  sw         $ra, 0x0($v1)
/* 1448FC 8019E88C 8C430000 */  lw         $v1, 0x0($v0)
/* 144900 8019E890 3C19DC08 */  lui        $t9, (0xDC08060A >> 16)
/* 144904 8019E894 3C08801C */  lui        $t0, %hi(D_801C27D8_ovl7)
/* 144908 8019E898 24780008 */  addiu      $t8, $v1, 0x8
/* 14490C 8019E89C AC580000 */  sw         $t8, 0x0($v0)
/* 144910 8019E8A0 250827D8 */  addiu      $t0, $t0, %lo(D_801C27D8_ovl7)
/* 144914 8019E8A4 3739060A */  ori        $t9, $t9, (0xDC08060A & 0xFFFF)
/* 144918 8019E8A8 AC790000 */  sw         $t9, 0x0($v1)
/* 14491C 8019E8AC AC680004 */  sw         $t0, 0x4($v1)
/* 144920 8019E8B0 8C430000 */  lw         $v1, 0x0($v0)
/* 144924 8019E8B4 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
/* 144928 8019E8B8 3C0A801C */  lui        $t2, %hi(D_801C27D0_ovl7)
/* 14492C 8019E8BC 246E0008 */  addiu      $t6, $v1, 0x8
/* 144930 8019E8C0 AC4E0000 */  sw         $t6, 0x0($v0)
/* 144934 8019E8C4 254A27D0 */  addiu      $t2, $t2, %lo(D_801C27D0_ovl7)
/* 144938 8019E8C8 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
/* 14493C 8019E8CC AC6F0000 */  sw         $t7, 0x0($v1)
/* 144940 8019E8D0 AC6A0004 */  sw         $t2, 0x4($v1)
/* 144944 8019E8D4 8C450004 */  lw         $a1, 0x4($v0)
/* 144948 8019E8D8 24190018 */  addiu      $t9, $zero, 0x18
/* 14494C 8019E8DC 3C0FDC08 */  lui        $t7, (0xDC08060A >> 16)
/* 144950 8019E8E0 24B80008 */  addiu      $t8, $a1, 0x8
/* 144954 8019E8E4 AC580004 */  sw         $t8, 0x4($v0)
/* 144958 8019E8E8 ACB90004 */  sw         $t9, 0x4($a1)
/* 14495C 8019E8EC ACBF0000 */  sw         $ra, 0x0($a1)
/* 144960 8019E8F0 8C450004 */  lw         $a1, 0x4($v0)
/* 144964 8019E8F4 35EF060A */  ori        $t7, $t7, (0xDC08060A & 0xFFFF)
/* 144968 8019E8F8 3C19DC08 */  lui        $t9, (0xDC08090A >> 16)
/* 14496C 8019E8FC 24AE0008 */  addiu      $t6, $a1, 0x8
/* 144970 8019E900 AC4E0004 */  sw         $t6, 0x4($v0)
/* 144974 8019E904 ACA80004 */  sw         $t0, 0x4($a1)
/* 144978 8019E908 ACAF0000 */  sw         $t7, 0x0($a1)
/* 14497C 8019E90C 8C450004 */  lw         $a1, 0x4($v0)
/* 144980 8019E910 3739090A */  ori        $t9, $t9, (0xDC08090A & 0xFFFF)
/* 144984 8019E914 24B80008 */  addiu      $t8, $a1, 0x8
/* 144988 8019E918 AC580004 */  sw         $t8, 0x4($v0)
/* 14498C 8019E91C ACAA0004 */  sw         $t2, 0x4($a1)
/* 144990 8019E920 0C06784A */  jal        func_8019E128_ovl7
/* 144994 8019E924 ACB90000 */   sw        $t9, 0x0($a1)
/* 144998 8019E928 3C028005 */  lui        $v0, %hi(D_8004A3D0)
/* 14499C 8019E92C 2442A3D0 */  addiu      $v0, $v0, %lo(D_8004A3D0)
/* 1449A0 8019E930 8C430000 */  lw         $v1, 0x0($v0)
/* 1449A4 8019E934 240D0018 */  addiu      $t5, $zero, 0x18
/* 1449A8 8019E938 3C1FDB02 */  lui        $ra, (0xDB020000 >> 16)
/* 1449AC 8019E93C 246E0008 */  addiu      $t6, $v1, 0x8
/* 1449B0 8019E940 AC4E0000 */  sw         $t6, 0x0($v0)
/* 1449B4 8019E944 AC6D0004 */  sw         $t5, 0x4($v1)
/* 1449B8 8019E948 AC7F0000 */  sw         $ra, 0x0($v1)
/* 1449BC 8019E94C 8C430000 */  lw         $v1, 0x0($v0)
/* 1449C0 8019E950 3C18DC08 */  lui        $t8, (0xDC08060A >> 16)
/* 1449C4 8019E954 3C07800C */  lui        $a3, %hi(D_800BE550)
/* 1449C8 8019E958 246F0008 */  addiu      $t7, $v1, 0x8
/* 1449CC 8019E95C AC4F0000 */  sw         $t7, 0x0($v0)
/* 1449D0 8019E960 24E7E550 */  addiu      $a3, $a3, %lo(D_800BE550)
/* 1449D4 8019E964 3718060A */  ori        $t8, $t8, (0xDC08060A & 0xFFFF)
/* 1449D8 8019E968 AC780000 */  sw         $t8, 0x0($v1)
/* 1449DC 8019E96C AC670004 */  sw         $a3, 0x4($v1)
/* 1449E0 8019E970 8C430000 */  lw         $v1, 0x0($v0)
/* 1449E4 8019E974 3C0EDC08 */  lui        $t6, (0xDC08090A >> 16)
/* 1449E8 8019E978 3C09800C */  lui        $t1, %hi(D_800BE548)
/* 1449EC 8019E97C 24790008 */  addiu      $t9, $v1, 0x8
/* 1449F0 8019E980 AC590000 */  sw         $t9, 0x0($v0)
/* 1449F4 8019E984 2529E548 */  addiu      $t1, $t1, %lo(D_800BE548)
/* 1449F8 8019E988 35CE090A */  ori        $t6, $t6, (0xDC08090A & 0xFFFF)
/* 1449FC 8019E98C AC6E0000 */  sw         $t6, 0x0($v1)
/* 144A00 8019E990 AC690004 */  sw         $t1, 0x4($v1)
/* 144A04 8019E994 8C450004 */  lw         $a1, 0x4($v0)
/* 144A08 8019E998 3C19DC08 */  lui        $t9, (0xDC08060A >> 16)
/* 144A0C 8019E99C 3739060A */  ori        $t9, $t9, (0xDC08060A & 0xFFFF)
/* 144A10 8019E9A0 24AF0008 */  addiu      $t7, $a1, 0x8
/* 144A14 8019E9A4 AC4F0004 */  sw         $t7, 0x4($v0)
/* 144A18 8019E9A8 ACAD0004 */  sw         $t5, 0x4($a1)
/* 144A1C 8019E9AC ACBF0000 */  sw         $ra, 0x0($a1)
/* 144A20 8019E9B0 8C450004 */  lw         $a1, 0x4($v0)
/* 144A24 8019E9B4 3C0FDC08 */  lui        $t7, (0xDC08090A >> 16)
/* 144A28 8019E9B8 35EF090A */  ori        $t7, $t7, (0xDC08090A & 0xFFFF)
/* 144A2C 8019E9BC 24B80008 */  addiu      $t8, $a1, 0x8
/* 144A30 8019E9C0 AC580004 */  sw         $t8, 0x4($v0)
/* 144A34 8019E9C4 ACA70004 */  sw         $a3, 0x4($a1)
/* 144A38 8019E9C8 ACB90000 */  sw         $t9, 0x0($a1)
/* 144A3C 8019E9CC 8C450004 */  lw         $a1, 0x4($v0)
/* 144A40 8019E9D0 24AE0008 */  addiu      $t6, $a1, 0x8
/* 144A44 8019E9D4 AC4E0004 */  sw         $t6, 0x4($v0)
/* 144A48 8019E9D8 ACA90004 */  sw         $t1, 0x4($a1)
/* 144A4C 8019E9DC ACAF0000 */  sw         $t7, 0x0($a1)
/* 144A50 8019E9E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 144A54 8019E9E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 144A58 8019E9E8 03E00008 */  jr         $ra
/* 144A5C 8019E9EC 00000000 */   nop
