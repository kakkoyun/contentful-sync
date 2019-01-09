source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'
# Do not install unused gems
gem 'actionpack', '~> 5.2.1'
gem 'activejob', '~> 5.2.1'
gem 'activemodel', '~> 5.2.1'
gem 'activerecord', '~> 5.2.1'
gem 'activesupport', '~> 5.2.1'
gem 'railties', '~> 5.2.1'

gem 'active_model_serializers', '~> 0.10.0'
gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password
# gem 'jwt', '~> 2.1'
# gem 'kaminari', '~> 1.1'
gem 'oj', '~> 3.6' # fast JSON serialization
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rack-cors', '~> 1.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'bullet'
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'rubocop'
  gem 'rubocop-rspec'
end

group :development do
  gem 'annotate'
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubycritic', require: false
  gem 'solargraph' # Ruby language server for VS Code
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 3.8'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'simplecov-console'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
