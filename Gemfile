source 'https://rubygems.org'
ruby '2.3.0'

gem 'rails', '>= 5.0.0.beta3', '< 5.1'

gem 'autoprefixer-rails' # Generates vendor-prefixed CSS
gem 'faraday' # HTTP client
gem 'normalize-rails' # Base CSS reset
gem 'pg', '~> 0.18' # Use postgresql as the database for Active Record
gem 'puma' # Use Puma as the app server
gem 'rack-timeout' # Abort requests that are taking too long
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'sidekiq' # Background job queue built on Redis
gem 'turbolinks', '~> 5.x' # Makes navigating your web application faster
gem 'typhoeus' # HTTP client backend for Faraday
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'coderay' # Syntax highlighting for RSpec failures
  gem 'rspec-rails', '>= 3.5.0.beta3' # Test framework
  gem 'rubocop', require: false # Ensures consistent Ruby style
  gem 'rubocop-rspec', require: false # Ensures consistent RSpec style
end

group :development do
  gem 'guard', require: false # Tool to perform actions on file modification
  gem 'guard-livereload', require: false # Reloads page when view-related files are changed
  gem 'guard-rails', require: false # Starts Rails server with Guard
  gem 'guard-sidekiq', require: false # Starts Sidekiq daemon with Guard
  gem 'listen', '~> 3.0.5' # Watches file system for changes
  gem 'quiet_assets' # Strips noisy asset requests from the log
  gem 'rack-livereload' # Injects livereload snippet
  gem 'spring' # Keeps application running in the background
  gem 'spring-commands-rspec' # Implements the rspec command for Spring
  gem 'spring-watcher-listen', '~> 2.0.0' # Uses Listen to watch for changes instead of polling
  gem 'web-console', '~> 3.0' # Access an IRB console on exception pages or by using <%= console %> in views
end

group :test do
  gem 'capybara' # Allows simulation of user interaction in feature specs
  gem 'fabrication' # Allows creation of model objects with default data
  gem 'fuubar', '>= 2.1.0.beta2' # RSpec progress bar formatter
  gem 'shoulda-matchers' # Rails RSpec helpers
  gem 'webmock' # Mocks external requests
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
