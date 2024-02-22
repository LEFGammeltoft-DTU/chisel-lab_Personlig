FIRRTL version 1.1.0
circuit Delay :
  module Delay :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    output io_dout : UInt<8>

    reg reg1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg1) @[Delay.scala 12:17]
    reg reg2 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg2) @[Delay.scala 13:17]
    node res = reg2 @[Delay.scala 9:17 17:7]
    io_dout <= res @[Delay.scala 23:11]
    reg1 <= io_din @[Delay.scala 15:8]
    reg2 <= reg1 @[Delay.scala 16:8]
