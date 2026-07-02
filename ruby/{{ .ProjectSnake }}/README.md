# {{ .ProjectPascal }}

[![Gem Version](https://img.shields.io/gem/v/{{.ProjectSnake}}.svg?style=for-the-badge)][gem]
[![Build Status](https://img.shields.io/github/actions/workflow/status/{{.Computed.githubRepoName}}/ruby.yml?branch=main&style=for-the-badge)][ci]
[![{{ .Scaffold.licenceId }}](https://img.shields.io/hexpm/l/{{.ProjectSnake}}.svg?style=for-the-badge "{{ .Scaffold.licenceId }}")]({{.Computed.githubUrl}}/blob/main/LICENCE.md)
![Coveralls](https://img.shields.io/coverallsCoverage/github/{{.Computed.githubRepoName}}?style=for-the-badge)

- code :: <{{.Computed.githubUrl}}>
- issues :: <{{.Computed.githubUrl}}/issues>

{{ .Scaffold.description }}

## Installation

Add `{{ .ProjectSnake }}` to your Gemfile:

```ruby
gem "{{ .ProjectSnake }}", "~> 0.1"
```

Or install it directly:

```sh
gem install {{ .ProjectSnake }}
```

## Usage

```ruby
require "{{ .ProjectSnake }}"

# Your code here
```

## Semantic Versioning

{{ .ProjectPascal }} follows [Semantic Versioning 2.0][semver].

[ci]: {{.Computed.githubUrl}}/actions/workflows/ruby.yml
[gem]: https://rubygems.org/gems/{{.ProjectSnake}}
[semver]: https://semver.org/
