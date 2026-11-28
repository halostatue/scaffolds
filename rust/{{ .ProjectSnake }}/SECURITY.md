# {{ .ProjectPascal }} Security Policy

{{ partial "security_llm_policy" . }}
## Supported Versions

Security reports are accepted for the most recent major release with support
for the previous major version ending immediately.

{{ .ProjectPascal }} supports the latest patch version of all Rust versions at
or greater than the MSRV specified in `Cargo.toml`. Unless required by
dependencies, the MSRV will not be increased until at least six months after a
new Rust version is released.

{{ partial "security_reporting" . -}}
