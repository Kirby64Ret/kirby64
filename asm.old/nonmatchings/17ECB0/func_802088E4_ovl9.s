glabel func_802088E4_ovl9
/* 1B6934 802088E4 3C038005 */  lui        $v1, %hi(D_8004A7C4)
/* 1B6938 802088E8 2463A7C4 */  addiu      $v1, $v1, %lo(D_8004A7C4)
/* 1B693C 802088EC 8C6E0000 */  lw         $t6, 0x0($v1)
/* 1B6940 802088F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B6944 802088F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B6948 802088F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 1B694C 802088FC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1B6950 80208900 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 1B6954 80208904 3C19801D */  lui        $t9, %hi(D_801CC628)
/* 1B6958 80208908 000FC080 */  sll        $t8, $t7, 2
/* 1B695C 8020890C 00581021 */  addu       $v0, $v0, $t8
/* 1B6960 80208910 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 1B6964 80208914 2739C628 */  addiu      $t9, $t9, %lo(D_801CC628)
/* 1B6968 80208918 3C01800E */  lui        $at, %hi(D_800DDFD0)
/* 1B696C 8020891C AC590098 */  sw         $t9, 0x98($v0)
/* 1B6970 80208920 8C690000 */  lw         $t1, 0x0($v1)
/* 1B6974 80208924 24080007 */  addiu      $t0, $zero, 0x7
/* 1B6978 80208928 8D2A0000 */  lw         $t2, 0x0($t1)
/* 1B697C 8020892C 000A5880 */  sll        $t3, $t2, 2
/* 1B6980 80208930 002B0821 */  addu       $at, $at, $t3
/* 1B6984 80208934 0C02CD48 */  jal        func_800B3520
/* 1B6988 80208938 AC28DFD0 */   sw        $t0, %lo(D_800DDFD0)($at)
/* 1B698C 8020893C 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* 1B6990 80208940 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* 1B6994 80208944 3C01800F */  lui        $at, %hi(D_800E9720)
/* 1B6998 80208948 24180001 */  addiu      $t8, $zero, 0x1
/* 1B699C 8020894C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 1B69A0 80208950 3C040001 */  lui        $a0, (0x101F9 >> 16)
/* 1B69A4 80208954 348401F9 */  ori        $a0, $a0, (0x101F9 & 0xFFFF)
/* 1B69A8 80208958 000C6880 */  sll        $t5, $t4, 2
/* 1B69AC 8020895C 002D0821 */  addu       $at, $at, $t5
/* 1B69B0 80208960 AC209720 */  sw         $zero, %lo(D_800E9720)($at)
/* 1B69B4 80208964 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1B69B8 80208968 3C01800F */  lui        $at, %hi(D_800E93A0)
/* 1B69BC 8020896C 000E7880 */  sll        $t7, $t6, 2
/* 1B69C0 80208970 002F0821 */  addu       $at, $at, $t7
/* 1B69C4 80208974 AC2093A0 */  sw         $zero, %lo(D_800E93A0)($at)
/* 1B69C8 80208978 8C590000 */  lw         $t9, 0x0($v0)
/* 1B69CC 8020897C 3C01800F */  lui        $at, %hi(D_800E9E20)
/* 1B69D0 80208980 00194880 */  sll        $t1, $t9, 2
/* 1B69D4 80208984 00290821 */  addu       $at, $at, $t1
/* 1B69D8 80208988 0C02A7A9 */  jal        func_800A9EA4
/* 1B69DC 8020898C AC389E20 */   sw        $t8, %lo(D_800E9E20)($at)
/* 1B69E0 80208990 3C0A8005 */  lui        $t2, %hi(D_8004A7C4)
/* 1B69E4 80208994 8D4AA7C4 */  lw         $t2, %lo(D_8004A7C4)($t2)
/* 1B69E8 80208998 3C01800E */  lui        $at, %hi(D_800E6A10)
/* 1B69EC 8020899C 8FA40018 */  lw         $a0, 0x18($sp)
/* 1B69F0 802089A0 8D420000 */  lw         $v0, 0x0($t2)
/* 1B69F4 802089A4 00021080 */  sll        $v0, $v0, 2
/* 1B69F8 802089A8 00220821 */  addu       $at, $at, $v0
/* 1B69FC 802089AC C4246A10 */  lwc1       $f4, %lo(D_800E6A10)($at)
/* 1B6A00 802089B0 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* 1B6A04 802089B4 44813000 */  mtc1       $at, $f6
/* 1B6A08 802089B8 3C01800E */  lui        $at, %hi(D_800E64D0)
/* 1B6A0C 802089BC 00220821 */  addu       $at, $at, $v0
/* 1B6A10 802089C0 46062202 */  mul.s      $f8, $f4, $f6
/* 1B6A14 802089C4 0C082391 */  jal        func_80208E44_ovl9
/* 1B6A18 802089C8 E42864D0 */   swc1      $f8, %lo(D_800E64D0)($at)
/* 1B6A1C 802089CC 0C0821D6 */  jal        func_80208758_ovl9
/* 1B6A20 802089D0 8FA40018 */   lw        $a0, 0x18($sp)
/* 1B6A24 802089D4 0C082162 */  jal        func_80208588_ovl9
/* 1B6A28 802089D8 240400B7 */   addiu     $a0, $zero, 0xB7
/* 1B6A2C 802089DC 0C02BE85 */  jal        func_800AFA14
/* 1B6A30 802089E0 00000000 */   nop
/* 1B6A34 802089E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B6A38 802089E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1B6A3C 802089EC 03E00008 */  jr         $ra
/* 1B6A40 802089F0 00000000 */   nop
