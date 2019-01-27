puts "Executing: #{__FILE__}"

class Bankofamericahome
  include PageObject
  a(:get_started, :class=>"spa-btn spa-btn--primary spa-btn--medium masthead-cta-btn")
  text_field(:zip, :id => "zipCodeModalInputField")
  a(:go, :id => "go-button-zip-modal")
  div(:adv_safe_balance, :class=>"advantage-tile drawer-anchor", :index => 0)
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