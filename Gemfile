# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'
# activeadmin gem
gem 'activeadmin', '~> 2.9'
# theme for AA
gem "active_material", '~>1.5', github: "vigetlabs/active_material"
# curated addons for activeadmin
gem 'activeadmin_addons', '~>1.8.3'
# searchable select
gem 'activeadmin-searchable_select', '~> 1.5'
# Bootstrap interface support
gem 'bootstrap', '~> 5.0.1'
# Chart plotting for the reports
gem 'chartkick', '~> 4.0', '>= 4.0.5'
# Devise for users
gem 'devise', '~>4.7'
# Font awesome
gem 'font-awesome-sass', '~> 5.15.1'
# jquery rails for bootstrap
gem 'jquery-rails', '~> 4.4'
# Authorization support
gem 'pundit', '~> 2.1', '>= 2.1.1'
# Fast JSon serializer by netflix
gem 'fast_jsonapi', '~> 1.5'
# JSon Web Token, for authentication
gem 'jwt', '~> 2.2', '>= 2.2.3'
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
# Simple command management
gem 'simple_command', '~> 0.1.0'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Annotate models
  gem 'annotate', '~> 3.1', '>= 3.1.1'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~>11.1', platforms: %i[mri mingw x64_mingw]
  # Factory bot data creation for testing
  gem 'factory_bot', '~> 6.2'
  # Rails extension for factorybot
  gem 'factory_bot_rails', '~> 6.2'
  # Fake data creation for testing
  gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
  # Rspec support
  gem 'rspec-rails', '~> 5.0.0'
  # Rubocop style cop
  gem 'rubocop', '~> 1.18', '>= 1.18.3'
  # Rubocop extensions for rails
  gem 'rubocop-rails', '~> 2.11', '>= 2.11.3'
  # Rubocop support for rspec
  gem 'rubocop-rspec', '~> 2.4'
  # Better matchers for testing
  gem 'shoulda-matchers', '~> 5.0'
end

group :development do
  # ER diagrams from models
  gem 'rails-erd', '~> 1.6', '>= 1.6.1'
  # Coverage report creation
  gem 'simplecov', '~> 0.21.2'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  # Listen gem
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 3.0'
end
