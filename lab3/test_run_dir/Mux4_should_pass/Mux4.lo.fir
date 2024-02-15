FIRRTL version 1.1.0
circuit Mux4 :
  module Mux4 :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<1>
    input io_b : UInt<1>
    input io_c : UInt<1>
    input io_d : UInt<1>
    input io_sel : UInt<2>
    output io_y : UInt<1>

    io_y <= io_c @[Mux4.scala 23:8]
