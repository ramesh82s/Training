puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
class Ebaylogin
  include PageObject
  text_field(:username, :id=>"userid")
  text_field(:password, :id=>"pass")
  button(:login, :id=>"sgnBt")
  p(:not_a_match, :id=>"errf")

  def form_field_order
    %w{
  username
  password
  }
  end
end
