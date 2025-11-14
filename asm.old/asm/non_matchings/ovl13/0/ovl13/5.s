glabel func_801DC788_ovl13 # 5
/* 1F4708 801DC788 3C038005 */  lui         $v1, %hi(D_8004A7C4)
/* 1F470C 801DC78C 8C63A7C4 */  lw          $v1, %lo(D_8004A7C4)($v1)
/* 1F4710 801DC790 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F4714 801DC794 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F4718 801DC798 8C6E0000 */  lw          $t6, 0x0($v1)
/* 1F471C 801DC79C 3C07800F */  lui         $a3, %hi(D_800E9AA0)
/* 1F4720 801DC7A0 24E79AA0 */  addiu       $a3, $a3, %lo(D_800E9AA0)
/* 1F4724 801DC7A4 000E7880 */  sll         $t7, $t6, 2
/* 1F4728 801DC7A8 00EF1021 */  addu        $v0, $a3, $t7
/* 1F472C 801DC7AC 8C580000 */  lw          $t8, 0x0($v0)
/* 1F4730 801DC7B0 240100B4 */  addiu       $at, $zero, 0xB4
/* 1F4734 801DC7B4 3C0C800E */  lui         $t4, %hi(D_800E0D50)
/* 1F4738 801DC7B8 27190001 */  addiu       $t9, $t8, 0x1
/* 1F473C 801DC7BC AC590000 */  sw          $t9, 0x0($v0)
/* 1F4740 801DC7C0 8C680000 */  lw          $t0, 0x0($v1)
/* 1F4744 801DC7C4 3C0E800F */  lui         $t6, %hi(D_800E98E0)
/* 1F4748 801DC7C8 25CE98E0 */  addiu       $t6, $t6, %lo(D_800E98E0)
/* 1F474C 801DC7CC 00084880 */  sll         $t1, $t0, 2
/* 1F4750 801DC7D0 00E91021 */  addu        $v0, $a3, $t1
/* 1F4754 801DC7D4 8C4A0000 */  lw          $t2, 0x0($v0)
/* 1F4758 801DC7D8 0141001A */  div         $zero, $t2, $at
/* 1F475C 801DC7DC 00005810 */  mfhi        $t3
/* 1F4760 801DC7E0 AC4B0000 */  sw          $t3, 0x0($v0)
/* 1F4764 801DC7E4 8C650000 */  lw          $a1, 0x0($v1)
/* 1F4768 801DC7E8 00052880 */  sll         $a1, $a1, 2
/* 1F476C 801DC7EC 01856021 */  addu        $t4, $t4, $a1
/* 1F4770 801DC7F0 8D8C0D50 */  lw          $t4, %lo(D_800E0D50)($t4)
/* 1F4774 801DC7F4 000C6880 */  sll         $t5, $t4, 2
/* 1F4778 801DC7F8 01AE3021 */  addu        $a2, $t5, $t6
/* 1F477C 801DC7FC 8CCF0000 */  lw          $t7, 0x0($a2)
/* 1F4780 801DC800 2DE10008 */  sltiu       $at, $t7, 0x8
/* 1F4784 801DC804 1020002D */  beqz        $at, L801DC8BC_ovl13
/* 1F4788 801DC808 000F7880 */   sll        $t7, $t7, 2
/* 1F478C 801DC80C 3C01801E */  lui         $at, %hi(jtbl_801E5CB4_ovl13)
/* 1F4790 801DC810 002F0821 */  addu        $at, $at, $t7
/* 1F4794 801DC814 8C2F5CB4 */  lw          $t7, %lo(jtbl_801E5CB4_ovl13)($at)
/* 1F4798 801DC818 01E00008 */  jr          $t7
/* 1F479C 801DC81C 00000000 */   nop
glabel L801DC820_ovl13
/* 1F47A0 801DC820 0C06835D */  jal         func_801A0D74_ovl7
/* 1F47A4 801DC824 00000000 */   nop
/* 1F47A8 801DC828 10000025 */  b           L801DC8C0_ovl13
/* 1F47AC 801DC82C 8FBF0014 */   lw         $ra, 0x14($sp)
glabel L801DC830_ovl13
/* 1F47B0 801DC830 3C048013 */  lui         $a0, %hi(D_801290D0)
/* 1F47B4 801DC834 248490D0 */  addiu       $a0, $a0, %lo(D_801290D0)
/* 1F47B8 801DC838 8C980000 */  lw          $t8, 0x0($a0)
/* 1F47BC 801DC83C 3C03800E */  lui         $v1, %hi(D_800DFBD0)
/* 1F47C0 801DC840 2463FBD0 */  addiu       $v1, $v1, %lo(D_800DFBD0)
/* 1F47C4 801DC844 0018C880 */  sll         $t9, $t8, 2
/* 1F47C8 801DC848 00794021 */  addu        $t0, $v1, $t9
/* 1F47CC 801DC84C 8D090000 */  lw          $t1, 0x0($t0)
/* 1F47D0 801DC850 3C01800F */  lui         $at, %hi(D_800EA6E0)
/* 1F47D4 801DC854 00250821 */  addu        $at, $at, $a1
/* 1F47D8 801DC858 8D220008 */  lw          $v0, 0x8($t1)
/* 1F47DC 801DC85C C426A6E0 */  lwc1        $f6, %lo(D_800EA6E0)($at)
/* 1F47E0 801DC860 3C01C470 */  lui         $at, (0xC4700000 >> 16)
/* 1F47E4 801DC864 C4440020 */  lwc1        $f4, 0x20($v0)
/* 1F47E8 801DC868 44815000 */  mtc1        $at, $f10
/* 1F47EC 801DC86C 3C0143F0 */  lui         $at, (0x43F00000 >> 16)
/* 1F47F0 801DC870 46062201 */  sub.s       $f8, $f4, $f6
/* 1F47F4 801DC874 E4480020 */  swc1        $f8, 0x20($v0)
/* 1F47F8 801DC878 8C8A0000 */  lw          $t2, 0x0($a0)
/* 1F47FC 801DC87C 000A5880 */  sll         $t3, $t2, 2
/* 1F4800 801DC880 006B6021 */  addu        $t4, $v1, $t3
/* 1F4804 801DC884 8D8D0000 */  lw          $t5, 0x0($t4)
/* 1F4808 801DC888 8DA20008 */  lw          $v0, 0x8($t5)
/* 1F480C 801DC88C C4400020 */  lwc1        $f0, 0x20($v0)
/* 1F4810 801DC890 460A003C */  c.lt.s      $f0, $f10
/* 1F4814 801DC894 00000000 */  nop
/* 1F4818 801DC898 45020009 */  bc1fl       L801DC8C0_ovl13
/* 1F481C 801DC89C 8FBF0014 */   lw         $ra, 0x14($sp)
/* 1F4820 801DC8A0 44818000 */  mtc1        $at, $f16
/* 1F4824 801DC8A4 00000000 */  nop
/* 1F4828 801DC8A8 46100480 */  add.s       $f18, $f0, $f16
/* 1F482C 801DC8AC 10000003 */  b           L801DC8BC_ovl13
/* 1F4830 801DC8B0 E4520020 */   swc1       $f18, 0x20($v0)
glabel L801DC8B4_ovl13
/* 1F4834 801DC8B4 240E0006 */  addiu       $t6, $zero, 0x6
/* 1F4838 801DC8B8 ACCE0000 */  sw          $t6, 0x0($a2)
glabel L801DC8BC_ovl13
/* 1F483C 801DC8BC 8FBF0014 */  lw          $ra, 0x14($sp)
glabel L801DC8C0_ovl13
/* 1F4840 801DC8C0 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F4844 801DC8C4 03E00008 */  jr          $ra
/* 1F4848 801DC8C8 00000000 */   nop
.type func_801DC788_ovl13, @function

.size func_801DC788_ovl13, . - func_801DC788_ovl13
.section .late_rodata
glabel jtbl_801E5CB4_ovl13
/* 1FDC34 801E5CB4 */ .word L801DC820_ovl13
/* 1FDC38 801E5CB8 */ .word L801DC820_ovl13
/* 1FDC3C 801E5CBC */ .word L801DC8BC_ovl13
/* 1FDC40 801E5CC0 */ .word L801DC8BC_ovl13
/* 1FDC44 801E5CC4 */ .word L801DC830_ovl13
/* 1FDC48 801E5CC8 */ .word L801DC8B4_ovl13
/* 1FDC4C 801E5CCC */ .word L801DC8BC_ovl13
/* 1FDC50 801E5CD0 */ .word L801DC8BC_ovl13

