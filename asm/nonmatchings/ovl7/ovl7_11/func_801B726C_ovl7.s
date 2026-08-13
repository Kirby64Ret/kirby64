nonmatching func_801B726C_ovl7, 0x154

glabel func_801B726C_ovl7
    /* 15D2DC 801B726C 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 15D2E0 801B7270 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 15D2E4 801B7274 27BDFFD0 */  addiu      $sp, $sp, -0x30
    /* 15D2E8 801B7278 AFBF0014 */  sw         $ra, 0x14($sp)
    /* 15D2EC 801B727C 8C430000 */  lw         $v1, 0x0($v0)
    /* 15D2F0 801B7280 3C0E800F */  lui        $t6, %hi(D_800E9E20)
    /* 15D2F4 801B7284 3C05800E */  lui        $a1, %hi(D_800E1B50)
    /* 15D2F8 801B7288 00031880 */  sll        $v1, $v1, 2
    /* 15D2FC 801B728C 01C37021 */  addu       $t6, $t6, $v1
    /* 15D300 801B7290 8DCE9E20 */  lw         $t6, %lo(D_800E9E20)($t6)
    /* 15D304 801B7294 00A32821 */  addu       $a1, $a1, $v1
    /* 15D308 801B7298 8CA51B50 */  lw         $a1, %lo(D_800E1B50)($a1)
    /* 15D30C 801B729C 11C00044 */  beqz       $t6, .L801B73B0_ovl7
    /* 15D310 801B72A0 3C0F800F */   lui       $t7, %hi(D_800E9C60)
    /* 15D314 801B72A4 01E37821 */  addu       $t7, $t7, $v1
    /* 15D318 801B72A8 8DEF9C60 */  lw         $t7, %lo(D_800E9C60)($t7)
    /* 15D31C 801B72AC 55E0000D */  bnel       $t7, $zero, .L801B72E4_ovl7
    /* 15D320 801B72B0 90A9003C */   lbu       $t1, 0x3C($a1)
    /* 15D324 801B72B4 0C0667C7 */  jal        func_80199F1C_ovl7
    /* 15D328 801B72B8 AFA5002C */   sw        $a1, 0x2C($sp)
    /* 15D32C 801B72BC 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 15D330 801B72C0 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 15D334 801B72C4 3C01800F */  lui        $at, %hi(D_800E9C60)
    /* 15D338 801B72C8 24180001 */  addiu      $t8, $zero, 0x1
    /* 15D33C 801B72CC 8C590000 */  lw         $t9, 0x0($v0)
    /* 15D340 801B72D0 8FA5002C */  lw         $a1, 0x2C($sp)
    /* 15D344 801B72D4 00194080 */  sll        $t0, $t9, 2
    /* 15D348 801B72D8 00280821 */  addu       $at, $at, $t0
    /* 15D34C 801B72DC AC389C60 */  sw         $t8, %lo(D_800E9C60)($at)
    /* 15D350 801B72E0 90A9003C */  lbu        $t1, 0x3C($a1)
  .L801B72E4_ovl7:
    /* 15D354 801B72E4 55200033 */  bnel       $t1, $zero, .L801B73B4_ovl7
    /* 15D358 801B72E8 8FBF0014 */   lw        $ra, 0x14($sp)
    /* 15D35C 801B72EC 8C4A0000 */  lw         $t2, 0x0($v0)
    /* 15D360 801B72F0 3C03800F */  lui        $v1, %hi(D_800EA360)
    /* 15D364 801B72F4 2463A360 */  addiu      $v1, $v1, %lo(D_800EA360)
    /* 15D368 801B72F8 000A5880 */  sll        $t3, $t2, 2
    /* 15D36C 801B72FC 006B6021 */  addu       $t4, $v1, $t3
    /* 15D370 801B7300 8D8D0000 */  lw         $t5, 0x0($t4)
    /* 15D374 801B7304 3C014150 */  lui        $at, (0x41500000 >> 16)
    /* 15D378 801B7308 44810000 */  mtc1       $at, $f0
    /* 15D37C 801B730C 448D2000 */  mtc1       $t5, $f4
    /* 15D380 801B7310 3C01C000 */  lui        $at, (0xC0000000 >> 16)
    /* 15D384 801B7314 44819000 */  mtc1       $at, $f18
    /* 15D388 801B7318 468021A0 */  cvt.s.w    $f6, $f4
    /* 15D38C 801B731C 27A40020 */  addiu      $a0, $sp, 0x20
    /* 15D390 801B7320 46003202 */  mul.s      $f8, $f6, $f0
    /* 15D394 801B7324 E7A80020 */  swc1       $f8, 0x20($sp)
    /* 15D398 801B7328 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 15D39C 801B732C 000E7880 */  sll        $t7, $t6, 2
    /* 15D3A0 801B7330 006FC821 */  addu       $t9, $v1, $t7
    /* 15D3A4 801B7334 8F380000 */  lw         $t8, 0x0($t9)
    /* 15D3A8 801B7338 44985000 */  mtc1       $t8, $f10
    /* 15D3AC 801B733C 00000000 */  nop
    /* 15D3B0 801B7340 46805420 */  cvt.s.w    $f16, $f10
    /* 15D3B4 801B7344 46128102 */  mul.s      $f4, $f16, $f18
    /* 15D3B8 801B7348 E7A40024 */  swc1       $f4, 0x24($sp)
    /* 15D3BC 801B734C 8C480000 */  lw         $t0, 0x0($v0)
    /* 15D3C0 801B7350 00084880 */  sll        $t1, $t0, 2
    /* 15D3C4 801B7354 00695021 */  addu       $t2, $v1, $t1
    /* 15D3C8 801B7358 8D4B0000 */  lw         $t3, 0x0($t2)
    /* 15D3CC 801B735C 448B3000 */  mtc1       $t3, $f6
    /* 15D3D0 801B7360 00000000 */  nop
    /* 15D3D4 801B7364 46803220 */  cvt.s.w    $f8, $f6
    /* 15D3D8 801B7368 46004282 */  mul.s      $f10, $f8, $f0
    /* 15D3DC 801B736C 0C0673F4 */  jal        func_8019CFD0_ovl7
    /* 15D3E0 801B7370 E7AA0028 */   swc1      $f10, 0x28($sp)
    /* 15D3E4 801B7374 3C028005 */  lui        $v0, %hi(omCurrentObj)
    /* 15D3E8 801B7378 8C42A7C4 */  lw         $v0, %lo(omCurrentObj)($v0)
    /* 15D3EC 801B737C 3C01800E */  lui        $at, %hi(gEntityFuncListIDArray)
    /* 15D3F0 801B7380 3C04800E */  lui        $a0, %hi(gEntityGObjProcessArray)
    /* 15D3F4 801B7384 8C4C0000 */  lw         $t4, 0x0($v0)
    /* 15D3F8 801B7388 3C05801B */  lui        $a1, %hi(func_801B6B88_ovl7)
    /* 15D3FC 801B738C 24A56B88 */  addiu      $a1, $a1, %lo(func_801B6B88_ovl7)
    /* 15D400 801B7390 000C6880 */  sll        $t5, $t4, 2
    /* 15D404 801B7394 002D0821 */  addu       $at, $at, $t5
    /* 15D408 801B7398 AC20DC50 */  sw         $zero, %lo(gEntityFuncListIDArray)($at)
    /* 15D40C 801B739C 8C4E0000 */  lw         $t6, 0x0($v0)
    /* 15D410 801B73A0 000E7880 */  sll        $t7, $t6, 2
    /* 15D414 801B73A4 008F2021 */  addu       $a0, $a0, $t7
    /* 15D418 801B73A8 0C02C7B2 */  jal        assign_new_process_entry
    /* 15D41C 801B73AC 8C84E510 */   lw        $a0, %lo(gEntityGObjProcessArray)($a0)
  .L801B73B0_ovl7:
    /* 15D420 801B73B0 8FBF0014 */  lw         $ra, 0x14($sp)
  .L801B73B4_ovl7:
    /* 15D424 801B73B4 27BD0030 */  addiu      $sp, $sp, 0x30
    /* 15D428 801B73B8 03E00008 */  jr         $ra
    /* 15D42C 801B73BC 00000000 */   nop
endlabel func_801B726C_ovl7
.size func_801B726C_ovl7, . - func_801B726C_ovl7
