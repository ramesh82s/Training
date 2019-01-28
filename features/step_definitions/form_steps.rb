puts "Executing: #{__FILE__}"
# require 'watir' - declared in env.rb
When(/^the user (?:navigates to|opens) the (.*) page$/) do |page_name|
  @browser = Watir::Browser.new :firefox
  page_class_name = page_name.capitalize.gsub(' ', '')
  @current_page = Object.const_get(page_class_name).new(@browser)
  url = @current_page.get_url(page_class_name)
  @current_page.goto(url)
end

When /^the user (?:fills|modify)(?: (?:and)( captures))? the (?:.+) (?:page|section|application|pleat)(?: (?:with|for|where) (.*))?$/ do |capture, locator|

  if locator.nil?
    @current_page.fill_all_form_data("DEFAULT")
  else
    @current_page.fill_all_form_data(locator)
  end
end

And(/^the user provides credential$/) do
  @current_page.text_field(:id, "personal-username").focus
  @current_page.text_field(:id, "personal-username").flash
  puts @current_page.text_field(:id, "personal-username").attribute_value("id")
  # @current_page.link(:href, "#businessLogin").drag_and_drop_on @current_page.text_field(:id,"personal-username")
  # puts @current_page.label(:class,"mt-s").text
  puts @current_page.text_field(:id, "personal-username").tag_name
  @current_page.text_field(:id => "personal-username").send_keys("ramesh82s")
  @current_page.text_field(:id, "personal-password").send_keys("Srb21982")
  puts @current_page.button(:class, "button--white").checked?
end

And(/^the user clicks the (.*)$/) do |page_element|
  # @current_page.span(:class=>"RveJvd snByac").click
  # Watir::Wait.until(25) {@current_page.send(page_element.tr(' ','_').downcase + "_element").exists?}
  @current_page.send(page_element.tr(' ', '_').downcase + "_element").click
  # @current_page.close
end

And(/^the user answer the security question$/) do
  # Watir::Wait.until(timeout: 10, message: "User Message - Element not found") {@current_page.label(:id,"mainContent_lblQuestion").exists?}
  if @current_page.label(:id, "mainContent_lblQuestion").exists?
    security_qustion = @current_page.label(:id, "mainContent_lblQuestion").text
    @current_page.text_field(:id, "txtAnswer").set("sekar") if security_qustion =~ /^(.*)friend(.*)$/
    @current_page.text_field(:id, "txtAnswer").set("seralathan") if security_qustion =~ /^(.*)name(.*)$/
  end
end

# And(/^the user moves to the new browser$/) do
#   @current_page.windows.last.use
# end
And(/^the user moves to the new browser (.*)$/) do |index_no|
  @current_page.window(:index => index_no).use
end

And(/^the user enters ZIP code$/) do
  @current_page.text_field(:id => "zipCodeModalInputField").set '43220'
  @current_page.a(:id => "go-button-zip-modal").click
end

And(/^the user verifies the error message (.*)$/) do|error|
  error_from_web = @current_page.send(error.tr(' ', '_').downcase + "_element").text # get error message from web page
  expect(error_from_web).to eq(get_message(error))    #derive message from input yaml file to compare with web error message
end