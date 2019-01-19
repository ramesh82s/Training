require 'watir'
require 'webdrivers'
@browser = Watir::Browser.new(:firefox)
@browser.goto("https://www.youtube.com/")
@browser.text_field(:id=> "search").value='peppa pig'
@browser.button(:id=> "search-icon-legacy").send_keys(:return)
@browser.a(:href=>"/watch?v=QxNr3sT1wF8").send_keys(:return)
browser.button(:class=>"ytp-fullscreen-button ytp-button").send_keys(:return)