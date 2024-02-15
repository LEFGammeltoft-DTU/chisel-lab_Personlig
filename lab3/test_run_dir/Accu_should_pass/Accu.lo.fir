FIRRTL version 1.1.0
circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    input io_setZero : UInt<1>
    output io_dout : UInt<8>

    node res = UInt<1>("h0") @[Accu.scala 10:17 14:7]
    io_dout <= pad(res, 8) @[Accu.scala 18:11]
