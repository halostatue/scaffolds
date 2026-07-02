# {{ .ProjectSnake }}

{{ .Scaffold.description }}

This is a monorepo containing the following packages, each published
independently to [Hex][hex]:

| Package                                      | Description |
| -------------------------------------------- | ----------- |
| [`{{ .ProjectSnake }}`][{{ .ProjectSnake }}] | TODO        |

## Development

Requires [Gleam][gleam] >= {{ .Computed.gleamMinVersion }} and [just][just].

```sh
just test          # Run all tests
just lint          # Lint all packages
just format-check  # Check formatting
```

## Semantic Versioning

`{{ .Computed.githubRepoName }}` follows [Semantic Versioning 2.0][semver].

[gleam]: https://gleam.run
[hex]: https://hex.pm
[just]: https://just.systems
[{{ .ProjectSnake }}]: https://{{.ProjectKebab}}.hexdocs.pm/
[semver]: https://semver.org/
