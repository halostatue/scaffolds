# {{ .Computed.githubRepoName }}

[![Version][version]]({{.Computed.githubUrl}}/releases)

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

## Licence

[{{ .Scaffold.licenceId }}](./LICENCE.md)

## Change Log

[CHANGELOG](./CHANGELOG.md)

## Contributing

- [Contributing](./CONTRIBUTING.md)
- [Contributors](./CONTRIBUTORS.md)
- [Code of Conduct](./CODE_OF_CONDUCT.md)

[fish shell]: https://fishshell.com "friendly interactive shell"
[fisher]: https://github.com/jorgebucaran/fisher
[fish]: https://github.com/fish-shell/fish-shell
[version]: https://img.shields.io/github/tag/{{ .Computed.githubRepoName }}.svg?label=Version
