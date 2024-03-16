// Opgave 14.3 i Dally fsm
import chisel3._
import chisel3.util._

class Stoplight extends Module {
  val io = IO(new Bundle {
  val carew = Input(Bool())
  val light = Output(UInt(6.W))
  })


object State extends ChiselEnum {
  val GNS, YNS, RB1, GEW, YEW, RB2 = Value
}
import State._
val stateReg = RegInit(GNS)
io.carew := false.B
io.light := "b100001".U

switch(stateReg){
  is(GNS){
    io.light := "b100001".U
    when(io.carew){
      stateReg:= YNS
    }.otherwise(stateReg := GNS)
  }
   is(YNS){
    io.light := "b010001".U
    stateReg:= RB1
   }
   is(RB1){
   io.light := "b001001".U
   stateReg:= GEW
   }
    is(GEW){
      io.light := "b001100".U
      stateReg:= YEW
    }
    is(RB2){
      io.light := "b001010".U
      stateReg:= GNS
    }



}}