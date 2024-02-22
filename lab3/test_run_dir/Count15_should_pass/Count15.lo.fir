FIRRTL version 1.1.0
circuit Count15 :
  module Count15 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg reg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), reg) @[Count15.scala 12:20]
    node _reg_T = add(reg, UInt<1>("h1")) @[Count15.scala 14:15]
    node _reg_T_1 = tail(_reg_T, 1) @[Count15.scala 14:15]
    node res = reg @[Count15.scala 8:17 15:7]
    io_dout <= pad(res, 8) @[Count15.scala 21:11]
    reg <= mux(reset, UInt<4>("h0"), _reg_T_1) @[Count15.scala 12:{20,20} 14:8]
