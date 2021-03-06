# 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.c"
# 15 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.c"
# 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 1
# 13 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h"
# 1 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
# 150 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 3 4
typedef int wchar_t;
# 14 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 2
# 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtwtypes.h" 1
# 33 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtwtypes.h"
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





typedef double real_T;
typedef double time_T;
typedef unsigned char boolean_T;
typedef int int_T;
typedef unsigned int uint_T;
typedef unsigned long ulong_T;
typedef unsigned long long ulonglong_T;
typedef char char_T;
typedef char_T byte_T;






typedef struct {
  real32_T re;
  real32_T im;
} creal32_T;

typedef struct {
  real64_T re;
  real64_T im;
} creal64_T;

typedef struct {
  real_T re;
  real_T im;
} creal_T;

typedef struct {
  int8_T re;
  int8_T im;
} cint8_T;

typedef struct {
  uint8_T re;
  uint8_T im;
} cuint8_T;

typedef struct {
  int16_T re;
  int16_T im;
} cint16_T;

typedef struct {
  uint16_T re;
  uint16_T im;
} cuint16_T;

typedef struct {
  int32_T re;
  int32_T im;
} cint32_T;

typedef struct {
  uint32_T re;
  uint32_T im;
} cuint32_T;

typedef struct {
  int64_T re;
  int64_T im;
} cint64_T;

typedef struct {
  uint64_T re;
  uint64_T im;
} cuint64_T;
# 15 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 2
# 1 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h" 1
# 17 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h"
# 1 "/opt/Xilinx/Vivado_HLS/2016.1/lnx64/tools/gcc/bin/../lib/gcc/x86_64-unknown-linux-gnu/4.6.3/include/stddef.h" 1 3 4
# 18 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rt_nonfinite.h" 2


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

typedef struct {
  struct {
    uint32_T wordL;
    uint32_T wordH;
  } words;
} LittleEndianIEEEDouble;

typedef struct {
  union {
    real32_T wordLreal;
    uint32_T wordLuint;
  } wordL;
} IEEESingle;
# 16 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.h" 2

extern real_T rtGetNaN(void);
extern real32_T rtGetNaNF(void);
# 16 "/home/vipinsoni/MTP/my_vivado_folder/multiplication/rtGetNaN.c" 2







real_T rtGetNaN(void)
{
  size_t bitsPerReal = sizeof(real_T) * (8U);
  real_T nan = 0.0;
  if (bitsPerReal == 32U) {
    nan = rtGetNaNF();
  } else {
    uint16_T one = 1U;
    enum {
      LittleEndian,
      BigEndian
    } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
    switch (machByteOrder) {
     case LittleEndian:
      {
        union {
          LittleEndianIEEEDouble bitVal;
          real_T fltVal;
        } tmpVal;

        tmpVal.bitVal.words.wordH = 0xFFF80000U;
        tmpVal.bitVal.words.wordL = 0x00000000U;
        nan = tmpVal.fltVal;
        break;
      }

     case BigEndian:
      {
        union {
          BigEndianIEEEDouble bitVal;
          real_T fltVal;
        } tmpVal;

        tmpVal.bitVal.words.wordH = 0x7FFFFFFFU;
        tmpVal.bitVal.words.wordL = 0xFFFFFFFFU;
        nan = tmpVal.fltVal;
        break;
      }
    }
  }

  return nan;
}






real32_T rtGetNaNF(void)
{
  IEEESingle nanF = { { 0 } };

  uint16_T one = 1U;
  enum {
    LittleEndian,
    BigEndian
  } machByteOrder = (*((uint8_T *) &one) == 1U) ? LittleEndian : BigEndian;
  switch (machByteOrder) {
   case LittleEndian:
    {
      nanF.wordL.wordLuint = 0xFFC00000U;
      break;
    }

   case BigEndian:
    {
      nanF.wordL.wordLuint = 0x7FFFFFFFU;
      break;
    }
  }

  return nanF.wordL.wordLreal;
}
