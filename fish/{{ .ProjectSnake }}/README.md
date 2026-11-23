# {{ .Computed.githubRepoName }}

[![Version](https://img.shields.io/github/tag/{{ .Computed.githubRepoName }}.svg?label=Version)]({{.Computed.githubUrl}}/releases)

{{ .Scaffold.description }}

## Installation

Install with [Fisher][fisher]:

```fish
fisher install {{ .Computed.githubRepoName }}@v1
```

### System Requirements

- [fish][fish] 4.0+

## Functions

> A description of the functions added by this plugin.

### {{ .ProjectSnake }}

> A description of the function `{{ .ProjectSnake }}`.

```fish
$ {{ .ProjectSnake }} example
example output
```

## Semantic Versioning

{{ .ProjectPascal }} follows [Semantic Versioning 2.0][semver].

[fish shell]: https://fishshell.com "friendly interactive shell"
[fish]: https://github.com/fish-shell/fish-shell
[fisher]: https://github.com/jorgebucaran/fisher
[semver]: https://semver.org/
