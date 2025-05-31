OUTPUT_ARCH (mips)


/*TODO: put these segment defines in their own file */
#define BEGIN_SEG(name, addr) \
     _##name##SegmentStart = ADDR(.name); \
     _##name##SegmentRomStart = __romPos; \
     .name addr : AT(__romPos)

#define END_SEG(name) \
     _##name##SegmentEnd = ADDR(.name) + SIZEOF(.name); \
     _##name##SegmentRomEnd = __romPos + SIZEOF(.name); \
     __romPos += SIZEOF(.name);

SECTIONS
{
    __romPos = 0; /* TODO: do we even use this here? */

    #include "assets/bank0.ld"

    #include "assets/bank1.ld"

    #include "assets/bank2.ld"
    
    #include "assets/bank3.ld"

    #include "assets/bank4.ld"

    #include "assets/bank5.ld"

    #include "assets/bank6.ld"

    #include "assets/bank7.ld"

    /DISCARD/ :
    {
        *(*);
    }
}