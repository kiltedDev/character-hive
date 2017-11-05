# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Ensure that if we are running js tests, we are using latest webpack assets
  # This will use the defaults of :js and :server_rendering meta tags
  ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)

  config.include Capybara::DSL
  config.include Warden::Test::Helpers

  config.after :each do
    Warden.test_reset!
  end


  # Ensure that if we are running js tests, we are using latest webpack assets
  # This will use the defaults of :js and :server_rendering meta tags
  ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  default_driver = :poltergeist_no_animations

  supported_drivers = %i[ poltergeist poltergeist_errors_ok
    poltergeist_no_animations webkit
    selenium_chrome selenium_firefox selenium]
  driver = ENV["DRIVER"].try(:to_sym) || default_driver
  Capybara.default_driver = driver

  unless supported_drivers.include?(driver)
    raise "Unsupported driver: #{driver} (supported = #{supported_drivers})"
  end

  case driver
  when :poltergeist, :poltergeist_errors_ok, :poltergeist_no_animations
    basic_opts = {
      window_size: [1300, 1800],
      screen_size: [1400, 1900],
      phantomjs_options: ["--load-images=no", "--ignore-ssl-errors=true"],
      timeout: 180,
      js_errors: false
    }

    Capybara.register_driver :poltergeist do |app|
      Capybara::Poltergeist::Driver.new(app, basic_opts)
    end

    no_animation_opts = basic_opts.merge( # Leaving animations off, as a sleep was still needed.
      extensions: ["#{Rails.root}/spec/support/phantomjs-disable-animations.js"]
    )

    Capybara.register_driver :poltergeist_no_animations do |app|
      Capybara::Poltergeist::Driver.new(app, no_animation_opts)
    end

    Capybara.register_driver :poltergeist_errors_ok do |app|
      Capybara::Poltergeist::Driver.new(app, no_animation_opts.merge(js_errors: false))
    end

    Capybara::Screenshot.register_driver(:poltergeist) do |js_driver, path|
      js_driver.browser.save_screenshot(path)
    end

    Capybara::Screenshot.register_driver(:poltergeist_no_animations) do |js_driver, path|
      js_driver.render(path, full: true)
    end

    Capybara::Screenshot.register_driver(:poltergeist_errors_ok) do |js_driver, path|
      js_driver.render(path, full: true)
    end

  when :selenium_chrome
    DriverRegistration.register_selenium_chrome

  when :selenium_firefox, :selenium
    DriverRegistration.register_selenium_firefox
    driver = :selenium_firefox
  end

  Capybara.javascript_driver = driver
  Capybara.default_driver = driver

  Capybara.register_server(Capybara.javascript_driver) do |app, port|
    require "rack/handler/puma"
    Rack::Handler::Puma.run(app, Port: port)
  end


  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation, {except: config.seed_tables}
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  config.before(:each) do
    greg = FactoryBot.create(:user)
    human = FactoryBot.create(:race)
    paladin = FactoryBot.create(:character_class)
    birgir = Character.create(name: "Birgir the Slow", user_id: greg.id, race_id: human.id, character_class: paladin.name, level: 2)
  end

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via:
  # config.filter_gems_from_backtrace("gem name")
end
require "capybara/rails"
require "valid_attribute"

RSpec.configure do |config|
  # Ensure that if we are running js tests, we are using latest webpack assets
  # This will use the defaults of :js and :server_rendering meta tags
  ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)

  # Ensure that if we are running js tests, we are using latest webpack assets
  # This will use the defaults of :js and :server_rendering meta tags
  ReactOnRails::TestHelper.configure_rspec_to_compile_assets(config)

  config.include FactoryBot::Syntax::Methods
end
