nonmatching func_801DF18C_ovl12, 0x208

glabel func_801DF18C_ovl12
    /* 1EF4CC 801DF18C 3C06800D */  lui        $a2, %hi(D_800D7098)
    /* 1EF4D0 801DF190 24C67098 */  addiu      $a2, $a2, %lo(D_800D7098)
    /* 1EF4D4 801DF194 8CCE0018 */  lw         $t6, 0x18($a2)
    /* 1EF4D8 801DF198 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1EF4DC 801DF19C 2401FFFF */  addiu      $at, $zero, -0x1
    /* 1EF4E0 801DF1A0 15C10019 */  bne        $t6, $at, .L801DF208_ovl12
    /* 1EF4E4 801DF1A4 AFBF0014 */   sw        $ra, 0x14($sp)
    /* 1EF4E8 801DF1A8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1EF4EC 801DF1AC 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1EF4F0 801DF1B0 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* 1EF4F4 801DF1B4 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* 1EF4F8 801DF1B8 8C580000 */  lw         $t8, 0x0($v0)
    /* 1EF4FC 801DF1BC 240F0006 */  addiu      $t7, $zero, 0x6
    /* 1EF500 801DF1C0 3C09800F */  lui        $t1, %hi(D_800EA360)
    /* 1EF504 801DF1C4 0018C880 */  sll        $t9, $t8, 2
    /* 1EF508 801DF1C8 00994021 */  addu       $t0, $a0, $t9
    /* 1EF50C 801DF1CC AD0F0000 */  sw         $t7, 0x0($t0)
    /* 1EF510 801DF1D0 8C430000 */  lw         $v1, 0x0($v0)
    /* 1EF514 801DF1D4 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF518 801DF1D8 00031880 */  sll        $v1, $v1, 2
    /* 1EF51C 801DF1DC 01234821 */  addu       $t1, $t1, $v1
    /* 1EF520 801DF1E0 8D29A360 */  lw         $t1, %lo(D_800EA360)($t1)
    /* 1EF524 801DF1E4 00835021 */  addu       $t2, $a0, $v1
    /* 1EF528 801DF1E8 55210067 */  bnel       $t1, $at, .L801DF388_ovl12
    /* 1EF52C 801DF1EC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EF530 801DF1F0 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 1EF534 801DF1F4 29610006 */  slti       $at, $t3, 0x6
    /* 1EF538 801DF1F8 54200063 */  bnel       $at, $zero, .L801DF388_ovl12
    /* 1EF53C 801DF1FC 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EF540 801DF200 10000060 */  b          .L801DF384_ovl12
    /* 1EF544 801DF204 ACC00008 */   sw        $zero, 0x8($a2)
  .L801DF208_ovl12:
    /* 1EF548 801DF208 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1EF54C 801DF20C 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1EF550 801DF210 3C0C800F */  lui        $t4, %hi(D_800E9720)
    /* 1EF554 801DF214 258C9720 */  addiu      $t4, $t4, %lo(D_800E9720)
    /* 1EF558 801DF218 8C430000 */  lw         $v1, 0x0($v0)
    /* 1EF55C 801DF21C 00031880 */  sll        $v1, $v1, 2
    /* 1EF560 801DF220 006C2021 */  addu       $a0, $v1, $t4
    /* 1EF564 801DF224 8C850000 */  lw         $a1, 0x0($a0)
    /* 1EF568 801DF228 10A00005 */  beqz       $a1, .L801DF240_ovl12
    /* 1EF56C 801DF22C 24ADFFFF */   addiu     $t5, $a1, -0x1
    /* 1EF570 801DF230 AC8D0000 */  sw         $t5, 0x0($a0)
    /* 1EF574 801DF234 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* 1EF578 801DF238 10000044 */  b          .L801DF34C_ovl12
    /* 1EF57C 801DF23C 24849560 */   addiu     $a0, $a0, %lo(D_800E9560)
  .L801DF240_ovl12:
    /* 1EF580 801DF240 3C0E800F */  lui        $t6, %hi(D_800EA360)
    /* 1EF584 801DF244 01C37021 */  addu       $t6, $t6, $v1
    /* 1EF588 801DF248 8DCEA360 */  lw         $t6, %lo(D_800EA360)($t6)
    /* 1EF58C 801DF24C 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF590 801DF250 55C10021 */  bnel       $t6, $at, .L801DF2D8_ovl12
    /* 1EF594 801DF254 8CC4001C */   lw        $a0, 0x1C($a2)
    /* 1EF598 801DF258 0C006291 */  jal        random_soft_s32_range
    /* 1EF59C 801DF25C 24040008 */   addiu     $a0, $zero, 0x8
    /* 1EF5A0 801DF260 3C06800D */  lui        $a2, %hi(D_800D7098)
    /* 1EF5A4 801DF264 28410005 */  slti       $at, $v0, 0x5
    /* 1EF5A8 801DF268 14200003 */  bnez       $at, .L801DF278_ovl12
    /* 1EF5AC 801DF26C 24C67098 */   addiu     $a2, $a2, %lo(D_800D7098)
    /* 1EF5B0 801DF270 10000002 */  b          .L801DF27C_ovl12
    /* 1EF5B4 801DF274 00001025 */   or        $v0, $zero, $zero
  .L801DF278_ovl12:
    /* 1EF5B8 801DF278 24020001 */  addiu      $v0, $zero, 0x1
  .L801DF27C_ovl12:
    /* 1EF5BC 801DF27C 10400012 */  beqz       $v0, .L801DF2C8_ovl12
    /* 1EF5C0 801DF280 3C028005 */   lui       $v0, %hi(omCurrentObj)
    /* 1EF5C4 801DF284 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 1EF5C8 801DF288 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* 1EF5CC 801DF28C 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* 1EF5D0 801DF290 8C580000 */  lw         $t8, 0x0($v0)
    /* 1EF5D4 801DF294 3C07800E */  lui        $a3, %hi(D_800E6A10)
    /* 1EF5D8 801DF298 24E76A10 */  addiu      $a3, $a3, %lo(D_800E6A10)
    /* 1EF5DC 801DF29C 0018C880 */  sll        $t9, $t8, 2
    /* 1EF5E0 801DF2A0 00B91821 */  addu       $v1, $a1, $t9
    /* 1EF5E4 801DF2A4 C4640000 */  lwc1       $f4, 0x0($v1)
    /* 1EF5E8 801DF2A8 46002187 */  neg.s      $f6, $f4
    /* 1EF5EC 801DF2AC E4660000 */  swc1       $f6, 0x0($v1)
    /* 1EF5F0 801DF2B0 8C4F0000 */  lw         $t7, 0x0($v0)
    /* 1EF5F4 801DF2B4 000F4080 */  sll        $t0, $t7, 2
    /* 1EF5F8 801DF2B8 00E82021 */  addu       $a0, $a3, $t0
    /* 1EF5FC 801DF2BC C4880000 */  lwc1       $f8, 0x0($a0)
    /* 1EF600 801DF2C0 46004287 */  neg.s      $f10, $f8
    /* 1EF604 801DF2C4 E48A0000 */  swc1       $f10, 0x0($a0)
  .L801DF2C8_ovl12:
    /* 1EF608 801DF2C8 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 1EF60C 801DF2CC 10000011 */  b          .L801DF314_ovl12
    /* 1EF610 801DF2D0 8C42A7C4 */   lw        $v0, %lo(omCurrentObj)($v0)
    /* 1EF614 801DF2D4 8CC4001C */  lw         $a0, 0x1C($a2)
  .L801DF2D8_ovl12:
    /* 1EF618 801DF2D8 3C07800E */  lui        $a3, %hi(D_800E6A10)
    /* 1EF61C 801DF2DC 24E76A10 */  addiu      $a3, $a3, %lo(D_800E6A10)
    /* 1EF620 801DF2E0 00042080 */  sll        $a0, $a0, 2
    /* 1EF624 801DF2E4 00E44821 */  addu       $t1, $a3, $a0
    /* 1EF628 801DF2E8 C5300000 */  lwc1       $f16, 0x0($t1)
    /* 1EF62C 801DF2EC 00E35021 */  addu       $t2, $a3, $v1
    /* 1EF630 801DF2F0 3C05800E */  lui        $a1, %hi(D_800E6690)
    /* 1EF634 801DF2F4 E5500000 */  swc1       $f16, 0x0($t2)
    /* 1EF638 801DF2F8 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 1EF63C 801DF2FC 24A56690 */  addiu      $a1, $a1, %lo(D_800E6690)
    /* 1EF640 801DF300 00A45821 */  addu       $t3, $a1, $a0
    /* 1EF644 801DF304 C5720000 */  lwc1       $f18, 0x0($t3)
    /* 1EF648 801DF308 000C6880 */  sll        $t5, $t4, 2
    /* 1EF64C 801DF30C 00AD7021 */  addu       $t6, $a1, $t5
    /* 1EF650 801DF310 E5D20000 */  swc1       $f18, 0x0($t6)
  .L801DF314_ovl12:
    /* 1EF654 801DF314 8C590000 */  lw         $t9, 0x0($v0)
    /* 1EF658 801DF318 3C01800F */  lui        $at, %hi(D_800E9720)
    /* 1EF65C 801DF31C 2418003C */  addiu      $t8, $zero, 0x3C
    /* 1EF660 801DF320 00197880 */  sll        $t7, $t9, 2
    /* 1EF664 801DF324 002F0821 */  addu       $at, $at, $t7
    /* 1EF668 801DF328 AC389720 */  sw         $t8, %lo(D_800E9720)($at)
    /* 1EF66C 801DF32C 8C480000 */  lw         $t0, 0x0($v0)
    /* 1EF670 801DF330 3C04800F */  lui        $a0, %hi(D_800E9560)
    /* 1EF674 801DF334 24849560 */  addiu      $a0, $a0, %lo(D_800E9560)
    /* 1EF678 801DF338 00084880 */  sll        $t1, $t0, 2
    /* 1EF67C 801DF33C 00891821 */  addu       $v1, $a0, $t1
    /* 1EF680 801DF340 8C6A0000 */  lw         $t2, 0x0($v1)
    /* 1EF684 801DF344 254B0001 */  addiu      $t3, $t2, 0x1
    /* 1EF688 801DF348 AC6B0000 */  sw         $t3, 0x0($v1)
  .L801DF34C_ovl12:
    /* 1EF68C 801DF34C 8C430000 */  lw         $v1, 0x0($v0)
    /* 1EF690 801DF350 3C0C800F */  lui        $t4, %hi(D_800EA360)
    /* 1EF694 801DF354 24010001 */  addiu      $at, $zero, 0x1
    /* 1EF698 801DF358 00031880 */  sll        $v1, $v1, 2
    /* 1EF69C 801DF35C 01836021 */  addu       $t4, $t4, $v1
    /* 1EF6A0 801DF360 8D8CA360 */  lw         $t4, %lo(D_800EA360)($t4)
    /* 1EF6A4 801DF364 00836821 */  addu       $t5, $a0, $v1
    /* 1EF6A8 801DF368 55810007 */  bnel       $t4, $at, .L801DF388_ovl12
    /* 1EF6AC 801DF36C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EF6B0 801DF370 8DAE0000 */  lw         $t6, 0x0($t5)
    /* 1EF6B4 801DF374 29C10006 */  slti       $at, $t6, 0x6
    /* 1EF6B8 801DF378 54200003 */  bnel       $at, $zero, .L801DF388_ovl12
    /* 1EF6BC 801DF37C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 1EF6C0 801DF380 ACC00008 */  sw         $zero, 0x8($a2)
  .L801DF384_ovl12:
    /* 1EF6C4 801DF384 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801DF388_ovl12:
    /* 1EF6C8 801DF388 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 1EF6CC 801DF38C 03E00008 */  jr         $ra
    /* 1EF6D0 801DF390 00000000 */   nop
endlabel func_801DF18C_ovl12
.size func_801DF18C_ovl12, . - func_801DF18C_ovl12
