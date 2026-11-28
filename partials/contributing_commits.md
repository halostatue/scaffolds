{{- /* CONTRIBUTING.md section. */ -}}

## Commit Conventions

{{ .Computed.projectName }} has adopted a variation of the Conventional
Commits format for commit messages. The following types are permitted:

| Type    | Purpose                                               |
| ------- | ----------------------------------------------------- |
| `feat`  | A new feature                                         |
| `fix`   | A bug fix                                             |
| `chore` | A code change that is neither a bug fix nor a feature |
| `docs`  | Documentation updates                                 |
| `deps`  | Dependency updates, including GitHub Actions.         |

{{ .Computed.We }} encourage the use of [Tim Pope's][tpope-qcm] or
[Chris Beam's][cbeams] guidelines on the writing of commit messages

{{ .Computed.We }} require the use of [git][trailers1] [trailers][trailers2]
for specific additional metadata and strongly encourage it for others. The
conditionally required metadata trailers are:

- `Breaking-Change`: if the change is a breaking change. **Do not** use the
  shorthand form (`feat!(scope)`) or `BREAKING CHANGE`.

- `Signed-off-by`: this is required for all developers except {{ if
  .Computed.plural }}the maintainers{{ else }}me{{ end }}, as outlined in the
  [Licence](./LICENCE.md#developer-certificate-of-origin).

- `Fixes` or `Resolves`: If a change fixes one or more open issues, that issue
  must be included in the `Fixes` or `Resolves` trailer. Multiple issues
  should be listed comma separated in the same trailer: `Fixes: #1, #5, #7`,
  but _may_ appear in separate trailers. While both `Fixes` and `Resolves` are
  synonyms, only _one_ should be used in a given commit or pull request.

- `Related to`: If a change does not fix an issue, those issue references
  should be included in this trailer.

[cbeams]: https://cbea.ms/git-commit/
[tpope-qcm]: https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html
[trailers1]: https://git-scm.com/docs/git-interpret-trailers
[trailers2]: https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---trailerlttokengtltvaluegt
