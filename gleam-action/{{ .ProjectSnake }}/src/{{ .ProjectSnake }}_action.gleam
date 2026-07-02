//// GitHub Action entrypoint for {{ .ProjectSnake }}.
////
//// This module handles action-specific concerns: reading inputs, calling the
//// core library, and reporting results via pontil.

import gleam/javascript/promise
import pontil
import {{ .ProjectSnake }}

pub fn main() -> Nil {
  pontil.info({{ .ProjectSnake }}.name <> " " <> {{ .ProjectSnake }}.version)

  promise.map({{ .ProjectSnake }}.run(), fn(result) {
    case result {
      Ok(_) -> pontil.info("Done.")
      Error(err) -> pontil.set_failed(err)
    }
  })

  Nil
}
