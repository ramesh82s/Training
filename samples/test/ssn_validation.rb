class Ssn_validation
  def verify_SSN(ssn_number)
    @number =(ssn_number).gsub(/[- .]/,'' )
    @len = @number.length
    @area_code = @number[0, 3]
    @group_code = @number[3, 2]
    @serial_code = @number[5, 4]

    if @len > 9
      puts "#{ssn_number} is not a valid ssn"
    elsif (001..772).include?(@area_code.to_i) and (01..99).include?(@group_code.to_i) and (0001..9999).include?(@serial_code.to_i)
      puts "#{ssn_number} is a valid ssn"
    else
      puts "#{ssn_number} is not a valid ssn"
    end
  end
end
obj=Ssn_validation.new
obj.verify_SSN('901010001')
obj.verify_SSN('001-01-0001')
obj.verify_SSN('001 01 0001')
obj.verify_SSN('001.01.0001')