# encoding: UTF-8
# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name            = 'capistrano-rbenv-support'
  s.version         = '1.0.0'
  s.author          = 'Yaroslav Konoplov'
  s.email           = 'eahome00@gmail.com'
  s.summary         = 'rbenv support for Capistrano 3.x'
  s.description     = 'rbenv support for Capistrano 3.x'
  s.homepage        = 'https://github.com/yivo/capistrano-rbenv-support'
  s.license         = 'MIT'

  s.files           = `git ls-files -z`.split("\x0")
  s.test_files      = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  s.require_paths   = ['lib']

  s.add_dependency 'capistrano',        '~> 3.0'
  s.add_dependency 'capistrano-tweaks', '~> 1.0'
end
