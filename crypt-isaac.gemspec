# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'version'

Gem::Specification.new do |s|
  s.name         = 'crypt-isaac'
  s.version      = Crypt::ISAAC::VERSION
  s.authors      = ['beawesomeinstead']
  s.email        = 'graf.otodrakula@gmail.com'
  s.homepage     = 'https://github.com/bai/crypt-isaac'
  s.summary      = 'Pure-Ruby implementation of the ISAAC CSPRNG'
  s.description  = 'Pure-Ruby implementation of the ISAAC CSPRNG'

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_development_dependency('shoulda-context', ['>= 0'])
  s.add_development_dependency('rcov', ['>= 0'])
  s.add_development_dependency('rake', ['>= 0'])
end
