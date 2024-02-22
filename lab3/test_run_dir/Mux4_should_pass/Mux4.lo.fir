FIRRTL version 1.1.0
circuit Mux4 :
  module Mux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_sel : UInt<1>
    output io_y : UInt<1>

    node _T = eq(io_sel, UInt<1>("h1")) @[Mux2.scala 17:16]
    node _GEN_0 = mux(_T, io_b, io_a) @[Mux2.scala 17:25 18:10 16:8]
    io_y <= _GEN_0

  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    inst mux21 of Mux2 @[Mux4.scala 21:21]
    inst mux22 of Mux2 @[Mux4.scala 22:21]
    inst mux23 of Mux2 @[Mux4.scala 23:21]
    node _mux21_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 29:25]
    node _mux22_io_sel_T = bits(io_sel, 0, 0) @[Mux4.scala 34:25]
    node _mux23_io_sel_T = bits(io_sel, 1, 1) @[Mux4.scala 39:25]
    io_y <= mux23.io_y @[Mux4.scala 41:8]
    mux21.clock <= clock
    mux21.reset <= reset
    mux21.io_a <= io_a @[Mux4.scala 26:14]
    mux21.io_b <= io_b @[Mux4.scala 27:14]
    mux21.io_sel <= _mux21_io_sel_T @[Mux4.scala 29:16]
    mux22.clock <= clock
    mux22.reset <= reset
    mux22.io_a <= io_c @[Mux4.scala 31:14]
    mux22.io_b <= io_d @[Mux4.scala 32:14]
    mux22.io_sel <= _mux22_io_sel_T @[Mux4.scala 34:16]
    mux23.clock <= clock
    mux23.reset <= reset
    mux23.io_a <= mux21.io_y @[Mux4.scala 36:14]
    mux23.io_b <= mux22.io_y @[Mux4.scala 37:14]
    mux23.io_sel <= _mux23_io_sel_T @[Mux4.scala 39:16]
