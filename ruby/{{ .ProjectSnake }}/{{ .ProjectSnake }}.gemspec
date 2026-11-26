# stub: {{ .ProjectSnake }} 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "{{ .ProjectSnake }}".freeze
  s.version = "1.0.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = {"bug_tracker_uri" => "{{ .Computed.githubUrl }}/issues", "rubygems_mfa_required" => "true", "source_code_uri" => "{{ .Computed.githubUrl }}"} if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["{{ .Scaffold.authorName }}".freeze]
  s.description = "{{ .Scaffold.description }}".freeze
  s.email = ["{{ .authorEmail }}".freeze]
  s.extra_rdoc_files = ["CHANGELOG.md".freeze, "CODE_OF_CONDUCT.md".freeze, "CONTRIBUTING.md".freeze, "LICENCE.md".freeze, "README.md".freeze, "SECURITY.md".freeze, "licences/APACHE-2.0.txt".freeze, "licences/dco.txt".freeze]
  s.files = ["CHANGELOG.md".freeze, "CODE_OF_CONDUCT.md".freeze, "CONTRIBUTING.md".freeze, "LICENCE.md".freeze, "Manifest.txt".freeze, "README.md".freeze, "Rakefile".freeze, "SECURITY.md".freeze, "lib/{{ .ProjectSnake }}.rb".freeze, "lib/{{ .ProjectSnake }}/version.rb".freeze, "licences/APACHE-2.0.txt".freeze, "licences/dco.txt".freeze, "test/minitest_helper.rb".freeze, "test/test_{{ .ProjectSnake }}.rb".freeze]
  s.homepage = "{{ .Computed.githubUrl }}".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.3".freeze)
  s.summary = "==== To Install:".freeze

  s.add_development_dependency("hoe".freeze, ["~> 4.0".freeze])
  s.add_development_dependency("hoe-halostatue".freeze, ["~> 3.0".freeze])
  s.add_development_dependency("minitest".freeze, ["~> 6".freeze])
  s.add_development_dependency("minitest-autotest".freeze, ["~> 1.0".freeze])
  s.add_development_dependency("minitest-focus".freeze, ["~> 1.1".freeze])
  s.add_development_dependency("rake".freeze, [">= 10.0".freeze, "< 14".freeze])
  s.add_development_dependency("rdoc".freeze, [">= 6.0".freeze, "< 8".freeze])
  s.add_development_dependency("simplecov".freeze, ["~> 0.22".freeze])
  s.add_development_dependency("simplecov-lcov".freeze, ["~> 0.8".freeze])
  s.add_development_dependency("standard".freeze, ["~> 1.50".freeze])
end
