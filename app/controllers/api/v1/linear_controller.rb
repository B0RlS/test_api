class Api::V1::LinearController < ApplicationController
  def index
    solution = LinearEquationService.new(equation_params).call
    if solution == 'There is no root in the equation'
      render json: { message: 'There is no root in the equation' }
    else
      render json: solution
    end
  end

  private

  def equation_params
    params.require(:equation).permit(:a_coefficient, :b_coefficient)
  end
end
