puts "Executing #{__FILE__}"
# require 'page-object' - declared in env.rb
  class RolLoginPage < RolPage #(declared in require statement in env.rb)
  include PageObject
  # page_url("https://www.huntington.com/")
  text_field(:username, :id => "personal-username")
  # text_field(:username, :xpath => "//input[:id='personal-username']")
  text_field(:password, :id=> "personal-password")
  # drop(:password, :id=> "personal-password")
  button(:login, :class=> "button--white")
  def form_field_order
  %w{
  username
  password
  }
  end
end
