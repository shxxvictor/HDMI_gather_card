#ifndef _V_TPG_H_
#define _V_TPG_H_

//#include "hls_video.h"
#include "hls_video.h"
#include "ap_int.h"

typedef unsigned char      U8;
typedef unsigned short     U16;
typedef unsigned int       U32;

typedef signed char        I8;
typedef signed short       I16;
typedef signed int         I32;
//Signed arbitrary precision types
typedef ap_int<11>         I11;

#define Y_CH                   (0)
#define U_CH                   (1)
#define V_CH                   (2)

//Maximum Image Size
#define HSC_MAX_WIDTH          (8192)
#define HSC_MAX_HEIGHT         (3840)

const U8 colorRgb = 0;
const U8 color444 = 1;
const U8 color422 = 2;
const U8 color420 = 3;


#define NUM_BARS   8

//File I/O
#define SRC_IMAGE            "tpg_1920x1080"


#define CLAMP(a,lo,hi)       ((a)<(lo)?(lo) : ((a)>(hi) ? (hi) : (a)))

typedef ap_uint<BITS_PER_COMPONENT>                       								PIXEL_TYPE;
typedef hls::Scalar<NR_COMPONENTS, PIXEL_TYPE >     									YUV_PIXEL;
typedef hls::Scalar<NR_COMPONENTS*SAMPLES_PER_CLOCK, PIXEL_TYPE >						YUV_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE > 													Y_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE >  									Y_MULTI_PIXEL;
typedef hls::Scalar<1, PIXEL_TYPE> 														C_PIXEL;
typedef hls::Scalar<SAMPLES_PER_CLOCK, PIXEL_TYPE >  									C_MULTI_PIXEL;
typedef ap_uint<SAMPLES_PER_CLOCK*BITS_PER_COMPONENT>   								Y_MEM_PIXEL_TYPE;
typedef ap_uint<SAMPLES_PER_CLOCK*BITS_PER_COMPONENT>   								C_MEM_PIXEL_TYPE;


//Define double Pixel format

//Define quad pixel format
typedef struct
{
    U16 y;
    U16 u;
    U16 v;
} YUV3;

typedef struct
{
    U16 r;
    U16 g;
    U16 b;
} RGB3;

typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >              HSC_AXI_STREAM_IN;
typedef hls::stream<ap_axiu<BITS_PER_CLOCK,1,1,1> >              HSC_AXI_STREAM_OUT;
typedef hls::Mat<HSC_MAX_HEIGHT, HSC_MAX_WIDTH, HLS_8UC3>    		 HSC_YUV_IMAGE;
typedef HSC_YUV_IMAGE                                        			 HSC_RGB_IMAGE;
typedef hls::stream<YUV_MULTI_PIXEL>                      			     HSC_STREAM_MULTIPIX;


// top level function for HW synthesis
extern void v_tpg(
#if (ENABLE_AXI4S_SLAVE==1)
				HSC_AXI_STREAM_IN& hinput,
#endif
                U16 &height,
                U16 &width,
				U16 &field_id,
				bool &fid_in,
#if (ENABLE_AXI4S_SLAVE==1)
                U16 &passthruStartX,
                U16 &passthruStartY,
                U16 &passthruEndX,
                U16 &passthruEndY,
				U8  &enableInput,
#endif
                U8  &bckgndId,
                U8  &ovrlayId,
                U8 	&maskId,
                U8  &motionSpeed,
                U8  &colorFormat,
                U16 &crossHairX,
                U16 &crossHairY,
                U16 &ZplateHorContStart,
                U16 &ZplateHorContDelta,
                U16 &ZplateVerContStart,
                U16 &ZplateVerContDelta,
                U16 &boxSize,
                U16 &boxColorR,
                U16 &boxColorG,
                U16 &boxColorB,
			    U8  &dpDynamicRange,
			    U8  &dpYUVCoef,
				U16 &bck_motion_en,
                HSC_AXI_STREAM_OUT& houtput,
				bool& fid
                );

#endif
