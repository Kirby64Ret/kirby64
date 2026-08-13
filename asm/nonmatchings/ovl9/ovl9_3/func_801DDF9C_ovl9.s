nonmatching func_801DDF9C_ovl9, 0x2E4

glabel func_801DDF9C_ovl9
    /* 18BFEC 801DDF9C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 18BFF0 801DDFA0 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 18BFF4 801DDFA4 27BDFFB8 */  addiu      $sp, $sp, -0x48
    /* 18BFF8 801DDFA8 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 18BFFC 801DDFAC AFA40048 */  sw         $a0, 0x48($sp)
    /* 18C000 801DDFB0 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 18C004 801DDFB4 3C19800F */  lui        $t9, %hi(D_800E9E20)
    /* 18C008 801DDFB8 27399E20 */  addiu      $t9, $t9, %lo(D_800E9E20)
    /* 18C00C 801DDFBC 000FC080 */  sll        $t8, $t7, 2
    /* 18C010 801DDFC0 03191021 */  addu       $v0, $t8, $t9
    /* 18C014 801DDFC4 8C480000 */  lw         $t0, 0x0($v0)
    /* 18C018 801DDFC8 25090001 */  addiu      $t1, $t0, 0x1
    /* 18C01C 801DDFCC 0C06835D */  jal        func_801A0D74_ovl7
    /* 18C020 801DDFD0 AC490000 */   sw        $t1, 0x0($v0)
    /* 18C024 801DDFD4 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 18C028 801DDFD8 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 18C02C 801DDFDC 3C01800E */  lui        $at, %hi(gEntitiesPosYArray)
    /* 18C030 801DDFE0 3C0A800E */  lui        $t2, %hi(D_800E7880)
    /* 18C034 801DDFE4 8CC30000 */  lw         $v1, 0x0($a2)
    /* 18C038 801DDFE8 00033880 */  sll        $a3, $v1, 2
    /* 18C03C 801DDFEC 00270821 */  addu       $at, $at, $a3
    /* 18C040 801DDFF0 C4242CD0 */  lwc1       $f4, %lo(gEntitiesPosYArray)($at)
    /* 18C044 801DDFF4 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* 18C048 801DDFF8 00270821 */  addu       $at, $at, $a3
    /* 18C04C 801DDFFC C4262790 */  lwc1       $f6, %lo(gEntitiesNextPosYArray)($at)
    /* 18C050 801DE000 01435021 */  addu       $t2, $t2, $v1
    /* 18C054 801DE004 4606203C */  c.lt.s     $f4, $f6
    /* 18C058 801DE008 00000000 */  nop
    /* 18C05C 801DE00C 45000027 */  bc1f       .L801DE0AC_ovl9
    /* 18C060 801DE010 00000000 */   nop
    /* 18C064 801DE014 914A7880 */  lbu        $t2, %lo(D_800E7880)($t2)
    /* 18C068 801DE018 24010003 */  addiu      $at, $zero, 0x3
    /* 18C06C 801DE01C 3C0B800F */  lui        $t3, %hi(D_800E9E20)
    /* 18C070 801DE020 15410008 */  bne        $t2, $at, .L801DE044_ovl9
    /* 18C074 801DE024 01675821 */   addu      $t3, $t3, $a3
    /* 18C078 801DE028 0C077CA7 */  jal        func_801DF29C_ovl9
    /* 18C07C 801DE02C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 18C080 801DE030 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 18C084 801DE034 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 18C088 801DE038 8CC30000 */  lw         $v1, 0x0($a2)
    /* 18C08C 801DE03C 1000001B */  b          .L801DE0AC_ovl9
    /* 18C090 801DE040 00033880 */   sll       $a3, $v1, 2
  .L801DE044_ovl9:
    /* 18C094 801DE044 8D6B9E20 */  lw         $t3, %lo(D_800E9E20)($t3)
    /* 18C098 801DE048 240C0007 */  addiu      $t4, $zero, 0x7
    /* 18C09C 801DE04C 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 18C0A0 801DE050 29610005 */  slti       $at, $t3, 0x5
    /* 18C0A4 801DE054 1420000F */  bnez       $at, .L801DE094_ovl9
    /* 18C0A8 801DE058 3C01800E */   lui       $at, %hi(gEntityFuncListIDArray)
    /* 18C0AC 801DE05C 00270821 */  addu       $at, $at, $a3
    /* 18C0B0 801DE060 AC2CDC50 */  sw         $t4, %lo(gEntityFuncListIDArray)($at)
    /* 18C0B4 801DE064 8CCD0000 */  lw         $t5, 0x0($a2)
    /* 18C0B8 801DE068 3C05801E */  lui        $a1, %hi(func_801DCA78_ovl9)
    /* 18C0BC 801DE06C 24A5CA78 */  addiu      $a1, $a1, %lo(func_801DCA78_ovl9)
    /* 18C0C0 801DE070 000D7080 */  sll        $t6, $t5, 2
    /* 18C0C4 801DE074 008E2021 */  addu       $a0, $a0, $t6
    /* 18C0C8 801DE078 0C02C7B2 */  jal        assign_new_process_entry
    /* 18C0CC 801DE07C 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 18C0D0 801DE080 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 18C0D4 801DE084 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 18C0D8 801DE088 8CC30000 */  lw         $v1, 0x0($a2)
    /* 18C0DC 801DE08C 10000007 */  b          .L801DE0AC_ovl9
    /* 18C0E0 801DE090 00033880 */   sll       $a3, $v1, 2
  .L801DE094_ovl9:
    /* 18C0E4 801DE094 0C077CA7 */  jal        func_801DF29C_ovl9
    /* 18C0E8 801DE098 8FA40048 */   lw        $a0, 0x48($sp)
    /* 18C0EC 801DE09C 3C068005 */  lui        $a2, %hi(omCurrentObj)
    /* 18C0F0 801DE0A0 8CC6A7C4 */  lw         $a2, %lo(omCurrentObj)($a2)
    /* 18C0F4 801DE0A4 8CC30000 */  lw         $v1, 0x0($a2)
    /* 18C0F8 801DE0A8 00033880 */  sll        $a3, $v1, 2
  .L801DE0AC_ovl9:
    /* 18C0FC 801DE0AC 3C02800E */  lui        $v0, %hi(D_800E7880)
    /* 18C100 801DE0B0 00431021 */  addu       $v0, $v0, $v1
    /* 18C104 801DE0B4 90427880 */  lbu        $v0, %lo(D_800E7880)($v0)
    /* 18C108 801DE0B8 3C0F800F */  lui        $t7, %hi(D_800E9E20)
    /* 18C10C 801DE0BC 24010001 */  addiu      $at, $zero, 0x1
    /* 18C110 801DE0C0 10400009 */  beqz       $v0, .L801DE0E8_ovl9
    /* 18C114 801DE0C4 01E77821 */   addu      $t7, $t7, $a3
    /* 18C118 801DE0C8 10410007 */  beq        $v0, $at, .L801DE0E8_ovl9
    /* 18C11C 801DE0CC 24010002 */   addiu     $at, $zero, 0x2
    /* 18C120 801DE0D0 10410005 */  beq        $v0, $at, .L801DE0E8_ovl9
    /* 18C124 801DE0D4 24010003 */   addiu     $at, $zero, 0x3
    /* 18C128 801DE0D8 10410016 */  beq        $v0, $at, .L801DE134_ovl9
    /* 18C12C 801DE0DC 00000000 */   nop
    /* 18C130 801DE0E0 10000014 */  b          .L801DE134_ovl9
    /* 18C134 801DE0E4 00000000 */   nop
  .L801DE0E8_ovl9:
    /* 18C138 801DE0E8 8DEF9E20 */  lw         $t7, %lo(D_800E9E20)($t7)
    /* 18C13C 801DE0EC 24180008 */  addiu      $t8, $zero, 0x8
    /* 18C140 801DE0F0 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 18C144 801DE0F4 29E100A6 */  slti       $at, $t7, 0xA6
    /* 18C148 801DE0F8 1420000E */  bnez       $at, .L801DE134_ovl9
    /* 18C14C 801DE0FC 3C01800E */   lui       $at, %hi(gEntityFuncListIDArray)
    /* 18C150 801DE100 00270821 */  addu       $at, $at, $a3
    /* 18C154 801DE104 AC38DC50 */  sw         $t8, %lo(gEntityFuncListIDArray)($at)
    /* 18C158 801DE108 8CD90000 */  lw         $t9, 0x0($a2)
    /* 18C15C 801DE10C 3C05801E */  lui        $a1, %hi(func_801DCA78_ovl9)
    /* 18C160 801DE110 24A5CA78 */  addiu      $a1, $a1, %lo(func_801DCA78_ovl9)
    /* 18C164 801DE114 00194080 */  sll        $t0, $t9, 2
    /* 18C168 801DE118 00882021 */  addu       $a0, $a0, $t0
    /* 18C16C 801DE11C 0C02C7B2 */  jal        assign_new_process_entry
    /* 18C170 801DE120 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
    /* 18C174 801DE124 3C098005 */  lui        $t1, %hi(omCurrentObj)
    /* 18C178 801DE128 8D29A7C4 */  lw         $t1, %lo(omCurrentObj)($t1)
    /* 18C17C 801DE12C 8D270000 */  lw         $a3, 0x0($t1)
    /* 18C180 801DE130 00073880 */  sll        $a3, $a3, 2
  .L801DE134_ovl9:
    /* 18C184 801DE134 3C02800F */  lui        $v0, %hi(D_800E8920)
    /* 18C188 801DE138 24428920 */  addiu      $v0, $v0, %lo(D_800E8920)
    /* 18C18C 801DE13C 00475021 */  addu       $t2, $v0, $a3
    /* 18C190 801DE140 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 18C194 801DE144 24010001 */  addiu      $at, $zero, 0x1
    /* 18C198 801DE148 3C19801D */  lui        $t9, %hi(D_801C8080_ovl7)
    /* 18C19C 801DE14C 1561003F */  bne        $t3, $at, .L801DE24C_ovl9
    /* 18C1A0 801DE150 3C08800E */   lui       $t0, %hi(D_800E1B50)
    /* 18C1A4 801DE154 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 18C1A8 801DE158 24010001 */  addiu      $at, $zero, 0x1
    /* 18C1AC 801DE15C 3C0D8013 */  lui        $t5, %hi(D_8012E90C + 0x4)
    /* 18C1B0 801DE160 5581003B */  bnel       $t4, $at, .L801DE250_ovl9
    /* 18C1B4 801DE164 01074021 */   addu      $t0, $t0, $a3
    /* 18C1B8 801DE168 91ADE910 */  lbu        $t5, %lo(D_8012E90C + 0x4)($t5)
    /* 18C1BC 801DE16C 3C01800E */  lui        $at, %hi(D_800E64D0)
    /* 18C1C0 801DE170 00270821 */  addu       $at, $at, $a3
    /* 18C1C4 801DE174 15A00035 */  bnez       $t5, .L801DE24C_ovl9
    /* 18C1C8 801DE178 00002025 */   or        $a0, $zero, $zero
    /* 18C1CC 801DE17C 44804000 */  mtc1       $zero, $f8
    /* 18C1D0 801DE180 C42A64D0 */  lwc1       $f10, %lo(D_800E64D0)($at)
    /* 18C1D4 801DE184 3C19800E */  lui        $t9, %hi(D_800E1B50)
    /* 18C1D8 801DE188 3C0F800E */  lui        $t7, %hi(D_800E1B50)
    /* 18C1DC 801DE18C 460A403C */  c.lt.s     $f8, $f10
    /* 18C1E0 801DE190 01E77821 */  addu       $t7, $t7, $a3
    /* 18C1E4 801DE194 0327C821 */  addu       $t9, $t9, $a3
    /* 18C1E8 801DE198 3C0E801D */  lui        $t6, %hi(D_801CA550)
    /* 18C1EC 801DE19C 45000005 */  bc1f       .L801DE1B4_ovl9
    /* 18C1F0 801DE1A0 00000000 */   nop
    /* 18C1F4 801DE1A4 8DEF1B50 */  lw         $t7, %lo(D_800E1B50)($t7)
    /* 18C1F8 801DE1A8 25CEA550 */  addiu      $t6, $t6, %lo(D_801CA550)
    /* 18C1FC 801DE1AC 10000005 */  b          .L801DE1C4_ovl9
    /* 18C200 801DE1B0 ADEE008C */   sw        $t6, 0x8C($t7)
  .L801DE1B4_ovl9:
    /* 18C204 801DE1B4 8F391B50 */  lw         $t9, %lo(D_800E1B50)($t9)
    /* 18C208 801DE1B8 3C18801D */  lui        $t8, %hi(D_801CA598)
    /* 18C20C 801DE1BC 2718A598 */  addiu      $t8, $t8, %lo(D_801CA598)
    /* 18C210 801DE1C0 AF38008C */  sw         $t8, 0x8C($t9)
  .L801DE1C4_ovl9:
    /* 18C214 801DE1C4 0C077D62 */  jal        func_801DF588_ovl9
    /* 18C218 801DE1C8 27A5002C */   addiu     $a1, $sp, 0x2C
    /* 18C21C 801DE1CC 1040000E */  beqz       $v0, .L801DE208_ovl9
    /* 18C220 801DE1D0 3C0B8013 */   lui       $t3, %hi(D_8012E7C5)
    /* 18C224 801DE1D4 8FA40038 */  lw         $a0, 0x38($sp)
    /* 18C228 801DE1D8 93A5002C */  lbu        $a1, 0x2C($sp)
    /* 18C22C 801DE1DC 93A6002D */  lbu        $a2, 0x2D($sp)
    /* 18C230 801DE1E0 0C05A50C */  jal        func_80169430_ovl3
    /* 18C234 801DE1E4 24070007 */   addiu     $a3, $zero, 0x7
    /* 18C238 801DE1E8 3C088005 */  lui        $t0, %hi(omCurrentObj)
    /* 18C23C 801DE1EC 8D08A7C4 */  lw         $t0, %lo(omCurrentObj)($t0)
    /* 18C240 801DE1F0 3C01800F */  lui        $at, %hi(D_800EBBE0)
    /* 18C244 801DE1F4 8D090000 */  lw         $t1, 0x0($t0)
    /* 18C248 801DE1F8 00095080 */  sll        $t2, $t1, 2
    /* 18C24C 801DE1FC 002A0821 */  addu       $at, $at, $t2
    /* 18C250 801DE200 10000017 */  b          .L801DE260_ovl9
    /* 18C254 801DE204 AC20BBE0 */   sw        $zero, %lo(D_800EBBE0)($at)
  .L801DE208_ovl9:
    /* 18C258 801DE208 916BE7C5 */  lbu        $t3, %lo(D_8012E7C5)($t3)
    /* 18C25C 801DE20C 24010015 */  addiu      $at, $zero, 0x15
    /* 18C260 801DE210 3C0D8005 */  lui        $t5, %hi(omCurrentObj)
    /* 18C264 801DE214 11610012 */  beq        $t3, $at, .L801DE260_ovl9
    /* 18C268 801DE218 00000000 */   nop
    /* 18C26C 801DE21C 8DADA7C4 */  lw         $t5, %lo(omCurrentObj)($t5)
    /* 18C270 801DE220 3C18800E */  lui        $t8, %hi(D_800E1B50)
    /* 18C274 801DE224 3C0C801D */  lui        $t4, %hi(D_801C8080_ovl7)
    /* 18C278 801DE228 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 18C27C 801DE22C 258C8080 */  addiu      $t4, $t4, %lo(D_801C8080_ovl7)
    /* 18C280 801DE230 000E7880 */  sll        $t7, $t6, 2
    /* 18C284 801DE234 030FC021 */  addu       $t8, $t8, $t7
    /* 18C288 801DE238 8F181B50 */  lw         $t8, %lo(D_800E1B50)($t8)
    /* 18C28C 801DE23C 0C067CFC */  jal        func_8019F3F0_ovl7
    /* 18C290 801DE240 AF0C008C */   sw        $t4, 0x8C($t8)
    /* 18C294 801DE244 10000006 */  b          .L801DE260_ovl9
    /* 18C298 801DE248 00000000 */   nop
  .L801DE24C_ovl9:
    /* 18C29C 801DE24C 01074021 */  addu       $t0, $t0, $a3
  .L801DE250_ovl9:
    /* 18C2A0 801DE250 8D081B50 */  lw         $t0, %lo(D_800E1B50)($t0)
    /* 18C2A4 801DE254 27398080 */  addiu      $t9, $t9, %lo(D_801C8080_ovl7)
    /* 18C2A8 801DE258 0C067CFC */  jal        func_8019F3F0_ovl7
    /* 18C2AC 801DE25C AD19008C */   sw        $t9, 0x8C($t0)
  .L801DE260_ovl9:
    /* 18C2B0 801DE260 0C077751 */  jal        func_801DDD44_ovl9
    /* 18C2B4 801DE264 8FA40048 */   lw        $a0, 0x48($sp)
    /* 18C2B8 801DE268 0C077D15 */  jal        func_801DF454_ovl9
    /* 18C2BC 801DE26C 8FA40048 */   lw        $a0, 0x48($sp)
    /* 18C2C0 801DE270 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 18C2C4 801DE274 27BD0048 */  addiu      $sp, $sp, 0x48
    /* 18C2C8 801DE278 03E00008 */  jr         $ra
    /* 18C2CC 801DE27C 00000000 */   nop
endlabel func_801DDF9C_ovl9
.size func_801DDF9C_ovl9, . - func_801DDF9C_ovl9
