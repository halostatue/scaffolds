# {{ .ProjectSnake }} Security

## LLM-Generated Security Report Policy

Absolutely no security reports will be accepted that have been generated solely
by LLM agents. There must be a human that confirms the issue.

## Supported Versions

Security reports are accepted for the most recent major release of each package
with support for the previous major version ending immediately.

`{{ .ProjectSnake }}` supports the two most recent major versions of Gleam
(currently `{{ .Computed.gleamPrevMinor }}` and {{ .Computed.gleamCurrMinor }})
and is tested on Node 24, Node 26, the latest Bun, the latest Deno, and Erlang
OTP 27, 28, and 29.

## Reporting a Vulnerability

Create a [private vulnerability report][advisory] with GitHub.

[advisory]: {{.Computed.githubUrl}}/security/advisories/new
