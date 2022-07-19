# frozen_string_literal: true

require_relative "lib/freee_ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "freee_ruby"
  spec.version       = FreeeRuby::VERSION
  spec.authors       = ["KiyotakaMatsushita"]
  spec.email         = ["kiyotaka.86@gmail.com"]

  spec.summary       = "freee ruby"
  spec.description   = "Library for handling accounting software freee API in Ruby"
  spec.homepage      = "https://github.com/KiyotakaMatsushita/freee_ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/KiyotakaMatsushita/freee_ruby"
  spec.metadata["changelog_uri"] = "https://github.com/KiyotakaMatsushita/freee_ruby/blob/master/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/KiyotakaMatsushita/freee_ruby/issues"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    %x(git ls-files -z).split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency("webmock")

  spec.add_runtime_dependency("faraday")
  spec.add_runtime_dependency("faraday_middleware")
  spec.add_runtime_dependency("oauth2")

  spec.add_runtime_dependency("concurrent-ruby")
  spec.add_runtime_dependency("hash_diff")
  spec.add_runtime_dependency("httparty")
  spec.add_runtime_dependency("jwt")
  spec.add_runtime_dependency("oj")
  spec.add_runtime_dependency("openssl")
  spec.add_runtime_dependency("securerandom")
  spec.add_runtime_dependency("sorbet-runtime")

  spec.add_development_dependency("activesupport")
  spec.add_development_dependency("pry")
  spec.add_development_dependency("rubocop")
  spec.add_development_dependency("sorbet")
  spec.add_development_dependency("tapioca")
  spec.add_development_dependency("yard")
end
