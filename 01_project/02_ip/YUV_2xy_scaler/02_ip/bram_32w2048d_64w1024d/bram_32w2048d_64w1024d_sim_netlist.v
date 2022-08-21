// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Tue Jun 21 14:30:54 2022
// Host        : dynasty-MS-7C94 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /vic_lib/vic_ip/YUV_2xy_scaler/02_ip/bram_32w2048d_64w1024d/bram_32w2048d_64w1024d_sim_netlist.v
// Design      : bram_32w2048d_64w1024d
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu4ev-sfvc784-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram_32w2048d_64w1024d,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module bram_32w2048d_64w1024d
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [63:0]doutb;

  wire [10:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.322178 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram_32w2048d_64w1024d.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "64" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "64" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bram_32w2048d_64w1024d_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51920)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
