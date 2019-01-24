puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
#class FacebookLoginPage
 class Facebooklogin
  include PageObject
  text_field(:username, :id=>"email")
  text_field(:password, :id=>"pass")
  label(:login, :id=>"loginbutton")

  def form_field_order
    %w{
  username
  password
  }
  end
end
