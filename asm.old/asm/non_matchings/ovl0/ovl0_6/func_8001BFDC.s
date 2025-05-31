glabel func_8001BFDC
/* 01CBDC 8001BFDC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 01CBE0 8001BFE0 3C018004 */  lui   $at, %hi(D_80040C8C) # $at, 0x8004
/* 01CBE4 8001BFE4 C4200C8C */  lwc1  $f0, %lo(D_80040C8C)($at)
/* 01CBE8 8001BFE8 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 01CBEC 8001BFEC C7AA004C */  lwc1  $f10, 0x4c($sp)
/* 01CBF0 8001BFF0 44866000 */  mtc1  $a2, $f12
/* 01CBF4 8001BFF4 46002182 */  mul.s $f6, $f4, $f0
/* 01CBF8 8001BFF8 C7A40050 */  lwc1  $f4, 0x50($sp)
/* 01CBFC 8001BFFC 3C0C8004 */  lui   $t4, %hi(lbreflect_Int16SinTable) # $t4, 0x8004
/* 01CC00 8001C000 46005402 */  mul.s $f16, $f10, $f0
/* 01CC04 8001C004 258CE330 */  addiu $t4, %lo(lbreflect_Int16SinTable) # addiu $t4, $t4, -0x1cd0
/* 01CC08 8001C008 AFA70044 */  sw    $a3, 0x44($sp)
/* 01CC0C 8001C00C 44857000 */  mtc1  $a1, $f14
/* 01CC10 8001C010 AFB00004 */  sw    $s0, 4($sp)
/* 01CC14 8001C014 4600320D */  trunc.w.s $f8, $f6
/* 01CC18 8001C018 46002182 */  mul.s $f6, $f4, $f0
/* 01CC1C 8001C01C 44034000 */  mfc1  $v1, $f8
/* 01CC20 8001C020 4600848D */  trunc.w.s $f18, $f16
/* 01CC24 8001C024 30630FFF */  andi  $v1, $v1, 0xfff
/* 01CC28 8001C028 3066FFFF */  andi  $a2, $v1, 0xffff
/* 01CC2C 8001C02C 4600320D */  trunc.w.s $f8, $f6
/* 01CC30 8001C030 30CF07FF */  andi  $t7, $a2, 0x7ff
/* 01CC34 8001C034 000FC040 */  sll   $t8, $t7, 1
/* 01CC38 8001C038 0198C821 */  addu  $t9, $t4, $t8
/* 01CC3C 8001C03C 30CE0800 */  andi  $t6, $a2, 0x800
/* 01CC40 8001C040 44039000 */  mfc1  $v1, $f18
/* 01CC44 8001C044 44094000 */  mfc1  $t1, $f8
/* 01CC48 8001C048 11C00002 */  beqz  $t6, .L8001C054_ovl0
/* 01CC4C 8001C04C 97270000 */   lhu   $a3, ($t9)
/* 01CC50 8001C050 00073823 */  negu  $a3, $a3
.L8001C054_ovl0:
/* 01CC54 8001C054 24C20400 */  addiu $v0, $a2, 0x400
/* 01CC58 8001C058 304F07FF */  andi  $t7, $v0, 0x7ff
/* 01CC5C 8001C05C 000FC040 */  sll   $t8, $t7, 1
/* 01CC60 8001C060 0198C821 */  addu  $t9, $t4, $t8
/* 01CC64 8001C064 304E0800 */  andi  $t6, $v0, 0x800
/* 01CC68 8001C068 11C00002 */  beqz  $t6, .L8001C074_ovl0
/* 01CC6C 8001C06C 97250000 */   lhu   $a1, ($t9)
/* 01CC70 8001C070 00052823 */  negu  $a1, $a1
.L8001C074_ovl0:
/* 01CC74 8001C074 30630FFF */  andi  $v1, $v1, 0xfff
/* 01CC78 8001C078 3068FFFF */  andi  $t0, $v1, 0xffff
/* 01CC7C 8001C07C 311807FF */  andi  $t8, $t0, 0x7ff
/* 01CC80 8001C080 0018C840 */  sll   $t9, $t8, 1
/* 01CC84 8001C084 01997021 */  addu  $t6, $t4, $t9
/* 01CC88 8001C088 310F0800 */  andi  $t7, $t0, 0x800
/* 01CC8C 8001C08C 11E00002 */  beqz  $t7, .L8001C098_ovl0
/* 01CC90 8001C090 95C60000 */   lhu   $a2, ($t6)
/* 01CC94 8001C094 00063023 */  negu  $a2, $a2
.L8001C098_ovl0:
/* 01CC98 8001C098 25020400 */  addiu $v0, $t0, 0x400
/* 01CC9C 8001C09C 305807FF */  andi  $t8, $v0, 0x7ff
/* 01CCA0 8001C0A0 0018C840 */  sll   $t9, $t8, 1
/* 01CCA4 8001C0A4 01997021 */  addu  $t6, $t4, $t9
/* 01CCA8 8001C0A8 304F0800 */  andi  $t7, $v0, 0x800
/* 01CCAC 8001C0AC 11E00002 */  beqz  $t7, .L8001C0B8_ovl0
/* 01CCB0 8001C0B0 95C30000 */   lhu   $v1, ($t6)
/* 01CCB4 8001C0B4 00031823 */  negu  $v1, $v1
.L8001C0B8_ovl0:
/* 01CCB8 8001C0B8 31290FFF */  andi  $t1, $t1, 0xfff
/* 01CCBC 8001C0BC 312AFFFF */  andi  $t2, $t1, 0xffff
/* 01CCC0 8001C0C0 315907FF */  andi  $t9, $t2, 0x7ff
/* 01CCC4 8001C0C4 00197040 */  sll   $t6, $t9, 1
/* 01CCC8 8001C0C8 018E7821 */  addu  $t7, $t4, $t6
/* 01CCCC 8001C0CC 31580800 */  andi  $t8, $t2, 0x800
/* 01CCD0 8001C0D0 13000002 */  beqz  $t8, .L8001C0DC_ovl0
/* 01CCD4 8001C0D4 95E20000 */   lhu   $v0, ($t7)
/* 01CCD8 8001C0D8 00021023 */  negu  $v0, $v0
.L8001C0DC_ovl0:
/* 01CCDC 8001C0DC 25480400 */  addiu $t0, $t2, 0x400
/* 01CCE0 8001C0E0 311907FF */  andi  $t9, $t0, 0x7ff
/* 01CCE4 8001C0E4 00197040 */  sll   $t6, $t9, 1
/* 01CCE8 8001C0E8 018E7821 */  addu  $t7, $t4, $t6
/* 01CCEC 8001C0EC 31180800 */  andi  $t8, $t0, 0x800
/* 01CCF0 8001C0F0 13000002 */  beqz  $t8, .L8001C0FC_ovl0
/* 01CCF4 8001C0F4 95EB0000 */   lhu   $t3, ($t7)
/* 01CCF8 8001C0F8 000B5823 */  negu  $t3, $t3
.L8001C0FC_ovl0:
/* 01CCFC 8001C0FC 006B0019 */  multu $v1, $t3
/* 01CD00 8001C100 3C10FFFF */  lui   $s0, 0xffff
/* 01CD04 8001C104 00065023 */  negu  $t2, $a2
/* 01CD08 8001C108 000A5040 */  sll   $t2, $t2, 1
/* 01CD0C 8001C10C 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 01CD10 8001C110 44810000 */  mtc1  $at, $f0
/* 01CD14 8001C114 00000000 */  nop   
/* 01CD18 8001C118 46007282 */  mul.s $f10, $f14, $f0
/* 01CD1C 8001C11C 00004012 */  mflo  $t0
/* 01CD20 8001C120 00084383 */  sra   $t0, $t0, 0xe
/* 01CD24 8001C124 0110C824 */  and   $t9, $t0, $s0
/* 01CD28 8001C128 00620019 */  multu $v1, $v0
/* 01CD2C 8001C12C 0008C400 */  sll   $t8, $t0, 0x10
/* 01CD30 8001C130 46006482 */  mul.s $f18, $f12, $f0
/* 01CD34 8001C134 4600540D */  trunc.w.s $f16, $f10
/* 01CD38 8001C138 4600910D */  trunc.w.s $f4, $f18
/* 01CD3C 8001C13C 00004812 */  mflo  $t1
/* 01CD40 8001C140 00094B83 */  sra   $t1, $t1, 0xe
/* 01CD44 8001C144 00097402 */  srl   $t6, $t1, 0x10
/* 01CD48 8001C148 00E60019 */  multu $a3, $a2
/* 01CD4C 8001C14C 032E7825 */  or    $t7, $t9, $t6
/* 01CD50 8001C150 3139FFFF */  andi  $t9, $t1, 0xffff
/* 01CD54 8001C154 03197025 */  or    $t6, $t8, $t9
/* 01CD58 8001C158 AC8F0000 */  sw    $t7, ($a0)
/* 01CD5C 8001C15C 01507824 */  and   $t7, $t2, $s0
/* 01CD60 8001C160 AC8F0004 */  sw    $t7, 4($a0)
/* 01CD64 8001C164 AC8E0020 */  sw    $t6, 0x20($a0)
/* 01CD68 8001C168 000AC400 */  sll   $t8, $t2, 0x10
/* 01CD6C 8001C16C AC980024 */  sw    $t8, 0x24($a0)
/* 01CD70 8001C170 00006012 */  mflo  $t4
/* 01CD74 8001C174 000C63C3 */  sra   $t4, $t4, 0xf
/* 01CD78 8001C178 00000000 */  nop   
/* 01CD7C 8001C17C 018B0019 */  multu $t4, $t3
/* 01CD80 8001C180 0000C812 */  mflo  $t9
/* 01CD84 8001C184 00197383 */  sra   $t6, $t9, 0xe
/* 01CD88 8001C188 00000000 */  nop   
/* 01CD8C 8001C18C 00A20019 */  multu $a1, $v0
/* 01CD90 8001C190 00007812 */  mflo  $t7
/* 01CD94 8001C194 000FC383 */  sra   $t8, $t7, 0xe
/* 01CD98 8001C198 01D86823 */  subu  $t5, $t6, $t8
/* 01CD9C 8001C19C 01820019 */  multu $t4, $v0
/* 01CDA0 8001C1A0 0000C812 */  mflo  $t9
/* 01CDA4 8001C1A4 00197B83 */  sra   $t7, $t9, 0xe
/* 01CDA8 8001C1A8 00000000 */  nop   
/* 01CDAC 8001C1AC 00AB0019 */  multu $a1, $t3
/* 01CDB0 8001C1B0 00007012 */  mflo  $t6
/* 01CDB4 8001C1B4 000EC383 */  sra   $t8, $t6, 0xe
/* 01CDB8 8001C1B8 01F8C821 */  addu  $t9, $t7, $t8
/* 01CDBC 8001C1BC 00E30019 */  multu $a3, $v1
/* 01CDC0 8001C1C0 00197402 */  srl   $t6, $t9, 0x10
/* 01CDC4 8001C1C4 01B07824 */  and   $t7, $t5, $s0
/* 01CDC8 8001C1C8 01EEC025 */  or    $t8, $t7, $t6
/* 01CDCC 8001C1CC AFB90008 */  sw    $t9, 8($sp)
/* 01CDD0 8001C1D0 AC980008 */  sw    $t8, 8($a0)
/* 01CDD4 8001C1D4 8FAF0008 */  lw    $t7, 8($sp)
/* 01CDD8 8001C1D8 000DCC00 */  sll   $t9, $t5, 0x10
/* 01CDDC 8001C1DC 31EEFFFF */  andi  $t6, $t7, 0xffff
/* 01CDE0 8001C1E0 00004012 */  mflo  $t0
/* 01CDE4 8001C1E4 032EC025 */  or    $t8, $t9, $t6
/* 01CDE8 8001C1E8 00084383 */  sra   $t0, $t0, 0xe
/* 01CDEC 8001C1EC 00A60019 */  multu $a1, $a2
/* 01CDF0 8001C1F0 01107824 */  and   $t7, $t0, $s0
/* 01CDF4 8001C1F4 AC8F000C */  sw    $t7, 0xc($a0)
/* 01CDF8 8001C1F8 AC980028 */  sw    $t8, 0x28($a0)
/* 01CDFC 8001C1FC 0008CC00 */  sll   $t9, $t0, 0x10
/* 01CE00 8001C200 AC99002C */  sw    $t9, 0x2c($a0)
/* 01CE04 8001C204 44062000 */  mfc1  $a2, $f4
/* 01CE08 8001C208 00004812 */  mflo  $t1
/* 01CE0C 8001C20C 00094BC3 */  sra   $t1, $t1, 0xf
/* 01CE10 8001C210 00000000 */  nop   
/* 01CE14 8001C214 012B0019 */  multu $t1, $t3
/* 01CE18 8001C218 00007012 */  mflo  $t6
/* 01CE1C 8001C21C 000EC383 */  sra   $t8, $t6, 0xe
/* 01CE20 8001C220 00000000 */  nop   
/* 01CE24 8001C224 00E20019 */  multu $a3, $v0
/* 01CE28 8001C228 00007812 */  mflo  $t7
/* 01CE2C 8001C22C 000FCB83 */  sra   $t9, $t7, 0xe
/* 01CE30 8001C230 03196021 */  addu  $t4, $t8, $t9
/* 01CE34 8001C234 01220019 */  multu $t1, $v0
/* 01CE38 8001C238 00007012 */  mflo  $t6
/* 01CE3C 8001C23C 000E7B83 */  sra   $t7, $t6, 0xe
/* 01CE40 8001C240 01907024 */  and   $t6, $t4, $s0
/* 01CE44 8001C244 00EB0019 */  multu $a3, $t3
/* 01CE48 8001C248 44078000 */  mfc1  $a3, $f16
/* 01CE4C 8001C24C 0000C012 */  mflo  $t8
/* 01CE50 8001C250 0018CB83 */  sra   $t9, $t8, 0xe
/* 01CE54 8001C254 01F95023 */  subu  $t2, $t7, $t9
/* 01CE58 8001C258 00A30019 */  multu $a1, $v1
/* 01CE5C 8001C25C 000AC402 */  srl   $t8, $t2, 0x10
/* 01CE60 8001C260 01D87825 */  or    $t7, $t6, $t8
/* 01CE64 8001C264 314EFFFF */  andi  $t6, $t2, 0xffff
/* 01CE68 8001C268 000CCC00 */  sll   $t9, $t4, 0x10
/* 01CE6C 8001C26C AC8F0010 */  sw    $t7, 0x10($a0)
/* 01CE70 8001C270 032EC025 */  or    $t8, $t9, $t6
/* 01CE74 8001C274 AC980030 */  sw    $t8, 0x30($a0)
/* 01CE78 8001C278 0007C400 */  sll   $t8, $a3, 0x10
/* 01CE7C 8001C27C 00001012 */  mflo  $v0
/* 01CE80 8001C280 00021383 */  sra   $v0, $v0, 0xe
/* 01CE84 8001C284 00507824 */  and   $t7, $v0, $s0
/* 01CE88 8001C288 0002CC00 */  sll   $t9, $v0, 0x10
/* 01CE8C 8001C28C AC8F0014 */  sw    $t7, 0x14($a0)
/* 01CE90 8001C290 AC990034 */  sw    $t9, 0x34($a0)
/* 01CE94 8001C294 0006CC02 */  srl   $t9, $a2, 0x10
/* 01CE98 8001C298 00F07824 */  and   $t7, $a3, $s0
/* 01CE9C 8001C29C 01F97025 */  or    $t6, $t7, $t9
/* 01CEA0 8001C2A0 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 01CEA4 8001C2A4 030FC825 */  or    $t9, $t8, $t7
/* 01CEA8 8001C2A8 AC8E0018 */  sw    $t6, 0x18($a0)
/* 01CEAC 8001C2AC AC990038 */  sw    $t9, 0x38($a0)
/* 01CEB0 8001C2B0 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 01CEB4 8001C2B4 46003202 */  mul.s $f8, $f6, $f0
/* 01CEB8 8001C2B8 4600428D */  trunc.w.s $f10, $f8
/* 01CEBC 8001C2BC 44085000 */  mfc1  $t0, $f10
/* 01CEC0 8001C2C0 00000000 */  nop   
/* 01CEC4 8001C2C4 0110C024 */  and   $t8, $t0, $s0
/* 01CEC8 8001C2C8 370F0001 */  ori   $t7, $t8, 1
/* 01CECC 8001C2CC 0008CC00 */  sll   $t9, $t0, 0x10
/* 01CED0 8001C2D0 AC8F001C */  sw    $t7, 0x1c($a0)
/* 01CED4 8001C2D4 AC99003C */  sw    $t9, 0x3c($a0)
/* 01CED8 8001C2D8 8FB00004 */  lw    $s0, 4($sp)
/* 01CEDC 8001C2DC 03E00008 */  jr    $ra
/* 01CEE0 8001C2E0 27BD0038 */   addiu $sp, $sp, 0x38
.type func_8001BFDC, @function
.size func_8001BFDC, . - func_8001BFDC
