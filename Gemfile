source "https://rubygems.org"

ruby "2.1.2"

gem "bourbon", "~> 3.2.1"
gem "coffee-rails"
gem "delayed_job_active_record"
gem "email_validator"
gem "flutie"
gem "i18n-tasks"
gem "jquery-rails"
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'neat'
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "rails", "4.1.4"
gem "recipient_interceptor"
gem "simple_form"
gem "title"
gem "uglifier"
gem "unicorn"
gem 'refills'
gem 'haml'
gem 'spreadsheet'
gem 'compass-rails', '~> 2.0.0'
gem 'friendly_id', '~> 5.0.0'
gem 'randumb'
gem "nested_form"

group :development do
  gem "spring"
  gem "spring-commands-rspec"
end

group :development, :test do
  gem "awesome_print"
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.0.0"
end

group :test do
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "newrelic_rpm", ">= 3.7.3"
end
