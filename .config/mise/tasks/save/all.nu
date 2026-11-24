#!/usr/bin/env nu
#MISE description="Mark all for commit"

use scaffolds.nu

for name in [elixir fish gleam gleam-action gleam-monorepo go ruby rust] {
    scaffolds swap save $name
}
