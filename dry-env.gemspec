lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dry/env/version'

Gem::Specification.new do |spec|
  spec.name          = 'dry-env'
  spec.version       = Dry::Env::VERSION.dup
  spec.authors       = ['Steve Jabour']
  spec.email         = ['steve@jabour.me']
  spec.summary       = 'Fetch namespaced environment variables'
  spec.homepage      = 'http://github.com/atsjj/dry-env'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'dry-configurable', '>= 0.8.0'
  spec.add_runtime_dependency 'dry-core', '>= 0.4.0'
  spec.add_runtime_dependency 'railties'
end
