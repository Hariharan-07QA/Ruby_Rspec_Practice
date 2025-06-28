=# spec/google_search_spec.rb

require 'selenium-webdriver'
require 'rspec'

RSpec.describe 'Google Search' do
  before(:all) do
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless') # remove this line to see browser
    @driver = Selenium::WebDriver.for :chrome, options: options
  end

  after(:all) do
    @driver.quit
  end

  it 'searches for RSpec on Google' do
    @driver.navigate.to 'https://www.google.com'
    search_box = @driver.find_element(name: 'q')
    search_box.send_keys('RSpec')
    search_box.submit

    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @driver.title.downcase.include?('rspec') }

    expect(@driver.title.downcase).to include('rspec')
  end
end
