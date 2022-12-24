# frozen_string_literal: true

require_relative "lib/solargraph_syntax_suggest/version"

Gem::Specification.new do |spec|
  spec.name                          = "solargraph-syntax-suggest"
  spec.version                       = Solargraph::Syntax::Suggest::VERSION
  spec.authors                       = ["Cameron Kolkey"]
  spec.email                         = ["Cameron.Kolkey@gmail.com"]

  spec.summary                       = "Solargraph Diagnostic Reporter"
  spec.description                   = "Solargraph Diagnostic Reporter for syntax_suggest gem"
  spec.homepage                      = "https://github.com/ckolkey/solargraph-syntax-suggest"
  spec.license                       = "MIT"
  spec.required_ruby_version         = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]      = spec.homepage
  spec.metadata["source_code_uri"]   = spec.homepage
  spec.metadata["changelog_uri"]     = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "solargraph", "~> 0.44", "> 0.40"
  spec.add_runtime_dependency "syntax_suggest"
end
