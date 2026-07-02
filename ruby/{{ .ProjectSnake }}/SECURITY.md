# {{ .ProjectPascal }} Security

## LLM-Generated Security Report Policy

Absolutely no security reports will be accepted that have been generated solely
by LLM agents. There must be a human that confirms the issue.

## Supported Versions

Security reports are accepted for the most recent major release and the previous
version for a limited time after the initial major release version.

After a major release, the previous version will receive full support for three
months and security support for an additional three months (for a total of six
months).

Because {{ .ProjectSnake }} supports {{ .Scaffold.rubyVersion }}, security
reports will only be accepted when they can be demonstrated on {{
.Scaffold.rubyVersion }}.

## Reporting a Vulnerability

Create a [private vulnerability report][advisory] with GitHub.

[advisory]: {{.Computed.githubUrl}}/security/advisories/new
