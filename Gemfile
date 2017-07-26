source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'jquery-rails'
gem 'cocoon'
# gem 'mysql2'
# gem 'thinking-sphinx'
gem 'friendly_id'
gem 'pundit'
gem 'responders'
gem 'haml'
gem 'devise'
gem 'devise-i18n'
gem 'sidekiq'
gem 'whenever'
gem 'sinatra', require: nil

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'capybara-email'
  gem 'byebug'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring-watcher-listen'
  gem 'spring'
  gem 'letter_opener'

  gem 'capistrano'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-postgresql'
  gem 'capistrano-secrets-yml'
  gem 'capistrano-faster-assets'
  gem 'capistrano-safe-deploy-to'

end

group :test do
  gem 'faker'
  gem 'capybara'
  # gem 'database_cleaner'
  gem 'launchy'
  gem 'capybara-webkit'
end

group :production do
  gem 'libv8'
end

gem 'tzinfo-data'#, platforms: [:mingw, :mswin, :x64_mingw, :jruby]
