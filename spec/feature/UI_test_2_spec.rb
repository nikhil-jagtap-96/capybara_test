require 'capybara'
require 'capybara/rspec'
#require 'selenium-webdriver'
require 'webdrivers'
require 'pry'
require 'site_prism'
require 'pages/home'
require 'pages/reserve'
require 'pages/find'
require 'pages/detail'



feature 'Flight booking test', :type => :feature do
  include Newtours

  scenario 'Visit Demo Tour website' do
    
    Capybara.app_host = 'http://www.newtours.demoaut.com/'
    Capybara.run_server = false
    Capybara.default_driver = :selenium_chrome

    @homepage = Newtours::Home.new
    @homepage.load
    @homepage.log_in "mercury", "mercury"

    @findFlights = Newtours::FindFlight.new
    @findFlights.findFlights '1','New York', 'Jan', '2','Frankfurt', 'May', '5'
    @findFlights.findFlight.click



    @reserveFlights =Newtours::ReserveFlight.new
    @reserveFlights.select_flight
    
    @reserveFlights.findflight.click

    @details = Newtours::Details.new
    @details.passengerNames 'Ichigo', 'Kurosaki'
    @details.cardDetails "Discover", '1234567891234567','06','2007','Ichigo','Kurosaki'
    @details.buyFlights.click


    Binding.pry



  end
end