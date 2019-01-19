module DataHelper
  def fill_all_form_data(locator)
    h = YAML.load(File.read("#{Dir.pwd}/features/support/data/data_source/input_data/rol_login_page_data.yaml"))
    puts "-----------------------------"
    puts h
    puts locator
    puts "-----------------------------"
    h.each do|master_key,master_value|
      if master_key == locator.upcase.gsub(' ','_')
        @fillable_form_fields = self.form_field_order()
        @fillable_form_fields.each do|form_field|
          master_value.each do |page_element,value|
            if form_field == page_element.downcase
              # @current_page.send(page_element.tr(' ','_').downcase + "_element").set value
              self.send(page_element.tr(' ','_').downcase + "=", value)
              # @current_page.text_field(:id => "personal-username").set value
              # @current_page.send(page_element.tr(' ','_').downcase + "_element").set value
              # puts @current_page.send(page_element.tr(' ','_').downcase + "_element").class.to_s
            end
          end
        end
      else
        puts "data not found in YAML for the key"
      end
    end
  end

  # def get_data_from_yml_file(file_path)
  #   begin
  #To use dynamic data, put the ruby to be evaluated within <%=  %>, ie
  # <%= 5+3 %>
  #  YAML.load(File.read("C:/Users/rames/RubymineProjects/Training/features/support/data/data_source/input_data/rol_login_page_data.yaml")) || Hash.new( {} )
  # rescue Errno::ENOENT => e
  #        puts "----------------------------------------"
  #        puts Hash.new({})
  # end
  # end
end