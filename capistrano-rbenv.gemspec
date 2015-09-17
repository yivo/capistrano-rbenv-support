# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = 'capistrano-rbenv'
  spec.version       = '1.0.0'
  spec.authors       = ['Yaroslav Konoplov']
  spec.email         = ['yaroslav@inbox.com']
  spec.summary       = 'foo'
  spec.description   = 'foo'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '~> 3.1'
  spec.add_dependency 'sshkit', '~> 1.2'
  spec.add_dependency 'capistrano-tweaks'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
