glabel func_8015814C_ovl3
/* B8B8C 8015814C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* B8B90 80158150 AFB00018 */  sw         $s0, 0x18($sp)
/* B8B94 80158154 3C108013 */  lui        $s0, %hi(gKirbyState)
.L80158158_ovl4:
/* B8B98 80158158 2610E7C0 */  addiu      $s0, $s0, %lo(gKirbyState)
/* B8B9C 8015815C 8E0E0034 */  lw         $t6, 0x34($s0)
/* B8BA0 80158160 AFBF001C */  sw         $ra, 0x1C($sp)
/* B8BA4 80158164 AFA40020 */  sw         $a0, 0x20($sp)
/* B8BA8 80158168 31CF0001 */  andi       $t7, $t6, 0x1
/* B8BAC 8015816C AFA50024 */  sw         $a1, 0x24($sp)
.L80158170_ovl4:
/* B8BB0 80158170 AFA60028 */  sw         $a2, 0x28($sp)
/* B8BB4 80158174 11E00007 */  beqz       $t7, .L80158194_ovl3
/* B8BB8 80158178 AE000044 */   sw        $zero, 0x44($s0)
.L8015817C_ovl3:
/* B8BBC 8015817C 0C002DAF */  jal        finish_current_thread
.L80158180_ovl4:
/* B8BC0 80158180 24040001 */   addiu     $a0, $zero, 0x1
/* B8BC4 80158184 8E180034 */  lw         $t8, 0x34($s0)
/* B8BC8 80158188 33190001 */  andi       $t9, $t8, 0x1
/* B8BCC 8015818C 1720FFFB */  bnez       $t9, .L8015817C_ovl3
glabel func_80158190_ovl4
/* B8BD0 80158190 00000000 */   nop
.L80158194_ovl3:
/* B8BD4 80158194 A2000018 */  sb         $zero, 0x18($s0)
/* B8BD8 80158198 0C055F17 */  jal        func_80157C5C_ovl3
/* B8BDC 8015819C 8FA40020 */   lw        $a0, 0x20($sp)
/* B8BE0 801581A0 8FB90024 */  lw         $t9, 0x24($sp)
/* B8BE4 801581A4 AE000030 */  sw         $zero, 0x30($s0)
/* B8BE8 801581A8 8FA40020 */  lw         $a0, 0x20($sp)
/* B8BEC 801581AC 0320F809 */  jalr       $t9
/* B8BF0 801581B0 00000000 */   nop
/* B8BF4 801581B4 0C055F56 */  jal        func_80157D58_ovl3
/* B8BF8 801581B8 8FA40020 */   lw        $a0, 0x20($sp)
/* B8BFC 801581BC 8E080030 */  lw         $t0, 0x30($s0)
/* B8C00 801581C0 15000006 */  bnez       $t0, .L801581DC_ovl3
/* B8C04 801581C4 00000000 */   nop
.L801581C8_ovl3:
/* B8C08 801581C8 0C002DAF */  jal        finish_current_thread
/* B8C0C 801581CC 24040001 */   addiu     $a0, $zero, 0x1
/* B8C10 801581D0 8E090030 */  lw         $t1, 0x30($s0)
/* B8C14 801581D4 1120FFFC */  beqz       $t1, .L801581C8_ovl3
/* B8C18 801581D8 00000000 */   nop
.L801581DC_ovl3:
/* B8C1C 801581DC 3C028005 */  lui        $v0, %hi(D_8004A7C4)
/* B8C20 801581E0 8C42A7C4 */  lw         $v0, %lo(D_8004A7C4)($v0)
/* B8C24 801581E4 44802000 */  mtc1       $zero, $f4
/* B8C28 801581E8 3C04800E */  lui        $a0, %hi(D_800E6690)
/* B8C2C 801581EC 8C4A0000 */  lw         $t2, 0x0($v0)
/* B8C30 801581F0 24846690 */  addiu      $a0, $a0, %lo(D_800E6690)
/* B8C34 801581F4 3C01800E */  lui        $at, %hi(D_800E64D0)
/* B8C38 801581F8 000A5880 */  sll        $t3, $t2, 2
/* B8C3C 801581FC 008B6021 */  addu       $t4, $a0, $t3
/* B8C40 80158200 E5840000 */  swc1       $f4, 0x0($t4)
/* B8C44 80158204 8C430000 */  lw         $v1, 0x0($v0)
/* B8C48 80158208 00031880 */  sll        $v1, $v1, 2
.L8015820C_ovl4:
/* B8C4C 8015820C 00836821 */  addu       $t5, $a0, $v1
/* B8C50 80158210 C5A60000 */  lwc1       $f6, 0x0($t5)
/* B8C54 80158214 00230821 */  addu       $at, $at, $v1
/* B8C58 80158218 E42664D0 */  swc1       $f6, %lo(D_800E64D0)($at)
/* B8C5C 8015821C 8C4E0000 */  lw         $t6, 0x0($v0)
/* B8C60 80158220 3C018019 */  lui        $at, %hi(D_80196F58_ovl3)
glabel func_80158224_ovl4
/* B8C64 80158224 C4286F58 */  lwc1       $f8, %lo(D_80196F58_ovl3)($at)
/* B8C68 80158228 3C01800E */  lui        $at, %hi(D_800E6850)
/* B8C6C 8015822C 000E7880 */  sll        $t7, $t6, 2
/* B8C70 80158230 002F0821 */  addu       $at, $at, $t7
/* B8C74 80158234 E4286850 */  swc1       $f8, %lo(D_800E6850)($at)
/* B8C78 80158238 8E180034 */  lw         $t8, 0x34($s0)
/* B8C7C 8015823C 33190001 */  andi       $t9, $t8, 0x1
/* B8C80 80158240 53200008 */  beql       $t9, $zero, .L80158264_ovl3
/* B8C84 80158244 8FA40020 */   lw        $a0, 0x20($sp)
.L80158248_ovl3:
/* B8C88 80158248 0C002DAF */  jal        finish_current_thread
/* B8C8C 8015824C 24040001 */   addiu     $a0, $zero, 0x1
/* B8C90 80158250 8E080034 */  lw         $t0, 0x34($s0)
/* B8C94 80158254 31090001 */  andi       $t1, $t0, 0x1
/* B8C98 80158258 1520FFFB */  bnez       $t1, .L80158248_ovl3
/* B8C9C 8015825C 00000000 */   nop
/* B8CA0 80158260 8FA40020 */  lw         $a0, 0x20($sp)
.L80158264_ovl3:
/* B8CA4 80158264 0C056031 */  jal        func_801580C4_ovl3
/* B8CA8 80158268 8FA50028 */   lw        $a1, 0x28($sp)
/* B8CAC 8015826C 0C055F8E */  jal        func_80157E38_ovl3
/* B8CB0 80158270 8FA40020 */   lw        $a0, 0x20($sp)
/* B8CB4 80158274 240A0001 */  addiu      $t2, $zero, 0x1
/* B8CB8 80158278 0C02BE85 */  jal        func_800AFA14
/* B8CBC 8015827C AE0A0044 */   sw        $t2, 0x44($s0)
/* B8CC0 80158280 8FBF001C */  lw         $ra, 0x1C($sp)
/* B8CC4 80158284 8FB00018 */  lw         $s0, 0x18($sp)
/* B8CC8 80158288 27BD0020 */  addiu      $sp, $sp, 0x20
/* B8CCC 8015828C 03E00008 */  jr         $ra
/* B8CD0 80158290 00000000 */   nop
