# `{{ .ProjectSnake }}` Security

{{ partial "security_llm_policy" . }}
## Supported Versions

Security reports are accepted for the most recent major release with support
for the previous major version ending immediately.

`{{ .ProjectSnake }}` supports the two most recent major versions of Gleam
(currently `{{ .Computed.gleamPrevMinor }}` and
`{{ .Computed.gleamCurrMinor }}`) and is tested on Node 24, Node 26, the
latest Bun, the latest Deno, and Erlang OTP 27, 28, and 29.

{{ partial "security_reporting" . -}}
