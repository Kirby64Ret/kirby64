.include "macro.inc"

.section .text, "ax"

nonmatching n_aspMainTextStart, 0xC60

glabel n_aspMainTextStart
.incbin "assets/main/n_aspMain.textbin.bin"
.size n_aspMainTextStart, . - n_aspMainTextStart
endlabel n_aspMainTextStart
