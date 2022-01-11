class Imc < ApplicationRecord
  
  def self.calculation(height, weight)
    calc = weight.to_f / (height.to_f * height.to_f)

    {imc: calc, description: 'sobrepeso', obesity: '1'}

  end
end


