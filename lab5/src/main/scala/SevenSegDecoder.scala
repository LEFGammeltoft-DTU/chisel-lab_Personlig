import chisel3._
import chisel3.util._

class SevenSegDecoder extends Module {
  val io = IO(new Bundle {
    val sw = Input(UInt(4.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val sevSeg = WireDefault(0.U(7.W))

  // ***** your code starts here *****

switch (io.sw) {
  is ("h0".U) {sevSeg := "b0111111".U}
  is ("h1".U) {sevSeg := "b0000110".U}
  is ("h2".U) {sevSeg := "b1011011".U}
  is ("h3".U) {sevSeg := "b1001111".U}
  is ("h4".U) {sevSeg := "b1100110".U}
  is ("h5".U) {sevSeg := "b1101101".U}
  is ("h6".U) {sevSeg := "b1111101".U}
  is ("h7".U) {sevSeg := "b0000111".U}
  is ("h8".U) {sevSeg := "b1111111".U}
  is ("h9".U) {sevSeg := "b1101111".U}
  is ("hA".U) {sevSeg := "b1011111".U}
  is ("hB".U) {sevSeg := "b1111100".U}
  is ("hC".U) {sevSeg := "b0111001".U}
  is ("hD".U) {sevSeg := "b1011110".U}
  is ("hE".U) {sevSeg := "b1111001".U}
  is ("hF".U) {sevSeg := "b1110001".U}
}
  // ***** your code ends here *****

  io.seg := ~sevSeg
  io.an := "b1110".U
}

// generate Verilog
object SevenSegDecoder extends App {
  emitVerilog(new SevenSegDecoder())
}


