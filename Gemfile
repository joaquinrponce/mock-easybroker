source "https://rubygems.org"

gem "rails", "~> 7.2.1"
gem "pg"
gem "sprockets-rails"
gem "sqlite3", ">= 1.4"
gem "puma", ">= 5.0"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false
gem "vite_rails"
gem "faraday"
gem "jsonapi-serializer"
gem "jsonapi.rb"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "pry-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "dotenv"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "vcr"
end
