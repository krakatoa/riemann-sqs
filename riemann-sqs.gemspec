# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "riemann-sqs"
  spec.version       = '0.0.2'
  spec.authors       = ["Fernando Alonso"]
  spec.email         = ["krakatoa1987@gmail.com"]
  spec.summary       = %q{Riemann agent to collect SQS queue metrics}
  spec.description   = %q{Riemann agent to collect SQS queue metrics}
  spec.homepage      = "https://github.com/krakatoa/riemann-sqs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "riemann-tools", "~> 0.2.6"
  spec.add_runtime_dependency "fog", ">= 1.4.0"
  spec.add_development_dependency "bundler", "~> 1.6"
end
