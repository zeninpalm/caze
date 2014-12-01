# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'use_case_support/version'

Gem::Specification.new do |spec|
  spec.name          = "use_case_support"
  spec.version       = UseCaseSupport::VERSION
  spec.authors       = ["Magnetis team"]
  spec.email         = ["dev@magnetis.com.br"]
  spec.summary       = %q{A support for Magnetis use cases}
  spec.description   = %q{With UseCaseSupport it's easy to define use cases and entry points.}
  spec.homepage      = "https://www.magnetis.com.br"
  spec.license       = "Magnetis"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3"

  spec.add_dependency "activesupport"
end
