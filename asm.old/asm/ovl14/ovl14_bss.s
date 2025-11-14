.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .bss
.align 4


glabel D_801E3150_ovl14
.skip 4
glabel D_801E3154_ovl14
.skip 4
glabel D_801E3158_ovl14
.skip 4
glabel D_801E315C_ovl14
.skip 4