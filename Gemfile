ruby '2.3.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-Buttons'
end

source 'https://rubygems.org'

gem 'rails', '4.2.7.1'

# Assets
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'materialize-sass'
gem 'jquery-rails'

# Database
gem 'pg'

# Server
gem 'puma'

# Misc
gem 'foreman'
gem 'lograge'
gem 'slack-poster', '~> 1.0'
gem 'rails-observers'

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'shoulda-matchers', require: false
  gem 'quiet_assets'
  gem 'awesome_print'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'binding_of_caller'
end
