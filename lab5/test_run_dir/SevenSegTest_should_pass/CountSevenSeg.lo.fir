FIRRTL version 1.1.0
circuit CountSevenSeg :
  module SevenSegDecoder :
    input clock : Clock
    input reset : UInt<1>
    input io_sw : UInt<4>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    node _T = eq(UInt<1>("h0"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_1 = eq(UInt<1>("h1"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_2 = eq(UInt<2>("h2"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_3 = eq(UInt<2>("h3"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_4 = eq(UInt<3>("h4"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_5 = eq(UInt<3>("h5"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_6 = eq(UInt<3>("h6"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_7 = eq(UInt<3>("h7"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_8 = eq(UInt<4>("h8"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_9 = eq(UInt<4>("h9"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_10 = eq(UInt<4>("ha"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_11 = eq(UInt<4>("hb"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_12 = eq(UInt<4>("hc"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_13 = eq(UInt<4>("hd"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_14 = eq(UInt<4>("he"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _T_15 = eq(UInt<4>("hf"), io_sw) @[SevenSegDecoder.scala 15:16]
    node _GEN_0 = mux(_T_15, UInt<7>("h71"), UInt<7>("h0")) @[SevenSegDecoder.scala 15:16 31:23 11:27]
    node _GEN_1 = mux(_T_14, UInt<7>("h79"), _GEN_0) @[SevenSegDecoder.scala 15:16 30:23]
    node _GEN_2 = mux(_T_13, UInt<7>("h5e"), _GEN_1) @[SevenSegDecoder.scala 15:16 29:23]
    node _GEN_3 = mux(_T_12, UInt<6>("h39"), _GEN_2) @[SevenSegDecoder.scala 15:16 28:23]
    node _GEN_4 = mux(_T_11, UInt<7>("h7c"), _GEN_3) @[SevenSegDecoder.scala 15:16 27:23]
    node _GEN_5 = mux(_T_10, UInt<7>("h5f"), _GEN_4) @[SevenSegDecoder.scala 15:16 26:23]
    node _GEN_6 = mux(_T_9, UInt<7>("h6f"), _GEN_5) @[SevenSegDecoder.scala 15:16 25:23]
    node _GEN_7 = mux(_T_8, UInt<7>("h7f"), _GEN_6) @[SevenSegDecoder.scala 15:16 24:23]
    node _GEN_8 = mux(_T_7, UInt<3>("h7"), _GEN_7) @[SevenSegDecoder.scala 15:16 23:23]
    node _GEN_9 = mux(_T_6, UInt<7>("h7d"), _GEN_8) @[SevenSegDecoder.scala 15:16 22:23]
    node _GEN_10 = mux(_T_5, UInt<7>("h6d"), _GEN_9) @[SevenSegDecoder.scala 15:16 21:23]
    node _GEN_11 = mux(_T_4, UInt<7>("h66"), _GEN_10) @[SevenSegDecoder.scala 15:16 20:23]
    node _GEN_12 = mux(_T_3, UInt<7>("h4f"), _GEN_11) @[SevenSegDecoder.scala 15:16 19:23]
    node _GEN_13 = mux(_T_2, UInt<7>("h5b"), _GEN_12) @[SevenSegDecoder.scala 15:16 18:23]
    node _GEN_14 = mux(_T_1, UInt<3>("h6"), _GEN_13) @[SevenSegDecoder.scala 15:16 17:23]
    node _GEN_15 = mux(_T, UInt<6>("h3f"), _GEN_14) @[SevenSegDecoder.scala 15:16 16:23]
    node sevSeg = _GEN_15 @[SevenSegDecoder.scala 11:27]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 35:13]
    io_seg <= _io_seg_T @[SevenSegDecoder.scala 35:10]
    io_an <= UInt<4>("he") @[SevenSegDecoder.scala 36:9]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io_seg : UInt<7>
    output io_an : UInt<4>

    inst sevensegdec of SevenSegDecoder @[CountSevenSeg.scala 8:25]
    reg count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), count) @[CountSevenSeg.scala 11:22]
    reg reg1 : UInt<26>, clock with :
      reset => (UInt<1>("h0"), reg1) @[CountSevenSeg.scala 20:19]
    node _reg1_T = sub(reg1, UInt<1>("h1")) @[CountSevenSeg.scala 22:16]
    node _reg1_T_1 = tail(_reg1_T, 1) @[CountSevenSeg.scala 22:16]
    node _T = eq(reg1, UInt<1>("h0")) @[CountSevenSeg.scala 24:14]
    node _count_T = add(count, UInt<1>("h1")) @[CountSevenSeg.scala 25:20]
    node _count_T_1 = tail(_count_T, 1) @[CountSevenSeg.scala 25:20]
    node _GEN_0 = mux(_T, _count_T_1, count) @[CountSevenSeg.scala 24:23 25:11 11:22]
    node _GEN_1 = mux(_T, UInt<26>("h2faf080"), _reg1_T_1) @[CountSevenSeg.scala 24:23 26:10 22:8]
    node sevSeg = sevensegdec.io_seg @[CountSevenSeg.scala 10:27 14:10]
    io_seg <= sevSeg @[CountSevenSeg.scala 30:10]
    io_an <= UInt<4>("he") @[CountSevenSeg.scala 31:9]
    sevensegdec.clock <= clock
    sevensegdec.reset <= reset
    sevensegdec.io_sw <= count @[CountSevenSeg.scala 15:21]
    count <= mux(reset, UInt<4>("h0"), _GEN_0) @[CountSevenSeg.scala 11:{22,22}]
    reg1 <= mux(reset, UInt<26>("h2faf080"), _GEN_1) @[CountSevenSeg.scala 20:{19,19}]
