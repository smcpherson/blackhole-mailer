# -*- encoding: utf-8 -*-
require File.expand_path('../lib/blackhole-mailer/version', __FILE__)

Gem::Specification.new do |s|
  s.add_development_dependency('rspec', '~> 2.4')
  s.add_development_dependency('bluecloth', '~> 2.0.11')
  s.add_development_dependency('yard') 
  s.add_runtime_dependency('resque_mailer', '~> 2.1.0')
  s.authors = ["K$"]
  s.description = %q{A mail utility so dense, no message can escape.}
  s.email = ['kdmny30@gmail.com']
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://github.com/kdmny/blackhole-mailer'
  s.name = 'blackhole-mailer'
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if s.respond_to? :required_rubygems_version=
  s.rubyforge_project = s.name
  s.summary = %q{A mail utility so dense, no message can escape.}
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = BlackHoleMailer::VERSION
end
