//// Core library for {{ .ProjectSnake }}.
////
//// This module contains the action's logic, independent of the GitHub Actions
//// runtime. It can be tested and used without pontil or action inputs.

import gleam/javascript/promise.{type Promise}

pub const name = "{{ .Computed.githubRepoName }}"

pub const version = "1.0.0"

/// Run the core action logic.
pub fn run() -> Promise(Result(Nil, String)) {
  promise.resolve(Ok(Nil))
}
