# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin_translate/version'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin_translate"
  spec.version       = PigLatinTranslate::VERSION
  spec.authors       = ["Edwin Castillo"]
  spec.email         = ["edgcastillo@gmail.com"]
  spec.summary       = %q{Pig Latin is a made-up children's language that's intended to be confusing.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
