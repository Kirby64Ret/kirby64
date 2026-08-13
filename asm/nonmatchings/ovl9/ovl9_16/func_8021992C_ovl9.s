nonmatching func_8021992C_ovl9, 0x54

glabel func_8021992C_ovl9
    /* 1C797C 8021992C 27BDFFC8 */  addiu      $sp, $sp, -0x38
    /* 1C7980 80219930 3C0E8005 */  lui        $t6, %hi(omCurrentObj)
    /* 1C7984 80219934 8DCEA7C4 */  lw         $t6, %lo(omCurrentObj)($t6)
    /* 1C7988 80219938 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 1C798C 8021993C AFA40038 */  sw         $a0, 0x38($sp)
    /* 1C7990 80219940 0C044554 */  jal        func_80111550
    /* 1C7994 80219944 8DC40000 */   lw        $a0, 0x0($t6)
    /* 1C7998 80219948 3C0F8005 */  lui        $t7, %hi(omCurrentObj)
    /* 1C799C 8021994C 8DEFA7C4 */  lw         $t7, %lo(omCurrentObj)($t7)
    /* 1C79A0 80219950 3C04801D */  lui        $a0, %hi(D_801C98A0)
    /* 1C79A4 80219954 248498A0 */  addiu      $a0, $a0, %lo(D_801C98A0)
    /* 1C79A8 80219958 0C044722 */  jal        func_80111C88
    /* 1C79AC 8021995C 8DE50000 */   lw        $a1, 0x0($t7)
    /* 1C79B0 80219960 0C0447B3 */  jal        func_80111ECC
    /* 1C79B4 80219964 00402025 */   or        $a0, $v0, $zero
    /* 1C79B8 80219968 0C0442C0 */  jal        func_80110B00
    /* 1C79BC 8021996C 27A40018 */   addiu     $a0, $sp, 0x18
    /* 1C79C0 80219970 8FBF0014 */  lw         $ra, 0x14($sp)
    /* 1C79C4 80219974 27BD0038 */  addiu      $sp, $sp, 0x38
    /* 1C79C8 80219978 03E00008 */  jr         $ra
    /* 1C79CC 8021997C 00000000 */   nop
endlabel func_8021992C_ovl9
.size func_8021992C_ovl9, . - func_8021992C_ovl9
