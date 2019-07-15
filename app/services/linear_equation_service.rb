# frozen_string_literal: true

class LinearEquationService
  attr_reader :a_coefficient, :b_coefficient

  def initialize(params)
    @a_coefficient = params[:a]
    @b_coefficient = params[:b]
  end

  def call
    calculation_result
  end

  private

  def calculation_result
    return { x: 0 } if b_coefficient.eql?(0)
    return 'There is no root in the equation' if a_coefficient.eql?(0)

    { x: (b_coefficient.to_f / a_coefficient).round(4) }
  end
end
