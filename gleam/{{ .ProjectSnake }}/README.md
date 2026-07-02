# `{{ .ProjectSnake }}`

[![Hex.pm](https://img.shields.io/hexpm/v/{{.ProjectSnake}}.svg?style=for-the-badge)][hexpm]
[![Hex Docs](https://img.shields.io/badge/hex-docs-purple.svg?style=for-the-badge)][docs]
[![{{ .Scaffold.licenceId }}](https://img.shields.io/hexpm/l/{{.ProjectSnake}}.svg?style=for-the-badge "{{ .Scaffold.licenceId }}")]({{.Computed.githubUrl}}/blob/main/LICENCE.md)
![Erlang Compatible](https://img.shields.io/badge/target-erlang-f3e155?style=for-the-badge "Erlang Compatible")
![JavaScript Compatible](https://img.shields.io/badge/target-javascript-f3e155?style=for-the-badge "JavaScript Compatible")

- code :: <{{ .Computed.githubUrl }}>
- issues :: <{{ .Computed.githubUrl }}/issues>

{{ .Scaffold.description }}

## Installation

```sh
gleam add {{ .ProjectSnake }}@1
```

```gleam
import {{ .ProjectSnake }}

pub fn main() {
  {{ .ProjectSnake }}.hello()
}
```

Further documentation can be found at <https://{{.ProjectKebab}}.hexdocs.pm/>.

## Semantic Versioning

`{{ .ProjectSnake }}` follows [Semantic Versioning 2.0][semver].

[docs]: https://{{.ProjectKebab}}.hexdocs.pm/
[hexpm]: https://hex.pm/packages/{{.ProjectSnake}}
[semver]: https://semver.org/
