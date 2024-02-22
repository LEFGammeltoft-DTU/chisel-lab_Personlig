FIRRTL version 1.1.0
circuit UseMux2 :
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

  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1>
    output io_dout : UInt<1>

    inst UMux2 of Mux2 @[UseMux2.scala 17:19]
    node res = UMux2.io_y @[UseMux2.scala 12:17 22:7]
    io_dout <= res @[UseMux2.scala 30:11]
    UMux2.clock <= clock
    UMux2.reset <= reset
    UMux2.io_a <= UInt<1>("h1") @[UseMux2.scala 19:14]
    UMux2.io_b <= UInt<1>("h0") @[UseMux2.scala 20:14]
    UMux2.io_sel <= io_sel @[UseMux2.scala 21:16]
