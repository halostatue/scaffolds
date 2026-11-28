# Contributing

Contribution to {{ .ProjectPascal }} is encouraged: bug reports, discussions,
feature requests, or code contributions. New features should be proposed and
discussed in an [issue][issues].

[issues]: {{.Computed.githubUrl}}/issues

Before contributing patches, please read the [Licence](./LICENCE.md).

{{ .ProjectPascal }} is governed under the
[Contributor Covenant Code of Conduct][cccoc].

## Code Guidelines

{{ .Computed.We }} have several guidelines for contributing code through pull
requests:

- All code changes require tests. In most cases, this will be added or updated
  unit tests using Go's standard testing package.

- {{ .Computed.We }} use code formatters, static analysis tools, and linting
  to ensure consistent styles and formatting. There should be no warnings
  output from compile or test run processes. {{ .Computed.We }} use `gofmt`,
  `go vet`, and `staticcheck`.

- Proposed changes should be on a thoughtfully-named topic branch and
  organized into logical commit chunks as appropriate.

- Use [Conventional Commits][conventional] with {{ .Computed.our }}
  [conventions](#commit-conventions).

- Versions must not be updated in pull requests.

- Documentation should be added or updated as appropriate for new or updated
  functionality.

- New dependencies are discouraged and their addition must be discussed,
  regardless whether it is a development dependency, optional dependency, or
  runtime dependency.

- All GitHub Actions checks marked as required must pass before a pull request
  may be accepted and merged.

{{ partial "contributing_ai_policy" . }}

{{ partial "contributing_commits" . }}

## Contributors

{{ .Computed.author }} created {{ .ProjectPascal }}.

[cccoc]: ./CODE_OF_CONDUCT.md
[conventional]: https://www.conventionalcommits.org/en/v1.0.0/
[dco]: licences/dco.txt
