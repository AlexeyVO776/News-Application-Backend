source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.8", ">= 7.0.8.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

gem 'carrierwave', '~> 2.0'
gem 'mini_magick', '~> 4.11'


group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'rspec-rails', '~> 5.0'
  gem 'factory_bot_rails'
end

group :development do
  gem "web-console"
  gem 'rubocop', '~> 1.0'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'rubocop-rspec_rails'
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem 'shoulda-matchers', '~> 5.0'
end
