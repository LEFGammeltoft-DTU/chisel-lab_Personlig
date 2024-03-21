module BcdTable(
  input  [7:0] io_address,
  output [7:0] io_data
);
  wire [7:0] _GEN_1 = 7'h1 == io_address[6:0] ? 8'h1 : 8'h0; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_2 = 7'h2 == io_address[6:0] ? 8'h2 : _GEN_1; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_3 = 7'h3 == io_address[6:0] ? 8'h3 : _GEN_2; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_4 = 7'h4 == io_address[6:0] ? 8'h4 : _GEN_3; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_5 = 7'h5 == io_address[6:0] ? 8'h5 : _GEN_4; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_6 = 7'h6 == io_address[6:0] ? 8'h6 : _GEN_5; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_7 = 7'h7 == io_address[6:0] ? 8'h7 : _GEN_6; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_8 = 7'h8 == io_address[6:0] ? 8'h8 : _GEN_7; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_9 = 7'h9 == io_address[6:0] ? 8'h9 : _GEN_8; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_10 = 7'ha == io_address[6:0] ? 8'h10 : _GEN_9; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_11 = 7'hb == io_address[6:0] ? 8'h11 : _GEN_10; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_12 = 7'hc == io_address[6:0] ? 8'h12 : _GEN_11; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_13 = 7'hd == io_address[6:0] ? 8'h13 : _GEN_12; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_14 = 7'he == io_address[6:0] ? 8'h14 : _GEN_13; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_15 = 7'hf == io_address[6:0] ? 8'h15 : _GEN_14; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_16 = 7'h10 == io_address[6:0] ? 8'h16 : _GEN_15; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_17 = 7'h11 == io_address[6:0] ? 8'h17 : _GEN_16; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_18 = 7'h12 == io_address[6:0] ? 8'h18 : _GEN_17; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_19 = 7'h13 == io_address[6:0] ? 8'h19 : _GEN_18; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_20 = 7'h14 == io_address[6:0] ? 8'h20 : _GEN_19; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_21 = 7'h15 == io_address[6:0] ? 8'h21 : _GEN_20; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_22 = 7'h16 == io_address[6:0] ? 8'h22 : _GEN_21; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_23 = 7'h17 == io_address[6:0] ? 8'h23 : _GEN_22; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_24 = 7'h18 == io_address[6:0] ? 8'h24 : _GEN_23; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_25 = 7'h19 == io_address[6:0] ? 8'h25 : _GEN_24; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_26 = 7'h1a == io_address[6:0] ? 8'h26 : _GEN_25; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_27 = 7'h1b == io_address[6:0] ? 8'h27 : _GEN_26; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_28 = 7'h1c == io_address[6:0] ? 8'h28 : _GEN_27; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_29 = 7'h1d == io_address[6:0] ? 8'h29 : _GEN_28; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_30 = 7'h1e == io_address[6:0] ? 8'h30 : _GEN_29; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_31 = 7'h1f == io_address[6:0] ? 8'h31 : _GEN_30; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_32 = 7'h20 == io_address[6:0] ? 8'h32 : _GEN_31; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_33 = 7'h21 == io_address[6:0] ? 8'h33 : _GEN_32; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_34 = 7'h22 == io_address[6:0] ? 8'h34 : _GEN_33; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_35 = 7'h23 == io_address[6:0] ? 8'h35 : _GEN_34; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_36 = 7'h24 == io_address[6:0] ? 8'h36 : _GEN_35; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_37 = 7'h25 == io_address[6:0] ? 8'h37 : _GEN_36; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_38 = 7'h26 == io_address[6:0] ? 8'h38 : _GEN_37; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_39 = 7'h27 == io_address[6:0] ? 8'h39 : _GEN_38; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_40 = 7'h28 == io_address[6:0] ? 8'h40 : _GEN_39; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_41 = 7'h29 == io_address[6:0] ? 8'h41 : _GEN_40; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_42 = 7'h2a == io_address[6:0] ? 8'h42 : _GEN_41; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_43 = 7'h2b == io_address[6:0] ? 8'h43 : _GEN_42; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_44 = 7'h2c == io_address[6:0] ? 8'h44 : _GEN_43; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_45 = 7'h2d == io_address[6:0] ? 8'h45 : _GEN_44; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_46 = 7'h2e == io_address[6:0] ? 8'h46 : _GEN_45; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_47 = 7'h2f == io_address[6:0] ? 8'h47 : _GEN_46; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_48 = 7'h30 == io_address[6:0] ? 8'h48 : _GEN_47; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_49 = 7'h31 == io_address[6:0] ? 8'h49 : _GEN_48; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_50 = 7'h32 == io_address[6:0] ? 8'h50 : _GEN_49; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_51 = 7'h33 == io_address[6:0] ? 8'h51 : _GEN_50; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_52 = 7'h34 == io_address[6:0] ? 8'h52 : _GEN_51; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_53 = 7'h35 == io_address[6:0] ? 8'h53 : _GEN_52; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_54 = 7'h36 == io_address[6:0] ? 8'h54 : _GEN_53; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_55 = 7'h37 == io_address[6:0] ? 8'h55 : _GEN_54; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_56 = 7'h38 == io_address[6:0] ? 8'h56 : _GEN_55; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_57 = 7'h39 == io_address[6:0] ? 8'h57 : _GEN_56; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_58 = 7'h3a == io_address[6:0] ? 8'h58 : _GEN_57; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_59 = 7'h3b == io_address[6:0] ? 8'h59 : _GEN_58; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_60 = 7'h3c == io_address[6:0] ? 8'h60 : _GEN_59; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_61 = 7'h3d == io_address[6:0] ? 8'h61 : _GEN_60; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_62 = 7'h3e == io_address[6:0] ? 8'h62 : _GEN_61; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_63 = 7'h3f == io_address[6:0] ? 8'h63 : _GEN_62; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_64 = 7'h40 == io_address[6:0] ? 8'h64 : _GEN_63; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_65 = 7'h41 == io_address[6:0] ? 8'h65 : _GEN_64; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_66 = 7'h42 == io_address[6:0] ? 8'h66 : _GEN_65; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_67 = 7'h43 == io_address[6:0] ? 8'h67 : _GEN_66; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_68 = 7'h44 == io_address[6:0] ? 8'h68 : _GEN_67; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_69 = 7'h45 == io_address[6:0] ? 8'h69 : _GEN_68; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_70 = 7'h46 == io_address[6:0] ? 8'h70 : _GEN_69; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_71 = 7'h47 == io_address[6:0] ? 8'h71 : _GEN_70; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_72 = 7'h48 == io_address[6:0] ? 8'h72 : _GEN_71; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_73 = 7'h49 == io_address[6:0] ? 8'h73 : _GEN_72; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_74 = 7'h4a == io_address[6:0] ? 8'h74 : _GEN_73; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_75 = 7'h4b == io_address[6:0] ? 8'h75 : _GEN_74; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_76 = 7'h4c == io_address[6:0] ? 8'h76 : _GEN_75; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_77 = 7'h4d == io_address[6:0] ? 8'h77 : _GEN_76; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_78 = 7'h4e == io_address[6:0] ? 8'h78 : _GEN_77; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_79 = 7'h4f == io_address[6:0] ? 8'h79 : _GEN_78; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_80 = 7'h50 == io_address[6:0] ? 8'h80 : _GEN_79; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_81 = 7'h51 == io_address[6:0] ? 8'h81 : _GEN_80; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_82 = 7'h52 == io_address[6:0] ? 8'h82 : _GEN_81; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_83 = 7'h53 == io_address[6:0] ? 8'h83 : _GEN_82; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_84 = 7'h54 == io_address[6:0] ? 8'h84 : _GEN_83; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_85 = 7'h55 == io_address[6:0] ? 8'h85 : _GEN_84; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_86 = 7'h56 == io_address[6:0] ? 8'h86 : _GEN_85; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_87 = 7'h57 == io_address[6:0] ? 8'h87 : _GEN_86; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_88 = 7'h58 == io_address[6:0] ? 8'h88 : _GEN_87; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_89 = 7'h59 == io_address[6:0] ? 8'h89 : _GEN_88; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_90 = 7'h5a == io_address[6:0] ? 8'h90 : _GEN_89; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_91 = 7'h5b == io_address[6:0] ? 8'h91 : _GEN_90; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_92 = 7'h5c == io_address[6:0] ? 8'h92 : _GEN_91; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_93 = 7'h5d == io_address[6:0] ? 8'h93 : _GEN_92; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_94 = 7'h5e == io_address[6:0] ? 8'h94 : _GEN_93; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_95 = 7'h5f == io_address[6:0] ? 8'h95 : _GEN_94; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_96 = 7'h60 == io_address[6:0] ? 8'h96 : _GEN_95; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_97 = 7'h61 == io_address[6:0] ? 8'h97 : _GEN_96; // @[DisplayMultiplexer.scala 18:{11,11}]
  wire [7:0] _GEN_98 = 7'h62 == io_address[6:0] ? 8'h98 : _GEN_97; // @[DisplayMultiplexer.scala 18:{11,11}]
  assign io_data = 7'h63 == io_address[6:0] ? 8'h99 : _GEN_98; // @[DisplayMultiplexer.scala 18:{11,11}]
