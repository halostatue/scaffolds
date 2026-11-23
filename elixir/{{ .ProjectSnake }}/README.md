# {{ .ProjectPascal }}

[![Hex.pm](https://img.shields.io/hexpm/v/{{.ProjectSnake}}.svg?style=for-the-badge "Hex Version")](https://hex.pm/packages/{{.ProjectSnake}})
[![Hex Docs](https://img.shields.io/badge/hex-docs-purple.svg?style=for-the-badge)][docs]
[![{{ .Scaffold.licenceId }}](https://img.shields.io/hexpm/l/{{.ProjectSnake}}.svg?style=for-the-badge "{{ .Scaffold.licenceId }}")]({{.Computed.githubUrl}}/blob/main/LICENCE.md)
![Coverage](https://img.shields.io/coverallsCoverage/github/{{.Computed.githubRepoName}}?style=for-the-badge "Coverage")

- code :: <{{ .Computed.githubUrl }}>
- issues :: <{{ .Computed.githubUrl }}/issues>

{{ .Scaffold.description }}

## Installation

Add `{{ .ProjectSnake }}` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:{{ .ProjectSnake }}, "~> 0.1"}
  ]
end
```

Documentation is found on [HexDocs][docs].

## Semantic Versioning

{{ .ProjectPascal }} follows [Semantic Versioning 2.0][semver].

[docs]: https://{{.ProjectKebab}}.hexdocs.pm/
[semver]: https://semver.org/
