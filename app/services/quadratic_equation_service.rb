def QuadraticEquationService
  attr_reader :a_coefficient, :b_coefficient, :c_coefficient

  def initialize(params)
    @a_coefficient = params[:a_coefficient]
    @b_coefficient = params[:b_coefficient]
    @c_coefficient = params[:c_coefficient]
  end

  def call
    converting_values
    calculation_result
  end

  private

  def converting_values
    a_coefficient.transform_values!(&:to_i)
    b_coefficient.transform_values!(&:to_i)
    c_coefficient.transform_values!(&:to_i)
  end

  def calculation_result
    return 'There are no roots in the equation' if equation_discriminant < 0

    return single_root_solution if equation_discriminant == 0

    multi_root_solution
  end

  def equation_discriminant
    b_coefficient ** 2 - (4 * a_coefficient * c_coefficient)
  end

  def multi_root_solution
    { x1: ((- b_coefficient + Math.sqrt(discriminant)) / (2 * a_coefficient).to_f).round(4),
      x2: ((- b_coefficient - Math.sqrt(discriminant)) / (2 * a_coefficient).to_f).round(4)}
  end

  def single_root_solution
    { x: ((-1 * b_coefficient) / (2 * a_coefficient).to_f).round(4)}
  end
end