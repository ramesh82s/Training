puts "Executing: #{__FILE__}"
require 'watir'
require 'webdrivers'
require 'page-object'
require 'cucumber'

Given(/^the user opens the Gmail browser$/) do
  @browser = Watir::Browser.new :firefox
  @current_page = GmailLoginPage.new(@browser)
  @current_page.goto("https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2FAddMailService&followup=https%3A%2F%2Faccounts.google.com%2Fb%2F0%2FAddMailService&flowName=GlifWebSignIn&flowEntry=ServiceLogin
")
end

And(/^the user enters the login page with emailorphone$/) do |emailorphone|
  on(@current_page).text_field(name: 'userid').set emailorphone
end

And(/^the user clicks the next1$/) do
 @current_page.span(:class=>"RveJvd snByac").click
end

And(/^the user enters the password$/) do |password|
  on(@current_page).text_field(name: 'password').set password
end

# And(/^the user clicks the next$/) do
#   @current_page.span(:class=>"RveJvd snByac").click
# end