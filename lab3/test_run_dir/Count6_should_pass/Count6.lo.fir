FIRRTL version 1.1.0
circuit Count6 :
  module Count6 :
    input clock : Clock
    input reset : UInt<1>
    output io_dout : UInt<8>

    reg reg : UInt<4>, clock with :
      reset => (UInt<1>("h0"), reg) @[Count6.scala 12:20]
    node _reg_T = add(reg, UInt<1>("h1")) @[Count6.scala 14:14]
    node _reg_T_1 = tail(_reg_T, 1) @[Count6.scala 14:14]
    node _T = eq(reg, UInt<3>("h6")) @[Count6.scala 16:13]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _reg_T_1) @[Count6.scala 16:21 14:7 17:8]
    node res = reg @[Count6.scala 8:17 19:7]
    io_dout <= pad(res, 8) @[Count6.scala 25:11]
    reg <= mux(reset, UInt<4>("h0"), _GEN_0) @[Count6.scala 12:{20,20}]
