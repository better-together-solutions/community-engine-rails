$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "better_together/community/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "better_together-community"
  spec.version     = BetterTogether::Community::VERSION
  spec.authors     = ["Robert Smith"]
  spec.email       = ["rob@bettertogethersolutions.com"]
  spec.summary     = "The Better Together Community Engine allows people and organizations to come together to build community."
  spec.description = "This project serves as the core of the Better Together community network"
  spec.license     = "GNU LGPL"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushespec."
  end

  spec.test_files = Dir["spec/**/*"]

  spec.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2.2", "< 6.1.0"
  spec.add_dependency 'friendly_id', '>= 5.2', '< 5.4'
  spec.add_dependency 'mobility', '~> 0.8.6'
  spec.add_dependency 'friendly_id-mobility', '~> 0.5.4'

  spec.add_development_dependency "pg"
  spec.add_development_dependency 'better_errors'
  spec.add_development_dependency 'binding_of_caller'
  spec.add_development_dependency 'byebug'

  spec.add_development_dependency 'execjs'
  spec.add_development_dependency 'listen'
  spec.add_development_dependency 'puma', '~> 4.0'
  spec.add_development_dependency 'rack-mini-profiler'
  spec.add_development_dependency 'rb-readline'
  spec.add_development_dependency 'rbtrace'
  spec.add_development_dependency 'rubocop'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  spec.add_development_dependency 'spring'
  spec.add_development_dependency 'spring-watcher-listen', '~> 2.0.0'
  spec.add_development_dependency 'web-console', '>= 3.3.0'
end
