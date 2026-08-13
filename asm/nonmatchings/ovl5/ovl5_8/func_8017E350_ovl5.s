nonmatching func_8017E350_ovl5, 0x2FC

glabel func_8017E350_ovl5
    /* 1257C0 8017E350 3C0E8019 */  lui        $t6, %hi(D_8018EDB0_ovl5)
    /* 1257C4 8017E354 91CEEDB0 */  lbu        $t6, %lo(D_8018EDB0_ovl5)($t6)
    /* 1257C8 8017E358 27BDFFE8 */  addiu      $sp, $sp, -0x18
    /* 1257CC 8017E35C AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1257D0 8017E360 15C000B6 */  bnez       $t6, .L8017E63C_ovl5
    /* 1257D4 8017E364 AFA40018 */   sw        $a0, 0x18($sp)
    /* 1257D8 8017E368 3C058005 */  lui        $a1, %hi(omCurrentObj)
    /* 1257DC 8017E36C 8CA5A7C4 */  lw         $a1, %lo(omCurrentObj)($a1)
    /* 1257E0 8017E370 3C0F800F */  lui        $t7, %hi(D_800E98E0)
    /* 1257E4 8017E374 25EF98E0 */  addiu      $t7, $t7, %lo(D_800E98E0)
    /* 1257E8 8017E378 8CA30000 */  lw         $v1, 0x0($a1)
    /* 1257EC 8017E37C 00031880 */  sll        $v1, $v1, 2
    /* 1257F0 8017E380 006F1021 */  addu       $v0, $v1, $t7
    /* 1257F4 8017E384 8C440000 */  lw         $a0, 0x0($v0)
    /* 1257F8 8017E388 10800003 */  beqz       $a0, .L8017E398_ovl5
    /* 1257FC 8017E38C 2498FFFF */   addiu     $t8, $a0, -0x1
    /* 125800 8017E390 100000AA */  b          .L8017E63C_ovl5
    /* 125804 8017E394 AC580000 */   sw        $t8, 0x0($v0)
  .L8017E398_ovl5:
    /* 125808 8017E398 3C028005 */  lui        $v0, %hi(gPlayerControllers)
    /* 12580C 8017E39C 24428F20 */  addiu      $v0, $v0, %lo(gPlayerControllers)
    /* 125810 8017E3A0 94590002 */  lhu        $t9, 0x2($v0)
    /* 125814 8017E3A4 3328D000 */  andi       $t0, $t9, 0xD000
    /* 125818 8017E3A8 51000008 */  beql       $t0, $zero, .L8017E3CC_ovl5
    /* 12581C 8017E3AC 94440000 */   lhu       $a0, 0x0($v0)
    /* 125820 8017E3B0 0C029D9E */  jal        play_sound
    /* 125824 8017E3B4 2404002B */   addiu     $a0, $zero, 0x2B
    /* 125828 8017E3B8 24090001 */  addiu      $t1, $zero, 0x1
    /* 12582C 8017E3BC 3C018019 */  lui        $at, %hi(D_8018EDB0_ovl5)
    /* 125830 8017E3C0 1000009E */  b          .L8017E63C_ovl5
    /* 125834 8017E3C4 A029EDB0 */   sb        $t1, %lo(D_8018EDB0_ovl5)($at)
    /* 125838 8017E3C8 94440000 */  lhu        $a0, 0x0($v0)
  .L8017E3CC_ovl5:
    /* 12583C 8017E3CC 3C0B800F */  lui        $t3, %hi(D_800E9C60)
    /* 125840 8017E3D0 256B9C60 */  addiu      $t3, $t3, %lo(D_800E9C60)
    /* 125844 8017E3D4 308A0F00 */  andi       $t2, $a0, 0xF00
    /* 125848 8017E3D8 11400005 */  beqz       $t2, .L8017E3F0_ovl5
    /* 12584C 8017E3DC 006B1021 */   addu      $v0, $v1, $t3
    /* 125850 8017E3E0 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 125854 8017E3E4 258D0001 */  addiu      $t5, $t4, 0x1
    /* 125858 8017E3E8 10000009 */  b          .L8017E410_ovl5
    /* 12585C 8017E3EC AC4D0000 */   sw        $t5, 0x0($v0)
  .L8017E3F0_ovl5:
    /* 125860 8017E3F0 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 125864 8017E3F4 00230821 */  addu       $at, $at, $v1
    /* 125868 8017E3F8 AC209AA0 */  sw         $zero, %lo(D_800E9AA0)($at)
    /* 12586C 8017E3FC 8CAE0000 */  lw         $t6, 0x0($a1)
    /* 125870 8017E400 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 125874 8017E404 000E7880 */  sll        $t7, $t6, 2
    /* 125878 8017E408 002F0821 */  addu       $at, $at, $t7
    /* 12587C 8017E40C AC209C60 */  sw         $zero, %lo(D_800E9C60)($at)
  .L8017E410_ovl5:
    /* 125880 8017E410 8CB80000 */  lw         $t8, 0x0($a1)
    /* 125884 8017E414 3C08800F */  lui        $t0, %hi(D_800E9AA0)
    /* 125888 8017E418 25089AA0 */  addiu      $t0, $t0, %lo(D_800E9AA0)
    /* 12588C 8017E41C 0018C880 */  sll        $t9, $t8, 2
    /* 125890 8017E420 03281021 */  addu       $v0, $t9, $t0
    /* 125894 8017E424 8C430000 */  lw         $v1, 0x0($v0)
    /* 125898 8017E428 10600003 */  beqz       $v1, .L8017E438_ovl5
    /* 12589C 8017E42C 2469FFFF */   addiu     $t1, $v1, -0x1
    /* 1258A0 8017E430 10000082 */  b          .L8017E63C_ovl5
    /* 1258A4 8017E434 AC490000 */   sw        $t1, 0x0($v0)
  .L8017E438_ovl5:
    /* 1258A8 8017E438 308A0800 */  andi       $t2, $a0, 0x800
    /* 1258AC 8017E43C 51400016 */  beql       $t2, $zero, .L8017E498_ovl5
    /* 1258B0 8017E440 30990400 */   andi      $t9, $a0, 0x400
    /* 1258B4 8017E444 0C029D9E */  jal        play_sound
    /* 1258B8 8017E448 24040113 */   addiu     $a0, $zero, 0x113
    /* 1258BC 8017E44C 3C028019 */  lui        $v0, %hi(D_8018EDB8_ovl5)
    /* 1258C0 8017E450 2442EDB8 */  addiu      $v0, $v0, %lo(D_8018EDB8_ovl5)
    /* 1258C4 8017E454 904B0000 */  lbu        $t3, 0x0($v0)
    /* 1258C8 8017E458 240C0001 */  addiu      $t4, $zero, 0x1
    /* 1258CC 8017E45C 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1258D0 8017E460 55600004 */  bnel       $t3, $zero, .L8017E474_ovl5
    /* 1258D4 8017E464 A0400000 */   sb        $zero, 0x0($v0)
    /* 1258D8 8017E468 10000002 */  b          .L8017E474_ovl5
    /* 1258DC 8017E46C A04C0000 */   sb        $t4, 0x0($v0)
    /* 1258E0 8017E470 A0400000 */  sb         $zero, 0x0($v0)
  .L8017E474_ovl5:
    /* 1258E4 8017E474 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1258E8 8017E478 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 1258EC 8017E47C 240D0005 */  addiu      $t5, $zero, 0x5
    /* 1258F0 8017E480 8DCF0000 */  lw         $t7, 0x0($t6)
    /* 1258F4 8017E484 000FC080 */  sll        $t8, $t7, 2
    /* 1258F8 8017E488 00380821 */  addu       $at, $at, $t8
    /* 1258FC 8017E48C 1000006B */  b          .L8017E63C_ovl5
    /* 125900 8017E490 AC2D9AA0 */   sw        $t5, %lo(D_800E9AA0)($at)
    /* 125904 8017E494 30990400 */  andi       $t9, $a0, 0x400
  .L8017E498_ovl5:
    /* 125908 8017E498 13200015 */  beqz       $t9, .L8017E4F0_ovl5
    /* 12590C 8017E49C 308F0100 */   andi      $t7, $a0, 0x100
    /* 125910 8017E4A0 0C029D9E */  jal        play_sound
    /* 125914 8017E4A4 24040113 */   addiu     $a0, $zero, 0x113
    /* 125918 8017E4A8 3C028019 */  lui        $v0, %hi(D_8018EDB8_ovl5)
    /* 12591C 8017E4AC 2442EDB8 */  addiu      $v0, $v0, %lo(D_8018EDB8_ovl5)
    /* 125920 8017E4B0 90480000 */  lbu        $t0, 0x0($v0)
    /* 125924 8017E4B4 24090001 */  addiu      $t1, $zero, 0x1
    /* 125928 8017E4B8 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 12592C 8017E4BC 55000004 */  bnel       $t0, $zero, .L8017E4D0_ovl5
    /* 125930 8017E4C0 A0400000 */   sb        $zero, 0x0($v0)
    /* 125934 8017E4C4 10000002 */  b          .L8017E4D0_ovl5
    /* 125938 8017E4C8 A0490000 */   sb        $t1, 0x0($v0)
    /* 12593C 8017E4CC A0400000 */  sb         $zero, 0x0($v0)
  .L8017E4D0_ovl5:
    /* 125940 8017E4D0 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 125944 8017E4D4 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 125948 8017E4D8 240A0005 */  addiu      $t2, $zero, 0x5
    /* 12594C 8017E4DC 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 125950 8017E4E0 000C7080 */  sll        $t6, $t4, 2
    /* 125954 8017E4E4 002E0821 */  addu       $at, $at, $t6
    /* 125958 8017E4E8 10000054 */  b          .L8017E63C_ovl5
    /* 12595C 8017E4EC AC2A9AA0 */   sw        $t2, %lo(D_800E9AA0)($at)
  .L8017E4F0_ovl5:
    /* 125960 8017E4F0 11E00029 */  beqz       $t7, .L8017E598_ovl5
    /* 125964 8017E4F4 308E0200 */   andi      $t6, $a0, 0x200
    /* 125968 8017E4F8 0C029D9E */  jal        play_sound
    /* 12596C 8017E4FC 24040113 */   addiu     $a0, $zero, 0x113
    /* 125970 8017E500 3C028019 */  lui        $v0, %hi(D_8018EDB8_ovl5)
    /* 125974 8017E504 2442EDB8 */  addiu      $v0, $v0, %lo(D_8018EDB8_ovl5)
    /* 125978 8017E508 904D0000 */  lbu        $t5, 0x0($v0)
    /* 12597C 8017E50C 3C038019 */  lui        $v1, %hi(D_8018EDBA_ovl5)
    /* 125980 8017E510 3C028019 */  lui        $v0, %hi(D_8018EDB9_ovl5)
    /* 125984 8017E514 15A0000E */  bnez       $t5, .L8017E550_ovl5
    /* 125988 8017E518 2463EDBA */   addiu     $v1, $v1, %lo(D_8018EDBA_ovl5)
    /* 12598C 8017E51C 2442EDB9 */  addiu      $v0, $v0, %lo(D_8018EDB9_ovl5)
    /* 125990 8017E520 90580000 */  lbu        $t8, 0x0($v0)
    /* 125994 8017E524 24010001 */  addiu      $at, $zero, 0x1
    /* 125998 8017E528 24190001 */  addiu      $t9, $zero, 0x1
    /* 12599C 8017E52C 57010004 */  bnel       $t8, $at, .L8017E540_ovl5
    /* 1259A0 8017E530 A0590000 */   sb        $t9, 0x0($v0)
    /* 1259A4 8017E534 10000002 */  b          .L8017E540_ovl5
    /* 1259A8 8017E538 A0400000 */   sb        $zero, 0x0($v0)
    /* 1259AC 8017E53C A0590000 */  sb         $t9, 0x0($v0)
  .L8017E540_ovl5:
    /* 1259B0 8017E540 0C05F887 */  jal        func_8017E21C_ovl5
    /* 1259B4 8017E544 90440000 */   lbu       $a0, 0x0($v0)
    /* 1259B8 8017E548 1000000A */  b          .L8017E574_ovl5
    /* 1259BC 8017E54C 00000000 */   nop
  .L8017E550_ovl5:
    /* 1259C0 8017E550 90620000 */  lbu        $v0, 0x0($v1)
    /* 1259C4 8017E554 24010004 */  addiu      $at, $zero, 0x4
    /* 1259C8 8017E558 14410003 */  bne        $v0, $at, .L8017E568_ovl5
    /* 1259CC 8017E55C 24480001 */   addiu     $t0, $v0, 0x1
    /* 1259D0 8017E560 10000002 */  b          .L8017E56C_ovl5
    /* 1259D4 8017E564 A0600000 */   sb        $zero, 0x0($v1)
  .L8017E568_ovl5:
    /* 1259D8 8017E568 A0680000 */  sb         $t0, 0x0($v1)
  .L8017E56C_ovl5:
    /* 1259DC 8017E56C 0C05F89D */  jal        func_8017E274_ovl5
    /* 1259E0 8017E570 90640000 */   lbu       $a0, 0x0($v1)
  .L8017E574_ovl5:
    /* 1259E4 8017E574 3C0B8005 */  lui        $t3, %hi(omCurrentObj)
    /* 1259E8 8017E578 8D6BA7C4 */  lw         $t3, %lo(omCurrentObj)($t3)
    /* 1259EC 8017E57C 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 1259F0 8017E580 24090005 */  addiu      $t1, $zero, 0x5
    /* 1259F4 8017E584 8D6C0000 */  lw         $t4, 0x0($t3)
    /* 1259F8 8017E588 000C5080 */  sll        $t2, $t4, 2
    /* 1259FC 8017E58C 002A0821 */  addu       $at, $at, $t2
    /* 125A00 8017E590 1000002A */  b          .L8017E63C_ovl5
    /* 125A04 8017E594 AC299AA0 */   sw        $t1, %lo(D_800E9AA0)($at)
  .L8017E598_ovl5:
    /* 125A08 8017E598 51C00029 */  beql       $t6, $zero, .L8017E640_ovl5
    /* 125A0C 8017E59C 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 125A10 8017E5A0 0C029D9E */  jal        play_sound
    /* 125A14 8017E5A4 24040113 */   addiu     $a0, $zero, 0x113
    /* 125A18 8017E5A8 3C028019 */  lui        $v0, %hi(D_8018EDB8_ovl5)
    /* 125A1C 8017E5AC 2442EDB8 */  addiu      $v0, $v0, %lo(D_8018EDB8_ovl5)
    /* 125A20 8017E5B0 904F0000 */  lbu        $t7, 0x0($v0)
    /* 125A24 8017E5B4 3C038019 */  lui        $v1, %hi(D_8018EDBA_ovl5)
    /* 125A28 8017E5B8 3C028019 */  lui        $v0, %hi(D_8018EDB9_ovl5)
    /* 125A2C 8017E5BC 15E0000E */  bnez       $t7, .L8017E5F8_ovl5
    /* 125A30 8017E5C0 2463EDBA */   addiu     $v1, $v1, %lo(D_8018EDBA_ovl5)
    /* 125A34 8017E5C4 2442EDB9 */  addiu      $v0, $v0, %lo(D_8018EDB9_ovl5)
    /* 125A38 8017E5C8 904D0000 */  lbu        $t5, 0x0($v0)
    /* 125A3C 8017E5CC 24010001 */  addiu      $at, $zero, 0x1
    /* 125A40 8017E5D0 24180001 */  addiu      $t8, $zero, 0x1
    /* 125A44 8017E5D4 55A10004 */  bnel       $t5, $at, .L8017E5E8_ovl5
    /* 125A48 8017E5D8 A0580000 */   sb        $t8, 0x0($v0)
    /* 125A4C 8017E5DC 10000002 */  b          .L8017E5E8_ovl5
    /* 125A50 8017E5E0 A0400000 */   sb        $zero, 0x0($v0)
    /* 125A54 8017E5E4 A0580000 */  sb         $t8, 0x0($v0)
  .L8017E5E8_ovl5:
    /* 125A58 8017E5E8 0C05F887 */  jal        func_8017E21C_ovl5
    /* 125A5C 8017E5EC 90440000 */   lbu       $a0, 0x0($v0)
    /* 125A60 8017E5F0 1000000A */  b          .L8017E61C_ovl5
    /* 125A64 8017E5F4 00000000 */   nop
  .L8017E5F8_ovl5:
    /* 125A68 8017E5F8 90620000 */  lbu        $v0, 0x0($v1)
    /* 125A6C 8017E5FC 24190004 */  addiu      $t9, $zero, 0x4
    /* 125A70 8017E600 14400003 */  bnez       $v0, .L8017E610_ovl5
    /* 125A74 8017E604 2448FFFF */   addiu     $t0, $v0, -0x1
    /* 125A78 8017E608 10000002 */  b          .L8017E614_ovl5
    /* 125A7C 8017E60C A0790000 */   sb        $t9, 0x0($v1)
  .L8017E610_ovl5:
    /* 125A80 8017E610 A0680000 */  sb         $t0, 0x0($v1)
  .L8017E614_ovl5:
    /* 125A84 8017E614 0C05F89D */  jal        func_8017E274_ovl5
    /* 125A88 8017E618 90640000 */   lbu       $a0, 0x0($v1)
  .L8017E61C_ovl5:
    /* 125A8C 8017E61C 3C0C8005 */  lui        $t4, %hi(omCurrentObj)
    /* 125A90 8017E620 8D8CA7C4 */  lw         $t4, %lo(omCurrentObj)($t4)
    /* 125A94 8017E624 3C01800F */  lui        $at, %hi(D_800E9AA0)
    /* 125A98 8017E628 240B0005 */  addiu      $t3, $zero, 0x5
    /* 125A9C 8017E62C 8D890000 */  lw         $t1, 0x0($t4)
    /* 125AA0 8017E630 00095080 */  sll        $t2, $t1, 2
    /* 125AA4 8017E634 002A0821 */  addu       $at, $at, $t2
    /* 125AA8 8017E638 AC2B9AA0 */  sw         $t3, %lo(D_800E9AA0)($at)
  .L8017E63C_ovl5:
    /* 125AAC 8017E63C 8FBF0014 */  lw         $ra, 0x14($sp)
  .L8017E640_ovl5:
    /* 125AB0 8017E640 27BD0018 */  addiu      $sp, $sp, 0x18
    /* 125AB4 8017E644 03E00008 */  jr         $ra
    /* 125AB8 8017E648 00000000 */   nop
endlabel func_8017E350_ovl5
.size func_8017E350_ovl5, . - func_8017E350_ovl5
