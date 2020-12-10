require_relative 'lib/sentinelli/version'

Gem::Specification.new do |spec|
  spec.name          = "sentinelli"
  spec.version       = Sentinelli::VERSION
  spec.authors       = ["fausto"]
  spec.email         = ["faustosantinelli@gmail.com"]

  spec.summary       = %q{ Send errors to sentinelli.}
  spec.description   = %q{ gem to send errors to sentinelli.}
  spec.homepage      = " Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ArqSoftPractica/200893-220346-220070-SDK"
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client"
end

#Gem::Specification.new do |s|
#  s.name = %q{my_gem}
#  s.version = "0.0.1"
#  s.date = %q{2011-09-29}
#  s.summary = %q{my_gem is an awesome gem}
#  s.files = [
#    "Gemfile",
#    "Rakefile",
#    "VERSION",
#    "lib/my_gem.rb"
#  ]
#  s.require_paths = ["lib"]
#end
