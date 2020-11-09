require "capybara"
require "capybara/cucumber"
require "pry"

require_relative "actions/login"
require_relative "actions/busca"

World(Actions_Login)
World(Actions_Search)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
  config.app_host = "https://github.com"
end
