circuit CountSevenSeg :
  module SevenSegDecoder :
    input clock : Clock
    input reset : Reset
    output io : { flip sw : UInt<4>, seg : UInt<7>, an : UInt<4>}

    wire sevSeg : UInt<7> @[SevenSegDecoder.scala 11:27]
    sevSeg <= UInt<7>("h0") @[SevenSegDecoder.scala 11:27]
    node _T = eq(UInt<1>("h0"), io.sw) @[SevenSegDecoder.scala 15:16]
    when _T : @[SevenSegDecoder.scala 15:16]
      sevSeg <= UInt<6>("h3f") @[SevenSegDecoder.scala 16:23]
    else :
      node _T_1 = eq(UInt<1>("h1"), io.sw) @[SevenSegDecoder.scala 15:16]
      when _T_1 : @[SevenSegDecoder.scala 15:16]
        sevSeg <= UInt<3>("h6") @[SevenSegDecoder.scala 17:23]
      else :
        node _T_2 = eq(UInt<2>("h2"), io.sw) @[SevenSegDecoder.scala 15:16]
        when _T_2 : @[SevenSegDecoder.scala 15:16]
          sevSeg <= UInt<7>("h5b") @[SevenSegDecoder.scala 18:23]
        else :
          node _T_3 = eq(UInt<2>("h3"), io.sw) @[SevenSegDecoder.scala 15:16]
          when _T_3 : @[SevenSegDecoder.scala 15:16]
            sevSeg <= UInt<7>("h4f") @[SevenSegDecoder.scala 19:23]
          else :
            node _T_4 = eq(UInt<3>("h4"), io.sw) @[SevenSegDecoder.scala 15:16]
            when _T_4 : @[SevenSegDecoder.scala 15:16]
              sevSeg <= UInt<7>("h66") @[SevenSegDecoder.scala 20:23]
            else :
              node _T_5 = eq(UInt<3>("h5"), io.sw) @[SevenSegDecoder.scala 15:16]
              when _T_5 : @[SevenSegDecoder.scala 15:16]
                sevSeg <= UInt<7>("h6d") @[SevenSegDecoder.scala 21:23]
              else :
                node _T_6 = eq(UInt<3>("h6"), io.sw) @[SevenSegDecoder.scala 15:16]
                when _T_6 : @[SevenSegDecoder.scala 15:16]
                  sevSeg <= UInt<7>("h7d") @[SevenSegDecoder.scala 22:23]
                else :
                  node _T_7 = eq(UInt<3>("h7"), io.sw) @[SevenSegDecoder.scala 15:16]
                  when _T_7 : @[SevenSegDecoder.scala 15:16]
                    sevSeg <= UInt<3>("h7") @[SevenSegDecoder.scala 23:23]
                  else :
                    node _T_8 = eq(UInt<4>("h8"), io.sw) @[SevenSegDecoder.scala 15:16]
                    when _T_8 : @[SevenSegDecoder.scala 15:16]
                      sevSeg <= UInt<7>("h7f") @[SevenSegDecoder.scala 24:23]
                    else :
                      node _T_9 = eq(UInt<4>("h9"), io.sw) @[SevenSegDecoder.scala 15:16]
                      when _T_9 : @[SevenSegDecoder.scala 15:16]
                        sevSeg <= UInt<7>("h6f") @[SevenSegDecoder.scala 25:23]
                      else :
                        node _T_10 = eq(UInt<4>("ha"), io.sw) @[SevenSegDecoder.scala 15:16]
                        when _T_10 : @[SevenSegDecoder.scala 15:16]
                          sevSeg <= UInt<7>("h5f") @[SevenSegDecoder.scala 26:23]
                        else :
                          node _T_11 = eq(UInt<4>("hb"), io.sw) @[SevenSegDecoder.scala 15:16]
                          when _T_11 : @[SevenSegDecoder.scala 15:16]
                            sevSeg <= UInt<7>("h7c") @[SevenSegDecoder.scala 27:23]
                          else :
                            node _T_12 = eq(UInt<4>("hc"), io.sw) @[SevenSegDecoder.scala 15:16]
                            when _T_12 : @[SevenSegDecoder.scala 15:16]
                              sevSeg <= UInt<6>("h39") @[SevenSegDecoder.scala 28:23]
                            else :
                              node _T_13 = eq(UInt<4>("hd"), io.sw) @[SevenSegDecoder.scala 15:16]
                              when _T_13 : @[SevenSegDecoder.scala 15:16]
                                sevSeg <= UInt<7>("h5e") @[SevenSegDecoder.scala 29:23]
                              else :
                                node _T_14 = eq(UInt<4>("he"), io.sw) @[SevenSegDecoder.scala 15:16]
                                when _T_14 : @[SevenSegDecoder.scala 15:16]
                                  sevSeg <= UInt<7>("h79") @[SevenSegDecoder.scala 30:23]
                                else :
                                  node _T_15 = eq(UInt<4>("hf"), io.sw) @[SevenSegDecoder.scala 15:16]
                                  when _T_15 : @[SevenSegDecoder.scala 15:16]
                                    sevSeg <= UInt<7>("h71") @[SevenSegDecoder.scala 31:23]
    node _io_seg_T = not(sevSeg) @[SevenSegDecoder.scala 35:13]
    io.seg <= _io_seg_T @[SevenSegDecoder.scala 35:10]
    io.an <= UInt<4>("he") @[SevenSegDecoder.scala 36:9]

  module CountSevenSeg :
    input clock : Clock
    input reset : UInt<1>
    output io : { seg : UInt<7>, an : UInt<4>}

    inst sevensegdec of SevenSegDecoder @[CountSevenSeg.scala 8:25]
    sevensegdec.clock <= clock
    sevensegdec.reset <= reset
    wire sevSeg : UInt<7> @[CountSevenSeg.scala 10:27]
    sevSeg <= UInt<7>("h7f") @[CountSevenSeg.scala 10:27]
    reg count : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[CountSevenSeg.scala 11:22]
    sevSeg <= sevensegdec.io.seg @[CountSevenSeg.scala 14:10]
    sevensegdec.io.sw <= count @[CountSevenSeg.scala 15:21]
    reg reg1 : UInt<26>, clock with :
      reset => (reset, UInt<26>("h2faf080")) @[CountSevenSeg.scala 20:19]
    node _reg1_T = sub(reg1, UInt<1>("h1")) @[CountSevenSeg.scala 22:16]
    node _reg1_T_1 = tail(_reg1_T, 1) @[CountSevenSeg.scala 22:16]
    reg1 <= _reg1_T_1 @[CountSevenSeg.scala 22:8]
    node _T = eq(reg1, UInt<1>("h0")) @[CountSevenSeg.scala 24:14]
    when _T : @[CountSevenSeg.scala 24:23]
      node _count_T = add(count, UInt<1>("h1")) @[CountSevenSeg.scala 25:20]
      node _count_T_1 = tail(_count_T, 1) @[CountSevenSeg.scala 25:20]
      count <= _count_T_1 @[CountSevenSeg.scala 25:11]
      reg1 <= UInt<26>("h2faf080") @[CountSevenSeg.scala 26:10]
    io.seg <= sevSeg @[CountSevenSeg.scala 30:10]
    io.an <= UInt<4>("he") @[CountSevenSeg.scala 31:9]

