source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record

# Use SCSS for stylesheets
gem 'sass-rails', '5.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.7.1'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '4.0.3'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '2.5.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '2.2.13'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', '4.0.5'
  gem 'web-console', '~> 2.1.2'
  gem 'spring'
end

group :test do
  gem 'minitest-reporters', '1.0.5' # Add color to test, making them red or green
  gem 'mini_backtrace', '0.1.3' # Reduce the amount of output from the trace that runs after a test fails
  gem 'guard-minitest', '2.3.1' # Avoid the need to keep running rake task command again and again to run tests.
                                # It automatically watches changes in your applicaion code and runs tests.
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
