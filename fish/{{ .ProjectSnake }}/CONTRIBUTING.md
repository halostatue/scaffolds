# Contributing

Contribution is encouraged: bug reports, feature requests, or code
contributions. New features should be proposed and discussed in an
[issue][issues].

Before contributing patches, please read the [Licence](./LICENCE.md).

This plugin is governed under the
[Contributor Covenant Code of Conduct][cccoc].

## Code Guidelines

{{ .Computed.We }} have several guidelines for contributing code through pull requests:

- If tests exist for the project, the test suite should pass. New or changed
  functionality should have tests added. The test suite is written with
  [`fishtape`][fishtape].

- Code style is mostly provided by `fish_indent`. There are a few things not
  covered by `fish_indent`:

  - Where possible, prefer using fish built-ins over external programs like
    sed or awk.

  - For simple conditional execution, prefer `and` or `or`. Avoid chaining
    these conditions and prefer `if` with `&&` or `||` expressions as
    appropriate.

- Proposed changes should be on a thoughtfully-named topic branch and
  organized into logical commit chunks as appropriate.

- Use [Conventional Commits][conventional] with {{ .Computed.our }}
  [conventions](#commit-conventions).

- Do not change the version number; when your patch is accepted and a release
  is made, the version will be updated at that point.

- Documentation should be added or updated as appropriate for new or updated
  functionality.

- All GitHub Actions checks marked as required must pass before a pull request
  may be accepted and merged.

- Add your name or GitHub handle to `CONTRIBUTORS.md` and a record in the
  `CHANGELOG.md` as a separate commit from your main change. (Follow the style
  in the `CHANGELOG.md` and provide a link to your PR.)

- Include your DCO sign-off in each commit message (see
  [LICENCE](LICENCE.md)).

{{ partial "contributing_ai_policy" . }}
{{ partial "contributing_commits" . }}
## Contributors

{{ .Computed.author }} created `{{ .ProjectSnake }}`.

[cbeams]: https://cbea.ms/git-commit/
[cccoc]: ./CODE_OF_CONDUCT.md
[conventional]: https://www.conventionalcommits.org/en/v1.0.0/
[dco]: licences/dco.txt
[fishtape]: https://github.com/jorgebucaran/fishtape
[issues]: {{.Computed.githubUrl}}/issues
[tpope-qcm]: https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[trailers1]: https://git-scm.com/docs/git-interpret-trailers
[trailers2]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---trailerlttokengtltvaluegt
