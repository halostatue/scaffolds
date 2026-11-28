# {{ .ProjectPascal }} Security

{{ partial "security_llm_policy" . }}
## Supported Versions

Security reports are accepted for the most recent major release with support
for the previous major version ending immediately.

{{ .ProjectPascal }} supports the two most recent versions of Go.

As of {{ now | date "January 2006" }}, the support list is:

| Go Version |
| ---------- |
| 1.26       |
| 1.27       |

The oldest supported version of Go will not be deprecated until the release of
a new version of Go.

{{ partial "security_reporting" . -}}
