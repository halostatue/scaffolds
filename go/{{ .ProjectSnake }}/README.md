# {{ .ProjectPascal }}

[![Go Reference](https://pkg.go.dev/badge/github.com/{{.Computed.githubRepoName}}.svg)][godoc]
[![Go Report Card](https://goreportcard.com/badge/github.com/{{.Computed.githubRepoName}})][goreport]
[![{{ .Scaffold.licenceId }}](https://img.shields.io/hexpm/l/{{.ProjectSnake}}.svg?style=for-the-badge "{{ .Scaffold.licenceId }}")]({{.Computed.githubUrl}}/blob/main/LICENCE.md)

- code :: <{{.Computed.githubUrl}}>
- issues :: <{{.Computed.githubUrl}}/issues>

{{ .Scaffold.description }}

## Installation

```bash
go get github.com/{{ .Computed.githubRepoName }}
```

## Usage

```go
import "github.com/{{ .Computed.githubRepoName }}"
```

## Semantic Versioning

{{ .ProjectPascal }} follows [Semantic Versioning 2.0][semver].

[godoc]: https://pkg.go.dev/github.com/{{.Computed.githubRepoName}}
[goreport]: https://goreportcard.com/report/github.com/{{.Computed.githubRepoName}}
[semver]: https://semver.org/
