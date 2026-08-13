nonmatching func_8002CFE4, 0x88

glabel func_8002CFE4
    /* 2DBE4 8002CFE4 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 2DBE8 8002CFE8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 2DBEC 8002CFEC AFA5001C */  sw         $a1, 0x1C($sp)
    /* 2DBF0 8002CFF0 8C8E0008 */  lw         $t6, 0x8($a0)
    /* 2DBF4 8002CFF4 51C0001A */  beql       $t6, $zero, .L8002D060
    /* 2DBF8 8002CFF8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 2DBFC 8002CFFC 0C00A642 */  jal        __n_allocParam
    /* 2DC00 8002D000 AFA40018 */   sw        $a0, 0x18($sp)
    /* 2DC04 8002D004 8FA70018 */  lw         $a3, 0x18($sp)
    /* 2DC08 8002D008 10400014 */  beqz       $v0, .L8002D05C
    /* 2DC0C 8002D00C 00403025 */   or        $a2, $v0, $zero
    /* 2DC10 8002D010 3C0F8004 */  lui        $t7, %hi(n_syn)
    /* 2DC14 8002D014 8DEFFB14 */  lw         $t7, %lo(n_syn)($t7)
    /* 2DC18 8002D018 8CF90008 */  lw         $t9, 0x8($a3)
    /* 2DC1C 8002D01C 240A0010 */  addiu      $t2, $zero, 0x10
    /* 2DC20 8002D020 8DF80028 */  lw         $t8, 0x28($t7)
    /* 2DC24 8002D024 8F280088 */  lw         $t0, 0x88($t9)
    /* 2DC28 8002D028 A44A0008 */  sh         $t2, 0x8($v0)
    /* 2DC2C 8002D02C 24050003 */  addiu      $a1, $zero, 0x3
    /* 2DC30 8002D030 03084821 */  addu       $t1, $t8, $t0
    /* 2DC34 8002D034 AC490004 */  sw         $t1, 0x4($v0)
    /* 2DC38 8002D038 93A3001F */  lbu        $v1, 0x1F($sp)
    /* 2DC3C 8002D03C 04610003 */  bgez       $v1, .L8002D04C
    /* 2DC40 8002D040 00035823 */   negu      $t3, $v1
    /* 2DC44 8002D044 10000002 */  b          .L8002D050
    /* 2DC48 8002D048 AC4B000C */   sw        $t3, 0xC($v0)
  .L8002D04C:
    /* 2DC4C 8002D04C AC43000C */  sw         $v1, 0xC($v0)
  .L8002D050:
    /* 2DC50 8002D050 ACC00000 */  sw         $zero, 0x0($a2)
    /* 2DC54 8002D054 0C009D48 */  jal        n_alEnvmixerParam
    /* 2DC58 8002D058 8CE40008 */   lw        $a0, 0x8($a3)
  .L8002D05C:
    /* 2DC5C 8002D05C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8002D060:
    /* 2DC60 8002D060 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 2DC64 8002D064 03E00008 */  jr         $ra
    /* 2DC68 8002D068 00000000 */   nop
endlabel func_8002CFE4
.size func_8002CFE4, . - func_8002CFE4
    /* 2DC6C 8002D06C 00000000 */  nop
