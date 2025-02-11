$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "ready/for/migration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "ready-for-migration"
  spec.version     = Ready::For::Migration::VERSION
  spec.authors     = ["bizside-developers"]
  spec.email       = ["bizside-developers@lab.acs-jp.com"]
  spec.homepage    = "https://github.com/maedadev/ready-for-migration"
  spec.summary     = "ready for migration"
  spec.description = "add api to check ready for DB migration of rails application"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.8"

  spec.add_development_dependency 'sqlite3', '>= 1.3', '< 1.5.0'
end
