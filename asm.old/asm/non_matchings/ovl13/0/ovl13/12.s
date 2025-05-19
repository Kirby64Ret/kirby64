glabel func_801DD148_ovl13 # 12
/* 1F50C8 801DD148 3C0F8005 */  lui         $t7, %hi(D_8004A7C4)
/* 1F50CC 801DD14C 8DEFA7C4 */  lw          $t7, %lo(D_8004A7C4)($t7)
/* 1F50D0 801DD150 27BDFFE8 */  addiu       $sp, $sp, -0x18
/* 1F50D4 801DD154 AFBF0014 */  sw          $ra, 0x14($sp)
/* 1F50D8 801DD158 8DF80000 */  lw          $t8, 0x0($t7)
/* 1F50DC 801DD15C 3C01800F */  lui         $at, %hi(D_800E8920)
/* 1F50E0 801DD160 240E0001 */  addiu       $t6, $zero, 0x1
/* 1F50E4 801DD164 0018C880 */  sll         $t9, $t8, 2
/* 1F50E8 801DD168 00390821 */  addu        $at, $at, $t9
/* 1F50EC 801DD16C 0C06835D */  jal         func_801A0D74_ovl7
/* 1F50F0 801DD170 AC2E8920 */   sw         $t6, %lo(D_800E8920)($at)
/* 1F50F4 801DD174 8FBF0014 */  lw          $ra, 0x14($sp)
/* 1F50F8 801DD178 27BD0018 */  addiu       $sp, $sp, 0x18
/* 1F50FC 801DD17C 03E00008 */  jr          $ra
/* 1F5100 801DD180 00000000 */   nop
.type func_801DD148_ovl13, @function

.size func_801DD148_ovl13, . - func_801DD148_ovl13
