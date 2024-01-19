require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, browser:  :chrome) 
  end
  
  Capybara.configure do |config|
    config.run_server = false
    Capybara.default_driver = :chrome
    Capybara.ignore_hidden_elements = false
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 2
    config.app_host = 'https://www.serasa.com.br/ecred/simulador/'
  end