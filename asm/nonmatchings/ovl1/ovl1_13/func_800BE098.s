nonmatching func_800BE098, 0x288

glabel func_800BE098
    /* 662E8 800BE098 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* 662EC 800BE09C 240E0002 */  addiu      $t6, $zero, 0x2
    /* 662F0 800BE0A0 3C01800F */  lui        $at, %hi(D_800F4D18)
    /* 662F4 800BE0A4 3C08800F */  lui        $t0, %hi(D_800F6170)
    /* 662F8 800BE0A8 3C09800F */  lui        $t1, %hi(D_800F4D48)
    /* 662FC 800BE0AC 3C0A800F */  lui        $t2, %hi(D_800F4D20)
    /* 66300 800BE0B0 3C0B800F */  lui        $t3, %hi(D_800F5770)
    /* 66304 800BE0B4 3C07800F */  lui        $a3, %hi(D_800F4D70)
    /* 66308 800BE0B8 3C0C800F */  lui        $t4, %hi(D_800F5770)
    /* 6630C 800BE0BC 3C04FFFE */  lui        $a0, (0xFFFE7961 >> 16)
    /* 66310 800BE0C0 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 66314 800BE0C4 AC2E4D18 */  sw         $t6, %lo(D_800F4D18)($at)
    /* 66318 800BE0C8 34847961 */  ori        $a0, $a0, (0xFFFE7961 & 0xFFFF)
    /* 6631C 800BE0CC 258C5770 */  addiu      $t4, $t4, %lo(D_800F5770)
    /* 66320 800BE0D0 24E74D70 */  addiu      $a3, $a3, %lo(D_800F4D70)
    /* 66324 800BE0D4 256B5770 */  addiu      $t3, $t3, %lo(D_800F5770)
    /* 66328 800BE0D8 254A4D20 */  addiu      $t2, $t2, %lo(D_800F4D20)
    /* 6632C 800BE0DC 25294D48 */  addiu      $t1, $t1, %lo(D_800F4D48)
    /* 66330 800BE0E0 25086170 */  addiu      $t0, $t0, %lo(D_800F6170)
    /* 66334 800BE0E4 24060040 */  addiu      $a2, $zero, 0x40
  .L800BE0E8:
    /* 66338 800BE0E8 AD000000 */  sw         $zero, 0x0($t0)
    /* 6633C 800BE0EC AD200000 */  sw         $zero, 0x0($t1)
    /* 66340 800BE0F0 AD400000 */  sw         $zero, 0x0($t2)
    /* 66344 800BE0F4 00002825 */  or         $a1, $zero, $zero
    /* 66348 800BE0F8 01601025 */  or         $v0, $t3, $zero
    /* 6634C 800BE0FC 00E01825 */  or         $v1, $a3, $zero
  .L800BE100:
    /* 66350 800BE100 24A50004 */  addiu      $a1, $a1, 0x4
    /* 66354 800BE104 AC440000 */  sw         $a0, 0x0($v0)
    /* 66358 800BE108 AC600000 */  sw         $zero, 0x0($v1)
    /* 6635C 800BE10C AC440004 */  sw         $a0, 0x4($v0)
    /* 66360 800BE110 AC600004 */  sw         $zero, 0x4($v1)
    /* 66364 800BE114 AC440008 */  sw         $a0, 0x8($v0)
    /* 66368 800BE118 AC600008 */  sw         $zero, 0x8($v1)
    /* 6636C 800BE11C AC44000C */  sw         $a0, 0xC($v0)
    /* 66370 800BE120 AC60000C */  sw         $zero, 0xC($v1)
    /* 66374 800BE124 24420010 */  addiu      $v0, $v0, 0x10
    /* 66378 800BE128 14A6FFF5 */  bne        $a1, $a2, .L800BE100
    /* 6637C 800BE12C 24630010 */   addiu     $v1, $v1, 0x10
    /* 66380 800BE130 24E70100 */  addiu      $a3, $a3, 0x100
    /* 66384 800BE134 25080004 */  addiu      $t0, $t0, 0x4
    /* 66388 800BE138 25290004 */  addiu      $t1, $t1, 0x4
    /* 6638C 800BE13C 254A0004 */  addiu      $t2, $t2, 0x4
    /* 66390 800BE140 14ECFFE9 */  bne        $a3, $t4, .L800BE0E8
    /* 66394 800BE144 256B0100 */   addiu     $t3, $t3, 0x100
    /* 66398 800BE148 24040026 */  addiu      $a0, $zero, 0x26
    /* 6639C 800BE14C 2405004A */  addiu      $a1, $zero, 0x4A
    /* 663A0 800BE150 0C02BB1C */  jal        request_track_3
    /* 663A4 800BE154 24060050 */   addiu     $a2, $zero, 0x50
    /* 663A8 800BE158 0C03E158 */  jal        func_800F8560
    /* 663AC 800BE15C AFA20018 */   sw        $v0, 0x18($sp)
    /* 663B0 800BE160 24010009 */  addiu      $at, $zero, 0x9
    /* 663B4 800BE164 1041000D */  beq        $v0, $at, .L800BE19C
    /* 663B8 800BE168 3C04800D */   lui       $a0, %hi(D_800D5310)
    /* 663BC 800BE16C 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 663C0 800BE170 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 663C4 800BE174 3C04800D */  lui        $a0, %hi(D_800D5310)
    /* 663C8 800BE178 24845310 */  addiu      $a0, $a0, %lo(D_800D5310)
    /* 663CC 800BE17C 00A00821 */  addu       $at, $a1, $zero
    /* 663D0 800BE180 00052880 */  sll        $a1, $a1, 2
    /* 663D4 800BE184 00A12821 */  addu       $a1, $a1, $at
    /* 663D8 800BE188 00052840 */  sll        $a1, $a1, 1
    /* 663DC 800BE18C 0C02F7EE */  jal        func_800BDFB8
    /* 663E0 800BE190 24060008 */   addiu     $a2, $zero, 0x8
    /* 663E4 800BE194 1000000F */  b          .L800BE1D4
    /* 663E8 800BE198 00000000 */   nop
  .L800BE19C:
    /* 663EC 800BE19C 3C02800D */  lui        $v0, %hi(D_800D6E54)
    /* 663F0 800BE1A0 24426E54 */  addiu      $v0, $v0, %lo(D_800D6E54)
    /* 663F4 800BE1A4 AC400000 */  sw         $zero, 0x0($v0)
    /* 663F8 800BE1A8 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 663FC 800BE1AC 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 66400 800BE1B0 3C01800D */  lui        $at, %hi(D_800D6E90)
    /* 66404 800BE1B4 AC206E90 */  sw         $zero, %lo(D_800D6E90)($at)
    /* 66408 800BE1B8 00A00821 */  addu       $at, $a1, $zero
    /* 6640C 800BE1BC 00052880 */  sll        $a1, $a1, 2
    /* 66410 800BE1C0 00A12821 */  addu       $a1, $a1, $at
    /* 66414 800BE1C4 00052840 */  sll        $a1, $a1, 1
    /* 66418 800BE1C8 24845310 */  addiu      $a0, $a0, %lo(D_800D5310)
    /* 6641C 800BE1CC 0C02F7EE */  jal        func_800BDFB8
    /* 66420 800BE1D0 2406000A */   addiu     $a2, $zero, 0xA
  .L800BE1D4:
    /* 66424 800BE1D4 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 66428 800BE1D8 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 6642C 800BE1DC 3C04800D */  lui        $a0, %hi(D_800D53DC)
    /* 66430 800BE1E0 248453DC */  addiu      $a0, $a0, %lo(D_800D53DC)
    /* 66434 800BE1E4 24060002 */  addiu      $a2, $zero, 0x2
    /* 66438 800BE1E8 0C02F7EE */  jal        func_800BDFB8
    /* 6643C 800BE1EC 00052840 */   sll       $a1, $a1, 1
    /* 66440 800BE1F0 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 66444 800BE1F4 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 66448 800BE1F8 3C04800D */  lui        $a0, %hi(D_800D5408)
    /* 6644C 800BE1FC 24845408 */  addiu      $a0, $a0, %lo(D_800D5408)
    /* 66450 800BE200 24060002 */  addiu      $a2, $zero, 0x2
    /* 66454 800BE204 0C02F7EE */  jal        func_800BDFB8
    /* 66458 800BE208 00052840 */   sll       $a1, $a1, 1
    /* 6645C 800BE20C 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 66460 800BE210 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 66464 800BE214 3C04800D */  lui        $a0, %hi(D_800D5434)
    /* 66468 800BE218 24845434 */  addiu      $a0, $a0, %lo(D_800D5434)
    /* 6646C 800BE21C 24060002 */  addiu      $a2, $zero, 0x2
    /* 66470 800BE220 0C02F7EE */  jal        func_800BDFB8
    /* 66474 800BE224 00052840 */   sll       $a1, $a1, 1
    /* 66478 800BE228 3C05800D */  lui        $a1, %hi(saveHUDTheme)
    /* 6647C 800BE22C 8CA56BB0 */  lw         $a1, %lo(saveHUDTheme)($a1)
    /* 66480 800BE230 3C04800D */  lui        $a0, %hi(D_800D5460)
    /* 66484 800BE234 24845460 */  addiu      $a0, $a0, %lo(D_800D5460)
    /* 66488 800BE238 00A00821 */  addu       $at, $a1, $zero
    /* 6648C 800BE23C 00052880 */  sll        $a1, $a1, 2
    /* 66490 800BE240 00A12821 */  addu       $a1, $a1, $at
    /* 66494 800BE244 00052840 */  sll        $a1, $a1, 1
    /* 66498 800BE248 0C02F7EE */  jal        func_800BDFB8
    /* 6649C 800BE24C 2406000A */   addiu     $a2, $zero, 0xA
    /* 664A0 800BE250 3C07800F */  lui        $a3, %hi(D_800ED500)
    /* 664A4 800BE254 3C040005 */  lui        $a0, (0x50001 >> 16)
    /* 664A8 800BE258 24E7D500 */  addiu      $a3, $a3, %lo(D_800ED500)
    /* 664AC 800BE25C 34840001 */  ori        $a0, $a0, (0x50001 & 0xFFFF)
    /* 664B0 800BE260 00002825 */  or         $a1, $zero, $zero
    /* 664B4 800BE264 0C02A24D */  jal        func_800A8934
    /* 664B8 800BE268 24060010 */   addiu     $a2, $zero, 0x10
    /* 664BC 800BE26C 3C07800F */  lui        $a3, %hi(D_800ED500)
    /* 664C0 800BE270 24E7D500 */  addiu      $a3, $a3, %lo(D_800ED500)
    /* 664C4 800BE274 8CF80008 */  lw         $t8, 0x8($a3)
    /* 664C8 800BE278 8CED000C */  lw         $t5, 0xC($a3)
    /* 664CC 800BE27C 3C03800F */  lui        $v1, %hi(D_800ED510)
    /* 664D0 800BE280 2463D510 */  addiu      $v1, $v1, %lo(D_800ED510)
    /* 664D4 800BE284 3C08800F */  lui        $t0, %hi(D_800F6198)
    /* 664D8 800BE288 25086198 */  addiu      $t0, $t0, %lo(D_800F6198)
    /* 664DC 800BE28C 0303C821 */  addu       $t9, $t8, $v1
    /* 664E0 800BE290 01A37021 */  addu       $t6, $t5, $v1
    /* 664E4 800BE294 ACF90008 */  sw         $t9, 0x8($a3)
    /* 664E8 800BE298 ACEE000C */  sw         $t6, 0xC($a3)
    /* 664EC 800BE29C AD000000 */  sw         $zero, 0x0($t0)
    /* 664F0 800BE2A0 3C04800D */  lui        $a0, %hi(D_800D6F3C)
    /* 664F4 800BE2A4 8C846F3C */  lw         $a0, %lo(D_800D6F3C)($a0)
    /* 664F8 800BE2A8 3C01800D */  lui        $at, %hi(D_800D6EC4)
    /* 664FC 800BE2AC AC206EC4 */  sw         $zero, %lo(D_800D6EC4)($at)
    /* 66500 800BE2B0 24010004 */  addiu      $at, $zero, 0x4
    /* 66504 800BE2B4 10810004 */  beq        $a0, $at, .L800BE2C8
    /* 66508 800BE2B8 240F0001 */   addiu     $t7, $zero, 0x1
    /* 6650C 800BE2BC 24010003 */  addiu      $at, $zero, 0x3
    /* 66510 800BE2C0 1481000B */  bne        $a0, $at, .L800BE2F0
    /* 66514 800BE2C4 00000000 */   nop
  .L800BE2C8:
    /* 66518 800BE2C8 AD0F0000 */  sw         $t7, 0x0($t0)
    /* 6651C 800BE2CC 2404002D */  addiu      $a0, $zero, 0x2D
    /* 66520 800BE2D0 2405004A */  addiu      $a1, $zero, 0x4A
    /* 66524 800BE2D4 0C02BA99 */  jal        func_800AEA64
    /* 66528 800BE2D8 24060050 */   addiu     $a2, $zero, 0x50
    /* 6652C 800BE2DC 0002C080 */  sll        $t8, $v0, 2
    /* 66530 800BE2E0 3C01800F */  lui        $at, %hi(D_800E98E0)
    /* 66534 800BE2E4 00380821 */  addu       $at, $at, $t8
    /* 66538 800BE2E8 AFA20018 */  sw         $v0, 0x18($sp)
    /* 6653C 800BE2EC AC2098E0 */  sw         $zero, %lo(D_800E98E0)($at)
  .L800BE2F0:
    /* 66540 800BE2F0 0C02F7CB */  jal        func_800BDF2C
    /* 66544 800BE2F4 00000000 */   nop
    /* 66548 800BE2F8 0C02F783 */  jal        func_800BDE0C
    /* 6654C 800BE2FC 00002025 */   or        $a0, $zero, $zero
    /* 66550 800BE300 3C04800C */  lui        $a0, %hi(func_800BDE0C)
    /* 66554 800BE304 0C000ADF */  jal        scSetPostProcessFunc
    /* 66558 800BE308 2484DE0C */   addiu     $a0, $a0, %lo(func_800BDE0C)
    /* 6655C 800BE30C 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 66560 800BE310 8FA20018 */  lw         $v0, 0x18($sp)
    /* 66564 800BE314 27BD0028 */  addiu      $sp, $sp, 0x28
    /* 66568 800BE318 03E00008 */  jr         $ra
    /* 6656C 800BE31C 00000000 */   nop
endlabel func_800BE098
.size func_800BE098, . - func_800BE098
