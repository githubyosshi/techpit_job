# -*- encoding: utf-8 -*-
# stub: rmagick 3.0.0 ruby lib ext deprecated
# stub: ext/RMagick/extconf.rb

Gem::Specification.new do |s|
  s.name = "rmagick"
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib", "ext", "deprecated"]
  s.authors = ["Tim Hunter", "Omer Bar-or", "Benjamin Thomas", "Moncef Maiza"]
  s.date = "2019-02-16"
  s.description = "RMagick is an interface between Ruby and ImageMagick."
  s.email = "github@benjaminfleischer.com"
  s.extensions = ["ext/RMagick/extconf.rb"]
  s.files = ["ext/RMagick/extconf.rb"]
  s.homepage = "https://github.com/rmagick/rmagick"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  s.requirements = ["ImageMagick 6.8.9 or later"]
  s.rubyforge_project = "rmagick"
  s.rubygems_version = "2.5.1"
  s.summary = "Ruby binding to ImageMagick"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.8"])
      s.add_development_dependency(%q<rspec_junit_formatter>, ["~> 0.4.1"])
      s.add_development_dependency(%q<rubocop>, ["= 0.64.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.16.1"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.5"])
    else
      s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.8"])
      s.add_dependency(%q<rspec_junit_formatter>, ["~> 0.4.1"])
      s.add_dependency(%q<rubocop>, ["= 0.64.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.16.1"])
      s.add_dependency(%q<test-unit>, ["~> 2.5"])
    end
  else
    s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.8"])
    s.add_dependency(%q<rspec_junit_formatter>, ["~> 0.4.1"])
    s.add_dependency(%q<rubocop>, ["= 0.64.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.16.1"])
    s.add_dependency(%q<test-unit>, ["~> 2.5"])
  end
end
