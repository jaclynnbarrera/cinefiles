source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

# Core
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.8'

# Assets and Frontend
gem 'importmap-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'

# File Upload and AWS
gem 'aws-sdk-s3'
gem 'carrierwave'
gem 'fog-aws'

# Development and Debugging
group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rubocop', require: false
  gem 'web-console'
  # gem "rack-mini-profiler"  # Uncomment if you want to use it
  # gem "spring"  # Uncomment if you want to use it
end

# Testing
group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

# Platform Specific
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
