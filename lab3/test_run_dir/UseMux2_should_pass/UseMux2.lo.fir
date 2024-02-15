FIRRTL version 1.1.0
circuit UseMux2 :
  module UseMux2 :
    input clock : Clock
    input reset : UInt<1>
    input io_sel : UInt<1>
    output io_dout : UInt<1>

    node res = UInt<1>("h0") @[UseMux2.scala 12:17 19:7]
    io_dout <= res @[UseMux2.scala 23:11]
