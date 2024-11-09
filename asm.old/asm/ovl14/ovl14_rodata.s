.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .late_rodata
glabel D_801E30A0_ovl14
/* 205C90 801E30A0 */ .word 0x3EA15B8A # invalid instruction

glabel D_801E30A4_ovl14
/* 205C94 801E30A4 */ .word 0x4049B26D # invalid instruction

glabel D_801E30A8_ovl14
/* 205C98 801E30A8 */ .word 0xBEA15B8A

glabel D_801E30AC_ovl14
/* 205C9C 801E30AC */ .word 0x3D4CCCCD # invalid instruction

glabel D_801E30B0_ovl14
/* 205CA0 801E30B0 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30B4_ovl14
/* 205CA4 801E30B4 */ .word 0x3E9E8E0A # invalid instruction

glabel D_801E30B8_ovl14
/* 205CA8 801E30B8 */ .word 0x4046318C # invalid instruction

glabel D_801E30BC_ovl14
/* 205CAC 801E30BC */ .word 0xBE9E8E0A


