#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c"
#pragma line 16 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c"
#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h" 1
#pragma line 17 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h"
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 150 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef long int ptrdiff_t;
#pragma line 212 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef long unsigned int size_t;
#pragma line 324 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef int wchar_t;
#pragma line 18 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h" 2
#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtwtypes.h" 1
#pragma line 33 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtwtypes.h"
typedef signed char int8_T;
typedef unsigned char uint8_T;
typedef short int16_T;
typedef unsigned short uint16_T;
typedef int int32_T;
typedef unsigned int uint32_T;
typedef long int64_T;
typedef unsigned long uint64_T;
typedef float real32_T;
typedef double real64_T;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned long ulong_T;
typedef unsigned long long ulonglong_T;
typedef char char_T;
typedef char_T byte_T;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct {
  real32_T re;
  real32_T im;
} creal32_T;
#pragma empty_line
typedef struct {
  real64_T re;
  real64_T im;
} creal64_T;
#pragma empty_line
typedef struct {
  real_T re;
  real_T im;
} creal_T;
#pragma empty_line
typedef struct {
  int8_T re;
  int8_T im;
} cint8_T;
#pragma empty_line
typedef struct {
  uint8_T re;
  uint8_T im;
} cuint8_T;
#pragma empty_line
typedef struct {
  int16_T re;
  int16_T im;
} cint16_T;
#pragma empty_line
typedef struct {
  uint16_T re;
  uint16_T im;
} cuint16_T;
#pragma empty_line
typedef struct {
  int32_T re;
  int32_T im;
} cint32_T;
#pragma empty_line
typedef struct {
  uint32_T re;
  uint32_T im;
} cuint32_T;
#pragma empty_line
typedef struct {
  int64_T re;
  int64_T im;
} cint64_T;
#pragma empty_line
typedef struct {
  uint64_T re;
  uint64_T im;
} cuint64_T;
#pragma line 19 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h" 2
#pragma empty_line
extern real_T rtInf;
extern real_T rtMinusInf;
extern real_T rtNaN;
extern real32_T rtInfF;
extern real32_T rtMinusInfF;
extern real32_T rtNaNF;
extern void rt_InitInfAndNaN(size_t realSize);
extern boolean_T rtIsInf(real_T value);
extern boolean_T rtIsInfF(real32_T value);
extern boolean_T rtIsNaN(real_T value);
extern boolean_T rtIsNaNF(real32_T value);
typedef struct {
  struct {
    uint32_T wordH;
    uint32_T wordL;
  } words;
} BigEndianIEEEDouble;
#pragma empty_line
typedef struct {
  struct {
    uint32_T wordL;
    uint32_T wordH;
  } words;
} LittleEndianIEEEDouble;
#pragma empty_line
typedef struct {
  union {
    real32_T wordLreal;
    uint32_T wordLuint;
  } wordL;
} IEEESingle;
#pragma line 17 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c" 2
#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 1
#pragma line 13 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h"
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 14 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern real_T rtGetNaN(void);
extern real32_T rtGetNaNF(void);
#pragma line 18 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c" 2
#pragma line 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetInf.h" 1
#pragma line 13 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetInf.h"
#pragma line 1 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
#pragma line 14 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetInf.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern real_T rtGetInf(void);
extern real32_T rtGetInfF(void);
extern real_T rtGetMinusInf(void);
extern real32_T rtGetMinusInfF(void);
#pragma line 19 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.c" 2
#pragma empty_line
real_T rtInf;
real_T rtMinusInf;
real_T rtNaN;
real32_T rtInfF;
real32_T rtMinusInfF;
real32_T rtNaNF;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void rt_InitInfAndNaN(size_t realSize)
{
  (void) (realSize);
  rtNaN = rtGetNaN();
  rtNaNF = rtGetNaNF();
  rtInf = rtGetInf();
  rtInfF = rtGetInfF();
  rtMinusInf = rtGetMinusInf();
  rtMinusInfF = rtGetMinusInfF();
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
boolean_T rtIsInf(real_T value)
{
  return ((value==rtInf || value==rtMinusInf) ? 1U : 0U);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
boolean_T rtIsInfF(real32_T value)
{
  return(((value)==rtInfF || (value)==rtMinusInfF) ? 1U : 0U);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
boolean_T rtIsNaN(real_T value)
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  return (value!=value)? 1U:0U;
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
boolean_T rtIsNaNF(real32_T value)
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  return (value!=value)? 1U:0U;
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
