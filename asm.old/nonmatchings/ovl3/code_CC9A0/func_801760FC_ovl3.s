glabel func_801760FC_ovl3
/* D6B3C 801760FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D6B40 80176100 AFBF0014 */  sw         $ra, 0x14($sp)
/* D6B44 80176104 0C054E61 */  jal        func_80153984_ovl3
glabel func_80176108_ovl5
/* D6B48 80176108 AFA40018 */   sw        $a0, 0x18($sp)
/* D6B4C 8017610C 0C0485EE */  jal        func_801217B8
/* D6B50 80176110 00000000 */   nop
/* D6B54 80176114 3C068013 */  lui        $a2, %hi(gKirbyState)
/* D6B58 80176118 24C6E7C0 */  addiu      $a2, $a2, %lo(gKirbyState)
/* D6B5C 8017611C 8CCE00FC */  lw         $t6, 0xFC($a2)
/* D6B60 80176120 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* D6B64 80176124 51C00018 */  beql       $t6, $zero, .L80176188_ovl3
/* D6B68 80176128 8CCB0030 */   lw        $t3, 0x30($a2)
/* D6B6C 8017612C 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* D6B70 80176130 44802000 */  mtc1       $zero, $f4
/* D6B74 80176134 3C04800E */  lui        $a0, %hi(D_800E6690)
.L80176138_ovl5:
/* D6B78 80176138 8C4F0000 */  lw         $t7, 0x0($v0)
/* D6B7C 8017613C 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* D6B80 80176140 3C01800E */  lui        $at, %hi(D_800E64D0)
/* D6B84 80176144 000FC080 */  sll        $t8, $t7, 2
/* D6B88 80176148 0098C821 */  addu       $t9, $a0, $t8
/* D6B8C 8017614C E7240000 */  swc1       $f4, 0x0($t9)
/* D6B90 80176150 8C430000 */  lw         $v1, 0x0($v0)
/* D6B94 80176154 00031880 */  sll        $v1, $v1, 2
/* D6B98 80176158 00834021 */  addu       $t0, $a0, $v1
/* D6B9C 8017615C C5060000 */  lwc1       $f6, 0x0($t0)
/* D6BA0 80176160 00230821 */  addu       $at, $at, $v1
/* D6BA4 80176164 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* D6BA8 80176168 8C490000 */  lw         $t1, 0x0($v0)
/* D6BAC 8017616C 3C018019 */  lui        $at, %hi(D_801974B4_ovl3)
glabel func_80176170_ovl5
/* D6BB0 80176170 C42874B4 */  lwc1       $f8, %lo(D_801974B4_ovl3)($at)
/* D6BB4 80176174 3C01800E */  lui        $at, %hi(D_800E6850)
/* D6BB8 80176178 00095080 */  sll        $t2, $t1, 2
/* D6BBC 8017617C 002A0821 */  addu       $at, $at, $t2
/* D6BC0 80176180 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* D6BC4 80176184 8CCB0030 */  lw         $t3, 0x30($a2)
.L80176188_ovl3:
/* D6BC8 80176188 51600052 */  beql       $t3, $zero, .L801762D4_ovl3
/* D6BCC 8017618C 8FBF0014 */   lw        $ra, 0x14($sp)
/* D6BD0 80176190 90CC0008 */  lbu        $t4, 0x8($a2)
/* D6BD4 80176194 2404000B */  addiu      $a0, $zero, 0xB
/* D6BD8 80176198 11800005 */  beqz       $t4, .L801761B0_ovl3
/* D6BDC 8017619C 00000000 */   nop
/* D6BE0 801761A0 0C048BDB */  jal        set_kirby_action_1
/* D6BE4 801761A4 24050010 */   addiu     $a1, $zero, 0x10
/* D6BE8 801761A8 10000047 */  b          .L801762C8_ovl3
/* D6BEC 801761AC 00000000 */   nop
.L801761B0_ovl3:
/* D6BF0 801761B0 0C05E44C */  jal        func_80179130_ovl3
/* D6BF4 801761B4 00000000 */   nop
/* D6BF8 801761B8 14400043 */  bnez       $v0, .L801762C8_ovl3
/* D6BFC 801761BC 3C0D8005 */   lui       $t5, %hi(D_8004A7C4)
/* D6C00 801761C0 8DADA7C4 */  lw         $t5, %lo(D_8004A7C4)($t5)
/* D6C04 801761C4 3C18800F */  lui        $t8, %hi(D_800E8920)
/* D6C08 801761C8 24040006 */  addiu      $a0, $zero, 0x6
/* D6C0C 801761CC 8DAE0000 */  lw         $t6, 0x0($t5)
/* D6C10 801761D0 3C028013 */  lui        $v0, %hi(gKirbyState + 0x4)
/* D6C14 801761D4 000E7880 */  sll        $t7, $t6, 2
/* D6C18 801761D8 030FC021 */  addu       $t8, $t8, $t7
/* D6C1C 801761DC 8F188920 */  lw         $t8, %lo(D_800E8920)($t8)
/* D6C20 801761E0 17000005 */  bnez       $t8, .L801761F8_ovl3
/* D6C24 801761E4 00000000 */   nop
/* D6C28 801761E8 0C048BDB */  jal        set_kirby_action_1
/* D6C2C 801761EC 24050006 */   addiu     $a1, $zero, 0x6
/* D6C30 801761F0 10000035 */  b          .L801762C8_ovl3
/* D6C34 801761F4 00000000 */   nop
.L801761F8_ovl3:
/* D6C38 801761F8 9042E7C4 */  lbu        $v0, %lo(gKirbyState + 0x4)($v0)
/* D6C3C 801761FC 24010001 */  addiu      $at, $zero, 0x1
/* D6C40 80176200 3C19800D */  lui        $t9, %hi(gKirbyController)
/* D6C44 80176204 10400008 */  beqz       $v0, .L80176228_ovl3
/* D6C48 80176208 00000000 */   nop
/* D6C4C 8017620C 10410014 */  beq        $v0, $at, .L80176260_ovl3
/* D6C50 80176210 3C09800D */   lui       $t1, %hi(gKirbyController)
/* D6C54 80176214 24010002 */  addiu      $at, $zero, 0x2
/* D6C58 80176218 1041001F */  beq        $v0, $at, .L80176298_ovl3
/* D6C5C 8017621C 3C0B800D */   lui       $t3, %hi(gKirbyController)
/* D6C60 80176220 10000029 */  b          .L801762C8_ovl3
/* D6C64 80176224 00000000 */   nop
.L80176228_ovl3:
/* D6C68 80176228 97396FE8 */  lhu        $t9, %lo(gKirbyController)($t9)
/* D6C6C 8017622C 2405000E */  addiu      $a1, $zero, 0xE
/* D6C70 80176230 00002025 */  or         $a0, $zero, $zero
/* D6C74 80176234 33280400 */  andi       $t0, $t9, 0x400
/* D6C78 80176238 11000005 */  beqz       $t0, .L80176250_ovl3
/* D6C7C 8017623C 00000000 */   nop
/* D6C80 80176240 0C048BDB */  jal        set_kirby_action_1
/* D6C84 80176244 24040009 */   addiu     $a0, $zero, 0x9
/* D6C88 80176248 1000001F */  b          .L801762C8_ovl3
/* D6C8C 8017624C 00000000 */   nop
.L80176250_ovl3:
/* D6C90 80176250 0C048BDB */  jal        set_kirby_action_1
/* D6C94 80176254 24050001 */   addiu     $a1, $zero, 0x1
/* D6C98 80176258 1000001B */  b          .L801762C8_ovl3
/* D6C9C 8017625C 00000000 */   nop
.L80176260_ovl3:
/* D6CA0 80176260 95296FE8 */  lhu        $t1, %lo(gKirbyController)($t1)
/* D6CA4 80176264 24050010 */  addiu      $a1, $zero, 0x10
/* D6CA8 80176268 00002025 */  or         $a0, $zero, $zero
/* D6CAC 8017626C 312A0400 */  andi       $t2, $t1, 0x400
/* D6CB0 80176270 11400005 */  beqz       $t2, .L80176288_ovl3
/* D6CB4 80176274 00000000 */   nop
/* D6CB8 80176278 0C048BDB */  jal        set_kirby_action_1
/* D6CBC 8017627C 2404000B */   addiu     $a0, $zero, 0xB
/* D6CC0 80176280 10000011 */  b          .L801762C8_ovl3
/* D6CC4 80176284 00000000 */   nop
.L80176288_ovl3:
/* D6CC8 80176288 0C048BDB */  jal        set_kirby_action_1
/* D6CCC 8017628C 24050001 */   addiu     $a1, $zero, 0x1
/* D6CD0 80176290 1000000D */  b          .L801762C8_ovl3
/* D6CD4 80176294 00000000 */   nop
.L80176298_ovl3:
/* D6CD8 80176298 956B6FE8 */  lhu        $t3, %lo(gKirbyController)($t3)
/* D6CDC 8017629C 24050012 */  addiu      $a1, $zero, 0x12
/* D6CE0 801762A0 00002025 */  or         $a0, $zero, $zero
/* D6CE4 801762A4 316C0400 */  andi       $t4, $t3, 0x400
/* D6CE8 801762A8 11800005 */  beqz       $t4, .L801762C0_ovl3
/* D6CEC 801762AC 00000000 */   nop
/* D6CF0 801762B0 0C048BDB */  jal        set_kirby_action_1
/* D6CF4 801762B4 24040012 */   addiu     $a0, $zero, 0x12
/* D6CF8 801762B8 10000003 */  b          .L801762C8_ovl3
/* D6CFC 801762BC 00000000 */   nop
.L801762C0_ovl3:
/* D6D00 801762C0 0C048BDB */  jal        set_kirby_action_1
/* D6D04 801762C4 24050001 */   addiu     $a1, $zero, 0x1
.L801762C8_ovl3:
/* D6D08 801762C8 3C018013 */  lui        $at, %hi(D_8012E7DC + 0x8)
/* D6D0C 801762CC AC20E7E4 */  sw         $zero, %lo(D_8012E7DC + 0x8)($at)
/* D6D10 801762D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L801762D4_ovl3:
/* D6D14 801762D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* D6D18 801762D8 03E00008 */  jr         $ra
/* D6D1C 801762DC 00000000 */   nop
