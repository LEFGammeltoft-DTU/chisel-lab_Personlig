FIRRTL version 1.1.0
circuit Count15 :
  module Count15 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    node res = UInt<1>("h0") @[Count15.scala 8:17 12:7]
    io_dout <= pad(res, 8) @[Count15.scala 16:11]
