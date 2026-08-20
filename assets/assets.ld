OUTPUT_ARCH (mips)

SECTIONS
{
    .data 0 : AT(.) {
        #include "assets/bank0.ld"

        #include "assets/bank1.ld"

        #include "assets/bank2.ld"
        
        #include "assets/bank3.ld"

        #include "assets/bank4.ld"

        #include "assets/bank5.ld"

        #include "assets/bank6.ld"

        #include "assets/bank7.ld"
    }

    /DISCARD/ :
    {
        *(*);
    }
}