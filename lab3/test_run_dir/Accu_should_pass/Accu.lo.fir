FIRRTL version 1.1.0
circuit Accu :
  module Accu :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<8>
    input io_setZero : UInt<1>
    output io_dout : UInt<8>

    reg reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), reg) @[Accu.scala 14:20]
    node _reg_T = add(reg, io_din) @[Accu.scala 16:14]
    node _reg_T_1 = tail(_reg_T, 1) @[Accu.scala 16:14]
    node _GEN_0 = mux(io_setZero, UInt<1>("h0"), _reg_T_1) @[Accu.scala 18:19 16:7 19:8]
    node res = reg @[Accu.scala 10:17 21:7]
    io_dout <= res @[Accu.scala 27:11]
    reg <= mux(reset, UInt<8>("h0"), _GEN_0) @[Accu.scala 14:{20,20}]
