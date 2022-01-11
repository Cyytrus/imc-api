class Api::V1::ImcsController < ApplicationController
  before_action :set_imc, only: [:show, :update, :destroy]

  # GET /imcs
  def index
    @imcs = Imc.all

    render json: @imcs.includes(:imc_calculations)
  end

  # GET /imcs/1
  def show
    render json: @imc
  end

  # POST /imcs
  def create
    @imc = Imc.new(imc_params)

    if @imc.save
      render json: @imc, status: :created, location: @imc
    else
      render json: @imc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /imcs/1
  def update
    if @imc.update(imc_params)
      render json: @imc
    else
      render json: @imc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /imcs/1
  def destroy
    @imc.destroy
  end

  def imc
    calculated_imc = Imc.calculation(params["height"], params["weight"])
    render json: calculated_imc
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imc
      @imc = Imc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imc_params
      params.require(:imc).permit(:name, :age, :height, :weight)
    end
end
