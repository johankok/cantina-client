# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cantina/client/version'

Gem::Specification.new do |spec|
  spec.name          = "cantina-client"
  spec.version       = Cantina::Client::VERSION
  spec.authors       = ["Johan Kok"]
  spec.email         = ["info@johankok.nl"]
  spec.summary       = "Client for authenticating with Cantina SSO"
  spec.description   = "Client for authenticating with Cantina SSO"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth-oauth2', '~> 1.1.2'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
