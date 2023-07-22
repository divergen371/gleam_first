import gleam/io
import gleam/list

pub fn main() {
  io.println("Hello from test!" <> " " <> "Hi!")
  io.println(
    "マルチラインに
  対応してるんです。",
  )
  io.debug(add(3, 4))
  io.debug(multiply(3, 4))
  list.map([1, 2, 3], fn(x) { x * x })
  |> io.debug()
  list.map([1, 2, 3], fn(x) { quad(x) })
  |> list.reduce(fn(acc, x) { acc + x })
  |> io.debug()
  quad(2)
  |> io.debug()
}

pub fn add(x: Int, y: Int) -> Int {
  x + y
}

pub fn multiply(x: Int, y: Int) -> Int {
  x * y
}

pub fn double(x: Int) -> Int {
  x * 2
}

pub fn quad(x: Int) -> Int {
  double(double(x))
}
