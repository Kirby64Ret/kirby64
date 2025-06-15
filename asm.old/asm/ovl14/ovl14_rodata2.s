.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .rodata
.align 4

glabel D_801E30C0_ovl14
/* 205CB0 801E30C0 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30C4_ovl14
/* 205CB4 801E30C4 */ .word 0x3FC90FDB # invalid instruction

glabel D_801E30C8_ovl14
/* 205CB8 801E30C8 */ .word 0x3FC90FDB # invalid instruction

glabel D_801E30CC_ovl14
/* 205CBC 801E30CC */ .word 0x477FFF00 # invalid instruction

glabel D_801E30D0_ovl14
/* 205CC0 801E30D0 */ .word 0x410AAAAB # invalid instruction

glabel D_801E30D4_ovl14
/* 205CC4 801E30D4 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30D8_ovl14
/* 205CC8 801E30D8 */ .word 0xC10AAAAB

glabel D_801E30DC_ovl14
/* 205CCC 801E30DC */ .word 0x477FFF00 # invalid instruction

glabel D_801E30E0_ovl14
/* 205CD0 801E30E0 */ .word 0x3FCCCCCD # invalid instruction

glabel D_801E30E4_ovl14
/* 205CD4 801E30E4 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30E8_ovl14
/* 205CD8 801E30E8 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30EC_ovl14
/* 205CDC 801E30EC */ .word 0xC0638E39

glabel D_801E30F0_ovl14
/* 205CE0 801E30F0 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30F4_ovl14
/* 205CE4 801E30F4 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30F8_ovl14
/* 205CE8 801E30F8 */ .word 0x477FFF00 # invalid instruction

glabel D_801E30FC_ovl14
/* 205CEC 801E30FC */ .word 0x477FFF00 # invalid instruction

glabel D_801E3100_ovl14
/* 205CF0 801E3100 */ .word 0x40088889 # invalid instruction

glabel D_801E3104_ovl14
/* 205CF4 801E3104 */ .word 0xC0088889

glabel D_801E3108_ovl14
/* 205CF8 801E3108 */ .word 0xBF7DE261

glabel D_801E310C_ovl14
/* 205CFC 801E310C */ .word 0x4119999A # invalid instruction

glabel D_801E3110_ovl14
/* 205D00 801E3110 */ .word 0xBF266666

glabel D_801E3114_ovl14
/* 205D04 801E3114 */ .word 0xBF266666

glabel D_801E3118_ovl14
/* 205D08 801E3118 */ .word 0x41666667 # invalid instruction

glabel D_801E311C_ovl14
/* 205D0C 801E311C */ .word 0xBF266666

glabel D_801E3120_ovl14
/* 205D10 801E3120 */ .word 0xBF266666

glabel D_801E3124_ovl14
/* 205D14 801E3124 */ .word 0xBF266666

glabel D_801E3128_ovl14
/* 205D18 801E3128 */ .word 0xBF266666

glabel D_801E312C_ovl14
/* 205D1C 801E312C */ .word 0xBF799999

glabel D_801E3130_ovl14
/* 205D20 801E3130 */ .word 0xBEF99999

glabel D_801E3134_ovl14
/* 205D24 801E3134 */ .word 0xBF799999

glabel D_801E3138_ovl14
/* 205D28 801E3138 */ .word 0xBF799999

glabel D_801E313C_ovl14
/* 205D2C 801E313C */ .word 0x477FFF00 # invalid instruction

glabel D_801E3140_ovl14
/* 205D30 801E3140 */ .word 0xBECCCCCD

glabel D_801E3144_ovl14
/* 205D34 801E3144 */ .word 0x3F19999A # invalid instruction

glabel D_801E3148_ovl14
/* 205D38 801E3148 */ .word 0x477FFF00 # invalid instruction
.skip 4