nonmatching func_800A428C, 0x188

glabel func_800A428C
    /* 4C4DC 800A428C 27BDFF28 */  addiu      $sp, $sp, -0xD8
    /* 4C4E0 800A4290 AFB40028 */  sw         $s4, 0x28($sp)
    /* 4C4E4 800A4294 27B40048 */  addiu      $s4, $sp, 0x48
    /* 4C4E8 800A4298 AFBE0038 */  sw         $fp, 0x38($sp)
    /* 4C4EC 800A429C AFB60030 */  sw         $s6, 0x30($sp)
    /* 4C4F0 800A42A0 AFB5002C */  sw         $s5, 0x2C($sp)
    /* 4C4F4 800A42A4 AFB1001C */  sw         $s1, 0x1C($sp)
    /* 4C4F8 800A42A8 00A0B025 */  or         $s6, $a1, $zero
    /* 4C4FC 800A42AC 00C0F025 */  or         $fp, $a2, $zero
    /* 4C500 800A42B0 AFBF003C */  sw         $ra, 0x3C($sp)
    /* 4C504 800A42B4 AFB70034 */  sw         $s7, 0x34($sp)
    /* 4C508 800A42B8 AFB30024 */  sw         $s3, 0x24($sp)
    /* 4C50C 800A42BC AFB20020 */  sw         $s2, 0x20($sp)
    /* 4C510 800A42C0 AFB00018 */  sw         $s0, 0x18($sp)
    /* 4C514 800A42C4 AFA400D8 */  sw         $a0, 0xD8($sp)
    /* 4C518 800A42C8 02808825 */  or         $s1, $s4, $zero
    /* 4C51C 800A42CC 18C00037 */  blez       $a2, .L800A43AC
    /* 4C520 800A42D0 0000A825 */   or        $s5, $zero, $zero
    /* 4C524 800A42D4 3C12800C */  lui        $s2, %hi(D_800BE5C0)
    /* 4C528 800A42D8 2652E5C0 */  addiu      $s2, $s2, %lo(D_800BE5C0)
    /* 4C52C 800A42DC 2417000A */  addiu      $s7, $zero, 0xA
    /* 4C530 800A42E0 24130020 */  addiu      $s3, $zero, 0x20
    /* 4C534 800A42E4 92C20000 */  lbu        $v0, 0x0($s6)
  .L800A42E8:
    /* 4C538 800A42E8 24010009 */  addiu      $at, $zero, 0x9
    /* 4C53C 800A42EC 26D60001 */  addiu      $s6, $s6, 0x1
    /* 4C540 800A42F0 1041000D */  beq        $v0, $at, .L800A4328
    /* 4C544 800A42F4 00401825 */   or        $v1, $v0, $zero
    /* 4C548 800A42F8 10570007 */  beq        $v0, $s7, .L800A4318
    /* 4C54C 800A42FC 2418000A */   addiu     $t8, $zero, 0xA
    /* 4C550 800A4300 8E4E0000 */  lw         $t6, 0x0($s2)
    /* 4C554 800A4304 26310001 */  addiu      $s1, $s1, 0x1
    /* 4C558 800A4308 25CF0001 */  addiu      $t7, $t6, 0x1
    /* 4C55C 800A430C AE4F0000 */  sw         $t7, 0x0($s2)
    /* 4C560 800A4310 10000012 */  b          .L800A435C
    /* 4C564 800A4314 A222FFFF */   sb        $v0, -0x1($s1)
  .L800A4318:
    /* 4C568 800A4318 A2380000 */  sb         $t8, 0x0($s1)
    /* 4C56C 800A431C 26310001 */  addiu      $s1, $s1, 0x1
    /* 4C570 800A4320 1000000E */  b          .L800A435C
    /* 4C574 800A4324 AE400000 */   sw        $zero, 0x0($s2)
  .L800A4328:
    /* 4C578 800A4328 A2330000 */  sb         $s3, 0x0($s1)
  .L800A432C:
    /* 4C57C 800A432C 8E590000 */  lw         $t9, 0x0($s2)
    /* 4C580 800A4330 26310001 */  addiu      $s1, $s1, 0x1
    /* 4C584 800A4334 27280001 */  addiu      $t0, $t9, 0x1
    /* 4C588 800A4338 01004825 */  or         $t1, $t0, $zero
    /* 4C58C 800A433C AE480000 */  sw         $t0, 0x0($s2)
    /* 4C590 800A4340 05210004 */  bgez       $t1, .L800A4354
    /* 4C594 800A4344 312A0007 */   andi      $t2, $t1, 0x7
    /* 4C598 800A4348 11400002 */  beqz       $t2, .L800A4354
    /* 4C59C 800A434C 00000000 */   nop
    /* 4C5A0 800A4350 254AFFF8 */  addiu      $t2, $t2, -0x8
  .L800A4354:
    /* 4C5A4 800A4354 5540FFF5 */  bnel       $t2, $zero, .L800A432C
    /* 4C5A8 800A4358 A2330000 */   sb        $s3, 0x0($s1)
  .L800A435C:
    /* 4C5AC 800A435C 12E30003 */  beq        $s7, $v1, .L800A436C
    /* 4C5B0 800A4360 02345823 */   subu      $t3, $s1, $s4
    /* 4C5B4 800A4364 29610065 */  slti       $at, $t3, 0x65
    /* 4C5B8 800A4368 1420000D */  bnez       $at, .L800A43A0
  .L800A436C:
    /* 4C5BC 800A436C 02342023 */   subu      $a0, $s1, $s4
    /* 4C5C0 800A4370 2484FFFF */  addiu      $a0, $a0, -0x1
    /* 4C5C4 800A4374 308400FF */  andi       $a0, $a0, 0xFF
    /* 4C5C8 800A4378 0C029105 */  jal        func_800A4414
    /* 4C5CC 800A437C 02808025 */   or        $s0, $s4, $zero
    /* 4C5D0 800A4380 52340007 */  beql       $s1, $s4, .L800A43A0
    /* 4C5D4 800A4384 02808825 */   or        $s1, $s4, $zero
    /* 4C5D8 800A4388 92040000 */  lbu        $a0, 0x0($s0)
  .L800A438C:
    /* 4C5DC 800A438C 0C029105 */  jal        func_800A4414
    /* 4C5E0 800A4390 26100001 */   addiu     $s0, $s0, 0x1
    /* 4C5E4 800A4394 5611FFFD */  bnel       $s0, $s1, .L800A438C
    /* 4C5E8 800A4398 92040000 */   lbu       $a0, 0x0($s0)
    /* 4C5EC 800A439C 02808825 */  or         $s1, $s4, $zero
  .L800A43A0:
    /* 4C5F0 800A43A0 26B50001 */  addiu      $s5, $s5, 0x1
    /* 4C5F4 800A43A4 56BEFFD0 */  bnel       $s5, $fp, .L800A42E8
    /* 4C5F8 800A43A8 92C20000 */   lbu       $v0, 0x0($s6)
  .L800A43AC:
    /* 4C5FC 800A43AC 1234000C */  beq        $s1, $s4, .L800A43E0
    /* 4C600 800A43B0 02342023 */   subu      $a0, $s1, $s4
    /* 4C604 800A43B4 2484FFFF */  addiu      $a0, $a0, -0x1
    /* 4C608 800A43B8 308400FF */  andi       $a0, $a0, 0xFF
    /* 4C60C 800A43BC 0C029105 */  jal        func_800A4414
    /* 4C610 800A43C0 02808025 */   or        $s0, $s4, $zero
    /* 4C614 800A43C4 52340007 */  beql       $s1, $s4, .L800A43E4
    /* 4C618 800A43C8 8FBF003C */   lw        $ra, 0x3C($sp)
    /* 4C61C 800A43CC 92040000 */  lbu        $a0, 0x0($s0)
  .L800A43D0:
    /* 4C620 800A43D0 0C029105 */  jal        func_800A4414
    /* 4C624 800A43D4 26100001 */   addiu     $s0, $s0, 0x1
    /* 4C628 800A43D8 5611FFFD */  bnel       $s0, $s1, .L800A43D0
    /* 4C62C 800A43DC 92040000 */   lbu       $a0, 0x0($s0)
  .L800A43E0:
    /* 4C630 800A43E0 8FBF003C */  lw         $ra, 0x3C($sp)
  .L800A43E4:
    /* 4C634 800A43E4 8FB00018 */  lw         $s0, 0x18($sp)
    /* 4C638 800A43E8 8FB1001C */  lw         $s1, 0x1C($sp)
    /* 4C63C 800A43EC 8FB20020 */  lw         $s2, 0x20($sp)
    /* 4C640 800A43F0 8FB30024 */  lw         $s3, 0x24($sp)
    /* 4C644 800A43F4 8FB40028 */  lw         $s4, 0x28($sp)
    /* 4C648 800A43F8 8FB5002C */  lw         $s5, 0x2C($sp)
    /* 4C64C 800A43FC 8FB60030 */  lw         $s6, 0x30($sp)
    /* 4C650 800A4400 8FB70034 */  lw         $s7, 0x34($sp)
    /* 4C654 800A4404 8FBE0038 */  lw         $fp, 0x38($sp)
    /* 4C658 800A4408 27BD00D8 */  addiu      $sp, $sp, 0xD8
    /* 4C65C 800A440C 03E00008 */  jr         $ra
    /* 4C660 800A4410 24020001 */   addiu     $v0, $zero, 0x1
endlabel func_800A428C
.size func_800A428C, . - func_800A428C
