# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{crypt-isaac}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["beawesomeinstead"]
  s.date = %q{2009-07-07}
  s.email = %q{beawesomeinstead@yahoo.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "VERSION",
     "crypt-isaac.gemspec",
     "lib/crypt-isaac.rb",
     "rakefile",
     "test/crypt-isaac_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bai/crypt-isaac}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Ruby implementation of the ISAAC PRNG}
  s.test_files = [
    "test/crypt-isaac_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
