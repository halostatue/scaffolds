defmodule {{ .ProjectPascal }}.MixProject do
  use Mix.Project

  @project_url "{{ .Computed.githubUrl }}"
  @version "0.1.0"

  def project do
    [
      app: :{{ .ProjectSnake }},
      description: "{{ .Scaffold.description }}",
      version: @version,
      source_url: @project_url,
      name: "{{ .ProjectPascal }}",
      elixir: "{{ .Computed.elixirVersion }}",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      test_coverage: test_coverage(),
      elixirc_paths: elixirc_paths(Mix.env()),
      dialyzer: [
        plt_add_apps: [:mix],
        plt_local_path: "priv/plts"
      ],
      hex: [
        ignore_advisories: hex_ignore_advisories()
      ]
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  def cli do
    [
      preferred_envs: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.github": :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      maintainers: "{{ .Computed.author }}",
      licenses: [
        {{ if .Computed.hasApache }}"Apache-2.0",{{ end }}
        {{ if .Computed.hasMit }}"MIT",{{ end }}
      ],
      files: ~w(lib .formatter.exs mix.exs *.md licences),
      links: %{
        "Source" => @project_url,
        "Issues" => @project_url <> "/issues"
      }
    ]
  end

  defp deps do
    [
      {:castore, "~> 1.0", optional: true},
      {:credo, "~> 1.0", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.29", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.18", only: [:test]},
      {:quokka, "~> 2.6", only: [:dev, :test], runtime: false},
      {:sobelow, "~> 0.14", only: [:dev, :test]}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: [
        "README.md",
        "CONTRIBUTING.md": [filename: "CONTRIBUTING", title: "Contributing"],
        "CODE_OF_CONDUCT.md": [filename: "CODE_OF_CONDUCT", title: "Code of Conduct"],
        "CHANGELOG.md": [filename: "CHANGELOG", title: "CHANGELOG"],
        "LICENCE.md": [filename: "LICENCE", title: "Licence"],
        {{- if .Computed.hasApache }}
        "licences/APACHE-2.0.txt": [filename: "APACHE-2.0", title: "Apache License, version 2.0"],
        {{- end }}
        {{- if .Computed.hasMit }}
        "licences/MIT.txt": [filename: "MIT", title: "MIT License"],
        {{- end }}
        "licences/dco.txt": [filename: "dco", title: "Developer Certificate of Origin"]
      ],
      source_ref: "v#{@version}",
      source_url: @project_url,
      canonical: "https://{{ .ProjectKebab }}hexdocs.pm/"
    ]
  end

  defp test_coverage do
    [
      tool: ExCoveralls
    ]
  end

  defp hex_ignore_advisories do
    []
  end
end
