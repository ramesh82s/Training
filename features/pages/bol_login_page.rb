puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
class BolLoginPage
  include PageObject
  # page_url("https://www.huntington.com/")
  text_field(:username, :id=>"identifierId")
  # text_field(:username, :xpath => "//input[:id='personal-username']")
  text_field(:password, :class=>"whsOnd zHQkBf")
  # drop(:password, :id=> "personal-password")
  span(:next , :class=>"RveJvd snByac")

  def form_field_order
    %w{
  username
  password
  }
  end
end