import chisel3._
import chisel3.util._


class BcdTable extends Module { //binary to decimal bcd converter fra Martin
  val io = IO(new Bundle {
    val address = Input(UInt(8.W))
    val data = Output(UInt(8.W))
  })

  val table = Wire(Vec(100, UInt(8.W)))

  // Convert binary to BCD
  for (i <- 0 until 100) {
    table(i) := (((i/10)<<4) + i%10).U
  }

  io.data := table(io.address)
} //end of BCD


class DisplayMultiplexer(maxCount: Int) extends Module {
  val io = IO(new Bundle {
    val sum = Input(UInt(8.W))
    val price = Input(UInt(8.W))
    val seg = Output(UInt(7.W))
    val an = Output(UInt(4.W))
  })

  val pricebcd = Module(new BcdTable) //Bcd modul til prisen
  pricebcd.io.address := io.price // sender prisens værdi fra io.sw til bcd funktion
  val sumbcd = Module(new BcdTable) //samme for sum som for pris
  sumbcd.io.address := io.sum

  val sevSeg = WireDefault("b1111111".U(7.W))
  val select = WireDefault("b0001".U(4.W))

  val sevensegdec = Module(new SevenSegDec()) //nyt sevensecdec modul
  val onekhzReg = RegInit(100000.U - 1.U(17.W)) // Creates 1Khz register
  val onekhztick = onekhzReg === 0.U //enables 1khz tick
  onekhzReg := onekhzReg - 1.U //decrements 1khz register

  sevensegdec.io.in := "h0".U //initere en base værdi for input VIGTIG!!
  val shiftReg = RegInit("b0001".U(4.W)) //laver shift register

when(onekhztick) {
  shiftReg := Mux(shiftReg(3), "b0001".U, shiftReg << 1) // Shift left, wrap around if the last bit is set
}
  switch(shiftReg){
    is("b0001".U){
      sevensegdec.io.in := pricebcd.io.data(3,0) //sender de 4 mindst btydende cifre til første ciffer på displayet
    }
    is("b0010".U){
      sevensegdec.io.in := pricebcd.io.data(7,4)
    }
    is("b0100".U){
      sevensegdec.io.in := sumbcd.io.data(3,0)
    }
    is("b1000".U){
      sevensegdec.io.in := sumbcd.io.data(7,4)
    }


  }
  select := shiftReg
  sevSeg := sevensegdec.io.out
  // *** your code ends here

  io.seg := ~sevSeg
  io.an := ~select
}

/*when(onekhztick) {
  shiftReg := Mux(shiftReg(3), "b0001".U, shiftReg << 1) // Shift left, wrap around if the last bit is set
}
  switch(shiftReg){
    is("b0001".U){
      sevensegdec.io.in := io.price(3,0)
    }
    is("b0010".U){
      sevensegdec.io.in := io.price(7,4)
    }
    is("b0100".U){
      sevensegdec.io.in := io.sum(3,0)
    }
    is("b1000".U){
      sevensegdec.io.in := io.sum(7,4)
    }
*/