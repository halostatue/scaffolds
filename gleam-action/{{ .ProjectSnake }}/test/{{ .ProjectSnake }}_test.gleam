import gleeunit
import {{ .ProjectSnake }}

pub fn main() {
  gleeunit.main()
}

pub fn version_test() {
  assert {{ .ProjectSnake }}.version == "1.0.0"
}
