# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inflation/version'

Gem::Specification.new do |gem|
  gem.name          = "inflation"
  gem.version       = Inflation::VERSION
  gem.authors       = ["Damian Mastylo"]
  gem.email         = ["dmastylo@codequarry.net"]
  gem.description   = %q{ Find out how much money was worth any year from 1800 to now. }
  gem.summary       = %q{ Find out how much your dollar used to be worth. }
  gem.homepage      = "https://github.com/dmastylo/Inflation"

  gem.add_development_dependency "rspec"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
