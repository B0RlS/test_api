# frozen_string_literal: true

class LinearEquationService
  attr_reader :a_coefficient, :b_coefficient

  def initialize(params)
    @a_coefficient = params[:a_coefficient]
    @b_coefficient = params[:b_coefficient]
  end

  def call
    converting_values
    calculation_result
  end

  private

  def converting_values
    a_coefficient.transform_values!(&:to_i)
    b_coefficient.transform_values!(&:to_i)
  end

  def calculation_result
    return { x: 0 } if b_coefficient.eql?(0)
    return 'There is no root in the equation' if a_coefficient.eql?(0)

    { x: (a_coefficient.to_f / b_coefficient).round(4) }
  end
end
