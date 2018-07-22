puts "Executing: #{__FILE__}"
require 'selenium-webdriver'
Given(/^I navigate to amazon application$/) do
        @driver=Selenium::WebDriver.for(:firefox)
  @driver.get 'https://www.amazon.com/'
end
When("I search for the pen") do
  @driver.find_element(:name,'field-keywords').send_keys 'pen'
end

And(/^I click on the search icon$/) do
@driver.find_element(:class,'nav-input').click
end

And(/^I click on link$/) do
  @driver.find_element(:xpath,'/html/body/div[1]/div[2]/div/div[3]/div[2]/div/div[4]/div[1]/div/ul/li[1]/div/div/div/div[2]/div[2]/div[1]/a/h2').click
  end

And(/^I add that pen into cart$/) do
@driver.find_element(:id,'add-to-cart-button').click
end

And(/^I click on the proceed to checkout option$/) do
  @driver.find_element(:xpath, '//*[@id="hlb-ptc-btn-native"]').click

end
#Then("I verify the {amazon sign in} title") do |title|
  #expect(@driver.title).to be==title
#end
And(/^I close the application$/) do
@driver.quit
end


