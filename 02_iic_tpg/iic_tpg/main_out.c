#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <string.h>

int i2c_write(int fd, unsigned char addr, unsigned char reg, unsigned char value)
{
    struct i2c_rdwr_ioctl_data i2c_data = {0};
    struct i2c_msg data_msgs;
    unsigned char tbuf[2] = {0};

    tbuf[0] = reg;
    tbuf[1] = value;
    data_msgs.addr = addr >> 1;
    data_msgs.flags = 0;
    data_msgs.len = sizeof(tbuf);
    data_msgs.buf = tbuf;
    i2c_data.nmsgs = 1;
    i2c_data.msgs = &data_msgs;
    return ioctl(fd, I2C_RDWR, &i2c_data);
}

unsigned char i2c_read(int fd, unsigned char addr, unsigned short reg)
{
    struct i2c_rdwr_ioctl_data i2c_data = {0};
    struct i2c_msg data_msgs[2] = {{0}};
    int num = 0;
    unsigned char rbuf;
	unsigned char tbuf[1] = {0};

    data_msgs[0].addr = addr >> 1;
    data_msgs[0].flags = 0;
    data_msgs[0].len = 2;
	data_msgs[0].buf = tbuf;
    data_msgs[0].buf[0] = reg;

    data_msgs[1].addr = addr >> 1;
    data_msgs[1].flags = I2C_M_RD;
    data_msgs[1].len = 1;
    data_msgs[1].buf = &rbuf;
    i2c_data.nmsgs = 2;
    i2c_data.msgs = data_msgs;
	printf("read addr:0x%x, reg:0x%x\n", addr, reg);
    if (ioctl(fd, I2C_RDWR, &i2c_data) < 0) {
        printf("ioctl error\n");
        return -1;
    }
    return rbuf;
}
int i2c_write_buffer(int fd, unsigned char addr, unsigned char reg, unsigned char *buf, int len)
{
    struct i2c_rdwr_ioctl_data i2c_data = {0};
    struct i2c_msg data_msgs;
    unsigned char tbuf[256] = {0};

    tbuf[0] = reg;
    memcpy(&tbuf[1], buf, len);
    data_msgs.addr = addr >> 1;
    data_msgs.flags = 0;
    data_msgs.len = len + 1;
    data_msgs.buf = tbuf;
    i2c_data.nmsgs = 1;
    i2c_data.msgs = &data_msgs;
    return ioctl(fd, I2C_RDWR, &i2c_data);
}

//-----------------------------------------------------------------------------

uint8_t adv7611_io_map[][2] =
{
		{0xF4, 0x80 },	//CEC MAP
		{0xF5, 0x7C },	//INFOFRAME MAP
		{0xF8, 0x4C },	//DPLL MAP
		{0xF9, 0x64 },	//Repeater MAP
		{0xFA, 0x6C },	//EDID MAP
		{0xFB, 0x68 },	//HDMI MAP, address: 0x68
		{0xFD, 0x44 },	//CP MAP
		{0x01, 0x06 },	//prim_Mode =110b HDMI-GR
		{0x00, 0x19 },	//1920 ?????? 1200 @ 60
		{0x02, 0xf7 },	//Auto CSC, RGB out, op_656 b
		{0x03, 0x40 },	//24 bit SDR 444 Mode
		{0x05, 0x28 },	//AV Codes Off
		{0x06, 0xA6 },	//Invert VS,HS pins
		{0x0B, 0x44 },	//power-down control
		{0x0C, 0x42 },	//power-down control
		{0x14, 0x3F },	//drive strength
		{0x15, 0x80 },	//Tristate Pins
		{0x19, 0x98 },  //adjust dll phase
		{0x33, 0x40 },	//enable dll
		{0xff, 0xff }
};

uint8_t adv7611_hdmi_map[][2] =
{
		{0x9B, 0x03 },	//ADI recommended setting
		{0x00, 0x00 },	//Set HDMI Input Port A
		{0x03, 0x10 },	//Audio data width 16 bit
		{0x6D, 0x00 },	//Disable TDM Mode ##
		{0x83, 0xFE },	//Enable clock terminator
		{0x6F, 0x0C },	//ADI recommended setting
		{0x85, 0x1F },	//ADI recommended setting
		{0x87, 0x70 },	//ADI recommended setting
		{0x8D, 0x04 },	//LFG
		{0x8E, 0x1E },	//HFG
		{0x1A, 0x8A },	//unmute audio
		{0x57, 0xDA },	//ADI recommended setting
		{0x58, 0x01 },	//ADI recommended setting
		{0x75, 0x10 },	//DDC drive strength
		{0x90, 0x04 },	//LFG
		{0x91, 0x1E },	//HFG
		{0x9D, 0x02 },	//ADI Equaliser Setting
		{0xff, 0xff }
};

