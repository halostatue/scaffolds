# {{ .ProjectSnake }}

{{ .Scaffold.description }}

This is a monorepo containing the following packages, each published
independently to [Hex][hex]:

| Package                                      | Description |
| -------------------------------------------- | ----------- |
| [`{{ .ProjectSnake }}`][{{ .ProjectSnake }}] | TODO        |

## Development

Requires [Gleam][gleam] >= {{ .Computed.gleamMinVersion }} and [`mise`][mise].

```sh
mise run test          # Run all tests
mise run lint          # Lint all packages
mise run format:check  # Check formatting
```

## Semantic Versioning

`{{ .Computed.githubRepoName }}` follows [Semantic Versioning 2.0][semver].

[gleam]: https://gleam.run
[hex]: https://hex.pm
[mise]: https://mise.jdx.dev
[{{ .ProjectSnake }}]: https://{{.ProjectKebab}}.hexdocs.pm/
[semver]: https://semver.org/
