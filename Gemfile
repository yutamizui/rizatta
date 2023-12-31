source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.0'
ruby '3.1.2'

gem 'net-ftp', '~> 0.1'
gem 'net-imap', '~> 0.2'
gem 'net-pop', '~> 0.1'
gem 'net-smtp', '~> 0.3'

gem 'puma', '~> 3.0'
# Use Uglifier as compressor for JavaScript assets
gem 'terser'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
gem 'bcrypt', '~> 3.1.7'
gem 'jbuilder', '~> 2.5'
gem 'sass-rails', '>= 3.2'
gem 'devise'
gem 'toastr-rails'
gem "omniauth-rails_csrf_protection"
gem 'omniauth-facebook'
gem 'dropzonejs-rails'
gem 'geocoder'
gem 'font-awesome-sass'
gem 'ransack'
gem 'payjp'
gem 'will_paginate'
gem 'will_paginate-bootstrap'
gem 'slim-rails'
gem 'pdfkit'
gem 'wkhtmltopdf'
gem 'bootstrap-datepicker-rails'
gem 'momentjs-rails'
gem 'aws-sdk-s3'
gem 'rails-i18n'
gem 'enum_help'
gem 'active_hash'
gem 'chart-js-rails'
gem 'lightbox-bootstrap-rails'
gem 'carrierwave'
gem 'carrierwave-i18n'
gem 'fog-aws'
gem 'mini_magick'
gem 'toastr_rails'
# gem 'mini_exiftool'
gem 'fastimage'
gem 'pg'
gem 'rubyzip'
gem 'axlsx'
gem 'axlsx_rails'
gem 'webpacker'
gem 'rails-i18n'

group :development, :test do
  # Call 'byebug' anywhere in the code to sztop execution and get a debugger console
  # gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-doc'
  # gem "sqlite3", "~> 1.3.6"
  gem 'dotenv-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'sqlite3'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'letter_opener'
end

group :production, :staging do
  gem 'rails_12factor'
  gem 'aws-sdk', '~> 3'
  # gem 'capistrano',                 '3.11.2'
  # gem 'capistrano-rails',           '1.4.0'
  # gem 'capistrano-rbenv',           '2.1.4 '
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
