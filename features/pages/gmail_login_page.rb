puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
class GmailLoginPage
  include PageObject
  text_field(:username, :id=>"identifierId")

  text_field(:password, :class=> "whsOnd zHQkBf")

  div(:next, :id=>"identifierNext")

  def form_field_order
    %w{
  emailorphone
  password
  }
  end
end