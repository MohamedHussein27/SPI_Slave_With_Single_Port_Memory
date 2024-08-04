// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Aug  3 16:48:26 2024
// Host        : Mohamed running 64-bit major release  (build 9200)
// Command     : write_verilog {D:/Personal
//               Courses/Kareem_Waseem_Diploma/projects/SPI_Interface/Netlist_File/SPI_Interface_netlist.v}
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    MISO_reg,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[8] ,
    rst_n,
    Q,
    WEA,
    tx_valid_reg_0,
    \counter2_reg[2] ,
    \counter2_reg[1] ,
    \counter2_reg[0] ,
    E,
    rx_valid_reg);
  output tx_valid;
  output MISO_reg;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[8] ;
  input rst_n;
  input [7:0]Q;
  input [0:0]WEA;
  input tx_valid_reg_0;
  input \counter2_reg[2] ;
  input \counter2_reg[1] ;
  input \counter2_reg[0] ;
  input [0:0]E;
  input [0:0]rx_valid_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [7:0]addr_re;
  wire [7:0]addr_wr;
  wire \counter2_reg[0] ;
  wire \counter2_reg[1] ;
  wire \counter2_reg[2] ;
  wire rst_n;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire [0:0]rx_valid_reg;
  wire tx_valid;
  wire tx_valid_reg_0;
  wire [7:0]txdata;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_3
       (.I0(txdata[3]),
        .I1(txdata[2]),
        .I2(\counter2_reg[1] ),
        .I3(txdata[1]),
        .I4(\counter2_reg[0] ),
        .I5(txdata[0]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    MISO_i_4
       (.I0(txdata[7]),
        .I1(txdata[6]),
        .I2(\counter2_reg[1] ),
        .I3(txdata[5]),
        .I4(\counter2_reg[0] ),
        .I5(txdata[4]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(\counter2_reg[2] ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[0] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[0]),
        .Q(addr_re[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[1] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[1]),
        .Q(addr_re[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[2] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[2]),
        .Q(addr_re[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[3] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[3]),
        .Q(addr_re[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[4] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[4]),
        .Q(addr_re[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[5] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[5]),
        .Q(addr_re[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[6] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[6]),
        .Q(addr_re[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_re_reg[7] 
       (.C(CLK),
        .CE(rx_valid_reg),
        .D(Q[7]),
        .Q(addr_re[7]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(addr_wr[0]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(addr_wr[1]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(addr_wr[2]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(addr_wr[3]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(addr_wr[4]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(addr_wr[5]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(addr_wr[6]),
        .R(rst_n));
  FDRE #(
    .INIT(1'b0)) 
    \addr_wr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(addr_wr[7]),
        .R(rst_n));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "memory" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    memory_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,addr_wr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,addr_re,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(txdata),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(rst_n),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_valid_reg_0),
        .Q(tx_valid),
        .R(\<const0> ));
endmodule

module SPI_SLAVE
   (MISO_OBUF,
    \rx_data_reg[0]_0 ,
    WEA,
    Q,
    E,
    \addr_re_reg[7] ,
    \counter2_reg[2]_0 ,
    \counter2_reg[2]_1 ,
    \counter2_reg[2]_2 ,
    tx_valid_reg,
    memory_reg,
    \counter2_reg[2]_3 ,
    CLK,
    MOSI_IBUF,
    ss_n_IBUF,
    tx_valid,
    rst_n_IBUF);
  output MISO_OBUF;
  output \rx_data_reg[0]_0 ;
  output [0:0]WEA;
  output [7:0]Q;
  output [0:0]E;
  output [0:0]\addr_re_reg[7] ;
  output \counter2_reg[2]_0 ;
  output \counter2_reg[2]_1 ;
  output \counter2_reg[2]_2 ;
  output tx_valid_reg;
  output memory_reg;
  input \counter2_reg[2]_3 ;
  input CLK;
  input MOSI_IBUF;
  input ss_n_IBUF;
  input tx_valid;
  input rst_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire ADD_DATA_checker_i_1_n_0;
  wire ADD_DATA_checker_i_2_n_0;
  wire ADD_DATA_checker_reg_n_0;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_cs[2]_i_1_n_0 ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [0:0]\addr_re_reg[7] ;
  wire [9:0]bus;
  wire \bus[9]_i_2_n_0 ;
  wire [3:0]counter1;
  wire \counter1[0]_i_1_n_0 ;
  wire \counter1[1]_i_1_n_0 ;
  wire \counter1[1]_i_2_n_0 ;
  wire \counter1[2]_i_1_n_0 ;
  wire \counter1[2]_i_2_n_0 ;
  wire \counter1[3]_i_1_n_0 ;
  wire \counter1[3]_i_2_n_0 ;
  wire \counter1[3]_i_3_n_0 ;
  wire \counter1[3]_i_4_n_0 ;
  wire \counter2[0]_i_1_n_0 ;
  wire \counter2[1]_i_1_n_0 ;
  wire \counter2[2]_i_1_n_0 ;
  wire \counter2[2]_i_2_n_0 ;
  wire \counter2_reg[2]_0 ;
  wire \counter2_reg[2]_1 ;
  wire \counter2_reg[2]_2 ;
  wire \counter2_reg[2]_3 ;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire memory_reg;
  wire [2:2]ns;
  wire [9:0]p_0_in;
  wire rst_n_IBUF;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data_reg[0]_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire [9:8]rxdata;
  wire ss_n_IBUF;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hBFFFBFFF00FF0000)) 
    ADD_DATA_checker_i_1
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(\counter1[1]_i_2_n_0 ),
        .I3(cs[0]),
        .I4(ADD_DATA_checker_i_2_n_0),
        .I5(ADD_DATA_checker_reg_n_0),
        .O(ADD_DATA_checker_i_1_n_0));
  LUT5 #(
    .INIT(32'h40000000)) 
    ADD_DATA_checker_i_2
       (.I0(cs[1]),
        .I1(\counter2_reg[2]_0 ),
        .I2(\counter2_reg[2]_1 ),
        .I3(\counter2_reg[2]_2 ),
        .I4(cs[2]),
        .O(ADD_DATA_checker_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    ADD_DATA_checker_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(ADD_DATA_checker_i_1_n_0),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(ADD_DATA_checker_reg_n_0));
  LUT6 #(
    .INIT(64'hFB33C80000000000)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[0]),
        .I4(\FSM_sequential_cs[0]_i_2_n_0 ),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000074443333)) 
    \FSM_sequential_cs[0]_i_2 
       (.I0(\counter1[1]_i_2_n_0 ),
        .I1(cs[1]),
        .I2(MOSI_IBUF),
        .I3(ADD_DATA_checker_reg_n_0),
        .I4(cs[0]),
        .I5(ss_n_IBUF),
        .O(\FSM_sequential_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFB33C80000000000)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(\FSM_sequential_cs[1]_i_2_n_0 ),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000074447474)) 
    \FSM_sequential_cs[1]_i_2 
       (.I0(\counter1[1]_i_2_n_0 ),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(ADD_DATA_checker_reg_n_0),
        .I4(MOSI_IBUF),
        .I5(ss_n_IBUF),
        .O(\FSM_sequential_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF37C80000000000)) 
    \FSM_sequential_cs[2]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[2]),
        .I4(ns),
        .I5(rst_n_IBUF),
        .O(\FSM_sequential_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00AA00AA00AE00AA)) 
    \FSM_sequential_cs[2]_i_2 
       (.I0(cs[2]),
        .I1(MOSI_IBUF),
        .I2(ADD_DATA_checker_reg_n_0),
        .I3(ss_n_IBUF),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(ns));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs[0]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_cs[1]_i_1_n_0 ),
        .Q(cs[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:010,READ_ADD:011,READ_DATA:100,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_sequential_cs[2]_i_1_n_0 ),
        .Q(cs[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h1000)) 
    MISO_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(tx_valid),
        .I3(cs[2]),
        .O(MISO_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter2_reg[2]_3 ),
        .Q(MISO_OBUF));
  VCC VCC
       (.P(\<const1> ));
  LUT3 #(
    .INIT(8'h20)) 
    \addr_re[7]_i_1 
       (.I0(rx_valid),
        .I1(rxdata[8]),
        .I2(rxdata[9]),
        .O(\addr_re_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \addr_wr[7]_i_1 
       (.I0(rx_valid),
        .I1(rxdata[9]),
        .I2(rxdata[8]),
        .O(E));
  LUT5 #(
    .INIT(32'h00000001)) 
    \bus[0]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bus[1]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \bus[2]_i_1 
       (.I0(counter1[0]),
        .I1(counter1[1]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bus[3]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \bus[4]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bus[5]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bus[6]_i_1 
       (.I0(counter1[0]),
        .I1(counter1[1]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \bus[7]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[3]),
        .I3(counter1[2]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \bus[8]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[2]),
        .I3(counter1[3]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h00000400)) 
    \bus[9]_i_1 
       (.I0(counter1[1]),
        .I1(counter1[0]),
        .I2(counter1[2]),
        .I3(counter1[3]),
        .I4(\bus[9]_i_2_n_0 ),
        .O(p_0_in[9]));
  LUT3 #(
    .INIT(8'hE5)) 
    \bus[9]_i_2 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .O(\bus[9]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[0] 
       (.C(CLK),
        .CE(p_0_in[0]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[1] 
       (.C(CLK),
        .CE(p_0_in[1]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[1]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[2] 
       (.C(CLK),
        .CE(p_0_in[2]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[2]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[3] 
       (.C(CLK),
        .CE(p_0_in[3]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[3]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[4] 
       (.C(CLK),
        .CE(p_0_in[4]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[4]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[5] 
       (.C(CLK),
        .CE(p_0_in[5]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[5]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[6] 
       (.C(CLK),
        .CE(p_0_in[6]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[6]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[7] 
       (.C(CLK),
        .CE(p_0_in[7]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[7]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[8] 
       (.C(CLK),
        .CE(p_0_in[8]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[8]));
  FDCE #(
    .INIT(1'b0)) 
    \bus_reg[9] 
       (.C(CLK),
        .CE(p_0_in[9]),
        .CLR(\rx_data_reg[0]_0 ),
        .D(MOSI_IBUF),
        .Q(bus[9]));
  LUT5 #(
    .INIT(32'hDF0FDF1F)) 
    \counter1[0]_i_1 
       (.I0(cs[1]),
        .I1(cs[2]),
        .I2(counter1[0]),
        .I3(\counter1[1]_i_2_n_0 ),
        .I4(cs[0]),
        .O(\counter1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h41C341C341414100)) 
    \counter1[1]_i_1 
       (.I0(\counter1[1]_i_2_n_0 ),
        .I1(counter1[0]),
        .I2(counter1[1]),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\counter1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter1[1]_i_2 
       (.I0(counter1[3]),
        .I1(counter1[2]),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .O(\counter1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCC34CC3)) 
    \counter1[2]_i_1 
       (.I0(counter1[3]),
        .I1(counter1[2]),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(\counter1[3]_i_3_n_0 ),
        .I5(\counter1[2]_i_2_n_0 ),
        .O(\counter1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \counter1[2]_i_2 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .O(\counter1[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \counter1[3]_i_1 
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(cs[2]),
        .O(\counter1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFC0003FFFD5557)) 
    \counter1[3]_i_2 
       (.I0(\counter1[3]_i_3_n_0 ),
        .I1(counter1[2]),
        .I2(counter1[0]),
        .I3(counter1[1]),
        .I4(counter1[3]),
        .I5(\counter1[3]_i_4_n_0 ),
        .O(\counter1[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \counter1[3]_i_3 
       (.I0(cs[1]),
        .I1(cs[2]),
        .O(\counter1[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter1[3]_i_4 
       (.I0(cs[2]),
        .I1(cs[0]),
        .O(\counter1[3]_i_4_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \counter1_reg[0] 
       (.C(CLK),
        .CE(\counter1[3]_i_1_n_0 ),
        .D(\counter1[0]_i_1_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(counter1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[1] 
       (.C(CLK),
        .CE(\counter1[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter1[1]_i_1_n_0 ),
        .Q(counter1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter1_reg[2] 
       (.C(CLK),
        .CE(\counter1[3]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(\counter1[2]_i_1_n_0 ),
        .Q(counter1[2]));
  FDPE #(
    .INIT(1'b1)) 
    \counter1_reg[3] 
       (.C(CLK),
        .CE(\counter1[3]_i_1_n_0 ),
        .D(\counter1[3]_i_2_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(counter1[3]));
  LUT5 #(
    .INIT(32'hFFF7000D)) 
    \counter2[0]_i_1 
       (.I0(cs[2]),
        .I1(tx_valid),
        .I2(cs[1]),
        .I3(cs[0]),
        .I4(\counter2_reg[2]_1 ),
        .O(\counter2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000073)) 
    \counter2[1]_i_1 
       (.I0(\counter2_reg[2]_1 ),
        .I1(cs[2]),
        .I2(tx_valid),
        .I3(cs[1]),
        .I4(cs[0]),
        .I5(\counter2_reg[2]_0 ),
        .O(\counter2[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFFAB00)) 
    \counter2[2]_i_1 
       (.I0(\counter1[2]_i_2_n_0 ),
        .I1(\counter2_reg[2]_1 ),
        .I2(\counter2_reg[2]_0 ),
        .I3(\counter2[2]_i_2_n_0 ),
        .I4(\counter2_reg[2]_2 ),
        .O(\counter2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \counter2[2]_i_2 
       (.I0(cs[2]),
        .I1(tx_valid),
        .I2(cs[1]),
        .I3(cs[0]),
        .O(\counter2[2]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \counter2_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter2[0]_i_1_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(\counter2_reg[2]_1 ));
  FDPE #(
    .INIT(1'b1)) 
    \counter2_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter2[1]_i_1_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(\counter2_reg[2]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \counter2_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\counter2[2]_i_1_n_0 ),
        .PRE(\rx_data_reg[0]_0 ),
        .Q(\counter2_reg[2]_2 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    memory_reg_i_1
       (.I0(rxdata[8]),
        .I1(rxdata[9]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(memory_reg));
  LUT1 #(
    .INIT(2'h1)) 
    memory_reg_i_2
       (.I0(rst_n_IBUF),
        .O(\rx_data_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    memory_reg_i_3
       (.I0(rx_valid),
        .I1(rxdata[9]),
        .I2(rxdata[8]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h0A20)) 
    \rx_data[9]_i_1 
       (.I0(\counter1[1]_i_2_n_0 ),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(cs[1]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[8]),
        .Q(rxdata[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(bus[9]),
        .Q(rxdata[9]));
  LUT6 #(
    .INIT(64'hEEEE1100EEEEC800)) 
    rx_valid_i_1
       (.I0(cs[0]),
        .I1(cs[1]),
        .I2(rst_n_IBUF),
        .I3(\counter1[1]_i_2_n_0 ),
        .I4(rx_valid),
        .I5(cs[2]),
        .O(rx_valid_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .CLR(\rx_data_reg[0]_0 ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE2220000)) 
    tx_valid_i_1
       (.I0(tx_valid),
        .I1(rx_valid),
        .I2(rxdata[9]),
        .I3(rxdata[8]),
        .I4(rst_n_IBUF),
        .O(tx_valid_reg));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (clk,
    ss_n,
    MOSI,
    rst_n,
    MISO);
  input clk;
  input ss_n;
  input MOSI;
  input rst_n;
  output MISO;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire Ram_n_1;
  wire SPI_n_1;
  wire SPI_n_11;
  wire SPI_n_12;
  wire SPI_n_13;
  wire SPI_n_14;
  wire SPI_n_15;
  wire SPI_n_16;
  wire SPI_n_17;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire memory;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rxdata;
  wire ss_n;
  wire ss_n_IBUF;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM Ram
       (.CLK(clk_IBUF_BUFG),
        .E(SPI_n_11),
        .MISO_reg(Ram_n_1),
        .Q(rxdata),
        .WEA(memory),
        .\counter2_reg[0] (SPI_n_14),
        .\counter2_reg[1] (SPI_n_13),
        .\counter2_reg[2] (SPI_n_15),
        .rst_n(SPI_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (SPI_n_17),
        .rx_valid_reg(SPI_n_12),
        .tx_valid(tx_valid),
        .tx_valid_reg_0(SPI_n_16));
  SPI_SLAVE SPI
       (.CLK(clk_IBUF_BUFG),
        .E(SPI_n_11),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rxdata),
        .WEA(memory),
        .\addr_re_reg[7] (SPI_n_12),
        .\counter2_reg[2]_0 (SPI_n_13),
        .\counter2_reg[2]_1 (SPI_n_14),
        .\counter2_reg[2]_2 (SPI_n_15),
        .\counter2_reg[2]_3 (Ram_n_1),
        .memory_reg(SPI_n_17),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[0]_0 (SPI_n_1),
        .ss_n_IBUF(ss_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_n_16));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF ss_n_IBUF_inst
       (.I(ss_n),
        .O(ss_n_IBUF));
endmodule
