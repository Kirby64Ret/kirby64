glabel func_8021F5CC_ovl19
/* 231F6C 8021F5CC 3C0E8005 */  lui        $t6, %hi(D_8004A7C4)
/* 231F70 8021F5D0 8DCEA7C4 */  lw         $t6, %lo(D_8004A7C4)($t6)
/* 231F74 8021F5D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 231F78 8021F5D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 231F7C 8021F5DC 8DC30000 */  lw         $v1, 0x0($t6)
/* 231F80 8021F5E0 3C02800E */  lui        $v0, %hi(D_800E1B50)
/* 231F84 8021F5E4 00037880 */  sll        $t7, $v1, 2
/* 231F88 8021F5E8 004F1021 */  addu       $v0, $v0, $t7
/* 231F8C 8021F5EC 8C421B50 */  lw         $v0, %lo(D_800E1B50)($v0)
/* 231F90 8021F5F0 54400004 */  bnel       $v0, $zero, .L8021F604_ovl18
/* 231F94 8021F5F4 8C58008C */   lw        $t8, 0x8C($v0)
/* 231F98 8021F5F8 10000013 */  b          .L8021F648_ovl18
/* 231F9C 8021F5FC 00001025 */   or        $v0, $zero, $zero
glabel func_8021F600_ovl19
/* 231FA0 8021F600 8C58008C */  lw         $t8, 0x8C($v0)
.L8021F604_ovl18:
/* 231FA4 8021F604 00602025 */  or         $a0, $v1, $zero
/* 231FA8 8021F608 17000003 */  bnez       $t8, .L8021F618_ovl18
/* 231FAC 8021F60C 00000000 */   nop
/* 231FB0 8021F610 1000000D */  b          .L8021F648_ovl18
/* 231FB4 8021F614 00001025 */   or        $v0, $zero, $zero
.L8021F618_ovl18:
/* 231FB8 8021F618 0C044554 */  jal        func_80111550
/* 231FBC 8021F61C AFA2001C */   sw        $v0, 0x1C($sp)
/* 231FC0 8021F620 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* 231FC4 8021F624 8FA2001C */  lw         $v0, 0x1C($sp)
/* 231FC8 8021F628 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* 231FCC 8021F62C 8C44008C */  lw         $a0, 0x8C($v0)
/* 231FD0 8021F630 0C044722 */  jal        func_80111C88
/* 231FD4 8021F634 8F250000 */   lw        $a1, 0x0($t9)
/* 231FD8 8021F638 0C0447B3 */  jal        func_80111ECC
/* 231FDC 8021F63C 00402025 */   or        $a0, $v0, $zero
/* 231FE0 8021F640 0C087D96 */  jal        func_8021F658_ovl18
/* 231FE4 8021F644 00000000 */   nop
.L8021F648_ovl18:
/* 231FE8 8021F648 8FBF0014 */  lw         $ra, 0x14($sp)
/* 231FEC 8021F64C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 231FF0 8021F650 03E00008 */  jr         $ra
/* 231FF4 8021F654 00000000 */   nop
