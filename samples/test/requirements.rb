class Evaluation
  def chk_evaluation
    sample = [{'Ramesh':716151,'Uma':615111}]
    name = ''
    for i in sample
      if name == 'Ramesh'
        puts sample.key1
      else
        puts sample.key2
      end
    end

    object=Evaluation.new
    object.chk_evaluation

  end
end