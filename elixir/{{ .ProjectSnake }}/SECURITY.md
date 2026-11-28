# {{ .ProjectPascal }} Security Policy

{{ partial "security_llm_policy" . }}
## Supported Versions

Security reports are accepted for the most recent major release with support
for the previous major version ending immediately.

{{ .ProjectPascal }} supports at most the three most recent versions of Elixir
and supported [Erlang/OTP versions][otp-versions].

As of {{ now | date "January 2006" }}, the support list is:

| Elixir | Erlang         |
| ------ | -------------- |
| 1.18   | 25, 26, 27, 28 |
| 1.19   | 26, 27, 28     |
| 1.20   | 27, 28, 29     |

The oldest supported version of Elixir will not be deprecated until six months
after the release of a new version of Elixir.

{{ partial "security_reporting" . -}}
[otp-versions]: https://elixir.hexdocs.pm/compatibility-and-deprecations.html#between-elixir-and-erlang-otp
