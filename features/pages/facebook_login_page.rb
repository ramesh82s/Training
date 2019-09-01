puts "Executing: #{__FILE__}"
# require 'page-object' - declared in env.rb
#class FacebookLoginPage
class Facebooklogin
  include PageObject
  select_list(:month_dropdown, :id=>"month")
  select_list(:day_dropdown, :id=>"day")
  select_list(:year_dropdown, :id=>"year")
  text_field(:username, :id => "email")
  text_field(:password, :id => "pass")
  label(:login, :id => "loginbutton")
  text_field(:first_name, :id => "u_0_c", :index => 0)
  text_field(:last_name, :id => "u_0_e", :index => 0)
  text_field(:email_id, :id => "u_0_h", :index => 0)
  text_field(:re_enter_email, :id => "u_0_k", :index => 0)
  text_field(:new_password, :id => "u_0_o", :index => 0)
  select_list(:month, :id => "month")
  select_list(:day, :id => "day")
  select_list(:year, :id => "year")
  radio_button(:gender, :id=>"u_0_9", :index=>0)


  def form_field_order
    %w{
  username
  password
  first_name
  last_name
  email_id
  re_enter_email
  new_password
  month
  day
  year
  }
  end
end
