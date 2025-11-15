source "https://rubygems.org"

# Rails
gem "rails", "~> 8.1.1"

# Assets / Frontend
gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Database
gem "sqlite3", ">= 2.1"

# Server
gem "puma", ">= 5.0"

# Other default Rails gems
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "image_processing", "~> 1.2"

############################################
#            TESTING + BDD + TDD           #
############################################

# نضيف Cucumber الأساسي خارج أي group
gem "cucumber"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false

  # Unit tests (RSpec)
  gem "rspec-rails"

  # Cucumber Rails integration
  gem "cucumber-rails", require: false

  # Clean Database between test runs
  gem "database_cleaner-active_record"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers", require: false
end
