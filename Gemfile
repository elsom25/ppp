source 'https://rubygems.org'

gem 'rails',                '~> 4.1.7'        # Rails
gem 'turbolinks'                              # Makes page loads faster
gem 'pg',      group: :production             # Production DB
gem 'sqlite3', group: [:development, :test]   # Dev & Test DB

# Server
gem 'thin'                                    # Nicer server
# gem 'sidekiq'                                 # Concurreny jobs
# gem 'sinatra', require: nil                   # Required for Sidekiq::Web

# User
gem 'devise'                                  # User and Account Management
gem 'pundit'                                  # User Authorization
# gem 'acts_as_roleable',     '~> 0.4'          # User Roles

# Extras
gem 'attr_extras'                             # Simplified PORO's
gem 'duffel'                                  # Better project settings
gem 'simple_form'                             # A nice form DSL
gem 'annotate',             '>= 2.6.0'        # Adds some nice annotations to models

# Javascript
gem 'jquery-rails'                            # jQuery
gem 'jquery-turbolinks'                       # Turbolinks jQuery adapter

# Assets
gem 'sass-rails'
gem 'coffee-rails'
gem 'uglifier',             '>= 1.3.0'
gem 'slim-rails'
gem 'compass-rails'
gem 'foundation-rails',     '~> 5.4'
gem 'font-awesome-rails'

group :development do
  gem 'spring'                                # Rails quick loader
  gem 'better_errors'                         # Nice errors screens
  gem 'binding_of_caller'                     # Req'd for `better_errors`
end

group :development, :test do
  gem 'minitest-spec-rails'                   # Testing framework
  gem 'minitest-reporters'

  gem 'capybara'                              # Integration Tests
  gem 'capybara_minitest_spec'                # Capybara integration w/ MiniTest
  gem 'poltergeist'                           # Capybara headless JS driver

  gem 'mocha'                                 # Stubbing library
  gem 'factory_girl_rails', '~> 4.0'          # Testing factories

  gem 'quiet_assets'                          # Reduces console output

  gem 'guard'                                 # Handles project changes while app running
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-minitest'

  # TEMP: Handle version issues;
  # Makes the console much nicer and provices nice dev tools
  gem 'jazz_hands',         github: 'nixme/jazz_hands',
                            branch: 'bring-your-own-debugger'
  gem 'pry-byebug'
end

group :staging, :production do
  gem 'rails_12factor'                        # Allow heroku to compile assets
end
