
import heap._
import Heap.Operation
import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

class HeapTest extends AnyFlatSpec with ChiselScalatestTester {

  behavior of "Heap"

  it should "present the currently largest number on io.root while ready and not empty" in {
    test(new TestHeap) { dut =>

      // setup a new operation
      dut.io.op.poke(Operation.Insert)
      dut.io.newValue.poke(220.U)
      dut.io.valid.poke(1.B)

      // step to start operation
      dut.clock.step()

      // the operation has been initiated and we can deassert valid
      dut.io.valid.poke(0.B)

      // wait for the dut to get ready again
      while (!dut.io.ready.peekBoolean()) dut.clock.step()

      // the inserted value should appear as the largest value for now
      dut.io.root.expect(220.U)

      // write more test code here
      // setup a new operation
      dut.io.op.poke(Operation.Insert)
      dut.io.newValue.poke(230.U)
      dut.io.valid.poke(1.B)

      // step to start operation
      dut.clock.step()

      // the operation has been initiated and we can deassert valid
      dut.io.valid.poke(0.B)

      // wait for the dut to get ready again
      while (!dut.io.ready.peekBoolean()) dut.clock.step()

      // the inserted value should appear as the largest value for now
      dut.io.root.expect(230.U)

    }
  }

  it should "assert empty after all numbers have been removed" in {
    test(new TestHeap) { dut =>
      dut.io.op.poke(Operation.Insert)
      dut.io.newValue.poke(10.U)
      dut.io.valid.poke(1.B)

      dut.clock.step()

      dut.io.valid.poke(0.B)

      while (!dut.io.ready.peekBoolean()) dut.clock.step()

      while (!dut.io.empty.peekBoolean()) {
        dut.io.op.poke(Operation.RemoveRoot)

        dut.io.valid.poke(1.B)

        dut.clock.step()

        dut.io.valid.poke(0.B)

        while (!dut.io.ready.peekBoolean()) dut.clock.step()
      }
      dut.io.empty.expect(1.B)
    }
  }

  it should "assert full when 8 numbers have been inserted" in {
    test(new TestHeap) { dut =>
      while (!dut.io.full.peekBoolean()) {
        for (i <- 0 to 8) {
          dut.io.op.poke(Operation.Insert)
          dut.io.newValue.poke(i.U)
          dut.io.valid.poke(1.B)

          dut.clock.step()

          dut.io.valid.poke(0.B)

          while (!dut.io.ready.peekBoolean()) dut.clock.step()

        }
        dut.io.full.expect(1.B)
      }

    }
  }

  it should "deassert full after one number is removed when it was full" in {
    test(new TestHeap) { dut =>
      while (!dut.io.full.peekBoolean()) {
        for (i <- 0 to 8) {
          dut.io.op.poke(Operation.Insert)
          dut.io.newValue.poke(i.U)
          dut.io.valid.poke(1.B)

          dut.clock.step()

          dut.io.valid.poke(0.B)

          while (!dut.io.ready.peekBoolean()) dut.clock.step()
        }

        dut.io.op.poke(Operation.RemoveRoot)
        dut.io.valid.poke(1.B)

        dut.clock.step()

        dut.io.valid.poke(0.B)

        while (!dut.io.ready.peekBoolean()) dut.clock.step()


        dut.io.full.expect(0.B)

      }
    }
  }
  it should "not change the sequence if new insertions are issued when it is full" in {
    test(new TestHeap) { dut =>
      while (!dut.io.full.peekBoolean()) {
        for (i <- 0 to 8) {
          dut.io.op.poke(Operation.Insert)
          dut.io.newValue.poke(i.U)
          dut.io.valid.poke(1.B)

          dut.clock.step()

          dut.io.valid.poke(0.B)

          while (!dut.io.ready.peekBoolean()) dut.clock.step()
        }
        val sequence = dut.io.root.peekInt()

        dut.io.op.poke(Operation.Insert)
        dut.io.newValue.poke(100.U)
        dut.io.valid.poke(1.B)

        dut.clock.step()

        dut.io.valid.poke(0.B)

        while (!dut.io.ready.peekBoolean()) dut.clock.step()

      dut.io.root.expect(sequence)
      }
    }
  }
}