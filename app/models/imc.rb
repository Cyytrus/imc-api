class Imc < ApplicationRecord

  #def self.calculation(height, weight)
    
    #calc = (weight.to_f / (height.to_f * height.to_f)).round(2)

    #{imc: calc, description: "sobrepeso", obesity: '1'}

  #end

#end

  def self.calculation(weight, height)

    calc = (weight.to_f / (height.to_f * height.to_f)).round(2)

    imc_calc = calc

    imc_calc = "abaixo do peso" if calc < 18.50 

    imc_calc = "peso normal" if calc >= 18.50 and calc <= 24.90 

    imc_calc = "sobrepeso" if calc >= 25.00 and calc <= 29.90 

    imc_calc = "obesidade" if calc >= 30.00 

    obesity_level = calc

    obesity_level = "0" if calc < 29.9

    obesity_level = "1" if calc >= 30.00 and calc <= 34.90

    obesity_level = "2" if calc >= 35.00 and calc <= 39.90

    obesity_level = "3 or morbid" if calc >= 40.00

    {imc: calc, description: imc_calc, obesity: obesity_level}

  end

end

