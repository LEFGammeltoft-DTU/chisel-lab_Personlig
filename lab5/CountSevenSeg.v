module SevenSegDecoder(
  input  [3:0] io_sw,
  output [6:0] io_seg
);
  wire [6:0] _GEN_0 = 4'hf == io_sw ? 7'h71 : 7'h0; // @[SevenSegDecoder.scala 15:16 31:23 11:27]
  wire [6:0] _GEN_1 = 4'he == io_sw ? 7'h79 : _GEN_0; // @[SevenSegDecoder.scala 15:16 30:23]
  wire [6:0] _GEN_2 = 4'hd == io_sw ? 7'h5e : _GEN_1; // @[SevenSegDecoder.scala 15:16 29:23]
  wire [6:0] _GEN_3 = 4'hc == io_sw ? 7'h39 : _GEN_2; // @[SevenSegDecoder.scala 15:16 28:23]
  wire [6:0] _GEN_4 = 4'hb == io_sw ? 7'h7c : _GEN_3; // @[SevenSegDecoder.scala 15:16 27:23]
  wire [6:0] _GEN_5 = 4'ha == io_sw ? 7'h5f : _GEN_4; // @[SevenSegDecoder.scala 15:16 26:23]
  wire [6:0] _GEN_6 = 4'h9 == io_sw ? 7'h6f : _GEN_5; // @[SevenSegDecoder.scala 15:16 25:23]
  wire [6:0] _GEN_7 = 4'h8 == io_sw ? 7'h7f : _GEN_6; // @[SevenSegDecoder.scala 15:16 24:23]
  wire [6:0] _GEN_8 = 4'h7 == io_sw ? 7'h7 : _GEN_7; // @[SevenSegDecoder.scala 15:16 23:23]
  wire [6:0] _GEN_9 = 4'h6 == io_sw ? 7'h7d : _GEN_8; // @[SevenSegDecoder.scala 15:16 22:23]
  wire [6:0] _GEN_10 = 4'h5 == io_sw ? 7'h6d : _GEN_9; // @[SevenSegDecoder.scala 15:16 21:23]
  wire [6:0] _GEN_11 = 4'h4 == io_sw ? 7'h66 : _GEN_10; // @[SevenSegDecoder.scala 15:16 20:23]
  wire [6:0] _GEN_12 = 4'h3 == io_sw ? 7'h4f : _GEN_11; // @[SevenSegDecoder.scala 15:16 19:23]
  wire [6:0] _GEN_13 = 4'h2 == io_sw ? 7'h5b : _GEN_12; // @[SevenSegDecoder.scala 15:16 18:23]
  wire [6:0] _GEN_14 = 4'h1 == io_sw ? 7'h6 : _GEN_13; // @[SevenSegDecoder.scala 15:16 17:23]
  wire [6:0] sevSeg = 4'h0 == io_sw ? 7'h3f : _GEN_14; // @[SevenSegDecoder.scala 15:16 16:23]
  assign io_seg = ~sevSeg; // @[SevenSegDecoder.scala 35:13]
endmodule
module CountSevenSeg(
  input        clock,
  input        reset,
  output [6:0] io_seg,
  output [3:0] io_an
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] sevensegdec_io_sw; // @[CountSevenSeg.scala 8:25]
  wire [6:0] sevensegdec_io_seg; // @[CountSevenSeg.scala 8:25]
  reg [3:0] count; // @[CountSevenSeg.scala 11:22]
  reg [25:0] reg1; // @[CountSevenSeg.scala 20:19]
  wire [25:0] _reg1_T_1 = reg1 - 26'h1; // @[CountSevenSeg.scala 22:16]
  wire [3:0] _count_T_1 = count + 4'h1; // @[CountSevenSeg.scala 25:20]
  SevenSegDecoder sevensegdec ( // @[CountSevenSeg.scala 8:25]
    .io_sw(sevensegdec_io_sw),
    .io_seg(sevensegdec_io_seg)
  );
  assign io_seg = sevensegdec_io_seg; // @[CountSevenSeg.scala 10:27 14:10]
  assign io_an = 4'he; // @[CountSevenSeg.scala 31:9]
  assign sevensegdec_io_sw = count; // @[CountSevenSeg.scala 15:21]
  always @(posedge clock) begin
    if (reset) begin // @[CountSevenSeg.scala 11:22]
      count <= 4'h0; // @[CountSevenSeg.scala 11:22]
    end else if (reg1 == 26'h0) begin // @[CountSevenSeg.scala 24:23]
      count <= _count_T_1; // @[CountSevenSeg.scala 25:11]
    end
    if (reset) begin // @[CountSevenSeg.scala 20:19]
      reg1 <= 26'h2faf080; // @[CountSevenSeg.scala 20:19]
    end else if (reg1 == 26'h0) begin // @[CountSevenSeg.scala 24:23]
      reg1 <= 26'h2faf080; // @[CountSevenSeg.scala 26:10]
    end else begin
      reg1 <= _reg1_T_1; // @[CountSevenSeg.scala 22:8]
    end
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
  count = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  reg1 = _RAND_1[25:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
