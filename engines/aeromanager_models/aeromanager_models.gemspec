# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
$:.push(::File.expand_path("lib", __dir__))

# Maintain your gem's version:
require "./lib/aeromanager_models/version"

# Describe your gem and declare its dependencies:
::Gem::Specification.new do |spec|
  spec.name        = "aeromanager_models"
  spec.version     = AeromanagerModels::VERSION
  spec.authors     = ["Mario Villarroel"]
  spec.email       = ["movilla@gmail.com"]
  spec.homepage    = "http://www.github.com/movilla1"
  spec.summary     = "Models for the aeromanager tool"
  spec.description = "AeromanagerModels: Central repo for the models to use in the app."
  spec.required_ruby_version = ">= 2.6"
  spec.license = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = ::Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files = ::Dir["spec/**/*"]

  spec.add_dependency("rails", "> 5.2")

  spec.add_dependency("pg")
  spec.add_development_dependency("rails-erd")
  spec.add_development_dependency('annotate')
  spec.add_development_dependency("rspec-rails")
end
