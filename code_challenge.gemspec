
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "code_challenge/version"

Gem::Specification.new do |spec|
  spec.name          = "code_challenge"
  spec.version       = CodeChallenge::VERSION
  spec.authors       = ["Anon"]
  spec.email         = ["cmpower4@gmail.com"]

  spec.summary       = %q{Code challenge that takes user input and adds it to a hash.}
  spec.homepage      = "https://rubygems.org/gems/code-challenge"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   << 'key-value'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
