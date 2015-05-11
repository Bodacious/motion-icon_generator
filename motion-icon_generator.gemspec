# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'motion/icon_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "motion-icon_generator"
  spec.version       = Motion::IconGenerator::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["gavin@katanacode.com"]
  spec.summary       = %q{Automatically generates all of the iOS icons you'll never need}
  spec.description   = <<-DESC
  Simple gem that adds a rake task to create all of the versions of iOS icons you'll need to launch. Simply create a template image file and let the app do the rest.
  DESC
    
  spec.homepage      = "http://github.com/katanacode/motion-icon_generator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  
  spec.add_dependency 'rmagick'
  
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
