glabel func_80164914_ovl5
/* C5354 80164914 3C0E8013 */  lui        $t6, %hi(D_8012E7C5)
/* C5358 80164918 91CEE7C5 */  lbu        $t6, %lo(D_8012E7C5)($t6)
/* C535C 8016491C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C5360 80164920 2401001A */  addiu      $at, $zero, 0x1A
/* C5364 80164924 AFBF0014 */  sw         $ra, 0x14($sp)
/* C5368 80164928 11C10011 */  beq        $t6, $at, .L80164970_ovl3
/* C536C 8016492C AFA40018 */   sw        $a0, 0x18($sp)
/* C5370 80164930 3C0F8005 */  lui        $t7, %hi(D_8004A7C4)
/* C5374 80164934 8DEFA7C4 */  lw         $t7, %lo(D_8004A7C4)($t7)
/* C5378 80164938 3C04800F */  lui        $a0, %hi(D_800EA520)
/* C537C 8016493C 8DE20000 */  lw         $v0, 0x0($t7)
/* C5380 80164940 0002C080 */  sll        $t8, $v0, 2
.L80164944_ovl5:
/* C5384 80164944 00982021 */  addu       $a0, $a0, $t8
.L80164948_ovl5:
/* C5388 80164948 8C84A520 */  lw         $a0, %lo(D_800EA520)($a0)
/* C538C 8016494C 10800006 */  beqz       $a0, .L80164968_ovl3
/* C5390 80164950 00000000 */   nop
/* C5394 80164954 0C0288B5 */  jal        func_800A22D4
/* C5398 80164958 00000000 */   nop
/* C539C 8016495C 3C198005 */  lui        $t9, %hi(D_8004A7C4)
/* C53A0 80164960 8F39A7C4 */  lw         $t9, %lo(D_8004A7C4)($t9)
/* C53A4 80164964 8F220000 */  lw         $v0, 0x0($t9)
.L80164968_ovl3:
/* C53A8 80164968 0C02C640 */  jal        func_800B1900
/* C53AC 8016496C 3044FFFF */   andi      $a0, $v0, 0xFFFF
.L80164970_ovl3:
/* C53B0 80164970 8FBF0014 */  lw         $ra, 0x14($sp)
.L80164974_ovl5:
/* C53B4 80164974 27BD0018 */  addiu      $sp, $sp, 0x18
.L80164978_ovl5:
/* C53B8 80164978 03E00008 */  jr         $ra
/* C53BC 8016497C 00000000 */   nop
