# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/nww/version'

Gem::Specification.new do |spec|
  spec.name = 'rubocop-nww'
  spec.version = Rubocop::Nww::VERSION
  spec.authors = ['Florian Dütsch']
  spec.email = ['florian.duetsch@nix-wie-weg.de']
  spec.summary = 'RubyCop defaults for Nix-wie-weg'
  spec.homepage = 'https://github.com/Nix-wie-weg/rubocop-nww'
  spec.license = 'MIT'

  spec.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_dependency 'rubocop', '~> 0.36.0'
end
