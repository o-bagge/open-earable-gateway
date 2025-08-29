#ifndef _NCS_VERSION_H_
#define _NCS_VERSION_H_

/* The template values come from cmake/version.cmake
 * BUILD_VERSION related template values will be 'git describe',
 * alternatively user defined BUILD_VERSION.
 */

/* #undef ZEPHYR_VERSION_CODE */
/* #undef ZEPHYR_VERSION */

#define NCSVERSION                   
#define NCS_VERSION_NUMBER           0x30001
#define NCS_VERSION_MAJOR            3
#define NCS_VERSION_MINOR            0
#define NCS_PATCHLEVEL               1
#define NCS_TWEAK                    
#define NCS_VERSION_STRING           "3.0.1"
#define NCS_VERSION_EXTENDED_STRING  ""
#define NCS_VERSION_TWEAK_STRING     ""

#define NCS_BUILD_VERSION v3.0.0-7-g9eb5615da66b


#endif /* _NCS_VERSION_H_ */
