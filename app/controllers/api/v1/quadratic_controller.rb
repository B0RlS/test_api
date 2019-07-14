# frozen_string_literal: true

class Api::V1::QuadraticController < ApplicationController
  def index
    solution = QuadraticEquationService.new(equation_params).call
    if solution == 'There are no roots in the equation'
      render json: { message: 'There are no roots in the equation' }
    else
      render json: solution
    end
  end

  private

  def equation_params
    params.require(:equation).permit(:a_coefficient,
                                     :b_coefficient, :c_coefficient)
  end
end
