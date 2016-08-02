# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dom_limpio/version'

Gem::Specification.new do |spec|
  spec.name          = "dom_limpio"
  spec.version       = DomLimpio::VERSION
  spec.authors       = ["carloscabo"]
  spec.email         = ["carloscabo@gmail.com"]
  spec.summary       = 'Custom layout / form / typography reset in SASS'
  spec.description   = 'Our own CSS reset picking the best ideas from several sources (Normalize 4, HTML4 Doctor...) and trying to add our own customizations (what we use as default in most of the projects we start, specially mobile settings).'
  spec.homepage      = "https://github.com/carloscabo/dom-limpio"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
