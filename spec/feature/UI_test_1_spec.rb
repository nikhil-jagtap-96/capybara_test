require 'capybara/rspec'
require 'webdrivers'
require 'pry'
feature 'Coupa test', type: :feature do
  Capybara.app_host = 'http://www.newtours.demoaut.com/'
  Capybara.run_server = false
  Capybara.default_driver = :selenium_chrome
  

  scenario 'Visit Travel Site' do
    visit ''
    fill_in 'userName', with: 'mercury'
    fill_in 'password', with: 'mercury'
    click_on 'Login'
    expect(page).to have_content('SIGN-OFF')


    page.select '1' , from: 'passCount'
    click_on 'findFlights'

    find(:xpath, '//input[@value="Pangea Airlines$632$282$16:37"]').click
    find(:xpath, '//input[@value="Pangea Airlines$362$274$9:17"]').click

    sleep 2
    click_on 'reserveFlights'

    fill_in 'passFirst0', with: 'Ichigo'
    fill_in 'passLast0', with: 'Kurosaki'

    select "Discover", from: 'creditCard'
    fill_in 'creditnumber', with: '123456891234567'
    select '12', from: 'cc_exp_dt_mn'
    select '2008', from: 'cc_exp_dt_yr'
    fill_in 'cc_frst_name', with: 'ichigo'
    fill_in 'cc_last_name', with: 'kurosaki'
    
    
    fill_in 'billAddress1', with: '6789'
    fill_in 'billAddress2', with: 'xyzabc'
    fill_in 'billCity', with: 'New York City'
    fill_in 'billState', with: 'NY'
    fill_in 'billZip', with: '12345'
    select 'UNITED STATES', from: 'billCountry'

   
    fill_in 'delAddress1', with: '6789'
    fill_in 'delAddress2', with: 'xyzabc'
    fill_in 'delCity', with: 'New York City'
    fill_in 'delState', with: 'NY'
    fill_in 'delZip', with: '12345'
    select 'UNITED STATES', from: 'delCountry'

    sleep 2
    click_on 'buyFlights'

    sleep 2
    
    #click_on 'img[src="/images/forms/Logout.gif"]'
    find("a[href='mercurysignoff.php']>img").click
    #<img src="/images/forms/Logout.gif" width="118" height="23" border="0">
  end
end