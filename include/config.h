#ifndef CONFIG_H
#define CONFIG_H

/**
 * @file config.h
 * A catch-all file for configuring various bugfixes and other settings in MK64
 */

// Screen Size Defines
#define SCREEN_WIDTH (320)
#define SCREEN_HEIGHT (240)

// Screen Border Defines
#define SCREEN_BORDER_HEIGHT (5)

// Number of framebuffers
#define NUM_CFBs (3)

//---------------------------
// DERIVED VALUES
//---------------------------

#define CFB_WIDTH (SCREEN_WIDTH)
#define CFB_HEIGHT ((SCREEN_HEIGHT) - (SCREEN_BORDER_HEIGHT * 2))

#endif
