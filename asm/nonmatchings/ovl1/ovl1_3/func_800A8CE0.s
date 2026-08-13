nonmatching func_800A8CE0, 0x84

glabel func_800A8CE0
    /* 50F30 800A8CE0 00047402 */  srl        $t6, $a0, 16
    /* 50F34 800A8CE4 000E7880 */  sll        $t7, $t6, 2
    /* 50F38 800A8CE8 3C18800D */  lui        $t8, %hi(D_800D0184)
    /* 50F3C 800A8CEC 030FC021 */  addu       $t8, $t8, $t7
    /* 50F40 800A8CF0 8F180184 */  lw         $t8, %lo(D_800D0184)($t8)
    /* 50F44 800A8CF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 50F48 800A8CF8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 50F4C 800A8CFC 8F020000 */  lw         $v0, 0x0($t8)
    /* 50F50 800A8D00 3086FFFF */  andi       $a2, $a0, 0xFFFF
    /* 50F54 800A8D04 00063040 */  sll        $a2, $a2, 1
    /* 50F58 800A8D08 0006C880 */  sll        $t9, $a2, 2
    /* 50F5C 800A8D0C 00591821 */  addu       $v1, $v0, $t9
    /* 50F60 800A8D10 8C680004 */  lw         $t0, 0x4($v1)
    /* 50F64 800A8D14 8C690000 */  lw         $t1, 0x0($v1)
    /* 50F68 800A8D18 AFA3001C */  sw         $v1, 0x1C($sp)
    /* 50F6C 800A8D1C 01095023 */  subu       $t2, $t0, $t1
    /* 50F70 800A8D20 01452025 */  or         $a0, $t2, $a1
    /* 50F74 800A8D24 0C02A0D6 */  jal        func_800A8358
    /* 50F78 800A8D28 AFA4002C */   sw        $a0, 0x2C($sp)
    /* 50F7C 800A8D2C 8FA3001C */  lw         $v1, 0x1C($sp)
    /* 50F80 800A8D30 8FA7002C */  lw         $a3, 0x2C($sp)
    /* 50F84 800A8D34 3C0100FF */  lui        $at, (0xFFFFFC >> 16)
    /* 50F88 800A8D38 AFA20020 */  sw         $v0, 0x20($sp)
    /* 50F8C 800A8D3C 3421FFFC */  ori        $at, $at, (0xFFFFFC & 0xFFFF)
    /* 50F90 800A8D40 00402825 */  or         $a1, $v0, $zero
    /* 50F94 800A8D44 8C640000 */  lw         $a0, 0x0($v1)
    /* 50F98 800A8D48 0C000B92 */  jal        dma_read
    /* 50F9C 800A8D4C 00E13024 */   and       $a2, $a3, $at
    /* 50FA0 800A8D50 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 50FA4 800A8D54 8FA20020 */  lw         $v0, 0x20($sp)
    /* 50FA8 800A8D58 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 50FAC 800A8D5C 03E00008 */  jr         $ra
    /* 50FB0 800A8D60 00000000 */   nop
endlabel func_800A8CE0
.size func_800A8CE0, . - func_800A8CE0
