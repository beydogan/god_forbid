# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'god_forbid/version'

Gem::Specification.new do |spec|
  spec.name          = "god_forbid"
  spec.version       = GodForbid::VERSION
  spec.authors       = ["Mehmet Beydogan"]
  spec.email         = ["m@mehmet.pw"]

  spec.summary       = %q{A gem which protects your Rails apps.}
  spec.homepage      = "http://github.com/beydogan/god_forbid"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4.0'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
