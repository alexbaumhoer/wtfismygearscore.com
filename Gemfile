# frozen_string_literal: true

source "https://rubygems.org"
ruby "2.7.1"

gem "rails", "~> 6.0.0"

gem "active_record_upsert" # AR integration for native PG upsert
gem "addressable", require: false # Replacement for URI implementation
gem "autoprefixer-rails" # Generates vendor-prefixed CSS
gem "babel-transpiler" # Compiles new JS syntax into ES5-compatible code
gem "bootsnap", ">= 1.1.0", require: false # Reduces boot times through caching
gem "faraday", require: false # HTTP client
gem "fast_blank" # Provides a fast implementation of Active Support's String#blank? method
gem "normalize-rails" # Base CSS reset
gem "pg" # Use postgresql as the database for Active Record
gem "puma" # Use Puma as the app server
gem "redis" # Redis client gem
gem "ruby_identicon", require: false # Avatar generator
gem "sassc", "~> 2.0.1" # https://github.com/sass/sassc-ruby/issues/160
gem "sassc-rails" # Use SCSS for stylesheets
gem "scenic" # Create and manage database views in Rails
gem "secure_headers" # Applies several headers that are related to security
gem "sidekiq" # Background job queue built on Redis
gem "sidekiq-unique-jobs" # Prevents duplicate jobs from being enqueued
gem "slack-notifier" # Sends Slack webhook notifications
gem "sprockets", "~> 4.0.0.beta4" # Asset compilation pipeline for CSS, JS, and images
gem "typhoeus", github: "typhoeus", require: false # HTTP client backend for Faraday
gem "uglifier", ">= 1.3.0" # Use Uglifier as compressor for JavaScript assets
gem "utf8-cleaner" # Removes invalid UTF-8 characters from the environment

group :production do
  gem "exception_notification" # Sends notifications when errors occur
  gem "puma-heroku" # Default Puma configuration
  gem "rack-throttle" # Provides logic for rate-limiting incoming HTTP requests
  gem "rack-timeout" # Abort requests that are taking too long
end

group :development, :test do
  gem "byebug" # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "coderay", require: false # Syntax highlighting for RSpec failures
  gem "eslint-rails" # Ensures consistent JavaScript style
  gem "rspec-rails" # Test framework
  gem "rubocop" # Ensures consistent Ruby style
  gem "rubocop-config-rufo", github: "xinminlabs/rubocop-config-rufo", ref: "7bc2d74", require: false # Configures Rubocop to not conflict with Rufo
  gem "rubocop-rspec", require: false # Ensures consistent RSpec style
  gem "scss_lint", require: false # Ensures consistent SCSS style
end

group :development do
  gem "dotenv-rails" # Shim to load environment variables from .env into ENV
  gem "guard", require: false # Tool to perform actions on file modification
  gem "guard-livereload", require: false # Reloads page when view-related files are changed
  gem "listen" # Watches file system for changes
  gem "rack-livereload" # Injects livereload snippet
  gem "spring" # Keeps application running in the background
  gem "spring-commands-rspec" # Implements the rspec command for Spring
  gem "spring-watcher-listen" # Uses Listen to watch for changes instead of polling
  gem "web-console" # Access an IRB console on exception pages or by using <%= console %> in views
  gem "yard", require: false # Generates documentation pages
end

group :test do
  gem "capybara" # Allows simulation of user interaction in feature specs
  gem "fabrication" # Allows creation of model objects with default data
  gem "fakeredis", require: "fakeredis/rspec" # Fake implementation of redis-rb
  gem "fuubar" # RSpec progress bar formatter
  gem "shoulda-matchers" # Rails RSpec helpers
  gem "webmock" # Mocks external requests
end
