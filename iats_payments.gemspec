# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iats_payments/version'

Gem::Specification.new do |spec|
  spec.name          = "iats_payments"
  spec.version       = IatsPayments::VERSION
  spec.authors       = ["Tim Glen"]
  spec.email         = ["tim@tag.ca"]
  spec.summary       = %q{A simple wrapper around the IATS Payments SOAP service}
  spec.description   = nil
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "savon", "~> 2.11.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