uint8_t adv7611_edid_map[][2] =
{
		{0x00, 0x00 },
		{0x01, 0xFF },
		{0x02, 0xFF },
		{0x03, 0xFF },
		{0x04, 0xFF },
		{0x05, 0xFF },
		{0x06, 0xFF },
		{0x07, 0x00 },
		{0x08, 0x06 },
		{0x09, 0x8F },
		{0x0A, 0x07 },
		{0x0B, 0x11 },
		{0x0C, 0x01 },
		{0x0D, 0x00 },
		{0x0E, 0x00 },
		{0x0F, 0x00 },
		{0x10, 0x17 },
		{0x11, 0x11 },
		{0x12, 0x01 },
		{0x13, 0x03 },
		{0x14, 0x80 },
		{0x15, 0x0C },
		{0x16, 0x09 },
		{0x17, 0x78 },
		{0x18, 0x0A },
		{0x19, 0x1E },
		{0x1A, 0xAC },
		{0x1B, 0x98 },
		{0x1C, 0x59 },
		{0x1D, 0x56 },
		{0x1E, 0x85 },
		{0x1F, 0x28 },
		{0x20, 0x29 },
		{0x21, 0x52 },
		{0x22, 0x57 },
		{0x23, 0x00 },
		{0x24, 0x00 },
		{0x25, 0x00 },
		{0x26, 0x01 },
		{0x27, 0x01 },
		{0x28, 0x01 },
		{0x29, 0x01 },
		{0x2A, 0x01 },
		{0x2B, 0x01 },
		{0x2C, 0x01 },
		{0x2D, 0x01 },
		{0x2E, 0x01 },
		{0x2F, 0x01 },
		{0x30, 0x01 },
		{0x31, 0x01 },
		{0x32, 0x01 },
		{0x33, 0x01 },
		{0x34, 0x01 },
		{0x35, 0x01 },
		{0x36, 0x8C },
		{0x37, 0x0A },
		{0x38, 0xD0 },
		{0x39, 0x8A },
		{0x3A, 0x20 },
		{0x3B, 0xE0 },
		{0x3C, 0x2D },
		{0x3D, 0x10 },
		{0x3E, 0x10 },
		{0x3F, 0x3E },
		{0x40, 0x96 },
		{0x41, 0x00 },
		{0x42, 0x81 },
		{0x43, 0x60 },
		{0x44, 0x00 },
		{0x45, 0x00 },
		{0x46, 0x00 },
		{0x47, 0x18 },
		{0x48, 0x01 },
		{0x49, 0x1D },
		{0x4A, 0x80 },
		{0x4B, 0x18 },
		{0x4C, 0x71 },
		{0x4D, 0x1C },
		{0x4E, 0x16 },
		{0x4F, 0x20 },
		{0x50, 0x58 },
		{0x51, 0x2C },
		{0x52, 0x25 },
		{0x53, 0x00 },
		{0x54, 0x81 },
		{0x55, 0x49 },
		{0x56, 0x00 },
		{0x57, 0x00 },
		{0x58, 0x00 },
		{0x59, 0x9E },
		{0x5A, 0x00 },
		{0x5B, 0x00 },
		{0x5C, 0x00 },
		{0x5D, 0xFC },
		{0x5E, 0x00 },
		{0x5F, 0x56 },
		{0x60, 0x41 },
		{0x61, 0x2D },
		{0x62, 0x31 },
		{0x63, 0x38 },
		{0x64, 0x30 },
		{0x65, 0x39 },
		{0x66, 0x41 },
		{0x67, 0x0A },
		{0x68, 0x20 },
		{0x69, 0x20 },
		{0x6A, 0x20 },
		{0x6B, 0x20 },
		{0x6C, 0x00 },
		{0x6D, 0x00 },
		{0x6E, 0x00 },
		{0x6F, 0xFD },
		{0x70, 0x00 },
		{0x71, 0x17 },
		{0x72, 0x3D },
		{0x73, 0x0D },
		{0x74, 0x2E },
		{0x75, 0x11 },
		{0x76, 0x00 },
		{0x77, 0x0A },
		{0x78, 0x20 },
		{0x79, 0x20 },
		{0x7A, 0x20 },
		{0x7B, 0x20 },
		{0x7C, 0x20 },
		{0x7D, 0x20 },
		{0x7E, 0x01 },
		{0x7F, 0x1C },
		{0x80, 0x02 },
		{0x81, 0x03 },
		{0x82, 0x34 },
		{0x83, 0x71 },
		{0x84, 0x4D },
		{0x85, 0x82 },
		{0x86, 0x05 },
		{0x87, 0x04 },
		{0x88, 0x01 },
		{0x89, 0x10 },
		{0x8A, 0x11 },
		{0x8B, 0x14 },
		{0x8C, 0x13 },
		{0x8D, 0x1F },
		{0x8E, 0x06 },
		{0x8F, 0x15 },
		{0x90, 0x03 },
		{0x91, 0x12 },
		{0x92, 0x35 },
		{0x93, 0x0F },
		{0x94, 0x7F },
		{0x95, 0x07 },
		{0x96, 0x17 },
		{0x97, 0x1F },
		{0x98, 0x38 },
		{0x99, 0x1F },
		{0x9A, 0x07 },
		{0x9B, 0x30 },
		{0x9C, 0x2F },
		{0x9D, 0x07 },
		{0x9E, 0x72 },
		{0x9F, 0x3F },
		{0xA0, 0x7F },
		{0xA1, 0x72 },
		{0xA2, 0x57 },
		{0xA3, 0x7F },
		{0xA4, 0x00 },
		{0xA5, 0x37 },
		{0xA6, 0x7F },
		{0xA7, 0x72 },
		{0xA8, 0x83 },
		{0xA9, 0x4F },
		{0xAA, 0x00 },
		{0xAB, 0x00 },
		{0xAC, 0x67 },
		{0xAD, 0x03 },
		{0xAE, 0x0C },
		{0xAF, 0x00 },
		{0xB0, 0x10 },
		{0xB1, 0x00 },
		{0xB2, 0x88 },
		{0xB3, 0x2D },
		{0xB4, 0x00 },
		{0xB5, 0x00 },
		{0xB6, 0x00 },
		{0xB7, 0xFF },
		{0xB8, 0x00 },
		{0xB9, 0x0A },
		{0xBA, 0x20 },
		{0xBB, 0x20 },
		{0xBC, 0x20 },
		{0xBD, 0x20 },
		{0xBE, 0x20 },
		{0xBF, 0x20 },
		{0xC0, 0x20 },
		{0xC1, 0x20 },
		{0xC2, 0x20 },
		{0xC3, 0x20 },
		{0xC4, 0x20 },
		{0xC5, 0x20 },
		{0xC6, 0x00 },
		{0xC7, 0x00 },
		{0xC8, 0x00 },
		{0xC9, 0xFF },
		{0xCA, 0x00 },
		{0xCB, 0x0A },
		{0xCC, 0x20 },
		{0xCD, 0x20 },
		{0xCE, 0x20 },
		{0xCF, 0x20 },
		{0xD0, 0x20 },
		{0xD1, 0x20 },
		{0xD2, 0x20 },
		{0xD3, 0x20 },
		{0xD4, 0x20 },
		{0xD5, 0x20 },
		{0xD6, 0x20 },
		{0xD7, 0x20 },
		{0xD8, 0x00 },
		{0xD9, 0x00 },
		{0xDA, 0x00 },
		{0xDB, 0xFF },
		{0xDC, 0x00 },
		{0xDD, 0x0A },
		{0xDE, 0x20 },
		{0xDF, 0x20 },
		{0xE0, 0x20 },
		{0xE1, 0x20 },
		{0xE2, 0x20 },
		{0xE3, 0x20 },
		{0xE4, 0x20 },
		{0xE5, 0x20 },
		{0xE6, 0x20 },
		{0xE7, 0x20 },
		{0xE8, 0x20 },
		{0xE9, 0x20 },
		{0xEA, 0x00 },
		{0xEB, 0x00 },
		{0xEC, 0x00 },
		{0xED, 0x00 },
		{0xEE, 0x00 },
		{0xEF, 0x00 },
		{0xF0, 0x00 },
		{0xF1, 0x00 },
		{0xF2, 0x00 },
		{0xF3, 0x00 },
		{0xF4, 0x00 },
		{0xF5, 0x00 },
		{0xF6, 0x00 },
		{0xF7, 0x00 },
		{0xF8, 0x00 },
		{0xF9, 0x00 },
		{0xFA, 0x00 },
		{0xFB, 0x00 },
		{0xFC, 0x00 },
		{0xFD, 0x00 },
		{0xFE, 0x00 },
		{0xFF, 0xDA },
		{0xff, 0xff }
};

