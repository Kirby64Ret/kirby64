nonmatching func_80164130_ovl3, 0x1F0

glabel func_80164130_ovl3
    /* C4B70 80164130 27BDFFD8 */  addiu      $sp, $sp, -0x28
    /* C4B74 80164134 AFB10018 */  sw         $s1, 0x18($sp)
    /* C4B78 80164138 3C118005 */  lui        $s1, %hi(omCurrentObj)
    /* C4B7C 8016413C 2631A7C4 */  addiu      $s1, $s1, %lo(omCurrentObj)
    /* C4B80 80164140 8E220000 */  lw         $v0, 0x0($s1)
    /* C4B84 80164144 AFBF001C */  sw         $ra, 0x1C($sp)
    /* C4B88 80164148 AFB00014 */  sw         $s0, 0x14($sp)
    /* C4B8C 8016414C AFA40028 */  sw         $a0, 0x28($sp)
    /* C4B90 80164150 8C4E0000 */  lw         $t6, 0x0($v0)
    /* C4B94 80164154 44802000 */  mtc1       $zero, $f4
    /* C4B98 80164158 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C4B9C 8016415C 000E7880 */  sll        $t7, $t6, 2
    /* C4BA0 80164160 002F0821 */  addu       $at, $at, $t7
    /* C4BA4 80164164 E42441D0 */  swc1       $f4, %lo(gEntitiesAngleYArray)($at)
    /* C4BA8 80164168 8C480000 */  lw         $t0, 0x0($v0)
    /* C4BAC 8016416C 3C18800E */  lui        $t8, %hi(D_800DFBD0)
    /* C4BB0 80164170 3C04800F */  lui        $a0, %hi(D_800EC2E0)
    /* C4BB4 80164174 00081880 */  sll        $v1, $t0, 2
    /* C4BB8 80164178 0303C021 */  addu       $t8, $t8, $v1
    /* C4BBC 8016417C 8F18FBD0 */  lw         $t8, %lo(D_800DFBD0)($t8)
    /* C4BC0 80164180 00832021 */  addu       $a0, $a0, $v1
    /* C4BC4 80164184 8C84C2E0 */  lw         $a0, %lo(D_800EC2E0)($a0)
    /* C4BC8 80164188 8F190004 */  lw         $t9, 0x4($t8)
    /* C4BCC 8016418C 24010005 */  addiu      $at, $zero, 0x5
    /* C4BD0 80164190 3C108019 */  lui        $s0, %hi(D_80193C40_ovl3)
    /* C4BD4 80164194 C7260044 */  lwc1       $f6, 0x44($t9)
    /* C4BD8 80164198 26103C40 */  addiu      $s0, $s0, %lo(D_80193C40_ovl3)
    /* C4BDC 8016419C 10810006 */  beq        $a0, $at, .L801641B8_ovl3
    /* C4BE0 801641A0 E7A60024 */   swc1      $f6, 0x24($sp)
    /* C4BE4 801641A4 24010020 */  addiu      $at, $zero, 0x20
    /* C4BE8 801641A8 10810009 */  beq        $a0, $at, .L801641D0_ovl3
    /* C4BEC 801641AC 3C108019 */   lui       $s0, %hi(D_80193C4C_ovl3)
    /* C4BF0 801641B0 1000000E */  b          .L801641EC_ovl3
    /* C4BF4 801641B4 3C108019 */   lui       $s0, %hi(D_80193C58_ovl3)
  .L801641B8_ovl3:
    /* C4BF8 801641B8 3C048019 */  lui        $a0, %hi(D_80191268_ovl3)
    /* C4BFC 801641BC 24841268 */  addiu      $a0, $a0, %lo(D_80191268_ovl3)
    /* C4C00 801641C0 0C044681 */  jal        func_80111A04
    /* C4C04 801641C4 01002825 */   or        $a1, $t0, $zero
    /* C4C08 801641C8 1000000E */  b          .L80164204_ovl3
    /* C4C0C 801641CC 00402025 */   or        $a0, $v0, $zero
  .L801641D0_ovl3:
    /* C4C10 801641D0 3C048019 */  lui        $a0, %hi(D_80191288_ovl3)
    /* C4C14 801641D4 26103C4C */  addiu      $s0, $s0, %lo(D_80193C4C_ovl3)
    /* C4C18 801641D8 24841288 */  addiu      $a0, $a0, %lo(D_80191288_ovl3)
    /* C4C1C 801641DC 0C044681 */  jal        func_80111A04
    /* C4C20 801641E0 01002825 */   or        $a1, $t0, $zero
    /* C4C24 801641E4 10000007 */  b          .L80164204_ovl3
    /* C4C28 801641E8 00402025 */   or        $a0, $v0, $zero
  .L801641EC_ovl3:
    /* C4C2C 801641EC 3C048019 */  lui        $a0, %hi(D_801912A8_ovl3)
    /* C4C30 801641F0 26103C58 */  addiu      $s0, $s0, %lo(D_80193C58_ovl3)
    /* C4C34 801641F4 248412A8 */  addiu      $a0, $a0, %lo(D_801912A8_ovl3)
    /* C4C38 801641F8 0C044681 */  jal        func_80111A04
    /* C4C3C 801641FC 01002825 */   or        $a1, $t0, $zero
    /* C4C40 80164200 00402025 */  or         $a0, $v0, $zero
  .L80164204_ovl3:
    /* C4C44 80164204 8C820020 */  lw         $v0, 0x20($a0)
    /* C4C48 80164208 C7AA0024 */  lwc1       $f10, 0x24($sp)
    /* C4C4C 8016420C 3C01800E */  lui        $at, %hi(gEntitiesNextPosXArray)
    /* C4C50 80164210 C4480018 */  lwc1       $f8, 0x18($v0)
    /* C4C54 80164214 460A4402 */  mul.s      $f16, $f8, $f10
    /* C4C58 80164218 E4500018 */  swc1       $f16, 0x18($v0)
    /* C4C5C 8016421C 8E290000 */  lw         $t1, 0x0($s1)
    /* C4C60 80164220 8C8C0020 */  lw         $t4, 0x20($a0)
    /* C4C64 80164224 8D2A0000 */  lw         $t2, 0x0($t1)
    /* C4C68 80164228 000A5880 */  sll        $t3, $t2, 2
    /* C4C6C 8016422C 002B0821 */  addu       $at, $at, $t3
    /* C4C70 80164230 C43225D0 */  lwc1       $f18, %lo(gEntitiesNextPosXArray)($at)
    /* C4C74 80164234 3C01800E */  lui        $at, %hi(gEntitiesNextPosYArray)
    /* C4C78 80164238 E592000C */  swc1       $f18, 0xC($t4)
    /* C4C7C 8016423C 8E2D0000 */  lw         $t5, 0x0($s1)
    /* C4C80 80164240 8C980020 */  lw         $t8, 0x20($a0)
    /* C4C84 80164244 8DAE0000 */  lw         $t6, 0x0($t5)
    /* C4C88 80164248 000E7880 */  sll        $t7, $t6, 2
    /* C4C8C 8016424C 002F0821 */  addu       $at, $at, $t7
    /* C4C90 80164250 C4242790 */  lwc1       $f4, %lo(gEntitiesNextPosYArray)($at)
    /* C4C94 80164254 3C01800E */  lui        $at, %hi(gEntitiesNextPosZArray)
    /* C4C98 80164258 E7040010 */  swc1       $f4, 0x10($t8)
    /* C4C9C 8016425C 8E390000 */  lw         $t9, 0x0($s1)
    /* C4CA0 80164260 8C8B0020 */  lw         $t3, 0x20($a0)
    /* C4CA4 80164264 8F290000 */  lw         $t1, 0x0($t9)
    /* C4CA8 80164268 00095080 */  sll        $t2, $t1, 2
    /* C4CAC 8016426C 002A0821 */  addu       $at, $at, $t2
    /* C4CB0 80164270 C4262950 */  lwc1       $f6, %lo(gEntitiesNextPosZArray)($at)
    /* C4CB4 80164274 0C044713 */  jal        func_80111C4C
    /* C4CB8 80164278 E5660014 */   swc1      $f6, 0x14($t3)
    /* C4CBC 8016427C 8E220000 */  lw         $v0, 0x0($s1)
    /* C4CC0 80164280 3C01800F */  lui        $at, %hi(D_800EA6E0)
    /* C4CC4 80164284 3C08800F */  lui        $t0, %hi(D_800E98E0)
    /* C4CC8 80164288 8C430000 */  lw         $v1, 0x0($v0)
    /* C4CCC 8016428C 3C048019 */  lui        $a0, %hi(D_80193B40_ovl3)
    /* C4CD0 80164290 24843B40 */  addiu      $a0, $a0, %lo(D_80193B40_ovl3)
    /* C4CD4 80164294 00031880 */  sll        $v1, $v1, 2
    /* C4CD8 80164298 00230821 */  addu       $at, $at, $v1
    /* C4CDC 8016429C C428A6E0 */  lwc1       $f8, %lo(D_800EA6E0)($at)
    /* C4CE0 801642A0 3C01800E */  lui        $at, %hi(gEntitiesAngleYArray)
    /* C4CE4 801642A4 00230821 */  addu       $at, $at, $v1
    /* C4CE8 801642A8 E42841D0 */  swc1       $f8, %lo(gEntitiesAngleYArray)($at)
    /* C4CEC 801642AC 8C4C0000 */  lw         $t4, 0x0($v0)
    /* C4CF0 801642B0 3C014040 */  lui        $at, (0x40400000 >> 16)
    /* C4CF4 801642B4 44818000 */  mtc1       $at, $f16
    /* C4CF8 801642B8 000C6880 */  sll        $t5, $t4, 2
    /* C4CFC 801642BC 010D4021 */  addu       $t0, $t0, $t5
    /* C4D00 801642C0 8D0598E0 */  lw         $a1, %lo(D_800E98E0)($t0)
    /* C4D04 801642C4 24060010 */  addiu      $a2, $zero, 0x10
    /* C4D08 801642C8 AE050008 */  sw         $a1, 0x8($s0)
    /* C4D0C 801642CC C7AA0024 */  lwc1       $f10, 0x24($sp)
    /* C4D10 801642D0 46105483 */  div.s      $f18, $f10, $f16
    /* C4D14 801642D4 44079000 */  mfc1       $a3, $f18
    /* C4D18 801642D8 0C05481C */  jal        func_80152070_ovl3
    /* C4D1C 801642DC 00000000 */   nop
    /* C4D20 801642E0 8E2E0000 */  lw         $t6, 0x0($s1)
    /* C4D24 801642E4 3C19801A */  lui        $t9, %hi(D_80198540_ovl3)
    /* C4D28 801642E8 27398540 */  addiu      $t9, $t9, %lo(D_80198540_ovl3)
    /* C4D2C 801642EC 8DC80000 */  lw         $t0, 0x0($t6)
    /* C4D30 801642F0 02002825 */  or         $a1, $s0, $zero
    /* C4D34 801642F4 00003025 */  or         $a2, $zero, $zero
    /* C4D38 801642F8 00087940 */  sll        $t7, $t0, 5
    /* C4D3C 801642FC 25F8F880 */  addiu      $t8, $t7, -0x780
    /* C4D40 80164300 03192021 */  addu       $a0, $t8, $t9
    /* C4D44 80164304 0C055754 */  jal        func_80155D50_ovl3
    /* C4D48 80164308 01003825 */   or        $a3, $t0, $zero
    /* C4D4C 8016430C 8FBF001C */  lw         $ra, 0x1C($sp)
    /* C4D50 80164310 8FB00014 */  lw         $s0, 0x14($sp)
    /* C4D54 80164314 8FB10018 */  lw         $s1, 0x18($sp)
    /* C4D58 80164318 03E00008 */  jr         $ra
    /* C4D5C 8016431C 27BD0028 */   addiu     $sp, $sp, 0x28
endlabel func_80164130_ovl3
.size func_80164130_ovl3, . - func_80164130_ovl3
