require "date"
require File.expand_path("../lib/maremma/version", __FILE__)

Gem::Specification.new do |s|
  s.authors       = "Martin Fenner"
  s.email         = "mfenner@datacite.org"
  s.name          = "maremma"
  s.homepage      = "https://github.com/datacite/maremma"
  s.summary       = "Simplified network calls"
  s.date          = Date.today
  s.description   = "Simplifies network calls, including json/xml parsing and error handling. Based on Faraday."
  s.require_paths = ["lib"]
  s.version       = Maremma::VERSION
  s.extra_rdoc_files = ["README.md"]
  s.license       = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  # Declary dependencies here, rather than in the Gemfile
  s.add_dependency 'faraday', '~> 0.9.0'
  s.add_dependency 'faraday_middleware', '~> 0.10.0'
  s.add_dependency 'faraday-encoding', '~> 0.0.1'
  s.add_dependency 'excon', '~> 0.45.0'
  s.add_dependency 'nokogiri', '~> 1.6.6.4'
  s.add_dependency 'builder', '~> 3.2', '>= 3.2.2'
  s.add_dependency 'multi_json', '~> 1.11.2'
  s.add_dependency 'oj', '~> 2.13.1'
  s.add_dependency 'activesupport', '~> 4.2', '>= 4.2.5'
  s.add_development_dependency 'bundler', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rack-test', '~> 0'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock', '~> 1.22', '>= 1.22.3'
end