//--------------------------------------------------------------------------------

uint8_t adv7511_init_data[][2] =
{
		{0x41, 0x00},  	//set bit 6 to 0 for power-up-power-down
		{0x98, 0x03},	//fixed setting
		{0x9a, 0xe0},	//fixed setting [7:5]-->0b111
		{0x9c, 0x30},	//fixed setting
		{0x9d, 0x61},	//fixed setting, [1:0]-->0b01
		{0xa2, 0xa4},	//fixed setting
		{0xa3, 0xa4},	//fixed setting
		{0xe0, 0xd0},	//fixed setting
		{0xf9, 0x00},	//This should be set to a non-conflicting I2C address (set to 0x00)
		{0x55, 0x12},
		{0x15, 0x00},
		{0x16, 0x00},
		{0xd0, 0x3c},
		{0xaf, 0x04},
		{0x4c, 0x04},
		{0x40, 0x00},
		{0xd6, 0xC0},	//HPD is always high
		{0xff, 0xff}
};

//-------------------------------------------------------------------------------------
void adv7511_init(int fd)
{
	for(int i=0;;i++)
	{
		if((adv7511_init_data[i][0] == 0xff) && (adv7511_init_data[i][1] == 0xff))
		{
			break;
		}
		i2c_write(fd, 0x72, (unsigned char)adv7511_init_data[i][0], (unsigned char)adv7511_init_data[i][1]);
	}
}



