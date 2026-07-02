# {{ .ProjectPascal }}

[![Crates.io](https://img.shields.io/crates/v/{{.ProjectSnake}}.svg?style=for-the-badge)][crate]
[![Docs.rs](https://img.shields.io/docsrs/{{.ProjectSnake}}.svg?style=for-the-badge)][docs]
[![{{ .Scaffold.licenceId }}](https://img.shields.io/crates/l/{{.ProjectSnake}}.svg?style=for-the-badge)]({{.Computed.githubUrl}}/blob/main/LICENCE.md)
[![CI](https://img.shields.io/github/actions/workflow/status/{{.Computed.githubRepoName}}/rust.yml?branch=main&style=for-the-badge)][ci]

- code :: <{{.Computed.githubUrl}}>
- issues :: <{{.Computed.githubUrl}}/issues>

{{ .Scaffold.description }}

## Installation

Add `{{ .ProjectSnake }}` to your `Cargo.toml`:

```toml
[dependencies]
{{ .ProjectSnake }} = "1.0"
```

Or install the binary:

```sh
cargo install {{ .ProjectSnake }}
```

Documentation is found on [docs.rs][docs].

## Semantic Versioning

{{ .ProjectPascal }} follows [Semantic Versioning 2.0][semver].

[ci]: {{.Computed.githubUrl}}/actions/workflows/rust.yml
[crate]: https://crates.io/crates/{{.ProjectSnake}}
[docs]: https://docs.rs/{{.ProjectSnake}}
[licence]: {{.Computed.githubUrl}}/blob/main/LICENCE.md
[semver]: https://semver.org/
