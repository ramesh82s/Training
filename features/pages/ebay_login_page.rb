puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
class EbayLoginPage
  include PageObject
  text_field(:username, :id=>"userid")
  text_field(:password, :id=>"pass")
  button(:login, :id=>"sgnBt")

  def form_field_order
    %w{
  username
  password
  }
  end
end
