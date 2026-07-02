import gleeunit
import {{ .ProjectSnake }}

pub fn main() {
  gleeunit.main()
}

pub fn hello_test() {
  assert {{ .ProjectSnake }}.hello() == "Hello from {{ .ProjectSnake }}!"
}
