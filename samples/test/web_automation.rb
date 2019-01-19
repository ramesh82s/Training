# require 'watir'
#   require 'webdrivers'
#
#   @browser = Watir::Browser.new(:firefox)
#   @browser.goto("https://www.amazon.com/")
#   @browser.text_field(:id => 'twotabsearchtextbox').value = 'pen'
#   @browser.div(:class => 'nav-search-submit nav-sprite').send_keys(:return)
#   @browser.back
#   @browser.forward
#   if @browser.url =~ /amazon.com/
#     puts "Amazon Website"
#   else
#     puts "Incorreect page"
#   end
require 'watir'
require 'webdrivers'

@browser = Watir::Browser.new(:firefox)
@browser.goto("https://www.facebook.com/")
chk_logo = @browser.a(:href => "https://www.facebook.com/").text
puts chk_logo
if chk_logo.upcase == 'facebook'.upcase
  puts "logo is present"
else
  puts "logo is not present"
end
@browser.close