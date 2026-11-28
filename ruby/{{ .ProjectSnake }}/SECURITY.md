# {{ .ProjectPascal }} Security Policy

{{ partial "security_llm_policy" . }}
## Supported Versions

Security reports are accepted for the most recent major release and the
previous version for a limited time after the initial major release version.

After a major release, the previous version will receive full support for
three months and security support for an additional three months (for a total
of six months).

Because {{ .ProjectSnake }} supports {{ .Scaffold.rubyVersion }}, security
reports will only be accepted when they can be demonstrated on
{{ .Scaffold.rubyVersion }}.

{{ partial "security_reporting" . -}}
