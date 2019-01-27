puts "Executing: #{__FILE__}"

class Bankofamerica
  include PageObject
  a(:get_started, :id => "Checking_GetStarted_MultiproductRWD", :index => 1)
  a(:safe_balance_banking_open_now, :id => "ProductDetails_P4_Opt1_SafeBalance")
  text_field(:zip, :id => "zipCodeModalInputField")
  a(:go, :id => "go-button-zip-modal")
  radio_button(:advantage_safe_balance_banking,:id=>"rb-savings-account-none", :index => 0)
  a(:go_to_application,:id=> "go-to-application-mediumup")
  text_field(:first_name, :id=>"zz_name_tb_fnm_v_1")
  text_field(:middle_name, :id=>"zz_name_tb_mnm_v_1-label")
  text_field(:last_name, :id=>"zz_name_tb_lnm_v_1-label")

  def form_field_order
    %w{
  zip
  first_name
  middle_name
  last_name
  }
  end
end