endmodule
module SevenSegDec(
  input  [3:0] io_in,
  output [6:0] io_out
);
  wire [6:0] _GEN_0 = 4'hf == io_in ? 7'h71 : 7'h0; // @[SevenSegDec.scala 13:18 29:25 10:27]
  wire [6:0] _GEN_1 = 4'he == io_in ? 7'h79 : _GEN_0; // @[SevenSegDec.scala 13:18 28:25]
  wire [6:0] _GEN_2 = 4'hd == io_in ? 7'h5e : _GEN_1; // @[SevenSegDec.scala 13:18 27:25]
  wire [6:0] _GEN_3 = 4'hc == io_in ? 7'h39 : _GEN_2; // @[SevenSegDec.scala 13:18 26:25]
  wire [6:0] _GEN_4 = 4'hb == io_in ? 7'h7c : _GEN_3; // @[SevenSegDec.scala 13:18 25:25]
  wire [6:0] _GEN_5 = 4'ha == io_in ? 7'h5f : _GEN_4; // @[SevenSegDec.scala 13:18 24:25]
  wire [6:0] _GEN_6 = 4'h9 == io_in ? 7'h6f : _GEN_5; // @[SevenSegDec.scala 13:18 23:25]
  wire [6:0] _GEN_7 = 4'h8 == io_in ? 7'h7f : _GEN_6; // @[SevenSegDec.scala 13:18 22:25]
  wire [6:0] _GEN_8 = 4'h7 == io_in ? 7'h7 : _GEN_7; // @[SevenSegDec.scala 13:18 21:25]
  wire [6:0] _GEN_9 = 4'h6 == io_in ? 7'h7d : _GEN_8; // @[SevenSegDec.scala 13:18 20:25]
  wire [6:0] _GEN_10 = 4'h5 == io_in ? 7'h6d : _GEN_9; // @[SevenSegDec.scala 13:18 19:25]
  wire [6:0] _GEN_11 = 4'h4 == io_in ? 7'h66 : _GEN_10; // @[SevenSegDec.scala 13:18 18:25]
  wire [6:0] _GEN_12 = 4'h3 == io_in ? 7'h4f : _GEN_11; // @[SevenSegDec.scala 13:18 17:25]
  wire [6:0] _GEN_13 = 4'h2 == io_in ? 7'h5b : _GEN_12; // @[SevenSegDec.scala 13:18 16:25]
  wire [6:0] _GEN_14 = 4'h1 == io_in ? 7'h6 : _GEN_13; // @[SevenSegDec.scala 13:18 15:25]
  assign io_out = 4'h0 == io_in ? 7'h3f : _GEN_14; // @[SevenSegDec.scala 13:18 14:25]
