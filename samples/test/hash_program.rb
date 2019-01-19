class Hash_state
  def get_full_state_code(type, code)
    state_code_full = {'OH' => 'OHIO', 'NY' => 'Newyork', 'CH' => 'Chicago', 'WA' => 'Washinton'}
    state_code_2d = state_code_full.invert
    if type == '2d-full'
      source_hash = state_code_full
    elsif type == 'full-2d'
      source_hash = state_code_2d
    else
      puts "undefined type"
    end
    @code_found = 0
    source_hash.each do |k, v|
      if code == k
        @code_found = 1
      end
    end
    if @code_found == 1
      puts source_hash[code]
    else
      puts "the given code and state not present in the list"
    end
  end
  alias get_2d_state_code get_full_state_code
end
object = Hash_state.new
object.get_full_state_code('full-2d', 'Newyork')
object.get_2d_state_code('2d-full', 'CH')
