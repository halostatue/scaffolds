# Contributing

Contribution to `{{ .Computed.githubRepoName }}` is encouraged: bug reports,
feature requests, or code contributions. New features should be proposed and
discussed in an [issue][issues].

Before contributing patches, please read the [Licence](./LICENCE.md).

This action is governed under the
[Contributor Covenant Code of Conduct][cccoc].

## Code Guidelines

{{ .Computed.We }} have several guidelines for contributing code through pull requests:

- {{ .Computed.We }} use [pinact][pinact] and [zizmor][zizmor] to ensure that the action uses
  up-to-date dependencies as required.

- Proposed changes should be on a thoughtfully-named topic branch and
  organized into logical commit chunks as appropriate.

- Use [Conventional Commits][conventional] with {{ .Computed.our }}
  [conventions](#commit-conventions).

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

{{ .Computed.author }} created `{{ .Computed.githubRepoName }}`.

[cbeams]: https://cbea.ms/git-commit/
[cccoc]: ./CODE_OF_CONDUCT.md
[conventional]: https://www.conventionalcommits.org/en/v1.0.0/
[dco]: licences/dco.txt
[issues]: {{.Computed.githubUrl}}/issues
[pinact]: https://github.com/suzuki-shunsuke/pinact
[tpope-qcm]: https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[trailers1]: https://git-scm.com/docs/git-interpret-trailers
[trailers2]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---trailerlttokengtltvaluegt
[zizmor]: https://zizmor.sh
