glabel func_801DB804_ovl14 # 8
/* 1FE3F4 801DB804 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 1FE3F8 801DB808 AFB10018 */  sw          $s1, 0x18($sp)
/* 1FE3FC 801DB80C 3C118005 */  lui         $s1, %hi(D_8004A7C4)
/* 1FE400 801DB810 2631A7C4 */  addiu       $s1, $s1, %lo(D_8004A7C4)
/* 1FE404 801DB814 8E250000 */  lw          $a1, 0x0($s1)
/* 1FE408 801DB818 AFBF0024 */  sw          $ra, 0x24($sp)
/* 1FE40C 801DB81C AFB30020 */  sw          $s3, 0x20($sp)
/* 1FE410 801DB820 AFB2001C */  sw          $s2, 0x1C($sp)
/* 1FE414 801DB824 AFB00014 */  sw          $s0, 0x14($sp)
/* 1FE418 801DB828 AFA40028 */  sw          $a0, 0x28($sp)
/* 1FE41C 801DB82C 8CAF0000 */  lw          $t7, 0x0($a1)
/* 1FE420 801DB830 3C01800E */  lui         $at, %hi(D_800DDFD0)
/* 1FE424 801DB834 240E0002 */  addiu       $t6, $zero, 0x2
/* 1FE428 801DB838 000FC080 */  sll         $t8, $t7, 2
/* 1FE42C 801DB83C 00380821 */  addu        $at, $at, $t8
/* 1FE430 801DB840 AC2EDFD0 */  sw          $t6, %lo(D_800DDFD0)($at)
/* 1FE434 801DB844 8CB90000 */  lw          $t9, 0x0($a1)
/* 1FE438 801DB848 3C06800F */  lui         $a2, %hi(D_800EBF60)
/* 1FE43C 801DB84C 24C6BF60 */  addiu       $a2, $a2, %lo(D_800EBF60)
/* 1FE440 801DB850 00194080 */  sll         $t0, $t9, 2
/* 1FE444 801DB854 00C84821 */  addu        $t1, $a2, $t0
/* 1FE448 801DB858 AD200000 */  sw          $zero, 0x0($t1)
/* 1FE44C 801DB85C 8CA30000 */  lw          $v1, 0x0($a1)
/* 1FE450 801DB860 3C13800F */  lui         $s3, %hi(D_800EBDA0)
/* 1FE454 801DB864 2673BDA0 */  addiu       $s3, $s3, %lo(D_800EBDA0)
/* 1FE458 801DB868 00031880 */  sll         $v1, $v1, 2
/* 1FE45C 801DB86C 00C35021 */  addu        $t2, $a2, $v1
/* 1FE460 801DB870 8D420000 */  lw          $v0, 0x0($t2)
/* 1FE464 801DB874 02635821 */  addu        $t3, $s3, $v1
/* 1FE468 801DB878 3C12800F */  lui         $s2, %hi(D_800EBBE0)
/* 1FE46C 801DB87C AD620000 */  sw          $v0, 0x0($t3)
/* 1FE470 801DB880 8CAC0000 */  lw          $t4, 0x0($a1)
/* 1FE474 801DB884 2652BBE0 */  addiu       $s2, $s2, %lo(D_800EBBE0)
/* 1FE478 801DB888 3C040001 */  lui         $a0, (0x10438 >> 16)
/* 1FE47C 801DB88C 000C6880 */  sll         $t5, $t4, 2
/* 1FE480 801DB890 024D7821 */  addu        $t7, $s2, $t5
/* 1FE484 801DB894 34840438 */  ori         $a0, $a0, (0x10438 & 0xFFFF)
/* 1FE488 801DB898 0C02A7A9 */  jal         func_800A9EA4
/* 1FE48C 801DB89C ADE20000 */   sw         $v0, 0x0($t7)
/* 1FE490 801DB8A0 0C006291 */  jal         random_soft_s32_range
/* 1FE494 801DB8A4 24040005 */   addiu      $a0, $zero, 0x5
/* 1FE498 801DB8A8 0C0770E3 */  jal         func_801DC38C_ovl14
/* 1FE49C 801DB8AC 00402025 */   move       $a0, $v0
/* 1FE4A0 801DB8B0 8E250000 */  lw          $a1, 0x0($s1)
/* 1FE4A4 801DB8B4 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE4A8 801DB8B8 8CAE0000 */  lw          $t6, 0x0($a1)
/* 1FE4AC 801DB8BC 000EC080 */  sll         $t8, $t6, 2
/* 1FE4B0 801DB8C0 0258C821 */  addu        $t9, $s2, $t8
/* 1FE4B4 801DB8C4 AF220000 */  sw          $v0, 0x0($t9)
/* 1FE4B8 801DB8C8 8CA80000 */  lw          $t0, 0x0($a1)
/* 1FE4BC 801DB8CC 00084880 */  sll         $t1, $t0, 2
/* 1FE4C0 801DB8D0 02495021 */  addu        $t2, $s2, $t1
/* 1FE4C4 801DB8D4 8D4B0000 */  lw          $t3, 0x0($t2)
/* 1FE4C8 801DB8D8 1161003E */  beq         $t3, $at, .L801DB9D4
/* 1FE4CC 801DB8DC 00000000 */   nop
/* 1FE4D0 801DB8E0 0C002DAF */  jal         finish_current_thread
/* 1FE4D4 801DB8E4 24040014 */   addiu      $a0, $zero, 0x14
/* 1FE4D8 801DB8E8 3C10800F */  lui         $s0, %hi(D_800EC2E0)
/* 1FE4DC 801DB8EC 2610C2E0 */  addiu       $s0, $s0, %lo(D_800EC2E0)
.L801DB8F0:
/* 1FE4E0 801DB8F0 0C006291 */  jal         random_soft_s32_range
/* 1FE4E4 801DB8F4 24040005 */   addiu      $a0, $zero, 0x5
/* 1FE4E8 801DB8F8 8E2C0000 */  lw          $t4, 0x0($s1)
/* 1FE4EC 801DB8FC 00402025 */  move        $a0, $v0
/* 1FE4F0 801DB900 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1FE4F4 801DB904 000D7880 */  sll         $t7, $t5, 2
/* 1FE4F8 801DB908 024F7021 */  addu        $t6, $s2, $t7
/* 1FE4FC 801DB90C 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FE500 801DB910 0018C880 */  sll         $t9, $t8, 2
/* 1FE504 801DB914 02194021 */  addu        $t0, $s0, $t9
/* 1FE508 801DB918 8D090000 */  lw          $t1, 0x0($t0)
/* 1FE50C 801DB91C 1049FFF4 */  beq         $v0, $t1, .L801DB8F0
/* 1FE510 801DB920 00000000 */   nop
/* 1FE514 801DB924 0C0770E3 */  jal         func_801DC38C_ovl14
/* 1FE518 801DB928 00000000 */   nop
/* 1FE51C 801DB92C 8E250000 */  lw          $a1, 0x0($s1)
/* 1FE520 801DB930 2401FFFF */  addiu       $at, $zero, -0x1
/* 1FE524 801DB934 8CAA0000 */  lw          $t2, 0x0($a1)
/* 1FE528 801DB938 000A5880 */  sll         $t3, $t2, 2
/* 1FE52C 801DB93C 026B6021 */  addu        $t4, $s3, $t3
/* 1FE530 801DB940 AD820000 */  sw          $v0, 0x0($t4)
/* 1FE534 801DB944 8CAD0000 */  lw          $t5, 0x0($a1)
/* 1FE538 801DB948 000D7880 */  sll         $t7, $t5, 2
/* 1FE53C 801DB94C 026F7021 */  addu        $t6, $s3, $t7
/* 1FE540 801DB950 8DD80000 */  lw          $t8, 0x0($t6)
/* 1FE544 801DB954 1301001F */  beq         $t8, $at, .L801DB9D4
/* 1FE548 801DB958 00000000 */   nop
/* 1FE54C 801DB95C 0C002DAF */  jal         finish_current_thread
/* 1FE550 801DB960 24040014 */   addiu      $a0, $zero, 0x14
.L801DB964:
/* 1FE554 801DB964 0C006291 */  jal         random_soft_s32_range
/* 1FE558 801DB968 24040005 */   addiu      $a0, $zero, 0x5
/* 1FE55C 801DB96C 8E390000 */  lw          $t9, 0x0($s1)
/* 1FE560 801DB970 00402025 */  move        $a0, $v0
/* 1FE564 801DB974 8F230000 */  lw          $v1, 0x0($t9)
/* 1FE568 801DB978 00031880 */  sll         $v1, $v1, 2
/* 1FE56C 801DB97C 02434021 */  addu        $t0, $s2, $v1
/* 1FE570 801DB980 8D090000 */  lw          $t1, 0x0($t0)
/* 1FE574 801DB984 00095080 */  sll         $t2, $t1, 2
/* 1FE578 801DB988 020A5821 */  addu        $t3, $s0, $t2
/* 1FE57C 801DB98C 8D6C0000 */  lw          $t4, 0x0($t3)
/* 1FE580 801DB990 104CFFF4 */  beq         $v0, $t4, .L801DB964
/* 1FE584 801DB994 00000000 */   nop
/* 1FE588 801DB998 02636821 */  addu        $t5, $s3, $v1
/* 1FE58C 801DB99C 8DAF0000 */  lw          $t7, 0x0($t5)
/* 1FE590 801DB9A0 000F7080 */  sll         $t6, $t7, 2
/* 1FE594 801DB9A4 020EC021 */  addu        $t8, $s0, $t6
/* 1FE598 801DB9A8 8F190000 */  lw          $t9, 0x0($t8)
/* 1FE59C 801DB9AC 1059FFED */  beq         $v0, $t9, .L801DB964
/* 1FE5A0 801DB9B0 00000000 */   nop
/* 1FE5A4 801DB9B4 0C0770E3 */  jal         func_801DC38C_ovl14
/* 1FE5A8 801DB9B8 00000000 */   nop
/* 1FE5AC 801DB9BC 8E280000 */  lw          $t0, 0x0($s1)
/* 1FE5B0 801DB9C0 3C01800F */  lui         $at, %hi(D_800EBF60)
/* 1FE5B4 801DB9C4 8D090000 */  lw          $t1, 0x0($t0)
/* 1FE5B8 801DB9C8 00095080 */  sll         $t2, $t1, 2
/* 1FE5BC 801DB9CC 002A0821 */  addu        $at, $at, $t2
/* 1FE5C0 801DB9D0 AC22BF60 */  sw          $v0, %lo(D_800EBF60)($at)
.L801DB9D4:
/* 1FE5C4 801DB9D4 0C0770A8 */  jal         func_801DC2A0_ovl14
/* 1FE5C8 801DB9D8 00000000 */   nop
/* 1FE5CC 801DB9DC 8FBF0024 */  lw          $ra, 0x24($sp)
/* 1FE5D0 801DB9E0 8FB00014 */  lw          $s0, 0x14($sp)
/* 1FE5D4 801DB9E4 8FB10018 */  lw          $s1, 0x18($sp)
/* 1FE5D8 801DB9E8 8FB2001C */  lw          $s2, 0x1C($sp)
/* 1FE5DC 801DB9EC 8FB30020 */  lw          $s3, 0x20($sp)
/* 1FE5E0 801DB9F0 03E00008 */  jr          $ra
/* 1FE5E4 801DB9F4 27BD0028 */   addiu      $sp, $sp, 0x28
.type func_801DB804_ovl14, @function
.size func_801DB804_ovl14, . - func_801DB804_ovl14
