# {{ .ProjectPascal }} Security

## LLM-Generated Security Report Policy

Absolutely no security reports will be accepted that have been generated solely
by LLM agents. There must be a human that confirms the issue.

## Supported Versions

Security reports are accepted for the most recent major release with support for
the previous major version ending immediately.

{{ .ProjectPascal }} supports the latest patch version of all Rust versions at
or greater than the MSRV specified in `Cargo.toml`. Unless required by
dependencies, the MSRV will not be increased until at least six months after a
new Rust version is released.

## Reporting a Vulnerability

Create a [private vulnerability report][advisory] with GitHub.

[advisory]: {{.Computed.githubUrl}}/security/advisories/new