unsigned char hpd_check(int fd)
{
	unsigned char hpd_detect ;

	hpd_detect = i2c_read(fd, 0x72, 0x42);
	//xil_printf("HPD register value is 0x%x\r\n", hpd_detect);

	printf("hpd_detect:0x%x\n", hpd_detect);
	
	if (hpd_detect & 0x40)
		return 1 ;
	else
		return 0 ;
}
//-------------------------------------------------------------------------------------
void adv7611_init(int fd)
{
	//i2c reset
	i2c_write(fd, 0x98, 0xFF, 0x80);
    sleep(1) ;
	//adv7611 io map configurations
	for(int i=0;;i++)
	{
		if((adv7611_io_map[i][0] == 0xff) && (adv7611_io_map[i][1] == 0xff))
		{
			break;
		}
		i2c_write(fd, 0x98, (unsigned char)adv7611_io_map[i][0], (unsigned char)adv7611_io_map[i][1]);
	}


	//adv7611 hdmi map configurations
	for(int i=0;;i++)
	{
		if((adv7611_hdmi_map[i][0] == 0xff) && (adv7611_hdmi_map[i][1] == 0xff))
		{
			break;
		}
		i2c_write(fd, 0x68, (unsigned char)adv7611_hdmi_map[i][0], (unsigned char)adv7611_hdmi_map[i][1]);
	}

	//Set HDMI FreeRun
	i2c_write(fd, 0x44, 0xBA, 0x01 );

	//adv7611 hdmi map configurations
	for(int i=0;;i++)
	{
		if((adv7611_edid_map[i][0] == 0xff) && (adv7611_edid_map[i][1] == 0xff))
		{
			break;
		}
		i2c_write(fd, 0x6C, (unsigned char)adv7611_edid_map[i][0], (unsigned char)adv7611_edid_map[i][1]);
	}
}
//-------------------------------------------------------------------------------------------



int main(int argc, char *argv[])
{
	int Status;

    int fd_0 = open(argv[1], O_RDWR);
    if (fd_0 < 0) {
        printf("open %s error\n", argv[1]);
        return -1;
    }

	int fd_1 = open(argv[2], O_RDWR);
    if (fd_1 < 0) {
        printf("open %s error\n", argv[2]);
        return -1;
    }

	adv7611_init(fd_1);

	while(1){

		Status = hpd_check(fd_0) ;
		if (Status){
			printf("Hot plug detected\r\n");
			adv7511_init(fd_0) ;
			break;
		}
		sleep(1);
	};

    close(fd_0);
	close(fd_1);
    return 0;
}