endmodule
module DisplayMultiplexer(
  input        clock,
  input        reset,
  input  [7:0] io_sum,
  input  [7:0] io_price,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [7:0] pricebcd_io_address; // @[DisplayMultiplexer.scala 30:24]
  wire [7:0] pricebcd_io_data; // @[DisplayMultiplexer.scala 30:24]
  wire [7:0] sumbcd_io_address; // @[DisplayMultiplexer.scala 32:22]
  wire [7:0] sumbcd_io_data; // @[DisplayMultiplexer.scala 32:22]
  wire [3:0] sevensegdec_io_in; // @[DisplayMultiplexer.scala 38:27]
  wire [6:0] sevensegdec_io_out; // @[DisplayMultiplexer.scala 38:27]
  wire [16:0] _onekhzReg_T_1 = 17'h186a0 - 17'h1; // @[DisplayMultiplexer.scala 39:36]
  reg [16:0] onekhzReg; // @[DisplayMultiplexer.scala 39:26]
  wire  onekhztick = onekhzReg == 17'h0; // @[DisplayMultiplexer.scala 40:30]
  wire [16:0] _onekhzReg_T_3 = onekhzReg - 17'h1; // @[DisplayMultiplexer.scala 41:26]
  reg [3:0] shiftReg; // @[DisplayMultiplexer.scala 44:25]
  wire [4:0] _shiftReg_T_1 = {shiftReg, 1'h0}; // @[DisplayMultiplexer.scala 47:52]
  wire [4:0] _shiftReg_T_2 = shiftReg[3] ? 5'h1 : _shiftReg_T_1; // @[DisplayMultiplexer.scala 47:18]
  wire [4:0] _GEN_0 = onekhztick ? _shiftReg_T_2 : {{1'd0}, shiftReg}; // @[DisplayMultiplexer.scala 46:18 47:12 44:25]
  wire [3:0] _GEN_1 = 4'h8 == shiftReg ? sumbcd_io_data[7:4] : 4'h0; // @[DisplayMultiplexer.scala 49:19 43:21 60:25]
  wire [3:0] _GEN_2 = 4'h4 == shiftReg ? sumbcd_io_data[3:0] : _GEN_1; // @[DisplayMultiplexer.scala 49:19 57:25]
  wire [3:0] _GEN_3 = 4'h2 == shiftReg ? pricebcd_io_data[7:4] : _GEN_2; // @[DisplayMultiplexer.scala 49:19 54:25]
  wire [6:0] sevSeg = sevensegdec_io_out; // @[DisplayMultiplexer.scala 35:27 66:10]
  wire [4:0] _GEN_5 = reset ? 5'h1 : _GEN_0; // @[DisplayMultiplexer.scala 44:{25,25}]
  BcdTable pricebcd ( // @[DisplayMultiplexer.scala 30:24]
    .io_address(pricebcd_io_address),
    .io_data(pricebcd_io_data)
  );
  BcdTable sumbcd ( // @[DisplayMultiplexer.scala 32:22]
    .io_address(sumbcd_io_address),
    .io_data(sumbcd_io_data)
  );
  SevenSegDec sevensegdec ( // @[DisplayMultiplexer.scala 38:27]
    .io_in(sevensegdec_io_in),
    .io_out(sevensegdec_io_out)
  );
  assign io_seg = ~sevSeg; // @[DisplayMultiplexer.scala 69:13]
  assign io_an = ~shiftReg; // @[DisplayMultiplexer.scala 70:12]
  assign pricebcd_io_address = io_price; // @[DisplayMultiplexer.scala 31:23]
  assign sumbcd_io_address = io_sum; // @[DisplayMultiplexer.scala 33:21]
  assign sevensegdec_io_in = 4'h1 == shiftReg ? pricebcd_io_data[3:0] : _GEN_3; // @[DisplayMultiplexer.scala 49:19 51:25]
  always @(posedge clock) begin
    if (reset) begin // @[DisplayMultiplexer.scala 39:26]
      onekhzReg <= _onekhzReg_T_1; // @[DisplayMultiplexer.scala 39:26]
    end else begin
      onekhzReg <= _onekhzReg_T_3; // @[DisplayMultiplexer.scala 41:13]
    end
    shiftReg <= _GEN_5[3:0]; // @[DisplayMultiplexer.scala 44:{25,25}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  onekhzReg = _RAND_0[16:0];
  _RAND_1 = {1{`RANDOM}};
  shiftReg = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Display(
  input         clock,
  input         reset,
  input  [15:0] io_sw,
  output [6:0]  io_seg,
  output [3:0]  io_an
);
  wire  dispMux_clock; // @[Display.scala 15:23]
  wire  dispMux_reset; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_sum; // @[Display.scala 15:23]
  wire [7:0] dispMux_io_price; // @[Display.scala 15:23]
  wire [6:0] dispMux_io_seg; // @[Display.scala 15:23]
  wire [3:0] dispMux_io_an; // @[Display.scala 15:23]
  DisplayMultiplexer dispMux ( // @[Display.scala 15:23]
    .clock(dispMux_clock),
    .reset(dispMux_reset),
    .io_sum(dispMux_io_sum),
    .io_price(dispMux_io_price),
    .io_seg(dispMux_io_seg),
    .io_an(dispMux_io_an)
  );
  assign io_seg = dispMux_io_seg; // @[Display.scala 22:10]
  assign io_an = dispMux_io_an; // @[Display.scala 23:9]
  assign dispMux_clock = clock;
  assign dispMux_reset = reset;
  assign dispMux_io_sum = io_sw[15:8]; // @[Display.scala 19:26]
  assign dispMux_io_price = io_sw[7:0]; // @[Display.scala 18:28]
endmodule
