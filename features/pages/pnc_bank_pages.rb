puts "Executing: #{__FILE__}"

class Pncbank
  include PageObject
  a(:banking, :class=>"subitem" , :index=>0)
  #div(:banking, :class=>"triangle-up" ,:index => 0)
  #select_list(:product_services, :class=>"title-wrapper" , :index=>0)






  def form_field_order
    %w{

  }
  end
end
