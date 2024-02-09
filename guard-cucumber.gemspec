# -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "guard/cucumber/version"

Gem::Specification.new do |s|
  s.name        = "guard-cucumber"
  s.version     = Guard::CucumberVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Cezary Baginski", "Michael Kessler"]
  s.email       = ["cezary@chronomantic.net"]
  s.homepage    = "http://github.com/guard/guard-cucumber"
  s.license     = "MIT"
  s.summary     = "Guard plugin for Cucumber"
  s.description = "Guard::Cucumber automatically run your"\
    " features (much like autotest)"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "cucumber", ">= 3.1"
  s.add_dependency "nenv", ">= 0.1"
  s.add_dependency "guard-compat", ">= 1.0"

  s.add_development_dependency "bundler", ">= 1.6"

  s.files = `git ls-files -z`.split("\x0").select do |f|
    /^lib\// =~ f
  end + %w(LICENSE README.md)

  s.require_paths = ["lib"]
end
