import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class Mux5Test extends AnyFlatSpec with ChiselScalatestTester {
  "Mux5 " should "pass" in {
    test(new Mux5()) { dut =>

      for (l <- 0 until 5) {
        dut.io.sel.poke(l.U)
        if (l === 0) {
          for (i <- 0 to 5) {
            dut.io.a.poke(i.U)
            dut.clock.step()
            dut.io.y.expect(i.U)
          }
        }
        if (l === 1) {
          for (i <- 0 to 5) {
            dut.io.b.poke(i.U)
            dut.clock.step()
            dut.io.y.expect(i.U)
          }
        }
        if (l === 2) {
          for (i <- 0 to 5) {
            dut.io.c.poke(i.U)
            dut.clock.step()
            dut.io.y.expect(i.U)
          }
        }
        if (l === 3) {
          for (i <- 0 to 5) {
            dut.io.d.poke(i.U)
            dut.clock.step()
            dut.io.y.expect(i.U)
          }
        }
        if (l === 4) {
          for (i <- 0 to 5) {
            dut.io.e.poke(i.U)
            dut.clock.step()
            dut.io.y.expect(i.U)
          }
        }
      }
    }
  }
}
//for (i <- 0 to 31) {
//dut.io.a.poke((i &= 0x01)) kompakt