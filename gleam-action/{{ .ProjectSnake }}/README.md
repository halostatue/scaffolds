# `{{ .Computed.githubRepoName }}`

[![{{ .Scaffold.licenceId }}](https://img.shields.io/badge/licence{{.Computed.licenceShield}}-blue?style=for-the-badge "{{.Scaffold.licenceId}}")]({{.Computed.githubUrl}}/blob/main/LICENCE.md)

- code :: <{{.Computed.githubUrl}}>
- issues :: <{{.Computed.githubUrl}}/issues>

{{ .Scaffold.description }}

## Usage

```yaml
- uses: {{ .Computed.githubRepoName }}@v1.0.0
  with:
    token: ${{ "{{" }} secrets.GITHUB_TOKEN {{ "}}" }}
```

## Inputs

| Input   | Description                              | Required | Default                               |
| ------- | ---------------------------------------- | -------- | ------------------------------------- |
| `token` | A GitHub token for use with this action. | No       | `${{ "{{" }} github.token {{ "}}" }}` |

## Development

This action is written in [Gleam][gleam] targeting JavaScript and bundled with
[pontil_build][pontil].

```sh
gleam test        # Run tests
just build        # Build the action bundle
```

## Semantic Versioning

`{{ .Computed.githubRepoName }}` follows [Semantic Versioning 2.0][semver].

[gleam]: https://gleam.run
[pontil]: https://pontil-build.hexdocs.pm/
[semver]: https://semver.org/
