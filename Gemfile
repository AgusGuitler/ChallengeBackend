# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

# Soft delete
gem "paranoia", "~> 2.4", ">= 2.4.3"
gem "active_model_serializers", "~> 0.10.12"
# User authentication
gem "devise_token_auth"
gem "activerecord", "~> 6.1", ">= 6.1.4"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem "rails", "~> 6.1.4"
# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"
# Use Puma as the app server
gem "puma", "~> 5.0"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "rspec-rails", "~> 5.0.0"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rubocop-rails", require: false
  gem "rubocop-rails_config"
end

group :development do
  gem "listen", "~> 3.3"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
