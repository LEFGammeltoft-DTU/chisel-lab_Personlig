import chisel3._

class CountSevenSeg extends Module {
  val io = IO(new Bundle {
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })
val sevensegdec = Module(new SevenSegDecoder())

  val sevSeg = WireDefault("b1111111".U(7.W))
  val count = RegInit("h0".U(4.W))


  sevSeg := sevensegdec.io.seg
  sevensegdec.io.sw := count



  // *** your code starts here
val reg1 = RegInit(50000000.U(26.W))

  reg1 := reg1 - 1.U

  when (reg1 === 0.U) {
    count := count + 1.U
    reg1 := 50000000.U
  }
  // *** your code ends here

  io.seg := sevSeg
  io.an := "b1110".U
}

// generate Verilog
object CountSevenSeg extends App {
  emitVerilog(new CountSevenSeg())
}