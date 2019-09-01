puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
class Ebay
  include PageObject

 # button(:shop_by_category, :id=>"gh-shop-a")

  span(:register, :id=>"gh-ug-flex")
  a(:business_account, :id=>"ppaNav")
  text_field(:business_name, :id=>"businessname")
  text_field(:email, :id=>"businessemail")
  text_field(:re_enter_email, :id=>"rbusinessemail")
  text_field(:password, :id=>"PASSWORD_BIZREG")
  text_field(:phone_number, :id=>"phoneFlagComp1Business")
  a(:change_image, :class=>"refresh")
  a(:listen_numbers, :class=>"audio")


  def form_field_order
    %w{
  business_name
  email
  re_enter_email
  username
  password
  phone_number
  }
  end
end