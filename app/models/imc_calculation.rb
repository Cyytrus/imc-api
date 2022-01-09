class ImcCalculation < ApplicationRecord
  belongs_to :imc

  def calculus

  
  end




  private

  def imc_calculation_params
    params.require(:imc).permit(:height, :weight, :imc, :classification, :obesity)
  end



end
