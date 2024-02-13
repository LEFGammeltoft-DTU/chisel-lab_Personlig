import chisel3._

class Mux2 extends Module {
  val io = IO(new Bundle {
    val a = Input(Bool())
    val b = Input(Bool())
    val sel = Input(Bool())
    val y = Output(Bool())
  })

  val a = io.a
  val b = io.b
  val sel = io.sel
  val res = Wire(Bool())

  // ***** your code starts here *****

  // res := (a & !sel) | (b & sel) boolean solution for mux

  /*when (!sel) { Mux using when (cond) function
    res:= a
  } .otherwise {
    res:= b
  } */
res := Mux(sel,b,a) //Mux with the build in mux command

  // ***** your code ends here *****

  io.y := res
}


