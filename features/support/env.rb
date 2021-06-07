require 'allure-cucumber'
require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'pathname'
require 'fileutils'
require 'headless'
require "pry"
require "time"
require 'uri'
require 'active_support/time'
require 'parseconfig'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'OS'
require 'allure-cucumber'
require 'rspec/expectations'

if File.exist?('features/global-data/global.yml')
    $conf =  YAML.load_file('features/global-data/global.yml')
else
    puts "features/global-data/global.yml is not found !!!"
end
FileUtils.mkdir_p("#{Pathname.pwd}/#{$conf['screenshot_location']}")
$VERBOSE = nil
$drivers = []

if $conf['mode'] == "headless" or OS.linux? or ENV['mode'] == "headless"
  default_driver = "selenium_chrome_headless"
else
  default_driver = "selenium_chrome"
end

Capybara.configure do |config|
  config.default_max_wait_time = $conf['implicit_wait']
  config.ignore_hidden_elements = true
  config.automatic_reload = true
  config.save_path = "../../reports/screenshots"
  config.threadsafe = true
  config.run_server = false
  config.default_driver = default_driver.to_sym
end
$drivers << Capybara.current_driver

AllureCucumber.configure do |c|
  c.results_directory = 'report/allure'
  c.clean_results_directory = false
end

Cucumber::Core::Test::Step.module_eval do
  def name
    return text if self.text == 'Before hook'
    return text if self.text == 'After hook'
    "#{source.last.keyword}#{text}"
  end
end


Before do |scenario|
  # fill if needed
end
  

Before do
  test_variables_file_location_url = Dir.pwd + "/features/test-data/url.yml"
  test_variables_file_location_hotel = Dir.pwd + "/features/test-data/hotel.yml"
  test_variables_file_location_flight = Dir.pwd + "/features/test-data/flight.yml"
    if File.exists?("#{test_variables_file_location_url}")
      $url = YAML.load_file(test_variables_file_location_url)
      $hotelData = YAML.load_file(test_variables_file_location_hotel)
      $flightData = YAML.load_file(test_variables_file_location_flight)
    end
  $filter_run_once ||= false 
    if !$filter_run_once
      @login_page = Pages::LoginPage.new
      @flight_page = Pages::FlightPage.new
      @hotel_page = Pages::HotelPage.new
      @checkout_flight_page = Pages::CheckoutFlightPage.new
      @checkout_hotel_page = Pages::CheckoutHotelPage.new
      @transaction_page = Pages::TransactionPage.new
      @my_order_page = Pages::MyOrderPage.new
      @home_page = Pages::HomePage.new
    end
    $filter_run_once = true
end

After do |scenario|
	if scenario.failed?
        begin
          d = $drivers
          d.each do |driver_sym|
            Capybara.current_driver = driver_sym
            file_name = "#{driver_sym.to_s}#{(Time.now.to_f * 1000).to_i.to_s}.png"
            Library::Screenshot.set_path(save_screenshot("#{Dir.pwd}/reports/screenshots/#{file_name}"))
            scenario.attach_file("#{driver_sym.to_s}", Library::Screenshot)
          end
          Capybara.use_default_driver
        rescue Exception => e
            puts e.message
        end
	end
end