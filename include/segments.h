#ifndef SEGMENTS_H
#define SEGMENTS_H

#define EXTERN_OVERLAY(nm) \
    extern u8 _ ## nm ## SegmentRomStart[];\
    extern u8 _ ## nm ## SegmentRomEnd[];\
    extern u8 _ ## nm ## SegmentStart[];\
    extern u8 _ ## nm ## SegmentEnd[];\
    extern u8 _ ## nm ## DataSegmentStart[];\
    extern u8 _ ## nm ## DataSegmentEnd[];\
    extern u8 _ ## nm ## DataSegmentRomEnd[];\
    extern u8 _ ## nm ## SegNoloadStart[];\
    extern u8 _ ## nm ## SegNoloadEnd[]

EXTERN_OVERLAY(ovl1);
EXTERN_OVERLAY(ovl2);
EXTERN_OVERLAY(ovl3);
EXTERN_OVERLAY(ovl4);
EXTERN_OVERLAY(ovl5);
EXTERN_OVERLAY(ovl6);
EXTERN_OVERLAY(ovl7);
EXTERN_OVERLAY(ovl8);
EXTERN_OVERLAY(ovl9);
EXTERN_OVERLAY(ovl10);
EXTERN_OVERLAY(ovl11);
EXTERN_OVERLAY(ovl12);
EXTERN_OVERLAY(ovl13);
EXTERN_OVERLAY(ovl14);
EXTERN_OVERLAY(ovl15);
EXTERN_OVERLAY(ovl16);
EXTERN_OVERLAY(ovl17);
EXTERN_OVERLAY(ovl18);
EXTERN_OVERLAY(ovl19);
EXTERN_OVERLAY(ovl20);


#define EXTERN_OVERLAY_SPLAT(nm) \
    extern u8 nm ## _ROM_START[];\
    extern u8 nm ## _ROM_END[];\
    extern u8 nm ## _VRAM[];\
    extern u8 nm ## _TEXT_START[];\
    extern u8 nm ## _TEXT_END[];\
    extern u8 nm ## _DATA_START[];\
    extern u8 nm ## _RODATA_END[];\
    extern u8 nm ## _BSS_START[];\
    extern u8 nm ## _BSS_END[]

EXTERN_OVERLAY_SPLAT(ovl1);
EXTERN_OVERLAY_SPLAT(ovl2);
EXTERN_OVERLAY_SPLAT(ovl3);
EXTERN_OVERLAY_SPLAT(ovl4);
EXTERN_OVERLAY_SPLAT(ovl5);
EXTERN_OVERLAY_SPLAT(ovl6);
EXTERN_OVERLAY_SPLAT(ovl7);
EXTERN_OVERLAY_SPLAT(ovl8);
EXTERN_OVERLAY_SPLAT(ovl9);
EXTERN_OVERLAY_SPLAT(ovl10);
EXTERN_OVERLAY_SPLAT(ovl11);
EXTERN_OVERLAY_SPLAT(ovl12);
EXTERN_OVERLAY_SPLAT(ovl13);
EXTERN_OVERLAY_SPLAT(ovl14);
EXTERN_OVERLAY_SPLAT(ovl15);
EXTERN_OVERLAY_SPLAT(ovl16);
EXTERN_OVERLAY_SPLAT(ovl17);
EXTERN_OVERLAY_SPLAT(ovl18);
EXTERN_OVERLAY_SPLAT(ovl19);
EXTERN_OVERLAY_SPLAT(ovl20);

#define OVERLAY(nm) {\
    nm ## _ROM_START, \
    nm ## _ROM_END, \
    nm ## _VRAM, \
    nm ## _TEXT_START, \
    nm ## _TEXT_END, \
    nm ## _DATA_START, \
    nm ## _RODATA_END, \
    nm ## _BSS_START, \
    nm ## _BSS_END, \
}

extern u8 _data_250320SegmentRomStart[];
extern u8 _data_2A8CB0SegmentRomStart[];
extern u8 _data_2B1510SegmentRomStart[];
extern u8 _data_3E1400SegmentRomStart[];
extern u8 _data_3E6BC0SegmentRomStart[];
extern u8 _data_49F590SegmentRomStart[];
extern u8 _data_4A0340SegmentRomStart[];
extern u8 _data_4A3B60SegmentRomStart[];
extern u8 _data_4AA8F0SegmentRomStart[];
extern u8 _data_1116010SegmentRomStart[];

extern u8 _data_250320SegmentRomEnd[];
extern u8 _data_2A8CB0SegmentRomEnd[];
extern u8 _data_2B1510SegmentRomEnd[];
extern u8 _data_3E1400SegmentRomEnd[];
extern u8 _data_3E6BC0SegmentRomEnd[];
extern u8 _data_49F590SegmentRomEnd[];
extern u8 _data_4A0340SegmentRomEnd[];
extern u8 _data_4A3B60SegmentRomEnd[];
extern u8 _data_4AA8F0SegmentRomEnd[];

#endif // SEGMENTS_H
