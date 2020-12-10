require_relative 'lib/sentinelli/version'


Gem::Specification.new do |spec|
  spec.name                   = "sentinelli"
  spec.version                = Sentinelli::VERSION
  spec.authors                = ["fausto"]
  spec.summary                = 'Send errors to sentinelli'
  spec.description            = 'gem to send errors to sentinelli'
  spec.license                = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.homepage      = "https://github.com/FausSR/SDK"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://github.com/FausSR"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/FausSR/SDK"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "rest-client"
end
